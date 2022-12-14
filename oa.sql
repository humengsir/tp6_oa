create database oa charset utf8mb4;

use oa;

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户组名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='用户组表';
INSERT INTO `group` (id, name) VALUES(1, '管理员');
INSERT INTO `group` (id, name) VALUES(2, '客服');
INSERT INTO `group` (id, name) VALUES(3, '运营');
INSERT INTO `group` (id, name) VALUES(4, '市场');
INSERT INTO `group` (id, name) VALUES(5, '技术');


CREATE TABLE `group_node` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `node_id` int unsigned NOT NULL DEFAULT '0' COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='用户组权限分配明细表';
INSERT INTO group_node (id, group_id, node_id) VALUES(1, 1, 1);
INSERT INTO group_node (id, group_id, node_id) VALUES(2, 1, 2);
INSERT INTO group_node (id, group_id, node_id) VALUES(3, 1, 3);
INSERT INTO group_node (id, group_id, node_id) VALUES(4, 1, 4);
INSERT INTO group_node (id, group_id, node_id) VALUES(5, 1, 5);
INSERT INTO group_node (id, group_id, node_id) VALUES(6, 1, 6);
INSERT INTO group_node (id, group_id, node_id) VALUES(7, 1, 7);
INSERT INTO group_node (id, group_id, node_id) VALUES(8, 1, 8);
INSERT INTO group_node (id, group_id, node_id) VALUES(9, 1, 9);
INSERT INTO group_node (id, group_id, node_id) VALUES(10, 1, 10);
INSERT INTO group_node (id, group_id, node_id) VALUES(11, 1, 11);
INSERT INTO group_node (id, group_id, node_id) VALUES(12, 1, 12);
INSERT INTO group_node (id, group_id, node_id) VALUES(13, 1, 13);
INSERT INTO group_node (id, group_id, node_id) VALUES(14, 1, 14);
INSERT INTO group_node (id, group_id, node_id) VALUES(15, 1, 15);
INSERT INTO group_node (id, group_id, node_id) VALUES(16, 1, 16);
INSERT INTO group_node (id, group_id, node_id) VALUES(17, 1, 17);
INSERT INTO group_node (id, group_id, node_id) VALUES(18, 1, 18);
INSERT INTO group_node (id, group_id, node_id) VALUES(19, 1, 19);
INSERT INTO group_node (id, group_id, node_id) VALUES(20, 1, 20);
INSERT INTO group_node (id, group_id, node_id) VALUES(21, 1, 21);
INSERT INTO group_node (id, group_id, node_id) VALUES(22, 5, 5);
INSERT INTO group_node (id, group_id, node_id) VALUES(23, 5, 6);
INSERT INTO group_node (id, group_id, node_id) VALUES(24, 5, 7);
INSERT INTO group_node (id, group_id, node_id) VALUES(25, 5, 8);
INSERT INTO group_node (id, group_id, node_id) VALUES(26, 5, 9);
INSERT INTO group_node (id, group_id, node_id) VALUES(27, 5, 10);
INSERT INTO group_node (id, group_id, node_id) VALUES(28, 5, 11);
INSERT INTO group_node (id, group_id, node_id) VALUES(29, 5, 12);
INSERT INTO group_node (id, group_id, node_id) VALUES(30, 5, 13);
INSERT INTO group_node (id, group_id, node_id) VALUES(31, 5, 18);
INSERT INTO group_node (id, group_id, node_id) VALUES(32, 5, 19);
INSERT INTO group_node (id, group_id, node_id) VALUES(33, 5, 20);
INSERT INTO group_node (id, group_id, node_id) VALUES(34, 5, 21);
INSERT INTO group_node (id, group_id, node_id) VALUES(35, 2, 18);
INSERT INTO group_node (id, group_id, node_id) VALUES(36, 2, 19);
INSERT INTO group_node (id, group_id, node_id) VALUES(37, 2, 20);
INSERT INTO group_node (id, group_id, node_id) VALUES(38, 2, 21);
INSERT INTO group_node (id, group_id, node_id) VALUES(39, 3, 18);
INSERT INTO group_node (id, group_id, node_id) VALUES(40, 3, 19);
INSERT INTO group_node (id, group_id, node_id) VALUES(41, 3, 20);
INSERT INTO group_node (id, group_id, node_id) VALUES(42, 3, 21);
INSERT INTO group_node (id, group_id, node_id) VALUES(43, 4, 18);
INSERT INTO group_node (id, group_id, node_id) VALUES(44, 4, 19);
INSERT INTO group_node (id, group_id, node_id) VALUES(45, 4, 20);
INSERT INTO group_node (id, group_id, node_id) VALUES(46, 4, 21);

