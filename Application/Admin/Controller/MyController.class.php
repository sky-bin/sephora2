<?php

namespace   Admin\Controller;
use         Think\Controller;

/**
 * 公共类，每个模块都可以调用这个类
 * 这个类下提供公共模块的相关信息，每个模块下共有的操作不需要多次调用
 * 这个类中的方法都不是为外部调用的，因此将这个类下面的所有方法设置为protected修饰
 */
class MyController extends Controller {
    

    /**
     * 构造方法
     * 验证用户登录状态，其它控制器继承这个控制器，自动实际这个方法
     *
     * @author Eden
     * @date   2015-01-11
     */
    public function __construct() {
//        parent::__construct();
        $this->_checkLogin();
    }

    /**
     * 判断是否登录
     * 如果没有登录跳转到登录页，已登录不做任何处理
     *
     * @author Eden
     * @date   2015-01-11
     */
    protected function _checkLogin() {
        if ( !session('user')) {
            // 如果用户没登录，检查该用户是不是保存有Cookie信息
            $this->display('login');
        }
    }


    protected function _arr2ToArr1 ($arr2)
    {
        $array = array();
        foreach ($arr2 as $key=>$val)
        {
            $k = $val['cname'];
            $array[$k] = $val['cvalue'];
        }
        return $array;
    }
}