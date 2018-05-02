/* This file is created by MySQLReback 2015-05-18 12:26:31 */
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