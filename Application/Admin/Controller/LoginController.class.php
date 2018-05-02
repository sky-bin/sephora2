<?php

namespace   Admin\Controller;
use         Think\Controller;
/**
 * 后台用户登录模块
 *
 * 作者：  Eden
 * 日期：  2015-01-05
 */
class LoginController extends Controller {

    /**
     * 获取用户登录界面
     *
     * @author Eden
     * @date   2017-10-06
     */
    public function index() {

        $this->display('login');
    }

    /**
     * 验证登录
     *
     * @author Eden
     * @date   2015-01-11
     */
    public function checkLogin() {

        // 用户名和密码是否验证通过
        $data['username'] = I('post.username');
        $data['password'] = I('post.password', '', 'md5');
        $admin = M('admin_users');



        $res = $admin->where($data)->find();


        if ( empty($res) )
        {
            $this->error('账号或者密码不对，请重新输入');
            exit;
        }

        if ($res) {
            // 将用户的登录信息保存在SESSION中
            session('user', $res);
            // 登录成功，跳转到主页
            $this->success('欢迎回来：' . $res['username'], U('User/userList'));

        } else {
            $this->error('用户名或密码错误！');
        }
    }


    /**
     * 方法功能：后台用户退出登录
     *
     * @author Eden
     * @date 2010-01-11
     */
    public function logOut() {
        // 删除后台需要存储的ID信息
        session('id', NULL);
        session('username', NULL);
        session('role_id', NULL);
        session('status', NULL);
        session('isLogin', NULL);

        // 清楚Cookie中保存的信息
        cookie(NULL, 'blue_');

        $this->redirect('Login/index');
    }
}