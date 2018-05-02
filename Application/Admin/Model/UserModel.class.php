<?php
namespace Admin\Model;
use Think\Model\RelationModel;
class UserModel extends \Think\Model\RelationModel{
    // 表模型配置信息
    public $tableName ="user";
    // 自动验证规则配置
    public $_validate = array(
        array("username", "require", "会员名称未填写"),
        array("password", "require", "密码未填写"),
    );

//    public  static function


    const TYPE_1 = 1; //文章上传文档类型
    const TYPE_0 = 0; //文章编辑器类型

    public static $userStatusLabels = [
        self::TYPE_1 => '正常',
        self::TYPE_0 => '禁用',

    ];
    public static function  userAdd($data){
        $model=new self();
        $model->password=$data['password'];

    }


}

?>