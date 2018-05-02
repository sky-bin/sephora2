/* This file is created by MySQLReback 2015-05-18 12:25:13 */
 /* 创建表结构 `ri_admin_info`  */
 DROP TABLE IF EXISTS `ri_admin_info`;/* MySQLReback Separation */ CREATE TABLE `ri_admin_info` (
  `uid` int(10) unsigned NOT NULL,
  `true_name` varchar(32) NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `thumbnail` varchar(128) NOT NULL DEFAULT '',
  `birthday` char(10) NOT NULL DEFAULT '0000-00-00',
  `email` varchar(64) NOT NULL DEFAULT '',
  `phone` char(15) NOT NULL DEFAULT '',
  `id_card` char(18) NOT NULL DEFAULT '',
  `department` varchar(32) NOT NULL DEFAULT '',
  `position` varchar(32) NOT NULL DEFAULT '',
  `join_time` char(10) NOT NULL DEFAULT '0000-00-00',
  `province` int(10) NOT NULL DEFAULT '0',
  `city` int(10) NOT NULL DEFAULT '0',
  `area` int(10) NOT NULL DEFAULT '0',
  `education` tinyint(4) NOT NULL DEFAULT '0',
  `marry` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_admin_info` */
 INSERT INTO `ri_admin_info` VALUES ('1',null,'0',null,'0000-00-00',null,null,null,null,null,'0000-00-00','0','0','0','0','0');/* MySQLReback Separation */
 /* 创建表结构 `ri_admin_logs`  */
 DROP TABLE IF EXISTS `ri_admin_logs`;/* MySQLReback Separation */ CREATE TABLE `ri_admin_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '操作人ID',
  `username` varchar(128) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `content` text NOT NULL COMMENT '内容',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '记录时间',
  `cip` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_admin_logs` */
 INSERT INTO `ri_admin_logs` VALUES ('1','1','lhuang','商品（ID:39）添加成功','1429765486','2130706433'),('2','1','lhuang','商品（ID:39）修改成功','1429765531','2130706433'),('3','1','lhuang','商品（ID:39）修改成功','1429765582','2130706433'),('4','1','lhuang','商品（ID:40）添加成功','1429765794','2130706433'),('5','1','lhuang','商品（ID:40）修改成功','1429766196','2130706433'),('6','1','lhuang','商品（ID:40）修改成功','1429766254','2130706433'),('7','1','lhuang','商品（ID:41）添加成功','1429766348','2130706433'),('8','1','lhuang','商品（ID:41）修改成功','1429766472','2130706433'),('9','1','lhuang','商品（ID:41）修改成功','1429766531','2130706433'),('10','1','lhuang','商品（ID:42）添加成功','1429766598','2130706433'),('11','1','lhuang','商品（ID:42）修改成功','1429766646','2130706433'),('12','1','lhuang','商品（ID:42）修改成功','1429766711','2130706433'),('13','1','lhuang','商品（ID:43）添加成功','1429766789','2130706433'),('14','1','lhuang','商品（ID:43）修改成功','1429766822','2130706433'),('15','1','lhuang','商品（ID:43）修改成功','1429766892','2130706433'),('16','1','lhuang','商品（ID:44）添加成功','1429767149','2130706433'),('17','1','lhuang','商品（ID:44）修改成功','1429767203','2130706433'),('18','1','lhuang','商品（ID:45）添加成功','1429767469','2130706433'),('19','1','lhuang','商品（ID:45）修改成功','1429767581','2130706433'),('20','1','lhuang','商品（ID:46）添加成功','1429767656','2130706433'),('21','1','lhuang','商品（ID:46）修改成功','1429767705','2130706433'),('22','1','lhuang','商品（ID:47）添加成功','1429767757','2130706433'),('23','1','lhuang','商品（ID:47）修改成功','1429767840','2130706433'),('24','1','lhuang','商品（ID:47）修改成功','1429767871','2130706433'),('25','1','lhuang','商品（ID:48）添加成功','1429767916','2130706433'),('26','1','lhuang','商品（ID:48）修改成功','1429767999','2130706433'),('27','1','lhuang','商品（ID:48）修改成功','1429768042','2130706433'),('28','1','lhuang','商品（ID:49）添加成功','1429772224','2130706433'),('29','1','lhuang','商品（ID:49）修改成功','1429772277','2130706433'),('30','1','lhuang','商品（ID:49）修改成功','1429772329','2130706433');/* MySQLReback Separation */
 /* 创建表结构 `ri_admin_role`  */
 DROP TABLE IF EXISTS `ri_admin_role`;/* MySQLReback Separation */ CREATE TABLE `ri_admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) NOT NULL DEFAULT '',
  `role_power` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_admin_role` */
 INSERT INTO `ri_admin_role` VALUES ('1','超级管理员','{\'config\':[\'a\', \'b\']}');/* MySQLReback Separation */
 /* 创建表结构 `ri_admin_users`  */
 DROP TABLE IF EXISTS `ri_admin_users`;/* MySQLReback Separation */ CREATE TABLE `ri_admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` char(40) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `last_login_ip` bigint(11) NOT NULL DEFAULT '0',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_admin_users` */
 INSERT INTO `ri_admin_users` VALUES ('1','1','lhuang','7c4a8d09ca3762af61e59520943dc26494f8941b','1429626136','1431921325','2130706433','17','1');/* MySQLReback Separation */
 /* 创建表结构 `ri_adv_position`  */
 DROP TABLE IF EXISTS `ri_adv_position`;/* MySQLReback Separation */ CREATE TABLE `ri_adv_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告位编号',
  `p_name` varchar(63) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `adv_width` smallint(5) NOT NULL DEFAULT '0' COMMENT '广告宽度',
  `adv_height` smallint(5) NOT NULL DEFAULT '0' COMMENT '广告高度',
  `p_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_adv_position` */
 INSERT INTO `ri_adv_position` VALUES ('1','首页大图广告','580','1366','显示在首页的轮播大图'),('3','首页（手机精品）','400','800','网站首页，手机模块左侧大图'),('4','首页（手机模块-右上）','400','400','首页手机模块，右上角400 x 400图片'),('5','首页（手机模块-右下）','800','400','首页手机模块，右下角800 x 400图片'),('6','首页（平板模块-左）','488','551','首页平板广告位，左侧独立广告位 488 x 551'),('7','首页（平板模块-右）','350','360','首页平板广告位，右侧四个广告位 350 x 360图片'),('8','首页（穿戴模块-左右长图）','224','484','首页穿戴产品广告位，左下和右上两个广告位，224 x 484大小'),('9','首页（穿戴模块-上下宽图）','498','198','首页穿戴产品广告位，上下两宽图广告位， 498 x 198大小 '),('10','首页（穿戴模块-小图）','224','198','首页穿戴产品，小图224 x 198大小广告位'),('11','首页（配件模块-左上）','611','301','首页配件模块广告位，左上角长图广告位，大小 611 x 301'),('12','首页（配件模块 左侧小图）','301','301','首页配件，左侧非排行小图，大小301 x 301'),('13','产品列表页左侧','820','450','产品列表页，上部，左侧大图最大宽度 828 ，高度450'),('14','产品列表页右侧','341','450','产品列表页，右侧广告，宽度341，高度450');/* MySQLReback Separation */
 /* 创建表结构 `ri_advs`  */
 DROP TABLE IF EXISTS `ri_advs`;/* MySQLReback Separation */ CREATE TABLE `ri_advs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告编号',
  `position_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告位ID',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT '产品ID',
  `adv_name` varchar(128) NOT NULL DEFAULT '' COMMENT '广告名称',
  `adv_desc` varchar(128) NOT NULL DEFAULT '' COMMENT '广告描述',
  `thumbnail` varchar(128) NOT NULL DEFAULT '' COMMENT '图片地址',
  `link_url` varchar(128) NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '排序',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_advs` */
 INSERT INTO `ri_advs` VALUES ('1','1','38','薄动心弦 K歌之王','薄动心弦 K歌之王','2015-01-15/54b69e9fa29fe.jpg','http://www.baidu.com','0','1421254303','1'),('2','1','38','X5 4G HiFi极致体验','X5 4G HiFi极致体验','2015-01-15/54b6a3ff932b9.jpg','http://www.baidu.com','0','1421255679','1'),('3','1','38','MX Pro 更好用的手机','MX Pro 更好用的手机','2015-01-15/54b6a4b392059.jpg','http://www.baidu.com','0','1421255859','1'),('4','3','38','华为G7','64位处理器 前置500万像素 双卡双待 直降101元直降101元','2015-01-22/54c0e05b7fa6c.jpg','http://www.baidu.com','0','1421926491','1'),('5','4','38','elife s5.5l','64位处理器 前置500万像素 双卡双待 直降101元直降101元','2015-01-25/54c4fc24cde78.jpg','http://www.baidu.com','0','1421926556','1'),('6','4','38','金立S5.1 完美工艺','64位处理器 前置500万像素 双卡双待 直降101元直降101元','2015-01-25/54c4fce6b7f43.jpg','http://www.baidu.com','0','1421926631','1'),('7','5','38','努比亚','64位处理器 前置500万像素 双卡双待 直降101元直降101元','2015-01-25/54c4ff0de6781.jpg','http://www.baidu.com','0','1421926732','1'),('8','6','38','平板广告1','平板广告1','2015-01-23/54c1eaefc0ec0.jpg',null,'0','1421994735','1'),('9','7','38','平板广告2','平板广告2','2015-01-23/54c1eb23bb4cd.jpg',null,'0','1421994787','1'),('10','7','38','平板广告3','平板广告3','2015-01-23/54c1eb546aecd.jpg',null,'0','1421994836','1'),('11','7','38','平板广告4','平板广告4','2015-01-23/54c1eb83a0cea.jpg',null,'0','1421994883','1'),('12','7','38','平板广告5','平板广告5','2015-01-23/54c1eb98f228e.jpg',null,'0','1421994904','1'),('13','8','38','Max透明保护壳 A1030 Mini','Max透明保护壳 A1030 Mini','2015-01-23/54c1ef6ba38a7.jpg',null,'0','1421995883','1'),('14','8','38','Max透明保护壳 A1030 Mini','Max透明保护壳 A1030 Mini','2015-01-23/54c1ef924de62.jpg',null,'0','1421995922','1'),('15','9','38','Max透明保护壳 A1030 Mini','Max透明保护壳 A1030 Mini','2015-01-23/54c1efc07c32c.jpg',null,'0','1421995968','1'),('16','9','38','Max透明保护壳 A1030 Mini','Max透明保护壳 A1030 Mini','2015-01-23/54c1efd65e797.jpg',null,'0','1421995990','1'),('17','10','38','Max透明保护壳 A1030 Mini','Max透明保护壳 A1030 Mini','2015-01-23/54c1eff34f026.jpg',null,'0','1421996019','1'),('18','10','38','Max透明保护壳 A1030 Mini','Max透明保护壳 A1030 Mini','2015-01-23/54c1f020e7bf0.jpg',null,'0','1421996064','1'),('19','10','38','Max透明保护壳 A1030 Mini','Max透明保护壳 A1030 Mini','2015-01-23/54c1f040153e5.jpg',null,'0','1421996096','1'),('20','10','38','Max透明保护壳 A1030 Mini','Max透明保护壳 A1030 Mini','2015-01-23/54c1f053962da.jpg',null,'0','1421996115','1'),('21','11','38','配件广告1','配件广告1','2015-01-23/54c1f84c16e8f.jpg',null,'0','1421998156','1'),('22','12','38','配件广告2','配件广告二','2015-01-23/54c1f885ba501.jpg',null,'0','1421998213','1'),('23','12','38','配件广告3','配件广告3','2015-01-23/54c1f8b005432.jpg',null,'0','1421998256','1'),('24','12','38','配件广告4','配件广告4','2015-01-23/54c1f8c960ae5.jpg',null,'0','1421998281','1'),('25','12','38','配件广告5','配件广告5','2015-01-23/54c1f95df3499.png',null,'0','1421998430','1'),('26','13','38','列表页锤子广告-左','产品列表锤子广告','2015-01-23/54c20c6aa2f2b.png',null,'0','1422003306','1'),('27','14','38','列表页锤子广告-右','列表页锤子广告右','2015-01-23/54c20ccc328a5.png',null,'0','1422003404','1');/* MySQLReback Separation */
 /* 创建表结构 `ri_archives`  */
 DROP TABLE IF EXISTS `ri_archives`;/* MySQLReback Separation */ CREATE TABLE `ri_archives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '单页编号',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '单页名称',
  `symbol` varchar(32) NOT NULL DEFAULT '' COMMENT '单页标识',
  `keywords` varchar(128) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_archives` */
 INSERT INTO `ri_archives` VALUES ('1','啊啊啊啊','bbbb','ccccccccc','ddddddddddddddd','rrrrrrrrrrreqwwwwwwwwwwwwwwwwrrrrrrrrrrrrr');/* MySQLReback Separation */
 /* 创建表结构 `ri_auth_group`  */
 DROP TABLE IF EXISTS `ri_auth_group`;/* MySQLReback Separation */ CREATE TABLE `ri_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_auth_group` */
 INSERT INTO `ri_auth_group` VALUES ('1','超级管理员','1',null);/* MySQLReback Separation */
 /* 创建表结构 `ri_auth_group_access`  */
 DROP TABLE IF EXISTS `ri_auth_group_access`;/* MySQLReback Separation */ CREATE TABLE `ri_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_auth_group_access` */
 INSERT INTO `ri_auth_group_access` VALUES ('1','1');/* MySQLReback Separation */
 /* 创建表结构 `ri_auth_rule`  */
 DROP TABLE IF EXISTS `ri_auth_rule`;/* MySQLReback Separation */ CREATE TABLE `ri_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_auth_rule` */
 INSERT INTO `ri_auth_rule` VALUES ('1','SystemConfig/webConfig','网站配置','1','1',null,'0'),('2','Administrator/index','管理员','1','1',null,'0'),('3','Administrator/userAdd','添加管理员','1','1',null,'2'),('4','Administrator/userEdit','编辑管理员','1','1',null,'2'),('5','Administrator/userDelete','删除管理员','1','1',null,'2'),('6','Email/index','邮件配置','1','1',null,'0'),('7','Pay/index','支付配置','1','1',null,'0'),('8','Shipping/index','物流管理','1','1',null,'0'),('9','Shipping/shippingAdd','添加物流','1','1',null,'8'),('10','Shipping/shippingEdit','编辑物流','1','1',null,'8'),('11','Shipping/doShippingDelete','删除物流','1','1',null,'8'),('12','AdvPosition/advManager','广告管理','1','1',null,'0'),('13','AdvPosition/addAdv','添加广告','1','1',null,'12'),('14','AdvPosition/editAdv','编辑广告','1','1',null,'12'),('15','AdvPosition/delAdv','删除广告','1','1',null,'12'),('16','User/index','用户管理','1','1',null,'0'),('17','User/userEdit','修改用户','1','1',null,'16'),('18','Product/productList','商品管理','1','1',null,'0'),('19','Product/productAdd','添加商品','1','1',null,'18'),('20','Product/productEdit','修改商品','1','1',null,'18'),('21','OrderInfo/index','订单管理','1','1',null,'0'),('22','SupportDown/fileList','售后管理','1','1',null,'0'),('23','SupportDown/downCate','添加下载分类','1','1',null,'22'),('24','Index/index','后台首页','1','1',null,'0'),('25','Jurisdiction/group','创建权限','1','1',null,'0'),('26','SupportDown/down','添加下载文件','1','1',null,'22'),('27','Faq/articleList','常见问题','1','1',null,'22'),('28','SupportMap/index','网点查询','1','1',null,'22'),('29','SaleService/returnProduct','退货商品','1','1',null,'22'),('30','SaleService/changeProduct','换货商品','1','1',null,'22'),('31','SaleService/prepareProduct','维修商品','1','1',null,'22'),('32','Links/linksmanager','友情链接','1','1',null,'12'),('33','Jurisdiction/buttons','文章管理','1','1',null,'0'),('34','News/newsManager','新闻管理','1','1',null,'33'),('35','News/CategoryList','新闻分类管理','1','1',null,'33'),('36','Video/setVideo','视频管理','1','1',null,'33'),('37','Product/productParamAdd','商品参数','1','1',null,'18'),('38','Product/toggleOnSale','商品下架','1','1',null,'18'),('39','Admin/Product/addProductToRecycle','商品回收站','1','1',null,'18'),('40','User/userAddress','用户的收货地址','1','1',null,'16'),('41','User/productParamAdd','查询订单','1','1',null,'16'),('42','User/toggleOnSale','交易明细','1','1',null,'16'),('43','User/addProductToRecycle','禁用用户','1','1',null,'16'),('44','Feedback/index','用户留言','1','1',null,'16'),('45','User/userAdd','添加会员','1','1',null,'16'),('46','Administrator/doUserEdit','保存管理员信息','1','1',null,'2'),('47','Administrator/toggleStatus','修改管理员状态','1','1',null,'2'),('48','Administrator/batchDelete','批量删除管理员','1','1',null,'2'),('49','AdvPosition/addCate','执行添加广告分类','1','1',null,'12'),('50','AdvPosition/Adv','添加广告分类','1','1',null,'12'),('51','AdvPosition/cateList','广告分类表','1','1',null,'12'),('52','AdvPosition/insertAdv','执行添加广告','1','1',null,'12'),('53','AdvPosition/editSave','保存修改广告信息','1','1',null,'12'),('54','AdvPosition/cateSave','保存修改广告分类','1','1',null,'12'),('55','AdvPosition/delCate','删除广告分类','1','1',null,'12'),('56','Email/tmpEdit','获取邮件修改模板','1','1',null,'6'),('57','Email/doTmpEdit','执行模板编辑操作','1','1',null,'6'),('58','Email/saveConfig','保存基本配置修改信息','1','1',null,'6'),('59','Faq/faqCate','添加常见问题分类','1','1',null,'22'),('60','Faq/cateSave','执行添加分类','1','1',null,'22'),('61','Faq/faqArticles','添加问题文章','1','1',null,'22'),('62','Faq/lookArticle','查看问题文章','1','1',null,'22'),('63','Faq/editArticle','编辑问题文章','1','1',null,'22'),('64','Faq/editSave','保存修改文章','1','1',null,'22'),('65','Faq/delArticle','删除文章','1','1',null,'22'),('66','Backup/index','数据库备份','1','1',null,'0'),('67','Backup/fileList','获取数据表','1','1',null,'66'),('68','Backup/backAll','备份整个数据库','1','1',null,'66'),('69','Backup/backTables','按表备份','1','1',null,'66'),('70','Backup/doBatch','批量操作','1','1',null,'66'),('71','Backup/recover','还原数据库','1','1',null,'66'),('72','Backup/deleteBak','删除数据备份','1','1',null,'66'),('73','Backup/downloadBak','下载备份文件','1','1',null,'66'),('74','Backup/setFile','把数据写入磁盘','1','1',null,'66'),('75','Feedback/doBatchDelete','批量删除留言','1','1',null,'16'),('76','Feedback/doDeleteFeedback','执行删除操作','1','1',null,'16'),('77','FeedBack/view','获取回复页面','1','1',null,'16'),('78','FeedBack/doFeedbackAdd','执行回复操作','1','1',null,'16'),('79','Links/addLinks','添加友情链接','1','1',null,'12'),('80','Links/doAddLinks','执行添加友情链接','1','1',null,'12'),('81','Links/editLinks','修改友情链接','1','1',null,'12');/* MySQLReback Separation */
 /* 插入数据 `ri_auth_rule` */
 INSERT INTO `ri_auth_rule` VALUES ('82','Links/doEditLinks','执行修改友情链接','1','1',null,'12');/* MySQLReback Separation */
 /* 插入数据 `ri_auth_rule` */
 INSERT INTO `ri_auth_rule` VALUES ('83','Links/delLinks','删除友情链接','1','1',null,'12'),('84','Log/index','日志列表','1','1',null,'0'),('85','Log/setLog','日志写入类','1','1',null,'84'),('86','Log/logDelete','删除日志','1','1',null,'84'),('87','Log/batchDelete','批量删除操作','1','1',null,'84'),('88','News/addNewsCategory','添加新闻类别','1','1',null,'33'),('89','News/editCategory','修改新闻分类','1','1',null,'33'),('90','News/addCategory','执行添加新闻类别','1','1',null,'33'),('91','News/categoryUpdat','执行修改新闻类别','1','1',null,'33'),('92','News/delCategory','删除新闻类别','1','1',null,'33'),('93','News/addNews','添加新闻','1','1',null,'33'),('94','News/doAddNews','执行添加新闻','1','1',null,'33'),('95','News/editNews','修改新闻','1','1',null,'33'),('96','News/updateNews','执行修改新闻','1','1',null,'33'),('97','News/delNews','删除新闻','1','1',null,'33'),('98','OrderInfo/OrderInfo','订单信息','1','1',null,'21'),('99','OrderInfo/shippingAdd','添加物流信息','1','1',null,'21'),('100','OrderInfo/OrderCancel','取消订单','1','1',null,'21'),('101','OrderInfo/savePaypal','保存支付配置信息','1','1',null,'7'),('102','Product/doProductEdit','执行商品修改操作','1','1',null,'18'),('103','Product/productRecycle','回收站商品列表','1','1',null,'18'),('104','Product/removeProductToRecycle','将产品从回收站移出','1','1',null,'18'),('105','Product/deleteProduct','删除商品','1','1',null,'18'),('106','Product/doEditParam','执行参数编辑操作','1','1',null,'18'),('107','Product/editParam','编辑商品参数','1','1',null,'18'),('108','Product/doDeleteParam','执行删除参数操作','1','1',null,'18'),('109','Product/doAddProduct','执行产品添加操作','1','1',null,'18'),('110','Product/productCats','商品分类列表','1','1',null,'18'),('111','Product/productCatAdd','获取添加商品分类界面','1','1',null,'18'),('112','Product/doCatAdd','执行添加商品分类操作','1','1',null,'18'),('113','Product/productAssess','商品评价','1','1',null,'18'),('114','Product/doBatchDelete','批量删除留言','1','1',null,'18'),('115','Product/doDeleteFeedback','执行删除操作','1','1',null,'18'),('116','Product/product_comment_view','回复页面','1','1',null,'18'),('117','Product/doFeedbackAdd','回复操作','1','1',null,'18'),('118','SaleService/lookService','查看服务单详情','1','1',null,'22'),('119','Seo/seoList','SEO列表','1','1',null,'0'),('120','Seo/addseo','添加seo','1','1',null,'119'),('121','Seo/doaddSeo','执行添加seo','1','1',null,'119'),('122','Seo/editSeo','修改seo','1','1',null,'119'),('123','Seo/doeditSeo','执行修改Seo','1','1',null,'119'),('124','Seo/delSeo','删除Seo','1','1',null,'119'),('125','Shipping/saveShippingAPI','保存物流接口','1','1',null,'8'),('126','Shipping/doShippingEdit','执行修改操作','1','1',null,'8'),('127','Shipping/doShippingAdd','执行添加物流信息','1','1',null,'8'),('128','Sms/index','获取短信配置界面','1','1',null,'0'),('129','Sms/deleteTmp','执行删除操作','1','1',null,'128'),('130','Sms/addTmp','获取添加模板','1','1',null,'128'),('131','Sms/doAddTmp','执行添加操作','1','1',null,'128'),('132','Sms/editTmp','获取短信修改模板','1','1',null,'128'),('133','Sms/doEditTmp','执行编辑操作','1','1',null,'128'),('134','Sms/saveConfig','保存基本配置修改信息','1','1',null,'128'),('135','SupportArticles/articleCate','文章分类','1','1',null,'22');/* MySQLReback Separation */
 /* 创建表结构 `ri_email_templates`  */
 DROP TABLE IF EXISTS `ri_email_templates`;/* MySQLReback Separation */ CREATE TABLE `ri_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(32) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_email_templates` */
 INSERT INTO `ri_email_templates` VALUES ('1','email_send_reg','{sy_webname} 注册通知','&lt;p&gt;\r\n 欢迎注册{sy_webname}会员：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;'),('2','email_send_verify','{sy_webname} 验证消息','&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:arial, verdana, sans-serif;font-size:18px;&quot;&gt;\r\n	&lt;img src=&quot;http://statics.oneplus.cn/img/logo-oneplus.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:arial, verdana, sans-serif;font-size:18px;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:arial, verdana, sans-serif;font-size:18px;&quot;&gt;\r\n	亲爱的用户：&lt;br /&gt;\r\n您好！&lt;br /&gt;\r\n{username}，&lt;br /&gt;\r\n点击下方激活链接即可完成注册：\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:arial, verdana, sans-serif;font-size:18px;&quot;&gt;\r\n	{url}&lt;br /&gt;\r\n&lt;span style=&quot;font-size:12px;color:#999999;&quot;&gt;如果您无法点击此链接，请将它复制到浏览器地址栏后访问&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:arial, verdana, sans-serif;font-size:14px;&quot;&gt;\r\n	1.为了保障您账号的安全性，请在24小时内完成激活，此链接将在您激活过一次后失效！&lt;br /&gt;\r\n2.请尽快完成激活，否则链接将过期，一加将有权于2015年01月15日 00:17:12后收回账号；&lt;br /&gt;\r\n3.本邮件由一加手机官网系统自动发出，请勿直接回复！&lt;br /&gt;\r\n4.如果您有任何疑问或建议，请随时拨打一加手机客服热线：400-888-1111\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:arial, verdana, sans-serif;font-size:14px;&quot;&gt;\r\n	祝您使用愉快！&lt;br /&gt;\r\n{sy_webname}&lt;br /&gt;\r\nwww.ribbon.cn{sy_webcopyright}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;'),('3','email_get_pwd','{sy_webname} 找回密码','&lt;br /&gt;\r\n亲爱的用户：&lt;br /&gt;\r\n您好！&lt;br /&gt;\r\n{username}，&lt;br /&gt;\r\n点击下方激活链接即可完找回密码：&lt;br /&gt;\r\n{url}&lt;br /&gt;\r\n如果您无法点击此链接，请将它复制到浏览器地址栏后访问&lt;br /&gt;\r\n1.为了保障您账号的安全性，请在24小时内完成激活，此链接将在您激活过一次后失效！&lt;br /&gt;\r\n2.本邮件由一加手机官网系统自动发出，请勿直接回复！&lt;br /&gt;\r\n3.如果您有任何疑问或建议，请随时拨打一加手机客服热线：400-888-1111&lt;br /&gt;\r\n祝您使用愉快！&lt;br /&gt;\r\n{sy_webname}&lt;br /&gt;\r\nwww.ribbon.cn{sy_webcopyright}&lt;br /&gt;\r\n&lt;br /&gt;');/* MySQLReback Separation */
 /* 创建表结构 `ri_faq_articles`  */
 DROP TABLE IF EXISTS `ri_faq_articles`;/* MySQLReback Separation */ CREATE TABLE `ri_faq_articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '所属分类',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '文章标题',
  `faq_content` text NOT NULL COMMENT '文章内容',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_feedback_replies`  */
 DROP TABLE IF EXISTS `ri_feedback_replies`;/* MySQLReback Separation */ CREATE TABLE `ri_feedback_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '回复编号',
  `feedback_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '意见ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复人ID',
  `content` text NOT NULL COMMENT '回复内容',
  `reply_time` int(10) unsigned NOT NULL COMMENT '回复时间',
  `status` int(4) DEFAULT '0' COMMENT '回复的状态 0 未读 1已读',
  `reply_uid` int(11) DEFAULT NULL COMMENT '用户的uid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_feedbacks`  */
 DROP TABLE IF EXISTS `ri_feedbacks`;/* MySQLReback Separation */ CREATE TABLE `ri_feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '内容',
  `add_time` int(10) NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_job_applies`  */
 DROP TABLE IF EXISTS `ri_job_applies`;/* MySQLReback Separation */ CREATE TABLE `ri_job_applies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) NOT NULL DEFAULT '' COMMENT '职位名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '申请人',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别  1男 0 女',
  `age` int(3) unsigned NOT NULL DEFAULT '1' COMMENT '生日',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone` char(15) NOT NULL DEFAULT '' COMMENT '手机',
  `school` varchar(64) NOT NULL DEFAULT '' COMMENT '毕业院校',
  `discipline` varchar(64) NOT NULL DEFAULT '' COMMENT '专业',
  `education` varchar(30) NOT NULL DEFAULT '本科' COMMENT '学历',
  `grad_date` int(10) NOT NULL DEFAULT '19700101' COMMENT '毕业日期',
  `experience` tinyint(2) NOT NULL DEFAULT '0' COMMENT '工作年限 0-99',
  `now_address` varchar(255) NOT NULL DEFAULT '' COMMENT '现居地',
  PRIMARY KEY (`id`),
  KEY `position_id` (`job_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_job_cat`  */
 DROP TABLE IF EXISTS `ri_job_cat`;/* MySQLReback Separation */ CREATE TABLE `ri_job_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '职位类别编号',
  `cat_name` varchar(32) NOT NULL DEFAULT '' COMMENT '职位类别',
  `cat_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '默认允许显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_jobs`  */
 DROP TABLE IF EXISTS `ri_jobs`;/* MySQLReback Separation */ CREATE TABLE `ri_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '职位ID编号',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '职位类别',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '职位名称',
  `department` varchar(32) NOT NULL DEFAULT '' COMMENT '部门',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '工作类型 0全职  1兼职 2实习',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '工作地点',
  `number` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '招聘人数',
  `add_time` varchar(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `edu` varchar(32) NOT NULL DEFAULT '' COMMENT '学历',
  `condition` text NOT NULL COMMENT '任职资格',
  `content` text NOT NULL COMMENT '工作内容',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '默认开启 0关闭 1开启',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_keywords`  */
 DROP TABLE IF EXISTS `ri_keywords`;/* MySQLReback Separation */ CREATE TABLE `ri_keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `times` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_keywords` */
 INSERT INTO `ri_keywords` VALUES ('1','Ribbon','17');/* MySQLReback Separation */
 /* 创建表结构 `ri_links`  */
 DROP TABLE IF EXISTS `ri_links`;/* MySQLReback Separation */ CREATE TABLE `ri_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linktitle` char(50) NOT NULL,
  `linkurl` char(255) NOT NULL,
  `picture` char(255) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_links` */
 INSERT INTO `ri_links` VALUES ('1','百度','www.baidu.com','2015-05-18/5559661fbf8e9.png','1');/* MySQLReback Separation */
 /* 创建表结构 `ri_news_cat`  */
 DROP TABLE IF EXISTS `ri_news_cat`;/* MySQLReback Separation */ CREATE TABLE `ri_news_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `cat_name` varchar(64) NOT NULL DEFAULT '' COMMENT '分类名称',
  `is_show` tinyint(1) unsigned DEFAULT '1' COMMENT '默认显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_news_cat` */
 INSERT INTO `ri_news_cat` VALUES ('1','产品新闻','1');/* MySQLReback Separation */
 /* 创建表结构 `ri_news_contents`  */
 DROP TABLE IF EXISTS `ri_news_contents`;/* MySQLReback Separation */ CREATE TABLE `ri_news_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '新闻编号id',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '新闻分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '新闻标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `keywords` varchar(128) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `content` text NOT NULL COMMENT '内容',
  `clicktimes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `thumbnail` varchar(128) NOT NULL DEFAULT '' COMMENT '缩略图',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '默认显示',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_order_products`  */
 DROP TABLE IF EXISTS `ri_order_products`;/* MySQLReback Separation */ CREATE TABLE `ri_order_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `product_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '购买价格',
  `product_number` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '购买数量',
  `product_color` varchar(32) DEFAULT NULL COMMENT '商品的属性',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_order_products` */
 INSERT INTO `ri_order_products` VALUES ('1','1','38','2998.00','1','16GB白色'),('2','6','42','6000.00','1','32GB香槟金');/* MySQLReback Separation */
 /* 创建表结构 `ri_orders`  */
 DROP TABLE IF EXISTS `ri_orders`;/* MySQLReback Separation */ CREATE TABLE `ri_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `order_sn` char(20) NOT NULL DEFAULT '' COMMENT '订单号',
  `order_date` int(11) NOT NULL DEFAULT '0' COMMENT '下单时间',
  `deail_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成交金额',
  `order_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 已取消 1 等待付款 2 等待发货 3 已发货 4 已完成',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未付款 1已付款',
  `pay_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付方式 0在线支付 1货到付款',
  `shipping_addr_id` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货地址ID',
  `shipping_way` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '物流方式ID',
  `shipping_num` char(20) NOT NULL DEFAULT '' COMMENT '物流单号',
  `send_time` int(4) NOT NULL DEFAULT '0' COMMENT '送货时间 0 工作日休息日假日均可送货 1只工作日送货,休息日或假日不送 2只休息日或假日送货 3白天没人,尽量安排其它时间送',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_orders` */
 INSERT INTO `ri_orders` VALUES ('1','2','20150422191205165','1429701125','2998.00','1','0','0','1','166',null,'0'),('2','2','2015042219155457','1429701354','2998.00','1','0','0','1','166',null,'0'),('3','2','20150422191557535','1429701357','2998.00','1','0','0','1','166',null,'0'),('4','2','20150422191603609','1429701363','2998.00','1','0','0','1','166',null,'0'),('5','2','20150422192154530','1429701714','2998.00','1','0','0','1','166',null,'0'),('6','5','2015042314475544','1429771675','6000.00','1','0','0','2','166',null,'1');/* MySQLReback Separation */
 /* 创建表结构 `ri_product_album`  */
 DROP TABLE IF EXISTS `ri_product_album`;/* MySQLReback Separation */ CREATE TABLE `ri_product_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片编号',
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联产品颜色',
  `images` varchar(128) NOT NULL DEFAULT '' COMMENT '图片地址',
  PRIMARY KEY (`id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_product_album` */
 INSERT INTO `ri_product_album` VALUES ('236','146','/ribbon/Public/Product/adv/2015-01-25/54c481f041300.jpg'),('237','146','/ribbon/Public/Product/adv/2015-01-25/54c481f053415.jpg'),('238','146','/ribbon/Public/Product/adv/2015-01-25/54c481f067c39.jpg'),('239','146','/ribbon/Public/Product/adv/2015-01-25/54c481f07bc8e.jpg'),('240','146','/ribbon/Public/Product/adv/2015-01-25/54c481f088f81.jpg'),('241','147','/ribbon/Public/Product/adv/2015-01-25/54c482043bd9f.jpg'),('242','147','/ribbon/Public/Product/adv/2015-01-25/54c4820454ffd.jpg'),('243','147','/ribbon/Public/Product/adv/2015-01-25/54c4820466559.jpg'),('244','147','/ribbon/Public/Product/adv/2015-01-25/54c482047307c.jpg'),('245','147','/ribbon/Public/Product/adv/2015-01-25/54c4820487c89.jpg'),('246','152','/ribbon/Public/Product/adv/2015-04-23/55387daf2d9fc.jpg'),('247','152','/ribbon/Public/Product/adv/2015-04-23/55387daf44cd0.jpg'),('248','152','/ribbon/Public/Product/adv/2015-04-23/55387daf5c0d6.jpg'),('249','152','/ribbon/Public/Product/adv/2015-04-23/55387daf7b141.jpg'),('250','153','/ribbon/Public/Product/adv/2015-04-23/55387db98a292.jpg'),('251','153','/ribbon/Public/Product/adv/2015-04-23/55387db9a6e7f.jpg'),('252','153','/ribbon/Public/Product/adv/2015-04-23/55387db9c7799.jpg'),('253','153','/ribbon/Public/Product/adv/2015-04-23/55387db9e157a.jpg'),('254','160','/ribbon/Public/Product/adv/2015-04-23/5538804867f67.jpg'),('255','160','/ribbon/Public/Product/adv/2015-04-23/55388048835f3.jpg'),('256','160','/ribbon/Public/Product/adv/2015-04-23/5538804896643.jpg'),('257','160','/ribbon/Public/Product/adv/2015-04-23/55388048ac2c8.jpg'),('258','161','/ribbon/Public/Product/adv/2015-04-23/55388065b702c.jpg'),('259','161','/ribbon/Public/Product/adv/2015-04-23/55388065d566a.jpg'),('260','161','/ribbon/Public/Product/adv/2015-04-23/55388065f11ef.jpg'),('261','161','/ribbon/Public/Product/adv/2015-04-23/55388066126ca.jpg'),('262','164','/ribbon/Public/Product/adv/2015-04-23/5538815218b68.jpg'),('263','164','/ribbon/Public/Product/adv/2015-04-23/553881522c59b.jpg'),('264','164','/ribbon/Public/Product/adv/2015-04-23/553881524237f.jpg'),('265','164','/ribbon/Public/Product/adv/2015-04-23/55388152586cd.jpg'),('266','165','/ribbon/Public/Product/adv/2015-04-23/5538817fc0494.jpg'),('267','165','/ribbon/Public/Product/adv/2015-04-23/5538817fdfb0c.jpg'),('268','165','/ribbon/Public/Product/adv/2015-04-23/55388180040a3.jpg'),('269','165','/ribbon/Public/Product/adv/2015-04-23/553881801d0b7.jpg'),('270','170','/ribbon/Public/Product/adv/2015-04-23/553882132a0c9.jpg'),('271','170','/ribbon/Public/Product/adv/2015-04-23/55388218640cf.jpg'),('272','170','/ribbon/Public/Product/adv/2015-04-23/5538821889eab.jpg'),('273','170','/ribbon/Public/Product/adv/2015-04-23/553882189e29e.jpg'),('274','171','/ribbon/Public/Product/adv/2015-04-23/55388232ee8f3.jpg'),('275','171','/ribbon/Public/Product/adv/2015-04-23/5538823311d47.jpg'),('276','171','/ribbon/Public/Product/adv/2015-04-23/5538823329b10.jpg'),('277','171','/ribbon/Public/Product/adv/2015-04-23/55388233474ee.jpg'),('278','176','/ribbon/Public/Product/adv/2015-04-23/553882bec8d77.jpg'),('279','176','/ribbon/Public/Product/adv/2015-04-23/553882bee433a.jpg'),('280','176','/ribbon/Public/Product/adv/2015-04-23/553882bf09c5e.jpg'),('281','176','/ribbon/Public/Product/adv/2015-04-23/553882bf2a1f1.jpg'),('282','177','/ribbon/Public/Product/adv/2015-04-23/553882d5c9afc.jpg'),('283','177','/ribbon/Public/Product/adv/2015-04-23/553882d5eab05.jpg'),('284','177','/ribbon/Public/Product/adv/2015-04-23/553882d61244b.jpg'),('285','177','/ribbon/Public/Product/adv/2015-04-23/553882d6276a2.jpg'),('286','178','/ribbon/Public/Product/adv/2015-04-23/553882e624a26.jpg'),('287','178','/ribbon/Public/Product/adv/2015-04-23/553882e6492b0.jpg'),('288','178','/ribbon/Public/Product/adv/2015-04-23/553882e664b02.jpg'),('289','178','/ribbon/Public/Product/adv/2015-04-23/553882e67b000.jpg'),('290','183','/ribbon/Public/Product/adv/2015-04-23/553884030ec75.jpg'),('291','183','/ribbon/Public/Product/adv/2015-04-23/5538840328ffd.jpg'),('292','183','/ribbon/Public/Product/adv/2015-04-23/553884033e3b6.jpg'),('293','183','/ribbon/Public/Product/adv/2015-04-23/55388403509c1.jpg'),('294','184','/ribbon/Public/Product/adv/2015-04-23/553884208a679.jpg'),('295','184','/ribbon/Public/Product/adv/2015-04-23/55388420a333e.jpg'),('296','184','/ribbon/Public/Product/adv/2015-04-23/55388420b5f45.jpg'),('297','184','/ribbon/Public/Product/adv/2015-04-23/55388420c7d67.jpg'),('298','187','/ribbon/Public/Product/adv/2015-04-23/5538854fb7ec8.jpg'),('299','187','/ribbon/Public/Product/adv/2015-04-23/553885554004f.jpg'),('300','187','/ribbon/Public/Product/adv/2015-04-23/5538855558236.jpg'),('301','188','/ribbon/Public/Product/adv/2015-04-23/5538857c4660a.jpg'),('302','188','/ribbon/Public/Product/adv/2015-04-23/5538857fd5610.jpg'),('303','188','/ribbon/Public/Product/adv/2015-04-23/5538857fec571.jpg'),('304','188','/ribbon/Public/Product/adv/2015-04-23/55388580178a1.jpg'),('305','193','/ribbon/Public/Product/adv/2015-04-23/553885fef1585.jpg'),('306','193','/ribbon/Public/Product/adv/2015-04-23/553886031d918.jpg'),('307','193','/ribbon/Public/Product/adv/2015-04-23/5538860335c4a.jpg');/* MySQLReback Separation */
 /* 插入数据 `ri_product_album` */
 INSERT INTO `ri_product_album` VALUES ('308','193','/ribbon/Public/Product/adv/2015-04-23/5538860352a48.jpg');/* MySQLReback Separation */
 /* 插入数据 `ri_product_album` */
 INSERT INTO `ri_product_album` VALUES ('309','194','/ribbon/Public/Product/adv/2015-04-23/55388614cdc10.jpg'),('310','194','/ribbon/Public/Product/adv/2015-04-23/55388614e6749.jpg'),('311','194','/ribbon/Public/Product/adv/2015-04-23/553886150aa16.jpg'),('312','194','/ribbon/Public/Product/adv/2015-04-23/5538861521fc3.jpg'),('313','199','/ribbon/Public/Product/adv/2015-04-23/553886ab1c06f.jpg'),('314','199','/ribbon/Public/Product/adv/2015-04-23/553886ab340b7.jpg'),('315','199','/ribbon/Public/Product/adv/2015-04-23/553886ab535c2.jpg'),('316','199','/ribbon/Public/Product/adv/2015-04-23/553886ab6f9f4.jpg'),('317','200','/ribbon/Public/Product/adv/2015-04-23/553886bbaadef.jpg'),('318','200','/ribbon/Public/Product/adv/2015-04-23/553886bbbdba3.jpg'),('319','200','/ribbon/Public/Product/adv/2015-04-23/553886bbd1590.jpg'),('320','200','/ribbon/Public/Product/adv/2015-04-23/553886bbe5266.jpg'),('321','207','/ribbon/Public/Product/adv/2015-04-23/553887535623c.jpg'),('322','207','/ribbon/Public/Product/adv/2015-04-23/55388757d6b07.jpg'),('323','207','/ribbon/Public/Product/adv/2015-04-23/55388757f2375.jpg'),('324','207','/ribbon/Public/Product/adv/2015-04-23/553887581204c.jpg'),('325','208','/ribbon/Public/Product/adv/2015-04-23/553887671cdbb.jpg'),('326','208','/ribbon/Public/Product/adv/2015-04-23/553887672fc12.jpg'),('327','213','/ribbon/Public/Product/adv/2015-04-23/55389819274d8.jpg'),('328','213','/ribbon/Public/Product/adv/2015-04-23/5538981945fda.jpg'),('329','213','/ribbon/Public/Product/adv/2015-04-23/553898196393d.jpg'),('330','213','/ribbon/Public/Product/adv/2015-04-23/55389819828a6.jpg'),('331','214','/ribbon/Public/Product/adv/2015-04-23/55389826c47de.jpg'),('332','214','/ribbon/Public/Product/adv/2015-04-23/55389826e0b51.jpg'),('333','214','/ribbon/Public/Product/adv/2015-04-23/5538982703148.jpg'),('334','214','/ribbon/Public/Product/adv/2015-04-23/553898271b3a2.jpg');/* MySQLReback Separation */
 /* 创建表结构 `ri_product_attr`  */
 DROP TABLE IF EXISTS `ri_product_attr`;/* MySQLReback Separation */ CREATE TABLE `ri_product_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性编号',
  `pro_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联商品ID',
  `prop_id` int(10) NOT NULL DEFAULT '0' COMMENT '关联属性ID',
  `prop_name` varchar(64) NOT NULL DEFAULT '' COMMENT '属性值',
  `prop_value` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pro_id` (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_product_attr` */
 INSERT INTO `ri_product_attr` VALUES ('144','38','2','32GB','3288'),('145','38','2','16GB','2998'),('146','38','1','香槟金','#C5B697'),('147','38','1','白色','#ffffff'),('151','39','2','16GB','2300'),('150','39','2','64GB','2700'),('152','39','1','白色','#FFFFFF'),('153','39','1','粉色','#EC7099'),('159','40','2','16GB','2000'),('158','40','2','32GB','2600'),('157','40','2','64GB','3400'),('160','40','1','经典黑','#000000'),('161','40','1','银色','#E1E2E4'),('163','41','2','腕带式','100'),('164','41','1','黑色','#000000'),('165','41','1','红色','#ED0E0D'),('169','42','2','32GB','6000'),('168','42','2','64GB','6800'),('170','42','1','香槟金','#E2CEBC'),('171','42','1','天空灰','#8F9095'),('175','43','2','16GB','1600'),('174','43','2','32GB','2200'),('176','43','1','银色','#F2F2F2'),('177','43','1','蓝色','#48D1FF'),('178','43','1','黄色','#FFD727'),('182','44','2','16GB','2400'),('181','44','2','32GB','2999'),('183','44','1','白色','#ffffff'),('184','44','1','银色','#DBDDDE'),('185','45','2','挂式','129'),('186','45','2','入耳式','99'),('187','45','1','橙色','#E26628'),('188','45','1','棕色','#B3957B'),('192','46','2','16GB','1699'),('191','46','2','32GB','2699'),('193','46','1','绿色','#9FC65D'),('194','46','1','蓝色','#6BB5D2'),('198','47','2','充电式','99'),('197','47','2','电池版','79'),('199','47','1','蓝色','#37C0E1'),('200','47','1','白色','#ffffff'),('205','48','2','14000mAh','369'),('204','48','2','21000mAh','399'),('206','48','2','5000mAh','299'),('207','48','1','银色','#AFB0B4'),('208','48','1','红色','#E94F59'),('212','49','2','16GB','2000'),('211','49','2','32GB','2500'),('213','49','1','黑色','#000000'),('214','49','1','蓝色','#60CAF4');/* MySQLReback Separation */
 /* 创建表结构 `ri_product_cat`  */
 DROP TABLE IF EXISTS `ri_product_cat`;/* MySQLReback Separation */ CREATE TABLE `ri_product_cat` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `fid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类父ID',
  `cat_name` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称（平板，手机，穿戴，配件，赠品，促销，）',
  `sort` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_product_cat` */
 INSERT INTO `ri_product_cat` VALUES ('1','0','平板电脑','0','1'),('2','0','手机','0','1'),('3','0','穿戴产品','0','1'),('4','0','配件','0','1'),('5','0','赠品','0','0');/* MySQLReback Separation */
 /* 创建表结构 `ri_product_comment_replies`  */
 DROP TABLE IF EXISTS `ri_product_comment_replies`;/* MySQLReback Separation */ CREATE TABLE `ri_product_comment_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '回复编号',
  `comment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论ID',
  `admin_user_id` int(10) NOT NULL DEFAULT '0' COMMENT '回复人员ID',
  `reply_time` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_product_comments`  */
 DROP TABLE IF EXISTS `ri_product_comments`;/* MySQLReback Separation */ CREATE TABLE `ri_product_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品评价id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `score` tinyint(1) NOT NULL DEFAULT '5' COMMENT '星级1-5',
  `content` text NOT NULL COMMENT '评论类型',
  `comment_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_product_param`  */
 DROP TABLE IF EXISTS `ri_product_param`;/* MySQLReback Separation */ CREATE TABLE `ri_product_param` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pro_id` int(10) unsigned NOT NULL DEFAULT '0',
  `param_title` varchar(32) NOT NULL DEFAULT '',
  `param_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_product_param` */
 INSERT INTO `ri_product_param` VALUES ('62','38','颜色','&lt;table style=&quot;width:50%;&quot; class=&quot;ke-zeroborder&quot; border=&quot;0&quot; bordercolor=&quot;#000000&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot;&gt;\r\n &lt;tbody&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        &lt;img src=&quot;/Public/Product/param/image/20150125/20150125123623_88620.png&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n      &lt;/td&gt;\r\n     &lt;td&gt;\r\n        &lt;img src=&quot;/Public/Product/param/image/20150125/20150125123829_68282.png&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n      &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;br /&gt;'),('63','38','容量和内存','&lt;table class=&quot;ke-zeroborder&quot; border=&quot;0&quot; bordercolor=&quot;#000000&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; height=&quot;69&quot; width=&quot;690&quot;&gt;\r\n &lt;tbody&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        高速闪存：16/32GB ROM ( eMMC 5.0 )&lt;br /&gt;\r\n     &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        内存：2GB RAM ( LPDDR3, 933 MHz )&lt;br /&gt;\r\n      &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;br /&gt;'),('64','38','尺寸和重量','&lt;table class=&quot;ke-zeroborder&quot; border=&quot;0&quot; bordercolor=&quot;#000000&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; height=&quot;184&quot; width=&quot;690&quot;&gt;\r\n  &lt;tbody&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        &lt;div class=&quot;phone-size-label&quot;&gt;\r\n          &lt;p&gt;\r\n           高度：141 mm\r\n         &lt;/p&gt;\r\n          &lt;p&gt;\r\n           宽度：67.74 mm\r\n         &lt;/p&gt;\r\n          &lt;p&gt;\r\n           厚度：8.23 mm\r\n          &lt;/p&gt;\r\n          &lt;p&gt;\r\n           重量：约 167 g\r\n          &lt;/p&gt;\r\n        &lt;/div&gt;\r\n&lt;br /&gt;\r\n      &lt;/td&gt;\r\n     &lt;td&gt;\r\n        &lt;img src=&quot;/Public/Product/param/image/20150125/20150125124156_35848.png&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n      &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;br /&gt;'),('66','38','蜂窝网络','&lt;div class=&quot;specification-content&quot;&gt;\r\n &lt;p&gt;\r\n   &lt;strong&gt;3G 版：&lt;/strong&gt;\r\n  &lt;/p&gt;\r\n  &lt;p&gt;\r\n   GSM: 850/900/1800/1900 MHz\r\n  &lt;/p&gt;\r\n  &lt;p&gt;\r\n   WCDMA: 850/900/1900/2100 MHz\r\n  &lt;/p&gt;\r\n&lt;br /&gt;\r\n  &lt;p&gt;\r\n   &lt;strong&gt;4G 版：&lt;/strong&gt;\r\n  &lt;/p&gt;\r\n  &lt;p&gt;\r\n   GSM: 900/1800/1900 MHz\r\n  &lt;/p&gt;\r\n  &lt;p&gt;\r\n   WCDMA: 900/1800/2100 MHz\r\n  &lt;/p&gt;\r\n  &lt;p&gt;\r\n   TD-SCDMA: 1900/2000 MHz\r\n &lt;/p&gt;\r\n  &lt;p&gt;\r\n   TDD-LTE: B38/B39/B40/B41 ( 注：B41 仅支持中国频段 )\r\n  &lt;/p&gt;\r\n  &lt;p&gt;\r\n   FDD-LTE: B1/B3\r\n  &lt;/p&gt;\r\n&lt;/div&gt;'),('68','38','定位功能','&lt;div class=&quot;specification-content&quot;&gt;\r\n &lt;p&gt;\r\n   全球定位系统、GLONASS 定位系统、北斗定位系统\r\n  &lt;/p&gt;\r\n  &lt;p&gt;\r\n   无线网络辅助定位\r\n  &lt;/p&gt;\r\n  &lt;p&gt;\r\n   蜂窝移动网络辅助定位\r\n  &lt;/p&gt;\r\n&lt;/div&gt;'),('69','38','音频播放','&lt;table class=&quot;ke-zeroborder&quot; border=&quot;0&quot; bordercolor=&quot;#000000&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; height=&quot;116&quot; width=&quot;690&quot;&gt;\r\n &lt;tbody&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        德州仪器 OPA2604 运放芯片&lt;br /&gt;\r\n     &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        支持声音文件格式：MP3, M4A, AAC, MKA, AMR&lt;br /&gt;\r\n      &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        支持无损格式：ALAC ( Apple Lossless ), FLAC, APE, WAV ( 最高支持 192-KHz/24-bits )&lt;br /&gt;\r\n     &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        支持声音解码格式：AAC/AAC+/eAAC+, MP3, MP3 VBR, NB-AMR, WB-AMR, MKA&lt;br /&gt;\r\n      &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;br /&gt;');/* MySQLReback Separation */
 /* 插入数据 `ri_product_param` */
 INSERT INTO `ri_product_param` VALUES ('70','38','包装内容','&lt;table class=&quot;ke-zeroborder&quot; border=&quot;0&quot; bordercolor=&quot;#000000&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; height=&quot;199&quot; width=&quot;690&quot;&gt;\r\n &lt;tbody&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        USB 线缆及集线器&lt;br /&gt;\r\n      &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        充电器&lt;br /&gt;\r\n     &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        螺丝盒&lt;br /&gt;\r\n     &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        螺丝刀&lt;br /&gt;\r\n     &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        Smartisan T1 产品使用说明书&lt;br /&gt;\r\n      &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        Smartisan T1 移动电话三包凭证&lt;br /&gt;\r\n     &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        电子信息产品有害物质说明&lt;br /&gt;\r\n      &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n   &lt;tr&gt;\r\n      &lt;td&gt;\r\n        支持语言：中文简体、中文繁体（台湾）、英语&lt;br /&gt;\r\n     &lt;/td&gt;\r\n   &lt;/tr&gt;\r\n &lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;br /&gt;');/* MySQLReback Separation */
 /* 创建表结构 `ri_product_properties`  */
 DROP TABLE IF EXISTS `ri_product_properties`;/* MySQLReback Separation */ CREATE TABLE `ri_product_properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性编号',
  `prop_name` varchar(32) NOT NULL DEFAULT '' COMMENT '属性分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_product_properties` */
 INSERT INTO `ri_product_properties` VALUES ('1','颜色'),('2','内存'),('3','赠品');/* MySQLReback Separation */
 /* 创建表结构 `ri_products`  */
 DROP TABLE IF EXISTS `ri_products`;/* MySQLReback Separation */ CREATE TABLE `ri_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别编号',
  `pro_sn` varchar(32) NOT NULL DEFAULT '0' COMMENT '产品序列号',
  `pro_name` varchar(64) NOT NULL DEFAULT '' COMMENT '产品名称',
  `pro_subname` varchar(64) NOT NULL DEFAULT '' COMMENT '产品副标题',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '促销价',
  `click_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `stock_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存数量',
  `list_image` varchar(128) NOT NULL DEFAULT '' COMMENT '列表页图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字（SEO）',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述（SEO）',
  `feacher` text NOT NULL,
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '默认0	是否新品',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '默认0	是否促销',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '默认1	是否下架',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `recycle` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_products` */
 INSERT INTO `ri_products` VALUES ('38','2','20150125001','VIVO X5Max（移动4G版）','X5 Max 突破 只为追求','2998.00','2998.00','37','99','2015-01-25/54c47bcc58e45.jpg','vivo X5Max,vivo,X5Max,vivo官方商城,vivo智能手机官方商城','【新品首发，买即送移动电源+蓝牙耳机】X5Max全新发布，薄至4.75mm，5.5寸1080P屏幕，全新升级Hi-Fi2.0架构；双卡双待，支持128G TF扩展。','<p>\r\n	<img src=\"/ribbon/Public/Product/feacher/image/20150125/20150125063807_48018.jpg\" alt=\"\" /> <img src=\"/ribbon/Public/Product/feacher/image/20150125/20150125063820_45076.jpg\" alt=\"\" /><img src=\"/ribbon/Public/Product/feacher/image/20150125/20150125063841_40668.jpg\" alt=\"\" /><img src=\"/ribbon/Public/Product/feacher/image/20150125/20150125063857_82067.jpg\" alt=\"\" /><img src=\"/ribbon/Public/Product/feacher/image/20150125/20150125063911_26787.jpg\" alt=\"\" /><img src=\"/ribbon/Public/Product/feacher/image/20150125/20150125063924_28701.jpg\" alt=\"\" /><img src=\"/ribbon/Public/Product/feacher/image/20150125/20150125063941_33461.jpg\" alt=\"\" /> \r\n</p>','0','0','1','1422164500','1422164500','0'),('39','2',null,'小米note','双卡双待 HiFi 5.7吋大屏 1300万','2800.00','2300.00','3','123','2015-04-23/55387d6b940d5.jpg','小米note  双卡双待 小米','小米Note首发，发售版本为双网通版，双卡双待 HiFi 5.7吋大屏 1300万像素','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423050503_22859.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423050503_14029.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423050503_28874.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423050503_20088.jpg\" alt=\"\" />','1','1','1','1429765486','1429765582','0'),('40','2',null,'荣耀 6 (H60-L11) ','【套装版】荣耀 6 (H60-L01)移动4G手机','3200.00','2600.00','1','10','2015-04-23/55387e9ac8088.jpg','荣耀 6 移动4G手机 H60-L01','超值热销套装！超47000好评，赞赞赞~~5吋舒适握持手感，华为自有处理器，卓越体验，\r\n\r\n没溜(6)不行~~','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051547_87478.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051547_16388.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051547_84613.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051547_56820.jpg\" alt=\"\" />','1','1','1','1429765794','1429766254','0'),('41','5',null,'小米手环','小米（MI）小米手环 防水智能腕带运动睡眠计步器','150.00','100.00','0','55','2015-04-23/553880ca39137.jpg','小米手环 手环 智能腕带','2015 德国iF设计大奖产品 IP67 防水全天候运动计步，安卓苹果全兼容\r\n','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051922_73234.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051922_25185.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051922_64129.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051922_10258.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051923_54662.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051923_97360.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423051923_61361.jpg\" alt=\"\" />','1','0','1','1429766348','1429766531','0'),('42','2',null,'苹果（Apple）iPhone 6 Plus','苹果（Apple）iPhone 6 Plus 移动联通电信4G手机','7500.00','6000.00','4','122','2015-04-23/553881c2e2925.jpg','苹果 6 6plus (A1524)','岂止于大！白条4月20日-26日，3期/6期/12期全“免息”！关注iPhone6.jd.com\r\n点击“购机送费”购买，低于裸机价抢超值话费礼包！与裸机版本无差别！\r\n','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052333_13468.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052333_15119.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052333_29676.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052333_50696.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052334_79271.jpg\" alt=\"\" />','0','1','1','1429766598','1429766711','0');/* MySQLReback Separation */
 /* 插入数据 `ri_products` */
 INSERT INTO `ri_products` VALUES ('43','1',null,'小米平板','小米（MI）7.9英寸平板 WIFI','2000.00','1600.00','3','16','2015-04-23/553882839675c.jpg','小米 平板 2048*1536视网膜屏','【小米品质】多彩后壳，靓丽黄色，走到哪里都好看！','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052642_12106.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052642_79625.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052642_38685.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052643_42187.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052643_48729.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052643_66217.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423052643_23439.jpg\" alt=\"\" />','0','1','1','1429766789','1429766892','0');/* MySQLReback Separation */
 /* 插入数据 `ri_products` */
 INSERT INTO `ri_products` VALUES ('44','1',null,'华为（HUAWEI）荣耀平板','华为（HUAWEI）荣耀平板 Wifi 8英寸平板电脑','3800.00','2200.00','2','90','2015-04-23/5538831e28086.jpg','华为 荣耀平板 8英寸平板电脑','【荣耀平板优享板来了，更快更大更强】全面升级，更快速度、更大存储、更美摄像，4800mAh超长待机耀世神机降临！荣耀X2，双网通双64位双卡双待旗舰机','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423053153_17146.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423053153_90389.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423053153_58103.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423053153_30640.jpg\" alt=\"\" />','1','0','1','1429767149','1429767203','0'),('45','3',null,'小米耳机','小米（MI） 活塞耳机 原厂正品 新版小米活塞耳机','199.00','99.00','2','123','2015-04-23/5538852b287d4.jpg','小米 活塞耳机','原装正品,手机听歌神器，铝合金音腔！','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423053939_32944.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423053939_66324.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423053939_14020.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423053939_43445.jpg\" alt=\"\" />','0','1','1','1429767469','1429767581','0'),('46','3',null,' 小米平板保护套','奇克摩克 星彩系列 小米平板保护套','1999.00','1699.00','0','432','2015-04-23/553885c5a0096.jpg','平板保护套 皮套 小米平板','不用预约就能购买的小米平板保护套，真机开模，6色可选，完美匹配，呵护您的爱机','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054034_56301.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054035_38723.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054035_36748.jpg\" alt=\"\" />','1','0','1','1429767656','1429767705','0'),('47','4',null,'小米LED随身灯','小米LED随身灯','199.00','119.00','0','231','2015-04-23/5538864a50fe1.jpg','小米（MI）小米LED随身灯','USB接口小巧轻便 柔光灯罩~接上小米移动电源还可以当台灯~','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054250_89593.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054250_31769.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054250_86596.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054250_68334.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054250_45444.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054250_35966.jpg\" alt=\"\" />','1','1','1','1429767757','1429767871','0'),('48','4',null,'小米电源','移动电源10400mAh毫安大容量品牌充电宝','499.00','399.00','0','43','2015-04-23/553886e9f1fe3.jpg','小米电源 移动电源 双USB','双USB输出 高品质电芯 锂离子电池','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054526_87033.png\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054527_93935.png\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054527_83201.png\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423054527_57881.png\" alt=\"\" />','1','1','1','1429767916','1429768042','0'),('49','2',null,'魅族note','【超值套装版】魅蓝note','3000.00','2500.00','1','123','2015-04-23/553897b4ce330.jpg','魅族 魅蓝note 16GB  联通4G手机 双卡双待','仅个别仓极少量货源，抢完即止！魅族旗舰店狂欢party开启！','<img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423065723_36279.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423065723_22384.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423065723_73349.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423065723_14268.jpg\" alt=\"\" /><img src=\"/ribbon/Public/editor/php/../../Product/feacher/image/20150423/20150423065723_40140.jpg\" alt=\"\" />','1','1','1','1429772224','1429772329','0');/* MySQLReback Separation */
 /* 创建表结构 `ri_sale_service`  */
 DROP TABLE IF EXISTS `ri_sale_service`;/* MySQLReback Separation */ CREATE TABLE `ri_sale_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `service_type` int(11) DEFAULT NULL COMMENT '服务类型  2 退货 3 换货 1 维修',
  `applynum` int(11) NOT NULL DEFAULT '0' COMMENT '提交的数量',
  `description` text COMMENT '问题的描述',
  `images` varchar(32) NOT NULL DEFAULT '' COMMENT '图片信息',
  `return_way` int(4) DEFAULT NULL COMMENT '商品的返回方式',
  `province` varchar(32) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(32) NOT NULL DEFAULT '' COMMENT '市',
  `area` varchar(32) NOT NULL DEFAULT '' COMMENT '县',
  `street` varchar(32) NOT NULL DEFAULT '' COMMENT '街道',
  `contact` varchar(32) NOT NULL DEFAULT '' COMMENT '联系人',
  `phone` varchar(32) NOT NULL DEFAULT '0' COMMENT '手机号码',
  `apply_time` int(11) NOT NULL DEFAULT '0' COMMENT '申请时间',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `service_sn` varchar(32) DEFAULT NULL COMMENT '服务编号',
  `service_status` int(4) NOT NULL DEFAULT '0' COMMENT '处理状态 1同意申请  2处理 3已完成 4 已取消',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_seo`  */
 DROP TABLE IF EXISTS `ri_seo`;/* MySQLReback Separation */ CREATE TABLE `ri_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seoname` varchar(100) DEFAULT NULL,
  `ident` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` text,
  `time` int(11) DEFAULT NULL,
  `affiliation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;/* MySQLReback Separation */
 /* 插入数据 `ri_seo` */
 INSERT INTO `ri_seo` VALUES ('1','首页','index','首页','智能手机,拍照手机,努比亚手机,nubia Z7,nubia Z7 Max,nubia Z7 mini,nubia X6','作为全球高端智能手机提供商，努比亚官网为您提供nubia Z7, nubia Z7 Max, nubia Z7 mini, nubia X6等产品介绍及在线购买','1357630306','0,4,13');/* MySQLReback Separation */
 /* 创建表结构 `ri_service_details`  */
 DROP TABLE IF EXISTS `ri_service_details`;/* MySQLReback Separation */ CREATE TABLE `ri_service_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` char(24) DEFAULT NULL COMMENT '服务id',
  `message` text COMMENT '处理信息',
  `time` varchar(32) DEFAULT NULL COMMENT '处理时间',
  `operator` varchar(32) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_shipping_company`  */
 DROP TABLE IF EXISTS `ri_shipping_company`;/* MySQLReback Separation */ CREATE TABLE `ri_shipping_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `com` varchar(32) NOT NULL DEFAULT '',
  `cname` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_shipping_company` */
 INSERT INTO `ri_shipping_company` VALUES ('1','aae','AAE快递'),('2','anjie','安捷快递'),('3','anneng','安能物流'),('4','anxun','安迅物流'),('5','aoshuo','奥硕物流'),('6','aramex','Aramex国际快递'),('7','baiqian','百千诚国际物流'),('8','balunzhi','巴伦支'),('9','baotongda','宝通达'),('10','benteng','成都奔腾国际快递'),('11','changtong','长通物流'),('12','chengguang','程光快递'),('13','chengji','城际快递'),('14','chengshi100','城市100'),('15','chuanxi','传喜快递'),('16','chuanzhi','传志快递'),('17','chukouyi','出口易物流'),('18','citylink','CityLinkExpress'),('19','coe','东方快递'),('20','coscon','中国远洋运输(COSCON)'),('21','cszx','城市之星'),('22','dada','大达物流'),('23','dajin','大金物流'),('24','datian','大田物流'),('25','dayang','大洋物流快递'),('26','debang','德邦物流'),('27','dhl','DHL快递'),('28','diantong','店通快递'),('29','disifang','递四方速递'),('30','dpex','DPEX快递'),('31','dsu','D速快递'),('32','ees','百福东方物流'),('33','ems','EMS快递'),('34','eyoubao','E邮宝'),('35','fanyu','凡宇快递'),('36','fardar','Fardar'),('37','fedex','国际Fedex'),('38','fedexcn','Fedex国内'),('39','feibao','飞豹快递'),('40','feihang','原飞航物流'),('41','feite','飞特物流'),('42','feiyang','飞洋快递'),('43','feiyuan','飞远物流'),('44','fengda','丰达快递'),('45','gangkuai','港快速递'),('46','gaotie','高铁快递'),('47','gdyz','广东邮政物流'),('48','gnxb','邮政小包'),('49','gongsuda','共速达物流|快递'),('50','guanda','冠达快递'),('51','guotong','国通快递'),('52','haihong','山东海红快递'),('53','haolaiyun','好来运快递'),('54','haosheng','昊盛物流'),('55','hebeijianhua','河北建华快递'),('56','henglu','恒路物流'),('57','hkpost','香港邮政'),('58','huacheng','华诚物流'),('59','huahan','华翰物流'),('60','huahang','华航快递'),('61','huangmajia','黄马甲快递'),('62','huaqi','华企快递'),('63','huayu','华宇物流'),('64','huitong','汇通快递'),('65','hutong','户通物流'),('66','hwhq','海外环球快递'),('67','jiaji','佳吉快运'),('68','jiayi','佳怡物流'),('69','jiayu','佳宇物流'),('70','jiayunmei','加运美快递'),('71','jiete','捷特快递'),('72','jinda','金大物流'),('73','jingdong','京东快递'),('74','jingguang','京广快递'),('75','jinyue','晋越快递'),('76','jiuyi','久易快递'),('77','jixianda','急先达物流'),('78','jldt','嘉里大通物流'),('79','jppost','日本邮政'),('80','kangli','康力物流'),('81','kcs','顺鑫(KCS)快递'),('82','kuaijie','快捷快递'),('83','kuaitao','快淘速递'),('84','kuaiyouda','快优达速递'),('85','kuanrong','宽容物流'),('86','kuayue','跨越快递'),('87','lanhu','蓝弧快递'),('88','lejiedi','乐捷递快递'),('89','lianhaotong','联昊通快递'),('90','lijisong','成都立即送快递'),('91','lindao','上海林道货运'),('92','longbang','龙邦快递'),('93','menduimen','门对门快递'),('94','minbang','民邦快递'),('95','mingliang','明亮物流'),('96','minsheng','闽盛快递'),('97','nell','尼尔快递'),('98','nengda','港中能达快递'),('99','nsf','新顺丰（NSF）快递'),('100','ocs','OCS快递'),('101','peixing','陪行物流'),('102','pinganda','平安达'),('103','pingyou','中国邮政'),('104','ppbyb','贝邮宝'),('105','quanchen','全晨快递'),('106','quanfeng','全峰快递'),('107','quanritong','全日通快递'),('108','quanyi','全一快递'),('109','ririshun','日日顺物流'),('110','riyu','日昱物流'),('111','rpx','RPX保时达'),('112','rufeng','如风达快递'),('113','ruifeng','瑞丰速递'),('114','saiaodi','赛澳递'),('115','santai','三态速递'),('116','scs','伟邦(SCS)快递'),('117','shengan','圣安物流'),('118','shengbang','晟邦物流'),('119','shengfeng','盛丰物流'),('120','shenghui','盛辉物流'),('121','shentong','申通快递（可能存在延迟）'),('122','shiyun','世运快递'),('123','shunfeng','顺丰快递'),('124','singpost','新加坡邮政'),('125','suchengzhaipei','速呈宅配'),('126','suijia','穗佳物流'),('127','sure','速尔快递'),('128','sutong','速通物流'),('129','tiantian','天天快递'),('130','tnt','TNT快递'),('131','tongzhishu','高考录取通知书'),('132','ucs','合众速递'),('133','ups','UPS快递'),('134','usps','USPS快递'),('135','wanbo','万博快递'),('136','weitepai','微特派'),('137','xianglong','祥龙运通快递'),('138','xinbang','新邦物流'),('139','xinfeng','信丰快递'),('140','xingchengzhaipei','星程宅配快递'),('141','xiyoute','希优特快递'),('142','yad','源安达快递'),('143','yafeng','亚风快递'),('144','yanwen','燕文物流'),('145','yibang','一邦快递'),('146','yinjie','银捷快递'),('147','yishunhang','亿顺航快递'),('148','yousu','优速快递'),('149','ytfh','北京一统飞鸿快递'),('150','yuancheng','远成物流'),('151','yuantong','圆通快递'),('152','yuefeng','越丰快递'),('153','yuhong','宇宏物流'),('154','yumeijie','誉美捷快递'),('155','yunda','韵达快递'),('156','yuntong','运通中港快递'),('157','zengyi','增益快递'),('158','zhaijisong','宅急送快递');/* MySQLReback Separation */
 /* 插入数据 `ri_shipping_company` */
 INSERT INTO `ri_shipping_company` VALUES ('159','zhengzhoujianhua','郑州建华快递');/* MySQLReback Separation */
 /* 插入数据 `ri_shipping_company` */
 INSERT INTO `ri_shipping_company` VALUES ('160','zhima','芝麻开门快递'),('161','zhongtian','济南中天万运'),('162','zhongtie','中铁快运'),('163','zhongtong','中通快递'),('164','zhongxinda','忠信达快递'),('165','zhongyou','中邮物流'),('166','ztwl','中铁物流');/* MySQLReback Separation */
 /* 创建表结构 `ri_shippings`  */
 DROP TABLE IF EXISTS `ri_shippings`;/* MySQLReback Separation */ CREATE TABLE `ri_shippings` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '物流方式编号',
  `sid` int(10) NOT NULL DEFAULT '0',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_shippings` */
 INSERT INTO `ri_shippings` VALUES ('3','166','快速，高效，合作企业，大型包装首选.','0');/* MySQLReback Separation */
 /* 创建表结构 `ri_sms_templates`  */
 DROP TABLE IF EXISTS `ri_sms_templates`;/* MySQLReback Separation */ CREATE TABLE `ri_sms_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmp_no` char(10) NOT NULL DEFAULT '',
  `tmp_title` varchar(64) NOT NULL DEFAULT '',
  `tmp_content` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_sms_templates` */
 INSERT INTO `ri_sms_templates` VALUES ('1','2581','新用户注册','【Ribbon商城】欢迎注册，验证码为：{1}，此验证码有效时间为{2}分钟','0');/* MySQLReback Separation */
 /* 创建表结构 `ri_support_article_cat`  */
 DROP TABLE IF EXISTS `ri_support_article_cat`;/* MySQLReback Separation */ CREATE TABLE `ri_support_article_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `cat_name` varchar(64) NOT NULL DEFAULT '' COMMENT '分类名称',
  `sort` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `cat_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '默认显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_support_article_detail`  */
 DROP TABLE IF EXISTS `ri_support_article_detail`;/* MySQLReback Separation */ CREATE TABLE `ri_support_article_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '新闻标题',
  `keywords` varchar(128) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建日期',
  `content` text NOT NULL COMMENT '内容',
  `clicktimes` int(10) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '默认显示',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_support_download_cat`  */
 DROP TABLE IF EXISTS `ri_support_download_cat`;/* MySQLReback Separation */ CREATE TABLE `ri_support_download_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `cat_name` varchar(64) NOT NULL DEFAULT '' COMMENT '分类名称',
  `sort` tinyint(30) NOT NULL COMMENT '排序',
  `cat_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '默认显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_support_downloads`  */
 DROP TABLE IF EXISTS `ri_support_downloads`;/* MySQLReback Separation */ CREATE TABLE `ri_support_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '下载编号',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类别ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '外链地址',
  `keywords` varchar(128) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` text COMMENT '描述',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `savepath` varchar(255) NOT NULL DEFAULT '' COMMENT '保存本地地址',
  `clicktimes` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '默认显示',
  `thumbnail` varchar(128) NOT NULL DEFAULT '' COMMENT '缩略图',
  `filesize` varchar(32) NOT NULL DEFAULT '' COMMENT '文件大小',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_support_faq_cate`  */
 DROP TABLE IF EXISTS `ri_support_faq_cate`;/* MySQLReback Separation */ CREATE TABLE `ri_support_faq_cate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cate_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL DEFAULT '' COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_support_map`  */
 DROP TABLE IF EXISTS `ri_support_map`;/* MySQLReback Separation */ CREATE TABLE `ri_support_map` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '省id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '省市名',
  `pid` int(5) NOT NULL COMMENT ' 市',
  `path` char(10) NOT NULL DEFAULT '' COMMENT 'id 和 pid 关系',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `cname` varchar(255) NOT NULL DEFAULT '' COMMENT '公司名',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `wtime` varchar(255) NOT NULL DEFAULT '' COMMENT '工作时间',
  `map_x` double(12,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '地图坐标x',
  `map_y` double(12,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '地图坐标y',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_support_map` */
 INSERT INTO `ri_support_map` VALUES ('1','aaa','0','0',null,null,null,null,'0.000000','0.000000','1');/* MySQLReback Separation */
 /* 创建表结构 `ri_support_map_province`  */
 DROP TABLE IF EXISTS `ri_support_map_province`;/* MySQLReback Separation */ CREATE TABLE `ri_support_map_province` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_support_map_province` */
 INSERT INTO `ri_support_map_province` VALUES ('1','北京');/* MySQLReback Separation */
 /* 创建表结构 `ri_support_video`  */
 DROP TABLE IF EXISTS `ri_support_video`;/* MySQLReback Separation */ CREATE TABLE `ri_support_video` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '板块或标题',
  `pid` char(5) NOT NULL COMMENT '所属哪个板块下',
  `path` char(5) NOT NULL COMMENT 'id和type关系',
  `simg` varchar(255) NOT NULL DEFAULT '' COMMENT '小图',
  `weburl` varchar(255) NOT NULL DEFAULT '' COMMENT '网络视频',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `ri_sys_config`  */
 DROP TABLE IF EXISTS `ri_sys_config`;/* MySQLReback Separation */ CREATE TABLE `ri_sys_config` (
  `cname` varchar(32) NOT NULL DEFAULT '' COMMENT '配置名称',
  `cvalue` text COMMENT '配置值',
  UNIQUE KEY `name` (`cname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_sys_config` */
 INSERT INTO `ri_sys_config` VALUES ('sy_webname','Ribbon'),('sy_web_online','0'),('sy_seo_rewrite','1'),('sy_webemail','admin@ribbon.com'),('sy_webrecor','苏123456'),('sy_webtel','18601799341'),('sy_freewebtel','18601799341'),('sy_qq','18601799341'),('sy_webadd','江苏理工学院'),('sy_webclose','系统例行维护'),('sy_webkeyword','手机商城,智能手机'),('sy_webmeta','ribbon手机,手机中的战斗机'),('sy_webcopyright','Copyright (C) 2009-2014 All Rights Reserved 版权所有'),('sy_safekey','152463'),('sy_fkeyword','台湾,台独'),('sy_fkeyword_all','***'),('sy_bannedip','0.0.0.0'),('sy_bannedip_alert','您的当前IP，该站已经禁止访问，请联系管理员处理。'),('sy_regname','admin,zhongguo,root'),('code_web','7'),('code_type','1'),('code_filetype','1'),('code_width','100'),('code_height','35'),('code_strlength','4'),('logo','/Public/Admin/img/Logo/'),('map_tocity','1'),('map_key','1346'),('map_x','130.355'),('map_y','69.358'),('memcacheon','1'),('memcachehost','127.0.0.1'),('memcacheport','3926'),('memcachetime','36'),('webcache','1'),('webcachetime','3600'),('email_serv_addr','smtp.163.com'),('email_serv_port','25'),('email_serv_uname','hyinshaoye@163.com'),('email_serv_pwd','icjulove'),('email_type','HTML'),('email_sender_count','hyinshaoye@163.com'),('email_send_reg','0'),('email_send_verify','1'),('email_get_pwd','1'),('email_delivery_remind','1'),('email_payment_remind','0'),('email_interview','0'),('sms_accountsid','e2ebaebf73107a65e0d0404339d89830'),('sms_token','a148139e676a9bad1eaa4c4a42e6a38f'),('sms_appid','c1dccd7f5e474251a36995a570f9ed63'),('logo2','12'),('logo3',null),('paypal_cancel_pay','http://182.92.96.234/index.php/Buy/cancel'),('paypal_api_receive','http://182.92.96.234/index.php/Buy/doPaypal'),('paypal_email','1337831795@qq.com'),('paypal_env','sandbox'),('paypal_api_uname','1337831795_api1.qq.com'),('paypal_api_pwd','4MH9KW9BAZP49J5Q'),('paypal_api_signature','A7AaGnmuMSnVuHtt5jiUzXmgex7MAsH'),('paypal_currency','USD'),('paypal_pay_complete','http://182.92.96.234/index.php/Buy/complete'),('shipping_id','108124'),('shipping_secret','36e82eb79043f8d450d75f6ff45ed11a'),('shipping_type','json'),('shipping_ord','asc'),('shipping_encode','utf8'),('shipping_ver','2');/* MySQLReback Separation */
 /* 创建表结构 `ri_user_address`  */
 DROP TABLE IF EXISTS `ri_user_address`;/* MySQLReback Separation */ CREATE TABLE `ri_user_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '地址编号',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '关联用户编号',
  `reciver_user` varchar(32) NOT NULL DEFAULT '' COMMENT '收件人',
  `reciver_phone` char(15) NOT NULL DEFAULT '' COMMENT '联系方式',
  `province` varchar(100) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '市',
  `area` varchar(100) NOT NULL DEFAULT '' COMMENT '县',
  `street` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `zipcode` char(8) NOT NULL DEFAULT '' COMMENT '邮编',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为默认',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_user_address` */
 INSERT INTO `ri_user_address` VALUES ('1','2','黄磊','18601799341','江苏省','常州市','钟楼区','中吴大道1801号',null,'1'),('2','5','黄磊','18601799341','江苏省','常州市','钟楼区','中吴大道1801',null,'1');/* MySQLReback Separation */
 /* 创建表结构 `ri_user_info`  */
 DROP TABLE IF EXISTS `ri_user_info`;/* MySQLReback Separation */ CREATE TABLE `ri_user_info` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '关联用户编号',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别',
  `true_name` varchar(32) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `birthday` char(10) NOT NULL DEFAULT '0000-00-00' COMMENT '生日 ',
  `marry` tinyint(1) NOT NULL DEFAULT '0' COMMENT '婚姻状况',
  `education` tinyint(1) NOT NULL DEFAULT '4' COMMENT '1 博士后 2博士 3硕士 4本科 5大专 6中专 7高中 8初中几以下',
  `province` varchar(64) NOT NULL DEFAULT '' COMMENT '省（非收货）',
  `city` varchar(64) NOT NULL DEFAULT '' COMMENT '市（非收货）',
  `area` varchar(64) NOT NULL DEFAULT '' COMMENT '县（非收货）',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `job` varchar(255) NOT NULL DEFAULT '0' COMMENT '行业',
  `thumb` varchar(128) NOT NULL DEFAULT '' COMMENT '头像',
  `identity` varchar(18) NOT NULL DEFAULT '',
  `wage` tinyint(1) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_user_info` */
 INSERT INTO `ri_user_info` VALUES ('1','1','易德','1989-5-11','2','2','北京市','北京市','昌平区','回龙观荣华西路育荣教育园','1','/Public/User/php_avatar1_20150121110144_100_EGT2NIL6.jpg',null,'0'),('2','1',null,'0000-00-00','0','4',null,null,null,null,'0',null,null,'0'),('3','1',null,'0000-00-00','0','4',null,null,null,null,'0',null,null,'0'),('4','1',null,'0000-00-00','0','4',null,null,null,null,'0',null,null,'0'),('5','1',null,'0000-00-00','0','4',null,null,null,null,'0',null,null,'0'),('6','1',null,'0000-00-00','0','4',null,null,null,null,'0',null,null,'0');/* MySQLReback Separation */
 /* 创建表结构 `ri_users`  */
 DROP TABLE IF EXISTS `ri_users`;/* MySQLReback Separation */ CREATE TABLE `ri_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `uname` char(10) NOT NULL DEFAULT '' COMMENT '用户注册随机生成的用户名',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '用户注册邮箱',
  `mobile` char(15) NOT NULL DEFAULT '' COMMENT '用户注册手机',
  `password` char(40) NOT NULL DEFAULT '' COMMENT '用户密码',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` char(15) NOT NULL DEFAULT '0' COMMENT '上次IP',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile_state` tinyint(1) NOT NULL DEFAULT '0',
  `email_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '设置是否已经验证',
  `email_time` int(11) NOT NULL DEFAULT '0' COMMENT 'email发送时间',
  `active_code` char(32) NOT NULL DEFAULT '' COMMENT '激活码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态',
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_users` */
 INSERT INTO `ri_users` VALUES ('6','RN75546','hyinshaoye@163.com',null,'db25f2fc14cd2d2b1e7af307241f548fb03c312a','1431588570','1431588570','2130706433','0','0','1','0','e7b697434ae690ea33aaaa39a06eba6a','1');/* MySQLReback Separation */
 /* 创建表结构 `ri_visit`  */
 DROP TABLE IF EXISTS `ri_visit`;/* MySQLReback Separation */ CREATE TABLE `ri_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vtime` varchar(32) NOT NULL DEFAULT '' COMMENT '日期  格式 Y-m-d',
  `visit_count` int(11) DEFAULT NULL COMMENT '访问量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `ri_visit` */
 INSERT INTO `ri_visit` VALUES ('1','2015-01-18','1'),('10','2015-01-26','2'),('11','2015-04-21','2'),('12','2015-04-22','2'),('13','2015-04-23','9'),('14','2015-05-08','2'),('15','2015-05-14','2'),('16','2015-05-18','1');/* MySQLReback Separation */