/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.220
Source Server Version : 50560
Source Host           : 192.168.1.220:3306
Source Database       : test_laravel_adm

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2020-05-02 20:30:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '后台管理', 'fa-tasks', null, null, null, '2020-03-31 13:50:51');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '管理员管理', 'fa-users', 'auth/users', null, null, '2020-03-31 14:12:19');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, null, '2020-03-31 14:13:34');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限管理', 'fa-ban', 'auth/permissions', null, null, '2020-03-31 14:13:48');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null, '2020-03-31 14:14:06');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, null, '2020-03-31 14:14:20');
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '文件管理', 'fa-file', 'media', null, '2020-03-30 08:28:21', '2020-03-31 14:14:39');
INSERT INTO `admin_menu` VALUES ('19', '0', '0', '教练管理', 'fa-bars', 'teachers', '*', '2020-04-27 17:47:11', '2020-04-27 18:47:18');
INSERT INTO `admin_menu` VALUES ('20', '0', '0', '套餐管理', 'fa-book', '/courses', '*', '2020-04-28 09:01:05', '2020-04-28 09:01:05');
INSERT INTO `admin_menu` VALUES ('21', '0', '0', '会员管理', 'fa-user', '/members', '*', '2020-04-28 09:32:55', '2020-04-28 09:32:55');
INSERT INTO `admin_menu` VALUES ('22', '0', '0', '预约记录', 'fa-calendar', '/bookings', null, '2020-04-28 10:42:02', '2020-04-28 10:46:11');
INSERT INTO `admin_menu` VALUES ('23', '0', '0', '教练排班', 'fa-calendar-check-o', '/set-classes', null, '2020-04-28 10:44:41', '2020-04-28 10:44:41');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_operation_log_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1546 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '192.168.1.141', '[]', '2020-03-30 06:50:39', '2020-03-30 06:50:39');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '192.168.1.141', '[]', '2020-03-30 08:52:38', '2020-03-30 08:52:38');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/dashboard', 'GET', '192.168.1.141', '[]', '2020-03-30 08:52:40', '2020-03-30 08:52:40');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/roles', 'GET', '192.168.1.141', '[]', '2020-03-30 08:52:45', '2020-03-30 08:52:45');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin', 'GET', '192.168.1.141', '[]', '2020-03-30 08:53:03', '2020-03-30 08:53:03');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin', 'GET', '192.168.1.141', '[]', '2020-03-30 09:42:13', '2020-03-30 09:42:13');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/config', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:55:22', '2020-03-30 09:55:22');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/config', 'GET', '192.168.1.141', '[]', '2020-03-30 09:59:48', '2020-03-30 09:59:48');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/redis', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:59:52', '2020-03-30 09:59:52');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/redis', 'GET', '192.168.1.141', '[]', '2020-03-30 09:59:53', '2020-03-30 09:59:53');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/config', 'GET', '192.168.1.141', '[]', '2020-03-30 10:00:11', '2020-03-30 10:00:11');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/config', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:00:16', '2020-03-30 10:00:16');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/id-validator', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:00:20', '2020-03-30 10:00:20');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/id-validator', 'GET', '192.168.1.141', '{\"id\":\"130626199801080839\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:00:33', '2020-03-30 10:00:33');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/id-validator', 'GET', '192.168.1.141', '{\"id\":\"130626199801080836\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:00:41', '2020-03-30 10:00:41');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin', 'GET', '192.168.1.141', '[]', '2020-03-31 03:12:13', '2020-03-31 03:12:13');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 03:12:17', '2020-03-31 03:12:17');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/users', 'GET', '192.168.1.141', '[]', '2020-03-31 11:13:24', '2020-03-31 11:13:24');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/users', 'GET', '192.168.1.141', '[]', '2020-03-31 11:40:53', '2020-03-31 11:40:53');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/users', 'GET', '192.168.1.141', '[]', '2020-03-31 13:47:17', '2020-03-31 13:47:17');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 13:50:31', '2020-03-31 13:50:31');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 13:50:39', '2020-03-31 13:50:39');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 13:50:40', '2020-03-31 13:50:40');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu/2', 'PUT', '192.168.1.141', '{\"parent_id\":\"0\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\"}', '2020-03-31 13:50:51', '2020-03-31 13:50:51');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 13:50:52', '2020-03-31 13:50:52');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 13:51:41', '2020-03-31 13:51:41');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 13:51:48', '2020-03-31 13:51:48');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.141', '[]', '2020-03-31 13:51:50', '2020-03-31 13:51:50');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu/3', 'PUT', '192.168.1.141', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:12:19', '2020-03-31 14:12:19');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:12:20', '2020-03-31 14:12:20');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu/3', 'GET', '192.168.1.141', '[]', '2020-03-31 14:12:22', '2020-03-31 14:12:22');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.141', '[]', '2020-03-31 14:12:24', '2020-03-31 14:12:24');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:12:33', '2020-03-31 14:12:33');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:12:34', '2020-03-31 14:12:34');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/roles', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:12:52', '2020-03-31 14:12:52');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/roles', 'GET', '192.168.1.141', '[]', '2020-03-31 14:12:54', '2020-03-31 14:12:54');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:13:03', '2020-03-31 14:13:03');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:13:05', '2020-03-31 14:13:05');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/4/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:13:19', '2020-03-31 14:13:19');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu/4', 'PUT', '192.168.1.141', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:13:33', '2020-03-31 14:13:33');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:13:35', '2020-03-31 14:13:35');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu/5/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:13:40', '2020-03-31 14:13:40');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu/5', 'PUT', '192.168.1.141', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:13:48', '2020-03-31 14:13:48');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:13:49', '2020-03-31 14:13:49');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:13:54', '2020-03-31 14:13:54');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu/6', 'PUT', '192.168.1.141', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:14:05', '2020-03-31 14:14:05');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:14:07', '2020-03-31 14:14:07');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:14:12', '2020-03-31 14:14:12');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu/7', 'PUT', '192.168.1.141', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:14:19', '2020-03-31 14:14:19');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:14:21', '2020-03-31 14:14:21');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:14:32', '2020-03-31 14:14:32');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/menu/8', 'PUT', '192.168.1.141', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa-file\",\"uri\":\"media\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:14:39', '2020-03-31 14:14:39');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:14:40', '2020-03-31 14:14:40');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:14:48', '2020-03-31 14:14:48');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu/9', 'PUT', '192.168.1.141', '{\"parent_id\":\"0\",\"title\":\"\\u5e2e\\u52a9\\u5de5\\u5177\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:15:01', '2020-03-31 14:15:01');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:15:03', '2020-03-31 14:15:03');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu/10/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:15:09', '2020-03-31 14:15:09');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:15:15', '2020-03-31 14:15:15');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu/14/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:15:21', '2020-03-31 14:15:21');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu/14', 'PUT', '192.168.1.141', '{\"parent_id\":\"0\",\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"icon\":\"fa-database\",\"uri\":\"logs\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:15:34', '2020-03-31 14:15:34');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:15:35', '2020-03-31 14:15:35');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu/15/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:15:41', '2020-03-31 14:15:41');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu/15', 'PUT', '192.168.1.141', '{\"parent_id\":\"0\",\"title\":\"\\u914d\\u7f6e\\u4fe1\\u606f\",\"icon\":\"fa-toggle-on\",\"uri\":\"config\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:15:50', '2020-03-31 14:15:50');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:15:51', '2020-03-31 14:15:51');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu/17/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:16:00', '2020-03-31 14:16:00');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu/17', 'PUT', '192.168.1.141', '{\"parent_id\":\"0\",\"title\":\"Redis \\u7ba1\\u7406\",\"icon\":\"fa-database\",\"uri\":\"redis\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:16:13', '2020-03-31 14:16:13');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:16:15', '2020-03-31 14:16:15');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/menu/18/edit', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:16:21', '2020-03-31 14:16:21');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu/18', 'PUT', '192.168.1.141', '{\"parent_id\":\"0\",\"title\":\"\\u8ba1\\u5212\\u4efb\\u52a1\",\"icon\":\"fa-clock-o\",\"uri\":\"scheduling\",\"roles\":[null],\"permission\":null,\"_token\":\"SmjKJiDvayKpV5GzhqaLVPA4s1at9CtghZbsErGZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.laravel-admin\\/admin\\/auth\\/menu\"}', '2020-03-31 14:16:29', '2020-03-31 14:16:29');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:16:30', '2020-03-31 14:16:30');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu', 'GET', '192.168.1.141', '[]', '2020-03-31 14:16:34', '2020-03-31 14:16:34');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/media', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:16:47', '2020-03-31 14:16:47');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/users', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:18:06', '2020-03-31 14:18:06');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/roles', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:18:12', '2020-03-31 14:18:12');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/roles', 'GET', '192.168.1.141', '[]', '2020-03-31 14:18:20', '2020-03-31 14:18:20');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/permissions', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:18:28', '2020-03-31 14:18:28');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/scheduling', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:18:31', '2020-03-31 14:18:31');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/media', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:18:38', '2020-03-31 14:18:38');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/media', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:22:56', '2020-03-31 14:22:56');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/users', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-03-31 14:25:03', '2020-03-31 14:25:03');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/users', 'GET', '192.168.1.141', '[]', '2020-03-31 14:25:14', '2020-03-31 14:25:14');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/users', 'GET', '192.168.1.141', '[]', '2020-03-31 14:27:00', '2020-03-31 14:27:00');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin', 'GET', '192.168.1.141', '[]', '2020-04-01 10:03:40', '2020-04-01 10:03:40');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/roles', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-04-01 10:03:45', '2020-04-01 10:03:45');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/media', 'GET', '192.168.1.141', '{\"_pjax\":\"#pjax-container\"}', '2020-04-01 10:03:55', '2020-04-01 10:03:55');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/media', 'GET', '192.168.1.141', '{\"path\":\"\\/aetherupload\",\"_pjax\":\"#pjax-container\"}', '2020-04-01 10:03:59', '2020-04-01 10:03:59');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/media', 'GET', '192.168.1.141', '{\"path\":\"\\/aetherupload\\/file\",\"_pjax\":\"#pjax-container\"}', '2020-04-01 10:04:02', '2020-04-01 10:04:02');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/media', 'GET', '192.168.1.141', '{\"path\":\"\\/aetherupload\\/file\"}', '2020-04-01 10:04:09', '2020-04-01 10:04:09');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin', 'GET', '192.168.1.13', '[]', '2020-04-10 20:02:20', '2020-04-10 20:02:20');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/word', 'GET', '192.168.1.13', '[]', '2020-04-10 20:35:09', '2020-04-10 20:35:09');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/word', 'GET', '192.168.1.13', '[]', '2020-04-10 20:46:08', '2020-04-10 20:46:08');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/word', 'GET', '192.168.1.13', '[]', '2020-04-10 20:47:59', '2020-04-10 20:47:59');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/word', 'GET', '192.168.1.13', '[]', '2020-04-10 20:53:46', '2020-04-10 20:53:46');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/word', 'GET', '192.168.1.13', '[]', '2020-04-10 21:15:02', '2020-04-10 21:15:02');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin', 'GET', '192.168.1.13', '[]', '2020-04-12 01:02:21', '2020-04-12 01:02:21');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin', 'GET', '192.168.1.13', '[]', '2020-04-12 01:03:02', '2020-04-12 01:03:02');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/dashboard', 'GET', '192.168.1.13', '[]', '2020-04-12 01:03:03', '2020-04-12 01:03:03');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/users', 'GET', '192.168.1.13', '[]', '2020-04-12 01:03:08', '2020-04-12 01:03:08');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/roles', 'GET', '192.168.1.13', '[]', '2020-04-12 01:03:12', '2020-04-12 01:03:12');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/permissions', 'GET', '192.168.1.13', '[]', '2020-04-12 01:03:18', '2020-04-12 01:03:18');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/media', 'GET', '192.168.1.13', '[]', '2020-04-12 01:03:26', '2020-04-12 01:03:26');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin', 'GET', '192.168.1.13', '[]', '2020-04-12 01:05:51', '2020-04-12 01:05:51');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/dashboard', 'GET', '192.168.1.13', '[]', '2020-04-12 01:05:52', '2020-04-12 01:05:52');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/auth/users', 'GET', '192.168.1.13', '[]', '2020-04-12 01:05:58', '2020-04-12 01:05:58');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:20:43', '2020-04-27 17:20:43');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:20:43', '2020-04-27 17:20:43');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 17:21:00', '2020-04-27 17:21:00');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-27 17:21:01', '2020-04-27 17:21:01');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-27 17:21:02', '2020-04-27 17:21:02');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:21:03', '2020-04-27 17:21:03');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:23:28', '2020-04-27 17:23:28');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:23:28', '2020-04-27 17:23:28');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-27 17:23:42', '2020-04-27 17:23:42');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-27 17:23:44', '2020-04-27 17:23:44');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:23:46', '2020-04-27 17:23:46');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 17:23:54', '2020-04-27 17:23:54');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/menu', 'POST', '192.168.1.197', '{\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18}]\"}', '2020-04-27 17:23:58', '2020-04-27 17:23:58');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:23:59', '2020-04-27 17:23:59');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:24:10', '2020-04-27 17:24:10');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:24:11', '2020-04-27 17:24:11');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:24:12', '2020-04-27 17:24:12');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:08', '2020-04-27 17:25:08');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:18', '2020-04-27 17:25:18');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/helpers/terminal/database', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:21', '2020-04-27 17:25:21');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:22', '2020-04-27 17:25:22');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/helpers/routes', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:22', '2020-04-27 17:25:22');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/logs', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:23', '2020-04-27 17:25:23');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/id-validator', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:24', '2020-04-27 17:25:24');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/redis', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:25', '2020-04-27 17:25:25');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/scheduling', 'GET', '192.168.1.197', '[]', '2020-04-27 17:25:27', '2020-04-27 17:25:27');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/users', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:26:10', '2020-04-27 17:26:10');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:26:12', '2020-04-27 17:26:12');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:26:14', '2020-04-27 17:26:14');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/menu/4/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:26:15', '2020-04-27 17:26:15');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/menu/4/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:26:17', '2020-04-27 17:26:17');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:26:52', '2020-04-27 17:26:52');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:26:52', '2020-04-27 17:26:52');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:26:58', '2020-04-27 17:26:58');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:26:59', '2020-04-27 17:26:59');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:27:03', '2020-04-27 17:27:03');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:27:23', '2020-04-27 17:27:23');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:27:43', '2020-04-27 17:27:43');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-27 17:29:26', '2020-04-27 17:29:26');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:30:55', '2020-04-27 17:30:55');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:30:55', '2020-04-27 17:30:55');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:30:57', '2020-04-27 17:30:57');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:30:57', '2020-04-27 17:30:57');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:30:57', '2020-04-27 17:30:57');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:30:58', '2020-04-27 17:30:58');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:30:58', '2020-04-27 17:30:58');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:30:58', '2020-04-27 17:30:58');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:30:58', '2020-04-27 17:30:58');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:30:58', '2020-04-27 17:30:58');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:30:58', '2020-04-27 17:30:58');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:30:58', '2020-04-27 17:30:58');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:30:59', '2020-04-27 17:30:59');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:30:59', '2020-04-27 17:30:59');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:00', '2020-04-27 17:31:00');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:00', '2020-04-27 17:31:00');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:00', '2020-04-27 17:31:00');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:00', '2020-04-27 17:31:00');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:00', '2020-04-27 17:31:00');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:01', '2020-04-27 17:31:01');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:31:01', '2020-04-27 17:31:01');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:01', '2020-04-27 17:31:01');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:31:01', '2020-04-27 17:31:01');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:05', '2020-04-27 17:31:05');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:31:05', '2020-04-27 17:31:05');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:11', '2020-04-27 17:31:11');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:31:12', '2020-04-27 17:31:12');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:30', '2020-04-27 17:31:30');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:31:30', '2020-04-27 17:31:30');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:31:32', '2020-04-27 17:31:32');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:31:59', '2020-04-27 17:31:59');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:32:00', '2020-04-27 17:32:00');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-27 17:32:05', '2020-04-27 17:32:05');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:32:07', '2020-04-27 17:32:07');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:32:14', '2020-04-27 17:32:14');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:32:35', '2020-04-27 17:32:35');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:33:59', '2020-04-27 17:33:59');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:34:07', '2020-04-27 17:34:07');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:34:37', '2020-04-27 17:34:37');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:34:49', '2020-04-27 17:34:49');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:35:20', '2020-04-27 17:35:20');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:35:30', '2020-04-27 17:35:30');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:35:30', '2020-04-27 17:35:30');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-27 17:35:51', '2020-04-27 17:35:51');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/aetherupload\",\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:35:54', '2020-04-27 17:35:54');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/logs', 'GET', '192.168.1.197', '[]', '2020-04-27 17:36:00', '2020-04-27 17:36:00');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/logs', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:36:12', '2020-04-27 17:36:12');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/logs', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:36:12', '2020-04-27 17:36:12');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/logs', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:36:13', '2020-04-27 17:36:13');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/logs', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:36:13', '2020-04-27 17:36:13');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/logs', 'GET', '192.168.1.197', '[]', '2020-04-27 17:36:40', '2020-04-27 17:36:40');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-27 17:36:55', '2020-04-27 17:36:55');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-27 17:36:58', '2020-04-27 17:36:58');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:36:59', '2020-04-27 17:36:59');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:37:16', '2020-04-27 17:37:16');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:37:35', '2020-04-27 17:37:35');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:45:52', '2020-04-27 17:45:52');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:45:52', '2020-04-27 17:45:52');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:45:55', '2020-04-27 17:45:55');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/auth/menu', 'POST', '192.168.1.197', '{\"parent_id\":\"0\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"admin\\/teacher\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\"}', '2020-04-27 17:47:11', '2020-04-27 17:47:11');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:47:11', '2020-04-27 17:47:11');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:47:36', '2020-04-27 17:47:36');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:47:36', '2020-04-27 17:47:36');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 17:47:53', '2020-04-27 17:47:53');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-27 17:48:06', '2020-04-27 17:48:06');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/auth/users', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:48:11', '2020-04-27 17:48:11');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:48:13', '2020-04-27 17:48:13');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:48:26', '2020-04-27 17:48:26');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:48:41', '2020-04-27 17:48:41');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 17:49:00', '2020-04-27 17:49:00');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 17:49:53', '2020-04-27 17:49:53');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\\/index\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 17:51:23', '2020-04-27 17:51:23');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 17:51:23', '2020-04-27 17:51:23');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:51:58', '2020-04-27 17:51:58');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:51:58', '2020-04-27 17:51:58');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:54:45', '2020-04-27 17:54:45');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:54:45', '2020-04-27 17:54:45');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 17:54:46', '2020-04-27 17:54:46');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 17:54:46', '2020-04-27 17:54:46');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:12:36', '2020-04-27 18:12:36');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:12:37', '2020-04-27 18:12:37');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:12:56', '2020-04-27 18:12:56');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:12:57', '2020-04-27 18:12:57');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:16:14', '2020-04-27 18:16:14');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:16:14', '2020-04-27 18:16:14');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:17:34', '2020-04-27 18:17:34');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:17:35', '2020-04-27 18:17:35');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/teacher/index', 'GET', '192.168.1.197', '[]', '2020-04-27 18:17:37', '2020-04-27 18:17:37');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:18:00', '2020-04-27 18:18:00');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:18:00', '2020-04-27 18:18:00');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 18:18:04', '2020-04-27 18:18:04');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/teacher/index', 'GET', '192.168.1.197', '[]', '2020-04-27 18:18:07', '2020-04-27 18:18:07');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:18:31', '2020-04-27 18:18:31');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:18:31', '2020-04-27 18:18:31');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/teacher/index', 'GET', '192.168.1.197', '[]', '2020-04-27 18:18:35', '2020-04-27 18:18:35');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:19:01', '2020-04-27 18:19:01');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:19:01', '2020-04-27 18:19:01');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/teacher/index', 'GET', '192.168.1.197', '[]', '2020-04-27 18:19:03', '2020-04-27 18:19:03');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:19:27', '2020-04-27 18:19:27');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/teacher/index', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:19:36', '2020-04-27 18:19:36');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:19:36', '2020-04-27 18:19:36');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:19:40', '2020-04-27 18:19:40');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 18:20:00', '2020-04-27 18:20:00');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:20:14', '2020-04-27 18:20:14');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:20:14', '2020-04-27 18:20:14');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:20:25', '2020-04-27 18:20:25');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:20:25', '2020-04-27 18:20:25');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 18:20:28', '2020-04-27 18:20:28');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-27 18:20:32', '2020-04-27 18:20:32');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:20:35', '2020-04-27 18:20:35');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:20:38', '2020-04-27 18:20:38');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 18:20:56', '2020-04-27 18:20:56');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:21:18', '2020-04-27 18:21:18');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:21:18', '2020-04-27 18:21:18');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 18:23:31', '2020-04-27 18:23:31');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-27 18:23:36', '2020-04-27 18:23:36');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\\/teachers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:24:11', '2020-04-27 18:24:11');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:24:11', '2020-04-27 18:24:11');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/teacher', 'GET', '192.168.1.197', '[]', '2020-04-27 18:24:18', '2020-04-27 18:24:18');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:25:30', '2020-04-27 18:25:30');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:25:30', '2020-04-27 18:25:30');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/teacher/teachers', 'GET', '192.168.1.197', '[]', '2020-04-27 18:25:33', '2020-04-27 18:25:33');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 18:25:47', '2020-04-27 18:25:47');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/auth/users/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:26:03', '2020-04-27 18:26:03');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:27:00', '2020-04-27 18:27:00');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:27:00', '2020-04-27 18:27:00');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/auth/users/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 18:27:03', '2020-04-27 18:27:03');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\\/grid\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:28:48', '2020-04-27 18:28:48');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:28:48', '2020-04-27 18:28:48');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:28:50', '2020-04-27 18:28:50');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:28:51', '2020-04-27 18:28:51');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/teacher/grid', 'GET', '192.168.1.197', '[]', '2020-04-27 18:28:54', '2020-04-27 18:28:54');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:29:23', '2020-04-27 18:29:23');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:29:23', '2020-04-27 18:29:23');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:29:27', '2020-04-27 18:29:27');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:29:33', '2020-04-27 18:29:33');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:29:35', '2020-04-27 18:29:35');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 18:30:12', '2020-04-27 18:30:12');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:31:45', '2020-04-27 18:31:45');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:31:46', '2020-04-27 18:31:46');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/teacher/grid', 'GET', '192.168.1.197', '[]', '2020-04-27 18:31:49', '2020-04-27 18:31:49');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:31:57', '2020-04-27 18:31:57');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:31:57', '2020-04-27 18:31:57');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/teacher/grid', 'GET', '192.168.1.197', '[]', '2020-04-27 18:32:28', '2020-04-27 18:32:28');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:33:19', '2020-04-27 18:33:19');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:33:20', '2020-04-27 18:33:20');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/teacher', 'GET', '192.168.1.197', '[]', '2020-04-27 18:33:22', '2020-04-27 18:33:22');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 18:33:52', '2020-04-27 18:33:52');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-27 18:33:54', '2020-04-27 18:33:54');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-27 18:33:55', '2020-04-27 18:33:55');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:33:56', '2020-04-27 18:33:56');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:34:07', '2020-04-27 18:34:07');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/auth/menu/19/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 18:34:39', '2020-04-27 18:34:39');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\\/1\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:34:43', '2020-04-27 18:34:43');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:34:43', '2020-04-27 18:34:43');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:34:49', '2020-04-27 18:34:49');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:34:50', '2020-04-27 18:34:50');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/teacher/1', 'GET', '192.168.1.197', '[]', '2020-04-27 18:34:52', '2020-04-27 18:34:52');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\\/teachers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:37:04', '2020-04-27 18:37:04');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:37:04', '2020-04-27 18:37:04');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 18:37:37', '2020-04-27 18:37:37');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:37:42', '2020-04-27 18:37:42');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:37:42', '2020-04-27 18:37:42');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/teacher/teachers', 'GET', '192.168.1.197', '[]', '2020-04-27 18:37:45', '2020-04-27 18:37:45');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 18:37:56', '2020-04-27 18:37:56');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\\/teachers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:38:07', '2020-04-27 18:38:07');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:38:07', '2020-04-27 18:38:07');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teacher\\/\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:44:15', '2020-04-27 18:44:15');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:44:15', '2020-04-27 18:44:15');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:44:27', '2020-04-27 18:44:27');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:44:27', '2020-04-27 18:44:27');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/teacher', 'GET', '192.168.1.197', '[]', '2020-04-27 18:45:21', '2020-04-27 18:45:21');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/teacher', 'GET', '192.168.1.197', '[]', '2020-04-27 18:46:27', '2020-04-27 18:46:27');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/teacher', 'GET', '192.168.1.197', '[]', '2020-04-27 18:46:30', '2020-04-27 18:46:30');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/auth/menu/19', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"teachers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-27 18:47:18', '2020-04-27 18:47:18');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-27 18:47:18', '2020-04-27 18:47:18');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-27 18:48:17', '2020-04-27 18:48:17');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-27 18:48:19', '2020-04-27 18:48:19');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-27 18:48:19', '2020-04-27 18:48:19');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/tests', 'GET', '192.168.1.197', '[]', '2020-04-27 18:53:15', '2020-04-27 18:53:15');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-27 18:53:18', '2020-04-27 18:53:18');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 18:53:22', '2020-04-27 18:53:22');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 18:53:22', '2020-04-27 18:53:22');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-27 18:53:28', '2020-04-27 18:53:28');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 18:53:32', '2020-04-27 18:53:32');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/tests', 'GET', '192.168.1.197', '[]', '2020-04-27 18:53:40', '2020-04-27 18:53:40');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/tests/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:53:48', '2020-04-27 18:53:48');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/tests/create', 'GET', '192.168.1.197', '[]', '2020-04-27 18:54:48', '2020-04-27 18:54:48');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/tests/create', 'GET', '192.168.1.197', '[]', '2020-04-27 18:55:49', '2020-04-27 18:55:49');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/tests/create', 'GET', '192.168.1.197', '[]', '2020-04-27 18:56:07', '2020-04-27 18:56:07');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/tests', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:56:32', '2020-04-27 18:56:32');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/tests', 'GET', '192.168.1.197', '[]', '2020-04-27 18:56:47', '2020-04-27 18:56:47');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/tests/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 18:57:12', '2020-04-27 18:57:12');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/tests/create', 'GET', '192.168.1.197', '[]', '2020-04-27 18:57:37', '2020-04-27 18:57:37');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/tests/create', 'GET', '192.168.1.197', '[]', '2020-04-27 18:58:55', '2020-04-27 18:58:55');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/tests', 'POST', '192.168.1.197', '{\"_token\":\"j8PsP7FEKQZO79NNjFHiwBTxuhUyekzIdp2dCB8W\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/tests\"}', '2020-04-27 18:59:24', '2020-04-27 18:59:24');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/tests', 'GET', '192.168.1.197', '[]', '2020-04-27 18:59:24', '2020-04-27 18:59:24');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 19:00:09', '2020-04-27 19:00:09');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 19:00:10', '2020-04-27 19:00:10');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-27 19:00:13', '2020-04-27 19:00:13');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/tests', 'GET', '192.168.1.197', '[]', '2020-04-27 19:00:43', '2020-04-27 19:00:43');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/tests', 'GET', '192.168.1.197', '[]', '2020-04-27 19:01:05', '2020-04-27 19:01:05');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/tests', 'GET', '192.168.1.197', '[]', '2020-04-27 19:02:04', '2020-04-27 19:02:04');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/tests', 'GET', '192.168.1.197', '[]', '2020-04-27 19:02:21', '2020-04-27 19:02:21');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-27 19:04:12', '2020-04-27 19:04:12');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/auth/users/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 19:04:15', '2020-04-27 19:04:15');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/auth/users/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-27 19:04:41', '2020-04-27 19:04:41');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-27 19:07:01', '2020-04-27 19:07:01');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-27 19:07:02', '2020-04-27 19:07:02');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-27 21:09:00', '2020-04-27 21:09:00');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-04-27 21:09:01', '2020-04-27 21:09:01');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-27 21:09:05', '2020-04-27 21:09:05');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 21:09:07', '2020-04-27 21:09:07');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-27 21:10:08', '2020-04-27 21:10:08');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-27 21:10:12', '2020-04-27 21:10:12');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-04-27 21:10:13', '2020-04-27 21:10:13');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:10:27', '2020-04-27 21:10:27');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-27 21:36:33', '2020-04-27 21:36:33');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-04-27 21:36:34', '2020-04-27 21:36:34');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:36:37', '2020-04-27 21:36:37');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_teachers\"}', '2020-04-27 21:36:41', '2020-04-27 21:36:41');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 21:36:45', '2020-04-27 21:36:45');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:37:45', '2020-04-27 21:37:45');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-27 21:39:04', '2020-04-27 21:39:04');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-04-27 21:39:05', '2020-04-27 21:39:05');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:39:09', '2020-04-27 21:39:09');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_teachers\"}', '2020-04-27 21:42:56', '2020-04-27 21:42:56');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-27 21:44:04', '2020-04-27 21:44:04');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-04-27 21:44:05', '2020-04-27 21:44:05');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-27 21:44:08', '2020-04-27 21:44:08');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:44:09', '2020-04-27 21:44:09');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_teachers\"}', '2020-04-27 21:44:11', '2020-04-27 21:44:11');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 21:44:19', '2020-04-27 21:44:19');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:44:52', '2020-04-27 21:44:52');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/teachers/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_teachers\"}', '2020-04-27 21:44:54', '2020-04-27 21:44:54');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-27 21:45:19', '2020-04-27 21:45:19');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/teachers', 'POST', '127.0.0.1', '{\"name\":\"21\",\"level\":\"12\",\"_token\":\"bItRE9gesRfLZFdByRiQfLfXF8yZySJsdyKka8Y0\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/teachers\",\"_ifraem_id_\":\"iframe__admin_teachers\"}', '2020-04-27 21:47:39', '2020-04-27 21:47:39');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:47:39', '2020-04-27 21:47:39');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-27 21:51:03', '2020-04-27 21:51:03');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-04-27 21:51:03', '2020-04-27 21:51:03');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:51:06', '2020-04-27 21:51:06');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 21:51:13', '2020-04-27 21:51:13');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/teachers/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-27 21:52:13', '2020-04-27 21:52:13');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-27 21:53:38', '2020-04-27 21:53:38');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-04-27 21:53:38', '2020-04-27 21:53:38');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:53:40', '2020-04-27 21:53:40');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 21:54:01', '2020-04-27 21:54:01');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/teachers/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 21:54:14', '2020-04-27 21:54:14');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/teachers/1', 'GET', '127.0.0.1', '[]', '2020-04-27 21:55:14', '2020-04-27 21:55:14');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-27 21:58:37', '2020-04-27 21:58:37');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/teachers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 21:58:52', '2020-04-27 21:58:52');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 21:59:52', '2020-04-27 21:59:52');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-27 21:59:59', '2020-04-27 21:59:59');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-04-27 21:59:59', '2020-04-27 21:59:59');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/teachers', 'GET', '127.0.0.1', '[]', '2020-04-27 22:00:02', '2020-04-27 22:00:02');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 22:00:06', '2020-04-27 22:00:06');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 22:01:03', '2020-04-27 22:01:03');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/teachers/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-27 22:02:03', '2020-04-27 22:02:03');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 22:02:53', '2020-04-27 22:02:53');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/teachers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-27 22:02:55', '2020-04-27 22:02:55');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-04-27 22:11:54', '2020-04-27 22:11:54');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-04-27 22:11:55', '2020-04-27 22:11:55');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-27 22:12:02', '2020-04-27 22:12:02');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2020-04-27 22:13:19', '2020-04-27 22:13:19');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2020-04-27 22:13:24', '2020-04-27 22:13:24');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/id-validator', 'GET', '127.0.0.1', '[]', '2020-04-27 22:13:27', '2020-04-27 22:13:27');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/redis', 'GET', '127.0.0.1', '[]', '2020-04-27 22:13:30', '2020-04-27 22:13:30');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/scheduling', 'GET', '127.0.0.1', '[]', '2020-04-27 22:13:31', '2020-04-27 22:13:31');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 07:54:50', '2020-04-28 07:54:50');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 07:54:50', '2020-04-28 07:54:50');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 07:54:54', '2020-04-28 07:54:54');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 07:54:57', '2020-04-28 07:54:57');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 07:55:09', '2020-04-28 07:55:09');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 07:55:14', '2020-04-28 07:55:14');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 07:55:16', '2020-04-28 07:55:16');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 07:55:20', '2020-04-28 07:55:20');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 07:55:23', '2020-04-28 07:55:23');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"21\",\"level\":\"12\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-27 21:47:39\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/teachers\"}', '2020-04-28 07:55:38', '2020-04-28 07:55:38');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 07:55:38', '2020-04-28 07:55:38');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 07:55:41', '2020-04-28 07:55:41');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 07:55:47', '2020-04-28 07:55:47');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 07:55:49', '2020-04-28 07:55:49');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 07:56:06', '2020-04-28 07:56:06');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 07:56:12', '2020-04-28 07:56:12');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:24:03', '2020-04-28 08:24:03');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 08:30:38', '2020-04-28 08:30:38');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 08:30:38', '2020-04-28 08:30:38');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 08:30:42', '2020-04-28 08:30:42');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:42:12', '2020-04-28 08:42:12');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:42:51', '2020-04-28 08:42:51');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/courses/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 08:43:11', '2020-04-28 08:43:11');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/courses/create', 'GET', '192.168.1.197', '[]', '2020-04-28 08:43:15', '2020-04-28 08:43:15');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/courses/create', 'GET', '192.168.1.197', '[]', '2020-04-28 08:46:03', '2020-04-28 08:46:03');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/courses/create', 'GET', '192.168.1.197', '[]', '2020-04-28 08:49:03', '2020-04-28 08:49:03');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/courses', 'POST', '192.168.1.197', '{\"title\":\"15800\\u5143\\u5957\\u9910\",\"culture\":\"\\u6492\\u65e6\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\\u624b\\u52a8\\u9600\\u624b\\u52a8\\u9600 \\u963f\\u65af\\u987f\\u53d1\\u5c04\\u70b9\",\"experience\":\"\\u963f\\u65af\\u987f\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\\u751f\\u5927\\u6492\\u65e6\\u53d1\\u5c04\\u70b9\\u53d1\",\"official\":\"\\u554a\\u4e66\\u6cd5\\u5927\\u8d5b\\u7684\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\",\"buy\":\"\\u554a\\u8428\\u8fbe\\u6492\\u65e6\\u53d1\\u5c04\\u70b9\\u53d1\",\"notice\":\"\\u963f\\u65af\\u987f\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\\u751f\",\"price\":\"100000\",\"culture_num\":\"10\",\"experience_num\":\"11\",\"official_num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 08:50:05', '2020-04-28 08:50:05');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:50:05', '2020-04-28 08:50:05');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 08:50:11', '2020-04-28 08:50:11');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:50:23', '2020-04-28 08:50:23');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/courses/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 08:51:00', '2020-04-28 08:51:00');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:09', '2020-04-28 08:51:09');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/courses/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:12', '2020-04-28 08:51:12');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/courses/1', 'PUT', '192.168.1.197', '{\"title\":\"15800\\u5143\\u5957\\u9910\",\"culture\":\"\\u6492\\u65e6\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\\u624b\\u52a8\\u9600\\u624b\\u52a8\\u9600 \\u963f\\u65af\\u987f\\u53d1\\u5c04\\u70b9\",\"experience\":\"\\u963f\\u65af\\u987f\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\\u751f\\u5927\\u6492\\u65e6\\u53d1\\u5c04\\u70b9\\u53d1\",\"official\":\"\\u554a\\u4e66\\u6cd5\\u5927\\u8d5b\\u7684\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\",\"buy\":\"\\u554a\\u8428\\u8fbe\\u6492\\u65e6\\u53d1\\u5c04\\u70b9\\u53d1\",\"notice\":\"\\u963f\\u65af\\u987f\\u53d1\\u5c04\\u70b9\\u53d1\\u5c04\\u70b9\\u53d1\\u751f\\u8bf7\\u95ee\",\"price\":\"100000\",\"culture_num\":\"10\",\"experience_num\":\"11\",\"official_num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/courses\"}', '2020-04-28 08:51:24', '2020-04-28 08:51:24');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:24', '2020-04-28 08:51:24');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:50', '2020-04-28 08:51:50');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:55', '2020-04-28 08:51:55');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:57', '2020-04-28 08:51:57');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:58', '2020-04-28 08:51:58');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:58', '2020-04-28 08:51:58');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 08:51:59', '2020-04-28 08:51:59');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/courses/1', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 08:52:03', '2020-04-28 08:52:03');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/courses/1', 'GET', '192.168.1.197', '[]', '2020-04-28 08:52:39', '2020-04-28 08:52:39');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 08:59:47', '2020-04-28 08:59:47');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 08:59:48', '2020-04-28 08:59:48');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 09:00:49', '2020-04-28 09:00:49');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/auth/menu', 'POST', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u5957\\u9910\\u7ba1\\u7406\",\"icon\":\"fa-book\",\"uri\":\"\\/courses\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 09:01:05', '2020-04-28 09:01:05');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 09:01:05', '2020-04-28 09:01:05');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 09:01:39', '2020-04-28 09:01:39');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 09:01:40', '2020-04-28 09:01:40');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 09:01:43', '2020-04-28 09:01:43');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-28 09:02:17', '2020-04-28 09:02:17');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 09:12:25', '2020-04-28 09:12:25');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 09:12:34', '2020-04-28 09:12:34');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 09:13:04', '2020-04-28 09:13:04');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"21\",\"level\":\"12\",\"price\":null,\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-28 07:55:38\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 09:13:08', '2020-04-28 09:13:08');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 09:13:08', '2020-04-28 09:13:08');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 09:13:15', '2020-04-28 09:13:15');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 09:13:21', '2020-04-28 09:13:21');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"\\u5f20\\u4e09\",\"level\":\"12\",\"price\":\"80\",\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-28 09:13:08\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/teachers\\/1\"}', '2020-04-28 09:13:31', '2020-04-28 09:13:31');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 09:13:31', '2020-04-28 09:13:31');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 09:13:47', '2020-04-28 09:13:47');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 09:23:16', '2020-04-28 09:23:16');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 09:28:01', '2020-04-28 09:28:01');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/members/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 09:28:04', '2020-04-28 09:28:04');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:28:05', '2020-04-28 09:28:05');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:28:27', '2020-04-28 09:28:27');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:29:31', '2020-04-28 09:29:31');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:30:01', '2020-04-28 09:30:01');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:30:02', '2020-04-28 09:30:02');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:30:18', '2020-04-28 09:30:18');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:30:23', '2020-04-28 09:30:23');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:30:34', '2020-04-28 09:30:34');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/members', 'POST', '192.168.1.197', '{\"name\":\"\\u674e\\u56db\",\"mobile\":\"13564568544\",\"sex\":null,\"culture_num\":\"3\",\"experience_num\":\"2\",\"official_num\":\"2\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 09:31:11', '2020-04-28 09:31:11');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 09:31:11', '2020-04-28 09:31:11');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 09:31:19', '2020-04-28 09:31:19');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/auth/menu', 'POST', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"\\/members\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 09:32:55', '2020-04-28 09:32:55');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 09:32:55', '2020-04-28 09:32:55');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 09:35:20', '2020-04-28 09:35:20');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/members/1', 'PUT', '192.168.1.197', '{\"name\":\"\\u674e\\u56db\",\"mobile\":\"13564568544\",\"sex\":\"2\",\"culture_num\":\"3\",\"experience_num\":\"2\",\"official_num\":\"2\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/members\\/create\"}', '2020-04-28 09:35:25', '2020-04-28 09:35:25');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:35:25', '2020-04-28 09:35:25');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 09:35:29', '2020-04-28 09:35:29');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 09:35:42', '2020-04-28 09:35:42');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/courses/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 09:51:15', '2020-04-28 09:51:15');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/courses/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:51:18', '2020-04-28 09:51:18');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 09:51:36', '2020-04-28 09:51:36');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/members/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 09:52:25', '2020-04-28 09:52:25');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 09:52:27', '2020-04-28 09:52:27');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 10:08:13', '2020-04-28 10:08:13');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/bookings/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:08:16', '2020-04-28 10:08:16');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/bookings/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:08:37', '2020-04-28 10:08:37');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/bookings/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:10:03', '2020-04-28 10:10:03');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/bookings/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:10:16', '2020-04-28 10:10:16');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/bookings', 'POST', '192.168.1.197', '{\"name\":\"\\u91cc\\u65af\",\"mobile\":\"13646655245\",\"time\":\"2020-04-28 00:00:00\",\"hour\":\"0\",\"teacher\":\"1\",\"course\":\"1\",\"comment\":\"11111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 10:11:08', '2020-04-28 10:11:08');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 10:11:08', '2020-04-28 10:11:08');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 10:11:31', '2020-04-28 10:11:31');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:25:01', '2020-04-28 10:25:01');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:34:59', '2020-04-28 10:34:59');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:35:01', '2020-04-28 10:35:01');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:35:19', '2020-04-28 10:35:19');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:37:11', '2020-04-28 10:37:11');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:37:12', '2020-04-28 10:37:12');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:37:12', '2020-04-28 10:37:12');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:37:12', '2020-04-28 10:37:12');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"1\",\"2\",null],\"course\":\"1\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 10:37:41', '2020-04-28 10:37:41');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:37:41', '2020-04-28 10:37:41');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:37:44', '2020-04-28 10:37:44');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:38:29', '2020-04-28 10:38:29');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:38:32', '2020-04-28 10:38:32');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"1\",\"2\",null],\"course\":\"1\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 10:38:40', '2020-04-28 10:38:40');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:38:40', '2020-04-28 10:38:40');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:39:03', '2020-04-28 10:39:03');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:39:05', '2020-04-28 10:39:05');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:39:06', '2020-04-28 10:39:06');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:39:06', '2020-04-28 10:39:06');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:39:06', '2020-04-28 10:39:06');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:39:07', '2020-04-28 10:39:07');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:39:07', '2020-04-28 10:39:07');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:39:09', '2020-04-28 10:39:09');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:39:11', '2020-04-28 10:39:11');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:40:23', '2020-04-28 10:40:23');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 10:40:26', '2020-04-28 10:40:26');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:40:28', '2020-04-28 10:40:28');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 10:41:07', '2020-04-28 10:41:07');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 10:41:07', '2020-04-28 10:41:07');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 10:41:20', '2020-04-28 10:41:20');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 10:41:24', '2020-04-28 10:41:24');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/auth/menu', 'POST', '192.168.1.197', '{\"parent_id\":\"0\",\"title\":\"\\u9884\\u7ea6\\u8bb0\\u5f55\",\"icon\":\"fa-calendar\",\"uri\":\"\\/bookings\",\"roles\":[null],\"permission\":null,\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 10:42:02', '2020-04-28 10:42:02');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 10:42:02', '2020-04-28 10:42:02');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 10:42:08', '2020-04-28 10:42:08');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 10:42:09', '2020-04-28 10:42:09');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:43:13', '2020-04-28 10:43:13');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:43:15', '2020-04-28 10:43:15');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:43:16', '2020-04-28 10:43:16');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:43:17', '2020-04-28 10:43:17');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:43:18', '2020-04-28 10:43:18');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 10:43:39', '2020-04-28 10:43:39');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/auth/menu', 'POST', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u6559\\u7ec3\\u6392\\u73ed\",\"icon\":\"fa-calendar-check-o\",\"uri\":\"\\/set-classes\",\"roles\":[null],\"permission\":null,\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 10:44:41', '2020-04-28 10:44:41');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 10:44:41', '2020-04-28 10:44:41');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 10:44:44', '2020-04-28 10:44:44');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 10:44:44', '2020-04-28 10:44:44');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 10:44:46', '2020-04-28 10:44:46');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 10:44:46', '2020-04-28 10:44:46');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 10:44:54', '2020-04-28 10:44:54');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 10:44:54', '2020-04-28 10:44:54');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 10:45:01', '2020-04-28 10:45:01');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/auth/menu/22/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:45:04', '2020-04-28 10:45:04');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/auth/menu/22/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:02', '2020-04-28 10:46:02');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/auth/menu/22', 'PUT', '192.168.1.197', '{\"parent_id\":\"2\",\"title\":\"\\u9884\\u7ea6\\u8bb0\\u5f55\",\"icon\":\"fa-calendar\",\"uri\":\"\\/bookings\",\"roles\":[null],\"permission\":null,\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/auth\\/menu\"}', '2020-04-28 10:46:11', '2020-04-28 10:46:11');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:11', '2020-04-28 10:46:11');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:18', '2020-04-28 10:46:18');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:18', '2020-04-28 10:46:18');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:38', '2020-04-28 10:46:38');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:40', '2020-04-28 10:46:40');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:41', '2020-04-28 10:46:41');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:43', '2020-04-28 10:46:43');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:44', '2020-04-28 10:46:44');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 10:46:51', '2020-04-28 10:46:51');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 10:48:30', '2020-04-28 10:48:30');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:48:39', '2020-04-28 10:48:39');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 10:48:50', '2020-04-28 10:48:50');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 10:49:05', '2020-04-28 10:49:05');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 10:49:05', '2020-04-28 10:49:05');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 10:49:06', '2020-04-28 10:49:06');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 10:49:07', '2020-04-28 10:49:07');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 10:55:00', '2020-04-28 10:55:00');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 10:55:00', '2020-04-28 10:55:00');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:00:28', '2020-04-28 11:00:28');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-28 10:40:09\",\"hour\":[\"1\",\"2\",null],\"course\":\"1\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 11:00:35', '2020-04-28 11:00:35');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 11:00:35', '2020-04-28 11:00:35');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 11:03:50', '2020-04-28 11:03:50');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:03:55', '2020-04-28 11:03:55');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-28 10:40:09\",\"hour\":[\"9\",\"10\",\"11\",\"13\",\"14\",null],\"course\":\"1\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\"}', '2020-04-28 11:04:22', '2020-04-28 11:04:22');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 11:04:22', '2020-04-28 11:04:22');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 11:04:52', '2020-04-28 11:04:52');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 11:06:21', '2020-04-28 11:06:21');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 11:06:22', '2020-04-28 11:06:22');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:07:35', '2020-04-28 11:07:35');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 11:07:43', '2020-04-28 11:07:43');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:07:58', '2020-04-28 11:07:58');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:10:38', '2020-04-28 11:10:38');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"\\u5f20\\u4e09\",\"level\":\"1\",\"price\":\"80\",\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-28 09:13:31\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 11:10:43', '2020-04-28 11:10:43');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:10:43', '2020-04-28 11:10:43');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 11:10:46', '2020-04-28 11:10:46');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:10:52', '2020-04-28 11:10:52');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:18:19', '2020-04-28 11:18:19');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:18:25', '2020-04-28 11:18:25');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 11:21:21', '2020-04-28 11:21:21');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 11:21:23', '2020-04-28 11:21:23');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 11:21:24', '2020-04-28 11:21:24');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:30:57', '2020-04-28 11:30:57');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:32:20', '2020-04-28 11:32:20');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:32:21', '2020-04-28 11:32:21');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:32:39', '2020-04-28 11:32:39');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:32:40', '2020-04-28 11:32:40');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:32:41', '2020-04-28 11:32:41');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:33:03', '2020-04-28 11:33:03');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:33:06', '2020-04-28 11:33:06');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:33:07', '2020-04-28 11:33:07');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:33:32', '2020-04-28 11:33:32');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:33:37', '2020-04-28 11:33:37');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-28 11:42:52', '2020-04-28 11:42:52');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/aetherupload\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 11:42:59', '2020-04-28 11:42:59');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/aetherupload\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 11:43:00', '2020-04-28 11:43:00');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 11:43:01', '2020-04-28 11:43:01');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 11:43:01', '2020-04-28 11:43:01');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 11:43:06', '2020-04-28 11:43:06');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:43:25', '2020-04-28 11:43:25');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:43:26', '2020-04-28 11:43:26');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/public\"}', '2020-04-28 11:44:06', '2020-04-28 11:44:06');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 11:52:36', '2020-04-28 11:52:36');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:52:41', '2020-04-28 11:52:41');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:18', '2020-04-28 11:57:18');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:21', '2020-04-28 11:57:21');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:35', '2020-04-28 11:57:35');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:36', '2020-04-28 11:57:36');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:36', '2020-04-28 11:57:36');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:36', '2020-04-28 11:57:36');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:36', '2020-04-28 11:57:36');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:37', '2020-04-28 11:57:37');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:37', '2020-04-28 11:57:37');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:57:38', '2020-04-28 11:57:38');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:20', '2020-04-28 11:58:20');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:21', '2020-04-28 11:58:21');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:21', '2020-04-28 11:58:21');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:21', '2020-04-28 11:58:21');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:27', '2020-04-28 11:58:27');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:28', '2020-04-28 11:58:28');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:28', '2020-04-28 11:58:28');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:28', '2020-04-28 11:58:28');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:28', '2020-04-28 11:58:28');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:30', '2020-04-28 11:58:30');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:40', '2020-04-28 11:58:40');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:40', '2020-04-28 11:58:40');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:58:41', '2020-04-28 11:58:41');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:05', '2020-04-28 11:59:05');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:06', '2020-04-28 11:59:06');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:06', '2020-04-28 11:59:06');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:06', '2020-04-28 11:59:06');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:07', '2020-04-28 11:59:07');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:13', '2020-04-28 11:59:13');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:14', '2020-04-28 11:59:14');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:14', '2020-04-28 11:59:14');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 11:59:53', '2020-04-28 11:59:53');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:03:56', '2020-04-28 12:03:56');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:06', '2020-04-28 12:04:06');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:07', '2020-04-28 12:04:07');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:08', '2020-04-28 12:04:08');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:09', '2020-04-28 12:04:09');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:09', '2020-04-28 12:04:09');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:10', '2020-04-28 12:04:10');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:10', '2020-04-28 12:04:10');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:10', '2020-04-28 12:04:10');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:10', '2020-04-28 12:04:10');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:11', '2020-04-28 12:04:11');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:11', '2020-04-28 12:04:11');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:11', '2020-04-28 12:04:11');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:19', '2020-04-28 12:04:19');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:42', '2020-04-28 12:04:42');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:04:52', '2020-04-28 12:04:52');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:10:34', '2020-04-28 12:10:34');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 12:10:42', '2020-04-28 12:10:42');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 12:11:01', '2020-04-28 12:11:01');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 12:11:27', '2020-04-28 12:11:27');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 12:11:27', '2020-04-28 12:11:27');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 12:11:31', '2020-04-28 12:11:31');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 12:12:31', '2020-04-28 12:12:31');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 12:12:47', '2020-04-28 12:12:47');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 12:12:52', '2020-04-28 12:12:52');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 12:13:11', '2020-04-28 12:13:11');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 12:13:29', '2020-04-28 12:13:29');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/courses/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 12:13:47', '2020-04-28 12:13:47');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/courses/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:13:57', '2020-04-28 12:13:57');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:18:48', '2020-04-28 12:18:48');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:19:19', '2020-04-28 12:19:19');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 12:19:50', '2020-04-28 12:19:50');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/courses/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:19:56', '2020-04-28 12:19:56');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/courses/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 12:20:03', '2020-04-28 12:20:03');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 12:20:27', '2020-04-28 12:20:27');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 12:20:27', '2020-04-28 12:20:27');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:20:32', '2020-04-28 12:20:32');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 12:22:30', '2020-04-28 12:22:30');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 12:22:30', '2020-04-28 12:22:30');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:22:34', '2020-04-28 12:22:34');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 12:23:20', '2020-04-28 12:23:20');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:24:21', '2020-04-28 12:24:21');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:28:44', '2020-04-28 12:28:44');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:28:45', '2020-04-28 12:28:45');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:28:45', '2020-04-28 12:28:45');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:28:45', '2020-04-28 12:28:45');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:29:33', '2020-04-28 12:29:33');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:29:33', '2020-04-28 12:29:33');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:29:33', '2020-04-28 12:29:33');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 12:29:40', '2020-04-28 12:29:40');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:29:48', '2020-04-28 12:29:48');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:30:05', '2020-04-28 12:30:05');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:30:06', '2020-04-28 12:30:06');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:30:06', '2020-04-28 12:30:06');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:30:06', '2020-04-28 12:30:06');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:30:08', '2020-04-28 12:30:08');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:30:31', '2020-04-28 12:30:31');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:30:35', '2020-04-28 12:30:35');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:35:13', '2020-04-28 12:35:13');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:09', '2020-04-28 12:36:09');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:09', '2020-04-28 12:36:09');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:10', '2020-04-28 12:36:10');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:10', '2020-04-28 12:36:10');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:10', '2020-04-28 12:36:10');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:11', '2020-04-28 12:36:11');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:46', '2020-04-28 12:36:46');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:47', '2020-04-28 12:36:47');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:47', '2020-04-28 12:36:47');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:47', '2020-04-28 12:36:47');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:47', '2020-04-28 12:36:47');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:36:48', '2020-04-28 12:36:48');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:37:06', '2020-04-28 12:37:06');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:37:07', '2020-04-28 12:37:07');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:37:07', '2020-04-28 12:37:07');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:38:00', '2020-04-28 12:38:00');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:38:04', '2020-04-28 12:38:04');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 12:38:10', '2020-04-28 12:38:10');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/members/1', 'PUT', '192.168.1.197', '{\"name\":\"\\u674e\\u56db\",\"mobile\":\"13564568544\",\"sex\":\"1\",\"culture_num\":\"3\",\"experience_num\":\"2\",\"official_num\":\"2\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/members\\/1\"}', '2020-04-28 12:38:14', '2020-04-28 12:38:14');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:38:14', '2020-04-28 12:38:14');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:38:42', '2020-04-28 12:38:42');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:38:46', '2020-04-28 12:38:46');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:38:51', '2020-04-28 12:38:51');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 12:39:11', '2020-04-28 12:39:11');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 12:39:11', '2020-04-28 12:39:11');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 12:39:16', '2020-04-28 12:39:16');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:39:18', '2020-04-28 12:39:18');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 12:39:36', '2020-04-28 12:39:36');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 12:39:46', '2020-04-28 12:39:46');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/bookings', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 12:39:48', '2020-04-28 12:39:48');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/auth/menu/22/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 12:39:50', '2020-04-28 12:39:50');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/auth/menu/22/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 12:40:43', '2020-04-28 12:40:43');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 12:41:26', '2020-04-28 12:41:26');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 12:41:28', '2020-04-28 12:41:28');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 12:41:28', '2020-04-28 12:41:28');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 12:41:33', '2020-04-28 12:41:33');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 12:41:41', '2020-04-28 12:41:41');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/auth/menu/7', 'GET', '192.168.1.197', '[]', '2020-04-28 12:41:50', '2020-04-28 12:41:50');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 12:41:50', '2020-04-28 12:41:50');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 12:42:10', '2020-04-28 12:42:10');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-28 12:42:12', '2020-04-28 12:42:12');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-28 12:43:01', '2020-04-28 12:43:01');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:43:08', '2020-04-28 12:43:08');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 12:44:55', '2020-04-28 12:44:55');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 12:44:55', '2020-04-28 12:44:55');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:44:58', '2020-04-28 12:44:58');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 12:45:30', '2020-04-28 12:45:30');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 12:45:30', '2020-04-28 12:45:30');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:45:38', '2020-04-28 12:45:38');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:46:10', '2020-04-28 12:46:10');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:46:10', '2020-04-28 12:46:10');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:46:10', '2020-04-28 12:46:10');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:46:11', '2020-04-28 12:46:11');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:46:11', '2020-04-28 12:46:11');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:46:11', '2020-04-28 12:46:11');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/bookings/1', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 12:46:15', '2020-04-28 12:46:15');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/bookings/1', 'GET', '192.168.1.197', '[]', '2020-04-28 12:46:21', '2020-04-28 12:46:21');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:49:35', '2020-04-28 12:49:35');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:49:57', '2020-04-28 12:49:57');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:50:26', '2020-04-28 12:50:26');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:50:48', '2020-04-28 12:50:48');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:50:50', '2020-04-28 12:50:50');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:52:04', '2020-04-28 12:52:04');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:55:17', '2020-04-28 12:55:17');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:57:10', '2020-04-28 12:57:10');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 12:59:10', '2020-04-28 12:59:10');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:07:08', '2020-04-28 13:07:08');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:08:49', '2020-04-28 13:08:49');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:08:50', '2020-04-28 13:08:50');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:08:51', '2020-04-28 13:08:51');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:08:52', '2020-04-28 13:08:52');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:10:44', '2020-04-28 13:10:44');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:10:45', '2020-04-28 13:10:45');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:12:03', '2020-04-28 13:12:03');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:12:03', '2020-04-28 13:12:03');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:13:13', '2020-04-28 13:13:13');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:13:39', '2020-04-28 13:13:39');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:13:41', '2020-04-28 13:13:41');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:13:48', '2020-04-28 13:13:48');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:14:05', '2020-04-28 13:14:05');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:14:15', '2020-04-28 13:14:15');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:14:16', '2020-04-28 13:14:16');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:14:16', '2020-04-28 13:14:16');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:14:50', '2020-04-28 13:14:50');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:00', '2020-04-28 13:15:00');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:12', '2020-04-28 13:15:12');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"\\u738b\\u4e94\",\"level\":\"1\",\"price\":\"80\",\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-28 11:10:43\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 13:15:20', '2020-04-28 13:15:20');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:21', '2020-04-28 13:15:21');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:26', '2020-04-28 13:15:26');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:31', '2020-04-28 13:15:31');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:31', '2020-04-28 13:15:31');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:32', '2020-04-28 13:15:32');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:32', '2020-04-28 13:15:32');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:15:32', '2020-04-28 13:15:32');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:16:16', '2020-04-28 13:16:16');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:16:27', '2020-04-28 13:16:27');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/bookings/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 13:16:37', '2020-04-28 13:16:37');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/bookings/create', 'GET', '192.168.1.197', '[]', '2020-04-28 13:16:39', '2020-04-28 13:16:39');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/bookings/create', 'GET', '192.168.1.197', '[]', '2020-04-28 13:16:41', '2020-04-28 13:16:41');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin/bookings/create', 'GET', '192.168.1.197', '[]', '2020-04-28 13:16:50', '2020-04-28 13:16:50');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:19:08', '2020-04-28 13:19:08');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:22:03', '2020-04-28 13:22:03');
INSERT INTO `admin_operation_log` VALUES ('817', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:22:42', '2020-04-28 13:22:42');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:22:43', '2020-04-28 13:22:43');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:22:43', '2020-04-28 13:22:43');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:22:43', '2020-04-28 13:22:43');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:28:55', '2020-04-28 13:28:55');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 13:34:25', '2020-04-28 13:34:25');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 13:34:47', '2020-04-28 13:34:47');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 13:34:58', '2020-04-28 13:34:58');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 13:34:59', '2020-04-28 13:34:59');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 13:35:05', '2020-04-28 13:35:05');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/members/1', 'GET', '192.168.1.197', '[]', '2020-04-28 13:35:31', '2020-04-28 13:35:31');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 13:35:36', '2020-04-28 13:35:36');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 13:35:44', '2020-04-28 13:35:44');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 13:35:52', '2020-04-28 13:35:52');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 13:35:52', '2020-04-28 13:35:52');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 13:35:55', '2020-04-28 13:35:55');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 13:35:56', '2020-04-28 13:35:56');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/courses/1', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 13:36:05', '2020-04-28 13:36:05');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/courses/1', 'GET', '192.168.1.197', '[]', '2020-04-28 13:36:53', '2020-04-28 13:36:53');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 13:39:47', '2020-04-28 13:39:47');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 13:39:47', '2020-04-28 13:39:47');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 13:39:50', '2020-04-28 13:39:50');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 13:39:57', '2020-04-28 13:39:57');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 13:40:03', '2020-04-28 13:40:03');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-28 13:40:16', '2020-04-28 13:40:16');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 13:40:22', '2020-04-28 13:40:22');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 13:40:23', '2020-04-28 13:40:23');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 13:40:27', '2020-04-28 13:40:27');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 13:40:30', '2020-04-28 13:40:30');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:40:32', '2020-04-28 13:40:32');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 13:40:39', '2020-04-28 13:40:39');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 13:42:56', '2020-04-28 13:42:56');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 13:43:18', '2020-04-28 13:43:18');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 13:43:34', '2020-04-28 13:43:34');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 13:44:10', '2020-04-28 13:44:10');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 13:44:20', '2020-04-28 13:44:20');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:47:33', '2020-04-28 13:47:33');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 13:49:36', '2020-04-28 13:49:36');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 13:49:45', '2020-04-28 13:49:45');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 13:49:49', '2020-04-28 13:49:49');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 13:49:56', '2020-04-28 13:49:56');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 13:50:11', '2020-04-28 13:50:11');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 13:50:15', '2020-04-28 13:50:15');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 13:50:25', '2020-04-28 13:50:25');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/teachers/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 13:50:26', '2020-04-28 13:50:26');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/teachers/create', 'GET', '192.168.1.197', '[]', '2020-04-28 13:50:29', '2020-04-28 13:50:29');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/teachers', 'POST', '192.168.1.197', '{\"name\":\"\\u674e\\u56db\",\"level\":\"2\",\"price\":\"80\",\"description\":\"1231231\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/teachers\"}', '2020-04-28 13:50:45', '2020-04-28 13:50:45');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 13:50:45', '2020-04-28 13:50:45');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 13:50:50', '2020-04-28 13:50:50');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 13:51:24', '2020-04-28 13:51:24');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-29 10:40:09\",\"hour\":[\"9\",\"11\",\"14\",null],\"course\":\"3\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:38', '2020-04-28 14:00:38');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:42', '2020-04-28 14:00:42');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/set-classes/2', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:46', '2020-04-28 14:00:46');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:00:57', '2020-04-28 14:00:57');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"13\",\"14\",null],\"course\":\"3\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/2\"}', '2020-04-28 14:01:13', '2020-04-28 14:01:13');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:01:13', '2020-04-28 14:01:13');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"13\",\"14\",null],\"course\":\"3\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/2\"}', '2020-04-28 14:04:30', '2020-04-28 14:04:30');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:04:30', '2020-04-28 14:04:30');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:04:42', '2020-04-28 14:04:42');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:05:00', '2020-04-28 14:05:00');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"9\",\"13\",\"14\",null],\"course\":\"1\",\"num\":\"1\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:05:10', '2020-04-28 14:05:10');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:05:10', '2020-04-28 14:05:10');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 14:05:12', '2020-04-28 14:05:12');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 14:06:29', '2020-04-28 14:06:29');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:06:41', '2020-04-28 14:06:41');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-30 00:00:00\",\"hour\":[\"11\",\"14\",null],\"course\":\"2\",\"num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:06:56', '2020-04-28 14:06:56');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:07:17', '2020-04-28 14:07:17');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:07:19', '2020-04-28 14:07:19');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 14:07:20', '2020-04-28 14:07:20');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:07:20', '2020-04-28 14:07:20');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"14\",null],\"course\":\"2\",\"num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:07:30', '2020-04-28 14:07:30');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"14\",null],\"course\":\"2\",\"num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:07:57', '2020-04-28 14:07:57');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:07:57', '2020-04-28 14:07:57');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 14:11:30', '2020-04-28 14:11:30');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:11:35', '2020-04-28 14:11:35');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:11:40', '2020-04-28 14:11:40');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-05-01 00:00:00\",\"hour\":[\"10\",\"13\",null],\"course\":\"2\",\"num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\"}', '2020-04-28 14:12:32', '2020-04-28 14:12:32');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:12:32', '2020-04-28 14:12:32');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:12:54', '2020-04-28 14:12:54');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:13:05', '2020-04-28 14:13:05');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[null],\"course\":\"2\",\"num\":\"21\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:13:13', '2020-04-28 14:13:13');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:13:13', '2020-04-28 14:13:13');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 14:13:47', '2020-04-28 14:13:47');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/teachers/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 14:13:49', '2020-04-28 14:13:49');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/teachers/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:13:55', '2020-04-28 14:13:55');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/teachers', 'POST', '192.168.1.197', '{\"name\":\"\\u5f20\\u4e09\",\"level\":\"3\",\"price\":\"180\",\"description\":\"123123\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/teachers\"}', '2020-04-28 14:14:14', '2020-04-28 14:14:14');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 14:14:14', '2020-04-28 14:14:14');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 14:14:21', '2020-04-28 14:14:21');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 14:14:31', '2020-04-28 14:14:31');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/members/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:14:35', '2020-04-28 14:14:35');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/members', 'POST', '192.168.1.197', '{\"name\":\"\\u5c0f\\u674e\",\"mobile\":\"13654785245\",\"sex\":\"1\",\"culture_num\":\"10\",\"experience_num\":\"11\",\"official_num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 14:15:03', '2020-04-28 14:15:03');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 14:15:03', '2020-04-28 14:15:03');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 14:15:08', '2020-04-28 14:15:08');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 14:15:23', '2020-04-28 14:15:23');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 14:15:35', '2020-04-28 14:15:35');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin/courses/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:15:42', '2020-04-28 14:15:42');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin/courses', 'POST', '192.168.1.197', '{\"title\":\"188888\\u5957\\u9910\",\"culture\":\"\\u4e3a\\u53bb\\u5fae\\u8f6f\",\"experience\":\"\\u5fae\\u8f6f\\u72ac\\u761f\\u70ed\",\"official\":\"\\u5fae\\u8f6f\\u72ac\\u761f\\u70ed\",\"buy\":\"\\u6e29\\u70ed\\u53bb\\u5fae\\u8f6f\\u8bf7\\u95ee\\u4eba\\u60c5\\u5473\",\"notice\":null,\"price\":\"18888\",\"culture_num\":\"5\",\"experience_num\":\"6\",\"official_num\":\"8\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 14:16:12', '2020-04-28 14:16:12');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 14:16:12', '2020-04-28 14:16:12');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 14:16:23', '2020-04-28 14:16:23');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:16:32', '2020-04-28 14:16:32');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:16:39', '2020-04-28 14:16:39');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-30 00:00:00\",\"hour\":[\"10\",\"11\",\"13\",null],\"course\":\"2\",\"num\":\"22\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\"}', '2020-04-28 14:17:57', '2020-04-28 14:17:57');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:17:57', '2020-04-28 14:17:57');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:17:58', '2020-04-28 14:17:58');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:23:52', '2020-04-28 14:23:52');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:23:53', '2020-04-28 14:23:53');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:13', '2020-04-28 14:24:13');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:14', '2020-04-28 14:24:14');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:14', '2020-04-28 14:24:14');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:14', '2020-04-28 14:24:14');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:24', '2020-04-28 14:24:24');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"11\",null],\"course\":\"2\",\"num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('955', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('964', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('965', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:44', '2020-04-28 14:24:44');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:45', '2020-04-28 14:24:45');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:45', '2020-04-28 14:24:45');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:24:52', '2020-04-28 14:24:52');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"11\",null],\"course\":\"2\",\"num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 14:27:06', '2020-04-28 14:27:06');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:27:36', '2020-04-28 14:27:36');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 14:27:38', '2020-04-28 14:27:38');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:27:40', '2020-04-28 14:27:40');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"14\",null],\"course\":\"1\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:27:48', '2020-04-28 14:27:48');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:27:48', '2020-04-28 14:27:48');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"14\",null],\"course\":\"1\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:28:59', '2020-04-28 14:28:59');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:28:59', '2020-04-28 14:28:59');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:29:05', '2020-04-28 14:29:05');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"15\",null],\"course\":\"1\",\"num\":\"123\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:29:16', '2020-04-28 14:29:16');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:29:16', '2020-04-28 14:29:16');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:29:44', '2020-04-28 14:29:44');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",null],\"course\":\"2\",\"num\":\"11\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:30:20', '2020-04-28 14:30:20');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:30:53', '2020-04-28 14:30:53');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[null],\"course\":\"1\",\"num\":\"1\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/create\"}', '2020-04-28 14:30:56', '2020-04-28 14:30:56');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 14:31:35', '2020-04-28 14:31:35');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:31:37', '2020-04-28 14:31:37');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[null],\"course\":\"1\",\"num\":\"1\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 14:31:39', '2020-04-28 14:31:39');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 14:32:45', '2020-04-28 14:32:45');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:32:46', '2020-04-28 14:32:46');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[null],\"course\":\"1\",\"num\":\"1\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 14:32:49', '2020-04-28 14:32:49');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 14:33:01', '2020-04-28 14:33:01');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:33:06', '2020-04-28 14:33:06');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[null],\"course\":\"1\",\"num\":\"1\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\"}', '2020-04-28 14:33:07', '2020-04-28 14:33:07');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:33:16', '2020-04-28 14:33:16');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[null],\"course\":\"1\",\"num\":\"1\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 14:33:18', '2020-04-28 14:33:18');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:33:18', '2020-04-28 14:33:18');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 14:33:49', '2020-04-28 14:33:49');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:33:53', '2020-04-28 14:33:53');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[null],\"course\":\"1\",\"num\":\"2\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\"}', '2020-04-28 14:33:57', '2020-04-28 14:33:57');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:34:08', '2020-04-28 14:34:08');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"13\",\"14\",null],\"course\":\"1\",\"num\":\"2\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 14:34:15', '2020-04-28 14:34:15');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:34:28', '2020-04-28 14:34:28');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"13\",\"14\",null],\"course\":\"3\",\"num\":\"99\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\\/edit\"}', '2020-04-28 14:34:42', '2020-04-28 14:34:42');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:34:42', '2020-04-28 14:34:42');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"13\",\"14\",null],\"course\":\"3\",\"num\":\"99\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\\/edit\"}', '2020-04-28 14:35:21', '2020-04-28 14:35:21');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:35:21', '2020-04-28 14:35:21');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:35:27', '2020-04-28 14:35:27');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:35:45', '2020-04-28 14:35:45');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:38:27', '2020-04-28 14:38:27');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:38:40', '2020-04-28 14:38:40');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-30 00:00:00\",\"hour\":[\"9\",\"17\",null],\"course\":\"2\",\"num\":\"12\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/2\\/edit\"}', '2020-04-28 14:38:51', '2020-04-28 14:38:51');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:38:51', '2020-04-28 14:38:51');
INSERT INTO `admin_operation_log` VALUES ('1013', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:39:07', '2020-04-28 14:39:07');
INSERT INTO `admin_operation_log` VALUES ('1014', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:42:48', '2020-04-28 14:42:48');
INSERT INTO `admin_operation_log` VALUES ('1015', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"13\",null],\"course\":\"2\",\"num\":\"11\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 14:42:56', '2020-04-28 14:42:56');
INSERT INTO `admin_operation_log` VALUES ('1016', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:42:56', '2020-04-28 14:42:56');
INSERT INTO `admin_operation_log` VALUES ('1017', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:43:26', '2020-04-28 14:43:26');
INSERT INTO `admin_operation_log` VALUES ('1018', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:44:29', '2020-04-28 14:44:29');
INSERT INTO `admin_operation_log` VALUES ('1019', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 14:44:32', '2020-04-28 14:44:32');
INSERT INTO `admin_operation_log` VALUES ('1020', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:44:34', '2020-04-28 14:44:34');
INSERT INTO `admin_operation_log` VALUES ('1021', '1', 'admin/set-classes/2', 'PUT', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",null],\"course\":\"3\",\"num\":\"99\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 14:44:38', '2020-04-28 14:44:38');
INSERT INTO `admin_operation_log` VALUES ('1022', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:44:38', '2020-04-28 14:44:38');
INSERT INTO `admin_operation_log` VALUES ('1023', '1', 'admin/set-classes/2', 'GET', '192.168.1.197', '[]', '2020-04-28 14:44:39', '2020-04-28 14:44:39');
INSERT INTO `admin_operation_log` VALUES ('1024', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:44:56', '2020-04-28 14:44:56');
INSERT INTO `admin_operation_log` VALUES ('1025', '1', 'admin/set-classes/2', 'PUT', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",null],\"course\":\"3\",\"num\":\"99\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/2\"}', '2020-04-28 14:45:01', '2020-04-28 14:45:01');
INSERT INTO `admin_operation_log` VALUES ('1026', '1', 'admin/set-classes/2', 'GET', '192.168.1.197', '[]', '2020-04-28 14:45:01', '2020-04-28 14:45:01');
INSERT INTO `admin_operation_log` VALUES ('1027', '1', 'admin/set-classes/2', 'GET', '192.168.1.197', '[]', '2020-04-28 14:45:06', '2020-04-28 14:45:06');
INSERT INTO `admin_operation_log` VALUES ('1028', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:56:28', '2020-04-28 14:56:28');
INSERT INTO `admin_operation_log` VALUES ('1029', '1', 'admin/set-classes/2', 'PUT', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[null],\"course\":\"3\",\"num\":\"99\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 14:56:32', '2020-04-28 14:56:32');
INSERT INTO `admin_operation_log` VALUES ('1030', '1', 'admin/set-classes/2', 'GET', '192.168.1.197', '[]', '2020-04-28 14:56:37', '2020-04-28 14:56:37');
INSERT INTO `admin_operation_log` VALUES ('1031', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 14:56:43', '2020-04-28 14:56:43');
INSERT INTO `admin_operation_log` VALUES ('1032', '1', 'admin/set-classes/2', 'PUT', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"13\",null],\"course\":\"3\",\"num\":\"99\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/2\"}', '2020-04-28 14:56:47', '2020-04-28 14:56:47');
INSERT INTO `admin_operation_log` VALUES ('1033', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:56:59', '2020-04-28 14:56:59');
INSERT INTO `admin_operation_log` VALUES ('1034', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"13\",null],\"course\":\"2\",\"num\":\"11\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/2\\/edit\"}', '2020-04-28 14:57:09', '2020-04-28 14:57:09');
INSERT INTO `admin_operation_log` VALUES ('1035', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 14:57:09', '2020-04-28 14:57:09');
INSERT INTO `admin_operation_log` VALUES ('1036', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 14:57:25', '2020-04-28 14:57:25');
INSERT INTO `admin_operation_log` VALUES ('1037', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:06:03', '2020-04-28 15:06:03');
INSERT INTO `admin_operation_log` VALUES ('1038', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:11:15', '2020-04-28 15:11:15');
INSERT INTO `admin_operation_log` VALUES ('1039', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:11:18', '2020-04-28 15:11:18');
INSERT INTO `admin_operation_log` VALUES ('1040', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 15:11:21', '2020-04-28 15:11:21');
INSERT INTO `admin_operation_log` VALUES ('1041', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"15\",null],\"course\":\"2\",\"num\":\"10\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 15:11:34', '2020-04-28 15:11:34');
INSERT INTO `admin_operation_log` VALUES ('1042', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 15:11:34', '2020-04-28 15:11:34');
INSERT INTO `admin_operation_log` VALUES ('1043', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:11:35', '2020-04-28 15:11:35');
INSERT INTO `admin_operation_log` VALUES ('1044', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:12:10', '2020-04-28 15:12:10');
INSERT INTO `admin_operation_log` VALUES ('1045', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:12:20', '2020-04-28 15:12:20');
INSERT INTO `admin_operation_log` VALUES ('1046', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:12:41', '2020-04-28 15:12:41');
INSERT INTO `admin_operation_log` VALUES ('1047', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:13:09', '2020-04-28 15:13:09');
INSERT INTO `admin_operation_log` VALUES ('1048', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 15:19:39', '2020-04-28 15:19:39');
INSERT INTO `admin_operation_log` VALUES ('1049', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":null,\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",null],\"course\":\"2\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:19:45', '2020-04-28 15:19:45');
INSERT INTO `admin_operation_log` VALUES ('1050', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 15:19:45', '2020-04-28 15:19:45');
INSERT INTO `admin_operation_log` VALUES ('1051', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:19:55', '2020-04-28 15:19:55');
INSERT INTO `admin_operation_log` VALUES ('1052', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":null,\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"10\",\"11\",\"13\",null],\"course\":\"2\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/create\"}', '2020-04-28 15:20:01', '2020-04-28 15:20:01');
INSERT INTO `admin_operation_log` VALUES ('1053', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 15:20:01', '2020-04-28 15:20:01');
INSERT INTO `admin_operation_log` VALUES ('1054', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:20:05', '2020-04-28 15:20:05');
INSERT INTO `admin_operation_log` VALUES ('1055', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:20:08', '2020-04-28 15:20:08');
INSERT INTO `admin_operation_log` VALUES ('1056', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:20:12', '2020-04-28 15:20:12');
INSERT INTO `admin_operation_log` VALUES ('1057', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":null,\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"13\",null],\"course\":\"2\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\"}', '2020-04-28 15:22:13', '2020-04-28 15:22:13');
INSERT INTO `admin_operation_log` VALUES ('1058', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:22:13', '2020-04-28 15:22:13');
INSERT INTO `admin_operation_log` VALUES ('1059', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:22:15', '2020-04-28 15:22:15');
INSERT INTO `admin_operation_log` VALUES ('1060', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:22:16', '2020-04-28 15:22:16');
INSERT INTO `admin_operation_log` VALUES ('1061', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:22:18', '2020-04-28 15:22:18');
INSERT INTO `admin_operation_log` VALUES ('1062', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:22:19', '2020-04-28 15:22:19');
INSERT INTO `admin_operation_log` VALUES ('1063', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:22:21', '2020-04-28 15:22:21');
INSERT INTO `admin_operation_log` VALUES ('1064', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:22:23', '2020-04-28 15:22:23');
INSERT INTO `admin_operation_log` VALUES ('1065', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:22:52', '2020-04-28 15:22:52');
INSERT INTO `admin_operation_log` VALUES ('1066', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:23:06', '2020-04-28 15:23:06');
INSERT INTO `admin_operation_log` VALUES ('1067', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:23:09', '2020-04-28 15:23:09');
INSERT INTO `admin_operation_log` VALUES ('1068', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:23:24', '2020-04-28 15:23:24');
INSERT INTO `admin_operation_log` VALUES ('1069', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:23:27', '2020-04-28 15:23:27');
INSERT INTO `admin_operation_log` VALUES ('1070', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 15:23:31', '2020-04-28 15:23:31');
INSERT INTO `admin_operation_log` VALUES ('1071', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"16\",null],\"course\":\"3\",\"num\":null,\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\\/edit\"}', '2020-04-28 15:23:40', '2020-04-28 15:23:40');
INSERT INTO `admin_operation_log` VALUES ('1072', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:23:40', '2020-04-28 15:23:40');
INSERT INTO `admin_operation_log` VALUES ('1073', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:23:48', '2020-04-28 15:23:48');
INSERT INTO `admin_operation_log` VALUES ('1074', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:24:27', '2020-04-28 15:24:27');
INSERT INTO `admin_operation_log` VALUES ('1075', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:24:29', '2020-04-28 15:24:29');
INSERT INTO `admin_operation_log` VALUES ('1076', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:24:30', '2020-04-28 15:24:30');
INSERT INTO `admin_operation_log` VALUES ('1077', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:24:32', '2020-04-28 15:24:32');
INSERT INTO `admin_operation_log` VALUES ('1078', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:25:16', '2020-04-28 15:25:16');
INSERT INTO `admin_operation_log` VALUES ('1079', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:25:29', '2020-04-28 15:25:29');
INSERT INTO `admin_operation_log` VALUES ('1080', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"13\",\"15\",null],\"course\":\"2\",\"num\":\"111\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 15:25:40', '2020-04-28 15:25:40');
INSERT INTO `admin_operation_log` VALUES ('1081', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:25:40', '2020-04-28 15:25:40');
INSERT INTO `admin_operation_log` VALUES ('1082', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:25:42', '2020-04-28 15:25:42');
INSERT INTO `admin_operation_log` VALUES ('1083', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:25:45', '2020-04-28 15:25:45');
INSERT INTO `admin_operation_log` VALUES ('1084', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:25:51', '2020-04-28 15:25:51');
INSERT INTO `admin_operation_log` VALUES ('1085', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:25:58', '2020-04-28 15:25:58');
INSERT INTO `admin_operation_log` VALUES ('1086', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:27:57', '2020-04-28 15:27:57');
INSERT INTO `admin_operation_log` VALUES ('1087', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:23', '2020-04-28 15:28:23');
INSERT INTO `admin_operation_log` VALUES ('1088', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:24', '2020-04-28 15:28:24');
INSERT INTO `admin_operation_log` VALUES ('1089', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:24', '2020-04-28 15:28:24');
INSERT INTO `admin_operation_log` VALUES ('1090', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:25', '2020-04-28 15:28:25');
INSERT INTO `admin_operation_log` VALUES ('1091', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:30', '2020-04-28 15:28:30');
INSERT INTO `admin_operation_log` VALUES ('1092', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:31', '2020-04-28 15:28:31');
INSERT INTO `admin_operation_log` VALUES ('1093', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:38', '2020-04-28 15:28:38');
INSERT INTO `admin_operation_log` VALUES ('1094', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:39', '2020-04-28 15:28:39');
INSERT INTO `admin_operation_log` VALUES ('1095', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:40', '2020-04-28 15:28:40');
INSERT INTO `admin_operation_log` VALUES ('1096', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:42', '2020-04-28 15:28:42');
INSERT INTO `admin_operation_log` VALUES ('1097', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:46', '2020-04-28 15:28:46');
INSERT INTO `admin_operation_log` VALUES ('1098', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:47', '2020-04-28 15:28:47');
INSERT INTO `admin_operation_log` VALUES ('1099', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:48', '2020-04-28 15:28:48');
INSERT INTO `admin_operation_log` VALUES ('1100', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:50', '2020-04-28 15:28:50');
INSERT INTO `admin_operation_log` VALUES ('1101', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:51', '2020-04-28 15:28:51');
INSERT INTO `admin_operation_log` VALUES ('1102', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:28:52', '2020-04-28 15:28:52');
INSERT INTO `admin_operation_log` VALUES ('1103', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:29:01', '2020-04-28 15:29:01');
INSERT INTO `admin_operation_log` VALUES ('1104', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:29:02', '2020-04-28 15:29:02');
INSERT INTO `admin_operation_log` VALUES ('1105', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:29:03', '2020-04-28 15:29:03');
INSERT INTO `admin_operation_log` VALUES ('1106', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:29:05', '2020-04-28 15:29:05');
INSERT INTO `admin_operation_log` VALUES ('1107', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:29:07', '2020-04-28 15:29:07');
INSERT INTO `admin_operation_log` VALUES ('1108', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:29:16', '2020-04-28 15:29:16');
INSERT INTO `admin_operation_log` VALUES ('1109', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:29:48', '2020-04-28 15:29:48');
INSERT INTO `admin_operation_log` VALUES ('1110', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:29:49', '2020-04-28 15:29:49');
INSERT INTO `admin_operation_log` VALUES ('1111', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:04', '2020-04-28 15:30:04');
INSERT INTO `admin_operation_log` VALUES ('1112', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:06', '2020-04-28 15:30:06');
INSERT INTO `admin_operation_log` VALUES ('1113', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:11', '2020-04-28 15:30:11');
INSERT INTO `admin_operation_log` VALUES ('1114', '1', 'admin/set-classes/2', 'PUT', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-28 00:00:00\",\"hour\":[\"11\",\"13\",null],\"course\":\"3\",\"num\":\"99\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 15:30:16', '2020-04-28 15:30:16');
INSERT INTO `admin_operation_log` VALUES ('1115', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:16', '2020-04-28 15:30:16');
INSERT INTO `admin_operation_log` VALUES ('1116', '1', 'admin/set-classes/2', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:18', '2020-04-28 15:30:18');
INSERT INTO `admin_operation_log` VALUES ('1117', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:24', '2020-04-28 15:30:24');
INSERT INTO `admin_operation_log` VALUES ('1118', '1', 'admin/set-classes/2/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:49', '2020-04-28 15:30:49');
INSERT INTO `admin_operation_log` VALUES ('1119', '1', 'admin/set-classes/2', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:54', '2020-04-28 15:30:54');
INSERT INTO `admin_operation_log` VALUES ('1120', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-28 15:30:57', '2020-04-28 15:30:57');
INSERT INTO `admin_operation_log` VALUES ('1121', '1', 'admin/set-classes', 'POST', '192.168.1.197', '{\"teacher\":\"3\",\"time\":\"2020-04-30 00:00:00\",\"hour\":[\"11\",\"14\",\"15\",null],\"course\":\"2\",\"num\":\"11\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/2\"}', '2020-04-28 15:31:12', '2020-04-28 15:31:12');
INSERT INTO `admin_operation_log` VALUES ('1122', '1', 'admin/set-classes/2', 'GET', '192.168.1.197', '[]', '2020-04-28 15:31:12', '2020-04-28 15:31:12');
INSERT INTO `admin_operation_log` VALUES ('1123', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:31:14', '2020-04-28 15:31:14');
INSERT INTO `admin_operation_log` VALUES ('1124', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:33:15', '2020-04-28 15:33:15');
INSERT INTO `admin_operation_log` VALUES ('1125', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-30 00:00:00\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:33:20', '2020-04-28 15:33:20');
INSERT INTO `admin_operation_log` VALUES ('1126', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-30 00:00:00\"}', '2020-04-28 15:33:26', '2020-04-28 15:33:26');
INSERT INTO `admin_operation_log` VALUES ('1127', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-30\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:33:34', '2020-04-28 15:33:34');
INSERT INTO `admin_operation_log` VALUES ('1128', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-30\"}', '2020-04-28 15:33:36', '2020-04-28 15:33:36');
INSERT INTO `admin_operation_log` VALUES ('1129', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-30\"}', '2020-04-28 15:33:45', '2020-04-28 15:33:45');
INSERT INTO `admin_operation_log` VALUES ('1130', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-30 00:00:00\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:33:46', '2020-04-28 15:33:46');
INSERT INTO `admin_operation_log` VALUES ('1131', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-30 00:00:00\"}', '2020-04-28 15:33:47', '2020-04-28 15:33:47');
INSERT INTO `admin_operation_log` VALUES ('1132', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-30 00:00:00\"}', '2020-04-28 15:33:48', '2020-04-28 15:33:48');
INSERT INTO `admin_operation_log` VALUES ('1133', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:33:53', '2020-04-28 15:33:53');
INSERT INTO `admin_operation_log` VALUES ('1134', '1', 'admin/set-classes/4/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:34:08', '2020-04-28 15:34:08');
INSERT INTO `admin_operation_log` VALUES ('1135', '1', 'admin/set-classes/4/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:34:10', '2020-04-28 15:34:10');
INSERT INTO `admin_operation_log` VALUES ('1136', '1', 'admin/set-classes/4', 'PUT', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-30 00:00:00\",\"hour\":[\"11\",\"14\",\"15\",null],\"course\":\"2\",\"num\":\"11\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 15:34:13', '2020-04-28 15:34:13');
INSERT INTO `admin_operation_log` VALUES ('1137', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:34:13', '2020-04-28 15:34:13');
INSERT INTO `admin_operation_log` VALUES ('1138', '1', 'admin/set-classes/4', 'GET', '192.168.1.197', '[]', '2020-04-28 15:34:17', '2020-04-28 15:34:17');
INSERT INTO `admin_operation_log` VALUES ('1139', '1', 'admin/set-classes/4/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:34:35', '2020-04-28 15:34:35');
INSERT INTO `admin_operation_log` VALUES ('1140', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:35:26', '2020-04-28 15:35:26');
INSERT INTO `admin_operation_log` VALUES ('1141', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-38\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:35:35', '2020-04-28 15:35:35');
INSERT INTO `admin_operation_log` VALUES ('1142', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-38\"}', '2020-04-28 15:35:38', '2020-04-28 15:35:38');
INSERT INTO `admin_operation_log` VALUES ('1143', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-28\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:35:42', '2020-04-28 15:35:42');
INSERT INTO `admin_operation_log` VALUES ('1144', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"id\":null,\"time\":\"2020-04-28\"}', '2020-04-28 15:35:48', '2020-04-28 15:35:48');
INSERT INTO `admin_operation_log` VALUES ('1145', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"time\":\"2020-04-28\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:35:52', '2020-04-28 15:35:52');
INSERT INTO `admin_operation_log` VALUES ('1146', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"time\":\"2020-04-28\",\"per_page\":\"100\"}', '2020-04-28 15:35:54', '2020-04-28 15:35:54');
INSERT INTO `admin_operation_log` VALUES ('1147', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:05', '2020-04-28 15:37:05');
INSERT INTO `admin_operation_log` VALUES ('1148', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:07', '2020-04-28 15:37:07');
INSERT INTO `admin_operation_log` VALUES ('1149', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:08', '2020-04-28 15:37:08');
INSERT INTO `admin_operation_log` VALUES ('1150', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:15', '2020-04-28 15:37:15');
INSERT INTO `admin_operation_log` VALUES ('1151', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:21', '2020-04-28 15:37:21');
INSERT INTO `admin_operation_log` VALUES ('1152', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:34', '2020-04-28 15:37:34');
INSERT INTO `admin_operation_log` VALUES ('1153', '1', 'admin/courses/1', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:37', '2020-04-28 15:37:37');
INSERT INTO `admin_operation_log` VALUES ('1154', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:42', '2020-04-28 15:37:42');
INSERT INTO `admin_operation_log` VALUES ('1155', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 15:37:45', '2020-04-28 15:37:45');
INSERT INTO `admin_operation_log` VALUES ('1156', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 15:38:14', '2020-04-28 15:38:14');
INSERT INTO `admin_operation_log` VALUES ('1157', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:38:29', '2020-04-28 15:38:29');
INSERT INTO `admin_operation_log` VALUES ('1158', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:38:42', '2020-04-28 15:38:42');
INSERT INTO `admin_operation_log` VALUES ('1159', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:38:45', '2020-04-28 15:38:45');
INSERT INTO `admin_operation_log` VALUES ('1160', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:38:49', '2020-04-28 15:38:49');
INSERT INTO `admin_operation_log` VALUES ('1161', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:39:15', '2020-04-28 15:39:15');
INSERT INTO `admin_operation_log` VALUES ('1162', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:39:28', '2020-04-28 15:39:28');
INSERT INTO `admin_operation_log` VALUES ('1163', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:39:31', '2020-04-28 15:39:31');
INSERT INTO `admin_operation_log` VALUES ('1164', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:39:57', '2020-04-28 15:39:57');
INSERT INTO `admin_operation_log` VALUES ('1165', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:41:02', '2020-04-28 15:41:02');
INSERT INTO `admin_operation_log` VALUES ('1166', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:41:02', '2020-04-28 15:41:02');
INSERT INTO `admin_operation_log` VALUES ('1167', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 15:41:10', '2020-04-28 15:41:10');
INSERT INTO `admin_operation_log` VALUES ('1168', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:41:18', '2020-04-28 15:41:18');
INSERT INTO `admin_operation_log` VALUES ('1169', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:41:20', '2020-04-28 15:41:20');
INSERT INTO `admin_operation_log` VALUES ('1170', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:41:54', '2020-04-28 15:41:54');
INSERT INTO `admin_operation_log` VALUES ('1171', '1', 'admin/scheduling', 'GET', '192.168.1.197', '[]', '2020-04-28 15:42:15', '2020-04-28 15:42:15');
INSERT INTO `admin_operation_log` VALUES ('1172', '1', 'admin/redis', 'GET', '192.168.1.197', '[]', '2020-04-28 15:42:17', '2020-04-28 15:42:17');
INSERT INTO `admin_operation_log` VALUES ('1173', '1', 'admin/id-validator', 'GET', '192.168.1.197', '[]', '2020-04-28 15:42:19', '2020-04-28 15:42:19');
INSERT INTO `admin_operation_log` VALUES ('1174', '1', 'admin/config', 'GET', '192.168.1.197', '[]', '2020-04-28 15:42:20', '2020-04-28 15:42:20');
INSERT INTO `admin_operation_log` VALUES ('1175', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:42:33', '2020-04-28 15:42:33');
INSERT INTO `admin_operation_log` VALUES ('1176', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:42:33', '2020-04-28 15:42:33');
INSERT INTO `admin_operation_log` VALUES ('1177', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 15:42:43', '2020-04-28 15:42:43');
INSERT INTO `admin_operation_log` VALUES ('1178', '1', 'admin/auth/menu/18', 'DELETE', '192.168.1.197', '{\"_method\":\"delete\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:42:48', '2020-04-28 15:42:48');
INSERT INTO `admin_operation_log` VALUES ('1179', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:42:48', '2020-04-28 15:42:48');
INSERT INTO `admin_operation_log` VALUES ('1180', '1', 'admin/auth/menu/18', 'DELETE', '192.168.1.197', '{\"_method\":\"delete\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:42:52', '2020-04-28 15:42:52');
INSERT INTO `admin_operation_log` VALUES ('1181', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:42:52', '2020-04-28 15:42:52');
INSERT INTO `admin_operation_log` VALUES ('1182', '1', 'admin/auth/menu/17', 'DELETE', '192.168.1.197', '{\"_method\":\"delete\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:42:56', '2020-04-28 15:42:56');
INSERT INTO `admin_operation_log` VALUES ('1183', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:42:56', '2020-04-28 15:42:56');
INSERT INTO `admin_operation_log` VALUES ('1184', '1', 'admin/auth/menu/16', 'DELETE', '192.168.1.197', '{\"_method\":\"delete\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:42:59', '2020-04-28 15:42:59');
INSERT INTO `admin_operation_log` VALUES ('1185', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:42:59', '2020-04-28 15:42:59');
INSERT INTO `admin_operation_log` VALUES ('1186', '1', 'admin/auth/menu/15', 'DELETE', '192.168.1.197', '{\"_method\":\"delete\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:43:01', '2020-04-28 15:43:01');
INSERT INTO `admin_operation_log` VALUES ('1187', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:43:01', '2020-04-28 15:43:01');
INSERT INTO `admin_operation_log` VALUES ('1188', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:04', '2020-04-28 15:43:04');
INSERT INTO `admin_operation_log` VALUES ('1189', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:04', '2020-04-28 15:43:04');
INSERT INTO `admin_operation_log` VALUES ('1190', '1', 'admin/logs', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:06', '2020-04-28 15:43:06');
INSERT INTO `admin_operation_log` VALUES ('1191', '1', 'admin/helpers/terminal/database', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:12', '2020-04-28 15:43:12');
INSERT INTO `admin_operation_log` VALUES ('1192', '1', 'admin/helpers/scaffold', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:13', '2020-04-28 15:43:13');
INSERT INTO `admin_operation_log` VALUES ('1193', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:15', '2020-04-28 15:43:15');
INSERT INTO `admin_operation_log` VALUES ('1194', '1', 'admin/helpers/routes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:16', '2020-04-28 15:43:16');
INSERT INTO `admin_operation_log` VALUES ('1195', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:21', '2020-04-28 15:43:21');
INSERT INTO `admin_operation_log` VALUES ('1196', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:43:24', '2020-04-28 15:43:24');
INSERT INTO `admin_operation_log` VALUES ('1197', '1', 'admin/media', 'GET', '192.168.1.197', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:43:25', '2020-04-28 15:43:25');
INSERT INTO `admin_operation_log` VALUES ('1198', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:31', '2020-04-28 15:43:31');
INSERT INTO `admin_operation_log` VALUES ('1199', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:31', '2020-04-28 15:43:31');
INSERT INTO `admin_operation_log` VALUES ('1200', '1', 'admin/auth/menu/1', 'DELETE', '192.168.1.197', '{\"_method\":\"delete\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:43:35', '2020-04-28 15:43:35');
INSERT INTO `admin_operation_log` VALUES ('1201', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:43:35', '2020-04-28 15:43:35');
INSERT INTO `admin_operation_log` VALUES ('1202', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:42', '2020-04-28 15:43:42');
INSERT INTO `admin_operation_log` VALUES ('1203', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:42', '2020-04-28 15:43:42');
INSERT INTO `admin_operation_log` VALUES ('1204', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 15:43:47', '2020-04-28 15:43:47');
INSERT INTO `admin_operation_log` VALUES ('1205', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:44:29', '2020-04-28 15:44:29');
INSERT INTO `admin_operation_log` VALUES ('1206', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:44:29', '2020-04-28 15:44:29');
INSERT INTO `admin_operation_log` VALUES ('1207', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-28 15:44:38', '2020-04-28 15:44:38');
INSERT INTO `admin_operation_log` VALUES ('1208', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 15:44:39', '2020-04-28 15:44:39');
INSERT INTO `admin_operation_log` VALUES ('1209', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 15:44:42', '2020-04-28 15:44:42');
INSERT INTO `admin_operation_log` VALUES ('1210', '1', 'admin/logs', 'GET', '192.168.1.197', '[]', '2020-04-28 15:44:47', '2020-04-28 15:44:47');
INSERT INTO `admin_operation_log` VALUES ('1211', '1', 'admin/auth/menu/14', 'DELETE', '192.168.1.197', '{\"_method\":\"delete\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:44:53', '2020-04-28 15:44:53');
INSERT INTO `admin_operation_log` VALUES ('1212', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:44:54', '2020-04-28 15:44:54');
INSERT INTO `admin_operation_log` VALUES ('1213', '1', 'admin/auth/menu/9', 'DELETE', '192.168.1.197', '{\"_method\":\"delete\",\"_token\":\"WY09RJyALnvREBwWdCBl5PBNxsAqhZp5MZ6bEtDv\"}', '2020-04-28 15:44:57', '2020-04-28 15:44:57');
INSERT INTO `admin_operation_log` VALUES ('1214', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:44:57', '2020-04-28 15:44:57');
INSERT INTO `admin_operation_log` VALUES ('1215', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:44:59', '2020-04-28 15:44:59');
INSERT INTO `admin_operation_log` VALUES ('1216', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:00', '2020-04-28 15:45:00');
INSERT INTO `admin_operation_log` VALUES ('1217', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:02', '2020-04-28 15:45:02');
INSERT INTO `admin_operation_log` VALUES ('1218', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:02', '2020-04-28 15:45:02');
INSERT INTO `admin_operation_log` VALUES ('1219', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:04', '2020-04-28 15:45:04');
INSERT INTO `admin_operation_log` VALUES ('1220', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:07', '2020-04-28 15:45:07');
INSERT INTO `admin_operation_log` VALUES ('1221', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:11', '2020-04-28 15:45:11');
INSERT INTO `admin_operation_log` VALUES ('1222', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:12', '2020-04-28 15:45:12');
INSERT INTO `admin_operation_log` VALUES ('1223', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:12', '2020-04-28 15:45:12');
INSERT INTO `admin_operation_log` VALUES ('1224', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:13', '2020-04-28 15:45:13');
INSERT INTO `admin_operation_log` VALUES ('1225', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:13', '2020-04-28 15:45:13');
INSERT INTO `admin_operation_log` VALUES ('1226', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:13', '2020-04-28 15:45:13');
INSERT INTO `admin_operation_log` VALUES ('1227', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:25', '2020-04-28 15:45:25');
INSERT INTO `admin_operation_log` VALUES ('1228', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:57', '2020-04-28 15:45:57');
INSERT INTO `admin_operation_log` VALUES ('1229', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:45:58', '2020-04-28 15:45:58');
INSERT INTO `admin_operation_log` VALUES ('1230', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:46:08', '2020-04-28 15:46:08');
INSERT INTO `admin_operation_log` VALUES ('1231', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:46:28', '2020-04-28 15:46:28');
INSERT INTO `admin_operation_log` VALUES ('1232', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:46:28', '2020-04-28 15:46:28');
INSERT INTO `admin_operation_log` VALUES ('1233', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:46:34', '2020-04-28 15:46:34');
INSERT INTO `admin_operation_log` VALUES ('1234', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 15:46:42', '2020-04-28 15:46:42');
INSERT INTO `admin_operation_log` VALUES ('1235', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 15:46:47', '2020-04-28 15:46:47');
INSERT INTO `admin_operation_log` VALUES ('1236', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:49:45', '2020-04-28 15:49:45');
INSERT INTO `admin_operation_log` VALUES ('1237', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:49:46', '2020-04-28 15:49:46');
INSERT INTO `admin_operation_log` VALUES ('1238', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:49:46', '2020-04-28 15:49:46');
INSERT INTO `admin_operation_log` VALUES ('1239', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:49:47', '2020-04-28 15:49:47');
INSERT INTO `admin_operation_log` VALUES ('1240', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:49:49', '2020-04-28 15:49:49');
INSERT INTO `admin_operation_log` VALUES ('1241', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:50:36', '2020-04-28 15:50:36');
INSERT INTO `admin_operation_log` VALUES ('1242', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:50:40', '2020-04-28 15:50:40');
INSERT INTO `admin_operation_log` VALUES ('1243', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:50:40', '2020-04-28 15:50:40');
INSERT INTO `admin_operation_log` VALUES ('1244', '1', 'admin/auth/logout', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:50:44', '2020-04-28 15:50:44');
INSERT INTO `admin_operation_log` VALUES ('1245', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:50:47', '2020-04-28 15:50:47');
INSERT INTO `admin_operation_log` VALUES ('1246', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:50:47', '2020-04-28 15:50:47');
INSERT INTO `admin_operation_log` VALUES ('1247', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:50:58', '2020-04-28 15:50:58');
INSERT INTO `admin_operation_log` VALUES ('1248', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 15:51:01', '2020-04-28 15:51:01');
INSERT INTO `admin_operation_log` VALUES ('1249', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-28 15:51:17', '2020-04-28 15:51:17');
INSERT INTO `admin_operation_log` VALUES ('1250', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:51:21', '2020-04-28 15:51:21');
INSERT INTO `admin_operation_log` VALUES ('1251', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:52:55', '2020-04-28 15:52:55');
INSERT INTO `admin_operation_log` VALUES ('1252', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:04', '2020-04-28 15:53:04');
INSERT INTO `admin_operation_log` VALUES ('1253', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:13', '2020-04-28 15:53:13');
INSERT INTO `admin_operation_log` VALUES ('1254', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:13', '2020-04-28 15:53:13');
INSERT INTO `admin_operation_log` VALUES ('1255', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:19', '2020-04-28 15:53:19');
INSERT INTO `admin_operation_log` VALUES ('1256', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:33', '2020-04-28 15:53:33');
INSERT INTO `admin_operation_log` VALUES ('1257', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:33', '2020-04-28 15:53:33');
INSERT INTO `admin_operation_log` VALUES ('1258', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:35', '2020-04-28 15:53:35');
INSERT INTO `admin_operation_log` VALUES ('1259', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:35', '2020-04-28 15:53:35');
INSERT INTO `admin_operation_log` VALUES ('1260', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:38', '2020-04-28 15:53:38');
INSERT INTO `admin_operation_log` VALUES ('1261', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:57', '2020-04-28 15:53:57');
INSERT INTO `admin_operation_log` VALUES ('1262', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:53:57', '2020-04-28 15:53:57');
INSERT INTO `admin_operation_log` VALUES ('1263', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 15:55:31', '2020-04-28 15:55:31');
INSERT INTO `admin_operation_log` VALUES ('1264', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 15:55:44', '2020-04-28 15:55:44');
INSERT INTO `admin_operation_log` VALUES ('1265', '1', 'admin/auth/menu', 'GET', '192.168.1.197', '[]', '2020-04-28 15:55:47', '2020-04-28 15:55:47');
INSERT INTO `admin_operation_log` VALUES ('1266', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-28 15:56:13', '2020-04-28 15:56:13');
INSERT INTO `admin_operation_log` VALUES ('1267', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 15:56:21', '2020-04-28 15:56:21');
INSERT INTO `admin_operation_log` VALUES ('1268', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 15:56:51', '2020-04-28 15:56:51');
INSERT INTO `admin_operation_log` VALUES ('1269', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:57:19', '2020-04-28 15:57:19');
INSERT INTO `admin_operation_log` VALUES ('1270', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:58:19', '2020-04-28 15:58:19');
INSERT INTO `admin_operation_log` VALUES ('1271', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:58:19', '2020-04-28 15:58:19');
INSERT INTO `admin_operation_log` VALUES ('1272', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 15:58:20', '2020-04-28 15:58:20');
INSERT INTO `admin_operation_log` VALUES ('1273', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 15:58:20', '2020-04-28 15:58:20');
INSERT INTO `admin_operation_log` VALUES ('1274', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 15:58:21', '2020-04-28 15:58:21');
INSERT INTO `admin_operation_log` VALUES ('1275', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 15:59:30', '2020-04-28 15:59:30');
INSERT INTO `admin_operation_log` VALUES ('1276', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 15:59:31', '2020-04-28 15:59:31');
INSERT INTO `admin_operation_log` VALUES ('1277', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 15:59:32', '2020-04-28 15:59:32');
INSERT INTO `admin_operation_log` VALUES ('1278', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 15:59:33', '2020-04-28 15:59:33');
INSERT INTO `admin_operation_log` VALUES ('1279', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:00:56', '2020-04-28 16:00:56');
INSERT INTO `admin_operation_log` VALUES ('1280', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:00:56', '2020-04-28 16:00:56');
INSERT INTO `admin_operation_log` VALUES ('1281', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:02:16', '2020-04-28 16:02:16');
INSERT INTO `admin_operation_log` VALUES ('1282', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:02:16', '2020-04-28 16:02:16');
INSERT INTO `admin_operation_log` VALUES ('1283', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:03:09', '2020-04-28 16:03:09');
INSERT INTO `admin_operation_log` VALUES ('1284', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:03:09', '2020-04-28 16:03:09');
INSERT INTO `admin_operation_log` VALUES ('1285', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:03:11', '2020-04-28 16:03:11');
INSERT INTO `admin_operation_log` VALUES ('1286', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:03:11', '2020-04-28 16:03:11');
INSERT INTO `admin_operation_log` VALUES ('1287', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:04:39', '2020-04-28 16:04:39');
INSERT INTO `admin_operation_log` VALUES ('1288', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:04:40', '2020-04-28 16:04:40');
INSERT INTO `admin_operation_log` VALUES ('1289', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:04:41', '2020-04-28 16:04:41');
INSERT INTO `admin_operation_log` VALUES ('1290', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:04:41', '2020-04-28 16:04:41');
INSERT INTO `admin_operation_log` VALUES ('1291', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:04:41', '2020-04-28 16:04:41');
INSERT INTO `admin_operation_log` VALUES ('1292', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:04:42', '2020-04-28 16:04:42');
INSERT INTO `admin_operation_log` VALUES ('1293', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 16:04:43', '2020-04-28 16:04:43');
INSERT INTO `admin_operation_log` VALUES ('1294', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:05:56', '2020-04-28 16:05:56');
INSERT INTO `admin_operation_log` VALUES ('1295', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:05:56', '2020-04-28 16:05:56');
INSERT INTO `admin_operation_log` VALUES ('1296', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:05:57', '2020-04-28 16:05:57');
INSERT INTO `admin_operation_log` VALUES ('1297', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:05:57', '2020-04-28 16:05:57');
INSERT INTO `admin_operation_log` VALUES ('1298', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:05:58', '2020-04-28 16:05:58');
INSERT INTO `admin_operation_log` VALUES ('1299', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:05:58', '2020-04-28 16:05:58');
INSERT INTO `admin_operation_log` VALUES ('1300', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:08:14', '2020-04-28 16:08:14');
INSERT INTO `admin_operation_log` VALUES ('1301', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:08:14', '2020-04-28 16:08:14');
INSERT INTO `admin_operation_log` VALUES ('1302', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:06', '2020-04-28 16:10:06');
INSERT INTO `admin_operation_log` VALUES ('1303', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:06', '2020-04-28 16:10:06');
INSERT INTO `admin_operation_log` VALUES ('1304', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:06', '2020-04-28 16:10:06');
INSERT INTO `admin_operation_log` VALUES ('1305', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:07', '2020-04-28 16:10:07');
INSERT INTO `admin_operation_log` VALUES ('1306', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:07', '2020-04-28 16:10:07');
INSERT INTO `admin_operation_log` VALUES ('1307', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:07', '2020-04-28 16:10:07');
INSERT INTO `admin_operation_log` VALUES ('1308', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:08', '2020-04-28 16:10:08');
INSERT INTO `admin_operation_log` VALUES ('1309', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:11', '2020-04-28 16:10:11');
INSERT INTO `admin_operation_log` VALUES ('1310', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:11', '2020-04-28 16:10:11');
INSERT INTO `admin_operation_log` VALUES ('1311', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:11', '2020-04-28 16:10:11');
INSERT INTO `admin_operation_log` VALUES ('1312', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:16', '2020-04-28 16:10:16');
INSERT INTO `admin_operation_log` VALUES ('1313', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:17', '2020-04-28 16:10:17');
INSERT INTO `admin_operation_log` VALUES ('1314', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:18', '2020-04-28 16:10:18');
INSERT INTO `admin_operation_log` VALUES ('1315', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:19', '2020-04-28 16:10:19');
INSERT INTO `admin_operation_log` VALUES ('1316', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:21', '2020-04-28 16:10:21');
INSERT INTO `admin_operation_log` VALUES ('1317', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:21', '2020-04-28 16:10:21');
INSERT INTO `admin_operation_log` VALUES ('1318', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:22', '2020-04-28 16:10:22');
INSERT INTO `admin_operation_log` VALUES ('1319', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-28 16:10:25', '2020-04-28 16:10:25');
INSERT INTO `admin_operation_log` VALUES ('1320', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 16:31:03', '2020-04-28 16:31:03');
INSERT INTO `admin_operation_log` VALUES ('1321', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 16:31:04', '2020-04-28 16:31:04');
INSERT INTO `admin_operation_log` VALUES ('1322', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 16:31:04', '2020-04-28 16:31:04');
INSERT INTO `admin_operation_log` VALUES ('1323', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:35', '2020-04-28 17:10:35');
INSERT INTO `admin_operation_log` VALUES ('1324', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:35', '2020-04-28 17:10:35');
INSERT INTO `admin_operation_log` VALUES ('1325', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:35', '2020-04-28 17:10:35');
INSERT INTO `admin_operation_log` VALUES ('1326', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:37', '2020-04-28 17:10:37');
INSERT INTO `admin_operation_log` VALUES ('1327', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:38', '2020-04-28 17:10:38');
INSERT INTO `admin_operation_log` VALUES ('1328', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:39', '2020-04-28 17:10:39');
INSERT INTO `admin_operation_log` VALUES ('1329', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:39', '2020-04-28 17:10:39');
INSERT INTO `admin_operation_log` VALUES ('1330', '1', 'admin/auth/users', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:41', '2020-04-28 17:10:41');
INSERT INTO `admin_operation_log` VALUES ('1331', '1', 'admin/auth/roles', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:41', '2020-04-28 17:10:41');
INSERT INTO `admin_operation_log` VALUES ('1332', '1', 'admin/auth/permissions', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:42', '2020-04-28 17:10:42');
INSERT INTO `admin_operation_log` VALUES ('1333', '1', 'admin/media', 'GET', '192.168.1.197', '[]', '2020-04-28 17:10:42', '2020-04-28 17:10:42');
INSERT INTO `admin_operation_log` VALUES ('1334', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 17:18:58', '2020-04-28 17:18:58');
INSERT INTO `admin_operation_log` VALUES ('1335', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 17:18:59', '2020-04-28 17:18:59');
INSERT INTO `admin_operation_log` VALUES ('1336', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 17:18:59', '2020-04-28 17:18:59');
INSERT INTO `admin_operation_log` VALUES ('1337', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 17:44:54', '2020-04-28 17:44:54');
INSERT INTO `admin_operation_log` VALUES ('1338', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 17:44:56', '2020-04-28 17:44:56');
INSERT INTO `admin_operation_log` VALUES ('1339', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 17:44:57', '2020-04-28 17:44:57');
INSERT INTO `admin_operation_log` VALUES ('1340', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 17:44:57', '2020-04-28 17:44:57');
INSERT INTO `admin_operation_log` VALUES ('1341', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:00', '2020-04-28 17:45:00');
INSERT INTO `admin_operation_log` VALUES ('1342', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:40', '2020-04-28 17:45:40');
INSERT INTO `admin_operation_log` VALUES ('1343', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:40', '2020-04-28 17:45:40');
INSERT INTO `admin_operation_log` VALUES ('1344', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:40', '2020-04-28 17:45:40');
INSERT INTO `admin_operation_log` VALUES ('1345', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:43', '2020-04-28 17:45:43');
INSERT INTO `admin_operation_log` VALUES ('1346', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:43', '2020-04-28 17:45:43');
INSERT INTO `admin_operation_log` VALUES ('1347', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:43', '2020-04-28 17:45:43');
INSERT INTO `admin_operation_log` VALUES ('1348', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:47', '2020-04-28 17:45:47');
INSERT INTO `admin_operation_log` VALUES ('1349', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:45:48', '2020-04-28 17:45:48');
INSERT INTO `admin_operation_log` VALUES ('1350', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:46:12', '2020-04-28 17:46:12');
INSERT INTO `admin_operation_log` VALUES ('1351', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:47:39', '2020-04-28 17:47:39');
INSERT INTO `admin_operation_log` VALUES ('1352', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:47:40', '2020-04-28 17:47:40');
INSERT INTO `admin_operation_log` VALUES ('1353', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:47:40', '2020-04-28 17:47:40');
INSERT INTO `admin_operation_log` VALUES ('1354', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:47:40', '2020-04-28 17:47:40');
INSERT INTO `admin_operation_log` VALUES ('1355', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:47:40', '2020-04-28 17:47:40');
INSERT INTO `admin_operation_log` VALUES ('1356', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:48:24', '2020-04-28 17:48:24');
INSERT INTO `admin_operation_log` VALUES ('1357', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:48:25', '2020-04-28 17:48:25');
INSERT INTO `admin_operation_log` VALUES ('1358', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:48:25', '2020-04-28 17:48:25');
INSERT INTO `admin_operation_log` VALUES ('1359', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:48:25', '2020-04-28 17:48:25');
INSERT INTO `admin_operation_log` VALUES ('1360', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:48:25', '2020-04-28 17:48:25');
INSERT INTO `admin_operation_log` VALUES ('1361', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:48:26', '2020-04-28 17:48:26');
INSERT INTO `admin_operation_log` VALUES ('1362', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:49:11', '2020-04-28 17:49:11');
INSERT INTO `admin_operation_log` VALUES ('1363', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:49:11', '2020-04-28 17:49:11');
INSERT INTO `admin_operation_log` VALUES ('1364', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:49:11', '2020-04-28 17:49:11');
INSERT INTO `admin_operation_log` VALUES ('1365', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:49:12', '2020-04-28 17:49:12');
INSERT INTO `admin_operation_log` VALUES ('1366', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:49:12', '2020-04-28 17:49:12');
INSERT INTO `admin_operation_log` VALUES ('1367', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:50:35', '2020-04-28 17:50:35');
INSERT INTO `admin_operation_log` VALUES ('1368', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 17:50:52', '2020-04-28 17:50:52');
INSERT INTO `admin_operation_log` VALUES ('1369', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-28 17:51:46', '2020-04-28 17:51:46');
INSERT INTO `admin_operation_log` VALUES ('1370', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 17:51:53', '2020-04-28 17:51:53');
INSERT INTO `admin_operation_log` VALUES ('1371', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-30 10:00:00\",\"hour\":[\"11\",\"13\",\"15\",null],\"course\":\"2\",\"num\":\"111\",\"_token\":\"D1bsdglxQEoIbu0wmIGMKQxzTMfZgUYeV3BLJLgT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-28 17:52:19', '2020-04-28 17:52:19');
INSERT INTO `admin_operation_log` VALUES ('1372', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 17:52:19', '2020-04-28 17:52:19');
INSERT INTO `admin_operation_log` VALUES ('1373', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 17:52:20', '2020-04-28 17:52:20');
INSERT INTO `admin_operation_log` VALUES ('1374', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 17:52:23', '2020-04-28 17:52:23');
INSERT INTO `admin_operation_log` VALUES ('1375', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 17:52:24', '2020-04-28 17:52:24');
INSERT INTO `admin_operation_log` VALUES ('1376', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 18:00:14', '2020-04-28 18:00:14');
INSERT INTO `admin_operation_log` VALUES ('1377', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-28 18:00:33', '2020-04-28 18:00:33');
INSERT INTO `admin_operation_log` VALUES ('1378', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-28 18:00:33', '2020-04-28 18:00:33');
INSERT INTO `admin_operation_log` VALUES ('1379', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-28 18:00:33', '2020-04-28 18:00:33');
INSERT INTO `admin_operation_log` VALUES ('1380', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 18:00:38', '2020-04-28 18:00:38');
INSERT INTO `admin_operation_log` VALUES ('1381', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 18:00:47', '2020-04-28 18:00:47');
INSERT INTO `admin_operation_log` VALUES ('1382', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 18:00:51', '2020-04-28 18:00:51');
INSERT INTO `admin_operation_log` VALUES ('1383', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 18:00:54', '2020-04-28 18:00:54');
INSERT INTO `admin_operation_log` VALUES ('1384', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"1969-12-31 01:00:00\",\"hour\":[\"11\",\"13\",\"15\",null],\"course\":\"2\",\"num\":\"111\",\"_token\":\"D1bsdglxQEoIbu0wmIGMKQxzTMfZgUYeV3BLJLgT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\"}', '2020-04-28 18:01:16', '2020-04-28 18:01:16');
INSERT INTO `admin_operation_log` VALUES ('1385', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 18:01:16', '2020-04-28 18:01:16');
INSERT INTO `admin_operation_log` VALUES ('1386', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 18:01:23', '2020-04-28 18:01:23');
INSERT INTO `admin_operation_log` VALUES ('1387', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 18:01:37', '2020-04-28 18:01:37');
INSERT INTO `admin_operation_log` VALUES ('1388', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-28 11:00:00\",\"hour\":[\"11\",\"13\",\"15\",null],\"course\":\"2\",\"num\":\"111\",\"_token\":\"D1bsdglxQEoIbu0wmIGMKQxzTMfZgUYeV3BLJLgT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\"}', '2020-04-28 18:01:47', '2020-04-28 18:01:47');
INSERT INTO `admin_operation_log` VALUES ('1389', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 18:01:47', '2020-04-28 18:01:47');
INSERT INTO `admin_operation_log` VALUES ('1390', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 18:01:56', '2020-04-28 18:01:56');
INSERT INTO `admin_operation_log` VALUES ('1391', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-28 18:02:24', '2020-04-28 18:02:24');
INSERT INTO `admin_operation_log` VALUES ('1392', '1', 'admin/set-classes/1', 'PUT', '192.168.1.197', '{\"teacher\":\"2\",\"time\":\"2020-04-30 11:00:00\",\"hour\":[\"11\",\"13\",\"15\",null],\"course\":\"2\",\"num\":\"111\",\"_token\":\"D1bsdglxQEoIbu0wmIGMKQxzTMfZgUYeV3BLJLgT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/1\"}', '2020-04-28 18:02:33', '2020-04-28 18:02:33');
INSERT INTO `admin_operation_log` VALUES ('1393', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 18:02:33', '2020-04-28 18:02:33');
INSERT INTO `admin_operation_log` VALUES ('1394', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 18:02:49', '2020-04-28 18:02:49');
INSERT INTO `admin_operation_log` VALUES ('1395', '1', 'admin/set-classes/1', 'GET', '192.168.1.197', '[]', '2020-04-28 18:02:51', '2020-04-28 18:02:51');
INSERT INTO `admin_operation_log` VALUES ('1396', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-28 18:02:56', '2020-04-28 18:02:56');
INSERT INTO `admin_operation_log` VALUES ('1397', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-29 07:48:48', '2020-04-29 07:48:48');
INSERT INTO `admin_operation_log` VALUES ('1398', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-29 07:48:49', '2020-04-29 07:48:49');
INSERT INTO `admin_operation_log` VALUES ('1399', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-29 08:45:58', '2020-04-29 08:45:58');
INSERT INTO `admin_operation_log` VALUES ('1400', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:56:23', '2020-04-29 09:56:23');
INSERT INTO `admin_operation_log` VALUES ('1401', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:56:46', '2020-04-29 09:56:46');
INSERT INTO `admin_operation_log` VALUES ('1402', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:58:34', '2020-04-29 09:58:34');
INSERT INTO `admin_operation_log` VALUES ('1403', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:58:35', '2020-04-29 09:58:35');
INSERT INTO `admin_operation_log` VALUES ('1404', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:58:36', '2020-04-29 09:58:36');
INSERT INTO `admin_operation_log` VALUES ('1405', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:58:37', '2020-04-29 09:58:37');
INSERT INTO `admin_operation_log` VALUES ('1406', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:58:37', '2020-04-29 09:58:37');
INSERT INTO `admin_operation_log` VALUES ('1407', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:58:38', '2020-04-29 09:58:38');
INSERT INTO `admin_operation_log` VALUES ('1408', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 09:58:38', '2020-04-29 09:58:38');
INSERT INTO `admin_operation_log` VALUES ('1409', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 11:49:31', '2020-04-29 11:49:31');
INSERT INTO `admin_operation_log` VALUES ('1410', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-29 11:49:47', '2020-04-29 11:49:47');
INSERT INTO `admin_operation_log` VALUES ('1411', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-29 12:02:50', '2020-04-29 12:02:50');
INSERT INTO `admin_operation_log` VALUES ('1412', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-29 12:22:29', '2020-04-29 12:22:29');
INSERT INTO `admin_operation_log` VALUES ('1413', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-29 12:22:37', '2020-04-29 12:22:37');
INSERT INTO `admin_operation_log` VALUES ('1414', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-29 14:42:17', '2020-04-29 14:42:17');
INSERT INTO `admin_operation_log` VALUES ('1415', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-29 14:42:18', '2020-04-29 14:42:18');
INSERT INTO `admin_operation_log` VALUES ('1416', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-29 14:42:18', '2020-04-29 14:42:18');
INSERT INTO `admin_operation_log` VALUES ('1417', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-29 16:11:19', '2020-04-29 16:11:19');
INSERT INTO `admin_operation_log` VALUES ('1418', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-30 08:46:23', '2020-04-30 08:46:23');
INSERT INTO `admin_operation_log` VALUES ('1419', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-30 08:46:41', '2020-04-30 08:46:41');
INSERT INTO `admin_operation_log` VALUES ('1420', '1', 'admin/set-classes/create', 'GET', '192.168.1.197', '[]', '2020-04-30 08:46:44', '2020-04-30 08:46:44');
INSERT INTO `admin_operation_log` VALUES ('1421', '1', 'admin/set-classes', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-30 08:47:51', '2020-04-30 08:47:51');
INSERT INTO `admin_operation_log` VALUES ('1422', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-30 08:47:53', '2020-04-30 08:47:53');
INSERT INTO `admin_operation_log` VALUES ('1423', '1', 'admin/set-classes/5/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-30 08:48:06', '2020-04-30 08:48:06');
INSERT INTO `admin_operation_log` VALUES ('1424', '1', 'admin/set-classes/5/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 08:48:08', '2020-04-30 08:48:08');
INSERT INTO `admin_operation_log` VALUES ('1425', '1', 'admin/set-classes/5', 'PUT', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-30 00:00:00\",\"hour\":[\"11\",\"15\",\"16\",null],\"course\":\"1\",\"num\":\"8\",\"_token\":\"T8KF3RTCXwARjZ3CpEbYDbRuTxZep4mm8rHDRzHs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\"}', '2020-04-30 08:48:18', '2020-04-30 08:48:18');
INSERT INTO `admin_operation_log` VALUES ('1426', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-30 08:48:18', '2020-04-30 08:48:18');
INSERT INTO `admin_operation_log` VALUES ('1427', '1', 'admin/set-classes/5', 'GET', '192.168.1.197', '[]', '2020-04-30 08:48:22', '2020-04-30 08:48:22');
INSERT INTO `admin_operation_log` VALUES ('1428', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 09:35:46', '2020-04-30 09:35:46');
INSERT INTO `admin_operation_log` VALUES ('1429', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 09:35:47', '2020-04-30 09:35:47');
INSERT INTO `admin_operation_log` VALUES ('1430', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 09:35:47', '2020-04-30 09:35:47');
INSERT INTO `admin_operation_log` VALUES ('1431', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 13:01:05', '2020-04-30 13:01:05');
INSERT INTO `admin_operation_log` VALUES ('1432', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 13:01:05', '2020-04-30 13:01:05');
INSERT INTO `admin_operation_log` VALUES ('1433', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 13:01:05', '2020-04-30 13:01:05');
INSERT INTO `admin_operation_log` VALUES ('1434', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 13:01:39', '2020-04-30 13:01:39');
INSERT INTO `admin_operation_log` VALUES ('1435', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 13:01:39', '2020-04-30 13:01:39');
INSERT INTO `admin_operation_log` VALUES ('1436', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 13:01:39', '2020-04-30 13:01:39');
INSERT INTO `admin_operation_log` VALUES ('1437', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-30 13:01:42', '2020-04-30 13:01:42');
INSERT INTO `admin_operation_log` VALUES ('1438', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 13:02:12', '2020-04-30 13:02:12');
INSERT INTO `admin_operation_log` VALUES ('1439', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 13:02:13', '2020-04-30 13:02:13');
INSERT INTO `admin_operation_log` VALUES ('1440', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 13:02:19', '2020-04-30 13:02:19');
INSERT INTO `admin_operation_log` VALUES ('1441', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"\\u738b\\u4e94\",\"level\":\"1\",\"price\":\"80\",\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"is_index\":\"1\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-28 13:15:20\",\"_token\":\"iZiV2hCiSsseSmhl7xc61kRgkG6QqQIxBOWyU842\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/teachers\\/1\"}', '2020-04-30 13:02:23', '2020-04-30 13:02:23');
INSERT INTO `admin_operation_log` VALUES ('1442', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 13:02:24', '2020-04-30 13:02:24');
INSERT INTO `admin_operation_log` VALUES ('1443', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 13:02:47', '2020-04-30 13:02:47');
INSERT INTO `admin_operation_log` VALUES ('1444', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 13:02:48', '2020-04-30 13:02:48');
INSERT INTO `admin_operation_log` VALUES ('1445', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 13:02:48', '2020-04-30 13:02:48');
INSERT INTO `admin_operation_log` VALUES ('1446', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '{\"_pjax\":\"#pjax-container\"}', '2020-04-30 13:02:58', '2020-04-30 13:02:58');
INSERT INTO `admin_operation_log` VALUES ('1447', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 13:03:06', '2020-04-30 13:03:06');
INSERT INTO `admin_operation_log` VALUES ('1448', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"\\u738b\\u4e94\",\"level\":\"1\",\"price\":\"80\",\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"is_index\":\"1\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-30 13:02:24\",\"_token\":\"iZiV2hCiSsseSmhl7xc61kRgkG6QqQIxBOWyU842\",\"_method\":\"PUT\"}', '2020-04-30 13:03:14', '2020-04-30 13:03:14');
INSERT INTO `admin_operation_log` VALUES ('1449', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 13:03:14', '2020-04-30 13:03:14');
INSERT INTO `admin_operation_log` VALUES ('1450', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 13:03:17', '2020-04-30 13:03:17');
INSERT INTO `admin_operation_log` VALUES ('1451', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 13:03:21', '2020-04-30 13:03:21');
INSERT INTO `admin_operation_log` VALUES ('1452', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 13:03:22', '2020-04-30 13:03:22');
INSERT INTO `admin_operation_log` VALUES ('1453', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 13:03:22', '2020-04-30 13:03:22');
INSERT INTO `admin_operation_log` VALUES ('1454', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-30 15:05:29', '2020-04-30 15:05:29');
INSERT INTO `admin_operation_log` VALUES ('1455', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 15:26:20', '2020-04-30 15:26:20');
INSERT INTO `admin_operation_log` VALUES ('1456', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 15:26:20', '2020-04-30 15:26:20');
INSERT INTO `admin_operation_log` VALUES ('1457', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 15:26:20', '2020-04-30 15:26:20');
INSERT INTO `admin_operation_log` VALUES ('1458', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:09', '2020-04-30 15:31:09');
INSERT INTO `admin_operation_log` VALUES ('1459', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:32', '2020-04-30 15:31:32');
INSERT INTO `admin_operation_log` VALUES ('1460', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:32', '2020-04-30 15:31:32');
INSERT INTO `admin_operation_log` VALUES ('1461', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:32', '2020-04-30 15:31:32');
INSERT INTO `admin_operation_log` VALUES ('1462', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:35', '2020-04-30 15:31:35');
INSERT INTO `admin_operation_log` VALUES ('1463', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:44', '2020-04-30 15:31:44');
INSERT INTO `admin_operation_log` VALUES ('1464', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:45', '2020-04-30 15:31:45');
INSERT INTO `admin_operation_log` VALUES ('1465', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:45', '2020-04-30 15:31:45');
INSERT INTO `admin_operation_log` VALUES ('1466', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-30 15:31:46', '2020-04-30 15:31:46');
INSERT INTO `admin_operation_log` VALUES ('1467', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 15:32:48', '2020-04-30 15:32:48');
INSERT INTO `admin_operation_log` VALUES ('1468', '1', 'admin/courses', 'GET', '192.168.1.197', '[]', '2020-04-30 15:32:50', '2020-04-30 15:32:50');
INSERT INTO `admin_operation_log` VALUES ('1469', '1', 'admin/bookings', 'GET', '192.168.1.197', '[]', '2020-04-30 15:33:12', '2020-04-30 15:33:12');
INSERT INTO `admin_operation_log` VALUES ('1470', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-30 15:33:27', '2020-04-30 15:33:27');
INSERT INTO `admin_operation_log` VALUES ('1471', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-30 15:35:12', '2020-04-30 15:35:12');
INSERT INTO `admin_operation_log` VALUES ('1472', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 15:35:14', '2020-04-30 15:35:14');
INSERT INTO `admin_operation_log` VALUES ('1473', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 15:37:19', '2020-04-30 15:37:19');
INSERT INTO `admin_operation_log` VALUES ('1474', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-30 15:44:43', '2020-04-30 15:44:43');
INSERT INTO `admin_operation_log` VALUES ('1475', '1', 'admin/set-classes/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 15:44:49', '2020-04-30 15:44:49');
INSERT INTO `admin_operation_log` VALUES ('1476', '1', 'admin/set-classes', 'GET', '192.168.1.197', '[]', '2020-04-30 15:52:52', '2020-04-30 15:52:52');
INSERT INTO `admin_operation_log` VALUES ('1477', '1', 'admin/set-classes/5/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 15:53:37', '2020-04-30 15:53:37');
INSERT INTO `admin_operation_log` VALUES ('1478', '1', 'admin/set-classes/4/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 15:53:46', '2020-04-30 15:53:46');
INSERT INTO `admin_operation_log` VALUES ('1479', '1', 'admin/set-classes/5/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 15:53:54', '2020-04-30 15:53:54');
INSERT INTO `admin_operation_log` VALUES ('1480', '1', 'admin/set-classes/5', 'PUT', '192.168.1.197', '{\"teacher\":\"1\",\"time\":\"2020-04-29 00:00:00\",\"hour\":[\"13\",\"16\",\"17\",null],\"course\":\"3\",\"num\":\"8\",\"_token\":\"UCUscNxRy5dz0JIPmcd6LkMGoIz2qX72zv2fKt5z\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/set-classes\\/4\\/edit\"}', '2020-04-30 15:54:14', '2020-04-30 15:54:14');
INSERT INTO `admin_operation_log` VALUES ('1481', '1', 'admin/set-classes/4/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 15:54:14', '2020-04-30 15:54:14');
INSERT INTO `admin_operation_log` VALUES ('1482', '1', 'admin/set-classes/5', 'GET', '192.168.1.197', '[]', '2020-04-30 15:54:17', '2020-04-30 15:54:17');
INSERT INTO `admin_operation_log` VALUES ('1483', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:23:59', '2020-04-30 16:23:59');
INSERT INTO `admin_operation_log` VALUES ('1484', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:24:14', '2020-04-30 16:24:14');
INSERT INTO `admin_operation_log` VALUES ('1485', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:24:39', '2020-04-30 16:24:39');
INSERT INTO `admin_operation_log` VALUES ('1486', '1', 'admin/members/3/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:24:52', '2020-04-30 16:24:52');
INSERT INTO `admin_operation_log` VALUES ('1487', '1', 'admin/members/3', 'PUT', '192.168.1.197', '{\"name\":\"\\u963f\\u4e09a\",\"mobile\":\"13545474544\",\"sex\":\"2\",\"culture_num\":\"2\",\"experience_num\":\"1\",\"official_num\":\"2\",\"is_teacher\":\"1\",\"_token\":\"UCUscNxRy5dz0JIPmcd6LkMGoIz2qX72zv2fKt5z\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/members\\/1\\/edit\"}', '2020-04-30 16:25:00', '2020-04-30 16:25:00');
INSERT INTO `admin_operation_log` VALUES ('1488', '1', 'admin/members/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:25:00', '2020-04-30 16:25:00');
INSERT INTO `admin_operation_log` VALUES ('1489', '1', 'admin/members/3', 'GET', '192.168.1.197', '[]', '2020-04-30 16:25:02', '2020-04-30 16:25:02');
INSERT INTO `admin_operation_log` VALUES ('1490', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 16:25:08', '2020-04-30 16:25:08');
INSERT INTO `admin_operation_log` VALUES ('1491', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 16:25:08', '2020-04-30 16:25:08');
INSERT INTO `admin_operation_log` VALUES ('1492', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:25:08', '2020-04-30 16:25:08');
INSERT INTO `admin_operation_log` VALUES ('1493', '1', 'admin/members', 'GET', '192.168.1.197', '[]', '2020-04-30 16:25:23', '2020-04-30 16:25:23');
INSERT INTO `admin_operation_log` VALUES ('1494', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:25:55', '2020-04-30 16:25:55');
INSERT INTO `admin_operation_log` VALUES ('1495', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:32:39', '2020-04-30 16:32:39');
INSERT INTO `admin_operation_log` VALUES ('1496', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:35:30', '2020-04-30 16:35:30');
INSERT INTO `admin_operation_log` VALUES ('1497', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:35:37', '2020-04-30 16:35:37');
INSERT INTO `admin_operation_log` VALUES ('1498', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:39:32', '2020-04-30 16:39:32');
INSERT INTO `admin_operation_log` VALUES ('1499', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:40:08', '2020-04-30 16:40:08');
INSERT INTO `admin_operation_log` VALUES ('1500', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:40:11', '2020-04-30 16:40:11');
INSERT INTO `admin_operation_log` VALUES ('1501', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:40:55', '2020-04-30 16:40:55');
INSERT INTO `admin_operation_log` VALUES ('1502', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:42:14', '2020-04-30 16:42:14');
INSERT INTO `admin_operation_log` VALUES ('1503', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"3\",\"level\":\"1\",\"price\":\"80\",\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"is_index\":\"1\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-30 13:02:24\",\"_token\":\"UCUscNxRy5dz0JIPmcd6LkMGoIz2qX72zv2fKt5z\",\"_method\":\"PUT\"}', '2020-04-30 16:42:20', '2020-04-30 16:42:20');
INSERT INTO `admin_operation_log` VALUES ('1504', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:42:20', '2020-04-30 16:42:20');
INSERT INTO `admin_operation_log` VALUES ('1505', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:42:23', '2020-04-30 16:42:23');
INSERT INTO `admin_operation_log` VALUES ('1506', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:44:05', '2020-04-30 16:44:05');
INSERT INTO `admin_operation_log` VALUES ('1507', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:44:06', '2020-04-30 16:44:06');
INSERT INTO `admin_operation_log` VALUES ('1508', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:44:07', '2020-04-30 16:44:07');
INSERT INTO `admin_operation_log` VALUES ('1509', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:44:09', '2020-04-30 16:44:09');
INSERT INTO `admin_operation_log` VALUES ('1510', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:44:40', '2020-04-30 16:44:40');
INSERT INTO `admin_operation_log` VALUES ('1511', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"name\":\"3\",\"level\":\"1\",\"price\":\"80\",\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"is_index\":\"1\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-30 16:42:20\",\"user_id\":null,\"_token\":\"UCUscNxRy5dz0JIPmcd6LkMGoIz2qX72zv2fKt5z\",\"_method\":\"PUT\"}', '2020-04-30 16:44:52', '2020-04-30 16:44:52');
INSERT INTO `admin_operation_log` VALUES ('1512', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:44:52', '2020-04-30 16:44:52');
INSERT INTO `admin_operation_log` VALUES ('1513', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:46:42', '2020-04-30 16:46:42');
INSERT INTO `admin_operation_log` VALUES ('1514', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:46:47', '2020-04-30 16:46:47');
INSERT INTO `admin_operation_log` VALUES ('1515', '1', 'admin/teachers/1', 'PUT', '192.168.1.197', '{\"user_id\":\"3\",\"level\":\"1\",\"price\":\"80\",\"description\":\"\\u53bb\\u95ee\\u9a71\\u868a\\u5668\",\"is_index\":\"1\",\"created_at\":\"2020-04-27 21:47:39\",\"updated_at\":\"2020-04-30 16:42:20\",\"_token\":\"UCUscNxRy5dz0JIPmcd6LkMGoIz2qX72zv2fKt5z\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/wstest.com\\/admin\\/teachers\\/1\"}', '2020-04-30 16:47:02', '2020-04-30 16:47:02');
INSERT INTO `admin_operation_log` VALUES ('1516', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:47:02', '2020-04-30 16:47:02');
INSERT INTO `admin_operation_log` VALUES ('1517', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:47:14', '2020-04-30 16:47:14');
INSERT INTO `admin_operation_log` VALUES ('1518', '1', 'admin/teachers/1/edit', 'GET', '192.168.1.197', '[]', '2020-04-30 16:47:18', '2020-04-30 16:47:18');
INSERT INTO `admin_operation_log` VALUES ('1519', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:50:02', '2020-04-30 16:50:02');
INSERT INTO `admin_operation_log` VALUES ('1520', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:50:44', '2020-04-30 16:50:44');
INSERT INTO `admin_operation_log` VALUES ('1521', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:50:45', '2020-04-30 16:50:45');
INSERT INTO `admin_operation_log` VALUES ('1522', '1', 'admin/teachers/1', 'GET', '192.168.1.197', '[]', '2020-04-30 16:50:45', '2020-04-30 16:50:45');
INSERT INTO `admin_operation_log` VALUES ('1523', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:50:49', '2020-04-30 16:50:49');
INSERT INTO `admin_operation_log` VALUES ('1524', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:14', '2020-04-30 16:52:14');
INSERT INTO `admin_operation_log` VALUES ('1525', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:15', '2020-04-30 16:52:15');
INSERT INTO `admin_operation_log` VALUES ('1526', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:15', '2020-04-30 16:52:15');
INSERT INTO `admin_operation_log` VALUES ('1527', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:15', '2020-04-30 16:52:15');
INSERT INTO `admin_operation_log` VALUES ('1528', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:16', '2020-04-30 16:52:16');
INSERT INTO `admin_operation_log` VALUES ('1529', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:16', '2020-04-30 16:52:16');
INSERT INTO `admin_operation_log` VALUES ('1530', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:16', '2020-04-30 16:52:16');
INSERT INTO `admin_operation_log` VALUES ('1531', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:40', '2020-04-30 16:52:40');
INSERT INTO `admin_operation_log` VALUES ('1532', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:40', '2020-04-30 16:52:40');
INSERT INTO `admin_operation_log` VALUES ('1533', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:41', '2020-04-30 16:52:41');
INSERT INTO `admin_operation_log` VALUES ('1534', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 16:52:41', '2020-04-30 16:52:41');
INSERT INTO `admin_operation_log` VALUES ('1535', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:54:34', '2020-04-30 17:54:34');
INSERT INTO `admin_operation_log` VALUES ('1536', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:54:34', '2020-04-30 17:54:34');
INSERT INTO `admin_operation_log` VALUES ('1537', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:54:34', '2020-04-30 17:54:34');
INSERT INTO `admin_operation_log` VALUES ('1538', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:54:35', '2020-04-30 17:54:35');
INSERT INTO `admin_operation_log` VALUES ('1539', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:54:35', '2020-04-30 17:54:35');
INSERT INTO `admin_operation_log` VALUES ('1540', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:54:35', '2020-04-30 17:54:35');
INSERT INTO `admin_operation_log` VALUES ('1541', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:54:35', '2020-04-30 17:54:35');
INSERT INTO `admin_operation_log` VALUES ('1542', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:54:36', '2020-04-30 17:54:36');
INSERT INTO `admin_operation_log` VALUES ('1543', '1', 'admin', 'GET', '192.168.1.197', '[]', '2020-04-30 17:58:10', '2020-04-30 17:58:10');
INSERT INTO `admin_operation_log` VALUES ('1544', '1', 'admin/dashboard', 'GET', '192.168.1.197', '[]', '2020-04-30 17:58:10', '2020-04-30 17:58:10');
INSERT INTO `admin_operation_log` VALUES ('1545', '1', 'admin/teachers', 'GET', '192.168.1.197', '[]', '2020-04-30 17:58:10', '2020-04-30 17:58:10');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_permissions_name_unique` (`name`) USING BTREE,
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', 'Media manager', 'ext.media-manager', '', '/media*', '2020-03-30 08:28:21', '2020-03-30 08:28:21');
INSERT INTO `admin_permissions` VALUES ('7', 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2020-03-30 08:30:06', '2020-03-30 08:30:06');
INSERT INTO `admin_permissions` VALUES ('8', 'Logs', 'ext.log-viewer', '', '/logs*', '2020-03-30 08:30:59', '2020-03-30 08:30:59');
INSERT INTO `admin_permissions` VALUES ('9', 'Admin Config', 'ext.config', '', '/config*', '2020-03-30 08:37:28', '2020-03-30 08:37:28');
INSERT INTO `admin_permissions` VALUES ('10', 'Tab-dashboard', 'tabs.dashboard', '', '/dashboard', '2020-03-30 08:49:52', '2020-03-30 08:49:52');
INSERT INTO `admin_permissions` VALUES ('11', 'Redis Manager', 'ext.redis-manager', '', '/redis*', '2020-03-30 09:57:45', '2020-03-30 09:57:45');
INSERT INTO `admin_permissions` VALUES ('12', 'Scheduling', 'ext.scheduling', '', '/scheduling*', '2020-03-31 02:41:34', '2020-03-31 02:41:34');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '19', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '20', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '21', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_roles_name_unique` (`name`) USING BTREE,
  UNIQUE KEY `admin_roles_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-03-30 06:48:59', '2020-03-30 06:48:59');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$kg..h5Y4CBeJVPoMXyPBT.STK65XmAc/PMeWPRmNpVHy6iE5MwsBW', 'Administrator', null, 'bU6wzJGxaQrM5ch7kxqlhEF5tUOd68tTGhVxPxAMRNFgO9bAAIqb3HW9UVwN', '2020-03-30 06:48:59', '2020-03-30 06:48:59');

-- ----------------------------
-- Table structure for api_error_logs
-- ----------------------------
DROP TABLE IF EXISTS `api_error_logs`;
CREATE TABLE `api_error_logs` (
  `code` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of api_error_logs
-- ----------------------------
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 17:32:23', '2020-04-28 17:32:23');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:11:23', '2020-04-28 18:11:23');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:11:30', '2020-04-28 18:11:30');
INSERT INTO `api_error_logs` VALUES ('3001', '提示信息未定义', '[]', '2020-04-28 18:13:33', '2020-04-28 18:13:33');
INSERT INTO `api_error_logs` VALUES ('3001', '提示信息未定义', '[]', '2020-04-28 18:13:34', '2020-04-28 18:13:34');
INSERT INTO `api_error_logs` VALUES ('3001', '提示信息未定义', '[]', '2020-04-28 18:13:44', '2020-04-28 18:13:44');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:20:06', '2020-04-28 18:20:06');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:20:17', '2020-04-28 18:20:17');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:20:19', '2020-04-28 18:20:19');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:20:19', '2020-04-28 18:20:19');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:20:19', '2020-04-28 18:20:19');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:20:20', '2020-04-28 18:20:20');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:20:20', '2020-04-28 18:20:20');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:21:26', '2020-04-28 18:21:26');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:22:04', '2020-04-28 18:22:04');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:22:06', '2020-04-28 18:22:06');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:22:06', '2020-04-28 18:22:06');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:22:06', '2020-04-28 18:22:06');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-28 18:22:06', '2020-04-28 18:22:06');
INSERT INTO `api_error_logs` VALUES ('3001', '提示信息未定义', '[]', '2020-04-28 18:44:46', '2020-04-28 18:44:46');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-28 18:48:27', '2020-04-28 18:48:27');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-28 18:49:19', '2020-04-28 18:49:19');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-28 18:49:36', '2020-04-28 18:49:36');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 08:04:04', '2020-04-29 08:04:04');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 08:12:48', '2020-04-29 08:12:48');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 08:14:54', '2020-04-29 08:14:54');
INSERT INTO `api_error_logs` VALUES ('3009', '提示信息未定义', '[]', '2020-04-29 08:22:48', '2020-04-29 08:22:48');
INSERT INTO `api_error_logs` VALUES ('3009', '提示信息未定义', '[]', '2020-04-29 08:22:59', '2020-04-29 08:22:59');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 08:25:49', '2020-04-29 08:25:49');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 08:27:45', '2020-04-29 08:27:45');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 08:29:32', '2020-04-29 08:29:32');
INSERT INTO `api_error_logs` VALUES ('3009', '提示信息未定义', '[]', '2020-04-29 08:34:11', '2020-04-29 08:34:11');
INSERT INTO `api_error_logs` VALUES ('3009', '用户id错误', '[]', '2020-04-29 08:35:27', '2020-04-29 08:35:27');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 08:36:20', '2020-04-29 08:36:20');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-29 08:36:26', '2020-04-29 08:36:26');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-29 08:36:27', '2020-04-29 08:36:27');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-29 08:36:28', '2020-04-29 08:36:28');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-29 08:40:00', '2020-04-29 08:40:00');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 09:19:03', '2020-04-29 09:19:03');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-29 09:19:05', '2020-04-29 09:19:05');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 09:20:13', '2020-04-29 09:20:13');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 09:23:38', '2020-04-29 09:23:38');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-29 09:24:01', '2020-04-29 09:24:01');
INSERT INTO `api_error_logs` VALUES ('3014', '扣除课时失败', '[]', '2020-04-29 09:24:53', '2020-04-29 09:24:53');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:44:47', '2020-04-29 09:44:47');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:44:57', '2020-04-29 09:44:57');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:44:58', '2020-04-29 09:44:58');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:45:00', '2020-04-29 09:45:00');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:45:01', '2020-04-29 09:45:01');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:45:02', '2020-04-29 09:45:02');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:45:03', '2020-04-29 09:45:03');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:45:16', '2020-04-29 09:45:16');
INSERT INTO `api_error_logs` VALUES ('3009', '用户id错误', '[]', '2020-04-29 09:45:33', '2020-04-29 09:45:33');
INSERT INTO `api_error_logs` VALUES ('3009', '用户id错误', '[]', '2020-04-29 09:45:35', '2020-04-29 09:45:35');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:55:06', '2020-04-29 09:55:06');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:56:03', '2020-04-29 09:56:03');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:58:04', '2020-04-29 09:58:04');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 09:58:06', '2020-04-29 09:58:06');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 10:05:33', '2020-04-29 10:05:33');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 10:10:57', '2020-04-29 10:10:57');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 10:11:56', '2020-04-29 10:11:56');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 10:13:42', '2020-04-29 10:13:42');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:08', '2020-04-29 10:28:08');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:10', '2020-04-29 10:28:10');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:16', '2020-04-29 10:28:16');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:18', '2020-04-29 10:28:18');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:19', '2020-04-29 10:28:19');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:20', '2020-04-29 10:28:20');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:48', '2020-04-29 10:28:48');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:49', '2020-04-29 10:28:49');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:28:50', '2020-04-29 10:28:50');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:29:41', '2020-04-29 10:29:41');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:29:42', '2020-04-29 10:29:42');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:32:06', '2020-04-29 10:32:06');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:32:07', '2020-04-29 10:32:07');
INSERT INTO `api_error_logs` VALUES ('3016', '24小时以内不能取消预约', '[]', '2020-04-29 10:32:08', '2020-04-29 10:32:08');
INSERT INTO `api_error_logs` VALUES ('1001', '取消成功', '[]', '2020-04-29 10:33:18', '2020-04-29 10:33:18');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 10:33:50', '2020-04-29 10:33:50');
INSERT INTO `api_error_logs` VALUES ('3008', '教师级别错误', '[]', '2020-04-29 12:07:26', '2020-04-29 12:07:26');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 12:07:36', '2020-04-29 12:07:36');
INSERT INTO `api_error_logs` VALUES ('1001', '成功', '[]', '2020-04-29 12:07:36', '2020-04-29 12:07:36');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 12:08:22', '2020-04-29 12:08:22');
INSERT INTO `api_error_logs` VALUES ('1001', '成功', '[]', '2020-04-29 12:08:22', '2020-04-29 12:08:22');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 12:09:24', '2020-04-29 12:09:24');
INSERT INTO `api_error_logs` VALUES ('1001', '成功', '[]', '2020-04-29 12:09:24', '2020-04-29 12:09:24');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 12:09:38', '2020-04-29 12:09:38');
INSERT INTO `api_error_logs` VALUES ('1001', '成功', '[]', '2020-04-29 12:09:38', '2020-04-29 12:09:38');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 12:09:56', '2020-04-29 12:09:56');
INSERT INTO `api_error_logs` VALUES ('1001', '成功', '[]', '2020-04-29 12:09:56', '2020-04-29 12:09:56');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 12:09:57', '2020-04-29 12:09:57');
INSERT INTO `api_error_logs` VALUES ('1001', '成功', '[]', '2020-04-29 12:09:57', '2020-04-29 12:09:57');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 12:09:58', '2020-04-29 12:09:58');
INSERT INTO `api_error_logs` VALUES ('1001', '成功', '[]', '2020-04-29 12:09:58', '2020-04-29 12:09:58');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 12:12:26', '2020-04-29 12:12:26');
INSERT INTO `api_error_logs` VALUES ('1001', '成功', '[]', '2020-04-29 12:12:26', '2020-04-29 12:12:26');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 12:16:52', '2020-04-29 12:16:52');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 13:16:36', '2020-04-29 13:16:36');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 13:28:51', '2020-04-29 13:28:51');
INSERT INTO `api_error_logs` VALUES ('3008', '教师级别错误', '[]', '2020-04-29 13:32:37', '2020-04-29 13:32:37');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 13:35:27', '2020-04-29 13:35:27');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 13:35:58', '2020-04-29 13:35:58');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 13:38:32', '2020-04-29 13:38:32');
INSERT INTO `api_error_logs` VALUES ('3009', '预约人数已满', '[]', '2020-04-29 13:38:34', '2020-04-29 13:38:34');
INSERT INTO `api_error_logs` VALUES ('3009', '预约人数已满', '[]', '2020-04-29 13:38:36', '2020-04-29 13:38:36');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-29 13:38:44', '2020-04-29 13:38:44');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-29 13:40:31', '2020-04-29 13:40:31');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 13:40:33', '2020-04-29 13:40:33');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 13:40:34', '2020-04-29 13:40:34');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-29 13:40:35', '2020-04-29 13:40:35');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 14:13:11', '2020-04-29 14:13:11');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 14:14:00', '2020-04-29 14:14:00');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-29 14:14:58', '2020-04-29 14:14:58');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:37:35', '2020-04-29 16:37:35');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:39:06', '2020-04-29 16:39:06');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:40:09', '2020-04-29 16:40:09');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:42:55', '2020-04-29 16:42:55');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:43:28', '2020-04-29 16:43:28');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:43:45', '2020-04-29 16:43:45');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:43:55', '2020-04-29 16:43:55');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:44:07', '2020-04-29 16:44:07');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 16:44:08', '2020-04-29 16:44:08');
INSERT INTO `api_error_logs` VALUES ('3001', '教师ID错误', '[]', '2020-04-29 16:58:23', '2020-04-29 16:58:23');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:00:08', '2020-04-29 17:00:08');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:01:16', '2020-04-29 17:01:16');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:01:34', '2020-04-29 17:01:34');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:02:16', '2020-04-29 17:02:16');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:02:33', '2020-04-29 17:02:33');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:02:54', '2020-04-29 17:02:54');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:08:13', '2020-04-29 17:08:13');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:08:32', '2020-04-29 17:08:32');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:08:42', '2020-04-29 17:08:42');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:08:52', '2020-04-29 17:08:52');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:09:17', '2020-04-29 17:09:17');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:10:04', '2020-04-29 17:10:04');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:10:14', '2020-04-29 17:10:14');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:23:12', '2020-04-29 17:23:12');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:23:19', '2020-04-29 17:23:19');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:23:21', '2020-04-29 17:23:21');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:23:22', '2020-04-29 17:23:22');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:30:59', '2020-04-29 17:30:59');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:41:43', '2020-04-29 17:41:43');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 17:46:26', '2020-04-29 17:46:26');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-29 17:48:27', '2020-04-29 17:48:27');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:49:13', '2020-04-29 17:49:13');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-29 17:49:47', '2020-04-29 17:49:47');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 07:59:45', '2020-04-30 07:59:45');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:03:47', '2020-04-30 08:03:47');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:04:12', '2020-04-30 08:04:12');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:04:26', '2020-04-30 08:04:26');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:05:44', '2020-04-30 08:05:44');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:13:52', '2020-04-30 08:13:52');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:21:18', '2020-04-30 08:21:18');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:21:29', '2020-04-30 08:21:29');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:22:15', '2020-04-30 08:22:15');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:23:19', '2020-04-30 08:23:19');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:23:27', '2020-04-30 08:23:27');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:23:29', '2020-04-30 08:23:29');
INSERT INTO `api_error_logs` VALUES ('3011', '文化课课时不足', '[]', '2020-04-30 08:31:21', '2020-04-30 08:31:21');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-30 08:31:46', '2020-04-30 08:31:46');
INSERT INTO `api_error_logs` VALUES ('3009', '预约人数已满', '[]', '2020-04-30 08:31:53', '2020-04-30 08:31:53');
INSERT INTO `api_error_logs` VALUES ('3009', '预约人数已满', '[]', '2020-04-30 08:32:33', '2020-04-30 08:32:33');
INSERT INTO `api_error_logs` VALUES ('3009', '预约人数已满', '[]', '2020-04-30 08:32:35', '2020-04-30 08:32:35');
INSERT INTO `api_error_logs` VALUES ('3009', '预约人数已满', '[]', '2020-04-30 08:32:50', '2020-04-30 08:32:50');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-30 08:33:26', '2020-04-30 08:33:26');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-30 08:33:59', '2020-04-30 08:33:59');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 08:35:03', '2020-04-30 08:35:03');
INSERT INTO `api_error_logs` VALUES ('1001', '取消成功', '[]', '2020-04-30 08:37:40', '2020-04-30 08:37:40');
INSERT INTO `api_error_logs` VALUES ('1001', '取消成功', '[]', '2020-04-30 08:37:50', '2020-04-30 08:37:50');
INSERT INTO `api_error_logs` VALUES ('1001', '取消成功', '[]', '2020-04-30 08:38:45', '2020-04-30 08:38:45');
INSERT INTO `api_error_logs` VALUES ('1001', '取消成功', '[]', '2020-04-30 08:38:47', '2020-04-30 08:38:47');
INSERT INTO `api_error_logs` VALUES ('0', '取消成功', '[]', '2020-04-30 08:39:25', '2020-04-30 08:39:25');
INSERT INTO `api_error_logs` VALUES ('3008', '教师级别错误', '[]', '2020-04-30 08:40:45', '2020-04-30 08:40:45');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 08:41:29', '2020-04-30 08:41:29');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 08:44:59', '2020-04-30 08:44:59');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 08:45:24', '2020-04-30 08:45:24');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 08:45:25', '2020-04-30 08:45:25');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 08:45:27', '2020-04-30 08:45:27');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-30 08:48:27', '2020-04-30 08:48:27');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-30 08:54:55', '2020-04-30 08:54:55');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-30 08:55:13', '2020-04-30 08:55:13');
INSERT INTO `api_error_logs` VALUES ('3001', '教师ID错误', '[]', '2020-04-30 08:58:16', '2020-04-30 08:58:16');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 08:58:59', '2020-04-30 08:58:59');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 08:59:49', '2020-04-30 08:59:49');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:01:32', '2020-04-30 09:01:32');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:01:47', '2020-04-30 09:01:47');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:01:56', '2020-04-30 09:01:56');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:02:53', '2020-04-30 09:02:53');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:03:07', '2020-04-30 09:03:07');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:07:03', '2020-04-30 09:07:03');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-30 09:07:20', '2020-04-30 09:07:20');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:57:57', '2020-04-30 09:57:57');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:58:02', '2020-04-30 09:58:02');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:58:33', '2020-04-30 09:58:33');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:58:48', '2020-04-30 09:58:48');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 09:59:10', '2020-04-30 09:59:10');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:01:29', '2020-04-30 10:01:29');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:01:42', '2020-04-30 10:01:42');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:01:53', '2020-04-30 10:01:53');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:02:21', '2020-04-30 10:02:21');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:04:03', '2020-04-30 10:04:03');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:04:45', '2020-04-30 10:04:45');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:05:09', '2020-04-30 10:05:09');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:05:22', '2020-04-30 10:05:22');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:05:47', '2020-04-30 10:05:47');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:06:20', '2020-04-30 10:06:20');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:06:25', '2020-04-30 10:06:25');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:06:32', '2020-04-30 10:06:32');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:06:42', '2020-04-30 10:06:42');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:06:48', '2020-04-30 10:06:48');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:06:53', '2020-04-30 10:06:53');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:07:25', '2020-04-30 10:07:25');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:07:32', '2020-04-30 10:07:32');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:07:37', '2020-04-30 10:07:37');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:07:46', '2020-04-30 10:07:46');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:07:52', '2020-04-30 10:07:52');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:12:10', '2020-04-30 10:12:10');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:12:13', '2020-04-30 10:12:13');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:12:30', '2020-04-30 10:12:30');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:13:07', '2020-04-30 10:13:07');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:15:27', '2020-04-30 10:15:27');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:16:30', '2020-04-30 10:16:30');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:16:38', '2020-04-30 10:16:38');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:37:46', '2020-04-30 10:37:46');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:38:02', '2020-04-30 10:38:02');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:39:10', '2020-04-30 10:39:10');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:45:35', '2020-04-30 10:45:35');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:45:48', '2020-04-30 10:45:48');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:48:00', '2020-04-30 10:48:00');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 10:49:18', '2020-04-30 10:49:18');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:07:06', '2020-04-30 11:07:06');
INSERT INTO `api_error_logs` VALUES ('1001', '数据库操作失败： %s', '[]', '2020-04-30 11:07:06', '2020-04-30 11:07:06');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:08:02', '2020-04-30 11:08:02');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:08:16', '2020-04-30 11:08:16');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:08:21', '2020-04-30 11:08:21');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:08:50', '2020-04-30 11:08:50');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:08:59', '2020-04-30 11:08:59');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:09:41', '2020-04-30 11:09:41');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:09:45', '2020-04-30 11:09:45');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:21:05', '2020-04-30 11:21:05');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:21:29', '2020-04-30 11:21:29');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:21:31', '2020-04-30 11:21:31');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:22:43', '2020-04-30 11:22:43');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:27', '2020-04-30 11:24:27');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:30', '2020-04-30 11:24:30');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:39', '2020-04-30 11:24:39');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:40', '2020-04-30 11:24:40');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:42', '2020-04-30 11:24:42');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:43', '2020-04-30 11:24:43');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:44', '2020-04-30 11:24:44');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:45', '2020-04-30 11:24:45');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:24:48', '2020-04-30 11:24:48');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:25:20', '2020-04-30 11:25:20');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:27:29', '2020-04-30 11:27:29');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:34:55', '2020-04-30 11:34:55');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:35:02', '2020-04-30 11:35:02');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:35:04', '2020-04-30 11:35:04');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:35:05', '2020-04-30 11:35:05');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:36:46', '2020-04-30 11:36:46');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:37:08', '2020-04-30 11:37:08');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:43:21', '2020-04-30 11:43:21');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:43:42', '2020-04-30 11:43:42');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:43:54', '2020-04-30 11:43:54');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:44:09', '2020-04-30 11:44:09');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:45:18', '2020-04-30 11:45:18');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:48:34', '2020-04-30 11:48:34');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:50:09', '2020-04-30 11:50:09');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:51:11', '2020-04-30 11:51:11');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:51:21', '2020-04-30 11:51:21');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:52:39', '2020-04-30 11:52:39');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:01', '2020-04-30 11:53:01');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:14', '2020-04-30 11:53:14');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:27', '2020-04-30 11:53:27');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:34', '2020-04-30 11:53:34');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:36', '2020-04-30 11:53:36');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:37', '2020-04-30 11:53:37');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:37', '2020-04-30 11:53:37');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:37', '2020-04-30 11:53:37');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:38', '2020-04-30 11:53:38');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:38', '2020-04-30 11:53:38');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:38', '2020-04-30 11:53:38');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:53:58', '2020-04-30 11:53:58');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:54:07', '2020-04-30 11:54:07');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:54:17', '2020-04-30 11:54:17');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:55:56', '2020-04-30 11:55:56');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:56:02', '2020-04-30 11:56:02');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:56:50', '2020-04-30 11:56:50');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:57:42', '2020-04-30 11:57:42');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:58:22', '2020-04-30 11:58:22');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:58:47', '2020-04-30 11:58:47');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 11:59:02', '2020-04-30 11:59:02');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 12:00:25', '2020-04-30 12:00:25');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 12:01:15', '2020-04-30 12:01:15');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:44:23', '2020-04-30 12:44:23');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:45:36', '2020-04-30 12:45:36');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:48:49', '2020-04-30 12:48:49');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:51:36', '2020-04-30 12:51:36');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:52:19', '2020-04-30 12:52:19');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:52:30', '2020-04-30 12:52:30');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:53:41', '2020-04-30 12:53:41');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:53:49', '2020-04-30 12:53:49');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:54:04', '2020-04-30 12:54:04');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:54:19', '2020-04-30 12:54:19');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 12:54:54', '2020-04-30 12:54:54');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:21:19', '2020-04-30 13:21:19');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:21:36', '2020-04-30 13:21:36');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:22:06', '2020-04-30 13:22:06');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:22:27', '2020-04-30 13:22:27');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:32:33', '2020-04-30 13:32:33');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:32:42', '2020-04-30 13:32:42');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:34:01', '2020-04-30 13:34:01');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:35:28', '2020-04-30 13:35:28');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:36:55', '2020-04-30 13:36:55');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:37:59', '2020-04-30 13:37:59');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:40:36', '2020-04-30 13:40:36');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:42:39', '2020-04-30 13:42:39');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 13:43:14', '2020-04-30 13:43:14');
INSERT INTO `api_error_logs` VALUES ('2101', '获取openid失败：请求失败', '{\"code\":\"123123123123123\"}', '2020-04-30 14:12:25', '2020-04-30 14:12:25');
INSERT INTO `api_error_logs` VALUES ('2102', '登录失败：%s', '{\"code\":\"123123123123123\"}', '2020-04-30 14:21:57', '2020-04-30 14:21:57');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 14:31:14', '2020-04-30 14:31:14');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 14:31:25', '2020-04-30 14:31:25');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 14:31:27', '2020-04-30 14:31:27');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 14:46:55', '2020-04-30 14:46:55');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 14:47:05', '2020-04-30 14:47:05');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 14:47:48', '2020-04-30 14:47:48');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:00:43', '2020-04-30 15:00:43');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 15:01:03', '2020-04-30 15:01:03');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 15:01:08', '2020-04-30 15:01:08');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:01:57', '2020-04-30 15:01:57');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 15:02:19', '2020-04-30 15:02:19');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 15:02:28', '2020-04-30 15:02:28');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:04:15', '2020-04-30 15:04:15');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 15:04:39', '2020-04-30 15:04:39');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 15:04:44', '2020-04-30 15:04:44');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 15:05:00', '2020-04-30 15:05:00');
INSERT INTO `api_error_logs` VALUES ('3017', '排班错误', '[]', '2020-04-30 15:05:04', '2020-04-30 15:05:04');
INSERT INTO `api_error_logs` VALUES ('3012', '体验课课时不足', '[]', '2020-04-30 15:06:39', '2020-04-30 15:06:39');
INSERT INTO `api_error_logs` VALUES ('0', '预约成功', '[]', '2020-04-30 15:07:25', '2020-04-30 15:07:25');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-30 15:08:12', '2020-04-30 15:08:12');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:09:52', '2020-04-30 15:09:52');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 15:10:04', '2020-04-30 15:10:04');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:10:45', '2020-04-30 15:10:45');
INSERT INTO `api_error_logs` VALUES ('0', '取消成功', '[]', '2020-04-30 15:11:02', '2020-04-30 15:11:02');
INSERT INTO `api_error_logs` VALUES ('0', '取消成功', '[]', '2020-04-30 15:11:03', '2020-04-30 15:11:03');
INSERT INTO `api_error_logs` VALUES ('0', '取消成功', '[]', '2020-04-30 15:11:06', '2020-04-30 15:11:06');
INSERT INTO `api_error_logs` VALUES ('0', '取消成功', '[]', '2020-04-30 15:11:07', '2020-04-30 15:11:07');
INSERT INTO `api_error_logs` VALUES ('1001', '取消失败', '[]', '2020-04-30 15:12:19', '2020-04-30 15:12:19');
INSERT INTO `api_error_logs` VALUES ('1001', '取消失败', '[]', '2020-04-30 15:12:21', '2020-04-30 15:12:21');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:12:53', '2020-04-30 15:12:53');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-30 15:13:08', '2020-04-30 15:13:08');
INSERT INTO `api_error_logs` VALUES ('3010', '预约已存在', '[]', '2020-04-30 15:13:13', '2020-04-30 15:13:13');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:15:01', '2020-04-30 15:15:01');
INSERT INTO `api_error_logs` VALUES ('0', '评价成功', '[]', '2020-04-30 15:15:14', '2020-04-30 15:15:14');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:15:57', '2020-04-30 15:15:57');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:16:10', '2020-04-30 15:16:10');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:17:15', '2020-04-30 15:17:15');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:17:33', '2020-04-30 15:17:33');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:17:36', '2020-04-30 15:17:36');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:18:04', '2020-04-30 15:18:04');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:18:39', '2020-04-30 15:18:39');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:18:51', '2020-04-30 15:18:51');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:19:19', '2020-04-30 15:19:19');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:19:31', '2020-04-30 15:19:31');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:19:52', '2020-04-30 15:19:52');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:20:11', '2020-04-30 15:20:11');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:20:44', '2020-04-30 15:20:44');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:21:11', '2020-04-30 15:21:11');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:22:13', '2020-04-30 15:22:13');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:22:32', '2020-04-30 15:22:32');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:22:50', '2020-04-30 15:22:50');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 15:22:57', '2020-04-30 15:22:57');
INSERT INTO `api_error_logs` VALUES ('101', 'token验证失败', '[]', '2020-04-30 15:23:48', '2020-04-30 15:23:48');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 15:24:13', '2020-04-30 15:24:13');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 16:12:11', '2020-04-30 16:12:11');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 16:12:18', '2020-04-30 16:12:18');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 16:12:21', '2020-04-30 16:12:21');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 16:54:04', '2020-04-30 16:54:04');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 16:59:37', '2020-04-30 16:59:37');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:00:52', '2020-04-30 17:00:52');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:00:54', '2020-04-30 17:00:54');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:03:12', '2020-04-30 17:03:12');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 17:04:21', '2020-04-30 17:04:21');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 17:06:35', '2020-04-30 17:06:35');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 17:10:20', '2020-04-30 17:10:20');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 17:11:12', '2020-04-30 17:11:12');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 17:12:16', '2020-04-30 17:12:16');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 17:12:22', '2020-04-30 17:12:22');
INSERT INTO `api_error_logs` VALUES ('0', '成功', '[]', '2020-04-30 17:16:28', '2020-04-30 17:16:28');
INSERT INTO `api_error_logs` VALUES ('2101', '获取openid失败：请求失败', '{\"code\":\"123123123123123\"}', '2020-04-30 17:17:27', '2020-04-30 17:17:27');
INSERT INTO `api_error_logs` VALUES ('2101', '获取openid失败：请求失败', '{\"code\":\"123123123123123\"}', '2020-04-30 17:17:29', '2020-04-30 17:17:29');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:17:49', '2020-04-30 17:17:49');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:18:41', '2020-04-30 17:18:41');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:18:50', '2020-04-30 17:18:50');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:19:15', '2020-04-30 17:19:15');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:19:23', '2020-04-30 17:19:23');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:20:09', '2020-04-30 17:20:09');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:20:11', '2020-04-30 17:20:11');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:21:20', '2020-04-30 17:21:20');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:22:06', '2020-04-30 17:22:06');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:22:08', '2020-04-30 17:22:08');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:22:55', '2020-04-30 17:22:55');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:22:56', '2020-04-30 17:22:56');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:22:57', '2020-04-30 17:22:57');
INSERT INTO `api_error_logs` VALUES ('2102', '登录失败：%s', '{\"code\":\"123123123123123\"}', '2020-04-30 17:24:16', '2020-04-30 17:24:16');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:24:25', '2020-04-30 17:24:25');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:24:46', '2020-04-30 17:24:46');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:25:27', '2020-04-30 17:25:27');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:25:28', '2020-04-30 17:25:28');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:25:31', '2020-04-30 17:25:31');
INSERT INTO `api_error_logs` VALUES ('2102', '登录失败：%s', '{\"code\":\"123123123123123\"}', '2020-04-30 17:25:44', '2020-04-30 17:25:44');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:27:38', '2020-04-30 17:27:38');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:28:47', '2020-04-30 17:28:47');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:28:51', '2020-04-30 17:28:51');
INSERT INTO `api_error_logs` VALUES ('2101', '获取openid失败：请求失败', '{\"code\":\"123123123123123\"}', '2020-04-30 17:35:37', '2020-04-30 17:35:37');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:35:52', '2020-04-30 17:35:52');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:44:29', '2020-04-30 17:44:29');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:44:31', '2020-04-30 17:44:31');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:44:33', '2020-04-30 17:44:33');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:44:38', '2020-04-30 17:44:38');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:44:49', '2020-04-30 17:44:49');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:52:09', '2020-04-30 17:52:09');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:53:07', '2020-04-30 17:53:07');
INSERT INTO `api_error_logs` VALUES ('0', '请求成功', '[]', '2020-04-30 17:53:58', '2020-04-30 17:53:58');

-- ----------------------------
-- Table structure for attentions
-- ----------------------------
DROP TABLE IF EXISTS `attentions`;
CREATE TABLE `attentions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `is_del` tinyint(1) DEFAULT '0' COMMENT '0关注 1取消',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attentions
-- ----------------------------
INSERT INTO `attentions` VALUES ('14', '1', '1', '1', '2020-04-29 17:02:33', '2020-04-30 08:59:49');
INSERT INTO `attentions` VALUES ('16', '2', '1', '1', '2020-04-29 17:10:04', '2020-04-29 17:10:14');
INSERT INTO `attentions` VALUES ('17', '1', '2', '0', '2020-04-28 17:30:23', null);
INSERT INTO `attentions` VALUES ('18', '3', '1', '0', '2020-04-30 15:16:10', '2020-04-30 15:16:10');

-- ----------------------------
-- Table structure for bookings
-- ----------------------------
DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT ' 用户id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `time` int(11) DEFAULT NULL COMMENT '时间',
  `teacher` int(11) DEFAULT NULL COMMENT '教练',
  `course` int(11) DEFAULT NULL COMMENT '课程 1正式，2体验，3文化',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `is_del` int(1) DEFAULT '0' COMMENT '0正常 1取消',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bookings
-- ----------------------------
INSERT INTO `bookings` VALUES ('1', '1', '里斯', '13646655245', '2147483647', '1', '2', '11111', '1', '2020-04-28 10:11:08', '2020-04-30 08:38:45');
INSERT INTO `bookings` VALUES ('2', '1', null, '13613322471', '2147483647', '1', '1', '1111', '0', '2020-04-28 18:48:27', '2020-04-28 18:48:27');
INSERT INTO `bookings` VALUES ('3', '1', null, '13613322471', '2147483647', '1', '1', '1111', '0', '2020-04-28 18:49:19', '2020-04-28 18:49:19');
INSERT INTO `bookings` VALUES ('4', '1', '萨芬', '13613322471', '2147483647', '1', '1', '1111', '0', '2020-04-28 18:49:36', '2020-04-28 18:49:36');
INSERT INTO `bookings` VALUES ('5', '1', '萨芬', '13613322471', '2147483647', '1', '1', '1111', '0', '2020-04-29 08:25:49', '2020-04-29 08:25:49');
INSERT INTO `bookings` VALUES ('6', '1', '萨芬', '13613322471', '1212121223', '1', '1', '1111', '0', '2020-04-29 08:27:45', '2020-04-29 08:27:45');
INSERT INTO `bookings` VALUES ('7', '1', '萨芬', '13613322471', '1598213884', '1', '1', '1111', '1', '2020-04-29 08:29:32', '2020-04-29 10:33:17');
INSERT INTO `bookings` VALUES ('8', '2', '萨芬', '13613322471', '121212122', '1', '1', '1111', '0', '2020-04-29 08:36:20', '2020-04-29 08:36:20');
INSERT INTO `bookings` VALUES ('9', '1', '萨芬', '13613322471', '1212121212', '1', '1', '1111', '0', '2020-04-29 09:19:03', '2020-04-29 09:19:03');
INSERT INTO `bookings` VALUES ('10', '1', '萨芬', '13613322471', '1212121215', '1', '1', '1111', '0', '2020-04-29 09:20:13', '2020-04-29 09:20:13');
INSERT INTO `bookings` VALUES ('15', '1', '萨芬', '13613322471', '1588176002', '1', '1', '1111', '0', '2020-04-29 09:23:38', '2020-04-29 09:23:38');
INSERT INTO `bookings` VALUES ('20', '1', '萨芬', '13613322471', '1588176001', '1', '1', '', '0', '2020-04-29 12:09:24', '2020-04-29 12:09:24');
INSERT INTO `bookings` VALUES ('21', '3', '萨芬', '13613322471', '1588089600', '1', '1', '1111', '0', '2020-04-29 13:38:32', '2020-04-29 13:38:32');
INSERT INTO `bookings` VALUES ('22', '3', '萨芬', '13613322471', '1588143600', '1', '1', '', '0', '2020-04-29 13:40:31', '2020-04-29 13:40:31');
INSERT INTO `bookings` VALUES ('23', '3', '张三', '13613322472', '1588089601', '1', '2', 'asdfasdf', '0', '2020-04-30 08:33:26', '2020-04-30 08:33:26');
INSERT INTO `bookings` VALUES ('24', '3', '张三', '13613322472', '1588233600', '1', '2', '', '0', '2020-04-30 08:48:27', '2020-04-30 08:48:27');
INSERT INTO `bookings` VALUES ('25', '3', '张三', '13613322472', '1588176000', '1', '2', 'asdfasdf', '0', '2020-04-30 15:07:25', '2020-04-30 15:07:25');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teacher` int(11) DEFAULT NULL COMMENT '教练',
  `time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `hour` int(11) DEFAULT NULL COMMENT ' 时间段',
  `course` int(11) DEFAULT NULL COMMENT '课程 1正式，2体验，3文化',
  `num` int(11) DEFAULT NULL COMMENT '预约人数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of classes
-- ----------------------------

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `culture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `official` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `culture_num` int(11) DEFAULT NULL,
  `experience_num` int(11) DEFAULT NULL,
  `official_num` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', '15800元套餐', 'images/81a8ec64e09953ae8493ac20e317283f.png', '撒旦发射点发射点发手动阀手动阀 阿斯顿发射点', '阿斯顿发射点发射点发生大撒旦发射点发', '啊书法大赛的发射点发射点发射点发', '啊萨达撒旦发射点发', '阿斯顿发射点发射点发生请问', '100000', '10', '11', '12', '2020-04-28 08:50:05', '2020-04-28 08:51:24');
INSERT INTO `courses` VALUES ('2', '188888套餐', 'images/52c05bae76712024053f088ae1308b1a.png', '为去微软', '微软犬瘟热', '微软犬瘟热', '温热去微软请问人情味', null, '18888', '5', '6', '8', '2020-04-28 14:16:12', '2020-04-28 14:16:12');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for member_logs
-- ----------------------------
DROP TABLE IF EXISTS `member_logs`;
CREATE TABLE `member_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of member_logs
-- ----------------------------
INSERT INTO `member_logs` VALUES ('1', '登录', '192.168.1.197', '3', '{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 14:31:14', '2020-04-30 14:31:14');
INSERT INTO `member_logs` VALUES ('2', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 14:31:25', '2020-04-30 14:31:25');
INSERT INTO `member_logs` VALUES ('3', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 14:31:27', '2020-04-30 14:31:27');
INSERT INTO `member_logs` VALUES ('4', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:17:49', '2020-04-30 17:17:49');
INSERT INTO `member_logs` VALUES ('5', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:18:41', '2020-04-30 17:18:41');
INSERT INTO `member_logs` VALUES ('6', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:18:50', '2020-04-30 17:18:50');
INSERT INTO `member_logs` VALUES ('7', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:19:15', '2020-04-30 17:19:15');
INSERT INTO `member_logs` VALUES ('8', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:19:23', '2020-04-30 17:19:23');
INSERT INTO `member_logs` VALUES ('9', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:20:09', '2020-04-30 17:20:09');
INSERT INTO `member_logs` VALUES ('10', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:20:11', '2020-04-30 17:20:11');
INSERT INTO `member_logs` VALUES ('11', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:21:20', '2020-04-30 17:21:20');
INSERT INTO `member_logs` VALUES ('12', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:22:06', '2020-04-30 17:22:06');
INSERT INTO `member_logs` VALUES ('13', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:22:08', '2020-04-30 17:22:08');
INSERT INTO `member_logs` VALUES ('14', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:22:55', '2020-04-30 17:22:55');
INSERT INTO `member_logs` VALUES ('15', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:22:56', '2020-04-30 17:22:56');
INSERT INTO `member_logs` VALUES ('16', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:22:57', '2020-04-30 17:22:57');
INSERT INTO `member_logs` VALUES ('17', '登录', '192.168.1.197', '4', '{\"openid\":2,\"session_key\":2,\"other\":{\"member_id\":4,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null,\"is_teacher\":0}}', null, '2020-04-30 17:24:25', '2020-04-30 17:24:25');
INSERT INTO `member_logs` VALUES ('18', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:24:46', '2020-04-30 17:24:46');
INSERT INTO `member_logs` VALUES ('19', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:25:27', '2020-04-30 17:25:27');
INSERT INTO `member_logs` VALUES ('20', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null}}', null, '2020-04-30 17:25:28', '2020-04-30 17:25:28');
INSERT INTO `member_logs` VALUES ('21', '登录', '192.168.1.197', '4', '{\"openid\":2,\"session_key\":2,\"other\":{\"member_id\":4,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null,\"is_teacher\":0}}', null, '2020-04-30 17:25:31', '2020-04-30 17:25:31');
INSERT INTO `member_logs` VALUES ('22', '注册', '192.168.1.197', '8', '{\"openid\":6,\"session_key\":2,\"other\":{\"member_id\":8,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null,\"is_teacher\":null}}', null, '2020-04-30 17:27:38', '2020-04-30 17:27:38');
INSERT INTO `member_logs` VALUES ('23', '登录', '192.168.1.197', '8', '{\"openid\":6,\"session_key\":2,\"other\":{\"member_id\":8,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null,\"is_teacher\":null}}', null, '2020-04-30 17:28:47', '2020-04-30 17:28:47');
INSERT INTO `member_logs` VALUES ('24', '登录', '192.168.1.197', '8', '{\"openid\":6,\"session_key\":2,\"other\":{\"member_id\":8,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null,\"is_teacher\":null}}', null, '2020-04-30 17:28:51', '2020-04-30 17:28:51');
INSERT INTO `member_logs` VALUES ('25', '登录', '192.168.1.197', '8', '{\"openid\":6,\"session_key\":2,\"other\":{\"member_id\":8,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null,\"is_teacher\":null}}', null, '2020-04-30 17:35:52', '2020-04-30 17:35:52');
INSERT INTO `member_logs` VALUES ('26', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":\"13545474544\",\"member_name\":\"\\u963f\\u4e09a\",\"member_head_icon\":null,\"is_teacher\":1}}', null, '2020-04-30 17:44:29', '2020-04-30 17:44:29');
INSERT INTO `member_logs` VALUES ('27', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":\"13545474544\",\"member_name\":\"\\u963f\\u4e09a\",\"member_head_icon\":null,\"is_teacher\":1}}', null, '2020-04-30 17:44:31', '2020-04-30 17:44:31');
INSERT INTO `member_logs` VALUES ('28', '登录', '192.168.1.197', '3', '{\"openid\":1,\"session_key\":2,\"other\":{\"member_id\":3,\"openid\":null,\"session_key\":2,\"member_mobile\":\"13545474544\",\"member_name\":\"\\u963f\\u4e09a\",\"member_head_icon\":null,\"is_teacher\":1}}', null, '2020-04-30 17:44:33', '2020-04-30 17:44:33');
INSERT INTO `member_logs` VALUES ('29', '登录', '192.168.1.197', '4', '{\"openid\":2,\"session_key\":2,\"other\":{\"member_id\":4,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null,\"is_teacher\":0}}', null, '2020-04-30 17:44:38', '2020-04-30 17:44:38');
INSERT INTO `member_logs` VALUES ('30', '登录', '192.168.1.197', '4', '{\"openid\":2,\"session_key\":2,\"other\":{\"member_id\":4,\"openid\":null,\"session_key\":2,\"member_mobile\":null,\"member_name\":null,\"member_head_icon\":null,\"is_teacher\":1}}', null, '2020-04-30 17:44:49', '2020-04-30 17:44:49');

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `head_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `sex` int(11) DEFAULT NULL COMMENT '性别 1男 2女',
  `birthday` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '生日',
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `culture_num` int(11) DEFAULT '0' COMMENT '文化课时',
  `experience_num` int(11) DEFAULT '0' COMMENT '体验课时',
  `official_num` int(11) DEFAULT '0' COMMENT '正式课时',
  `is_teacher` tinyint(1) DEFAULT '0' COMMENT '是否是教师 0否1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('1', '阿三', 'http://wstest.com/storage/2020_04_30/UEzXr8KzmqiQN42GWPfpjlwjNTPqIdXOrRbg5vC5.png', '13545474544', '2', '2018-01-01 00:00:00', null, '0', '2', '2', '0', '2020-04-28 09:31:11', '2020-04-30 11:09:45');
INSERT INTO `members` VALUES ('2', '小李', 'images/f586f9bf4e16df5ba750ae770637c23d.png', '13654785245', '1', '2020-04-28 10:47:49', null, '10', '9', '12', '0', '2020-04-28 14:15:03', '2020-04-30 08:48:27');
INSERT INTO `members` VALUES ('3', '阿三a', 'http://wstest.com/storage/2020_04_30/hwJ7B4pAZxEVV03a2e5ROsDnop8SxZFCETzlBuwJ.png', '13545474544', '2', '2020-04-30 16:25:00', '1', '2', '1', '2', '1', '2020-04-30 14:21:57', '2020-04-30 16:25:00');
INSERT INTO `members` VALUES ('4', null, null, null, null, '2020-04-30 17:44:47', '2', '0', '0', '0', '1', '2020-04-30 17:24:16', '2020-04-30 17:24:16');
INSERT INTO `members` VALUES ('5', null, null, null, null, null, '3', '0', '0', '0', '0', '2020-04-30 17:25:44', '2020-04-30 17:25:44');
INSERT INTO `members` VALUES ('6', null, null, null, null, null, '4', '0', '0', '0', '0', '2020-04-30 17:26:30', '2020-04-30 17:26:30');
INSERT INTO `members` VALUES ('7', null, null, null, null, null, '5', '0', '0', '0', '0', '2020-04-30 17:26:48', '2020-04-30 17:26:48');
INSERT INTO `members` VALUES ('8', '老王', null, null, null, '2020-04-30 17:28:41', '6', '0', '0', '0', '1', '2020-04-30 17:27:38', '2020-04-30 17:27:38');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('5', '2017_07_17_040159_create_config_table', '2');
INSERT INTO `migrations` VALUES ('6', '2020_04_27_175932_create_app_models_teachers_table', '3');
INSERT INTO `migrations` VALUES ('7', '2020_04_27_185034_create_tests_table', '4');
INSERT INTO `migrations` VALUES ('8', '2020_04_27_212458_create_teachers_table', '5');
INSERT INTO `migrations` VALUES ('9', '2020_04_28_081619_create_courses_table', '6');
INSERT INTO `migrations` VALUES ('10', '2020_04_28_082156_create_courses_table', '7');
INSERT INTO `migrations` VALUES ('11', '2020_04_28_091641_create_members_table', '8');
INSERT INTO `migrations` VALUES ('12', '2020_04_28_093952_create_bookings_table', '9');
INSERT INTO `migrations` VALUES ('13', '2020_04_28_095857_create_bookings_table', '10');
INSERT INTO `migrations` VALUES ('14', '2020_04_28_101233_create_classes_table', '11');
INSERT INTO `migrations` VALUES ('15', '2020_04_28_101809_create_set_classes_table', '12');
INSERT INTO `migrations` VALUES ('16', '2020_04_29_162554_create_ratings_table', '13');
INSERT INTO `migrations` VALUES ('17', '2020_04_29_163603_create_ratings_table', '14');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for rating_sums
-- ----------------------------
DROP TABLE IF EXISTS `rating_sums`;
CREATE TABLE `rating_sums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL COMMENT '分数',
  `total` int(11) DEFAULT NULL COMMENT '总人数',
  `middle` int(11) DEFAULT NULL COMMENT '中评',
  `good` int(11) DEFAULT NULL COMMENT '好评',
  `bad` int(11) DEFAULT NULL COMMENT '差评',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rating_sums
-- ----------------------------
INSERT INTO `rating_sums` VALUES ('14', '1', '47', '15', '4', '95', '1', '2020-04-30 09:07:20', '2020-04-30 09:07:20');

-- ----------------------------
-- Table structure for ratings
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL COMMENT '预约id',
  `score` int(11) DEFAULT NULL,
  `is_show` int(11) DEFAULT '0' COMMENT '0 正常 1匿名',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ratings
-- ----------------------------
INSERT INTO `ratings` VALUES ('11', '1', '2', '1', '9', '50', '0', '1231231231', '1231,1231,sdfs', '[\"http:\\/\\/wstest.com\\/storage\\/2020_04_2941da609c519d77b29be442f8c1105647\\/NdFJoM3M6oXVFlgkLExTB4ApzZ6RMjeAPi1pEnT4.png\",\"http:\\/\\/wstest.com\\/storage\\/2020_04_29524e30e771dba8110c0241a0882023d0\\/wtUsjgNm95PuOnp1ba0IOUih6eH6eZ772vQTuLyQ.png\"]', '2020-04-29 17:48:27', '2020-04-29 17:48:27');
INSERT INTO `ratings` VALUES ('12', '1', '1', '1', '10', '50', '0', '撒打发士大夫', 'sfas，asdfas，asdfa', '[\"http:\\/\\/wstest.com\\/storage\\/2020_04_309904f28d9384a095bce6d85776ddfb4e\\/VG3sErghViNjoeW4ZIjZk1m1rTRwCgd3Ixn1EBU8.png\",\"http:\\/\\/wstest.com\\/storage\\/2020_04_30073b00ab99487b74b63c9a6d2b962ddc\\/m7Jt6P99Typ3pzPl8AQqv3YJvu52DENs9E8yYElD.png\"]', '2020-04-30 08:54:55', '2020-04-30 08:54:55');
INSERT INTO `ratings` VALUES ('13', '1', '1', '1', '2', '50', '0', '撒打发士大夫', 'sfas，asdfas，asdfa', '', '2020-04-30 08:55:13', '2020-04-30 08:55:13');
INSERT INTO `ratings` VALUES ('14', '3', '2', '1', '6', '47', '0', '撒打发士大夫', 'sfas，asdfas，asdfa', '[\"http:\\/\\/wstest.com\\/storage\\/2020_04_30868302000e022adfe56cf99868c4e414\\/djLqCrY72wClx6HIkFuHUwegziJW3hGHMd46cbRC.png\",\"http:\\/\\/wstest.com\\/storage\\/2020_04_304764f37856fc727f70b666b8d0c4ab7a\\/dL0rmBjWoi8b0Kh5mAGYpZuknEIcxzHa1PeMHa06.png\"]', '2020-04-30 09:07:20', '2020-04-30 09:07:20');
INSERT INTO `ratings` VALUES ('15', '3', '1', '1', '1', '47', '0', '撒打发士大夫', 'sfas，asdfas，asdfa', '[\"http:\\/\\/wstest.com\\/storage\\/2020_04_301572466c21075fcf1a366fe5ae74e59b\\/YDjBcrw3t5M9s2KY32WTQ1NxeKuOLGYwH8zjrgxW.png\",\"http:\\/\\/wstest.com\\/storage\\/2020_04_300b606c5849811a2d8b92b8f4e6391fd7\\/IoSKToZRxIqb5Gc5nv2eGOWIPgYo0ujnht25nUVL.png\"]', '2020-04-30 15:15:14', '2020-04-30 15:15:14');

-- ----------------------------
-- Table structure for set_classes
-- ----------------------------
DROP TABLE IF EXISTS `set_classes`;
CREATE TABLE `set_classes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teacher` int(11) DEFAULT NULL COMMENT '教练',
  `time` int(11) DEFAULT NULL COMMENT '时间',
  `hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT ' 时间段',
  `course` int(11) DEFAULT NULL COMMENT '课程 1正式，2体验，3文化',
  `num` int(11) DEFAULT NULL COMMENT '预约人数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of set_classes
-- ----------------------------
INSERT INTO `set_classes` VALUES ('1', '2', '1588176000', '11,13,15', '2', '111', null, '2020-04-28 18:02:33');
INSERT INTO `set_classes` VALUES ('2', '3', '0', '11,13', '3', '99', '2020-04-28 14:35:21', '2020-04-28 15:30:16');
INSERT INTO `set_classes` VALUES ('3', '3', '0', '11,16', '3', null, '2020-04-28 15:23:40', '2020-04-28 15:23:40');
INSERT INTO `set_classes` VALUES ('4', '1', '1588089600', '11,14,15', '2', '3', '2020-04-28 15:31:12', '2020-04-28 15:34:13');
INSERT INTO `set_classes` VALUES ('5', '1', '1588089600', '13,16,17', '3', '8', null, '2020-04-30 15:54:14');

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT ' 用户表绑定id',
  `head_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT '金额',
  `description` text COLLATE utf8mb4_unicode_ci,
  `level` int(11) DEFAULT NULL COMMENT 'price',
  `is_index` tinyint(1) DEFAULT '0' COMMENT '是否推荐0否 1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('1', '3', 'images/edcac41b48f959573357639f3b559046.png', '80', '去问驱蚊器', '1', '1', '2020-04-27 21:47:39', '2020-04-30 16:47:02');
INSERT INTO `teachers` VALUES ('2', null, 'images/8b2d1f761f6fc4cc39127057336e541a.png', '80', '1231231', '2', '0', '2020-04-28 13:50:45', '2020-04-28 13:50:45');
INSERT INTO `teachers` VALUES ('3', null, 'images/275490017a3103e92e0270bb65634d9a.png', '180', '123123', '3', '0', '2020-04-28 14:14:14', '2020-04-28 14:14:14');

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'zhushi',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tests
-- ----------------------------
INSERT INTO `tests` VALUES ('1', 'images/QQ图片20200427185847.png', '2020-04-27 18:59:24', '2020-04-27 18:59:24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