CREATE TABLE `menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `menu_name` varchar(30) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `node_id` int unsigned NOT NULL DEFAULT '0' COMMENT '权限id',
  `is_nav` int unsigned NOT NULL DEFAULT '0' COMMENT '是否是导航菜单',
  `menu_sort` int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT '父级菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='菜单表';
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(1, '用户管理', 0, 1, 1000, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(2, '用户列表', 1, 1, 999, 1);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(3, '添加用户', 2, 1, 998, 1);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(4, '编辑用户', 3, 0, 997, 1);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(5, '删除用户', 4, 0, 996, 1);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(6, '用户组管理', 0, 1, 900, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(7, '用户组列表', 5, 1, 899, 6);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(8, '添加用户组', 6, 1, 898, 6);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(9, '编辑用户组', 7, 0, 897, 6);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(10, '删除用户组', 8, 0, 896, 6);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(11, '权限管理', 0, 1, 800, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(12, '权限列表', 9, 1, 799, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(13, '添加权限', 10, 1, 798, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(14, '编辑权限', 11, 0, 797, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(15, '删除权限', 12, 0, 796, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(16, '分配权限', 13, 0, 795, 11);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(17, '菜单管理', 0, 1, 700, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(18, '菜单列表', 14, 1, 699, 17);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(19, '添加菜单', 15, 1, 698, 17);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(20, '编辑菜单', 16, 0, 697, 17);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(21, '删除菜单', 17, 0, 696, 17);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(22, '工单管理', 0, 1, 600, 0);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(23, '工单列表', 18, 1, 599, 22);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(24, '添加工单', 19, 1, 598, 22);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(25, '审核工单', 20, 0, 597, 22);
INSERT INTO menu (id, menu_name, node_id, is_nav, menu_sort, pid) VALUES(26, '取消工单', 21, 0, 596, 22);


CREATE TABLE `node` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `node_name` varchar(30) NOT NULL DEFAULT '' COMMENT '权限节点名称',
  `node_url` varchar(30) NOT NULL DEFAULT '' COMMENT '访问路径',
  `node_sort` int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `node_type` int unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时候还在使用中 1在使用中 0不再使用了',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='权限节点表';
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(1, '用户列表', '/user/index', 1000, 1, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(2, '用户添加', '/user/add', 999, 1, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(3, '用户编辑', '/user/edit', 998, 1, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(4, '用户禁用', '/user/del', 997, 1, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(5, '用户组列表', '/group/index', 900, 2, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(6, '用户组添加', '/group/add', 899, 2, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(7, '用户组编辑', '/group/edit', 898, 2, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(8, '用户组删除', '/group/del', 897, 2, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(9, '权限列表', '/node/index', 800, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(10, '权限添加', '/node/add', 799, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(11, '权限编辑', '/node/edit', 798, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(12, '权限禁用', '/node/del', 797, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(13, '权限分配', '/permission/assign', 796, 3, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(14, '菜单列表', '/menu/index', 700, 4, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(15, '菜单添加', '/menu/add', 699, 4, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(16, '菜单编辑', '/menu/edit', 698, 4, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(17, '菜单删除', '/menu/del', 697, 4, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(18, '工单列表', '/ticket/index', 600, 5, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(19, '工单添加', '/ticket/add', 599, 5, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(20, '工单审核', '/ticket/judge', 598, 5, 1);
INSERT INTO node (id, node_name, node_url, node_sort, node_type, status) VALUES(21, '工单取消', '/ticket/cancel', 597, 5, 1);

CREATE TABLE `ticket` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `content` varchar(3000) NOT NULL DEFAULT '' COMMENT '访问路径',
  `ticket_type` int unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `point_uid` int unsigned NOT NULL DEFAULT '0' COMMENT '待审核用户id',
  `leader_uid` varchar(500) NOT NULL DEFAULT '' COMMENT '审批用户id列表',
  `approve_uid` varchar(500) NOT NULL DEFAULT '' COMMENT '已通过审批用户id列表',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:初始化 2:处理中 3:已完结 -1:已取消',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='工单记录表';
INSERT INTO ticket (id, uid, title, content, ticket_type, point_uid, leader_uid, approve_uid, status, add_time) VALUES(1, 1, '页面有一些间距问题', '希望技术能看看', 2, 8, '8,1,11,1', '', 2, 1662365263);


CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `username` varchar(15) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(60) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '用户状态 1是启用 0是禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='用户表';
INSERT INTO `user` (id, username, password, email, status) VALUES(1, 'admin', 'f3970736977b4794bc75f1ef8291b376', 'admin@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(2, '任晨骆', '59bb8c33a1f5627f6dcf8d582619dcdf', 'renchenluo@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(3, '窦恒翰', '59bb8c33a1f5627f6dcf8d582619dcdf', 'douhenhan@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(4, '尚管思', '59bb8c33a1f5627f6dcf8d582619dcdf', 'shangguansi@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(5, '姬翰育', '59bb8c33a1f5627f6dcf8d582619dcdf', 'jihanyu@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(6, '彭姣顺', '59bb8c33a1f5627f6dcf8d582619dcdf', 'pengjiaoshun@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(7, '潘心颖', '59bb8c33a1f5627f6dcf8d582619dcdf', 'panxinying@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(8, '储庄言', '59bb8c33a1f5627f6dcf8d582619dcdf', 'chuzhuangyan@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(9, '姚雨芳', '59bb8c33a1f5627f6dcf8d582619dcdf', 'yaoyufang@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(10, '冉泰浩', '59bb8c33a1f5627f6dcf8d582619dcdf', 'rantaihao@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(11, '袁维梅', '59bb8c33a1f5627f6dcf8d582619dcdf', 'yuanweimei@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(12, '林索', '59bb8c33a1f5627f6dcf8d582619dcdf', 'linsuo@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(13, '林方豪', '59bb8c33a1f5627f6dcf8d582619dcdf', 'linwenhao@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(14, '江心冉', '59bb8c33a1f5627f6dcf8d582619dcdf', 'jiangxinran@oa.com', 1);
INSERT INTO `user` (id, username, password, email, status) VALUES(15, '廖文芳', '59bb8c33a1f5627f6dcf8d582619dcdf', 'liaowenfang@oa.com', 1);

CREATE TABLE `user_group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT='用户和用户组的关系对照表';
INSERT INTO user_group (id, user_id, group_id) VALUES(1, 1, 1);
INSERT INTO user_group (id, user_id, group_id) VALUES(2, 2, 2);
INSERT INTO user_group (id, user_id, group_id) VALUES(3, 3, 4);
INSERT INTO user_group (id, user_id, group_id) VALUES(4, 4, 1);
INSERT INTO user_group (id, user_id, group_id) VALUES(5, 5, 5);
INSERT INTO user_group (id, user_id, group_id) VALUES(6, 6, 4);
INSERT INTO user_group (id, user_id, group_id) VALUES(7, 7, 1);
INSERT INTO user_group (id, user_id, group_id) VALUES(8, 8, 5);
INSERT INTO user_group (id, user_id, group_id) VALUES(9, 9, 3);
INSERT INTO user_group (id, user_id, group_id) VALUES(10, 10, 2);
INSERT INTO user_group (id, user_id, group_id) VALUES(11, 11, 4);
INSERT INTO user_group (id, user_id, group_id) VALUES(12, 12, 5);
INSERT INTO user_group (id, user_id, group_id) VALUES(13, 13, 3);
INSERT INTO user_group (id, user_id, group_id) VALUES(14, 14, 4);
INSERT INTO user_group (id, user_id, group_id) VALUES(15, 15, 4);

