<?php
/**
 * Created by PhpStorm.
 * User: 10352
 * Date: 2017/10/6
 * Time: 17:27
 */

namespace Admin\Controller;
use       Think\Controller;
use       Admin\Model\UserModel;


class UserController extends Controller
{

//    public function __construct() {
//        if ( !session('user')) {
//            // 如果用户没登录，检查该用户是不是保存有Cookie信息
//            $this->display('login');
//        }
//    }


    public function userList()
    {

        $this->_checkLogin();
//        if(isset( $_GET['type']) && !empty($_GET['type'])){
//            $_GET['p']=1;
//        }
        $user = M('user');
        $map = [];
        $map['recycle'] = 0;
        if (isset($_GET['username']) && !empty($_GET['username'])) {
            $map['username'] = array('like', "%". $_GET['username']."%");
            $this->assign('userName', $_GET['username']);

        }
        $map['status']=UserModel::TYPE_1;

        // 查询总记录数
        $getPageCounts = $user->where($map)->count();
        // 每页显示 $pageSize 条数据
        $pageSize = 10;
        // 实例化分页类
        $page = new \Think\Page($getPageCounts, $pageSize);


        $page->setConfig('header', '<li class="rows">共<b>%TOTAL_ROW%</b>条记录 第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
        $page->setConfig('prev', '上一页');
        $page->setConfig('next', '下一页');
        $page->setConfig('last', '末页');
        $page->setConfig('first', '首页');
        $page->setConfig('theme', '%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%%HEADER%');
        $page->lastSuffix = false;//最后一页不显示为总页数








        $userList = $user->where($map)->order('id DESC')->limit($page->firstRow, $page->listRows)->select();
        if (!empty($map)) {
            foreach ($map as $k => $v) {
                // $page->parameter .= "$k=".urlencode($v).'&';
            }
        }
        $pageShow = $page->show();
//        echo "<pre>";
//        print_r($pageShow);
//        exit();
        $label = UserModel::$userStatusLabels;
        $this->assign('userList', $userList);
        $this->assign('page', $pageShow);
        $this->assign('label', $label);

        $this->display();
    }

    public function userAdd()
    {
        $this->_checkLogin();

        if (!empty($_GET['id'])) {
            $User = D("user")->find($_GET['id']);
            $this->assign('user', $User);
        }
        $this->display();
    }

    public function userInsert()
    {
        $this->_checkLogin();
        $post = $_POST;
        //添加
        if ($post['password'] !== $post['re_password']) {
            $this->error("密码不一致，请重新填写");
        }
        $User = D("user"); // 实例化User对象
        $data = $User->create();
        $user = $User->where(['username' => $data['username']])->find();
        if (!empty($user) && $user['id'] !== $post['id']) {
            $this->error('用户已经存在');
        }
        if (!$data) {
            // 如果创建失败 表示验证没有通过 输出错误提示信息
            $this->error($User->getError());
        } else {

            $data['created'] = date("Y-m-d H:i:s", time());
            $data['password'] = md5($post['password']);
//            echo  $data['created'] ;
//            exit();

            // 验证通过 可以进行其他数据操作
            $result = $User->add($data); // 写入数据到数据库

            if ($result) {
                // 如果主键是自动增长型 成功后返回值就是最新插入的值
                $insertId = $result;
                $this->redirect('user/userList');

            } else {
                $this->error('插入失败');
            }
        }
    }

    public function userUpdate()
    {
        $this->_checkLogin();
        $post = $_POST;
        if (!empty($post['password'])) {
            if ($post['password'] !== $post['re_password']) {
                $this->error("密码不一致，请重新填写");
            }
            $data['password']=md5($post['password']);
        }
        $User = D("user"); // 实例化User对象
        $data['username']=$post['username'];
        $result = $User->where('id=' . $post['id'])->data($data)->save(); // 根据条件更新记录

        if ($result) {
            // 如果主键是自动增长型 成功后返回值就是最新插入的值
            $insertId = $result;
            $this->redirect('user/userList');

        } else {
            $this->error('编辑失败');
        }

    }
    public function userDelete()
    {
        $this->_checkLogin();
        $get = $_GET;
        $User = M("user"); // 实例化User对象
        $result = $User->where('id=' . $get['id'])->data(['status'=>UserModel::TYPE_0])->save(); // 根据条件更新记录

        $this->redirect('user/userList');

    }
    public function loginOut()
    {

       unset($_SESSION);
//        var_dump(session('user'));
//        exit();

        $this->redirect('Login/index');

    }

    protected function _checkLogin() {
        if ( !session('user')) {
            // 如果用户没登录，检查该用户是不是保存有Cookie信息
            $this->redirect('Login/index');
        }
    }

}