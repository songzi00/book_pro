/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL57
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : movie

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 02/06/2020 16:05:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add commuser', 7, 'add_commuser');
INSERT INTO `auth_permission` VALUES (26, 'Can change commuser', 7, 'change_commuser');
INSERT INTO `auth_permission` VALUES (27, 'Can delete commuser', 7, 'delete_commuser');
INSERT INTO `auth_permission` VALUES (28, 'Can view commuser', 7, 'view_commuser');
INSERT INTO `auth_permission` VALUES (29, 'Can add movie_info', 8, 'add_movie_info');
INSERT INTO `auth_permission` VALUES (30, 'Can change movie_info', 8, 'change_movie_info');
INSERT INTO `auth_permission` VALUES (31, 'Can delete movie_info', 8, 'delete_movie_info');
INSERT INTO `auth_permission` VALUES (32, 'Can view movie_info', 8, 'view_movie_info');
INSERT INTO `auth_permission` VALUES (33, 'Can add user_evaluation', 9, 'add_user_evaluation');
INSERT INTO `auth_permission` VALUES (34, 'Can change user_evaluation', 9, 'change_user_evaluation');
INSERT INTO `auth_permission` VALUES (35, 'Can delete user_evaluation', 9, 'delete_user_evaluation');
INSERT INTO `auth_permission` VALUES (36, 'Can view user_evaluation', 9, 'view_user_evaluation');
INSERT INTO `auth_permission` VALUES (37, 'Can add movie', 10, 'add_movie');
INSERT INTO `auth_permission` VALUES (38, 'Can change movie', 10, 'change_movie');
INSERT INTO `auth_permission` VALUES (39, 'Can delete movie', 10, 'delete_movie');
INSERT INTO `auth_permission` VALUES (40, 'Can view movie', 10, 'view_movie');
INSERT INTO `auth_permission` VALUES (41, 'Can add book_info', 11, 'add_book_info');
INSERT INTO `auth_permission` VALUES (42, 'Can change book_info', 11, 'change_book_info');
INSERT INTO `auth_permission` VALUES (43, 'Can delete book_info', 11, 'delete_book_info');
INSERT INTO `auth_permission` VALUES (44, 'Can view book_info', 11, 'view_book_info');
INSERT INTO `auth_permission` VALUES (45, 'Can add user_ev', 12, 'add_user_ev');
INSERT INTO `auth_permission` VALUES (46, 'Can change user_ev', 12, 'change_user_ev');
INSERT INTO `auth_permission` VALUES (47, 'Can delete user_ev', 12, 'delete_user_ev');
INSERT INTO `auth_permission` VALUES (48, 'Can view user_ev', 12, 'view_user_ev');
INSERT INTO `auth_permission` VALUES (49, 'Can add auth user', 13, 'add_authuser');
INSERT INTO `auth_permission` VALUES (50, 'Can change auth user', 13, 'change_authuser');
INSERT INTO `auth_permission` VALUES (51, 'Can delete auth user', 13, 'delete_authuser');
INSERT INTO `auth_permission` VALUES (52, 'Can view auth user', 13, 'view_authuser');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$120000$2B67WllRl4ZX$cKYxbfLoXsSiWCqKRCxmxSWp69y2XIoJ7iBVQTFdsBo=', '2020-01-09 08:29:00.337480', 1, 'PanLong', '', '', '2766918250@qq.com', 1, 1, '2020-01-04 08:39:00.000000');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$120000$QcmPHdxzEAeL$vFKCsXb1LpuItMdXsLBoJMZA+Jjt2dhG6+xbGSj7bEA=', '2020-01-04 09:20:39.465237', 0, 'PL', '', '', '2766918250@qq.com', 0, 1, '2020-01-04 09:20:39.266464');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$120000$zy2sYuOIFQn7$ewz+VgJKPIroprkAynHBIF2CL9P1PiTw+Lu8dvUFikc=', '2020-01-09 08:45:04.479774', 0, 'hyr', '', '', '1786742005@qq.com', 0, 1, '2020-01-07 02:55:15.897812');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$120000$w2kHN2mX30O5$cmSh/hQLx0zzCGT2mp3jy4RmtUaFpb1NrYcImlczFng=', '2020-01-07 08:02:25.377293', 0, '798', '', '', '1786742005@qq.com', 0, 1, '2020-01-07 08:02:25.189523');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$120000$90ZNITy3d5Bi$UgklO+59QaLBkuCs3TSaZTIGL55DWd/vQwXzOySp94c=', '2020-01-08 08:10:10.493508', 0, '胡', '', '', 'aaa@qq.com', 0, 1, '2020-01-08 08:10:10.303007');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$120000$PxNTJX8nyvFu$e8VbqgXsS7RUFCwIcPtC9Uz3nuSPBi3mveI8jXbZ0Gg=', '2020-01-08 08:48:49.236800', 0, 'gfdg', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:48:49.025967');
INSERT INTO `auth_user` VALUES (7, 'pbkdf2_sha256$120000$ZKw7IChpsVGa$rPBBx+o4sUYmDcLYd1kOE/5PmLHP6deC3DwA4yYC400=', '2020-01-08 08:49:07.949665', 0, 'sgsfdg', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:49:07.760226');
INSERT INTO `auth_user` VALUES (8, 'pbkdf2_sha256$120000$TpItsVZTvDti$rLKIypsO2QsB/BuJhGPk88MA0gktOJY3jyhhBqrpEio=', '2020-01-08 08:49:34.610437', 0, 'gdsfg', '', '', '1888@qq.com', 0, 1, '2020-01-08 08:49:34.418132');
INSERT INTO `auth_user` VALUES (9, 'pbkdf2_sha256$120000$eo1x8Nm2ZHVX$+6iB099q7IAETL4rNjclasvsPQ6C5r8xn390Hgy90y4=', '2020-01-08 08:50:19.541891', 0, 'gsrt', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:50:19.353332');
INSERT INTO `auth_user` VALUES (10, 'pbkdf2_sha256$120000$Tjz5dGjLMjP8$3Zwmho9DkH7yxYXk/kXLY+6yBEAM7PgTO6UeydEhkiE=', '2020-01-08 08:50:35.252479', 0, 'yuyu', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:50:35.063935');
INSERT INTO `auth_user` VALUES (11, 'pbkdf2_sha256$120000$YQ6hQ6hTlN8q$IYiSLYNUX0oxIW1C37qKaIjHKvutGjmI6gT7Erd9Xnk=', '2020-01-08 08:51:15.614263', 0, 'tyerty', '', '', '132132132@qq.com', 0, 1, '2020-01-08 08:51:15.425728');
INSERT INTO `auth_user` VALUES (12, 'pbkdf2_sha256$120000$trafk5UqNiNS$Chd15Oa55dsHyW3APCC5FCRO8NBpPseZB6SnPWQ9Xno=', '2020-01-08 09:07:02.729043', 0, '里', '', '', 'qqq@qq.com', 0, 1, '2020-01-08 09:07:02.523380');
INSERT INTO `auth_user` VALUES (13, 'pbkdf2_sha256$120000$FhybkSHHzF4z$hP7D5YaqFVEX22A0eb0pQiDw2dbDHjmgvz3Gi5nvk+Y=', '2020-01-09 00:44:14.981280', 0, 'TYU', '', '', 'AAA@qq.com', 0, 1, '2020-01-09 00:44:14.604266');
INSERT INTO `auth_user` VALUES (14, 'pbkdf2_sha256$120000$vv51stEAjD4t$Wpt6d1QVSZxeVIwg27iLr7Zg052jWSVJgxFMEn4lCSE=', '2020-01-09 00:50:58.972506', 0, 'gggg', '', '', 'aa@qq.com', 0, 1, '2020-01-09 00:50:58.788263');
INSERT INTO `auth_user` VALUES (15, 'pbkdf2_sha256$120000$fISCBMC2vtW7$6foTF+/3hU45NCqmuj0LEoPMIDIDSEB1+EP1PPPFKSI=', '2020-01-09 00:58:46.051800', 0, '653456456', '', '', '132132132@qq.com', 0, 1, '2020-01-09 00:58:45.857278');
INSERT INTO `auth_user` VALUES (16, 'pbkdf2_sha256$120000$NWye0y6Vu0Gc$Y1cbhcOtbL20ADBYAd1Wy9bPnelb00CoTgYFPIow9tw=', '2020-05-06 09:43:18.318627', 0, 'songzi', '', '', '18842899488@qq.com', 0, 1, '2020-05-06 09:43:17.922883');
INSERT INTO `auth_user` VALUES (17, 'pbkdf2_sha256$180000$v7DlwgGfXobO$QdPGqXkxau/KuXj2+4dVZPEauKZDLXvUwa9QnLhQDjI=', '2020-05-30 08:24:06.327445', 0, 'test1', '', '', '18899488@qq.com', 0, 1, '2020-05-26 03:55:54.488619');
INSERT INTO `auth_user` VALUES (18, 'pbkdf2_sha256$180000$68XUZNzXm4Go$3DIy1i8eAcKlpr+8ZZjX62je27/K16P5bGzjPB11AFs=', NULL, 0, 'test11', '', '', '343693887@qq.com', 0, 1, '2020-05-28 05:48:36.031339');
INSERT INTO `auth_user` VALUES (19, 'pbkdf2_sha256$180000$JCA8iCma7oiJ$cLLTwJe1phUMdpXgfuZuAPBRQP1c5z18LgRoShkRDgE=', NULL, 0, 'test4', '', '', '18842899488@qq.com', 0, 1, '2020-05-28 05:49:14.973720');
INSERT INTO `auth_user` VALUES (20, 'pbkdf2_sha256$180000$5hv3Md6KrmMd$6yaT51wTjClk5/PDYkbQ6CuSn/7oVEtI9TwoteiCWyQ=', NULL, 0, '13522178500', '', '', '343693887@qq.com', 0, 1, '2020-05-28 05:50:32.154352');
INSERT INTO `auth_user` VALUES (21, 'pbkdf2_sha256$180000$SRpI4tTgWrCW$ATR3FYt+WBcxEJzs8R/NKUxa3uXe2KM6VKuCr3yVPYI=', '2020-05-28 05:53:34.975389', 0, 'duoduo', '', '', '34393887@qq.com', 0, 1, '2020-05-28 05:53:34.517908');
INSERT INTO `auth_user` VALUES (22, 'pbkdf2_sha256$180000$fL1cjKnQPobO$GJq9TPM9lpE1VjkwoWA1nZem67t8GOj4rkf6VAGKq3I=', '2020-05-29 13:13:21.114194', 0, 'test007', '', '', '2521545@qq.com', 0, 1, '2020-05-29 13:13:20.531244');
INSERT INTO `auth_user` VALUES (23, 'pbkdf2_sha256$180000$ipm8SdoM4Qfj$AyZamw0ybGZOKBN7dR7kVwJszDNwYUIHMc9/teeHrbw=', '2020-05-30 08:51:10.509980', 0, 'test222', '', '', '252145@qq.com', 0, 1, '2020-05-30 08:51:09.893137');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2020-01-04 12:43:09.143156', '1', 'PanLong', 2, '[{\"changed\": {\"fields\": [\"last_login\"]}}, {\"added\": {\"name\": \"commuser\", \"object\": \"commuser object (2)\"}}]', 4, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (13, 'myauth', 'authuser');
INSERT INTO `django_content_type` VALUES (11, 'myauth', 'book_info');
INSERT INTO `django_content_type` VALUES (7, 'myauth', 'commuser');
INSERT INTO `django_content_type` VALUES (10, 'myauth', 'movie');
INSERT INTO `django_content_type` VALUES (8, 'myauth', 'movie_info');
INSERT INTO `django_content_type` VALUES (12, 'myauth', 'user_ev');
INSERT INTO `django_content_type` VALUES (9, 'myauth', 'user_evaluation');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-01-04 08:39:12.094242');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-01-04 08:39:12.582839');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-01-04 08:39:12.702618');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-01-04 08:39:12.714614');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-04 08:39:12.727648');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-01-04 08:39:12.794734');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-01-04 08:39:12.831089');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-01-04 08:39:12.872686');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-01-04 08:39:12.882710');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-01-04 08:39:12.919000');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-01-04 08:39:12.923011');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-04 08:39:12.933037');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-01-04 08:39:12.975788');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-04 08:39:13.016897');
INSERT INTO `django_migrations` VALUES (15, 'myauth', '0001_initial', '2020-01-04 08:39:13.087098');
INSERT INTO `django_migrations` VALUES (16, 'sessions', '0001_initial', '2020-01-04 08:39:13.127476');
INSERT INTO `django_migrations` VALUES (17, 'myauth', '0002_movie_info', '2020-01-04 09:45:36.285987');
INSERT INTO `django_migrations` VALUES (18, 'myauth', '0003_auto_20200104_2041', '2020-01-04 12:41:16.561439');
INSERT INTO `django_migrations` VALUES (19, 'myauth', '0004_user_evaluation', '2020-01-05 09:46:46.708153');
INSERT INTO `django_migrations` VALUES (20, 'myauth', '0005_auto_20200105_2104', '2020-01-05 13:08:29.335073');
INSERT INTO `django_migrations` VALUES (21, 'myauth', '0006_movie', '2020-01-08 12:28:09.064949');
INSERT INTO `django_migrations` VALUES (22, 'auth', '0010_alter_group_name_max_length', '2020-05-26 06:35:46.953058');
INSERT INTO `django_migrations` VALUES (23, 'auth', '0011_update_proxy_permissions', '2020-05-26 06:35:46.969539');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('1u73mukvkgqm9x4wxl81wb7rlce6m37w', 'M2I4YzQ1ODNhMDUzYTNmOTBjNzE4MTkxZjQyMDFiNmYyNzIwZTEyNDp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmE4Y2ZkNmQ5ODc4ZDcxY2UxNTQzOTUxNWZlM2ViZDk4M2Q2MDg1MyJ9', '2020-05-20 09:43:18.323988');
INSERT INTO `django_session` VALUES ('70vtbnffraf8h69uflj1ypbzzia6f9rv', 'OTYwMjgyYmM2NDA0ZDVhYTEwMGMwYTdlN2Y4YzNmMTk4NDEwYTBlZTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMjJlOTkwNzRlMjJlYjAxMmQ5MDdlYjEyYzk4ZGYyNGEzZDRkYjY3In0=', '2020-01-23 08:45:04.483282');
INSERT INTO `django_session` VALUES ('b428j89r7zpexqv338e7xfhqrvs20ft8', 'YzViMDJlMDg5ZjE2ZTdhYjljMmMxNzg0ODc1MTQ5OTA2YWViYTM5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YjgxYjkwNDRjMTM3Y2NmOTgwZDU1YjljMjkxYWQzODhjOTI0ZmI1In0=', '2020-01-18 11:42:52.503601');
COMMIT;

-- ----------------------------
-- Table structure for myauth_book_info
-- ----------------------------
DROP TABLE IF EXISTS `myauth_book_info`;
CREATE TABLE `myauth_book_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `book_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `book_description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `book_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `book_Starring` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `book_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `book_point` double DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=955 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of myauth_book_info
-- ----------------------------
BEGIN;
INSERT INTO `myauth_book_info` VALUES (1, '活着', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29053580.jpg', '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵... ', '余华', '481587', '小说', 9.4);
INSERT INTO `myauth_book_info` VALUES (2, '白夜行', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s24514468.jpg', '东野圭吾万千书迷心中的无冕之王周刊文春推理小说年度BEST10第1名本格推理小说年度BEST10第2名《白夜行》是东野圭吾迄今口碑最好的长篇杰作，具备... ', '[日] 东野圭吾 , 刘姿君', '260425', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (3, '解忧杂货店', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27264181.jpg', '现代人内心流失的东西，这家杂货店能帮你找回——僻静的街道旁有一家杂货店，只要写下烦恼投进卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答。因男友身患绝... ', '[日] 东野圭吾 , 李盈春', '634781', '小说', 8.5);
INSERT INTO `myauth_book_info` VALUES (4, '红楼梦', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1070959.jpg', '《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主... ', '[清] 曹雪芹 著、高鹗 续', '285210', '小说', 9.6);
INSERT INTO `myauth_book_info` VALUES (5, '房思琪的初恋乐园', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29651121.jpg', '令人心碎却无能为力的真实故事。向死而生的文学绝唱  打动万千读者的年度华语小说。李银河 戴锦华 骆以军 张悦然 冯唐 詹宏志 蒋方舟 史航 等多位学者作... ', '林奕含', '184398', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (6, '追风筝的人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1727290.jpg', '12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟... ', '[美] 卡勒德·胡赛尼 , 李继宏', '639539', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (7, '百年孤独', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s6384944.jpg', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。... ', '[哥伦比亚] 加西亚·马尔克斯 , 范晔', '288468', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (8, '小王子', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1103152.jpg', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行... ', '[法] 圣埃克苏佩里 , 马振聘', '566993', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (9, '围城', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1070222.jpg', '《围城》是钱钟书所著的长篇小说。第一版于1947年由上海晨光出版公司出版。1949年之后，由于政治等方面的原因，本书长期无法在中国大陆和台湾重印，仅在香港出... ', '钱锺书', '367580', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (10, '平凡的世界（全三部）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1144911.jpg', '《平凡的世界》是一部现实主义小说，也是一部小说形式的家族史。作者浓缩了中国西北农村的历史变迁过程，在小说中全景式地表现了中国当代城乡的社会生活。在近十年的广... ', '路遥', '247009', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (11, '霍乱时期的爱情', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s11284102.jpg', '★马尔克斯唯一正式授权，首次完整翻译★《霍乱时期的爱情》是我最好的作品，是我发自内心的创作。——加西亚•马尔克斯★这部光芒闪耀、令人心碎的作品是人类有史... ', '[哥伦比亚] 加西亚·马尔克斯 , 杨玲', '179997', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (12, '嫌疑人X的献身', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3254244.jpg', '百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。靖子与女儿相依为命，失手杀了前来纠缠的前夫。石神提出由... ', '[日] 东野圭吾 , 刘子倩', '404889', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (13, '1984', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4371408.jpg', '★村上春树以《1Q84》向本书致敬★著名学者刘绍铭经典译本内地首次出版★62种文字风靡110个国家，全球销量超过5000万册★《时代周刊》“最好的10... ', '[英] 乔治·奥威尔 , 刘绍铭', '143338', '小说', 9.3);
INSERT INTO `myauth_book_info` VALUES (14, '飘', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1078958.jpg', '小说中的故事发生在1861年美国南北战争前夕。生活在南方的少女郝思嘉从小深受南方文化传统的熏陶，可在她的血液里却流淌着野性的叛逆因素。随着战火的蔓廷和生活环... ', '[美国] 玛格丽特·米切尔 , 李美华', '155340', '小说', 9.3);
INSERT INTO `myauth_book_info` VALUES (15, '三体全集', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28357056.jpg', '三体三部曲 (《三体》《三体Ⅱ·黑暗森林》《三体Ⅲ·死神永生》) ，原名“地球往事三部曲”，是中国著名科幻作家刘慈欣的首个长篇系列，由科幻世界杂志社策划制作... ', '刘慈欣', '44417', '小说', 9.4);
INSERT INTO `myauth_book_info` VALUES (16, '三体', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2768378.jpg', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的... ', '刘慈欣', '371208', '小说', 8.8);
INSERT INTO `myauth_book_info` VALUES (17, '局外人', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4468484.jpg', '《局外人》是加缪小说的成名作和代表作之一，堪称20世纪整个西方文坛最具有划时代意义最著名小说之一，“局外人”也由此成为整个西方文学-哲学中最经典的人物形象和... ', '[法] 阿尔贝·加缪 , 柳鸣九', '124641', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (18, '月亮与六便士', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29634528.jpg', '“满地都是六便士，他却抬头看见了月亮。”银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一... ', '[英] 威廉·萨默塞特·毛姆 , 徐淳刚', '145380', '小说', 8.8);
INSERT INTO `myauth_book_info` VALUES (19, '月亮和六便士', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2659208.jpg', '一个英国证券交易所的经纪人，本已有牢靠的职业和地位、美满的家庭，但却迷恋上绘画，像“被魔鬼附了体”，突然弃家出走，到巴黎去追求绘画的理想。他的行径没有人能够... ', '[英] 毛姆 , 傅惟慈', '130147', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (20, '杀死一只知更鸟', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s23128183.jpg', '成长总是个让人烦恼的命题。成长有时会很缓慢，如小溪般唱着叮咚的歌曲趟过，有时却如此突如其来，如暴雨般劈头盖脸……三个孩子因为小镇上的几桩冤案经历了猝不及防的... ', '[美] 哈珀·李 , 高红梅', '73720', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (21, '明朝那些事儿（1-9）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3745215.jpg', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人... ', '当年明月', '83682', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (22, '骆驼祥子', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1146040.jpg', '《骆驼祥子》是老舍用同情的笔触描绘的一幕悲剧：二十年代的北京，一个勤劳、壮实的底层社会小人物怀着发家、奋斗的美好梦想，却最终为黑暗的暴风雨所吞噬。它揭示了当... ', '老舍', '148982', '小说', 8.4);
INSERT INTO `myauth_book_info` VALUES (23, '边城', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1595557.jpg', '《边城》是沈从文的代表作，写于一九三三年至一九三四年初。这篇作品如沈从文的其他湘西作品，着眼于普通人、善良人的命运变迁，描摹了湘女翠翠阴差阳错的生活悲剧，诚... ', '沈从文、黄永玉 卓雅 插图.', '176145', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (24, '三国演义（全二册）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1076932.jpg', '《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说史上最著名最杰出的长篇章回体历史小说。 《三国演义》的作者是元末明初人罗贯中，由毛纶，毛宗岗父... ', '[明] 罗贯中', '119478', '小说', 9.3);
INSERT INTO `myauth_book_info` VALUES (25, '傲慢与偏见', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4250062.jpg', '《傲慢与偏见》是简·奥斯汀的代表作，是一部描写爱情与婚姻的经典小说。作品以男女主人公达西和伊丽莎白由于傲慢和偏见而产生的爱情纠葛为线索，共写了四起姻缘：伊丽... ', '[英] 奥斯丁 , 张玲、张扬', '183934', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (26, '人生海海', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s32266692.jpg', '“他是全村最出奇古怪的人，古怪的名目要扳着指头一个一个数：第一，他当过国民党军队的上校，是革命群众要斗争的对象。但大家一边斗争他，一边又巴结讨好他，家里出... ', '麦家', '29245', '小说', 8.1);
INSERT INTO `myauth_book_info` VALUES (27, '82年生的金智英', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33463759.jpg', '一个女孩要经历多少看不见的坎坷，才能跌跌撞撞地长大成人。亚洲10年来罕见的现象级畅销书，凭口口相传在韩国销量突破100万册。韩国书店联合会评选2017年... ', '[韩]赵南柱 , 尹嘉玄', '47670', '小说', 7.9);
INSERT INTO `myauth_book_info` VALUES (28, '许三观卖血记', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1074291.jpg', '《许三观卖血记》是余华1995年创作的一部长篇小说，它以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述了许三观靠着卖... ', '余华', '188104', '小说', 8.8);
INSERT INTO `myauth_book_info` VALUES (29, '白鹿原', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28111905.jpg', '在从清末民初到建国之初的半个世纪里，一阵阵狂风掠过了白鹿原上空，而每一次的变动都震荡着它的内在结构：打乱了再恢复，恢复了再打乱，细腻地反映出白姓和鹿姓两大家... ', '陈忠实', '42205', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (30, '城南旧事', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2654869.jpg', '多少年来，《城南旧事》感动了一代又一代的读者，除了再版无数次的小说版外，1985年，本书在中国大陆搬上银幕，电影“城南旧事”获得“中国电影金鸡奖”、第二届“... ', '林海音 文、关维兴 图', '97467', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (31, '挪威的森林', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27312538.jpg', '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，... ', '[日] 村上春树 , 林少华', '97743', '小说', 8.5);
INSERT INTO `myauth_book_info` VALUES (32, '动物农场', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2347590.jpg', '《动物农场》是奥威尔最优秀的作品之一，是一则入木三分的反乌托的政治讽喻寓言。农场的一群动物成功地进行了一场“革命”，将压榨他们的人类东家赶出农场，建立起一... ', '[英] 乔治·奥威尔 , 荣如德', '88023', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (33, '云边有个小卖部', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29799055.jpg', '云边镇少年刘十三的成长故事。刘十三自幼与开小卖部的外婆相依为命，努力读书为了离开小镇，追寻远方与梦想。在城市里碰壁受挫的刘十三回到了小镇，与少时玩伴程霜重... ', '张嘉佳', '25021', '小说', 7.7);
INSERT INTO `myauth_book_info` VALUES (34, '许三观卖血记', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s24575140.jpg', '《许三观卖血记》是余华1995年创作的一部长篇小说。《许三观卖血记》以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述... ', '余华', '45089', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (35, '呼吸', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33519539.jpg', '特德·姜作品新结集，内藏《商人和炼金术师之门》《呼吸》《前路迢迢》《软件体的生命周期》《达西的新型自动机器保姆》《双面真相》《大寂静》《脐》《焦虑是自由引起... ', '[美] 特德·姜 , 耿辉、Ent、李克勤、姚向辉', '12835', '小说', 8.6);
INSERT INTO `myauth_book_info` VALUES (36, '鼠疫', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27003191.jpg', '阿尔贝•加缪（1913—1960）是法国声名卓著的小说家、散文家和剧作家，“存在主义”文学的大师。1957年因“热情而冷静地阐明了当代向人类良知提出的种种问... ', '(法)阿尔贝·加缪 , 刘方', '20587', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (37, '平凡的世界', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27449344.jpg', '《平凡的世界(套装共3册)》是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人... ', '路遥', '40618', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (38, '你当像鸟飞往你的山', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33492346.jpg', '★ 奇迹！一部新人处女作，上市第一周即登上《纽约时报》畅销榜，至今已累计80周，仍高居Top1，全美销量破百万册，作者因此书被《时代周刊》评为“年度影响力人... ', '[美] 塔拉·韦斯特弗 , 任爱红', '53623', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (39, '呐喊', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4696893.jpg', '《呐喊》收录作者1918年至1922年所作小说十四篇。1923年8月由北京新潮社出版，原收十五篇，列为该社《文艺丛书》之一。1924年5月第三次印刷时起，改... ', '鲁迅', '88272', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (40, '我的天才女友', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29164777.jpg', '只有你身为女人才会知道这些丑陋的秘密两个女人，50年的友谊和战争过去五年，几乎所有欧美读者都在谈论她、全球畅销百万册 被翻译成40种语言《金融时报》... ', '[意] 埃莱娜·费兰特 , 陈英', '56364', '小说', 8.5);
INSERT INTO `myauth_book_info` VALUES (41, '人间失格', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s6100756.jpg', '第一次，我喝酒喝得如此失态。悠悠醒来时，枕头边坐着常子。我躺在那位于本所工匠店二楼的房间里。“财尽情亦绝，你说这句话时我还以为是开玩笑，你是认真的？难怪... ', '太宰治 , 许时嘉', '186479', '小说', 8.3);
INSERT INTO `myauth_book_info` VALUES (42, '恶意', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3814606.jpg', '畅销书作家在出国的前一晚于家中被杀。凶手很快落网，对罪行供认不讳、但求速死，却对作案动机语焉不详。他当真是罪犯？他究竟为何杀人？在彻查被害人与凶手的过去... ', '[日] 东野圭吾 , 娄美莲', '191931', '小说', 8.4);
INSERT INTO `myauth_book_info` VALUES (43, '福尔摩斯探案全集（上中下）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1229240.jpg', '最经典的群众出版社的翻译版本，一经出版，立即风靡成千上万的中国人。离奇的情节，扣人的悬念，世界上最聪明的侦探，人间最诡秘的案情，福尔摩斯不但让罪犯无处藏身，... ', '[英] 阿·柯南道尔 , 丁钟华 等 , 群众出版社', '90276', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (44, '简爱（英文全本）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s5924326.jpg', '《简爱》是英国女作家夏洛蒂·勃朗特的代表作品。女主人公简爱是一个追赶求平等与自主的知识女性形象，小说以其感人的对于一位“灰姑娘式”人物奋斗史的刻划取胜，《简... ', '[英] 夏洛蒂·勃朗特', '185349', '小说', 8.5);
INSERT INTO `myauth_book_info` VALUES (45, '基督山伯爵', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3248016.jpg', '小说以法国波旁王朝和七月王朝两大时期为背景，描写了一个报恩复仇的故事。法老号大副唐泰斯受船长的临终嘱托，为拿破仑送了一封信，受到两个对他嫉妒的小人的陷害，被... ', '大仲马 , 周克希、韩沪麟', '98859', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (46, '天龙八部', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s23632058.jpg', '天龙八部乃金笔下的一部长篇小说，与《射雕》，《神雕》等 几部长篇小说一起被称为可读性最高的金庸小说。《天龙》的故事情节曲折，内容丰富，也曾多次被改编为电视作... ', '金庸', '101011', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (47, '默读', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29663109.jpg', '童年，成长经历，家庭背景，社会关系，创伤……我们不断追溯与求索犯罪者的动机，探寻其中最幽微的喜怒哀乐，不是为了设身处地地同情、乃至于原谅他们，不是为了给罪... ', 'Priest', '30092', '小说', 8.4);
INSERT INTO `myauth_book_info` VALUES (48, '撒野', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29889999.jpg', '我想，左肩有你，右肩微笑。我想，在你眼里，撒野奔跑，我想，一个眼神，就到老。重点学校的优等生蒋丞被寄养家庭“流放”到亲生父亲所在的钢厂，陌生的环境、粗... ', '巫哲', '22444', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (49, '老人与海', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1050021.jpg', '本书讲述了一个渔夫的故事。古巴老渔夫圣地亚哥在连续八十四天没捕到鱼的情况下，终于独自钓上了一条大马林鱼，但这鱼实在大，把他的小船在海上拖了三天才筋疲力尽，被... ', '海明威 , 吴劳', '153311', '小说', 8.4);
INSERT INTO `myauth_book_info` VALUES (50, '无声告白', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28109182.jpg', '我们终此一生，就是要摆脱他人的期待，找到真正的自己。——————————莉迪亚死了，可他们还不知道。莉迪亚是家中老二，李先生和李太太的掌上明珠，她遗传... ', '[美] 伍绮诗 , 孙璐', '114468', '小说', 8.2);
INSERT INTO `myauth_book_info` VALUES (51, '围城', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s11276847.jpg', '《围城》是一幅栩栩如生的世井百态图，人生的酸甜苦辣千般滋味均在其中得到了淋漓尽致的体现。钱钟书先生将自己的语言天才并入极其渊博的知识，再添加上一些讽刺主义的... ', '钱钟书', '49916', '小说', 9.3);
INSERT INTO `myauth_book_info` VALUES (52, '岛上书店', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29810488.jpg', '每个人的生命中，都有最艰难的那一年，将人生变得美好而辽阔。---------------------A．J．费克里，人近中年，在一座与世 隔绝的小岛上，... ', '[美] 加布瑞埃拉·泽文 , 孙仲旭、李玉瑶', '119125', '小说', 7.6);
INSERT INTO `myauth_book_info` VALUES (53, '生吞', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33593231.jpg', '现象级悬疑力作，悬疑文学榜年度黑马作品；张一白、史航、那多、关晓彤联名推荐！数度脱销，重磅再版！睽违数年，郑执重操长篇。构思两年半，以现实大案为背景，推理... ', '郑执', '13914', '小说', 8.2);
INSERT INTO `myauth_book_info` VALUES (54, '牧羊少年奇幻之旅', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s3668327.jpg', '牧羊少年圣地亚哥接连两次做了同一个梦，梦见埃及金字塔附近藏有一批宝藏。少年卖掉羊群，历尽千辛万苦一路向南，跨海来到非洲，穿越“死亡之海”撒哈拉大沙漠……期间... ', '[巴西] 保罗·柯艾略 , 丁文林', '118590', '小说', 8.5);
INSERT INTO `myauth_book_info` VALUES (55, '新名字的故事', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29376146.jpg', '只有你身为女人 才会知道这些丑陋的秘密两个女人 50年的友谊和战争如何成为那个更强大的她，又不被她战胜那不勒斯四部曲NO.2《我的天才女友》后续， ... ', '[意] 埃莱娜·费兰特 , 陈英', '43821', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (56, '肖申克的救赎', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4007145.jpg', '这本书收入斯蒂芬·金的四部中篇小说，是他作品中的杰出代表作。其英文版一经推出，即登上《纽约时报》畅销书排行榜的冠军之位，当年在美国狂销二十八万册。目前，这本... ', '[美] 斯蒂芬·金 , 施寄青、赵永芬、齐若兰', '83661', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (57, '山茶文具店', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29707472.jpg', '★日本全国700多家书店店员投票选出的最想卖的书！ 2016、2017连续两年获日本“书店大奖”重推！★日本畅销作家小川糸备受好评暖心之作。16封手写书信... ', '[日] 小川糸 , 王蕴洁', '18322', '小说', 8.3);
INSERT INTO `myauth_book_info` VALUES (58, '云游', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33523889.jpg', '新晋诺贝文学奖得主 托卡尔丘克 长篇力作2008年尼刻奖、2018年布克国际奖获奖作品移动是神圣的，不要停下！116个片段组接为漫漫旅途如粒子穿行在世... ', '[波兰] 奥尔加·托卡尔丘克 , 于是', '2285', '小说', 8.8);
INSERT INTO `myauth_book_info` VALUES (59, '一个陌生女人的来信', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2611329.jpg', '这是一部短篇小说集，除《一个陌生女人的来信》，亦按时间顺序收录了《火烧火燎的秘密》、《马来狂人》等名篇，作者的创作历程一目了然。《一个陌生女人的来信》讲述... ', '[奥] 斯台芬·茨威格 , 张玉书', '105027', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (60, '失踪的孩子', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29799269.jpg', '“我的整个生命，只是一场为了提升社会地位的低俗斗争。”全球畅销近千万册被翻译成40多种语言《我的天才女友》《新名字的故事》《离开的，留下的》——那不勒... ', '[意] 埃莱娜·费兰特 , 陈英', '33955', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (61, '白夜行', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4610502.jpg', '“只希望能手牵手在太阳下散步”，这个象征故事内核的绝望念想，有如一个美丽的幌子，随着无数凌乱、压抑、悲凉的故事片段像纪录片一样一一还原：没有痴痴相思，没有海... ', '[日] 东野圭吾 , 刘姿君', '457160', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (62, '穆斯林的葬礼', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1790771.jpg', '一个穆斯林家族，六十年间的兴衰，三代人命运的沉浮，两个发生在不同时代、有着不同内容却又交错扭结的爱情悲剧。这部五十余万字的长篇，以独特的视角，真挚的情感，... ', '霍达', '143752', '小说', 8.1);
INSERT INTO `myauth_book_info` VALUES (63, '魔道祖師 一', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29181694.jpg', '墨香銅臭年度最具話題性的超強人氣之作！額外收錄繁體版獨家番外重生於世的一代魔頭，非但沒有再掀腥風血雨，竟還和正派人士一起調查疑案，鏟妖除魔？！更驚人... ', '墨香铜臭', '25338', '小说', 7.9);
INSERT INTO `myauth_book_info` VALUES (64, '寂寞的游戏', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29508790.jpg', '☆  新京报·腾讯2017年度十大好书☆  豆瓣2017年度读书榜单 中国文学（小说类）TOP1☆  第一届做書奖 年度原创小说用纯真的双眼捕捉孤独的... ', '袁哲生', '10975', '小说', 8.4);
INSERT INTO `myauth_book_info` VALUES (65, '三体Ⅱ', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3078482.jpg', '三体人在利用魔法般的科技锁死了地球人的科学之后，庞大的宇宙舰队杀气腾腾地直扑太阳系，意欲清除地球文明。面对前所未有的危局，经历过无数磨难的地球人组建起同样... ', '刘慈欣', '220218', '小说', 9.3);
INSERT INTO `myauth_book_info` VALUES (66, '哈利•波特', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29552296.jpg', '《哈利·波特(共7册)(精)》编著者J.K.罗琳。    《哈利·波特(共7册)(精)》内容提要：2000年的一个深夜，在美国书店的烛光中，穿着黑斗篷，戴... ', 'J.K.罗琳 (J.K.Rowling)', '18524', '小说', 9.7);
INSERT INTO `myauth_book_info` VALUES (67, '窗边的小豆豆', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1067911.jpg', '《窗边的小豆豆》讲述了作者上小学时的一段真实的故事。作者因淘气被原学校退学后，来到巴学园。在小林校长的爱护和引导下，让一般人眼里“怪怪”的小豆豆逐渐成了一个... ', '[日] 黑柳彻子 著、岩崎千弘 图 , 赵玉皎', '155963', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (68, '刀锋', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2347562.jpg', '威廉·萨默塞特·毛姆（1874-1965），英国著名小说家、戏剧家。《刀锋》是他的主要作品之一。小说写一个参加第一次世界大战的美国青年飞行员拉里·达雷尔。... ', '[英]毛姆 , 周煦良', '53764', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (69, '离开的，留下的', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29535271.jpg', '两个女人 50年的友谊和战争那不勒斯四部曲NO.3全球畅销近千万册 被翻译成40多种语言“我希望她在场，这是我写作的目的。”《我的天才女友》《新名字... ', '[意] 埃莱娜·费兰特 , 陈英', '32842', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (70, '笑傲江湖（全四册）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2157335.jpg', '《笑傲江湖》是金庸1967年写的一部武侠小说，属于金庸的后期作品。 ', '金庸', '87048', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (71, '何以笙箫默', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2529195.jpg', '一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表... ', '顾漫', '137261', '小说', 7.8);
INSERT INTO `myauth_book_info` VALUES (72, '人生', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3847911.jpg', '《人生》是路遥的一部中篇小说，发表于1982年，它以改革时期陕北高原的城乡生活为时空背景，叙述了高中毕业生高加林回到土地又离开土地，再回到土地这样人生的变化... ', '路遥', '50439', '小说', 8.4);
INSERT INTO `myauth_book_info` VALUES (73, '海底两万里', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1817666.jpg', '本书是法国举世闻名的科幻小说作家儒尔·凡尔纳的代表作之一。作者让读者登上“鹦鹉螺号”，以平均十二公里的时速，在将近十个月的海底旅行中，随着尼摩船长和他的“... ', '[法国] 儒尔·凡尔纳 , 沈国华、钱培鑫、曹德明', '78712', '小说', 8.5);
INSERT INTO `myauth_book_info` VALUES (74, '偷影子的人', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s10339418.jpg', '一个老是受班上同学欺负的瘦弱小男孩，因为拥有一种特殊能力而强大：他能“偷别人的影子”，因而能看见他人心事，听见人们心中不愿意说出口的秘密。他开始成为需要帮助... ', '(法)马克·李维 , 段韵灵', '86296', '小说', 7.7);
INSERT INTO `myauth_book_info` VALUES (75, '西游记（全二册）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1627374.jpg', '《西游记》主要描写的是孙悟空保唐僧西天取经，历经九九八十一难的故事。唐僧取经是历史上一件真实的事。大约距今一千三百多年前，即唐太宗贞观元年（627），年仅2... ', '吴承恩 , 黄肃秋 注释', '57320', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (76, '无人生还', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2962510.jpg', '十个互不相识的人，被富有的欧文先生邀请到了印地安岛上的私人别墅里。晚餐后，一个神秘的声音揭开了人们心中所各自隐藏着的可怕秘密。当天晚上，年轻的马斯顿先生离奇... ', '[英] 阿加莎・克里斯蒂 , 祁阿红', '96517', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (77, '哈利·波特与魔法石', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1557671.jpg', '一岁的哈利・波特失去父母后，神秘地出现在姨父姨妈家的门前。哈利在姨父家饱受欺凌，度过十年极其痛苦的日子。姨父和姨妈好似凶神恶煞，他们那混世魔王儿子达力――一... ', '[英] J. K. 罗琳 , 苏农', '169882', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (78, '失明症漫记', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27217828.jpg', '你为什么会写这样一部冷酷的作品？虽然我活得很好，但这个世界却不好。----------------------------------------诺贝... ', '(葡)若泽·萨拉马戈 , 范维信', '11569', '小说', 9.1);
INSERT INTO `myauth_book_info` VALUES (79, '三体Ⅲ', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s26012674.jpg', '与三体文明的战争使人类第一次看到了宇宙黑暗的真相，地球文明像一个恐惧的孩子，熄灭了寻友的篝火，在暗夜中发抖。自以为历经沧桑，其实刚刚蹒跚学步；自以为悟出了生... ', '刘慈欣', '212863', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (80, '东方快车谋杀案', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1765799.jpg', '午夜过后，一场大雪迫使东方快车停了下来。这辆豪华列车整年都处于满员状态。但那天早上却发现少了一名乘客。一个美国人死在了他的包厢里，他被刺了十二刀，可他包厢的... ', '[英] 阿加莎·克里斯蒂 , 陈尧光', '94446', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (81, '盗墓笔记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4442295.jpg', '五十年前，一群长沙土夫子（盗墓贼）挖到一部战国帛书，残篇中记载了一座奇特的战国古墓的位置，但那群土夫子在地下碰上了诡异事件，几乎全部身亡。五十年后，其中一... ', '南派三叔', '159233', '小说', 8.3);
INSERT INTO `myauth_book_info` VALUES (82, '黄金时代', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1076372.jpg', '《黄金时代》是《时代三部曲》之一。  这是以文革时期为背景的系列作品构成的长篇。发生“文化大革命”的二十世纪六七十年代，正是我们国家和民族的灾难年代。那时，... ', '王小波', '122086', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (83, '鲁滨逊漂流记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1242786.jpg', '《鲁滨逊飘流记》是18世纪英国作家达尼尔·笛福的代表作品，也是一部具有广泛的世界性影响的作品。小说以1704年一名苏格兰水手亚历山大·薛里基洛克航海遇险，... ', '[英] 笛福 , 马静', '152153', '小说', 8.1);
INSERT INTO `myauth_book_info` VALUES (84, '最好的我们', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s26720726.jpg', '你总是说青春从不曾永远，而那时候的我们，就是最好的我们。这一次，我们和整个青春做告别。八月长安全新力作。你还记得高中时的同桌吗？那个少年有世界上最明朗... ', '八月长安', '55059', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (85, '挪威的森林', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1228930.jpg', '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，... ', '[日] 村上春树 , 林少华', '316652', '小说', 8);
INSERT INTO `myauth_book_info` VALUES (86, '摆渡人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28063701.jpg', '单亲女孩迪伦，15岁的世界一片狼藉：与母亲总是无话可说，在学校里经常受到同学的捉弄，唯一谈得来的好友也因为转学离开了。这一切都让迪兰感到无比痛苦。 她决定去... ', '[英]克莱儿·麦克福尔 , 付强', '81016', '小说', 6.2);
INSERT INTO `myauth_book_info` VALUES (87, '鬓边不是海棠红', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33596240.jpg', '一九三三年的北平，是全中国最热闹的地方。这热闹和别处不同，不是灯红酒绿，十里洋场，而是一种瑰丽的嘈杂，昆曲京戏，梆子乱弹，秦腔大鼓，快板评书，任何你能想象的... ', '水如天儿', '2339', '小说', 8.3);
INSERT INTO `myauth_book_info` VALUES (88, '巨人的陨落', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28668834.jpg', '在第一次世界大战的硝烟中，每一个迈向死亡的生命都在热烈地生长——威尔士的矿工少年、刚失恋的美国法律系大学生、穷困潦倒的俄国兄弟、富有英俊的英格兰伯爵，以及痴... ', '[英] 肯·福莱特 , 于大卫', '65363', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (89, '坡道上的家', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33535142.jpg', '新手妈妈里沙子，被选为了一名陪审员，接受审判的是一名杀害幼女的“恶母”。随着庭审的深入，里沙子却发现被告和自己是如此相似……为了育儿放弃职业生涯，却因此失... ', '[日] 角田光代 , 杨明绮', '3706', '小说', 8.3);
INSERT INTO `myauth_book_info` VALUES (90, '我不喜欢人类，我想住进森林', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33534692.jpg', '逃避不可耻还很有用北欧头号畅销小说《我是个年轻人，我心情不太好》第二季我是自行车手。我是丈夫、父亲、儿子和员工。还是房产所有者。以及一堆其他身份。... ', '[挪威] 阿澜·卢 , 宁蒙', '1198', '小说', 7.6);
INSERT INTO `myauth_book_info` VALUES (91, '伪装学渣', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33296083.jpg', '小说讲述了分班后，两位风靡校园的“问题少年”不止分进一个班还成为同桌的故事。他们明明是学霸却要装学渣，浑身都是戏，考试要争倒数第一，表面上天天玩游戏，实际上... ', '木瓜黄', '4987', '小说', 6.7);
INSERT INTO `myauth_book_info` VALUES (92, '有匪（全集）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29609111.jpg', '豆瓣年度读书榜单推荐作品大神级作家Priest古言小说扛鼎之作二十年前，“南刀”李徽奉旨为匪，建蜀山四十八寨，收天下落魄之人。二十年后，一位自称谢允的... ', 'Priest', '11283', '小说', 8.6);
INSERT INTO `myauth_book_info` VALUES (93, '射雕英雄传（全四册）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2157336.jpg', '《射雕英雄传》是金庸的代表作之一，作于一九五七年到一九五九年，在《香港商报》连载。《射雕》中的人物个性单纯，郭靖诚朴厚重、黄蓉机智狡狯，读者容易印象深刻。这... ', '金庸', '63470', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (94, '那不勒斯故事四部曲', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29643733.jpg', '艾琳娜與莉拉出生在二次戰後的那不勒斯貧窮郊區，兩人的友誼從六歲時交換娃娃開始，充滿活力的莉拉有時走在前頭，帶著艾琳娜去冒險；個性內斂的艾琳娜則加倍努力，讓自... ', '', '9532', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (95, '灿烂千阳', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2651394.jpg', '私生女玛丽雅姆在父亲的宅院门口苦苦守候，回到家却看到因绝望而上吊自杀的母亲。那天是她十五岁的生日，而童年嘎然而止。玛丽雅姆随后由父亲安排远嫁喀布尔四十多岁的... ', '[美] 卡勒德·胡赛尼 , 李继宏', '90113', '小说', 8.8);
INSERT INTO `myauth_book_info` VALUES (96, '盗墓笔记', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29937988.jpg', '暂无介绍', '南派三叔', '26070', '小说', 8.5);
INSERT INTO `myauth_book_info` VALUES (97, '皮囊', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27943411.jpg', '一部有着小说阅读质感的散文集，也是一本“认心又认人”的书。作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个... ', '蔡崇达', '84445', '小说', 7.6);
INSERT INTO `myauth_book_info` VALUES (98, '恶意', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29069735.jpg', '《恶意》是东野圭吾挑战写作极限的长篇杰作，与《白夜行》《嫌疑人X的献身》《解忧杂货店》并称东野圭吾四大杰作。《恶意》深刻揭示人性，故事中无边的恶意深不见底，... ', '[日] 东野圭吾 , 娄美莲', '34739', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (99, '撒哈拉的故事', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1066570.jpg', '三毛作品中最脍炙人口的《撒哈拉的故事》，由12篇精彩动人的散文结合而成，其中《沙漠中的饭店》，是三毛适应荒凉单调的沙漠生活后，重新拾笔的第一篇文字，自此之后... ', '三毛', '74324', '小说', 9.2);
INSERT INTO `myauth_book_info` VALUES (100, '简爱', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33473798.jpg', '《简爱》讲述了这样一个故事：简•爱自幼父母双亡，投靠冷酷的舅母，但舅母无情地抛弃了她。她在一所慈善学校做了六年的学生和两年的教师。十八岁时，简•爱受聘到桑菲... ', '[英] 夏洛蒂·勃朗特 , 宋兆霖', '20352', '小说', 8.6);
INSERT INTO `myauth_book_info` VALUES (101, '呼兰河传', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1167060.jpg', '暂无介绍', '萧红', '53299', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (102, '生活与命运', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33562090.jpg', '1960年，瓦西里•格罗斯曼（Васи́лий Гро́ссман，1905—1964）完成长篇历史小说《生活与命运》。苏联当局负责意识形态的苏斯洛夫称此书... ', '[俄罗斯] 瓦西里·格罗斯曼 , 力冈', '559', '小说', 9.5);
INSERT INTO `myauth_book_info` VALUES (103, '半生缘', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2838737.jpg', '他和曼桢认识，已经是多年前的事了。算起来倒已经有十四年了——真吓人一跳！马上使他连带地觉得自己已老了许多。日子过得真快，尤其对于中年以后的人，十年八年都好像... ', '张爱玲', '68922', '小说', 8.6);
INSERT INTO `myauth_book_info` VALUES (104, '斯通纳', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28332051.jpg', '《斯通纳》讲述了生命中最重要的部分：爱，认同，怜悯，志业，傲骨，信任与死亡。一个勇者有过的失败不失意的人生：即使不能拥有完美的生活，所幸追求过完整的自我。... ', '[美] 约翰·威廉斯 , 杨向荣', '32425', '小说', 8.8);
INSERT INTO `myauth_book_info` VALUES (105, '了不起的盖茨比', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s9110246.jpg', '★ 20世纪全球百部英语小说第2名★ 村上春树最爱的书★ 村上春树万字长文导读★ 全新译本完美呈现原著魅力★ 如果没有与《了不起的盖茨比》相遇，我写... ', '[美] 斯科特·菲茨杰拉德 , 邓若虚', '23033', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (106, '神雕侠侣', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s26018916.jpg', '《神雕侠侣》是金庸作品集之一。其主人公杨过自然而然地走上了非正统的人生道路，入了“道流”。其特点是“至情至性，实现自我”，即把个人的利益、情感、个性及人格尊... ', '金庸 , 有1996年11月北平第4次印本', '79128', '小说', 8.9);
INSERT INTO `myauth_book_info` VALUES (107, '微微一笑很倾城', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s10320248.jpg', '如果你“惨”遭抛弃后，忽然有个很强很拽很不可一世的男人向你求婚，你怎么反应？贝微微同学的反应是：“大神……你被盗号了么＝ ＝”这个世界也太不真实了吧！... ', '顾漫', '94548', '小说', 7.9);
INSERT INTO `myauth_book_info` VALUES (108, '呼啸山庄', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1095383.jpg', '夏洛蒂和传记作者告诉我们，爱米丽生性独立、豁达、纯真、刚毅、热情而又内向。她颇有男儿气概，酷爱自己生长其间的荒原，平素在离群索居中，除去手足情谊，最喜与大自... ', '（英）勃朗特、张玲、张扬 , 张扬、张玲', '101816', '小说', 8.4);
INSERT INTO `myauth_book_info` VALUES (109, '一个叫欧维的男人决定去死', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29071620.jpg', '来认识一下欧维，这个59岁的老头，脾气古怪，带着坚不可摧的原则、每天恪守的常规以及随时发飙的脾性在社区晃来晃去，被背地里称为“地狱来的恶邻”。他每天一大早就... ', '[瑞典] 弗雷德里克·巴克曼 , 宁蒙', '33352', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (110, '明朝那些事儿（壹）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1872653.jpg', '从朱元璋的出身开始写起，到永乐大帝夺位的靖难之役结束为止。叙述了明朝最艰苦卓绝的开国过程。朱元璋pk陈友谅，谁堪问鼎天下？战太平、太湖大决战。卧榻之侧埋恶虎... ', '当年明月', '181989', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (111, '繁花', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s26037307.jpg', '这是一部地域小说，人物的行走，可找到“有形”地图的对应。这也是一部记忆小说，六十年代的少年旧梦，辐射广泛，处处人间烟火的斑斓记忆，九十年代的声色犬马，是一场... ', '金宇澄', '18995', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (112, '从你的全世界路过', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27102925.jpg', '《从你的全世界路过》是微博上最会写故事的人张嘉佳献给你的心动故事。最初以“睡前故事”系列的名义在网上疯狂流传，几天内达到1,500,000 次转发，超4亿... ', '张嘉佳', '105890', '小说', 7);
INSERT INTO `myauth_book_info` VALUES (113, '沉默的巡游', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33596167.jpg', '★东野圭吾全新长篇小说，简体中文版首次出版《白夜行》《嫌疑人X的献身》《放学后》《新参者》后，第5次夺得周刊文春推理榜年度第1名！★东野圭吾：《沉默的巡游... ', '[日] 东野圭吾 , 边大玉', '8405', '小说', 7.4);
INSERT INTO `myauth_book_info` VALUES (114, '狼图腾', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1466042.jpg', '《狼图腾》由几十个有机连贯的“狼故事”组成，情节紧张激烈而又新奇神秘。读者可从书中每一篇章、每个细节中攫取强烈的阅读快感，令人欲罢不能。那些精灵一般的蒙古草... ', '姜戎', '145420', '小说', 8.2);
INSERT INTO `myauth_book_info` VALUES (115, '草房子', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2652540.jpg', '这是一部讲究品位的少年长篇小说。作品写了男孩桑桑刻骨铭心、终身难忘的六年小学生活。六年中，他亲眼目睹或直接参与了一连串看似寻常但又催人泪下、撼动人心的故事... ', '曹文轩', '19168', '小说', 9);
INSERT INTO `myauth_book_info` VALUES (116, '倾城之恋', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4638950.jpg', '一九四四年八月十五日，张爱玲的小说集《传奇》由上海杂志社出版，书中收入中短篇小说《金锁记》、《倾城之恋》、《茉莉香片》、《沉香屑：第一炉香》、《沉香屑：第二... ', '张爱玲', '36072', '小说', 8.7);
INSERT INTO `myauth_book_info` VALUES (117, '八百万种死法', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33601900.jpg', '◆30年来，梁朝伟做梦都想演《八百万种死法》！◆梁朝伟飞越半个地球，只为见作者一面；4次恳求合作，只为演本书主角。《八百万种死法》太懂梁朝伟的孤独！◆梁... ', '[美] 劳伦斯·布洛克 , 姚向辉', '535', '小说', 8.1);
INSERT INTO `myauth_book_info` VALUES (118, '了不起的盖茨比', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1005875.jpg', '盖茨比为了久久地抱着的一个梦而付出了很高的代价。他死后，尼克发觉是汤姆暗中挑拨威尔逊去杀死盖茨比。他感到东部鬼影幢幢，世态炎凉，便决定回中西部老家去。这是一... ', '菲茨杰拉德 , 姚乃强', '106128', '小说', 8.4);
INSERT INTO `myauth_book_info` VALUES (119, '天才基本法', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33322954.jpg', '二十二岁的林朝夕在父亲确诊阿尔茨海默病这天，得知自己暗恋多年的校园男神裴之即将出国深造的消息——对方考取的学校，恰是父亲当年为她放弃的那所。同样自幼与奥数... ', '长洱', '5086', '小说', 8.6);
INSERT INTO `myauth_book_info` VALUES (120, '小王子', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1103152.jpg', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行... ', '[法] 圣埃克苏佩里 , 马振聘', '566993', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (121, '追风筝的人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1727290.jpg', '12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟... ', '[美] 卡勒德·胡赛尼 , 李继宏', '639539', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (122, '百年孤独', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s6384944.jpg', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。... ', '[哥伦比亚] 加西亚·马尔克斯 , 范晔', '288468', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (123, '飘', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1078958.jpg', '小说中的故事发生在1861年美国南北战争前夕。生活在南方的少女郝思嘉从小深受南方文化传统的熏陶，可在她的血液里却流淌着野性的叛逆因素。随着战火的蔓廷和生活环... ', '[美国] 玛格丽特·米切尔 , 李美华', '155340', '外国文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (124, '霍乱时期的爱情', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s11284102.jpg', '★马尔克斯唯一正式授权，首次完整翻译★《霍乱时期的爱情》是我最好的作品，是我发自内心的创作。——加西亚•马尔克斯★这部光芒闪耀、令人心碎的作品是人类有史... ', '[哥伦比亚] 加西亚·马尔克斯 , 杨玲', '179997', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (125, '1984', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4371408.jpg', '★村上春树以《1Q84》向本书致敬★著名学者刘绍铭经典译本内地首次出版★62种文字风靡110个国家，全球销量超过5000万册★《时代周刊》“最好的10... ', '[英] 乔治·奥威尔 , 刘绍铭', '143338', '外国文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (126, '月亮和六便士', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2659208.jpg', '一个英国证券交易所的经纪人，本已有牢靠的职业和地位、美满的家庭，但却迷恋上绘画，像“被魔鬼附了体”，突然弃家出走，到巴黎去追求绘画的理想。他的行径没有人能够... ', '[英] 毛姆 , 傅惟慈', '130147', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (127, '月亮与六便士', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29634528.jpg', '“满地都是六便士，他却抬头看见了月亮。”银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一... ', '[英] 威廉·萨默塞特·毛姆 , 徐淳刚', '145380', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (128, '傲慢与偏见', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4250062.jpg', '《傲慢与偏见》是简·奥斯汀的代表作，是一部描写爱情与婚姻的经典小说。作品以男女主人公达西和伊丽莎白由于傲慢和偏见而产生的爱情纠葛为线索，共写了四起姻缘：伊丽... ', '[英] 奥斯丁 , 张玲、张扬', '183934', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (129, '杀死一只知更鸟', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s23128183.jpg', '成长总是个让人烦恼的命题。成长有时会很缓慢，如小溪般唱着叮咚的歌曲趟过，有时却如此突如其来，如暴雨般劈头盖脸……三个孩子因为小镇上的几桩冤案经历了猝不及防的... ', '[美] 哈珀·李 , 高红梅', '73720', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (130, '局外人', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4468484.jpg', '《局外人》是加缪小说的成名作和代表作之一，堪称20世纪整个西方文坛最具有划时代意义最著名小说之一，“局外人”也由此成为整个西方文学-哲学中最经典的人物形象和... ', '[法] 阿尔贝·加缪 , 柳鸣九', '124641', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (131, '安徒生童话故事集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1034062.jpg', '暂无介绍', '（丹麦）安徒生 , 叶君健', '86752', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (132, '动物农场', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2347590.jpg', '《动物农场》是奥威尔最优秀的作品之一，是一则入木三分的反乌托的政治讽喻寓言。农场的一群动物成功地进行了一场“革命”，将压榨他们的人类东家赶出农场，建立起一... ', '[英] 乔治·奥威尔 , 荣如德', '88023', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (133, '简爱（英文全本）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s5924326.jpg', '《简爱》是英国女作家夏洛蒂·勃朗特的代表作品。女主人公简爱是一个追赶求平等与自主的知识女性形象，小说以其感人的对于一位“灰姑娘式”人物奋斗史的刻划取胜，《简... ', '[英] 夏洛蒂·勃朗特', '185349', '外国文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (134, '老人与海', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1050021.jpg', '本书讲述了一个渔夫的故事。古巴老渔夫圣地亚哥在连续八十四天没捕到鱼的情况下，终于独自钓上了一条大马林鱼，但这鱼实在大，把他的小船在海上拖了三天才筋疲力尽，被... ', '海明威 , 吴劳', '153311', '外国文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (135, '基督山伯爵', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3248016.jpg', '小说以法国波旁王朝和七月王朝两大时期为背景，描写了一个报恩复仇的故事。法老号大副唐泰斯受船长的临终嘱托，为拿破仑送了一封信，受到两个对他嫉妒的小人的陷害，被... ', '大仲马 , 周克希、韩沪麟', '98859', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (136, '哈利•波特', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29552296.jpg', '《哈利·波特(共7册)(精)》编著者J.K.罗琳。    《哈利·波特(共7册)(精)》内容提要：2000年的一个深夜，在美国书店的烛光中，穿着黑斗篷，戴... ', 'J.K.罗琳 (J.K.Rowling)', '18524', '外国文学', 9.7);
INSERT INTO `myauth_book_info` VALUES (137, '一个陌生女人的来信', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2611329.jpg', '这是一部短篇小说集，除《一个陌生女人的来信》，亦按时间顺序收录了《火烧火燎的秘密》、《马来狂人》等名篇，作者的创作历程一目了然。《一个陌生女人的来信》讲述... ', '[奥] 斯台芬·茨威格 , 张玉书', '105027', '外国文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (138, '牧羊少年奇幻之旅', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s3668327.jpg', '牧羊少年圣地亚哥接连两次做了同一个梦，梦见埃及金字塔附近藏有一批宝藏。少年卖掉羊群，历尽千辛万苦一路向南，跨海来到非洲，穿越“死亡之海”撒哈拉大沙漠……期间... ', '[巴西] 保罗·柯艾略 , 丁文林', '118590', '外国文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (139, '肖申克的救赎', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4007145.jpg', '这本书收入斯蒂芬·金的四部中篇小说，是他作品中的杰出代表作。其英文版一经推出，即登上《纽约时报》畅销书排行榜的冠军之位，当年在美国狂销二十八万册。目前，这本... ', '[美] 斯蒂芬·金 , 施寄青、赵永芬、齐若兰', '83661', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (140, '鼠疫', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27003191.jpg', '阿尔贝•加缪（1913—1960）是法国声名卓著的小说家、散文家和剧作家，“存在主义”文学的大师。1957年因“热情而冷静地阐明了当代向人类良知提出的种种问... ', '(法)阿尔贝·加缪 , 刘方', '20587', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (141, '海底两万里', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1817666.jpg', '本书是法国举世闻名的科幻小说作家儒尔·凡尔纳的代表作之一。作者让读者登上“鹦鹉螺号”，以平均十二公里的时速，在将近十个月的海底旅行中，随着尼摩船长和他的“... ', '[法国] 儒尔·凡尔纳 , 沈国华、钱培鑫、曹德明', '78712', '外国文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (142, '云游', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33523889.jpg', '新晋诺贝文学奖得主 托卡尔丘克 长篇力作2008年尼刻奖、2018年布克国际奖获奖作品移动是神圣的，不要停下！116个片段组接为漫漫旅途如粒子穿行在世... ', '[波兰] 奥尔加·托卡尔丘克 , 于是', '2285', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (143, '我的天才女友', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29164777.jpg', '只有你身为女人才会知道这些丑陋的秘密两个女人，50年的友谊和战争过去五年，几乎所有欧美读者都在谈论她、全球畅销百万册 被翻译成40种语言《金融时报》... ', '[意] 埃莱娜·费兰特 , 陈英', '56364', '外国文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (144, '解忧杂货店', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27264181.jpg', '现代人内心流失的东西，这家杂货店能帮你找回——僻静的街道旁有一家杂货店，只要写下烦恼投进卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答。因男友身患绝... ', '[日] 东野圭吾 , 李盈春', '634781', '外国文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (145, '鲁滨逊漂流记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1242786.jpg', '《鲁滨逊飘流记》是18世纪英国作家达尼尔·笛福的代表作品，也是一部具有广泛的世界性影响的作品。小说以1704年一名苏格兰水手亚历山大·薛里基洛克航海遇险，... ', '[英] 笛福 , 马静', '152153', '外国文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (146, '白夜行', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s24514468.jpg', '东野圭吾万千书迷心中的无冕之王周刊文春推理小说年度BEST10第1名本格推理小说年度BEST10第2名《白夜行》是东野圭吾迄今口碑最好的长篇杰作，具备... ', '[日] 东野圭吾 , 刘姿君', '260425', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (147, '福尔摩斯探案全集（上中下）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1229240.jpg', '最经典的群众出版社的翻译版本，一经出版，立即风靡成千上万的中国人。离奇的情节，扣人的悬念，世界上最聪明的侦探，人间最诡秘的案情，福尔摩斯不但让罪犯无处藏身，... ', '[英] 阿·柯南道尔 , 丁钟华 等 , 群众出版社', '90276', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (148, '格林童话全集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1134341.jpg', '《格林童话全集》是德国民间故事集。由德国的雅各・格林和威廉・格林兄弟根据民间口述材料改写而成。他们搜集、整理、出版这些民间童话的目的，正如威廉所说，是\"希望... ', '[德国]格林兄弟 , 魏以新', '68080', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (149, '岛上书店', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29810488.jpg', '每个人的生命中，都有最艰难的那一年，将人生变得美好而辽阔。---------------------A．J．费克里，人近中年，在一座与世 隔绝的小岛上，... ', '[美] 加布瑞埃拉·泽文 , 孙仲旭、李玉瑶', '119125', '外国文学', 7.6);
INSERT INTO `myauth_book_info` VALUES (150, '呼啸山庄', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1095383.jpg', '夏洛蒂和传记作者告诉我们，爱米丽生性独立、豁达、纯真、刚毅、热情而又内向。她颇有男儿气概，酷爱自己生长其间的荒原，平素在离群索居中，除去手足情谊，最喜与大自... ', '（英）勃朗特、张玲、张扬 , 张扬、张玲', '101816', '外国文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (151, '巨人的陨落', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28668834.jpg', '在第一次世界大战的硝烟中，每一个迈向死亡的生命都在热烈地生长——威尔士的矿工少年、刚失恋的美国法律系大学生、穷困潦倒的俄国兄弟、富有英俊的英格兰伯爵，以及痴... ', '[英] 肯·福莱特 , 于大卫', '65363', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (152, '灿烂千阳', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2651394.jpg', '私生女玛丽雅姆在父亲的宅院门口苦苦守候，回到家却看到因绝望而上吊自杀的母亲。那天是她十五岁的生日，而童年嘎然而止。玛丽雅姆随后由父亲安排远嫁喀布尔四十多岁的... ', '[美] 卡勒德·胡赛尼 , 李继宏', '90113', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (153, '茶花女', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1008927.jpg', '《茶花女》为我们塑造了一些生动、鲜明的艺术形象，而其中最突出、最令人难忘的自然是女主人公茶花女玛格丽特。读者们切莫把玛格丽特和阿尔丰西娜·普莱西小姐混为一谈... ', '小仲马 , 王振孙', '106590', '外国文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (154, '新名字的故事', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29376146.jpg', '只有你身为女人 才会知道这些丑陋的秘密两个女人 50年的友谊和战争如何成为那个更强大的她，又不被她战胜那不勒斯四部曲NO.2《我的天才女友》后续， ... ', '[意] 埃莱娜·费兰特 , 陈英', '43821', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (155, '简爱', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33473798.jpg', '《简爱》讲述了这样一个故事：简•爱自幼父母双亡，投靠冷酷的舅母，但舅母无情地抛弃了她。她在一所慈善学校做了六年的学生和两年的教师。十八岁时，简•爱受聘到桑菲... ', '[英] 夏洛蒂·勃朗特 , 宋兆霖', '20352', '外国文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (156, '摆渡人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28063701.jpg', '单亲女孩迪伦，15岁的世界一片狼藉：与母亲总是无话可说，在学校里经常受到同学的捉弄，唯一谈得来的好友也因为转学离开了。这一切都让迪兰感到无比痛苦。 她决定去... ', '[英]克莱儿·麦克福尔 , 付强', '81016', '外国文学', 6.2);
INSERT INTO `myauth_book_info` VALUES (157, '哈利·波特与魔法石', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1557671.jpg', '一岁的哈利・波特失去父母后，神秘地出现在姨父姨妈家的门前。哈利在姨父家饱受欺凌，度过十年极其痛苦的日子。姨父和姨妈好似凶神恶煞，他们那混世魔王儿子达力――一... ', '[英] J. K. 罗琳 , 苏农', '169882', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (158, '失踪的孩子', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29799269.jpg', '“我的整个生命，只是一场为了提升社会地位的低俗斗争。”全球畅销近千万册被翻译成40多种语言《我的天才女友》《新名字的故事》《离开的，留下的》——那不勒... ', '[意] 埃莱娜·费兰特 , 陈英', '33955', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (159, '无人生还', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2962510.jpg', '十个互不相识的人，被富有的欧文先生邀请到了印地安岛上的私人别墅里。晚餐后，一个神秘的声音揭开了人们心中所各自隐藏着的可怕秘密。当天晚上，年轻的马斯顿先生离奇... ', '[英] 阿加莎・克里斯蒂 , 祁阿红', '96517', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (160, '悲惨世界（上中下）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4521754.jpg', '这是法国十九世纪浪漫派领袖雨果继《巴黎圣母院》之后创作的又一部气势恢宏的鸿篇巨著。全书以卓越的艺术魅力，展示了一幅自1793年法国大革命至1832年巴黎人民... ', '[法] 雨果 , 李丹、方于', '48936', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (161, '刀锋', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2347562.jpg', '威廉·萨默塞特·毛姆（1874-1965），英国著名小说家、戏剧家。《刀锋》是他的主要作品之一。小说写一个参加第一次世界大战的美国青年飞行员拉里·达雷尔。... ', '[英]毛姆 , 周煦良', '53764', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (162, '傲慢与偏见', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4571103.jpg', '本书描写傲慢的单身青年达西与偏见的二小姐伊丽莎白、富裕的单身贵族彬格莱与贤淑的大小姐吉英之间的感情纠葛，充分表达了作者本人的婚姻观，强调经济利益对恋爱和婚姻... ', '简•奥斯丁(Jane Austen) , 孙致礼', '16665', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (163, '了不起的盖茨比', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1005875.jpg', '盖茨比为了久久地抱着的一个梦而付出了很高的代价。他死后，尼克发觉是汤姆暗中挑拨威尔逊去杀死盖茨比。他感到东部鬼影幢幢，世态炎凉，便决定回中西部老家去。这是一... ', '菲茨杰拉德 , 姚乃强', '106128', '外国文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (164, '不能承受的生命之轻', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1091698.jpg', '《不能承受的生命之轻》是米兰·昆德拉最负盛名的作品。小说描写了托马斯与特丽莎、萨丽娜之间的感情生活。但它不是一个男人和两个女人的三角性爱故事，它是一部哲理小... ', '[捷克] 米兰·昆德拉 , 许钧', '200170', '外国文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (165, '那不勒斯故事四部曲', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29643733.jpg', '艾琳娜與莉拉出生在二次戰後的那不勒斯貧窮郊區，兩人的友誼從六歲時交換娃娃開始，充滿活力的莉拉有時走在前頭，帶著艾琳娜去冒險；個性內斂的艾琳娜則加倍努力，讓自... ', '', '9532', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (166, '无声告白', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28109182.jpg', '我们终此一生，就是要摆脱他人的期待，找到真正的自己。——————————莉迪亚死了，可他们还不知道。莉迪亚是家中老二，李先生和李太太的掌上明珠，她遗传... ', '[美] 伍绮诗 , 孙璐', '114468', '外国文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (167, '八百万种死法', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33601900.jpg', '◆30年来，梁朝伟做梦都想演《八百万种死法》！◆梁朝伟飞越半个地球，只为见作者一面；4次恳求合作，只为演本书主角。《八百万种死法》太懂梁朝伟的孤独！◆梁... ', '[美] 劳伦斯·布洛克 , 姚向辉', '535', '外国文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (168, '飞鸟集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1044902.jpg', '《飞鸟集》是泰戈尔的代表作之一，也是世界上最杰出的诗集之一。白昼和黑夜、溪流和海洋、自由和背叛，都在泰戈尔的笔下合而为一，短小的语句道出了深刻的人生哲理，引... ', '[印] 罗宾德拉纳德·泰戈尔 , 徐翰林', '49752', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (169, '一个叫欧维的男人决定去死', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29071620.jpg', '来认识一下欧维，这个59岁的老头，脾气古怪，带着坚不可摧的原则、每天恪守的常规以及随时发飙的脾性在社区晃来晃去，被背地里称为“地狱来的恶邻”。他每天一大早就... ', '[瑞典] 弗雷德里克·巴克曼 , 宁蒙', '33352', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (170, '美丽新世界', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29477615.jpg', '出版于一九三二年的《美丽新世界》是奥尔德斯•赫胥黎最杰出的代表作，是二十世纪最著名的反乌托邦文学经典之一，与奥威尔的《一九八四》、扎米亚京的《我们》并称为“... ', '[英] 赫胥黎 , 陈超', '9591', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (171, '82年生的金智英', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33463759.jpg', '一个女孩要经历多少看不见的坎坷，才能跌跌撞撞地长大成人。亚洲10年来罕见的现象级畅销书，凭口口相传在韩国销量突破100万册。韩国书店联合会评选2017年... ', '[韩]赵南柱 , 尹嘉玄', '47670', '外国文学', 7.9);
INSERT INTO `myauth_book_info` VALUES (172, '瓦尔登湖', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1999119.jpg', '这本书的思想是崇尚简朴生活，热爱大自然的风光，内容丰厚，意义深远，语言生动，意境深邃，就像是个智慧的老人，闪现哲理灵光，又有高山流水那样的境界。书中记录了... ', '[美] 梭罗 , 徐迟', '51170', '外国文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (173, '麦田里的守望者', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2380159.jpg', '这本小说一出版，就受到国内青少年的热烈欢迎，认为它道出了自己的心声，一时大、中学校的校园里到处都模仿小说主人公霍尔顿——他们在大冬天身穿风衣，倒戴着红色猎人... ', '[美国] J. D. 塞林格 , 孙仲旭', '61341', '外国文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (174, '卡拉马佐夫兄弟', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2059791.jpg', '老卡拉马佐夫贪婪好色，独占妻子留给儿子们的遗产，并与长子德米特里为一个风流女子争风吃醋。一天黑夜，德米特里疑心自己的情人去跟老头儿幽会，便闯入家园，一怒之下... ', '[俄] 费奥多尔·陀思妥耶夫斯基 , 荣如德', '14433', '外国文学', 9.4);
INSERT INTO `myauth_book_info` VALUES (175, '一千零一夜', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1070937.jpg', '《一千零一夜》又名《天方夜谭》。\"天方\"是从前中国对阿拉伯的称呼。这本书中的故事，多是阿拉伯地区国家的传说。 公元9世纪时，是阿拉伯帝国的全盛时期，它横跨亚... ', '纳训', '43647', '外国文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (176, '夏洛的网', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1120437.jpg', '一个蜘蛛和小猪的故事，写给孩子，也写给大人。在朱克曼家的谷仓里，快乐地生活着一群动物，其中小猪威尔伯和蜘蛛夏洛建立了最真挚的友谊。然而，一个最丑恶的消息打... ', '[美] E.B.怀特 , 任溶溶', '50814', '外国文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (177, '巴黎圣母院', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4493741.jpg', '《巴黎圣母院》是法国文豪维克多·雨果第一部引起轰动效应的浪漫派小说。小说以十五世纪路易十一统治下的法国为背景，通过一个纯洁无辜的波希米亚女郎惨遭迫害的故事，... ', '[法]雨果 , 陈敬容', '90053', '外国文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (178, '离开的，留下的', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29535271.jpg', '两个女人 50年的友谊和战争那不勒斯四部曲NO.3全球畅销近千万册 被翻译成40多种语言“我希望她在场，这是我写作的目的。”《我的天才女友》《新名字... ', '[意] 埃莱娜·费兰特 , 陈英', '32842', '外国文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (179, '死缓', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33644638.jpg', '内容简介《死缓》创作于 1933 年，1936 年出版，是路易-费迪南•塞利纳的第二部长篇力作。作者以自己贫困的童年生活为蓝本，以自传体手法描述了小费迪南... ', '[法]路易-费迪南·塞利纳 , 金龙格', '293', '外国文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (180, '苏菲的世界', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3042670.jpg', '这本书以小说的形式，通过一名哲学导师向一个叫苏菲的女孩传授哲学知识的经过，揭示了西方哲学发展的历程。由前苏格拉底时代到萨特，以及亚里士多德、笛卡儿、黑格尔等... ', '[挪] 乔斯坦·贾德 , 萧宝森', '36409', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (181, '罪与罚', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1790246.jpg', '《罪与罚》系19世纪俄国大文豪陀思妥耶夫斯基的代表作之一。小说描写一心想成为拿破仑式的人物、认定自己是个超人的穷大学生拉斯柯尔尼科夫，受无政府主义思想毒害，... ', '[俄] 陀思妥耶夫斯基 , 岳麟', '11524', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (182, '失明症漫记', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27217828.jpg', '你为什么会写这样一部冷酷的作品？虽然我活得很好，但这个世界却不好。----------------------------------------诺贝... ', '(葡)若泽·萨拉马戈 , 范维信', '11569', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (183, '不能承受的生命之轻', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4421443.jpg', '小说依托六十年代的捷克斯洛伐克的政治历史背景，围绕着托马斯、特蕾莎、萨比娜和弗兰茨等人物，以托马斯与特蕾莎的爱情为主线展开故事。爱与做爱，灵魂与肉体，拯救... ', '米兰·昆德拉 , 许钧', '30158', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (184, '树上的男爵', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s8972078.jpg', '在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好权... ', '[意大利]伊塔洛·卡尔维诺 , 吴正仪', '22164', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (185, '钢铁是怎样炼成的', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33523858.jpg', '本书的主人公保尔·柯察金饱尝了生活的苦难，炼就了革命精神和反抗性格。十月革命爆发后只有十六岁的他，就参加了红军，无论在战炮火中，还是在国民经济复时期，可察金... ', '[苏] 尼·奥斯特洛夫斯基 , 曹缦西、王志棣', '59845', '外国文学', 7.6);
INSERT INTO `myauth_book_info` VALUES (186, '偷影子的人', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s10339418.jpg', '一个老是受班上同学欺负的瘦弱小男孩，因为拥有一种特殊能力而强大：他能“偷别人的影子”，因而能看见他人心事，听见人们心中不愿意说出口的秘密。他开始成为需要帮助... ', '(法)马克·李维 , 段韵灵', '86296', '外国文学', 7.7);
INSERT INTO `myauth_book_info` VALUES (187, '了不起的盖茨比', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s9110246.jpg', '★ 20世纪全球百部英语小说第2名★ 村上春树最爱的书★ 村上春树万字长文导读★ 全新译本完美呈现原著魅力★ 如果没有与《了不起的盖茨比》相遇，我写... ', '[美] 斯科特·菲茨杰拉德 , 邓若虚', '23033', '外国文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (188, '漫长的告别', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29860112.jpg', '◆《漫长的告别》，怪不得村上春树读了12遍！美国文坛一代宗师钱德勒代表作！◆ 每每陷入困境，村上春树便打开《漫长的告别》！村上春树曾亲自翻译《漫长的告别》... ', '[美] 雷蒙德·钱德勒 , 姚向辉', '17733', '外国文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (189, '挪威的森林', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1228930.jpg', '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，... ', '[日] 村上春树 , 林少华', '316652', '外国文学', 8);
INSERT INTO `myauth_book_info` VALUES (190, '达·芬奇密码', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1513425.jpg', '哈佛大学的符号学专家罗伯特·兰登在法国巴黎出差期间的一个午夜接到一个紧急电话，得知卢浮宫博物馆年迈的馆长被人杀害在卢浮宫的博物馆里，人们在他的尸体旁边发现了... ', '[美] 丹·布朗 , 朱振武、吴晟、周元晓', '205878', '外国文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (191, '坟场之书', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33576576.jpg', '养大一个孩子，需要整片坟场一齐出力。一个婴儿的出现，打破了坟场千年来的平静。在死神的指引下，鬼魂们收养了婴儿，并取名诺伯蒂(Nobody)。坟场从此成了... ', '[英] 尼尔·盖曼 , 李雅欣', '1260', '外国文学', 8.3);
INSERT INTO `myauth_book_info` VALUES (192, '查令十字街84号', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1326174.jpg', '这本被全球人深深钟爱的书，记录了纽约女作家海莲和一家伦敦旧书店的书商弗兰克之间的书缘情缘。双方二十年间始终未曾谋面，相隔万里，深厚情意却能莫逆于心。无论是平... ', '[美] 海莲·汉芙 , 陈建铭', '58355', '外国文学', 8.3);
INSERT INTO `myauth_book_info` VALUES (193, '窗边的小豆豆', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1067911.jpg', '《窗边的小豆豆》讲述了作者上小学时的一段真实的故事。作者因淘气被原学校退学后，来到巴学园。在小林校长的爱护和引导下，让一般人眼里“怪怪”的小豆豆逐渐成了一个... ', '[日] 黑柳彻子 著、岩崎千弘 图 , 赵玉皎', '155963', '外国文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (194, '情人', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1444578.jpg', '杜拉斯代表作之一，自传性质的小说，获一九八四年法国龚古尔文学奖。全书以法国殖民者在越南的生活为背景，描写贫穷的法国女孩与富有的中国少爷之间深沉而无望的爱情。... ', '[法] 玛格丽特·杜拉斯 , 王道乾', '133331', '外国文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (195, '冰与火之歌', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27218035.jpg', '《冰与火之歌》（A Song of Ice and Fire）是由美国著名科幻奇幻小说家乔治·R·R·马丁（George R.R. Martin）所著的史诗... ', '[美]乔治·R.R.马丁 , 谭光磊、屈畅、胡绍晏', '8587', '外国文学', 9.5);
INSERT INTO `myauth_book_info` VALUES (196, '斯通纳', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28332051.jpg', '《斯通纳》讲述了生命中最重要的部分：爱，认同，怜悯，志业，傲骨，信任与死亡。一个勇者有过的失败不失意的人生：即使不能拥有完美的生活，所幸追求过完整的自我。... ', '[美] 约翰·威廉斯 , 杨向荣', '32425', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (197, '杀死一只知更鸟', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29350294.jpg', '《杀死一只知更鸟》是公认的美国文学经典，而它在教育领域的意义却使其突破了国界，成为世界上最有名的成长小说之一。《杀死一只知更鸟》在西方世界的影响力巨大，是美... ', '[美] 哈珀·李 , 李育超', '19655', '外国文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (198, '麦琪的礼物', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1137441.jpg', '选收欧·亨利的小说34篇，国外当代文学类重要工具书介绍的有代表性的作品均已收入。欧·亨利是位有独特风格的杰出短篇小说家，以巧妙的构思、夸张和幽默的文笔反映了... ', '[美] 欧·亨利 , 张经浩', '57019', '外国文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (199, '安德鲁不想孤独终老', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33595280.jpg', '内容简介“蓝色的月亮啊，你看到我孤独地站着。”安德鲁42岁了，他常常厌恶自己。他总觉得自己会孤独终老，不知道该如何爱任何人。安德鲁的工作是和死亡打交道... ', '【英】理查德·罗珀 , 王颖', '868', '外国文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (200, '红与黑', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2332189.jpg', '小说主人公于连,是一个木匠的儿子,年轻英俊,意志坚强,精明能干,从小就希望借助个人的努力与奋斗跻身上流社会。在法国与瑞士接壤的维立叶尔城，坐落在山坡上，美... ', '[法] 司汤达 , 张冠尧', '47026', '外国文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (201, '夏日终曲', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29720198.jpg', '2007年出版以来长踞《纽约时报》、美国亚马逊书店、Goodreads各种畅销书榜单。根据这部小说改编的电影《请以你的名字呼唤我》荣获2018年第90届奥... ', '[美] 安德烈·艾席蒙 , 吴妍蓉', '13438', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (202, '七个疯子', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33607648.jpg', '◎ “是我想太多，还是这世界太疯狂？”◎ 毒丽场域疯子们的“蛮荒故事”，纳粹等现代性之殇的神奇预言◎ “阿根廷的陀思妥耶夫斯基”，拉美现代小说之父，罗伯... ', '[阿根廷] 罗伯特·阿尔特 , 欧阳石晓', '381', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (203, '小径分岔的花园', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29746559.jpg', '本书为1941年的短篇小说集，收小说七篇。其中，《小径分岔的花园》是侦探小说，讲述一桩罪行的准备工作和实施过程。小径分岔的花园是一个谜语，或者说寓言，而谜底... ', '[阿根廷] 豪·路·博尔赫斯 , 王永年', '15536', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (204, '苏菲的世界', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2153661.jpg', '《苏菲的世界》是讲14岁的少女苏菲某天放学回家，发现了神秘的一封信。—你是谁？—世界从哪里来？就这样，在某个神秘导师的指引下，苏菲开始思索，从古希腊到康德、... ', '（挪威）乔斯坦·贾德 , 萧宝森', '105286', '外国文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (205, '嫌疑人X的献身', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3254244.jpg', '百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。靖子与女儿相依为命，失手杀了前来纠缠的前夫。石神提出由... ', '[日] 东野圭吾 , 刘子倩', '404889', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (206, '鼠疫', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1679084.jpg', '本书收录了法国现代著名存在主义文学家加缪的两部作品：《鼠疫》与《局外人》。这两部作品同是加缪最重要的代表作，均被列为现代世界文学名著。《局外人》写的是人在荒... ', '[法] 阿尔贝·加缪 , 顾方济、徐志仁', '12648', '外国文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (207, '荆棘鸟', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2781615.jpg', '《荆棘鸟》是一部澳大利亚的家世小说，以女主人公梅吉和神父拉尔夫的爱情纠葛为主线，描写了克利里一家三代人的故事，时间跨度长达半个多世纪。拉尔夫一心向往教会的权... ', '[澳] 考琳·麦卡洛 , 曾胡', '44526', '外国文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (208, '外婆的道歉信', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29435447.jpg', '2016年瑞典年度作家 美国亚马逊作家排名No.1版权售出40国 遍布欧美几乎每家书店上市10个月 全球总销量突破150万册出版后持续霸占《纽约时报》... ', '[瑞典] 弗雷德里克·巴克曼 , 孟汇一', '21864', '外国文学', 8);
INSERT INTO `myauth_book_info` VALUES (209, '人生的枷锁', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s3983958.jpg', '《人生的枷锁》是毛姆的代表作，具有明显的自传色彩。小说主人公菲利普·凯里自幼父母双亡，不幸又先天残疾，在冷漠而陌生的环境中度过了童年，性格因此孤僻而敏感。... ', '[英] 毛姆 , 张柏然、张增健、倪俊', '19511', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (210, '献给阿尔吉侬的花束', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28050760.jpg', '很多人都笑我。但他们是我的朋友我们都很快乐。—	以《献给阿尔吉侬的花束》原著改编，野岛伸司编剧、山下智久主演的TBS日剧于2015年春季开播—	《24个... ', '[美] 丹尼尔·凯斯 , 陈澄和', '15464', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (211, '安娜·卡列尼娜', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s5763939.jpg', '《安娜·卡列尼娜》是托尔斯泰第二部里程碑式的长篇小说，创作于 1873—1877年。作品由两条既平行又相互联系的线索构成：一条是安娜与卡列宁、伏伦斯基之间的... ', '[俄] 列夫·托尔斯泰 , 草婴', '9190', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (212, '一个人的朝圣', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s26936721.jpg', '★2013年欧洲首席畅销小说，入围2012年布克文学奖，同名电影拍摄中★台湾读者表示“很久没有读一本书读到凌晨”、“是一个简单、素朴但会令人深深感动的故事... ', '[英] 蕾秋·乔伊斯 , 黄妙瑜', '68044', '外国文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (213, '二手时间', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28397415.jpg', '2015年度诺贝尔文学奖得主阿列克谢耶维奇最具分量的作品发表后荣获德国书业和平奖（2013）、法国美第契散文奖（2013）、俄罗斯「大书奖」读者票选最佳文... ', '[白俄] S. A. 阿列克谢耶维奇 , 吕宁思', '13619', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (214, '无人生还', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s26849345.jpg', '十个素不相识、身份各异的人受邀前往德文郡海岸边一座孤岛上的豪宅。客人到齐后，主人却没有出现。当晚，一个神秘的声音发出指控，分别说出每个人心中罪恶的秘密。接... ', '[英] 阿加莎·克里斯蒂 , 夏阳', '32585', '外国文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (215, '局外人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27003183.jpg', '阿尔贝•加缪（1913—1960）是法国声名卓著的小说家、散文家和剧作家，“存在主义”文学的大师。1957年因“热情而冷静地阐明了当代向人类良知提出的种种问... ', '(法)阿尔贝·加缪 , 柳鸣九', '15253', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (216, '看不见的城市', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s8972088.jpg', '在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好权... ', '[意大利] 伊塔洛·卡尔维诺 , 张密', '16795', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (217, '人类的群星闪耀时', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1134166.jpg', '《人类群星闪耀时》由奥地利著名小说家创作。《人类群星闪耀时》内容：涌动着匪徒、探险家、叛乱者兼英雄血液的巴尔沃亚成为第一个看到太平洋的欧洲人；仅仅一秒钟的优... ', '[奥] 斯蒂芬·茨威格 , 舒昌善', '19754', '外国文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (218, '教父', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2832939.jpg', '《教父》这部小说的不同凡响的艺术魅力就在于：尽管描写的全是坏蛋，但作者曲尽妙笔，竟然能让读者不痛恨个别坏蛋，而痛恨整个龌龊的社会结构。教父及其继承人——他的... ', '[美]马里奥·普佐 , 周汉林', '31028', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (219, '书店日记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33441355.jpg', '“书店老板多半缺乏耐心、偏执、厌恶交际。”“上门来的许多人不管跑到哪里都是讨人厌的那一类，只不过书店给了他们特别的机会表现。”“我们有书，你有钱。交换吧... ', '[英] 肖恩·白塞尔 , 顾真', '3779', '外国文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (220, '悉达多', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s6790238.jpg', '古印度贵族青年悉达多英俊聪慧，拥有人们羡慕的一切。为了追求心灵的安宁，他孤身一人展开了求道之旅。他在舍卫城聆听佛陀乔答摩宣讲教义，在繁华的大城中结识了名妓伽... ', '[德] 赫尔曼·黑塞 , 杨玉功 译、丁君君 校', '24559', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (221, '我亲爱的甜橙树', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4386309.jpg', '这是一个构思了42年的故事。这是一个仅用12天就写成的故事。这是一个让数亿读者感动落泪的故事。这是一部有着相当自传性质的儿童小说，作家精确地“摹拟”一... ', '(巴西)若泽•毛罗•德瓦斯康塞洛斯 , 蔚玲', '6469', '外国文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (222, '洛丽塔', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1483347.jpg', '《洛丽塔》原著问世五十年来第一部中文全译本。纳博科夫最著名最有争议的小说杰作。 ', '[美] 弗拉基米尔·纳博科夫 , 主万', '67289', '外国文学', 7.7);
INSERT INTO `myauth_book_info` VALUES (223, '羊脂球', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1469280.jpg', '莫泊桑短篇小说的代表作。写普法战争时，法国的一群贵族、政客、商人、修女等高贵者，和一个叫作羊脂球的妓女，同乘一辆马车逃离普军占区，在一关卡受阻。普鲁士军官要... ', '（法）莫泊桑 , 赵少侯', '85754', '外国文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (224, '昨日的世界', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1121598.jpg', '作者以饱满真挚的感情、平实顺畅的文宇叙述了他所认识的特定时期的各种人物，他亲身经历的社会政治事件，他对那个动荡不安的时代的感受，记录了当时欧洲从一战前夜到二... ', '[奥] 斯蒂芬·茨威格 , 舒昌善、孙龙生、刘春华、戴奎生', '9589', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (225, '马可瓦尔多', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33513675.jpg', '一年四季轮回 一季一个故事在沟渠里仰望星星 一个小工眼中城市的奇趣与窃喜马可瓦尔多是位城市小工。在充满着水泥和沥青的城市森林里，他却试图寻找大自然。春天... ', '[意] 伊塔洛·卡尔维诺 , 马小漠', '822', '外国文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (226, '哈姆莱特', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27009357.jpg', '本书是大学生必读丛书中的一册，书中以教育部全国高等学校中文学科教学指导委员会指定书目为依据，收录了英国著名作家莎士比亚先生的话剧《哈姆莱特》。    本书... ', '[英] 莎士比亚 , 朱生豪', '35054', '外国文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (227, '面纱', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s9038826.jpg', ' 《面纱》由W.萨默塞特·毛姆编著。《面纱》讲述了：容貌娇美而又爱慕虚荣的英国女子凯蒂，为了避免自己变成一位老姑娘，接受了生性孤僻的医生瓦尔特·费恩的求婚... ', '(英)W.萨默塞特·毛姆 , 阮景林', '40521', '外国文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (228, '东方快车谋杀案', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1765799.jpg', '午夜过后，一场大雪迫使东方快车停了下来。这辆豪华列车整年都处于满员状态。但那天早上却发现少了一名乘客。一个美国人死在了他的包厢里，他被刺了十二刀，可他包厢的... ', '[英] 阿加莎·克里斯蒂 , 陈尧光', '94446', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (229, '乌合之众', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1988393.jpg', '古斯塔夫・勒庞 Gustave Le Bon(1841-1931) 法国著名社会心理学家。他自1894年始，写下一系列社会心理学著作，以本书最为著名；在社会... ', '（法）勒庞 , 冯克利', '96635', '外国文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (230, '挪威的森林', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27312538.jpg', '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，... ', '[日] 村上春树 , 林少华', '97743', '外国文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (231, '遗忘通论', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33601146.jpg', '☆ 《遗忘通论》获得2017年国际都柏林文学奖、2019年安哥拉国家文化艺术奖，入围2016年布克国际奖决选名单；☆ 阿瓜卢萨是当代安哥拉乃至整个葡语世界... ', '[安哥拉] 若泽·爱德华多·阿瓜卢萨 , 王渊', '365', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (232, '太古和其他的时间', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29597667.jpg', '新晋诺贝尔文学奖得主、国际布克奖得主、波兰文学女王奥尔加·托卡尔丘克成名作一部魔幻现实主义的碎片化小说，八十四块时间的裂片，拼贴出历史的斑斓大梦。... ', '[波兰] 奥尔加·托卡尔丘克 , 易丽君、袁汉镕', '5682', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (233, '莫斯科绅士', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29776913.jpg', '【编辑推荐】◆一个人如果不能掌控自己的命运，就会被命运掌控。◆美国前总统奥巴马、奥斯卡影帝汤姆•汉克斯、比尔·盖茨年度推荐。◆都柏林文学奖入围作品。《... ', '[美] 埃默·托尔斯 , 马韧', '6474', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (234, '动物庄园', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3858411.jpg', '《动物庄园(买中文版送英文版)》内容为：小说不属于人们所熟悉的蕴含教训的传统寓言，而是对现代政治神话的一种寓言式解构。“它是一部革命史，但它误入歧途，而且第... ', '乔治•奥威尔 (George Orwell) , 隗静秋', '26835', '外国文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (235, '过于喧嚣的孤独', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s24422879.jpg', '本书是作者最重要的代表作，酝酿二十年，三易其稿。正如作者自己所说“我为它而活着，并为写它推迟了我的死亡”。小说诗意地叙述了一个在废纸回收站工作三十五年的打包... ', '(捷克) 赫拉巴尔 , 杨乐云', '10608', '外国文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (236, '东方快车谋杀案', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s26344659.jpg', '侦探波洛在叙利亚完成了一项委托，要搭乘辛普朗号东方快车回国。奇怪的是，似乎全世界的人都选在那一夜出行，这列铺位一向宽裕的豪华列车竟然一票难求。幸好他遇到了好... ', '[英] 阿加莎·克里斯蒂 , 郑桥', '26098', '外国文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (237, '德米安', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3979854.jpg', '《德米安：埃米尔·辛克莱的彷徨少年时》是黑塞的代表作之一，讲述少年辛克莱寻找通向自身之路的艰辛历程。出生并成长于“光明世界”的辛克莱，偶然发现截然不同的“另... ', '[德] 赫尔曼·黑塞 , 丁君君、谢莹莹', '14670', '外国文学', 9);
INSERT INTO `myauth_book_info` VALUES (238, '你当像鸟飞往你的山', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33492346.jpg', '★ 奇迹！一部新人处女作，上市第一周即登上《纽约时报》畅销榜，至今已累计80周，仍高居Top1，全美销量破百万册，作者因此书被《时代周刊》评为“年度影响力人... ', '[美] 塔拉·韦斯特弗 , 任爱红', '53623', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (239, '小王子', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1103152.jpg', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行... ', '[法] 圣埃克苏佩里 , 马振聘', '566993', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (240, '房思琪的初恋乐园', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29651121.jpg', '令人心碎却无能为力的真实故事。向死而生的文学绝唱  打动万千读者的年度华语小说。李银河 戴锦华 骆以军 张悦然 冯唐 詹宏志 蒋方舟 史航 等多位学者作... ', '林奕含', '184398', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (241, '百年孤独', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s6384944.jpg', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。... ', '[哥伦比亚] 加西亚·马尔克斯 , 范晔', '288468', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (242, '红楼梦', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1070959.jpg', '《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主... ', '[清] 曹雪芹 著、高鹗 续', '285210', '文学', 9.6);
INSERT INTO `myauth_book_info` VALUES (243, '活着', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29053580.jpg', '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵... ', '余华', '481587', '文学', 9.4);
INSERT INTO `myauth_book_info` VALUES (244, '追风筝的人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1727290.jpg', '12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟... ', '[美] 卡勒德·胡赛尼 , 李继宏', '639539', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (245, '平凡的世界（全三部）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1144911.jpg', '《平凡的世界》是一部现实主义小说，也是一部小说形式的家族史。作者浓缩了中国西北农村的历史变迁过程，在小说中全景式地表现了中国当代城乡的社会生活。在近十年的广... ', '路遥', '247009', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (246, '围城', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1070222.jpg', '《围城》是钱钟书所著的长篇小说。第一版于1947年由上海晨光出版公司出版。1949年之后，由于政治等方面的原因，本书长期无法在中国大陆和台湾重印，仅在香港出... ', '钱锺书', '367580', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (247, '撒哈拉的故事', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1066570.jpg', '三毛作品中最脍炙人口的《撒哈拉的故事》，由12篇精彩动人的散文结合而成，其中《沙漠中的饭店》，是三毛适应荒凉单调的沙漠生活后，重新拾笔的第一篇文字，自此之后... ', '三毛', '74324', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (248, '霍乱时期的爱情', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s11284102.jpg', '★马尔克斯唯一正式授权，首次完整翻译★《霍乱时期的爱情》是我最好的作品，是我发自内心的创作。——加西亚•马尔克斯★这部光芒闪耀、令人心碎的作品是人类有史... ', '[哥伦比亚] 加西亚·马尔克斯 , 杨玲', '179997', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (249, '解忧杂货店', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27264181.jpg', '现代人内心流失的东西，这家杂货店能帮你找回——僻静的街道旁有一家杂货店，只要写下烦恼投进卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答。因男友身患绝... ', '[日] 东野圭吾 , 李盈春', '634781', '文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (250, '月亮和六便士', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2659208.jpg', '一个英国证券交易所的经纪人，本已有牢靠的职业和地位、美满的家庭，但却迷恋上绘画，像“被魔鬼附了体”，突然弃家出走，到巴黎去追求绘画的理想。他的行径没有人能够... ', '[英] 毛姆 , 傅惟慈', '130147', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (251, '边城', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1595557.jpg', '《边城》是沈从文的代表作，写于一九三三年至一九三四年初。这篇作品如沈从文的其他湘西作品，着眼于普通人、善良人的命运变迁，描摹了湘女翠翠阴差阳错的生活悲剧，诚... ', '沈从文、黄永玉 卓雅 插图.', '176145', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (252, '1984', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4371408.jpg', '★村上春树以《1Q84》向本书致敬★著名学者刘绍铭经典译本内地首次出版★62种文字风靡110个国家，全球销量超过5000万册★《时代周刊》“最好的10... ', '[英] 乔治·奥威尔 , 刘绍铭', '143338', '文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (253, '许三观卖血记', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1074291.jpg', '《许三观卖血记》是余华1995年创作的一部长篇小说，它以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述了许三观靠着卖... ', '余华', '188104', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (254, '白鹿原', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28111905.jpg', '在从清末民初到建国之初的半个世纪里，一阵阵狂风掠过了白鹿原上空，而每一次的变动都震荡着它的内在结构：打乱了再恢复，恢复了再打乱，细腻地反映出白姓和鹿姓两大家... ', '陈忠实', '42206', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (255, '沉默的大多数', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1447349.jpg', '这本杂文随笔集包括思想文化方面的文章，涉及知识分子的处境及思考，社会道德伦理，文化论争，国学与新儒家，民族主义等问题；包括从日常生活中发掘出来的各种真知灼见... ', '王小波', '98276', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (256, '局外人', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4468484.jpg', '《局外人》是加缪小说的成名作和代表作之一，堪称20世纪整个西方文坛最具有划时代意义最著名小说之一，“局外人”也由此成为整个西方文学-哲学中最经典的人物形象和... ', '[法] 阿尔贝·加缪 , 柳鸣九', '124641', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (257, '呐喊', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4696893.jpg', '《呐喊》收录作者1918年至1922年所作小说十四篇。1923年8月由北京新潮社出版，原收十五篇，列为该社《文艺丛书》之一。1924年5月第三次印刷时起，改... ', '鲁迅', '88272', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (258, '白夜行', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s24514468.jpg', '东野圭吾万千书迷心中的无冕之王周刊文春推理小说年度BEST10第1名本格推理小说年度BEST10第2名《白夜行》是东野圭吾迄今口碑最好的长篇杰作，具备... ', '[日] 东野圭吾 , 刘姿君', '260425', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (259, '朝花夕拾', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2875823.jpg', '《小引》《狗·猫·鼠》《阿长与山海经》《二十四孝图》《五猖会》《无常》《从百草园到三味书屋》《父亲的病》《琐记》《藤野先生》《范爱农》... ', '鲁迅', '83115', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (260, '人间失格', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s6100756.jpg', '第一次，我喝酒喝得如此失态。悠悠醒来时，枕头边坐着常子。我躺在那位于本所工匠店二楼的房间里。“财尽情亦绝，你说这句话时我还以为是开玩笑，你是认真的？难怪... ', '太宰治 , 许时嘉', '186479', '文学', 8.3);
INSERT INTO `myauth_book_info` VALUES (261, '云边有个小卖部', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29799055.jpg', '云边镇少年刘十三的成长故事。刘十三自幼与开小卖部的外婆相依为命，努力读书为了离开小镇，追寻远方与梦想。在城市里碰壁受挫的刘十三回到了小镇，与少时玩伴程霜重... ', '张嘉佳', '25021', '文学', 7.7);
INSERT INTO `myauth_book_info` VALUES (262, '撒哈拉的故事', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3563113.jpg', '三毛作品中最膾炙人口的《撒哈拉的故事》﹐由１２篇精采動人的散文結合而成﹐其中＜沙漠中的飯店＞﹐是三毛適應荒涼單調的沙漠生活後﹐重新拾筆的第一篇文字﹐... ', '三毛', '185071', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (263, '城南旧事', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2654869.jpg', '多少年来，《城南旧事》感动了一代又一代的读者，除了再版无数次的小说版外，1985年，本书在中国大陆搬上银幕，电影“城南旧事”获得“中国电影金鸡奖”、第二届“... ', '林海音 文、关维兴 图', '97467', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (264, '三国演义（全二册）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1076932.jpg', '《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说史上最著名最杰出的长篇章回体历史小说。 《三国演义》的作者是元末明初人罗贯中，由毛纶，毛宗岗父... ', '[明] 罗贯中', '119478', '文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (265, '傲慢与偏见', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4250062.jpg', '《傲慢与偏见》是简·奥斯汀的代表作，是一部描写爱情与婚姻的经典小说。作品以男女主人公达西和伊丽莎白由于傲慢和偏见而产生的爱情纠葛为线索，共写了四起姻缘：伊丽... ', '[英] 奥斯丁 , 张玲、张扬', '183934', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (266, '飘', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1078958.jpg', '小说中的故事发生在1861年美国南北战争前夕。生活在南方的少女郝思嘉从小深受南方文化传统的熏陶，可在她的血液里却流淌着野性的叛逆因素。随着战火的蔓廷和生活环... ', '[美国] 玛格丽特·米切尔 , 李美华', '155340', '文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (267, '许三观卖血记', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s24575140.jpg', '《许三观卖血记》是余华1995年创作的一部长篇小说。《许三观卖血记》以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述... ', '余华', '45090', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (268, '一个陌生女人的来信', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2611329.jpg', '这是一部短篇小说集，除《一个陌生女人的来信》，亦按时间顺序收录了《火烧火燎的秘密》、《马来狂人》等名篇，作者的创作历程一目了然。《一个陌生女人的来信》讲述... ', '[奥] 斯台芬·茨威格 , 张玉书', '105027', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (269, '云游', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33523889.jpg', '新晋诺贝文学奖得主 托卡尔丘克 长篇力作2008年尼刻奖、2018年布克国际奖获奖作品移动是神圣的，不要停下！116个片段组接为漫漫旅途如粒子穿行在世... ', '[波兰] 奥尔加·托卡尔丘克 , 于是', '2285', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (270, '平凡的世界', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27449344.jpg', '《平凡的世界(套装共3册)》是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人... ', '路遥', '40618', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (271, '我与地坛', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1151479.jpg', '收有“午餐半小时”、“我的遥远的清平湾”、“命若琴弦”、“第一人称”、“两个故事”等15篇史铁生的代表作。 ', '史铁生', '57378', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (272, '82年生的金智英', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33463759.jpg', '一个女孩要经历多少看不见的坎坷，才能跌跌撞撞地长大成人。亚洲10年来罕见的现象级畅销书，凭口口相传在韩国销量突破100万册。韩国书店联合会评选2017年... ', '[韩]赵南柱 , 尹嘉玄', '47671', '文学', 7.9);
INSERT INTO `myauth_book_info` VALUES (273, '皮囊', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27943411.jpg', '一部有着小说阅读质感的散文集，也是一本“认心又认人”的书。作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个... ', '蔡崇达', '84445', '文学', 7.6);
INSERT INTO `myauth_book_info` VALUES (274, '我们仨', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1015872.jpg', '《我们仨》是钱钟书夫人杨绛撰写的家庭生活回忆录。1998年，钱钟书逝世，而他和杨绛唯一的女儿钱瑗已于此前（1997年）先他们而去。在人生的伴侣离去四年后，杨... ', '杨绛', '235408', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (275, '浮生六记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2280094.jpg', '这是一部自传体文学的作品，原书六卷，已逸其二，现仅存四卷（有所谓“足本”者，后二记系伪作。书中记叙了作者夫妇间平凡的家居生活，坎坷际遇，和各地浪游闻见。文辞... ', '（清）沈复', '43503', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (276, '文学回忆录（全2册）', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s24611679.jpg', '文学是可爱的。生活是好玩的。艺术是要有所牺牲的。八十年代末，木心客居纽约时期，亦自他恢复写作、持续出书以来，纽约地面的大陆和台湾同行在异国谋饭之中，居然促... ', '木心 口述、陈丹青 笔录', '33329', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (277, '月亮与六便士', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29634528.jpg', '“满地都是六便士，他却抬头看见了月亮。”银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一... ', '[英] 威廉·萨默塞特·毛姆 , 徐淳刚', '145380', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (278, '人间词话', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s9130587.jpg', '《人间词话》一书乃是王氏接受了西洋美学思想之洗礼后，以崭新的眼光对中国旧文学所作的评论，具有划时代的意义，向来极受学术界重视。本书并约请当今著名专家黄霖为之... ', '王国维', '39115', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (279, '三体全集', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28357056.jpg', '三体三部曲 (《三体》《三体Ⅱ·黑暗森林》《三体Ⅲ·死神永生》) ，原名“地球往事三部曲”，是中国著名科幻作家刘慈欣的首个长篇系列，由科幻世界杂志社策划制作... ', '刘慈欣', '44417', '文学', 9.4);
INSERT INTO `myauth_book_info` VALUES (280, '动物农场', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2347590.jpg', '《动物农场》是奥威尔最优秀的作品之一，是一则入木三分的反乌托的政治讽喻寓言。农场的一群动物成功地进行了一场“革命”，将压榨他们的人类东家赶出农场，建立起一... ', '[英] 乔治·奥威尔 , 荣如德', '88023', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (281, '生活与命运', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33562090.jpg', '1960年，瓦西里•格罗斯曼（Васи́лий Гро́ссман，1905—1964）完成长篇历史小说《生活与命运》。苏联当局负责意识形态的苏斯洛夫称此书... ', '[俄罗斯] 瓦西里·格罗斯曼 , 力冈', '559', '文学', 9.5);
INSERT INTO `myauth_book_info` VALUES (282, '简爱（英文全本）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s5924326.jpg', '《简爱》是英国女作家夏洛蒂·勃朗特的代表作品。女主人公简爱是一个追赶求平等与自主的知识女性形象，小说以其感人的对于一位“灰姑娘式”人物奋斗史的刻划取胜，《简... ', '[英] 夏洛蒂·勃朗特', '185349', '文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (283, '鼠疫', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27003191.jpg', '阿尔贝•加缪（1913—1960）是法国声名卓著的小说家、散文家和剧作家，“存在主义”文学的大师。1957年因“热情而冷静地阐明了当代向人类良知提出的种种问... ', '(法)阿尔贝·加缪 , 刘方', '20587', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (284, '人生海海', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s32266692.jpg', '“他是全村最出奇古怪的人，古怪的名目要扳着指头一个一个数：第一，他当过国民党军队的上校，是革命群众要斗争的对象。但大家一边斗争他，一边又巴结讨好他，家里出... ', '麦家', '29245', '文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (285, '黄金时代', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1076372.jpg', '《黄金时代》是《时代三部曲》之一。  这是以文革时期为背景的系列作品构成的长篇。发生“文化大革命”的二十世纪六七十年代，正是我们国家和民族的灾难年代。那时，... ', '王小波', '122086', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (286, '人生', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3847911.jpg', '《人生》是路遥的一部中篇小说，发表于1982年，它以改革时期陕北高原的城乡生活为时空背景，叙述了高中毕业生高加林回到土地又离开土地，再回到土地这样人生的变化... ', '路遥', '50439', '文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (287, '呼吸', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33519539.jpg', '特德·姜作品新结集，内藏《商人和炼金术师之门》《呼吸》《前路迢迢》《软件体的生命周期》《达西的新型自动机器保姆》《双面真相》《大寂静》《脐》《焦虑是自由引起... ', '[美] 特德·姜 , 耿辉、Ent、李克勤、姚向辉', '12835', '文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (288, '寂寞的游戏', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29508790.jpg', '☆  新京报·腾讯2017年度十大好书☆  豆瓣2017年度读书榜单 中国文学（小说类）TOP1☆  第一届做書奖 年度原创小说用纯真的双眼捕捉孤独的... ', '袁哲生', '10975', '文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (289, '大话西方艺术史', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33575930.jpg', '◆句句有梗的极简艺术史。◆头号艺术自媒体意外艺术八年积累诚意之作！◆30000年艺术历程 • 150件名画经典 • 40位艺术大师 • 20个艺术流派。... ', '意公子', '2461', '文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (290, '岛上书店', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29810488.jpg', '每个人的生命中，都有最艰难的那一年，将人生变得美好而辽阔。---------------------A．J．费克里，人近中年，在一座与世 隔绝的小岛上，... ', '[美] 加布瑞埃拉·泽文 , 孙仲旭、李玉瑶', '119125', '文学', 7.6);
INSERT INTO `myauth_book_info` VALUES (291, '骆驼祥子', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1146040.jpg', '《骆驼祥子》是老舍用同情的笔触描绘的一幕悲剧：二十年代的北京，一个勤劳、壮实的底层社会小人物怀着发家、奋斗的美好梦想，却最终为黑暗的暴风雨所吞噬。它揭示了当... ', '老舍', '148982', '文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (292, '呼兰河传', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1167060.jpg', '暂无介绍', '萧红', '53299', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (293, '杀死一只知更鸟', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s23128183.jpg', '成长总是个让人烦恼的命题。成长有时会很缓慢，如小溪般唱着叮咚的歌曲趟过，有时却如此突如其来，如暴雨般劈头盖脸……三个孩子因为小镇上的几桩冤案经历了猝不及防的... ', '[美] 哈珀·李 , 高红梅', '73720', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (294, '刀锋', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2347562.jpg', '威廉·萨默塞特·毛姆（1874-1965），英国著名小说家、戏剧家。《刀锋》是他的主要作品之一。小说写一个参加第一次世界大战的美国青年飞行员拉里·达雷尔。... ', '[英]毛姆 , 周煦良', '53764', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (295, '书店日记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33441355.jpg', '“书店老板多半缺乏耐心、偏执、厌恶交际。”“上门来的许多人不管跑到哪里都是讨人厌的那一类，只不过书店给了他们特别的机会表现。”“我们有书，你有钱。交换吧... ', '[英] 肖恩·白塞尔 , 顾真', '3779', '文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (296, '基督山伯爵', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3248016.jpg', '小说以法国波旁王朝和七月王朝两大时期为背景，描写了一个报恩复仇的故事。法老号大副唐泰斯受船长的临终嘱托，为拿破仑送了一封信，受到两个对他嫉妒的小人的陷害，被... ', '大仲马 , 周克希、韩沪麟', '98859', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (297, '雷雨', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s23579217.jpg', '《雷雨》所展示的是一幕人生大悲剧，是命运对人残忍的作弄。专制、伪善的家长，热情、单纯的青年，被情爱烧疯了心的魅惑的女人，痛悔着罪孽却又不自知地犯下更大罪孽的... ', '曹禺', '58959', '文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (298, '天龙八部', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s23632058.jpg', '天龙八部乃金笔下的一部长篇小说，与《射雕》，《神雕》等 几部长篇小说一起被称为可读性最高的金庸小说。《天龙》的故事情节曲折，内容丰富，也曾多次被改编为电视作... ', '金庸', '101011', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (299, '不能承受的生命之轻', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1091698.jpg', '《不能承受的生命之轻》是米兰·昆德拉最负盛名的作品。小说描写了托马斯与特丽莎、萨丽娜之间的感情生活。但它不是一个男人和两个女人的三角性爱故事，它是一部哲理小... ', '[捷克] 米兰·昆德拉 , 许钧', '200170', '文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (300, '穆斯林的葬礼', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1790771.jpg', '一个穆斯林家族，六十年间的兴衰，三代人命运的沉浮，两个发生在不同时代、有着不同内容却又交错扭结的爱情悲剧。这部五十余万字的长篇，以独特的视角，真挚的情感，... ', '霍达', '143753', '文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (301, '梦里花落知多少', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2393243.jpg', '《梦里花落知多少》记录了荷西过世后三毛的生活，共23篇。内容均为台湾皇冠出版社81年至88年的初版。荷西的死对三毛又是一场劫难，因此由《背影》到这本书，在... ', '三毛', '74990', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (302, '离开的，留下的', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29535271.jpg', '两个女人 50年的友谊和战争那不勒斯四部曲NO.3全球畅销近千万册 被翻译成40多种语言“我希望她在场，这是我写作的目的。”《我的天才女友》《新名字... ', '[意] 埃莱娜·费兰特 , 陈英', '32842', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (303, '故事', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27598249.jpg', '自1997年初版以来，《故事》一直是全世界编剧的第一必读经典，至今，仍属于美国亚马逊最畅销图书中的Top 1%。集结了罗伯特•麦基30年的授课经验，本书在对... ', '[美] 罗伯特·麦基 , 周铁东', '9887', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (304, '人间草木', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1201610.jpg', '《人间草木》(汪曾祺著)是汪曾祺优秀的散文集。当代文坛上,能同时在小说和散文两块田地里经营,且自成一家的并不多,汪曾祺先生算是其中的一个。汪曾祺先生是公认的... ', '汪曾祺', '14852', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (305, '瓦尔登湖', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1999119.jpg', '这本书的思想是崇尚简朴生活，热爱大自然的风光，内容丰厚，意义深远，语言生动，意境深邃，就像是个智慧的老人，闪现哲理灵光，又有高山流水那样的境界。书中记录了... ', '[美] 梭罗 , 徐迟', '51170', '文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (306, '罪与罚', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1790246.jpg', '《罪与罚》系19世纪俄国大文豪陀思妥耶夫斯基的代表作之一。小说描写一心想成为拿破仑式的人物、认定自己是个超人的穷大学生拉斯柯尔尼科夫，受无政府主义思想毒害，... ', '[俄] 陀思妥耶夫斯基 , 岳麟', '11524', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (307, '卡拉马佐夫兄弟', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2059791.jpg', '老卡拉马佐夫贪婪好色，独占妻子留给儿子们的遗产，并与长子德米特里为一个风流女子争风吃醋。一天黑夜，德米特里疑心自己的情人去跟老头儿幽会，便闯入家园，一怒之下... ', '[俄] 费奥多尔·陀思妥耶夫斯基 , 荣如德', '14433', '文学', 9.4);
INSERT INTO `myauth_book_info` VALUES (308, '哈利•波特', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29552296.jpg', '《哈利·波特(共7册)(精)》编著者J.K.罗琳。    《哈利·波特(共7册)(精)》内容提要：2000年的一个深夜，在美国书店的烛光中，穿着黑斗篷，戴... ', 'J.K.罗琳 (J.K.Rowling)', '18524', '文学', 9.7);
INSERT INTO `myauth_book_info` VALUES (309, '明朝那些事儿（1-9）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3745215.jpg', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人... ', '当年明月', '83682', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (310, '傲慢与偏见', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4571103.jpg', '本书描写傲慢的单身青年达西与偏见的二小姐伊丽莎白、富裕的单身贵族彬格莱与贤淑的大小姐吉英之间的感情纠葛，充分表达了作者本人的婚姻观，强调经济利益对恋爱和婚姻... ', '简•奥斯丁(Jane Austen) , 孙致礼', '16665', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (311, '爱你就像爱生命', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4661043.jpg', '王小波书信均选自朝华出版社2004年4月第一版《爱你就像爱生命》，此书系王小波生前从未发表过的与李银河的“两地书”，也是迄今他们夫妇最完整和独立的一本书信集... ', '王小波、李银河', '83083', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (312, '围城', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s11276847.jpg', '《围城》是一幅栩栩如生的世井百态图，人生的酸甜苦辣千般滋味均在其中得到了淋漓尽致的体现。钱钟书先生将自己的语言天才并入极其渊博的知识，再添加上一些讽刺主义的... ', '钱钟书', '49916', '文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (313, '不能承受的生命之轻', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4421443.jpg', '小说依托六十年代的捷克斯洛伐克的政治历史背景，围绕着托马斯、特蕾莎、萨比娜和弗兰茨等人物，以托马斯与特蕾莎的爱情为主线展开故事。爱与做爱，灵魂与肉体，拯救... ', '米兰·昆德拉 , 许钧', '30158', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (314, '树上的男爵', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s8972078.jpg', '在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好权... ', '[意大利]伊塔洛·卡尔维诺 , 吴正仪', '22164', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (315, '挪威的森林', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1228930.jpg', '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，... ', '[日] 村上春树 , 林少华', '316652', '文学', 8);
INSERT INTO `myauth_book_info` VALUES (316, '挪威的森林', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27312538.jpg', '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，... ', '[日] 村上春树 , 林少华', '97743', '文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (317, '三体', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2768378.jpg', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的... ', '刘慈欣', '371208', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (318, '台北人', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4526465.jpg', '作为20世纪中文小说100强的《台北人》，是一部深具复杂性的短篇小说集，由十四个一流的短篇小说构成，串联成一体，则效果遽然增加，不但小说之幅面变广，使我们看... ', '白先勇', '34224', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (319, '冬泳', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29902192.jpg', '班宇（@坦克手贝吉塔）短篇力作首度成集 阿乙•蒋方舟•李诞•谈波 齐声推荐《冬泳》收录了班宇的七篇小说。在铁轨、工事与大雪的边缘，游走着一些昔日的身影：印... ', '班宇', '17607', '文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (320, '生吞', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33593231.jpg', '现象级悬疑力作，悬疑文学榜年度黑马作品；张一白、史航、那多、关晓彤联名推荐！数度脱销，重磅再版！睽违数年，郑执重操长篇。构思两年半，以现实大案为背景，推理... ', '郑执', '13914', '文学', 8.2);
INSERT INTO `myauth_book_info` VALUES (321, '四世同堂', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s3228699.jpg', '值得每一代中国人阅读的文学经典，值得每一个中国人珍藏的民族记忆。老舍：它是我从事写作以来最长的、可能也是最好的一本书。入选《亚洲周刊》“二十世纪中文小说一百... ', '老舍', '14462', '文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (322, '半生缘', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2838737.jpg', '他和曼桢认识，已经是多年前的事了。算起来倒已经有十四年了——真吓人一跳！马上使他连带地觉得自己已老了许多。日子过得真快，尤其对于中年以后的人，十年八年都好像... ', '张爱玲', '68922', '文学', 8.6);
INSERT INTO `myauth_book_info` VALUES (323, '窗边的小豆豆', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1067911.jpg', '《窗边的小豆豆》讲述了作者上小学时的一段真实的故事。作者因淘气被原学校退学后，来到巴学园。在小林校长的爱护和引导下，让一般人眼里“怪怪”的小豆豆逐渐成了一个... ', '[日] 黑柳彻子 著、岩崎千弘 图 , 赵玉皎', '155963', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (324, '死缓', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33644638.jpg', '内容简介《死缓》创作于 1933 年，1936 年出版，是路易-费迪南•塞利纳的第二部长篇力作。作者以自己贫困的童年生活为蓝本，以自传体手法描述了小费迪南... ', '[法]路易-费迪南·塞利纳 , 金龙格', '293', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (325, '安徒生童话故事集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1034062.jpg', '暂无介绍', '（丹麦）安徒生 , 叶君健', '86752', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (326, '雪国', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27018761.jpg', '史上最美诺贝尔文学奖作品，教育部推荐大学生必读书目大师经典名作，全新精装收藏版像《百年孤独》一样，《雪国》影响了余华、莫言、贾平凹等几代中国作家川端康... ', '[日] 川端康成 , 叶渭渠、唐月梅', '28796', '文学', 8);
INSERT INTO `myauth_book_info` VALUES (327, '你想活出怎样的人生', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33439128.jpg', '《你想活出怎样的人生》通过一个少年成长过程中经历的困惑，探讨了生而为人真正重要的东西，影响了一代又一代读者，包括动画大师宫崎骏。《你想活出怎样的人生》是一... ', '[日]吉野源三郎 著、[日]胁田和 绘 , 史诗', '5769', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (328, '那不勒斯故事四部曲', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29643733.jpg', '艾琳娜與莉拉出生在二次戰後的那不勒斯貧窮郊區，兩人的友誼從六歲時交換娃娃開始，充滿活力的莉拉有時走在前頭，帶著艾琳娜去冒險；個性內斂的艾琳娜則加倍努力，讓自... ', '', '9532', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (329, '海子的诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1067491.jpg', '本书收录了已故诗人海子的诗作精华，其诗以独特的风格深受读者的喜爱，从这些诗中反映出诗人那对于一切美好事物的眷恋之情，对于生命的世俗和崇高的激动和关怀。 ', '海子', '32783', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (330, '老人与海', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1050021.jpg', '本书讲述了一个渔夫的故事。古巴老渔夫圣地亚哥在连续八十四天没捕到鱼的情况下，终于独自钓上了一条大马林鱼，但这鱼实在大，把他的小船在海上拖了三天才筋疲力尽，被... ', '海明威 , 吴劳', '153311', '文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (331, '失踪的孩子', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29799269.jpg', '“我的整个生命，只是一场为了提升社会地位的低俗斗争。”全球畅销近千万册被翻译成40多种语言《我的天才女友》《新名字的故事》《离开的，留下的》——那不勒... ', '[意] 埃莱娜·费兰特 , 陈英', '33955', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (332, '麦田里的守望者', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2380159.jpg', '这本小说一出版，就受到国内青少年的热烈欢迎，认为它道出了自己的心声，一时大、中学校的校园里到处都模仿小说主人公霍尔顿——他们在大冬天身穿风衣，倒戴着红色猎人... ', '[美国] J. D. 塞林格 , 孙仲旭', '61342', '文学', 8.1);
INSERT INTO `myauth_book_info` VALUES (333, '杀死一只知更鸟', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29350294.jpg', '《杀死一只知更鸟》是公认的美国文学经典，而它在教育领域的意义却使其突破了国界，成为世界上最有名的成长小说之一。《杀死一只知更鸟》在西方世界的影响力巨大，是美... ', '[美] 哈珀·李 , 李育超', '19655', '文学', 9.3);
INSERT INTO `myauth_book_info` VALUES (334, '活着', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s23836852.jpg', '地主少爷福贵嗜赌成性，终于赌光了家业一贫如洗，穷困之中的福贵因为母亲生病前去求医，没想到半路上被国民党部队抓了壮丁，后被解放军所俘虏，回到家乡他才知道母亲已... ', '余华', '190191', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (335, '倾城之恋', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4638950.jpg', '一九四四年八月十五日，张爱玲的小说集《传奇》由上海杂志社出版，书中收入中短篇小说《金锁记》、《倾城之恋》、《茉莉香片》、《沉香屑：第一炉香》、《沉香屑：第二... ', '张爱玲', '36072', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (336, '局外人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27003183.jpg', '阿尔贝•加缪（1913—1960）是法国声名卓著的小说家、散文家和剧作家，“存在主义”文学的大师。1957年因“热情而冷静地阐明了当代向人类良知提出的种种问... ', '(法)阿尔贝·加缪 , 柳鸣九', '15253', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (337, '倾城之恋', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1077102.jpg', '一对现实庸俗的男女，在战争的兵荒马乱之中被命运掷骰子般地掷到了一起，于“一刹那”体会到了“一对平凡的夫妻”之间的“一点真心”⋯⋯张爱玲是作为中国现代文学史上... ', '', '146352', '文学', 8.5);
INSERT INTO `myauth_book_info` VALUES (338, '七个疯子', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33607648.jpg', '◎ “是我想太多，还是这世界太疯狂？”◎ 毒丽场域疯子们的“蛮荒故事”，纳粹等现代性之殇的神奇预言◎ “阿根廷的陀思妥耶夫斯基”，拉美现代小说之父，罗伯... ', '[阿根廷] 罗伯特·阿尔特 , 欧阳石晓', '381', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (339, '斯通纳', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28332051.jpg', '《斯通纳》讲述了生命中最重要的部分：爱，认同，怜悯，志业，傲骨，信任与死亡。一个勇者有过的失败不失意的人生：即使不能拥有完美的生活，所幸追求过完整的自我。... ', '[美] 约翰·威廉斯 , 杨向荣', '32425', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (340, '了不起的盖茨比', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1005875.jpg', '盖茨比为了久久地抱着的一个梦而付出了很高的代价。他死后，尼克发觉是汤姆暗中挑拨威尔逊去杀死盖茨比。他感到东部鬼影幢幢，世态炎凉，便决定回中西部老家去。这是一... ', '菲茨杰拉德 , 姚乃强', '106128', '文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (341, '飞鸟集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1044902.jpg', '《飞鸟集》是泰戈尔的代表作之一，也是世界上最杰出的诗集之一。白昼和黑夜、溪流和海洋、自由和背叛，都在泰戈尔的笔下合而为一，短小的语句道出了深刻的人生哲理，引... ', '[印] 罗宾德拉纳德·泰戈尔 , 徐翰林', '49752', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (342, '一千零一夜', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1070937.jpg', '《一千零一夜》又名《天方夜谭》。\"天方\"是从前中国对阿拉伯的称呼。这本书中的故事，多是阿拉伯地区国家的传说。 公元9世纪时，是阿拉伯帝国的全盛时期，它横跨亚... ', '纳训', '43647', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (343, '草房子', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2652540.jpg', '这是一部讲究品位的少年长篇小说。作品写了男孩桑桑刻骨铭心、终身难忘的六年小学生活。六年中，他亲眼目睹或直接参与了一连串看似寻常但又催人泪下、撼动人心的故事... ', '曹文轩', '19168', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (344, '彷徨', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33500305.jpg', '《彷徨》收入鲁迅1924年至1925年所作的小说，首篇《祝福》写于1924年2月16日，末篇《离婚》写于1925年11月6日，实际的时间跨度是一年半多，19... ', '鲁迅', '21291', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (345, '红玫瑰与白玫瑰', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3695882.jpg', '“也许每一个男子全都有过这样的两个女人，至少两个。娶了红玫瑰，久而久之，红的变了墙上的一抹蚊子血，白的还是\"床前明月光\"；娶了白玫瑰，白的便是衣服上沾的一粒... ', '张爱玲', '78545', '文学', 8.4);
INSERT INTO `myauth_book_info` VALUES (346, '小径分岔的花园', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29746559.jpg', '本书为1941年的短篇小说集，收小说七篇。其中，《小径分岔的花园》是侦探小说，讲述一桩罪行的准备工作和实施过程。小径分岔的花园是一个谜语，或者说寓言，而谜底... ', '[阿根廷] 豪·路·博尔赫斯 , 王永年', '15536', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (347, '悲惨世界（上中下）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4521754.jpg', '这是法国十九世纪浪漫派领袖雨果继《巴黎圣母院》之后创作的又一部气势恢宏的鸿篇巨著。全书以卓越的艺术魅力，展示了一幅自1793年法国大革命至1832年巴黎人民... ', '[法] 雨果 , 李丹、方于', '48936', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (348, '失明症漫记', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27217828.jpg', '你为什么会写这样一部冷酷的作品？虽然我活得很好，但这个世界却不好。----------------------------------------诺贝... ', '(葡)若泽·萨拉马戈 , 范维信', '11569', '文学', 9.1);
INSERT INTO `myauth_book_info` VALUES (349, '美与暴烈', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33597630.jpg', '◎ “美，美的东西，对我来说，是怨敌。”◎ 英国知名记者亨利·斯各特·斯托克斯， 援引丰富的一手史料，揭开日本文学巨匠的传奇人生。◎ 三岛由纪夫权威传记... ', '[英]亨利·斯各特 , 于是', '586', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (350, '助张继科成就大满贯', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29559291.jpg', '《助张继科成就大满贯》以作者肖战、黄文文20多年的执教生涯为大背景，分别介绍了他几十年如一日，在事业上呕心沥血的付出和他与运动员浴血奋战的经历。除此之外，《... ', '', '2773', '文学', 9.9);
INSERT INTO `myauth_book_info` VALUES (351, '繁花', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s26037307.jpg', '这是一部地域小说，人物的行走，可找到“有形”地图的对应。这也是一部记忆小说，六十年代的少年旧梦，辐射广泛，处处人间烟火的斑斓记忆，九十年代的声色犬马，是一场... ', '金宇澄', '18995', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (352, '一只特立独行的猪', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1670642.jpg', '这本书里除了文化杂文，还有给其他书写的序言与跋语。这些序言与跋语也表明了我的一些态度。除此之外，还有一些轻松的随笔。不管什么书，我都不希望它太严肃，这一本也... ', '王小波', '66846', '文学', 8.8);
INSERT INTO `myauth_book_info` VALUES (353, '嫌疑人X的献身', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3254244.jpg', '百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。靖子与女儿相依为命，失手杀了前来纠缠的前夫。石神提出由... ', '[日] 东野圭吾 , 刘子倩', '404889', '文学', 8.9);
INSERT INTO `myauth_book_info` VALUES (354, '马可瓦尔多', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33513675.jpg', '一年四季轮回 一季一个故事在沟渠里仰望星星 一个小工眼中城市的奇趣与窃喜马可瓦尔多是位城市小工。在充满着水泥和沥青的城市森林里，他却试图寻找大自然。春天... ', '[意] 伊塔洛·卡尔维诺 , 马小漠', '822', '文学', 9.2);
INSERT INTO `myauth_book_info` VALUES (355, '射雕英雄传（全四册）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2157336.jpg', '《射雕英雄传》是金庸的代表作之一，作于一九五七年到一九五九年，在《香港商报》连载。《射雕》中的人物个性单纯，郭靖诚朴厚重、黄蓉机智狡狯，读者容易印象深刻。这... ', '金庸', '63470', '文学', 9);
INSERT INTO `myauth_book_info` VALUES (356, '阿Q正传', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1074811.jpg', '《阿Q正传》讲述值此世纪末，衷心祈愿这里所议论的人物在下一世纪的中国现实生活中淡出；当然，作为光辉的典型人物，他将和哈姆雷特、唐·吉诃德等不朽的名字一样万古... ', '鲁迅 著、丰子恺 绘', '71446', '文学', 8.7);
INSERT INTO `myauth_book_info` VALUES (357, '我将独自前行', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33602083.jpg', '24岁那年，桃子被东京奥运所吸引，抛下了婚事、离开了故乡，一个人前往陌生的东京。来到东京后，桃子努力工作、结婚成家、又经历了儿女独立、丈夫早逝，一眨眼竟是匆... ', '[日] 若竹千佐子 , 杜海玲', '816', '文学', 7.7);
INSERT INTO `myauth_book_info` VALUES (358, '飞鸟集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1044902.jpg', '《飞鸟集》是泰戈尔的代表作之一，也是世界上最杰出的诗集之一。白昼和黑夜、溪流和海洋、自由和背叛，都在泰戈尔的笔下合而为一，短小的语句道出了深刻的人生哲理，引... ', '[印] 罗宾德拉纳德·泰戈尔 , 徐翰林', '49752', '诗歌', 8.9);
INSERT INTO `myauth_book_info` VALUES (359, '诗经', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1979223.jpg', '这本《诗经》收录全部305篇，每篇诗歌都配有相应的解释及译文，使读者更容易理解。 ', '孔丘 编订', '16759', '诗歌', 9.4);
INSERT INTO `myauth_book_info` VALUES (360, '声音中的另一种语言', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33559480.jpg', '- 编辑推荐 -★瓦尔特·本雅明《译作者的任务》以来至为重要的翻译论著。★法国当代举足轻重的世界级诗坛巨匠、著名翻译家、艺术评论家，龚古尔诗歌奖、卡夫卡... ', '[法] 伊夫·博纳富瓦 , 许翡玎、曹丹红', '211', '诗歌', 9.3);
INSERT INTO `myauth_book_info` VALUES (361, '海子的诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1067491.jpg', '本书收录了已故诗人海子的诗作精华，其诗以独特的风格深受读者的喜爱，从这些诗中反映出诗人那对于一切美好事物的眷恋之情，对于生命的世俗和崇高的激动和关怀。 ', '海子', '32783', '诗歌', 8.9);
INSERT INTO `myauth_book_info` VALUES (362, '唐诗三百首', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1008848.jpg', '《唐诗三百首》的旧注本亦有许多种，其中以陈婉俊的补注本简明精当，流行最广。她的注解除简介作者生平外，比较注重语词名物的诠释，博引旁征，字梳句栉，对今天的读者... ', '蘅塘退士、陈婉俊', '13828', '诗歌', 9.4);
INSERT INTO `myauth_book_info` VALUES (363, '二十首情诗和一首绝望的歌', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27313674.jpg', '【聂鲁达豆瓣小站：http://site.douban.com/neruda/ 】生命中只有两样东西不可缺少：诗歌和爱情。送一首诗给你的爱情！★ 诺贝尔... ', '[智利] 巴勃罗·聂鲁达 , 陈黎、张芬龄', '7082', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (364, '顾城的诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1024472.jpg', '《顾城的诗》是人民文学出版社1986年版《黑眼睛》的再版，在原书的基础上做了相应的删节和补充。其中有些诗是第一次发表。突出了一个时期的重点和特点，稍兼顾全面... ', '顾城', '18291', '诗歌', 8.8);
INSERT INTO `myauth_book_info` VALUES (365, '大山里的小诗人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33602160.jpg', '【内容简介】·《大山里的小诗人》是由公益组织“是光诗歌”发起，果麦文化编辑制作的乡村儿童配图诗集，全书共收录了120首儿童手抄诗，配有73幅随书插画，由... ', '“是光”的孩子们', '419', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (366, '月光落在左手上', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28000270.jpg', '编辑推荐余秀华的诗歌，诉诸的是诗本身神秘非理性的逻辑，自有其妙。雄辩的诗歌向来为中国当代诗推崇，而余秀华的诗放弃辩论，放弃自圆其说，甚至放弃结论，因此与读... ', '余秀华', '9663', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (367, '姜二嫚的诗', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33612814.jpg', '“太好了/我比姐姐/多个姐姐”——姜二嫚，6岁“灯把黑夜/烫了一个洞”——姜二嫚，7岁“如果有谁对我说/我爱你/这绝对绝对不是原创/原创在妈妈那里”——... ', '姜二嫚', '722', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (368, '给青年诗人的信', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28378127.jpg', '比诗更像诗的十封信，你我都是青年诗人。.20世纪最伟大的德语诗人之一里尔克写给青年诗人的信，关于诗歌、人生、孤独、自我、职业，诗意对谈。.里尔克的精... ', '[奥] 里尔克 , 冯至 , 雅众文化', '7117', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (369, '万物静默如谜', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s11168631.jpg', '《辛波斯卡诗选：万物静默如谜》收录辛波斯卡各阶段名作75首，包括激发知名绘本作家幾米创作出《向左走，向右走》的《一见钟情》，收录高中语文教材的《底片》，网上... ', '[波] 维斯拉瓦•辛波斯卡 , 陈黎、张芬龄', '13861', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (370, '万物静默如谜', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28831415.jpg', '我偏爱写诗的荒谬，胜于不写诗的荒谬。——辛波斯卡1996年诺贝尔文学奖得主辛波斯卡，是当代最为迷人的诗人之一，享有“诗界莫扎特”的美誉。她的诗别具一格，... ', '[波兰] 维斯瓦娃·辛波斯卡 , 陈黎、张芬龄', '3962', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (371, '海子诗全集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3670242.jpg', '《海子诗全集》收录迄今为止所有发现的海子文学作品。全书以上海三联书店1997年出版的《海子诗全编》为底本，依照时间与类别结合的方式，收入海子的抒情短诗、长诗... ', '海子 著、西川 编', '9033', '诗歌', 9.2);
INSERT INTO `myauth_book_info` VALUES (372, '荒原', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s10458247.jpg', '艾略特被称为“世界诗歌漫长历史中一个新阶段的带领人”，是英语诗歌界“最有影响的诗人之一”。本书全面收录了T·S·艾略特的诗歌。他在诗歌中通过用典暗示、启发读... ', '(英)托·斯·艾略特 , 汤永宽、裘小龙', '3425', '诗歌', 8.8);
INSERT INTO `myauth_book_info` VALUES (373, '云雀叫了一整天', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3381125.jpg', '在法兰克福，木心写道，飞越大西洋，伦敦消失，法兰克福出现，机组人员没发任何表格，心里有点痒兮兮。登录一个不设防的国家……画廊主、餐馆老板、咖啡厅领班都一口流... ', '木心', '11579', '诗歌', 8.5);
INSERT INTO `myauth_book_info` VALUES (374, '我的孤独是一座花园', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3679561.jpg', '《我的孤独是一座花园》是阿多尼斯作品的首个中译版，收录了诗人从上世纪50年代“最初的诗”到2008年的最新作品，时间跨越半个世纪。 ', '[叙利亚] 阿多尼斯 , 薛庆国', '11672', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (375, '想象一朵未来的玫瑰', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s32271911.jpg', '★★★疲惫的人生不能没有诗意我的心略大于宇宙葡萄牙国宝级作家、诗人佩索阿以异名“冈波斯”创作的诗卷诗人陈黎、黄灿然、蓝蓝、王敖推荐★★★【内容... ', '[葡] 费尔南多·佩索阿 , 杨铁军 , 雅众文化', '1821', '诗歌', 8.5);
INSERT INTO `myauth_book_info` VALUES (376, '云雀叫了一整天', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s25948080.jpg', '★ 木心先生诗歌代表作：在欧盟各国转悠，飞越大西洋，伦敦消失，法兰克福出现，在空荡的机场大厅、在清洁石子路边摆开的桌椅，在四门敞开的歌剧院，在欧罗巴的景内景... ', '木心', '8069', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (377, '孩子们的诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29551042.jpg', '书中有灵气的诗句包括但不限于以下：*我的眼睛／很小很小／有时遇到心事／就连两行泪／也装不下——陈科全， 八岁*灯把黑夜／烫了一个洞——姜二嫚，七岁*春... ', '果麦 编', '7559', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (378, '夜的命名术', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33485280.jpg', '《夜的命名术：皮扎尼克诗合集》翻译自西班牙语原版《皮扎尼克诗全集》，收录了皮扎尼克生前以“阿莱杭德娜•皮扎尼克”署名结集出版的全部诗作，以其六本诗歌单行本为... ', '[阿根廷]阿莱杭德娜•皮扎尼克 , 汪天艾', '1261', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (379, '摇摇晃晃的人间', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29195693.jpg', '余秀华亲选代表诗作，首度授权公开出版。数百家媒体报道，超千万次转发，上亿次阅读，穿越大半个中国，每读一次，都带给我们直抵灵魂深处的震撼；她是一位纯粹的诗... ', '余秀华', '6111', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (380, '一百万亿首诗', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33601154.jpg', '《一百万亿首诗》由十首十四行诗构成。十首诗除严格遵循经典十四行诗的格律和规范外，各首诗的同一行还押相同的韵。在作品的成书形式上，十首诗都单面排印，各行之间被... ', '[法] 雷蒙·格诺 , 吴燕南', '94', '诗歌', 8.1);
INSERT INTO `myauth_book_info` VALUES (381, '海子的诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29610741.jpg', '海子，精英和大众都爱他，官方和百姓都爱他。海子的诗，还存在于娄烨的电影、高晓松晓说、周云蓬《九月》，俞敏洪演讲、撒贝宁和白岩松的朗诵、柴静采访、汪峰《流浪》... ', '海子', '2079', '诗歌', 8.8);
INSERT INTO `myauth_book_info` VALUES (382, '野草', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2364689.jpg', '本书所收散文诗23篇〔包括一首打油诗和一出诗剧〕，最初都曾陆续发表于1924年12月至1926年1月的《语丝》周刊上，《题辞》最初也曾发表于1927年7月2... ', '鲁迅', '11309', '诗歌', 9.3);
INSERT INTO `myauth_book_info` VALUES (383, '杨牧诗选 1956-2013', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27987548.jpg', '朝向一首诗的完成，Towards the Completion of a Poem1956—1966，1966—1976，1976—1986，1986—1... ', '杨牧', '1134', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (384, '飞鸟集', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1665389.jpg', '暂无介绍', '泰戈尔 , 郑振铎', '4633', '诗歌', 9.1);
INSERT INTO `myauth_book_info` VALUES (385, '事物的味道，我尝得太早了', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28685720.jpg', '全书收录了石川啄木的四 部小集子。《一握砂》包含551首短歌，《可悲的玩具》包含194首短歌，这两部歌集诚恳地记录了诗人在贫病生活中的哀思和叹息。《叫子和口... ', '[日] 石川啄木 , 周作人', '5573', '诗歌', 8.5);
INSERT INTO `myauth_book_info` VALUES (386, '炸裂志', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s31461347.jpg', '本书是丛书“我的诗篇——当代工人诗歌精选”的其中一部，该丛书精选六位打工诗人影响广泛、具有代表性的精品诗作，保留《我的诗篇》纪录片中的诗歌。本书作者陈年喜做... ', '陈年喜', '126', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (387, '人间词话', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s9130587.jpg', '《人间词话》一书乃是王氏接受了西洋美学思想之洗礼后，以崭新的眼光对中国旧文学所作的评论，具有划时代的意义，向来极受学术界重视。本书并约请当今著名专家黄霖为之... ', '王国维', '39115', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (388, '观看王维的十九种方式', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33473775.jpg', '◆入选 豆瓣·2019年外国文学非小说类年度十佳◆编辑推荐有关汉语诗歌翻译的经典之作。当今昔皆为汉语的一首诗，变成一首英语诗、一首西语诗、一首法语诗，... ', '[美国] 艾略特.温伯格、[墨西哥] 奥克塔维奥·帕斯 , 光哲', '1221', '诗歌', 8.4);
INSERT INTO `myauth_book_info` VALUES (389, '繁星春水', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1095190.jpg', '《繁星春水》内容简介：《繁星春水》是冰心的诗集，从中不难看出冰心纯美的文字、细腻的笔致。让你宛如重温儿时的梦，和她一起在野外的夜晚躺在草地上数星星。《繁星... ', '冰心', '5650', '诗歌', 7);
INSERT INTO `myauth_book_info` VALUES (390, '什么算是一首好诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33541761.jpg', '什么是诗？怎样的诗才算得上好诗？为何诗能令人悸动？要如何保持诗歌带来的乐趣？一本凝练而实用的诗歌导论；人人皆可以走入诗的美丽时空。★33步，带你畅游... ', '[德]汉斯-狄特·格尔费特  著 , 徐迟', '22', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (391, '二十首情诗与绝望的歌', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4082180.jpg', '本书收有“女人的身体”、“光笼罩你”、“我记得你往日的样子”、“陶醉在松林中”等诗歌。 ', '聂鲁达 , 李宗荣', '7711', '诗歌', 8.8);
INSERT INTO `myauth_book_info` VALUES (392, '诗人十四个', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33320950.jpg', '十四位古代诗人和一个现代闯入者一场始于1600年前的诗歌沙龙·七堂围绕“春天”意象与“青春”经验的文学课，以现代心理学解读古代诗人，诗与心灵自由飞... ', '黄晓丹', '761', '诗歌', 8.8);
INSERT INTO `myauth_book_info` VALUES (393, '春山', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33602848.jpg', '《春山》生动再现了诗人王维的晚年生活，他与裴迪的日常与复杂情感，他与一二友人的交往，以及他不为人知的内心世界。诗与禅是探究王维内心宇宙的两把钥匙，它们包裹着... ', '何大草', '168', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (394, '诗人与诗歌', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33587581.jpg', '一场出版业的壮举，不仅在规模上前无古人，而且此等壮举竟然只倚仗一人的批评力。——《新闻周刊》无论如何看待，他都是过去半个世纪以来文学界极为多才多艺，也是... ', '[美] 哈罗德·布鲁姆 , 张屏瑾', '48', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (395, '恶之花', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1033494.jpg', '选译法国诗人波德莱尔诗作一百首，并有译者长篇导论缀于前，从中既可对波德莱尔的文字生涯有个大致了解，又可细细品味恶之为花的魅惑。 ', '[法] 夏尔·波德莱尔 , 郭宏安', '4517', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (396, '这世界如露水般短暂', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s30003100.jpg', '★★★周作人 正冈子规 一致推崇的俳句大师日本古典俳坛最后一抹光江户时代最后一位俳句大家和松尾芭蕉 与谢芜村并称日本古典俳句三大俳人小林一茶 首部... ', '[日]小林一茶 , 陈黎、张芬龄', '2292', '诗歌', 7.9);
INSERT INTO `myauth_book_info` VALUES (397, '我是你流浪过的一个地方', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s11102457.jpg', '海桑的诗集曾由央视主持人张越印制一千本，黄集伟老师亦曾得到诗人寄的一箱书，并让他随便送朋友。读库老六认为“书只有卖出去，才能成其为书。诗只有更多的人读出来，... ', '海桑', '3436', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (398, '浮士德', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1528497.jpg', '歌德的《浮士德》根据德国一个炼金术士向魔鬼出卖灵魂以换取知识和青春的古老传说，反其意而之，演示了广阔、深邃而崇高的人生内容，为人类自强不息的进取精神唱了一出... ', '歌德 , 绿原', '6704', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (399, '我们爱过又忘记', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28866322.jpg', '本书是余秀华所有未出版诗作中情诗的精选，共150余首。其诗感情真挚，句子浑然天成，常有神来之妙语。它歌咏爱而不得，歌咏人世间的悲伤、幸福和感叹，宛如天籁，动... ', '余秀华', '1860', '诗歌', 7.9);
INSERT INTO `myauth_book_info` VALUES (400, '博尔赫斯诗选', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2180194.jpg', '突然间黄昏变得明亮因为此刻正有细雨在落下。或曾经落下。下雨无疑是在过去发生的一件事。谁听见雨落下，谁就回想起那个时候，幸福的命运向他呈现了一朵叫... ', '（阿根廷）博尔赫斯 , 陈东飚、陈子弘等', '3488', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (401, '设计诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6996300.jpg', '“世界最美的书”《蚁呓》设计者朱赢椿自作诗集，收录数十首以视觉画面传达构成，只有设计师才能完成的新感觉诗歌。本书为朱赢椿自作诗集，收录数十首以画面传达构成... ', '朱赢椿', '8068', '诗歌', 7.3);
INSERT INTO `myauth_book_info` VALUES (402, '深沉的玫瑰', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29560738.jpg', '墨西哥诗人奥克塔维奥·帕斯说过：“博尔赫斯的创作涉及三类体裁，散文、诗歌和小说。他的散文读起来像小说；他的小说像诗；他的诗歌又往往使人觉得像是散文。”本书... ', '[阿根廷] 博尔赫斯 , 王永年', '1506', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (403, '致后代：布莱希特诗选', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29786595.jpg', '《致后代：布莱希特诗选》完整呈现出布莱希特诗歌创作全历程，为国内首次全面译介。布莱希特是“史诗剧”的创立者。但他作为诗人的地位一点也不比作为剧作家的地位低... ', '[德]贝托尔特·布莱希特 , 黄灿然', '569', '诗歌', 8.8);
INSERT INTO `myauth_book_info` VALUES (404, '给孩子的诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28049542.jpg', '北岛亲自甄别、挑选，将自己心目中的最适于孩子诵读、领悟的短诗公布于世，“为孩子留下一部作品”，实现诗人长久以来的宿愿。重绘新诗版图，确立经典标准，诗人、篇... ', '北岛  选编', '3924', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (405, '二十亿光年的孤独', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28977211.jpg', '谷川俊太郎是日本当代诗坛最有影响力的诗人，他为宫崎骏、手冢治虫的动画作词，给荒木经惟的摄影集和佐野洋子的画配诗，他影响了村上春树、大江健三郎、北岛等无数人，... ', '[日] 谷川俊太郎 , 田原 , 雅众文化', '3838', '诗歌', 7.7);
INSERT INTO `myauth_book_info` VALUES (406, '致未来的诗人', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28096724.jpg', '然而我不在乎无人了解在这些近乎同代的身体之间，他们活着的方式不像我这来自疯狂土地的身体挣扎着成为翅膀抵达空间之墙是那墙壁将我的岁月与你的未来相隔。... ', '[西班牙] 路易斯·塞尔努达 , 范晔', '1568', '诗歌', 9.1);
INSERT INTO `myauth_book_info` VALUES (407, '另一个，同一个', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33541750.jpg', '博尔赫斯创作于一九六四年的诗集，也是作者特别偏爱的一本，收诗七十五篇，包括名作《关于天赐的诗》、《猜测的诗》、《玫瑰与弥尔顿》、《胡宁》等，主题涉及布宜诺斯... ', '[阿根廷] 博尔赫斯 , 王永年', '1451', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (408, '疑问集', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27829496.jpg', '★  这些简洁的、谜一般的问题，神秘而有趣。用孩童般天真的方式提出复杂的问题，探寻生而为人的意义。  ——《图书馆期刊》=================... ', '[智利] 巴勃罗 • 聂鲁达 , 陈黎、张芬龄', '2563', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (409, '一只狼在放哨', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29487040.jpg', '阿巴斯不仅是一位备受瞩目电影导演，他的电影被称为“诗意电影”，因为阿巴斯的另外一个身份是一位风格独特的诗人。事实上，他的诗歌写作比其他的艺术行为在时间上要早... ', '[伊朗] 阿巴斯·基阿鲁斯达米 , 黄灿然', '2055', '诗歌', 8.5);
INSERT INTO `myauth_book_info` VALUES (410, '你来人间一趟,你要看看太阳', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s31461763.jpg', '在诗人海子去世30周年之际，我们推出了这本诗歌选集，以表达对诗人的怀念，也尝试用一种新的方式去感知和解读不朽的诗篇。本书精选100首海子创作的抒情短诗，按照... ', '海子', '790', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (411, '从催眠的世界中不断醒来', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33562486.jpg', '如何读懂并写好一首诗？当代诗的抱负是什么？北大学者、批评家和诗人姜涛提出：所谓“个人化的历史想象力”虽然能深入生活世界的肌理，但去结构、脱脉络的感受方式，会... ', '姜涛', '38', '诗歌', 9.4);
INSERT INTO `myauth_book_info` VALUES (412, '泰戈尔诗集', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s24549908.jpg', '从上一年暮春到现在，一年的劳作终于结束！这一年来，大多数时间都投在这本诗集的翻译工作里，期间颇费心思。不知道该用什么词语来描述整个过程中的感受——最多的是... ', '[印] 罗宾德拉纳特·泰戈尔 , 深幻、王立', '9104', '诗歌', 8.9);
INSERT INTO `myauth_book_info` VALUES (413, '现实与欲望', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28315978.jpg', '塞尔努达的作品是一条通向我们自己的路。……很少有这样的现代诗人，无论何种语言，能给我们带来这样不寒而栗的体验，当我们知道自己面对的是一个说出真理的人。他击中... ', '[西班牙] 路易斯·塞尔努达 , 汪天艾', '1119', '诗歌', 9.1);
INSERT INTO `myauth_book_info` VALUES (414, '众多未来', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33629151.jpg', '☆ 普利策诗歌奖得主、战后美国诗坛中心性的诗人四十年间代表作首度在中文世界结集出版，实力青年译者金雯倾力翻译并导读。☆ 被约翰·阿什贝利称赞的后辈，被娜塔... ', '[美]乔丽·格雷厄姆（Jorie Graham） , 金雯', '21', '诗歌', 9.2);
INSERT INTO `myauth_book_info` VALUES (415, '我曾这样寂寞生活', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29722221.jpg', '《我曾这样寂寞生活》收录辛波斯卡各阶段名作98首，是其经典诗集。辛波斯卡的诗取材于日常生活的事物和经验，飞机、流浪汉、养老院、火车站、分类广告、云、洋葱等等... ', '[波兰]辛波斯卡 , 胡桑', '990', '诗歌', 7.9);
INSERT INTO `myauth_book_info` VALUES (416, '神曲', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s26841808.jpg', '《神曲》采用了中世纪流行的梦幻文学的形式，描写了一个幻游地狱、炼狱、天堂三界的故事。全诗三卷，分别为《地狱》、《炼狱》和《天堂》，每卷三十三篇，加上序共一百... ', '[意大利] 但丁 , 朱维基', '590', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (417, '坐在你身边看云', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29484765.jpg', '当我和你一起穿过田野来到河畔我看到的河流更美丽；坐在你身边看云我看得更清楚。你不曾把自然从我这里带走，你不曾改变自然对我的意义，你使自然离我更近... ', '[葡] 费尔南多·佩索阿 , 程一身', '885', '诗歌', 8.8);
INSERT INTO `myauth_book_info` VALUES (418, '唯有孤独恒常如新', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28002516.jpg', '普利策奖、美国国家图书奖获奖作品狄金森后最伟大的美国女诗人伊丽莎白•毕肖普经典诗集布罗茨基、希尼、帕斯等众多诺贝尔文学奖得主推崇备至伊丽莎白•毕肖普，... ', '(美) 伊丽莎白·毕肖普 , 包慧怡', '2278', '诗歌', 8.1);
INSERT INTO `myauth_book_info` VALUES (419, '我纷纷的情欲', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1963169.jpg', '《我纷纷的情欲》是木心的诗集。 ', '木心', '5460', '诗歌', 8.1);
INSERT INTO `myauth_book_info` VALUES (420, '在春天走进果园', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28111403.jpg', '鲁米被联合国评价为“属于整个人类的最伟大的人文主义者、哲学家和诗人”。本书是鲁米这位大彻大悟的圣哲的心灵语录。鲁米的诗歌击穿事物的表象，直达灵魂深处。对灵性... ', '鲁米 , 梁永安', '870', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (421, '顾城的诗 顾城的画', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4084467.jpg', '《顾城诗歌精品:顾城的诗 顾城的画(插图本)》主要内容：顾城是一位在当代诗歌史上具有重要影响的诗人，他的创作是当代诗歌研究的重要对象这一。《顾城诗歌精品:顾... ', '顾城', '5735', '诗歌', 9.1);
INSERT INTO `myauth_book_info` VALUES (422, '胭脂用尽时，桃花就开了', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29720364.jpg', '影响诗人石川啄木的创作深受周作人喜爱的 日本传奇女诗人与谢野晶子◎ 收录划时代短歌集《乱发》中的名作，全面展示了与谢野晶子不同时期的创作风貌◎ 这些... ', '[日]与谢野晶子 , 陈黎、张芬龄', '530', '诗歌', 8);
INSERT INTO `myauth_book_info` VALUES (423, '三万年前的星空', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29895037.jpg', '“只是爱那个人/我的一生就结束了”“我是上了年纪的少年/是尚未出生的老人”●  谷川俊太郎全新诗集，执笔70周年，中日双语版日本国宝级文学大师，是国际... ', '[日]谷川俊太郎 , 田原', '1382', '诗歌', 7.6);
INSERT INTO `myauth_book_info` VALUES (424, '未知大学', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29512284.jpg', '波拉尼奥一直以诗人自居，非常珍视自己的诗作，得知病情的几个月后，他亲自整理自己几乎所有的诗歌手稿，是未来将出版的《未知大学》的雏形。中文版诗集以《未知大学... ', '[智利] 罗贝托·波拉尼奥 , 范晔、杨玲', '1114', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (425, '马尔多罗之歌', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29872967.jpg', '天才、有罪的少年，美与邪恶的混合体，几代大师膜拜的偶像，留给世人的唯一一部奇书中的奇书◎ 编辑推荐☆《马尔多罗之歌》是法国诗人洛特雷阿蒙的天才之... ', '[法] 洛特雷阿蒙 , 车槿山', '827', '诗歌', 9.1);
INSERT INTO `myauth_book_info` VALUES (426, '愤怒与神秘：勒内·夏尔诗选', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29863587.jpg', '『词语之夜的抵抗战士』※ 如果我们栖居于闪电，它就是永恒之心。◆ 超现实的劲风 + 群岛般的话语• 首个全译本 纪念勒内•夏尔逝世三十周年这部诗集，... ', '【法】勒内·夏尔（René Char） , 张博', '645', '诗歌', 8.8);
INSERT INTO `myauth_book_info` VALUES (427, '声音集', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33556179.jpg', '那些将自己的翅膀托付出去的人，看不见它们飞翔就会难过。你看不见泪流成河，是因为其中没有哪一滴来自你的双眼。我自己的贫苦还不够，只有他人的贫苦才能令我感... ', '[阿根廷]安东尼奥·波尔基亚 , 王可', '41', '诗歌', 8.4);
INSERT INTO `myauth_book_info` VALUES (428, '唐宋词十七讲', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2190377.jpg', '一部完整的唐宋词史。本书为国学大家叶嘉莹教授应辅仁大学校友会之邀所做的唐宋词系列讲座纪录。《唐宋词十七讲》为作者唐宋词系列讲座的讲演记录，内容是《唐宋词名... ', '叶嘉莹', '3146', '诗歌', 9.1);
INSERT INTO `myauth_book_info` VALUES (429, '恶之花', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s6161298.jpg', '全书分为“忧郁与理想”、“巴黎风光”、“酒”、“恶之花”、“叛逆”、“死亡”和“增补诗”七部分。在诗人的笔下，巴黎风光阴暗而神秘，吸引他目光的是被社会抛弃的... ', '[法]波德莱尔 , 钱春绮', '1405', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (430, '从前的我也很可爱啊', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s30004553.jpg', '寂寞的时候，只能念一首石川啄木。石川啄木是天才诗人，其诗歌有清澈的忧伤，又有明快的可爱。读一首石川啄木，能读出轻轻的寂寞，也能感受淡淡的可爱。《从前的我... ', '[日]石川啄木 , 周作人', '732', '诗歌', 8.1);
INSERT INTO `myauth_book_info` VALUES (431, '草叶集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28259222.jpg', '《草叶集》是一部奇书，从内容到形式都颠覆了在它之前美国诗人们遵循的欧洲诗歌的创作模式，而且是有意识的颠覆。尽管它从问世至今饱受争议褒贬，但却被尊崇为地道的美... ', '[美] 沃尔特·惠特曼 , 邹仲之', '381', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (432, '仓央嘉措诗传', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4673306.jpg', '住进布达拉宫，他是雪域之王；流浪在拉萨街头，他是世间最美的情郎。本书呈现的，是六世达赖喇嘛仓央嘉措的传奇人生，和藏传佛教史上引人注目的上师情歌。70首新译诗... ', '苗欣宇、马辉', '7362', '诗歌', 7.3);
INSERT INTO `myauth_book_info` VALUES (433, '商禽诗全集', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33551696.jpg', '“唯一值得自己安慰的是，我不去恨。我的诗中没有恨。”中文现代诗开拓者 享誉国际的现代文学奠基人商禽首部简体中文诗集穿越时代的漂泊者 撞击灵魂的雕塑家... ', '商禽 , 雅众文化', '212', '诗歌', 9.1);
INSERT INTO `myauth_book_info` VALUES (434, '我们爱过又忘记', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33576729.jpg', '★ 诗人余秀华深受关注的诗集《我们爱过又忘记》精装再版，全新上市！收录的150余首诗作是诗人写作渐趋成熟的成果。这些诗歌中，既有对爱情、亲情、日复一日的生... ', '余秀华', '74', '诗歌', 8.4);
INSERT INTO `myauth_book_info` VALUES (435, '夜晚的故事', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28925459.jpg', '暂无介绍', '[阿根廷]豪尔赫·路易斯·博尔赫斯 , 王永年', '843', '诗歌', 8.1);
INSERT INTO `myauth_book_info` VALUES (436, '楚辞', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4442188.jpg', '《楚辞》内容简介：当我们穿越时空来到战国时代的时候，我们无法不为这个时代绚丽辉煌的文化所惊叹、所倾倒。那正是被德国哲学家雅斯贝尔斯称为“轴心时代”的人类文明... ', '屈原 等 , 林家骊 注释', '1107', '诗歌', 9.3);
INSERT INTO `myauth_book_info` VALUES (437, '莎士比亚十四行诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28951603.jpg', '《莎士比亚十四行诗》是英国著名诗人和戏剧家威廉•莎士比亚的诗歌代表作，梁宗岱翻译的《莎士比亚十四行诗》是莎翁十四行诗翻译的典范之作，台湾诗人余光中认为“梁氏... ', '[英] 莎士比亚 , 梁宗岱', '766', '诗歌', 9.3);
INSERT INTO `myauth_book_info` VALUES (438, '彩画集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s10299680.jpg', '精神上的搏斗和人与人之间的战斗一样激烈残酷。——兰波《地狱一季》他（兰波）是众多流派之父，不是任何流派的亲人。——亨利•米勒我没有看到写（例如）《地... ', '(法)兰波 , 王道乾', '1786', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (439, '吉檀迦利', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33518698.jpg', '叶芝读时默默流泪。纪德说“没有任何诗集能像《吉檀迦利》一样给我以灵魂上的震撼”。《吉檀迦利》是亚洲首部诺贝尔文学奖获奖诗集，共103首。整部诗集，在情感与... ', '[印度] 泰戈尔 , 萧兴政', '194', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (440, '大山里的小诗人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33548601.jpg', '大山里的孩子托笔尖诉说孤独与渴望诗便在他们心中流淌黑夜隐身了星空不忍淹没灵性的光芒 ', '人民日报出版社', '84', '诗歌', 9.2);
INSERT INTO `myauth_book_info` VALUES (441, '唯有孤独恒常如新', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33469198.jpg', '◎狄金森之后，美国深具影响力的女诗人◎一生都在流浪和漫游中度过◎诗作很少，却被称为“诗人中的诗人”◎包揽美国国家图书奖、普利策奖等各项大奖◎备受布罗... ', '[美]伊丽莎白·毕肖普 , 包慧怡', '196', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (442, '张枣的诗', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4421800.jpg', '这本诗集首次结集了张枣迄今为止所见的全部诗歌作品130多首，展示了这位当代最“低产”的杰出诗人的全部诗歌面貌。其中首次收集了诗人《镜中》之前的许多作品，给读... ', '张枣', '2359', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (443, '火：鲁米抒情诗', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33297494.jpg', '鲁米是伊朗著名诗人，被誉为神秘主义的“泰戈尔”，人类伟大的精神导师、历史上伟大的天才诗人之一。被联合国评价为“属于整个人类的伟大的人文主义者、哲学家和诗人”... ', '[波斯]贾拉勒丁·鲁米、[伊朗] 阿巴斯·基亚罗斯塔米 编 , 黄灿然 , 雅众文化', '270', '诗歌', 7.9);
INSERT INTO `myauth_book_info` VALUES (444, '寺山修司少女诗集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29780683.jpg', '眼泪是人类自己做出来的最小的海——寺山修司————————被遗忘的少女，住在港湾红色的小屋里。她所做的事，只是每日夕阳西下之时前往海边，录下海水的... ', '[日]寺山修司 , 彭永坚', '1657', '诗歌', 7.5);
INSERT INTO `myauth_book_info` VALUES (445, '奥克诺斯', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27986922.jpg', '《奥克诺斯》是西班牙诗人塞尔努达的散文诗集。流亡国外的诗人追忆童年、秋日和故乡小城，在文字中重构一个透明的世界，达成自己对生命的理解、对永恒的渴望。在西班... ', '[西班牙] 路易斯·塞尔努达 , 汪天艾', '1939', '诗歌', 9.2);
INSERT INTO `myauth_book_info` VALUES (446, '布宜诺斯艾利斯激情', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29560739.jpg', '暂无介绍', '[阿根廷]豪尔赫·路易斯·博尔赫斯 , 林之木、王永年', '1198', '诗歌', 7.5);
INSERT INTO `myauth_book_info` VALUES (447, '死于黎明：洛尔迦诗选', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28891821.jpg', '洛尔迦是西班牙著名诗人，他把安达卢西亚民间抒情谣曲的韵律、现代诗歌的技艺和超现实主义的想象力完美地结合起来，被视为西班牙“二七年一代”诗人的杰出代表。今年... ', '[西] 费德里科•加西亚•洛尔迦 （Federico García Lorca ） , 王家新', '814', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (448, '夏宇詩集／Salsa', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3238302.jpg', '这集子里的46首诗最早一首写于1991年最晚的一首1998年.其余 半在1992年至1997年以一种兴奋片段混乱探路般的方式出现在我的笔记本里.然后就搁着搁... ', '夏宇', '3875', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (449, '杜诗镜铨', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33641181.jpg', '杜甫是唐代 诗人，所作诗歌被后世推为经典。历代研究，注解杜诗者极多。其中以清代杨伦所笺本为 佳入门读物，此本精选其诗文集的经典笺注本，予以影印出版，对于诗歌... ', '[唐] 杜甫、[清]杨伦 笺注', '25', '诗歌', 9.7);
INSERT INTO `myauth_book_info` VALUES (450, '夜空总有最大密度的蓝色', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29892050.jpg', '☆震惊日本文坛、演艺圈的神秘诗人，日本现象级畅销诗集登陆！☆《编舟记》导演石井裕也操刀同名电影，获《电影旬报》2017年年度十佳第一名。☆日本国民诗人谷... ', '[日]最果夕日 , 匡匡', '1890', '诗歌', 6.5);
INSERT INTO `myauth_book_info` VALUES (451, '先知', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6846152.jpg', '《先知》（有声读物版）讲述清晨，带着一颗雀跃的心醒来，感谢又一个充满爱的日子；午休，沉思爱的心旷神怡；黄昏，带着感激之情回家；睡前，为你心中的挚爱祈祷，唇间... ', '卡里·纪伯伦 , 林志豪', '4165', '诗歌', 9.1);
INSERT INTO `myauth_book_info` VALUES (452, '时间的玫瑰', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1429458.jpg', '作者北岛用“诗歌传记”的表现手法，向我们娓娓道来20世纪最为辉煌的诗歌时代——“黄金时代”的代表人物，其中包括洛尔加、曼德尔施塔姆、里尔克、特拉克尔、策兰、... ', '北岛', '3745', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (453, '新月集·飞鸟集', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1308177.jpg', '《新月集》（The Crescent Moon，1903）主要译自1903年出版的孟加拉文诗集《儿童集》，也有的是用英文直接创作的。诗集中，诗人生动描绘了儿... ', '[印] 泰戈尔 , 郑振铎', '3673', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (454, '恶之花', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29408058.jpg', '暂无介绍', '[法]波德莱尔（Charles Baudelaire） , 张秋红', '998', '诗歌', 8);
INSERT INTO `myauth_book_info` VALUES (455, '我的身体里早已落叶纷飞', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29854757.jpg', '《我的身体里早已落叶纷飞》是海桑继《不如让每天发生些小事情》和《我是你流浪过的一个地方》之后的第三本诗集，收录了他近三年创作的二百多首短诗，分为三辑：“亲爱... ', '海桑', '790', '诗歌', 7.8);
INSERT INTO `myauth_book_info` VALUES (456, '春天 得以安葬', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28375920.jpg', '他是废墟中的孤儿，精神上的无国籍者，他以渺远的宇宙为乡，是命定的诗人，哭泣的萨满，是带有鬼气的诗歌菩萨。诺贝尔文学奖多年热门人选、韩国国宝级诗人高银... ', '[韩]高银 , 金丹实', '688', '诗歌', 8.1);
INSERT INTO `myauth_book_info` VALUES (457, '唐诗鉴赏辞典', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1015106.jpg', '《唐诗鉴赏辞典》旨在介绍唐诗之精华。它搜集了一百九十多位诗人的一千余篇作品，出自大家、名家之手，流传万口的名篇，固然都在网罗之列；同时，也选采了许多不见录于... ', '萧涤非、等', '4094', '诗歌', 9.3);
INSERT INTO `myauth_book_info` VALUES (458, '诗的八堂课', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29350555.jpg', '诗人写诗都写些什么？是怎样写出来？又如何去读？本书以系列讲座的形式，征引古今中外的诗作与诗论，就博弈、滋味、声文、肌理、玄思、情色、乡愁、死亡等话题，来展开... ', '江弱水', '1692', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (459, '女神', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1161453.jpg', '《中学生课外文学名著必读•女神》是《中学生课外文学名著必读丛书》中的一本，附有由专家撰写的导读文章，深入浅出地介绍了该书的有关情况，引导学生理解作品。版本完... ', '郭沫若', '1751', '诗歌', 6.4);
INSERT INTO `myauth_book_info` VALUES (460, '生活研究', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33469200.jpg', '◎ 3次获诺贝尔文学奖提名，20世纪美国文学的代言人罗伯特·洛威尔，被誉为“我们时代的诗人历史学家”“美国最后一位广受尊崇的公众诗人”◎ 《时代》杂志封面... ', '[美] 罗伯特·洛威尔 , 胡桑', '203', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (461, '兰波作品全集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29110430.jpg', '这是法兰西通灵诗人兰波的作品全集，其中包括他的全部诗歌、散文诗和部分书信、日记，是目前为止，国内翻译出版的最完整的一部兰波作品全集。诗人兰波（Arthur ... ', '[法] 兰波 , 王以培', '1840', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (462, '只余剩米慢慢煮：种田山头火俳句300', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33517292.jpg', '日本自由律俳句的集大成者种田山头火 俳句精选集近三十年来首次出版……………………【编辑推荐】1、影响现代俳句创作、自由律俳句的集大成者种田山头火俳... ', '[日]种田山头火 , 高海阳', '356', '诗歌', 8.2);
INSERT INTO `myauth_book_info` VALUES (463, '穆旦诗全集', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28231817.jpg', '暂无介绍', '穆旦 , 李方 编', '644', '诗歌', 9);
INSERT INTO `myauth_book_info` VALUES (464, '偽詩集', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s26379463.jpg', '《衛生紙+》創作力最為旺盛的新生代詩人蔡仁偉的第一本詩集，分為「日常」「同類」「我把一部份的自己給了你們」「孩子是無辜的」四輯，收詩作203首。犀利的短詩、... ', '蔡仁偉', '374', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (465, '心寂犹似远山火', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s33591867.jpg', '闪耀近代诗坛的一道赤光自我的生与自然浑然一体芥川龙之介的文学引路人被誉为“日本近代歌圣”斋藤茂吉首部中译版短歌精选集……………………………………... ', '[日]斋藤茂吉 , 高海阳', '43', '诗歌', 7.7);
INSERT INTO `myauth_book_info` VALUES (466, '给所有昨日的诗', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29625588.jpg', '《给所有昨日的诗》是诺贝尔文学奖得主、《万物静默如迷》作者辛波斯卡向万物告别的经典之作，收录了生前出版的最后两本诗集《这里》《冒号》的合辑，这两本诗集之前在... ', '[波兰] 维斯拉瓦·辛波斯卡 , 陈黎、张芬龄', '1301', '诗歌', 8.3);
INSERT INTO `myauth_book_info` VALUES (467, '我的焦虑是一束火花', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29860655.jpg', '这是享誉世界诗坛的阿拉伯大诗人阿多尼斯的诗歌短章选集。阿多尼斯擅写长诗，也珍视自己的短章：“短章是闪烁的星星，燃烧的蜡烛；长诗是尽情流溢的光明，是史诗的灯... ', '[叙利亚]阿多尼斯 , 薛庆国', '413', '诗歌', 7.4);
INSERT INTO `myauth_book_info` VALUES (468, '希尼三十年文选', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29642589.jpg', '《希尼三十年文选》收录了诺贝尔文学奖得主谢默斯·希尼已出版文论集《专心思考》《舌头的管辖》《诗歌的纠正》和《写作的地点》中的精华文章，以及此前从未正式出版过... ', '[爱尔兰] 谢默斯·希尼 , 黄灿然', '236', '诗歌', 9.2);
INSERT INTO `myauth_book_info` VALUES (469, '不安之书', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27258840.jpg', '《不安之书》是费尔南多•佩索阿的代表作之一，也是他在华语市场上失落已久的经典之作。它是曾经长期散佚的作品，多为“仿日记”片断体，由众多研究专家搜集整理而成。... ', '费尔南多·佩索阿 , 刘勇军', '2811', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (470, '巴黎的忧郁', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3787965.jpg', '本书收录《巴黎的忧郁》、《人造天堂》、《私人日记》三部作品，是波德莱尔的散文诗代表作。波德莱尔是第一个把散文诗当作一种独立的形式并使之趋于完善的人，提出了... ', '[法]夏尔·波德莱尔 , 郭宏安', '2307', '诗歌', 8.7);
INSERT INTO `myauth_book_info` VALUES (471, '水的空白', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s26686455.jpg', '索雷斯库的诗机智、巧妙，语言亲切自然，就好像在面对面聊天，却充满了哲理，他说\"诗歌的功能首先在于认识。诗人必须与哲学联姻。诗人倘若不是思想家，那就一无是处。... ', '[罗]马林·索雷斯库 , 高兴', '978', '诗歌', 8.5);
INSERT INTO `myauth_book_info` VALUES (472, '我的不朽已然足够', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33557944.jpg', '本书由塔可夫斯基之子精心编选，是20世纪zui伟大的导演之一 “电影界的贝多芬”——塔可夫斯基图文集一生只拍了七部电影，但每一部都让他名留影史；他的作品被... ', '[俄罗斯] 安德烈·塔可夫斯基 , 仝欣', '447', '诗歌', 7.5);
INSERT INTO `myauth_book_info` VALUES (473, '罂粟与记忆', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29533892.jpg', '这本诗集收有策兰1944年至1952年间写的作品，其中有极具影响的《死亡赋格》，那种神奇的抒情基调，有着法国诗歌的光辉、巴尔干半岛的魅力以及忧郁的转调。其诗... ', '[德] 保罗·策兰（Paul Celan） , 孟明', '576', '诗歌', 9.2);
INSERT INTO `myauth_book_info` VALUES (474, '春天与阿修罗', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28355876.jpg', '《春天与阿修罗》是宫泽贤治的一部诗集。作为曾经的诗坛“异类”，宫泽贤治至今仍是昭和诗人中独特的，也是日本影响力大的诗人之一，被选为日本千年来伟大的作家第四位... ', '[日]宫泽贤治 , 吴菲 , 雅众文化', '902', '诗歌', 8);
INSERT INTO `myauth_book_info` VALUES (475, '北岛诗歌集', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1909326.jpg', '卑鄙是卑鄙者的通行证，高尚是高尚者的墓志铭。动荡不安的世界里，诗人的喊声永远是最响亮的，他们的眼睛如锐利的手术刀剥去了世俗的外衣，直入世间万物的本质。 ', '北岛', '6638', '诗歌', 8.6);
INSERT INTO `myauth_book_info` VALUES (476, '爱的24则运算', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33542070.jpg', '◆ 曾经做我最爱的人／你是否觉得荣耀光彩这是一场无论如何都会结束的爱情你是那种无论如何都应该跟你爱一场的人◆ 脸书、ins用户疯狂手抄、晒照的“年度之... ', '林婉瑜', '200', '诗歌', 7);
INSERT INTO `myauth_book_info` VALUES (477, '撒哈拉的故事', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1066570.jpg', '三毛作品中最脍炙人口的《撒哈拉的故事》，由12篇精彩动人的散文结合而成，其中《沙漠中的饭店》，是三毛适应荒凉单调的沙漠生活后，重新拾笔的第一篇文字，自此之后... ', '三毛', '74324', '散文', 9.2);
INSERT INTO `myauth_book_info` VALUES (478, '我们仨', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1015872.jpg', '《我们仨》是钱钟书夫人杨绛撰写的家庭生活回忆录。1998年，钱钟书逝世，而他和杨绛唯一的女儿钱瑗已于此前（1997年）先他们而去。在人生的伴侣离去四年后，杨... ', '杨绛', '235408', '散文', 8.7);
INSERT INTO `myauth_book_info` VALUES (479, '朝花夕拾', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2875823.jpg', '《小引》《狗·猫·鼠》《阿长与山海经》《二十四孝图》《五猖会》《无常》《从百草园到三味书屋》《父亲的病》《琐记》《藤野先生》《范爱农》... ', '鲁迅', '83115', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (480, '目送', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s3984108.jpg', '目送共由七十四篇散文组成，是为一本极具亲情、感人至深的文集。由父亲的逝世、母亲的苍老、儿子的离开、朋友的牵挂、兄弟的携手共行，写出失败和脆弱、失落和放手，写... ', '龙应台', '183067', '散文', 8.6);
INSERT INTO `myauth_book_info` VALUES (481, '撒哈拉的故事', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3563113.jpg', '三毛作品中最膾炙人口的《撒哈拉的故事》﹐由１２篇精采動人的散文結合而成﹐其中＜沙漠中的飯店＞﹐是三毛適應荒涼單調的沙漠生活後﹐重新拾筆的第一篇文字﹐... ', '三毛', '185071', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (482, '我与地坛', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1151479.jpg', '收有“午餐半小时”、“我的遥远的清平湾”、“命若琴弦”、“第一人称”、“两个故事”等15篇史铁生的代表作。 ', '史铁生', '57378', '散文', 9.1);
INSERT INTO `myauth_book_info` VALUES (483, '浮生六记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2280094.jpg', '这是一部自传体文学的作品，原书六卷，已逸其二，现仅存四卷（有所谓“足本”者，后二记系伪作。书中记叙了作者夫妇间平凡的家居生活，坎坷际遇，和各地浪游闻见。文辞... ', '（清）沈复', '43503', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (484, '皮囊', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27943411.jpg', '一部有着小说阅读质感的散文集，也是一本“认心又认人”的书。作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个... ', '蔡崇达', '84445', '散文', 7.6);
INSERT INTO `myauth_book_info` VALUES (485, '沉默的大多数', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1447349.jpg', '这本杂文随笔集包括思想文化方面的文章，涉及知识分子的处境及思考，社会道德伦理，文化论争，国学与新儒家，民族主义等问题；包括从日常生活中发掘出来的各种真知灼见... ', '王小波', '98276', '散文', 9.1);
INSERT INTO `myauth_book_info` VALUES (486, '人间草木', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1201610.jpg', '《人间草木》(汪曾祺著)是汪曾祺优秀的散文集。当代文坛上,能同时在小说和散文两块田地里经营,且自成一家的并不多,汪曾祺先生算是其中的一个。汪曾祺先生是公认的... ', '汪曾祺', '14852', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (487, '梦里花落知多少', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2393243.jpg', '《梦里花落知多少》记录了荷西过世后三毛的生活，共23篇。内容均为台湾皇冠出版社81年至88年的初版。荷西的死对三毛又是一场劫难，因此由《背影》到这本书，在... ', '三毛', '74990', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (488, '城南旧事', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2654869.jpg', '多少年来，《城南旧事》感动了一代又一代的读者，除了再版无数次的小说版外，1985年，本书在中国大陆搬上银幕，电影“城南旧事”获得“中国电影金鸡奖”、第二届“... ', '林海音 文、关维兴 图', '97467', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (489, '孩子你慢慢来', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4124434.jpg', '作为华人世界最有影响的一支笔，龙应台的文章有万丈豪气，然而《孩子你慢慢来》却令人惊叹，她的文字也可以有款款深情。这本书里的龙应台是一个母亲，作为母亲的龙应台... ', '龙应台', '61259', '散文', 8.7);
INSERT INTO `myauth_book_info` VALUES (490, '爱你就像爱生命', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4661043.jpg', '王小波书信均选自朝华出版社2004年4月第一版《爱你就像爱生命》，此书系王小波生前从未发表过的与李银河的“两地书”，也是迄今他们夫妇最完整和独立的一本书信集... ', '王小波、李银河', '83083', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (491, '瓦尔登湖', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1999119.jpg', '这本书的思想是崇尚简朴生活，热爱大自然的风光，内容丰厚，意义深远，语言生动，意境深邃，就像是个智慧的老人，闪现哲理灵光，又有高山流水那样的境界。书中记录了... ', '[美] 梭罗 , 徐迟', '51170', '散文', 8.4);
INSERT INTO `myauth_book_info` VALUES (492, '亲爱的安德烈', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s3993878.jpg', '安德烈十四岁的时候，龙应台离开欧洲，返回台湾，就任台北市首任文化局长。等她卸任回到儿子身边，安德烈已是一个一百八十四公分高的十八岁的小伙子，坐在桌子另一边，... ', '龙应台、[德] 安德烈', '101313', '散文', 8.6);
INSERT INTO `myauth_book_info` VALUES (493, '雨季不再来', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2563279.jpg', '《雨季不再来》以三毛的生命历程为主题，记录了三毛17岁到22岁的成长过程，真实呈现出三毛少女时代的成长感受，辍学、自闭、叛逆，游学西班牙、德国、美国后，渐渐... ', '三毛', '39608', '散文', 8.7);
INSERT INTO `myauth_book_info` VALUES (494, '哭泣的骆驼', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1020454.jpg', '在《哭泣的骆驼》中，三毛依然恋恋着墨沙漠生活周遭的人与事，《收魂记》、《搭车客》、《逍遥七岛游》、《一个陌生人的死》、《大胡子与我》等篇，情趣盎然；《沙巴军... ', '三毛', '44101', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (495, '冬牧场', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s8958901.jpg', '文坛清新之风，阿勒泰的精灵李娟首部长篇纪实散文力作四个月、零距离、全程记述哈萨克民族冬牧场的点点滴滴！春天接羔，夏天催膘，秋天配种，冬天孕育。羊的一生... ', '李娟', '17387', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (496, '野草', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2364689.jpg', '本书所收散文诗23篇〔包括一首打油诗和一出诗剧〕，最初都曾陆续发表于1924年12月至1926年1月的《语丝》周刊上，《题辞》最初也曾发表于1927年7月2... ', '鲁迅', '11309', '散文', 9.3);
INSERT INTO `myauth_book_info` VALUES (497, '文化苦旅', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27226968.jpg', '《文化苦旅》一书于1992年首次出版，是余秋雨先生1980年代在海内外讲学和考察途中写下的作品，是他的第一部文化散文集。全书主要包括两部分，一部分为历史、文... ', '余秋雨', '17372', '散文', 8.1);
INSERT INTO `myauth_book_info` VALUES (498, '这些人，那些事', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6828981.jpg', '吴念真累积多年、珍藏心底的体会与感动。他写的每个故事，都蕴藏了我们无法预知的生命能量与心灵启发。跟他一起回望人生种种，您将学会包容、豁达与感恩……本书... ', '吴念真', '55652', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (499, '文化苦旅', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2166670.jpg', '《文化苦旅》是余秋雨的第一部散文合集，所收作品主要包括两部分，一部分是历史、文化散文，散点论述，探寻文化；另一部分是回忆散文。 ', '余秋雨', '77281', '散文', 7.7);
INSERT INTO `myauth_book_info` VALUES (500, '撒哈拉的故事', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6780941.jpg', '★三毛——华文世界里的传奇女子，她的足迹遍及世界各地★此篇是三毛最受欢迎的作品，倾倒了全世界的华文读者★封面由台湾著名设计师聂永真倾情设计★全方位、多... ', '三毛', '49847', '散文', 9.3);
INSERT INTO `myauth_book_info` VALUES (501, '阿勒泰的角落', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6185540.jpg', '《阿勒泰的角落》是关于新疆的最美丽文字，这是现代版《呼兰河传》。由作者1998-2003年之间陆续完成并在《文汇报》、《南方周末》等发表的短篇散文集结成册。... ', '李娟', '11277', '散文', 9.1);
INSERT INTO `myauth_book_info` VALUES (502, '我的阿勒泰', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s6180859.jpg', '本书是作者十年来散文创作的合集。分为阿勒泰文字、阿勒泰角落和九篇雪三辑。这是一部描写疆北阿勒泰地区生活和风情的原生态散文集。充满生机活泼、新鲜动人的元素。记... ', '李娟', '17537', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (503, '万水千山走遍', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1099483.jpg', '大地啊，我来到你岸上时原是一个陌生人，住在你房子里时原是一个旅客，而今我离开你的门时却是一个朋友了。 当飞机降落在墨西哥首都的机场时，我的体力已经透支得几乎... ', '三毛', '33908', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (504, '当我谈跑步时我谈些什么', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3507580.jpg', '他以文字名满全球。他的“蓝调”令万千人神迷忧伤。文字是他的符号，“跑者蓝调”何尝不是？不再是浮华迷茫，不再是旖旎感伤，不再羚羊挂角无迹可寻——写了几十... ', '[日] 村上春树 , 施小炜', '77708', '散文', 8.2);
INSERT INTO `myauth_book_info` VALUES (505, '遥远的向日葵地', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29878650.jpg', '此书为李娟近两年开始写作并发表在《文汇报》笔会的专栏——“遥远的向日葵地”的最新文字结集。“向日葵地”在阿勒泰戈壁草原的乌伦古河南岸，是李娟母亲多年前承包... ', '李娟', '7072', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (506, '一个人的村庄', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s9018034.jpg', '《一个人的村庄》讲述了刘亮程是真正的作家，也是真正的农民，是真正的农民作家。作为农民，写作真正是他业余的事情；而作为作家，他却无时不在创作，即使在他扛着一把... ', '刘亮程', '11495', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (507, '温柔的夜', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2391798.jpg', '《温柔的夜》记录了三毛在加纳利群岛的生活，共十四篇。 ', '三毛', '14943', '散文', 9.1);
INSERT INTO `myauth_book_info` VALUES (508, '我与地坛', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4594868.jpg', '《我与地坛》收入《我与地坛》、《记忆与印象》等以记事为主的散文，配少量图片。《我与地坛》由中国当代著名作家史铁生著。是史铁生文学作品中，充满哲思又极为人性化... ', '史铁生', '18441', '散文', 9.2);
INSERT INTO `myauth_book_info` VALUES (509, '受戒', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3628082.jpg', '暂无介绍', '汪曾祺', '12028', '散文', 9.3);
INSERT INTO `myauth_book_info` VALUES (510, '呼兰河传', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1167060.jpg', '暂无介绍', '萧红', '53299', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (511, '四个春天', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29957035.jpg', '《四个春天》是陆庆屹首部文字作品，文字质朴动人，摄影温暖治愈。24篇优美散文，展现了一对相濡以沫半个多世纪、多才多艺、幽默达观的老夫妇；塑造了众多性格鲜明、... ', '陆庆屹', '5961', '散文', 8.4);
INSERT INTO `myauth_book_info` VALUES (512, '素履之往', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1963176.jpg', '总觉得诗意和哲理之类，是零碎的、断续的、明灭的。多有两万七千行的诗剧，峰峦重叠的逻辑著作，哥德、黑格尔写完了也不言累，予一念及此已累得茫无头绪。 蒙田勿事体... ', '木心', '10353', '散文', 8.7);
INSERT INTO `myauth_book_info` VALUES (513, '她们', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33648496.jpg', '★阎连科全新长篇散文，一部深刻书写女性命运的圆梦之作！阎连科等待十年之后的圆梦之作，这一次他终于可以提起笔，将文字投向世代更迭中女人的命运。他说：“这部散... ', '阎连科', '206', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (514, '慢煮生活', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29499906.jpg', '【内容简介】怀念汪曾祺最好的方式，就是阅读他的文字。本书为汪曾祺逝世20周年精装纪念散文集。完整收录《五味》《昆明的雨》《人间草木》《星斗其文，赤子其... ', '汪曾祺', '2393', '散文', 9.2);
INSERT INTO `myauth_book_info` VALUES (515, '阿勒泰的角落', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s26935643.jpg', '若无意指认那在伤感中徘徊、欲望中沉浮的生命就是我们本来的生命，那么，总还有别样干净明亮的生命，等着人去认领。这个时代，如果还有一个地方有传说，就是阿勒泰；... ', '李娟', '6187', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (516, '巴黎记', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33560142.jpg', '到巴黎去，这是一种世界性的欲望。《巴黎记》是诗人于坚对巴黎的朝圣之作。1994年，年届不惑的诗人第一次飞往巴黎，深夜抵达，他一直以为巴黎是一座璀璨的未来之... ', '于坚', '209', '散文', 8.5);
INSERT INTO `myauth_book_info` VALUES (517, '稻草人手记', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s3667048.jpg', '本卷收录散文16篇，其中大部分文章记述了三毛在加纳利群岛上的生活。《稻草人手记》笔调幽默，点点滴滴尽述生活情趣，一个率性女子不加矫饰的灿然风貌跃然纸上，令... ', '三毛', '14230', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (518, '自在独行', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28753126.jpg', '平凹先生素来喜静，最怕有人来敲他的房门。让他觉得自在的，要么就是行走于西北的大地，要么就是隐居在自己的书房。先生其实也喜欢热闹，只是先生的热闹并不是灯火灿... ', '贾平凹', '10511', '散文', 7.3);
INSERT INTO `myauth_book_info` VALUES (519, '生活，是很好玩的', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29113352.jpg', '内容简介：本书是备受推崇的“生活家”汪曾祺的散文精选集。生活家，就是热爱生活、多才多艺、有趣之人。汪曾祺就是是一位生活家。对生活心存热爱，从不消沉沮... ', '汪曾祺', '4160', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (520, '金蔷薇', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4477294.jpg', '《金蔷薇》是一部总结作者本人创作经验、研究俄罗斯和世界上许多文学大师的创作活动、探讨文学创作的过程、方法和目的的美文集。文学大师用他别具一格的文笔气势磅礴而... ', '[俄]帕乌斯托夫斯基 , 戴骢', '2745', '散文', 9.1);
INSERT INTO `myauth_book_info` VALUES (521, '历史深处的忧虑', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1768916.jpg', '美国的面积和中国差不多。和大多数留学生及新移民一样，当我们一脚踏上这块广袤的陌生土地时，最初落脚点的选择是十分偶然的。我们落在了一个普通的地方，居住的环境平... ', '林达', '36096', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (522, '逝物录', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33596460.jpg', '《岛屿书》作者最新力作，2019“德国最美图书”一本悖论之书，关于空白的幻想，碎片的完整，逝者的在场，和叙事的不朽真正逝去的，是被遗忘的。祈盼逝物复活，... ', '[德] 尤迪特·沙朗斯基 , 陈早', '181', '散文', 8);
INSERT INTO `myauth_book_info` VALUES (523, '古文观止', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1325863.jpg', '《古文观止》是清康熙年间吴乘权、吴大职编选的一部古文读本，凡十二卷，收录自先秦至明末的散文二百二十二篇，每篇都有注释和评论。据《左传》襄公二十九年记载，吴公... ', '吴楚材、吴调侯', '13407', '散文', 9.1);
INSERT INTO `myauth_book_info` VALUES (524, '傅雷家书', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1039075.jpg', '辑印在这本集子里的，不是普通的家书。傅雷在给傅聪的信里这样说：“长篇累牍的给你写信，不是空唠叨，不是莫名其妙的gossip，而是有好几种的作用的。第一，我的... ', '傅雷', '10119', '散文', 8.5);
INSERT INTO `myauth_book_info` VALUES (525, '马可瓦尔多', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33513675.jpg', '一年四季轮回 一季一个故事在沟渠里仰望星星 一个小工眼中城市的奇趣与窃喜马可瓦尔多是位城市小工。在充满着水泥和沥青的城市森林里，他却试图寻找大自然。春天... ', '[意] 伊塔洛·卡尔维诺 , 马小漠', '822', '散文', 9.2);
INSERT INTO `myauth_book_info` VALUES (526, '人间草木', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29455185.jpg', ' 《人间草木》是汪曾祺先生的经典小品文集，他用极简的笔，极淡的墨写出了草木山川、花鸟虫鱼的人味，写出了乡情民俗、凡人小事温润的乡土味；以一颗从容豁达的心写出... ', '汪曾祺', '1649', '散文', 8.7);
INSERT INTO `myauth_book_info` VALUES (527, '一个知识女性的思考系列', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33630381.jpg', '编辑推荐：★蕾切尔·卡斯克历时四年完成的小说三部曲，每一本都受到全球各大权威媒体的重磅推荐！《边界》被评为《纽约时报》2015年度十大图书，《卫报》21... ', '[英]蕾切尔·卡斯克', '153', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (528, '人生最美是清欢', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28512879.jpg', '《人生最美是清欢》（林清玄经典散文集，执笔45周年白金纪念版！）在复杂的世界里，做一个简单的人，以清静心看世界，以欢喜心过生活。首次手绘古风配图，精美四色... ', '林清玄', '2213', '散文', 7.9);
INSERT INTO `myauth_book_info` VALUES (529, '人生若只如初见', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1787057.jpg', '这是一部不甘于淹没在浩瀚书海中的作品。她似在谈诗词，又似在谈风月。她不拘泥于对古典诗词字面的理解，也非传统意义上的简单赏析，而是一种风格独特、感情丰富的散文... ', '安意如', '47511', '散文', 7.2);
INSERT INTO `myauth_book_info` VALUES (530, '走到人生边上', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3552626.jpg', '人生据说是一部大书。“生、老、病、死”是人生的规律，谁也逃不过。《写在人生边上》是钱钟书先生的第一个集子，由杨绛女士编定。本书则是这个集子的注释，回答了神和... ', '杨绛', '14789', '散文', 8);
INSERT INTO `myauth_book_info` VALUES (531, '我与父辈', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29966115.jpg', '◆荒诞现实主义大师剖析自我的真情之作：在我所有作品中，这是一颗钻石，和书的厚重相比，奖项和盛誉都太轻了。◆独家收录阎连科真挚长文《被我走丢了的家》，理解父... ', '阎连科', '1849', '散文', 8.4);
INSERT INTO `myauth_book_info` VALUES (532, '树犹如此', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s6986597.jpg', '《树犹如此》是白先勇的散文自选集，主要收录他回忆个人经历、亲友交往的文章。其中纪念亡友的《树犹如此》将至深痛楚沉淀六年，被称为“以血泪、以人间最纯真的感情去... ', '白先勇', '5603', '散文', 8.6);
INSERT INTO `myauth_book_info` VALUES (533, '你的孤独，虽败犹荣', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27310359.jpg', '孤独之前是迷茫，孤独之后是成长“很长一段日子里，我靠写东西度过了太多的小无聊，伪伤感，假满足与真茫然 。我在意细节，算敏感。但知道体谅，算善良。我说喜欢便... ', '刘同', '19929', '散文', 6.6);
INSERT INTO `myauth_book_info` VALUES (534, '东京百景', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33535643.jpg', '史上最畅销的芥川奖获奖者又吉直树的随笔集——写给东京的一封情书，但永远得不到它的回眸豆瓣9.3分日剧《火花》的创作原点，又吉直树的另类个人传记以东京为背... ', '[日] 又吉直树 , 毛丹青', '564', '散文', 6.8);
INSERT INTO `myauth_book_info` VALUES (535, '湘行散记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1065065.jpg', '这些信件及信中所附插图，作者生前未公开发表。1991年由沈虎雏整理、编辑成《湘行书简》，其中“引子”三函为张兆和致沈从文，“尾声”一函为沈从文致沈云六，余为... ', '沈从文、黄永玉（图）、卓雅（图）', '4535', '散文', 8.7);
INSERT INTO `myauth_book_info` VALUES (536, '五味', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1728272.jpg', '汪曾祺既不是达官贵人，又不是商贾巨富，因此所食、所喜的多是地方风味和民间小食，他谈萝卜、豆腐，讲韭菜花、手把肉，皆是娓娓道来，从容闲适；读的人则津津有味，满... ', '汪曾祺', '3763', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (537, '送你一颗子弹', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4243447.jpg', '这本书里记录的是作者2005—2009年左右(尤其是2006—2007年)生活里的点点滴滴。在这本书里，被“审视”的东西杂七杂八，有街上的疯老头，有同宿舍的... ', '刘瑜', '125950', '散文', 8.6);
INSERT INTO `myauth_book_info` VALUES (538, '给青年的十二封信', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1919027.jpg', '本书是朱光潜先生旅欧期间写给国内青年朋友的十二封信，信中所说多为青年们所关心和应该关心的事项，如读书、修身、作文、社会运动、爱恋、哲理，凡此种种。自朱光潜先... ', '朱光潜', '7117', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (539, '东京一年', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29497641.jpg', '“二O一六年，我独自一人在东京生活了一年，东京也拯救了我。”受日本国际交流基金会之邀，蒋方舟在东京独居了一年。她越来越喜欢写漫长的日记，觉得孤独地生活一辈子... ', '蒋方舟', '17031', '散文', 7);
INSERT INTO `myauth_book_info` VALUES (540, '爱你就像爱生命', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29520509.jpg', '★王小波唯一一本爱情专著。★征集网友十个最想问的关于爱情与人生的问题，李银河给出睿智答复！★王小波全部作品的独家授权，最全面、最值得收藏的版本！★李银... ', '王小波 , 新经典文化', '4789', '散文', 8.5);
INSERT INTO `myauth_book_info` VALUES (541, '行者无疆', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1232212.jpg', '2000年8月到2001年1月的这6个月，余秋雨走过了欧洲26个国家96个城市。《行者无疆》记录了作者在旅程中的全部感受，为一部考察西方文明的随笔集。余秋... ', '余秋雨', '26246', '散文', 7.7);
INSERT INTO `myauth_book_info` VALUES (542, '不管狗和茶炊怎么闹腾', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33579564.jpg', '⭐一本点亮平庸日常的生活之书⭐讲述平淡中的光怪陆离和嘈杂中的诗意⭐不管狗和茶炊怎么闹腾，生活就在那里⭐努力地将日子过下去，就是我们的坎坷征途与星辰大海... ', '王这么', '111', '散文', 8.3);
INSERT INTO `myauth_book_info` VALUES (543, '野火集', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1469589.jpg', '龙应台常常针对一种社会现象，一类具体事物，甚至于一个人、一句话、一件事，给予无情的透视和直接的批评，马上让人心有戚戚焉。这些事，就发生在周围，看得见，摸得着... ', '龙应台', '29759', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (544, '病隙碎笔', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1513559.jpg', '史铁生用生动而通俗甚至是优美的语言追寻和探索了关于我们人生的已知和未知的道理：人生、命运、爱情、金钱、道义、信仰，健康的心态、成功的途径和价值、孩子的教育、... ', '史铁生', '9385', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (545, '雅舍谈吃', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1403565.jpg', '梁实秋先生是公认的华语世界中的一代文化宗师之一。他的许多文学作品都流播海内外，被人们赞为经典。其中“雅舍小品”更是他的代表作，先后印行了三百多版。《雅舍谈吃... ', '梁实秋', '7436', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (546, '我执', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s3705488.jpg', '本书为梁文道先生所撰写的散文随笔集，是以香港《成报》文采版专栏“秘学笔记”的文字为主，谈及爱情婚姻、日常生活、疾病经历、信仰感悟、城市文化、文学艺术、历史记... ', '梁文道', '29998', '散文', 8);
INSERT INTO `myauth_book_info` VALUES (547, '我想做一个能在你的葬礼上描述你一生的人', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29593012.jpg', '我想做一个能在你的葬礼上描述你一生的人，没有壮阔的海誓山盟，也没有似水柔情的情话，只是这样一句凝重但又温馨动人的描述，却足以打动人心。看到这句话，有一种感觉... ', '贾平凹、史铁生、沈从文', '1203', '散文', 8.4);
INSERT INTO `myauth_book_info` VALUES (548, '千年一叹', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s24038465.jpg', '余秋雨作为特邀嘉宾，参与了香港凤凰卫视组织的大型跨国采访报道活动——“千禧之旅”，过程中所写的日记及散文在国内外多家报纸同步发表后引起较大反响。《千年一叹》... ', '余秋雨', '23710', '散文', 7.6);
INSERT INTO `myauth_book_info` VALUES (549, '乡关何处', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33552640.jpg', '《乡关何处》是野夫的经典之作，以母亲、外婆、大伯、瞎子哥等亲朋好友为对象，将他们微小而传奇的人生，以一种质朴的深情娓娓道来。母亲历尽人生苦难68岁失踪于长... ', '野夫', '617', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (550, '天长地久', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29825852.jpg', '美君来自浙江。她二十岁爱上的男子，来自湖南。他们走过的路，是万里江山，满目烟尘；怀着“温情与敬意”，我感恩他们的江山、他们的烟尘，给了我天大地大、气象... ', '龙应台', '8018', '散文', 8.6);
INSERT INTO `myauth_book_info` VALUES (551, 'DEPART', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s32291078.jpg', '该本写真集拍摄于澳大利亚悉尼，在新州旅游局支持下，顺利于悉尼歌剧院、海港大桥、皇家植物园、帕丁顿水库、史蒂芬港、La Perouse港湾、悉尼情人港等11地... ', '朱一龙', '5690', '散文', 9.5);
INSERT INTO `myauth_book_info` VALUES (552, '梦里花落知多少', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6876752.jpg', '书中先是记录了三毛与荷西在撒哈拉沙漠结婚，白手成家的生活，而此时她的文学创作生涯也随之开启；后来移居加纳利群岛后，三毛的生活渐趋安定，她的创作也达到了很高的... ', '三毛', '10077', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (553, '旅行的艺术', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1888079.jpg', '这部书就像一场完美的旅程，教我们如何好奇、思考和观察，让我们重新对生命充满热情。旅行是什么，德波顿并不想急于提供答案，旅行为什么，德波顿似乎也不热心去考求。... ', '[英] 阿兰·德波顿 , 南治国、彭俊豪、何世原', '18308', '散文', 8.3);
INSERT INTO `myauth_book_info` VALUES (554, '生活明朗 万物可爱', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33501963.jpg', '这本散文集，全面收录了《清塘荷韵》《我的童年》《怀念母亲》等三十七篇季式散文精品，是季羡林结合自己九十余年的人生阅历，写下的对于生命和世事的感悟之作。季羡... ', '季羡林', '106', '散文', 7.4);
INSERT INTO `myauth_book_info` VALUES (555, '给青年的十二封信', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29669033.jpg', '*教育部新编初中语文教材八年级（下）指定阅读*教育家朱光潜先生赠予青年朋友的人生智慧之书*除原有两篇附录文章外，另增补八篇精彩文章，谈修养，谈文学，谈课... ', '朱光潜', '2006', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (556, '生活是很好玩的', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29478106.jpg', '好玩，是一种生活的体验，是一种发现和欣喜，它源于对生活无比的爱。汪曾祺说，人活着，就得有点兴致。写字、画画、做饭，明明是最普通的日常，他却深得其乐。他经... ', '汪曾祺', '3056', '散文', 7.9);
INSERT INTO `myauth_book_info` VALUES (557, '意大利的冬天', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33601116.jpg', '本书文章精选自法国19世纪著名历史学家儒勒·米什莱的12部代表著作——《鸟》《虫》《海》《山》《意大利的冬天》《罗马史》《法国史》《人民》《我们的儿子》《女... ', '[法国] 儒勒·米什莱 , 徐知免', '20', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (558, '醒来觉得甚是爱你', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29286968.jpg', '《醒来觉得甚是爱你：朱生豪情书集》是中国著名诗人、翻译家朱生豪的情书精选集。朱生豪自1933年与宋清如相遇，至1944年英年早逝，10年之中，鸿雁不绝，留下... ', '朱生豪', '4122', '散文', 8.3);
INSERT INTO `myauth_book_info` VALUES (559, '稻草人手记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s6565844.jpg', '《稻草人手记》记录的是三毛定居加纳利岛后生活中的点点滴滴，语言朴实、简单，其中的情趣与无奈，朴实而谐趣，令人笑叹。也许，正是这样简简单单的生活，才给了三毛无... ', '三毛', '5917', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (560, '阴翳礼赞', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4386238.jpg', '《阴翳礼赞》是日本文豪谷崎润一郎的随笔集。收录《阴翳礼赞》、《懒惰之说》、《恋爱及色情》、《厌客》、《旅行杂话》、《厕所种种》六篇随笔，是谷崎润一郎的随笔代... ', '[日] 谷崎润一郎 , 陈德文', '7029', '散文', 8.4);
INSERT INTO `myauth_book_info` VALUES (561, '人间食粮', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2765077.jpg', '《人间食粮》被称为“不安的一代人的《圣经》”，它是作者青春激情的宣泄，是追求快乐的宣言书；它充斥着一种原始的、本能的冲动，记录了本能追求快乐时那种冲动的原生... ', '[法]安德烈·纪德 , 李玉民', '2521', '散文', 8.3);
INSERT INTO `myauth_book_info` VALUES (562, '上学记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1950424.jpg', '何兆武教授的这部口述浓缩了20世纪中国知识分子的心灵史。它叙述的尽管只是1920年代-1940年代末不足30年间他学生时期的陈年往事，却蕴含着一个饱经沧桑的... ', '何兆武 口述、文靖 撰写', '12079', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (563, '瓦尔登湖', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3600251.jpg', '《瓦尔登湖》是一本超凡入圣的好书，严重的污染使人们丧失了田园的宁静，所以梭罗的著作便被整个世界阅读和怀念了。《瓦尔登湖》语语惊人，字字闪光，沁人心肺，动我衷... ', '[美] 梭罗 , 王家湘', '9547', '散文', 8.5);
INSERT INTO `myauth_book_info` VALUES (564, '平如美棠', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29749429.jpg', '这是饶平如一生的故事。他不是一个想打仗的人，但他还是义无反顾去打仗了。又因为和美棠在一起，他最终厌倦了战争，想要回家。六十年的相守历尽坎坷，命运让他们长... ', '饶平如', '1035', '散文', 9.3);
INSERT INTO `myauth_book_info` VALUES (565, '流动的盛宴', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3624962.jpg', '1920年代上半叶，海明威以驻欧记者身份旅居巴黎，《流动的盛宴》这本书，记录的正是作者当日的这段生活。不过这本书的写作却是在将近四十年以后，换句话说，盛宴的... ', '[美] 海明威 , 汤永宽', '6540', '散文', 8.2);
INSERT INTO `myauth_book_info` VALUES (566, '普罗旺斯的一年', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4739017.jpg', '* 一杯美酒，一把舒服的椅子，聆听质朴时光的潺潺流淌。* 此地放眼是葡萄树和山峦，生活朴素平淡。在这里，买橄榄油、采樱桃、找松露，都是大事。寻找美食，是生... ', '[英]彼得•梅尔 , 王春', '3360', '散文', 8.6);
INSERT INTO `myauth_book_info` VALUES (567, '撒哈拉的故事', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29401350.jpg', '★搁笔十年之后首次以“三毛”笔名面向读者之作★流浪文学经典 畅销三十余年热度不减★与荷西传奇爱情的见证 唤起万千人心中的撒哈拉之梦在三毛的内心深处，撒... ', '三毛', '5857', '散文', 9.2);
INSERT INTO `myauth_book_info` VALUES (568, '大萝卜和难挑的鳄梨', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27653606.jpg', '《大萝卜和难挑的鳄梨》收录村上春树的52篇风趣随笔，配以画家大桥步的52幅美丽插画，村上以幽默的语言写下蔬菜的心情、关于大萝卜的怪谈、挑选好吃鳄梨的超能力、... ', '(日)村上春树 , 施小炜', '11924', '散文', 8.1);
INSERT INTO `myauth_book_info` VALUES (569, '江河旋律', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33601826.jpg', '“一代中国人的眼睛”、华语散文大师王鼎钧的最新自选集，精选“鼎公”平生作品三大类（杂文、美文、变体）代表作。九十余载诸般阅历，汇注通达文章，惟以性灵之言，交... ', '', '37', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (570, '一只特立独行的猪', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1670642.jpg', '这本书里除了文化杂文，还有给其他书写的序言与跋语。这些序言与跋语也表明了我的一些态度。除此之外，还有一些轻松的随笔。不管什么书，我都不希望它太严肃，这一本也... ', '王小波', '66846', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (571, '悲伤与理智', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28054565.jpg', '在这部题材丰富、视界浩淼的散文集中，约瑟夫•布罗茨基开篇便用深沉内省的目光审视了自己在苏俄的早年经历以及随后去往美国的流亡生涯。接着，作者用惊人的博学探讨了... ', '[美] 约瑟夫·布罗茨基 , 刘文飞', '2618', '散文', 8.7);
INSERT INTO `myauth_book_info` VALUES (572, '城门开', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s5459664.jpg', '生于北京，长于北京的作者，阔别家乡十三年后重回北京，发现他在自己的故乡成了异乡人，仿佛到了一座陌生的城市。于是他便要“重建我的北京”——用他文字召回北京消失... ', '北岛', '15919', '散文', 8.4);
INSERT INTO `myauth_book_info` VALUES (573, '走夜路请放声歌唱', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28265867.jpg', '★当我感到黑暗，便走上前直接推开窗子，投入阳光或星光。——————————————————————————————————★“阿勒泰”系列作家李娟最经典... ', '李娟', '2748', '散文', 8);
INSERT INTO `myauth_book_info` VALUES (574, '看不见的城市', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s8972088.jpg', '在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好权... ', '[意大利] 伊塔洛·卡尔维诺 , 张密', '16795', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (575, '游隼', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29526657.jpg', '达夫·库珀奖获奖作品纽约书评图书“经典重现”书系选书赫尔佐格“无赖电影学校”必读书目影响持续半个世纪的经典首次引进中国“猎人必须成为他所追捕的猎物。... ', '[英] J.A.贝克 , 李斯本', '1476', '散文', 9.1);
INSERT INTO `myauth_book_info` VALUES (576, '山居笔记', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1080314.jpg', '《山居笔记》是余秋雨在1992年至1994年间，全身心地用两年多的时间创作成的，共十一篇文章。写作期间，作者辞去了学院的职务，不再上班；同时写作又与考察联在... ', '余秋雨', '14493', '散文', 7.9);
INSERT INTO `myauth_book_info` VALUES (577, '雨季不再来', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6565841.jpg', '当三毛还是二毛的时候，她写下了《雨季不再来》，这些在她17~22岁之间所发表的文字，真实地呈现出从青涩敏感的二毛，蜕变为智慧成熟的三毛的成长的过程。而《雨季... ', '三毛', '8466', '散文', 8.5);
INSERT INTO `myauth_book_info` VALUES (578, '亲爱的安德烈', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s26135683.jpg', '编辑推荐★“龙卷风”增订新版——龙应台新版笔记《在时光里》，写于2013年2月16日旅途中，重新观察，再度“认识”18岁成年后的早已超过1米84的大儿子安... ', '龙应台、安德烈', '7422', '散文', 8.8);
INSERT INTO `myauth_book_info` VALUES (579, '赵桥村', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33307240.jpg', '你不断去想象一块土地应有的样子，久了，那应有的样子就加入了这块土地；你不断面对一块土地沉思，久了，精神中就有了这块土地的气息。顾湘的赵桥村，差不多可以看成现... ', '顾湘', '1494', '散文', 8.1);
INSERT INTO `myauth_book_info` VALUES (580, '活着本来单纯', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29041051.jpg', '丰子恺散文漫画精品集（全新精装收藏本）。女儿丰一吟授权版本，全面收录《渐》《大账簿》《梦痕》《给孩子们》等55篇经典佳作，一本书阅尽丰子恺散文精华。漫画原版... ', '丰子恺', '3185', '散文', 8.7);
INSERT INTO `myauth_book_info` VALUES (581, '朝花夕拾', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27970504.jpg', '曾经在陈丹青先生《鲁迅是谁？》的演讲中听到一个别致的观点，他说“鲁迅的被扭曲，是现代中国一桩超级公案”，对鲁迅以“政治上的正确”给予他的作品褒扬、抬高，不可... ', '鲁迅', '1520', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (582, '我与地坛', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29796287.jpg', '《我与地坛》是史铁生的经典散文集，2010年12月31日，史铁生离开，这本书问世。此后七年，这本书以每年近30万册的数量持续畅销。千千万万读者从《我与地坛》... ', '史铁生', '532', '散文', 9.3);
INSERT INTO `myauth_book_info` VALUES (583, '一生自在', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33597064.jpg', '《一生自在》一书，是一本体现季羡林自在智慧的作品。全书共有五章，分别是：“书卷伴青灯，足以慰平生”——关于读书启蒙的书中自在；“从容坦荡，心装万物”—... ', '季羡林', '352', '散文', 8.3);
INSERT INTO `myauth_book_info` VALUES (584, '被窝是青春的坟墓', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3028662.jpg', '《被窝是青春的坟墓》是七堇年的首部随笔集，全书共分为两部分，惊蛰与清明，寓意成长与写作路途上的不同阶段；收录曾经发表在杂志上的部分中短篇作品，并加入了大部分... ', '七堇年', '37614', '散文', 7.7);
INSERT INTO `myauth_book_info` VALUES (585, '我们仨', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27509853.jpg', '《我们仨》是钱钟书夫人杨绛撰写的家庭生活回忆录。1998年，钱钟书逝世，而他和杨绛唯一的女儿钱瑗已于此前（1997年）先他们而去。在人生的伴侣离去四年后，杨... ', '杨绛', '39431', '散文', 9);
INSERT INTO `myauth_book_info` VALUES (586, '时间的女儿', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29409066.jpg', '八月长安首部散文集。当时我们年纪小，希望自己永远长不大，长大后的我们，又会觉得长大也很好。将来呢？老了以后呢？都会好的。无论是五岁、十五岁，还是二十五... ', '八月长安', '6439', '散文', 7.7);
INSERT INTO `myauth_book_info` VALUES (587, '素履之往', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4538408.jpg', '总觉得诗意和哲理之类，是零碎的、断续的、明灭的。多有两万七千行的诗剧，峰峦重叠的逻辑著作，哥德、黑格尔写完了也不言累，予一念及此已累得茫无头绪。蒙田勿事体系... ', '木心', '4695', '散文', 8.4);
INSERT INTO `myauth_book_info` VALUES (588, '我的精神家园', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1016763.jpg', '一九九七年六月，王小波逝世两个月后，他的杂文自选集《我的精神家园》出版。这是第一版的封面。相比于2002版出版的《我的精神家园》纪念版来说，这一版本没有纪念... ', '王小波', '28576', '散文', 9.1);
INSERT INTO `myauth_book_info` VALUES (589, '培根随笔', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6142783.jpg', '弗兰西斯·培根(1561--1626)是英国文艺复兴时期最伟大的哲学家和文学家，“英国唯物主义和整个现代实验科学的真正鼻祖”。他不仅在文学、哲学方面成就显赫... ', '[英]弗朗西斯·培根 , 蒲隆', '1960', '散文', 8);
INSERT INTO `myauth_book_info` VALUES (590, '哥伦比亚的倒影', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1511007.jpg', '《哥伦比亚的倒影》是木心的第一部简体中文版作品，内中选编《九月初九》、《哥伦比亚的倒影》、《上海赋》等最能表现木心行文风格的散文13篇，并全文刊印1986年... ', '木心', '9510', '散文', 8.4);
INSERT INTO `myauth_book_info` VALUES (591, '带一本书去巴黎', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3186863.jpg', '作者在浓厚的法国历史文化氛围中，用大量的历史细节和场景，丰富了对艺术、文化，对历史、社会，以及对“革命”的理解。 ', '林达', '21684', '散文', 8.5);
INSERT INTO `myauth_book_info` VALUES (592, '岁朝清供', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4158862.jpg', '写风俗、谈文化、忆旧闻、述掌故、寄乡情……品读汪曾祺的散文好像聆听一位见识广博、和善可亲的老者讲古。汪曾祺定价作品具有浓郁的乡土气息，他长于江南，定居京城... ', '汪曾祺', '3974', '散文', 9.2);
INSERT INTO `myauth_book_info` VALUES (593, '我喜欢生命本来的样子', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29417905.jpg', '在茫茫宇宙间，每个人都只有一次生存的机会，都是一个独一无二、不可重复的存在。名声、财产、知识等等是身外之物，人人都可求而得之，但没有人能够代替你感受人生。你... ', '周国平', '2603', '散文', 7.3);
INSERT INTO `myauth_book_info` VALUES (594, '孤独是一个人的清欢', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29949885.jpg', '\\\"每个人的一生都应该读一读林清玄，才会在纷扰的世间看清真实的内心，才真正懂得如何去生活。《孤独是一个人的清欢》是林清玄2018年亲自审定的全新散文集，精... ', '林清玄 ,', '410', '散文', 7.4);
INSERT INTO `myauth_book_info` VALUES (595, '温柔的夜', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27756542.jpg', '此篇承袭《撒哈拉的故事》的风格，形成一种舒缓、沉静的调子，是三毛沙漠故事系列中登峰造极之作。阅遍种种人情冷暖之后，溢于三毛笔端的依然是对大千世界的真挚动人... ', '三毛', '5880', '散文', 8.9);
INSERT INTO `myauth_book_info` VALUES (596, '潦草', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29825949.jpg', '【编辑推荐】1）白岩松、许知远、史航、李静、东东枪、蒋方舟、李诞……联袂诚挚推荐！“凝胶一般的文笔”，难得一见的赤诚，把目睹和亲历的低下说出来，把孤独说... ', '贾行家', '1659', '散文', 8.1);
INSERT INTO `myauth_book_info` VALUES (597, 'Python编程', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28891775.jpg', '本书是一本针对所有层次的Python 读者而作的Python 入门书。全书分两部分：第一部分介绍用Python 编程所必须了解的基本概念，包括matplot... ', '[美] 埃里克·马瑟斯 , 袁国忠', '2973', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (598, '黑客与画家', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4669554.jpg', '本书是硅谷创业之父Paul Graham 的文集，主要介绍黑客即优秀程序员的爱好和动机，讨论黑客成长、黑客对世界的贡献以及编程语言和黑客工作方法等所有对计算... ', '[美] Paul Graham , 阮一峰', '18350', '编程', 8.7);
INSERT INTO `myauth_book_info` VALUES (599, '代码大全（第2版）', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s1495029.jpg', '第2版的《代码大全》是著名IT畅销书作者史蒂夫·迈克康奈尔11年前的经典著作的全新演绎：第2版不是第一版的简单修订增补，而是完全进行了重写；增加了很多与时俱... ', '[美] 史蒂夫·迈克康奈尔 , 金戈、汤凌、陈硕、张菲 译、裘宗燕 审校', '3844', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (600, '编码', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4379914.jpg', '本书讲述的是计算机工作原理。作者用丰富的想象和清晰的笔墨将看似繁杂的理论阐述得通俗易懂，你丝毫不会感到枯燥和生硬。更重要的是，你会因此而获得对计算机工作原理... ', '[美] Charles Petzold , 左飞、薛佟佟', '3224', '编程', 9.2);
INSERT INTO `myauth_book_info` VALUES (601, 'Python编程快速上手', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28895767.jpg', '如今，人们面临的大多数任务都可以通过编写计算机软件来完成。Python是一种解释型、面向对象、动态数据类型的高级程序设计语言。通过Python编程，我们能够... ', 'Albert Sweigart , 王海鹏 , 人民邮电出版社', '717', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (602, '代码整洁之道', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4103991.jpg', '软件质量，不但依赖于架构及项目管理，而且与代码质量紧密相关。这一点，无论是敏捷开发流派还是传统开发流派，都不得不承认。本书提出一种观念：代码质量与其整洁度... ', '[美]Robert C. Martin , 韩磊', '1680', '编程', 8.6);
INSERT INTO `myauth_book_info` VALUES (603, '算法图解', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29358625.jpg', '本书示例丰富，图文并茂，以让人容易理解的方式阐释了算法，旨在帮助程序员在日常项目中更好地发挥算法的能量。书中的前三章将帮助你打下基础，带你学习二分查找、大O... ', '[美] Aditya Bhargava , 袁国忠', '1721', '编程', 8.4);
INSERT INTO `myauth_book_info` VALUES (604, '程序员修炼之道（第2版）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33607450.jpg', '《程序员修炼之道》之所以在全球范围内广泛传播，被一代代开发者奉为圭臬，盖因它可以创造出真正的价值：或编写出更好的软件，或探究出编程的本质，而所有收获均不依赖... ', 'Andrew Hunt、David Thomas , 云风', '95', '编程', 9.5);
INSERT INTO `myauth_book_info` VALUES (605, 'Java编程思想 （第4版）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27243455.jpg', '本书赢得了全球程序员的广泛赞誉，即使是最晦涩的概念，在Bruce Eckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到最高级... ', '[美] Bruce Eckel , 陈昊鹏', '3790', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (606, '程序员修炼之道', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3957204.jpg', '《程序员修炼之道》由一系列的独立的部分组成，涵盖的主题从个人责任、职业发展，直到用于使代码保持灵活、并且易于改编和复用的各种架构技术。利用许多富有娱乐性的奇... ', 'Andrew Hunt、David Thomas , 马维达', '2290', '编程', 8.6);
INSERT INTO `myauth_book_info` VALUES (607, '重构', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4157180.jpg', '重构，一言以蔽之，就是在不改变外部行为的前提下，有条不紊地改善代码。多年前，正是本书原版的出版，使重构终于从编程高手们的小圈子走出，成为众多普通程序员日常开... ', 'Martin Fowler , 熊节', '1854', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (608, '流畅的Python', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29434304.jpg', '【技术大咖推荐】“很荣幸担任这本优秀图书的技术审校。这本书能帮助很多中级Python程序员掌握这门语言，我也从中学到了相当多的知识！”——Alex Mar... ', '[巴西] Luciano Ramalho , 安道、吴珂', '688', '编程', 9.4);
INSERT INTO `myauth_book_info` VALUES (609, '程序员的自我修养', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s25136218.jpg', '这本书主要介绍系统软件的运行机制和原理，涉及在Windows和Linux两个系统平台上，一个应用程序在编译、链接和运行时刻所发生的各种事项，包括：代码指令是... ', '俞甲子、石凡、潘爱民', '2362', '编程', 8.8);
INSERT INTO `myauth_book_info` VALUES (610, 'C Primer Plus（第6版）中文版', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29438897.jpg', '《C Primer Plus（第6版）中文版》详细讲解了C语言的基本概念和编程技巧。《C Primer Plus（第6版）中文版》共17章。第1、2章介绍... ', '普拉达 (Stephen Prata) , 姜佑', '713', '编程', 9.4);
INSERT INTO `myauth_book_info` VALUES (611, '编程珠玑', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4687321.jpg', '本书是计算机科学方面的经典名著。书的内容围绕程序设计人员面对的一系列实际问题展开。作者Jon Bentley 以其独有的洞察力和创造力，引导读者理解这些问题... ', 'Jon Bentley , 黄倩、钱丽艳', '2076', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (612, '算法', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s8938479.jpg', '《算法(英文版•第4版)》作为算法领域经典的参考书，全面介绍了关于算法和数据结构的必备知识，并特别针对排序、搜索、图处理和字符串处理进行了论述。第4版具体给... ', 'Robert Sedgewick、Kevin Wayne', '719', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (613, '深入理解计算机系统', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1470003.jpg', '从程序员的视角，看计算机系统！本书适用于那些想要写出更快、更可靠程序的程序员。通过掌握程序是如何映射到系统上，以及程序是如何执行的，读者能够更好的理解程序... ', 'Randal E.Bryant、David O\'Hallaron , 龚奕利、雷迎春', '2753', '编程', 9.5);
INSERT INTO `myauth_book_info` VALUES (614, '深入理解计算机系统（原书第2版）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4510534.jpg', '本书从程序员的视角详细阐述计算机系统的本质概念，并展示这些概念如何实实在在地影响应用程序的正确性、性能和实用性。全书共12章，主要内容包括信息的表示和处理、... ', '（美）Randal E.Bryant、David O\'Hallaron , 龚奕利、雷迎春', '2509', '编程', 9.7);
INSERT INTO `myauth_book_info` VALUES (615, '深入理解计算机系统（原书第3版）', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29195878.jpg', '和第2版相比，本版内容上*大的变化是，从以IA32和x86-64为基础转变为完全以x86-64为基础。主要更新如下：基于x86-64，大量地重写代码，首次... ', 'Randal E.Bryant、David O\'Hallaron , 龚奕利、贺莲', '1024', '编程', 9.8);
INSERT INTO `myauth_book_info` VALUES (616, '算法（第4版）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28322244.jpg', '本书全面讲述算法和数据结构的必备知识，具有以下几大特色。     算法领域的经典参考书Sedgewick畅销著作的最新版，反映了经过几十年演化而成的算... ', '塞奇威克 (Robert Sedgewick)、韦恩 (Kevin Wayne) , 谢路云', '1219', '编程', 9.4);
INSERT INTO `myauth_book_info` VALUES (617, 'Python深度学习', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29839337.jpg', '本书由Keras之父、现任Google人工智能研究员的弗朗索瓦•肖莱（François Chollet）执笔，详尽介绍了用Python和Keras进行深度学... ', '[美] 弗朗索瓦•肖莱 , 张亮', '569', '编程', 9.5);
INSERT INTO `myauth_book_info` VALUES (618, 'Head First 设计模式（中文版）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2686916.jpg', '《Head First设计模式》(中文版)共有14章，每章都介绍了几个设计模式，完整地涵盖了四人组版本全部23个设计模式。前言先介绍这本书的用法；第1章到第... ', '弗里曼 , O\'Reilly Taiwan公司', '3083', '编程', 9.2);
INSERT INTO `myauth_book_info` VALUES (619, '利用Python进行数据分析', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27275372.jpg', '【名人推荐】“科学计算和数据分析社区已经等待这本书很多年了：大量具体的实践建议，以及大量综合应用方法。本书在未来几年里肯定会成为Python领域中技术计算... ', 'Wes McKinney , 唐学韬', '1279', '编程', 8.6);
INSERT INTO `myauth_book_info` VALUES (620, '从Python开始学编程', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29793528.jpg', '改编自Vamei博客的《Python快速教程》。本书以Python为样本，不仅介绍了编程的基本概念，还着重讲解编程语言的主流范式：面向过程、面向对象、面向函... ', 'Vamei', '169', '编程', 8.4);
INSERT INTO `myauth_book_info` VALUES (621, '打火机与公主裙·荒草园', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29357154.jpg', '“如果人临死前真有走马灯这个环节，她大概会是我这辈子见的最后一人。”从青涩的校园时代里一抹明亮的金，到厮杀的职场中那化不开的黑，李峋就像荒芜之地的一株野草... ', 'Twentine', '7194', '编程', 8.4);
INSERT INTO `myauth_book_info` VALUES (622, '数据密集型应用系统设计', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29872642.jpg', '全书分为三大部分：第一部分，主要讨论有关增强数据密集型应用系统所需的若干基本原则。首先开篇第1章即瞄准目标：可靠性、可扩展性与可维护性，如何认识这些问题以... ', 'Martin Kleppmann , 赵军平、李三平、吕云松、耿煜', '414', '编程', 9.7);
INSERT INTO `myauth_book_info` VALUES (623, 'JavaScript高级程序设计（第3版）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s8958650.jpg', '本书是JavaScript 超级畅销书的最新版。ECMAScript 5 和HTML5 在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也... ', '[美] Nicholas C. Zakas , 李松峰、曹力', '2341', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (624, '编程之美', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2992671.jpg', '这本书收集了约60道算法和程序设计题目，这些题目大部分在近年的笔试、面试中出现过，或者是被微软员工热烈讨论过。作者试图从书中各种有趣的问题出发，引导读者发现... ', '《编程之美》小组 编', '3175', '编程', 8.4);
INSERT INTO `myauth_book_info` VALUES (625, '笨办法学Python 3', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29782950.jpg', '本书是一本Python入门书，适合对计算机了解不多，没有学过编程，但对编程感兴趣的读者学习使用。这本书以习题的方式引导读者一步一步学习编程，从简单的打印一直... ', '[美]泽德 A. 肖 , 王巍巍', '145', '编程', 8.5);
INSERT INTO `myauth_book_info` VALUES (626, 'C专家编程', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s5886086.jpg', '《C专家编程》展示了最优秀的C程序员所使用的编码技巧，并专门开辟了一章对C++的基础知识进行了介绍。书中C的历史、语言特性、声明、数组、指针、链接、运行时... ', 'Peter Van Der Linden , 徐波', '1955', '编程', 9.2);
INSERT INTO `myauth_book_info` VALUES (627, '程序员修炼之道', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4646956.jpg', '《程序员修炼之道:从小工到专家》内容简介：《程序员修炼之道》由一系列独立的部分组成，涵盖的主题从个人责任、职业发展，知道用于使代码保持灵活、并且易于改编和复... ', 'Andrew Hunt、David Thomas , 马维达', '1048', '编程', 8.8);
INSERT INTO `myauth_book_info` VALUES (628, '数学之美', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s9114855.jpg', '几年前，“数学之美”系列文章原刊载于谷歌黑板报，获得上百万次点击，得到读者高度评价。读者说，读了“数学之美”，才发现大学时学的数学知识，比如马尔可夫链、矩阵... ', '吴军', '10628', '编程', 8.7);
INSERT INTO `myauth_book_info` VALUES (629, 'UNIX环境高级编程', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4436543.jpg', '本书是被誉为UNIX编程“圣经”的Advanced Programming in the UNIX Environment一书的更新版。在本书第1版出版后的... ', 'W.Richard Stevens、Stephen A.Rago , 尤晋元、张亚英、戚正伟', '2269', '编程', 9.4);
INSERT INTO `myauth_book_info` VALUES (630, '父与子的编程之旅', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27490779.jpg', '本书是一本家长与孩子共同学习编程的入门书。作者是一对父子，他们以Python语言为例，详尽细致地介绍了Python如何安装、字符串和操作符等程序设计的基本概... ', '桑德 (Warren Sande)、桑德 (Carter Sande) , 苏金国、易郑超', '241', '编程', 8.6);
INSERT INTO `myauth_book_info` VALUES (631, 'Python神经网络编程', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29738046.jpg', '神经网络是一种模拟人脑的神经网络，以期能够实现类人工智能的机器学习技术。本书揭示神经网络背后的概念，并介绍如何通过Python实现神经网络。全书分为3... ', '[英]塔里克·拉希德（Tariq Rashid） , 林赐', '450', '编程', 9.2);
INSERT INTO `myauth_book_info` VALUES (632, '漫画算法：小灰的算法之旅', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s32299271.jpg', '《漫画算法：小灰的算法之旅》通过虚拟的主人公小灰的心路历程，用漫画的形式讲述了算法和数据结构的基础知识、复杂多变的算法面试题目及算法的实际应用场景。第1章... ', '魏梦舒', '212', '编程', 8.6);
INSERT INTO `myauth_book_info` VALUES (633, '程序员的数学', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s20811702.jpg', '如果数学不好，是否可以成为一名程序员呢？答案是肯定的。 本书最适合：数学糟糕但又想学习编程的你。没有晦涩的公式，只有好玩的数学题。帮你掌握编程所需的“数... ', '结城浩 , 管杰', '1067', '编程', 7.3);
INSERT INTO `myauth_book_info` VALUES (634, 'Java核心技术·卷 I（原书第10版）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29063065.jpg', 'Java领域最有影响力和价值的著作之一，由拥有20多年教学与研究经验的资深Java技术专家撰写(获Jolt大奖)，与《Java编程思想》齐名，10余年全球畅... ', '[美] 凯.S.霍斯特曼（Cay S. Horstmann） , 周立新 等', '444', '编程', 8.3);
INSERT INTO `myauth_book_info` VALUES (635, '代码之髓', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27445100.jpg', '《代码之髓：编程语言核心概念》作者从编程语言设计的角度出发，围绕语言中共通或特有的核心概念，通过语言演变过程中的纵向比较和在多门语言中的横向比较，清晰地呈现... ', '[日] 西尾泰和 , 曾一鸣', '327', '编程', 8.1);
INSERT INTO `myauth_book_info` VALUES (636, 'Head First HTML与CSS（第2版）', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28988547.jpg', '是不是已经厌倦了那些深奥的HTML书？你可能在抱怨，只有成为专家之后才能读懂那些书。那么，找一本新修订的《Head First HTML与CSS（第2版）》... ', 'Elisabeth Robson、Eric Freeman , 徐阳、丁小峰', '858', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (637, '软技能', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28889106.jpg', '这是一本真正从“人”（而非技术也非管理）的角度关注软件开发人员自身发展的书。书中论述的内容既涉及生活习惯，又包括思维方式，凸显技术中“人”的因素，全面讲解软... ', 'John Sonmez , 王小刚', '1213', '编程', 8);
INSERT INTO `myauth_book_info` VALUES (638, '代码整洁之道:程序员的职业素养', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29376034.jpg', '1. 汇聚编程大师40余年编程生涯的心得体会2. 阐释软件工艺中的原理、技术、工具和实践3. 助力专业软件开发人员具备令人敬佩的职业素养成功的程序员在... ', '罗伯特·C.马丁 (Robert C.Martin) , 余晟、章显洲', '241', '编程', 8.8);
INSERT INTO `myauth_book_info` VALUES (639, '数据结构与算法分析', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28015501.jpg', '本书是《Data Structures and Algorithm Analysis in C》一书第2版的简体中译本。原书曾被评为20世纪顶尖的30部计算... ', '维斯 , 冯舜玺', '1910', '编程', 8.9);
INSERT INTO `myauth_book_info` VALUES (640, '重构（第2版）全彩精装版', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s30014452.jpg', '1. 世界级软件开发大师的不朽经典2. 生动阐述重构原理和具体做法3. 普通程序员进阶到编程高手必须修炼的秘笈重构，一言以蔽之，就是在不改变外部行为的... ', 'Martin Fowler , 熊节、林从羽', '131', '编程', 9.4);
INSERT INTO `myauth_book_info` VALUES (641, 'Linux/UNIX系统编程手册', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27199116.jpg', '《linux/unix系统编程手册(上、下册)》是介绍linux与unix编程接口的权威著作。linux编程资深专家michael kerrisk在书中详细... ', 'Michael Kerrisk , 孙剑 许从年 董健、孙余强 郭光伟 陈舸', '242', '编程', 9.4);
INSERT INTO `myauth_book_info` VALUES (642, '网络是怎样连接的', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29370067.jpg', '本书以探索之旅的形式，从在浏览器中输入网址开始，一路追踪了到显示出网页内容为止的整个过程，以图配文，讲解了网络的全貌，并重点介绍了实际的网络设备和软件是如何... ', '[日]户根勤 , 周自恒', '998', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (643, 'Designing Data-Intensive Applications', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29419939.jpg', 'Data is at the center of many challenges in system design today. Difficult iss... ', 'Martin Kleppmann', '674', '编程', 9.7);
INSERT INTO `myauth_book_info` VALUES (644, '编写可读代码的艺术', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s10328621.jpg', '细节决定成败，思路清晰、言简意赅的代码让程序员一目了然；而格式凌乱、拖沓冗长的代码让程序员一头雾水。除了可以正确运行以外，优秀的代码必须具备良好的可读性，编... ', 'Boswell, D.、Foucher, T. , 尹哲、郑秀雯', '903', '编程', 8.7);
INSERT INTO `myauth_book_info` VALUES (645, '代码精进之路 从码农到工匠', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33554266.jpg', '这是一本为专业程序员而写的书，写好代码、追求卓越和工匠精神是每个程序员都应该具备的优秀品质。本书共有13章内容，主要分为技艺部分、思想部分和实践部分。技艺... ', '张建飞', '15', '编程', 8.7);
INSERT INTO `myauth_book_info` VALUES (646, '图解HTTP', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27283822.jpg', '本书对互联网基盘——HTTP协议进行了全面系统的介绍。作者由HTTP协议的发展历史娓娓道来，严谨细致地剖析了HTTP协议的结构，列举诸多常见通信场景及实战案... ', '【日】上野宣 , 于均良', '2442', '编程', 8.1);
INSERT INTO `myauth_book_info` VALUES (647, '码农翻身', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s33645944.jpg', '《码农翻身》用故事的方式讲解了软件编程的若干重要领域，侧重于基础性、原理性的知识。《码农翻身》分为6章。第1章讲述计算机的基础知识；第2章侧重讲解Java... ', '刘欣', '491', '编程', 8.8);
INSERT INTO `myauth_book_info` VALUES (648, 'Spring实战（第4版）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28607882.jpg', '《Spring实战（第4版）》是经典的、畅销的Spring学习和实践指南。第4版针对Spring 4进行了全面更新。全书分为四部分。第1部分介绍Sprin... ', 'Craig Walls 沃尔斯 , 张卫滨', '552', '编程', 8.2);
INSERT INTO `myauth_book_info` VALUES (649, 'Python 3网络爬虫开发实战', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29725690.jpg', '本书介绍了如何利用Python 3开发网络爬虫，书中首先介绍了环境配置和基础知识，然后讨论了urllib、requests、正则表达式、Beautiful ... ', '崔庆才', '347', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (650, '人月神话', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1086045.jpg', '作者为人们管理复杂项目提供了颇具洞察力的见解，既有很多发人深省的观点，也有大量的软件工程实践。书中的内容来自布鲁克斯在IBM公司System 360家族和O... ', '[美] 弗雷德里克·布鲁克斯 , 汪颖', '3244', '编程', 8.4);
INSERT INTO `myauth_book_info` VALUES (651, '与孩子一起学编程', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4518521.jpg', '一本老少咸宜的编程入门奇书！一册在手，你完全可以带着自己的孩子，跟随Sande父子组合在轻松的氛围中熟悉那些编程概念，如内存、循环、输入和输出、数据结构和图... ', '[美] 桑德Warren Sande、Carter Sande , 苏金国、姚曜 等', '394', '编程', 8.5);
INSERT INTO `myauth_book_info` VALUES (652, '程序是怎样跑起来的', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28047380.jpg', '本书从计算机的内部结构开始讲起，以图配文的形式详细讲解了二进制、内存、数据压缩、源文件和可执行文件、操作系统和应用程序的关系、汇编语言、硬件控制方法等内容，... ', '[日] 矢泽久雄 , 李逢俊', '514', '编程', 8);
INSERT INTO `myauth_book_info` VALUES (653, '只是为了好玩', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27329267.jpg', '本书是Linux之父Linus Torvalds的自传。Linux之父Linus Torvalds的自传，也是Linus唯一一本书。Linus以调侃的语气... ', 'Linus Torvalds、David Diamond , 陈少芸', '780', '编程', 8.2);
INSERT INTO `myauth_book_info` VALUES (654, '汇编语言(第3版)', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28015785.jpg', '《汇编语言(第3版)》具有如下特点：采用了全新的结构对课程的内容进行组织，对知识进行最小化分割，为读者构造了循序渐进的学习线索；在深入本质的层面上对汇编语言... ', '王爽', '354', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (655, '架构整洁之道', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29943454.jpg', '《架构整洁之道》是创造“Clean神话”的Bob大叔在架构领域的登峰之作，围绕“架构整洁”这一重要导向，系统地剖析其缘起、内涵及应用场景，涵盖软件研发完整过... ', '【美】Robert C. Martin（罗伯特 C. 马丁）', '331', '编程', 8.8);
INSERT INTO `myauth_book_info` VALUES (656, '\"笨办法\"学Python', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27836847.jpg', '本书是一本Python入门书籍，适合对计算机了解不多，没有学过编程，但对编程感兴趣的读者学习使用。这本书以习题的方式引导读者一步一步学习编程，从简单的打印一... ', '肖 (Zed A.Shaw) , 王巍巍', '650', '编程', 7.8);
INSERT INTO `myauth_book_info` VALUES (657, 'Python数据科学手册', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29667618.jpg', '本书是对以数据深度需求为中心的科学、研究以及针对计算和统计方法的参考书。本书共五章，每章介绍一到两个Python数据科学中的重点工具包。首先从IPython... ', 'Jake VanderPlas , 陶俊杰、陈小莉', '198', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (658, 'Effective Python', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28384052.jpg', '用Python编写程序，是相当容易的，所以这门语言非常流行。但若想掌握Python所特有的优势、魅力和表达能力，则相当困难，而且语言中还有很多隐藏的陷阱，容... ', '布雷特·斯拉特金（Brett Slatkin） , 爱飞翔', '250', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (659, '剑指Offer', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27991506.jpg', '《剑指Offer——名企面试官精讲典型编程题（纪念版）》是为纪念本书英文版全球发行而推出的特殊版本，在原版基础上新增大量本书英文版中的精选题目，系统整理基础... ', '何海涛', '204', '编程', 9.2);
INSERT INTO `myauth_book_info` VALUES (660, '像计算机科学家一样思考Python (第2版)', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29031253.jpg', '本书以培养读者以计算机科学家一样的思维方式来理解Python语言编程。贯穿全书的主体是如何思考、设计、开发的方法，而具体的编程语言，只是提供了一个具体场景方... ', '[美] 艾伦 B. 唐尼 , 赵普明', '138', '编程', 8.5);
INSERT INTO `myauth_book_info` VALUES (661, 'UNIX编程艺术', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s1631790.jpg', '本书主要介绍了Unix系统领域中的设计和开发哲学、思想文化体系、原则与经验，由公认的Unix编程大师、开源运动领袖人物之一Eric S. Raymond倾力... ', 'Eric S. Raymond , 姜宏、何源、蔡晓俊', '2123', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (662, 'SQL必知必会', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28341985.jpg', 'SQL语法简洁，使用方式灵活，功能强大，已经成为当今程序员不可或缺的技能。本书是深受世界各地读者欢迎的SQL经典畅销书，内容丰富，文字简洁明快，针对Ora... ', '福达 (Ben Forta) , 钟鸣、刘晓霞', '1412', '编程', 8.5);
INSERT INTO `myauth_book_info` VALUES (663, '自学是门手艺', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s33298691.jpg', '没有自学能力的人没有未来。本书以自学Python编程为例，阐述了如何培养、习得自学能力，并运用自学能力在未来竞争激烈的社会中获得一席之地，不断地升级、进化，... ', '李笑来', '185', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (664, 'C Primer Plus', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1308874.jpg', '《C Primer Plus（第5版）（中文版）》共17章。第1、2章学习C语言编程所需的预备知识。第3到15章介绍了C语言的相关知识，包括数据类型、格式化... ', 'Stephen Prata、云巅工作室 , 云巅工作室', '1845', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (665, 'Python Cookbook 中文版，第 3 版', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28259942.jpg', '《Python Cookbook（第3版）中文版》介绍了Python应用在各个领域中的一些使用技巧和方法，其主题涵盖了数据结构和算法，字符串和文本，数字、日... ', 'David M. Beazley、Brian K. Jones , 陈舸', '272', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (666, '数据结构与算法图解', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s32265576.jpg', '本书是数据结构与算法的入门指南，不局限于某种特定语言，略过复杂的数学公式，用通俗易懂的方式针对编程初学者介绍数据结构与算法的基本概念，培养读者编程逻辑。主要... ', '[美]杰伊•温格罗 , 袁志鹏', '50', '编程', 8.9);
INSERT INTO `myauth_book_info` VALUES (667, 'C语言程序设计', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s28429634.jpg', '时至今日， C语言仍然是计算机领域的通用语言之一，但今天的 C语言已经和最初的时候大不相同了。本书最主要的一个目的就是通过一种“现代方法”来介绍 C语言，书... ', 'K. N. King , 吕秀锋、黄倩', '413', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (668, '集体智慧编程', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3350961.jpg', '本书以机器学习与计算统计为主题背景，专门讲述如何挖掘和分析Web上的数据和资源，如何分析用户体验、市场营销、个人品味等诸多信息，并得出有用的结论，通过复杂的... ', 'TOBY SEGARAN , 莫映、王开福', '1477', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (669, 'MySQL必知必会', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s5968156.jpg', '《MySQL必知必会》MySQL是世界上最受欢迎的数据库管理系统之一。书中从介绍简单的数据检索开始，逐步深入一些复杂的内容，包括联结的使用、子查询、正则表达... ', '[英] Ben Forta , 刘晓霞、钟鸣', '1321', '编程', 8.4);
INSERT INTO `myauth_book_info` VALUES (670, 'Redis设计与实现', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27297117.jpg', '【官方网站】本书的官方网站 www.RedisBook.com 提供了书本试读、相关源码下载和勘误回报等服务，欢迎读者浏览和使用。【编辑推荐】系统而全... ', '黄健宏', '949', '编程', 8.5);
INSERT INTO `myauth_book_info` VALUES (671, '编程人生', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s4549954.jpg', '界顶尖的程序员是怎么走上编程道路的？他们的编程工作创造和改变了人类历史，在这一过程中都有哪些经验和教训？他们对计算机软件行业的过去、现在和未来有什么独到... ', 'Peter Seibel , 图灵俱乐部', '596', '编程', 8.5);
INSERT INTO `myauth_book_info` VALUES (672, '利用Python进行数据分析 原书第2版', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29829100.jpg', '本书由Python pandas项目创始人Wes McKinney亲笔撰写，详细介绍利用Python进行操作、处理、清洗和规整数据等方面的具体细节和基本要点... ', 'Wes McKinney , 徐敬一', '256', '编程', 8.2);
INSERT INTO `myauth_book_info` VALUES (673, '剑指Offer：名企面试官精讲典型编程题（第2版）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29413793.jpg', '《剑指Offer：名企面试官精讲典型编程题（第2版）》剖析了80个典型的编程面试题，系统整理基础知识、代码质量、解题思路、优化效率和综合能力这5个面试要点。... ', '何海涛', '226', '编程', 8.9);
INSERT INTO `myauth_book_info` VALUES (674, 'Orange\'S:一个操作系统的实现', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3788445.jpg', '《Orange S:一个操作系统的实现》从只有二十行的引导扇区代码出发，一步一步地向读者呈现一个操作系统框架的完成过程。书中不仅关注代码本身，同时关注完成这... ', '于渊', '424', '编程', 8.7);
INSERT INTO `myauth_book_info` VALUES (675, 'Linux命令行与shell脚本编程大全（第3版）', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29584559.jpg', '这是一本关于Linux命令行与shell脚本编程的全方位教程，主要包括四大部分：Linux命令行，shell脚本编程基础，高级shell脚本编程，如何创建实... ', '[美]布鲁姆，布雷斯纳汉 , 门佳、武海峰', '231', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (676, '代码本色：用编程模拟自然系统', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s27838441.jpg', '本书介绍了用计算机模拟自然系统涉及的编程策略与技术，涵盖了基本的数学和物理概念，以及可视化地展示模拟结果所需的高级算法。读者将从构建基本的物理引擎开始，一步... ', 'Daniel Shiffman , 周晗彬', '70', '编程', 8.9);
INSERT INTO `myauth_book_info` VALUES (677, '深度探索C++对象模型', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3301634.jpg', '这本书探索“对象导向程序所支持的C++对象模型”下的程序行为。对于“对象导向性质之基础实现技术”以及“各种性质背后的隐含利益交换”提供一个清楚的认识。检验由... ', '[美] Stanley B. Lippman , 侯捷', '1445', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (678, '计算机是怎样跑起来的', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s28079818.jpg', '本书倡导在计算机迅速发展、技术不断革新的今天，回归到计算机的基础知识上。通过探究计算机的本质，提升工程师对计算机的兴趣，在面对复杂的最新技术时，能够迅速掌握... ', '[日] 矢泽久雄 , 胡屹', '471', '编程', 7.5);
INSERT INTO `myauth_book_info` VALUES (679, 'JavaScript语言精粹', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s3651235.jpg', '本书通过对JavaScript语言的分析，甄别出好的和坏的特性，从而提取出相对这门语言的整体而言具有更好的可靠性、可读性和可维护性的JavaScript的子... ', 'Douglas Crockford , 赵泽欣、鄢学鹍', '1847', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (680, 'Effective Java中文版（第3版）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s32282160.jpg', '本书一共包含90个条目，每个条目讨论Java程序设计中的一条规则。这些规则反映了最有经验的优秀程序员在实践中常用的一些有益的做法。全书以一种比较松散的方式... ', '[美] Joshua Bloch , 俞黎敏', '116', '编程', 9.9);
INSERT INTO `myauth_book_info` VALUES (681, 'STL源码剖析', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1092076.jpg', '学习编程的人都知道，阅读、剖析名家代码乃是提高水平的捷径。源码之前，了无秘密。大师们的缜密思维、经验结晶、技术思路、独到风格，都原原本本体现在源码之中。这... ', '侯捷', '1330', '编程', 8.7);
INSERT INTO `myauth_book_info` VALUES (682, 'Effective C++', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s4647091.jpg', '《Effective C++:改善程序与设计的55个具体做法(第3版)(中文版)(双色)》内容简介：有人说C++程序员可以分为两类，读过Effective ... ', '梅耶 (Scott Meyers) , 侯捷', '685', '编程', 9.5);
INSERT INTO `myauth_book_info` VALUES (683, 'Python核心编程（第3版）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28754071.jpg', '《Python核心编程（第3版）》是经典畅销图书《Python核心编程（第二版）》的全新升级版本，总共分为3部分。第1部分为讲解了Python的一些通用应用... ', '[美] Wesley Chun , 孙波翔、李斌、李晗', '198', '编程', 7.9);
INSERT INTO `myauth_book_info` VALUES (684, '你不知道的JavaScript（上卷）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s28033372.jpg', 'JavaScript语言有很多复杂的概念，但却用简单的方式体现出来（比如回调函数），因此，JavaScript开发者无需理解语言内部的原理，就能编写出功能全... ', '[美] Kyle Simpson , 赵望野、梁杰', '806', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (685, 'C和指针', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s2996168.jpg', '本书提供与C语言编程相关的全面资源和深入讨论。本书通过对指针的基础知识和高级特性的探讨，帮助程序员把指针的强大功能融入到自己的程序中去。全书共18章，覆盖... ', 'Kenneth A.Reek , 徐波', '1448', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (686, '程序员的思维修炼', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s4548399.jpg', '本书解释了为什么软件开发是一种精神活动，思考如何解决问题，并就开发人员如何能更好地开发软件进行了评论。书中不仅给出了一些理论上的答案，同时提供了大量实践技术... ', 'Andy Hunt , 崔康', '1869', '编程', 8.4);
INSERT INTO `myauth_book_info` VALUES (687, '计算机系统要素', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2207295.jpg', '本书通过展现简单但功能强大的计算机系统之构建过程，为读者呈现了一幅完整、严格的计算机应用科学大图景。本书作者认为，理解计算机工作原理的最好方法就是亲自动手，... ', 'Noam Nisan、Shimon Schocken , 周维、宋磊、陈曦', '186', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (688, '啊哈!算法', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s27345094.jpg', '这不过是一本有趣的算法书而已。和别的算法书比较，如果硬要说它有什么特点的话，那就是你能看懂它。这是一本充满智慧和趣味的算法入门书。没有枯燥的描述，没有难懂... ', '啊哈磊', '489', '编程', 7.7);
INSERT INTO `myauth_book_info` VALUES (689, '编码的奥秘', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s26535990.jpg', '渴望交流是大多数人的天性。在本书中，“编码”通常指一种在人和机器之间进行信息转换的系统。换句话说、编码即是交流。有时我们将编码看得很神秘，其实大多数编码并非... ', 'Charles Petzold , 伍卫国,王宣政,孙燕妮 等', '1378', '编程', 9.3);
INSERT INTO `myauth_book_info` VALUES (690, 'A Philosophy of Software Design', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29900655.jpg', 'This book addresses the topic of software design: how to decompose complex sof... ', 'John Ousterhout', '157', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (691, '深度学习入门', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s29815955.jpg', '本书是深度学习真正意义上的入门书，深入浅出地剖析了深度学习的原理和相关技术。书中使用Python3，尽量不依赖外部库或工具，从基本的数学知识出发，带领读者从... ', '[ 日］  斋藤康毅 , 陆宇杰', '505', '编程', 9.4);
INSERT INTO `myauth_book_info` VALUES (692, 'C陷阱与缺陷', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s2870233.jpg', '作者以自己1985年在Bell实验室时发表的一篇论文为基础，结合自己的工作经验扩展成为这本对C程序员具有珍贵价值的经典著作。写作本书的出发点不是要批判C语言... ', '凯尼格 , 高巍', '1355', '编程', 8.9);
INSERT INTO `myauth_book_info` VALUES (693, '敏捷软件开发', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s1671095.jpg', '在本书中，享誉全球的软件开发专家和软件工程大师Robert C.Martin将向您展示如何解决软件开发人员、项目经理及软件项目领导们所面临的最棘手的问题。这... ', 'Robert C. Martin , 邓辉', '1409', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (694, '挑战程序设计竞赛', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s29048069.jpg', '世界顶级程序设计高手的经验总结【ACM-ICPC全球总冠军】巫泽俊主译日本ACM-ICPC参赛者人手一册本书对程序设计竞赛中的基础算法和经典问题进行了... ', '[日]秋叶拓哉、[日]岩田阳一、[日]北川宜稔 , 巫泽俊、庄俊元、李津羽', '276', '编程', 9);
INSERT INTO `myauth_book_info` VALUES (695, 'Head First Java（第二版·中文版）', 'https://images.weserv.nl/?url=img9.doubanio.com/view/subject/s/public/s2171906.jpg', '《Head First Java》是本完整的面向对象（object-oriented，OO）程序设计和Java的学习指导。此书是根据学习理论所设计的，让你可... ', 'Kathy Sierra,Bert Bates 著、杨尊一 编译 张然等 改编 , 杨尊一', '1235', '编程', 8.7);
INSERT INTO `myauth_book_info` VALUES (696, 'Effective java 中文版（第2版）', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s3479802.jpg', '本书介绍了在Java编程中78条极具实用价值的经验规则，这些经验规则涵盖了大多数开发人员每天所面临的问题的解决方案。通过对Java平台设计专家所使用的技术的... ', 'Joshua Bloch , 俞黎敏', '1651', '编程', 9.1);
INSERT INTO `myauth_book_info` VALUES (697, '大话数据结构', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s6382631.jpg', '本书为超级畅销书《大话设计模式》作者程杰潜心三年推出的扛鼎之作！以一个计算机教师教学为场景，讲解数据结构和相关算法的知识。通篇以一种趣味方式来叙述，大量引用... ', '程杰', '1293', '编程', 7.9);
INSERT INTO `myauth_book_info` VALUES (698, 'Go程序设计语言', 'https://images.weserv.nl/?url=img3.doubanio.com/view/subject/s/public/s29458403.jpg', '本书由《C程序设计语言》的作者Kernighan和谷歌公司Go团队主管Alan Donovan联袂撰写，是学习Go语言程序设计的指南。本书共13章，主要内容... ', '艾伦 A. A. 多诺万 , 李道兵、高博、庞向才、金鑫鑫、林齐斌', '293', '编程', 8.7);
INSERT INTO `myauth_book_info` VALUES (699, '深入浅出Python（影印版）', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s8851709.jpg', '你是否想过通过一本书来学习Python？《深入浅出Python))通过一种独特的超越语法手册的方式来帮助你学习Python。你将能够快速掌握Python的基... ', 'Paul Barry', '71', '编程', 8.6);
INSERT INTO `myauth_book_info` VALUES (700, '编程珠玑（第2版•修订版）', 'https://images.weserv.nl/?url=img1.doubanio.com/view/subject/s/public/s27984539.jpg', '历史上最伟大的计算机科学著作之一融深邃思想、实战技术与趣味轶事于一炉的奇书带你真正领略计算机科学之美多年以来，当程序员们推选出最心爱的计算机图书时，《... ', '[美] Jon Bentley 乔恩•本特利 , 黄倩、钱丽艳', '227', '编程', 8.4);
COMMIT;

-- ----------------------------
-- Table structure for myauth_commuser
-- ----------------------------
DROP TABLE IF EXISTS `myauth_commuser`;
CREATE TABLE `myauth_commuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nikname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `myauth_commuser_user_id_9d6911ba_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of myauth_commuser
-- ----------------------------
BEGIN;
INSERT INTO `myauth_commuser` VALUES (1, 'fdsf', '2020-01-01', 2);
INSERT INTO `myauth_commuser` VALUES (2, '12232', '2020-01-07', 1);
INSERT INTO `myauth_commuser` VALUES (3, '2312', '2020-01-01', 3);
INSERT INTO `myauth_commuser` VALUES (4, 'fasd', '2020-01-03', 4);
INSERT INTO `myauth_commuser` VALUES (5, 'aaa', '2015-02-04', 5);
INSERT INTO `myauth_commuser` VALUES (6, 'aaa', '2020-01-15', 6);
INSERT INTO `myauth_commuser` VALUES (7, 'terty', '2020-01-10', 7);
INSERT INTO `myauth_commuser` VALUES (8, 'rtery', '2020-01-11', 8);
INSERT INTO `myauth_commuser` VALUES (9, 'retrew', '2020-01-10', 9);
INSERT INTO `myauth_commuser` VALUES (10, 'sdgre', '2020-01-19', 10);
INSERT INTO `myauth_commuser` VALUES (11, 'wtertew', '2020-01-26', 11);
INSERT INTO `myauth_commuser` VALUES (12, 'rtery', '2020-01-08', 12);
INSERT INTO `myauth_commuser` VALUES (13, '个地方广泛的', '2020-01-08', 13);
INSERT INTO `myauth_commuser` VALUES (14, 'aaa', '2020-01-15', 14);
INSERT INTO `myauth_commuser` VALUES (15, 'ewrew', '2020-01-04', 15);
INSERT INTO `myauth_commuser` VALUES (16, 'songzi', '2020-05-05', 16);
INSERT INTO `myauth_commuser` VALUES (17, 'songzi', '2020-05-12', 17);
COMMIT;

-- ----------------------------
-- Table structure for myauth_user_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `myauth_user_evaluation`;
CREATE TABLE `myauth_user_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` double NOT NULL,
  `book_id` double NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`,`user_id`,`book_id`) USING BTREE,
  UNIQUE KEY `myauth_user_evaluation_user_id_movie_id_6d16dd29_uniq` (`user_id`,`book_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32155 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of myauth_user_evaluation
-- ----------------------------
BEGIN;
INSERT INTO `myauth_user_evaluation` VALUES (31105, 1, 675, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31106, 1, 470, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31107, 1, 64, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31108, 1, 185, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31109, 1, 765, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31110, 1, 73, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31111, 1, 261, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31112, 1, 451, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31113, 1, 592, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31114, 1, 569, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31115, 1, 402, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31116, 1, 577, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31117, 1, 217, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31118, 1, 852, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31119, 1, 764, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31120, 1, 823, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31121, 1, 732, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31122, 1, 504, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31123, 1, 176, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31124, 1, 526, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31125, 1, 507, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31126, 1, 954, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31127, 1, 883, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31128, 1, 196, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31129, 1, 38, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31130, 1, 951, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31131, 1, 454, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31132, 1, 657, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31133, 1, 181, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31134, 1, 828, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31135, 1, 721, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31136, 1, 308, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31137, 1, 144, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31138, 1, 590, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31139, 1, 710, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31140, 1, 329, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31141, 1, 952, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31142, 1, 161, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31143, 1, 714, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31144, 1, 682, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31145, 1, 600, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31146, 1, 579, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31147, 1, 512, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31148, 1, 319, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31149, 1, 664, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31150, 1, 488, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31151, 1, 890, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31152, 1, 836, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31153, 1, 57, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31154, 1, 80, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31155, 1, 653, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31156, 1, 849, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31157, 1, 783, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31158, 1, 920, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31159, 1, 447, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31160, 1, 493, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31161, 1, 458, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31162, 1, 270, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31163, 1, 142, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31164, 1, 257, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31165, 1, 774, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31166, 1, 384, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31167, 1, 70, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31168, 1, 269, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31169, 1, 164, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31170, 1, 177, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31171, 1, 68, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31172, 1, 232, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31173, 1, 926, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31174, 1, 690, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31175, 1, 186, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31176, 1, 908, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31177, 1, 146, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31178, 1, 906, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31179, 1, 608, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31180, 1, 99, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31181, 1, 466, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31182, 1, 548, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31183, 1, 62, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31184, 1, 928, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31185, 1, 746, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31186, 1, 935, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31187, 1, 553, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31188, 1, 589, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31189, 1, 643, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31190, 1, 254, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31191, 1, 175, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31192, 1, 405, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31193, 1, 201, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31194, 1, 566, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31195, 1, 92, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31196, 1, 511, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31197, 1, 274, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31198, 1, 452, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31199, 1, 298, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31200, 1, 354, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31201, 1, 416, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31202, 1, 799, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31203, 1, 886, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31204, 1, 510, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31205, 2, 760, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31206, 2, 799, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31207, 2, 294, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31208, 2, 838, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31209, 2, 527, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31210, 2, 802, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31211, 2, 424, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31212, 2, 687, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31213, 2, 926, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31214, 2, 367, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31215, 2, 555, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31216, 2, 569, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31217, 2, 817, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31218, 2, 128, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31219, 2, 475, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31220, 2, 750, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31221, 2, 638, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31222, 2, 708, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31223, 2, 150, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31224, 2, 334, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31225, 2, 536, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31226, 2, 718, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31227, 2, 887, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31228, 2, 942, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31229, 2, 782, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31230, 2, 217, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31231, 2, 570, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31232, 2, 266, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31233, 2, 789, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31234, 2, 933, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31235, 2, 171, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31236, 2, 370, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31237, 2, 484, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31238, 2, 539, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31239, 2, 201, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31240, 2, 341, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31241, 2, 396, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31242, 2, 136, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31243, 2, 31, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31244, 2, 218, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31245, 2, 754, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31246, 2, 321, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31247, 2, 383, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31248, 2, 243, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31249, 2, 628, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31250, 2, 262, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31251, 2, 823, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31252, 2, 336, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31253, 2, 103, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31254, 2, 820, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31255, 2, 313, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31256, 2, 236, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31257, 2, 841, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31258, 2, 763, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31259, 2, 578, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31260, 2, 714, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31261, 2, 494, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31262, 2, 852, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31263, 2, 613, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31264, 2, 848, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31265, 2, 882, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31266, 2, 547, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31267, 2, 496, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31268, 2, 408, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31269, 2, 94, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31270, 2, 206, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31271, 2, 264, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31272, 2, 648, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31273, 2, 244, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31274, 2, 353, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31275, 2, 936, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31276, 2, 448, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31277, 2, 323, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31278, 2, 709, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31279, 2, 26, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31280, 2, 464, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31281, 2, 940, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31282, 2, 16, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31283, 2, 433, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31284, 2, 101, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31285, 2, 178, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31286, 2, 622, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31287, 2, 905, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31288, 2, 272, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31289, 2, 95, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31290, 2, 593, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31291, 2, 37, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31292, 2, 145, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31293, 2, 51, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31294, 2, 597, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31295, 2, 633, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31296, 2, 18, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31297, 2, 563, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31298, 2, 278, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31299, 2, 200, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31300, 2, 697, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31301, 2, 59, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31302, 2, 843, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31303, 2, 811, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31304, 2, 204, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31305, 3, 523, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31306, 3, 666, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31307, 3, 356, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31308, 3, 141, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31309, 3, 18, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31310, 3, 770, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31311, 3, 618, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31312, 3, 125, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31313, 3, 8, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31314, 3, 203, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31315, 3, 240, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31316, 3, 900, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31317, 3, 528, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31318, 3, 612, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31319, 3, 903, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31320, 3, 489, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31321, 3, 423, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31322, 3, 243, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31323, 3, 231, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31324, 3, 312, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31325, 3, 378, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31326, 3, 295, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31327, 3, 211, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31328, 3, 742, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31329, 3, 494, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31330, 3, 613, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31331, 3, 511, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31332, 3, 691, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31333, 3, 148, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31334, 3, 237, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31335, 3, 915, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31336, 3, 774, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31337, 3, 206, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31338, 3, 326, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31339, 3, 168, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31340, 3, 561, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31341, 3, 943, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31342, 3, 886, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31343, 3, 60, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31344, 3, 92, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31345, 3, 496, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31346, 3, 532, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31347, 3, 252, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31348, 3, 800, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31349, 3, 785, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31350, 3, 177, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31351, 3, 757, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31352, 3, 30, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31353, 3, 249, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31354, 3, 605, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31355, 3, 47, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31356, 3, 700, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31357, 3, 509, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31358, 3, 27, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31359, 3, 756, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31360, 3, 426, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31361, 3, 443, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31362, 3, 625, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31363, 3, 622, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31364, 3, 335, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31365, 3, 172, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31366, 3, 926, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31367, 3, 699, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31368, 3, 229, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31369, 3, 676, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31370, 3, 322, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31371, 3, 110, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31372, 3, 571, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31373, 3, 193, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31374, 3, 948, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31375, 3, 936, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31376, 3, 460, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31377, 3, 631, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31378, 3, 119, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31379, 3, 648, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31380, 3, 278, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31381, 3, 650, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31382, 3, 931, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31383, 3, 637, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31384, 3, 28, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31385, 3, 906, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31386, 3, 779, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31387, 3, 108, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31388, 3, 607, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31389, 3, 565, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31390, 3, 112, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31391, 3, 563, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31392, 3, 852, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31393, 3, 628, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31394, 3, 866, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31395, 3, 765, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31396, 3, 643, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31397, 3, 273, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31398, 3, 104, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31399, 3, 311, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31400, 3, 266, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31401, 3, 465, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31402, 3, 826, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31403, 3, 777, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31404, 3, 594, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31405, 4, 734, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31406, 4, 412, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31407, 4, 689, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31408, 4, 679, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31409, 4, 76, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31410, 4, 316, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31411, 4, 630, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31412, 4, 263, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31413, 4, 175, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31414, 4, 588, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31415, 4, 837, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31416, 4, 943, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31417, 4, 131, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31418, 4, 836, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31419, 4, 517, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31420, 4, 592, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31421, 4, 61, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31422, 4, 658, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31423, 4, 858, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31424, 4, 468, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31425, 4, 403, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31426, 4, 570, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31427, 4, 16, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31428, 4, 584, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31429, 4, 580, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31430, 4, 751, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31431, 4, 325, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31432, 4, 152, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31433, 4, 39, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31434, 4, 282, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31435, 4, 597, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31436, 4, 727, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31437, 4, 890, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31438, 4, 850, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31439, 4, 785, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31440, 4, 826, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31441, 4, 415, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31442, 4, 832, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31443, 4, 177, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31444, 4, 414, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31445, 4, 565, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31446, 4, 446, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31447, 4, 753, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31448, 4, 821, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31449, 4, 807, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31450, 4, 480, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31451, 4, 233, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31452, 4, 13, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31453, 4, 120, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31454, 4, 937, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31455, 4, 357, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31456, 4, 209, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31457, 4, 707, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31458, 4, 43, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31459, 4, 12, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31460, 4, 133, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31461, 4, 273, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31462, 4, 902, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31463, 4, 472, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31464, 4, 385, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31465, 4, 582, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31466, 4, 525, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31467, 4, 697, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31468, 4, 758, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31469, 4, 455, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31470, 4, 25, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31471, 4, 631, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31472, 4, 426, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31473, 4, 655, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31474, 4, 384, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31475, 4, 239, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31476, 4, 784, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31477, 4, 942, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31478, 4, 482, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31479, 4, 291, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31480, 4, 100, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31481, 4, 366, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31482, 4, 479, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31483, 4, 792, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31484, 4, 1, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31485, 4, 45, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31486, 4, 868, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31487, 4, 126, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31488, 4, 232, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31489, 4, 386, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31490, 4, 332, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31491, 4, 860, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31492, 4, 30, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31493, 4, 905, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31494, 4, 299, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31495, 4, 187, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31496, 4, 539, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31497, 4, 381, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31498, 4, 896, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31499, 4, 782, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31500, 4, 359, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31501, 4, 418, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31502, 4, 749, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31503, 4, 939, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31504, 4, 281, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31505, 5, 201, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31506, 5, 786, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31507, 5, 693, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31508, 5, 697, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31509, 5, 817, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31510, 5, 924, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31511, 5, 74, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31512, 5, 614, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31513, 5, 640, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31514, 5, 173, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31515, 5, 902, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31516, 5, 57, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31517, 5, 37, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31518, 5, 277, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31519, 5, 439, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31520, 5, 165, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31521, 5, 234, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31522, 5, 705, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31523, 5, 495, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31524, 5, 916, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31525, 5, 432, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31526, 5, 739, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31527, 5, 354, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31528, 5, 710, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31529, 5, 337, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31530, 5, 246, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31531, 5, 634, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31532, 5, 815, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31533, 5, 442, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31534, 5, 518, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31535, 5, 855, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31536, 5, 569, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31537, 5, 443, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31538, 5, 452, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31539, 5, 301, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31540, 5, 339, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31541, 5, 869, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31542, 5, 8, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31543, 5, 820, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31544, 5, 455, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31545, 5, 451, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31546, 5, 583, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31547, 5, 819, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31548, 5, 894, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31549, 5, 496, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31550, 5, 917, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31551, 5, 403, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31552, 5, 426, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31553, 5, 893, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31554, 5, 558, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31555, 5, 242, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31556, 5, 215, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31557, 5, 672, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31558, 5, 644, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31559, 5, 67, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31560, 5, 151, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31561, 5, 198, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31562, 5, 272, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31563, 5, 682, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31564, 5, 694, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31565, 5, 784, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31566, 5, 608, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31567, 5, 81, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31568, 5, 52, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31569, 5, 44, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31570, 5, 874, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31571, 5, 421, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31572, 5, 625, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31573, 5, 42, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31574, 5, 330, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31575, 5, 357, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31576, 5, 845, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31577, 5, 674, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31578, 5, 384, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31579, 5, 66, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31580, 5, 795, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31581, 5, 498, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31582, 5, 537, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31583, 5, 664, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31584, 5, 145, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31585, 5, 34, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31586, 5, 402, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31587, 5, 531, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31588, 5, 142, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31589, 5, 328, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31590, 5, 26, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31591, 5, 271, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31592, 5, 871, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31593, 5, 582, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31594, 5, 59, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31595, 5, 607, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31596, 5, 417, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31597, 5, 671, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31598, 5, 177, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31599, 5, 722, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31600, 5, 250, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31601, 5, 362, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31602, 5, 758, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31603, 5, 467, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31604, 5, 623, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31605, 6, 37, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31606, 6, 737, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31607, 6, 382, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31608, 6, 572, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31609, 6, 302, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31610, 6, 673, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31611, 6, 763, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31612, 6, 437, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31613, 6, 200, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31614, 6, 726, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31615, 6, 333, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31616, 6, 242, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31617, 6, 804, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31618, 6, 541, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31619, 6, 873, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31620, 6, 782, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31621, 6, 304, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31622, 6, 537, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31623, 6, 883, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31624, 6, 121, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31625, 6, 801, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31626, 6, 532, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31627, 6, 826, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31628, 6, 650, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31629, 6, 66, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31630, 6, 913, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31631, 6, 225, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31632, 6, 781, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31633, 6, 239, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31634, 6, 6, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31635, 6, 102, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31636, 6, 335, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31637, 6, 143, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31638, 6, 496, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31639, 6, 16, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31640, 6, 463, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31641, 6, 370, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31642, 6, 363, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31643, 6, 508, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31644, 6, 936, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31645, 6, 777, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31646, 6, 649, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31647, 6, 151, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31648, 6, 638, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31649, 6, 439, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31650, 6, 810, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31651, 6, 33, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31652, 6, 222, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31653, 6, 373, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31654, 6, 590, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31655, 6, 656, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31656, 6, 770, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31657, 6, 361, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31658, 6, 60, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31659, 6, 334, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31660, 6, 827, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31661, 6, 571, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31662, 6, 841, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31663, 6, 817, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31664, 6, 90, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31665, 6, 252, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31666, 6, 78, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31667, 6, 175, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31668, 6, 281, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31669, 6, 522, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31670, 6, 682, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31671, 6, 93, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31672, 6, 392, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31673, 6, 813, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31674, 6, 417, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31675, 6, 323, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31676, 6, 405, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31677, 6, 52, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31678, 6, 213, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31679, 6, 891, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31680, 6, 387, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31681, 6, 464, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31682, 6, 364, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31683, 6, 859, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31684, 6, 910, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31685, 6, 593, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31686, 6, 259, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31687, 6, 748, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31688, 6, 912, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31689, 6, 427, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31690, 6, 442, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31691, 6, 865, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31692, 6, 237, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31693, 6, 863, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31694, 6, 717, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31695, 6, 278, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31696, 6, 498, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31697, 6, 410, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31698, 6, 189, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31699, 6, 260, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31700, 6, 55, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31701, 6, 343, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31702, 6, 828, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31703, 6, 106, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31704, 6, 525, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31705, 7, 926, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31706, 7, 117, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31707, 7, 631, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31708, 7, 119, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31709, 7, 816, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31710, 7, 394, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31711, 7, 820, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31712, 7, 501, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31713, 7, 346, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31714, 7, 746, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31715, 7, 326, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31716, 7, 899, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31717, 7, 886, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31718, 7, 348, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31719, 7, 364, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31720, 7, 432, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31721, 7, 735, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31722, 7, 643, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31723, 7, 740, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31724, 7, 308, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31725, 7, 516, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31726, 7, 653, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31727, 7, 807, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31728, 7, 48, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31729, 7, 810, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31730, 7, 123, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31731, 7, 449, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31732, 7, 223, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31733, 7, 660, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31734, 7, 562, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31735, 7, 862, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31736, 7, 818, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31737, 7, 140, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31738, 7, 952, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31739, 7, 377, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31740, 7, 154, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31741, 7, 291, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31742, 7, 609, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31743, 7, 596, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31744, 7, 448, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31745, 7, 672, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31746, 7, 693, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31747, 7, 334, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31748, 7, 625, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31749, 7, 437, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31750, 7, 64, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31751, 7, 139, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31752, 7, 525, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31753, 7, 529, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31754, 7, 246, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31755, 7, 743, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31756, 7, 230, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31757, 7, 317, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31758, 7, 484, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31759, 7, 632, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31760, 7, 229, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31761, 7, 629, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31762, 7, 180, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31763, 7, 400, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31764, 7, 877, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31765, 7, 949, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31766, 7, 345, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31767, 7, 314, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31768, 7, 280, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31769, 7, 343, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31770, 7, 853, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31771, 7, 251, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31772, 7, 191, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31773, 7, 550, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31774, 7, 723, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31775, 7, 322, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31776, 7, 87, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31777, 7, 520, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31778, 7, 98, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31779, 7, 307, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31780, 7, 937, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31781, 7, 813, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31782, 7, 68, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31783, 7, 908, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31784, 7, 441, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31785, 7, 365, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31786, 7, 199, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31787, 7, 591, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31788, 7, 402, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31789, 7, 270, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31790, 7, 839, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31791, 7, 708, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31792, 7, 420, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31793, 7, 802, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31794, 7, 559, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31795, 7, 168, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31796, 7, 62, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31797, 7, 742, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31798, 7, 52, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31799, 7, 434, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31800, 7, 945, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31801, 7, 544, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31802, 7, 97, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31803, 7, 21, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31804, 7, 607, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31805, 8, 324, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31806, 8, 679, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31807, 8, 88, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31808, 8, 578, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31809, 8, 471, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31810, 8, 747, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31811, 8, 474, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31812, 8, 342, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31813, 8, 555, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31814, 8, 20, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31815, 8, 129, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31816, 8, 153, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31817, 8, 19, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31818, 8, 211, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31819, 8, 105, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31820, 8, 696, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31821, 8, 1, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31822, 8, 865, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31823, 8, 123, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31824, 8, 78, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31825, 8, 287, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31826, 8, 889, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31827, 8, 326, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31828, 8, 847, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31829, 8, 310, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31830, 8, 394, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31831, 8, 238, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31832, 8, 515, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31833, 8, 24, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31834, 8, 853, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31835, 8, 261, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31836, 8, 527, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31837, 8, 191, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31838, 8, 329, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31839, 8, 312, 9.3);
INSERT INTO `myauth_user_evaluation` VALUES (31840, 8, 178, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31841, 8, 745, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31842, 8, 3, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31843, 8, 331, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31844, 8, 121, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31845, 8, 269, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31846, 8, 41, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31847, 8, 790, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31848, 8, 162, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31849, 8, 680, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31850, 8, 718, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31851, 8, 175, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (31852, 8, 508, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31853, 8, 315, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31854, 8, 929, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31855, 8, 751, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31856, 8, 486, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31857, 8, 796, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31858, 8, 519, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31859, 8, 276, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31860, 8, 551, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31861, 8, 730, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31862, 8, 99, 9.9);
INSERT INTO `myauth_user_evaluation` VALUES (31863, 8, 187, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31864, 8, 241, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31865, 8, 442, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31866, 8, 784, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (31867, 8, 799, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31868, 8, 585, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31869, 8, 89, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31870, 8, 872, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31871, 8, 325, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (31872, 8, 763, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31873, 8, 794, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31874, 8, 592, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31875, 8, 932, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31876, 8, 600, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31877, 8, 94, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31878, 8, 288, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31879, 8, 576, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31880, 8, 603, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (31881, 8, 552, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (31882, 8, 558, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31883, 8, 682, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31884, 8, 7, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31885, 8, 328, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31886, 8, 726, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (31887, 8, 173, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31888, 8, 120, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31889, 8, 701, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31890, 8, 512, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31891, 8, 157, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31892, 8, 405, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31893, 8, 87, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31894, 8, 874, 9);
INSERT INTO `myauth_user_evaluation` VALUES (31895, 8, 503, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31896, 8, 580, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31897, 8, 879, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31898, 8, 318, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31899, 8, 6, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31900, 8, 138, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31901, 8, 743, 10);
INSERT INTO `myauth_user_evaluation` VALUES (31902, 8, 818, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31903, 8, 649, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31904, 8, 414, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31905, 9, 151, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31906, 9, 227, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31907, 9, 704, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31908, 9, 607, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31909, 9, 865, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31910, 9, 812, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31911, 9, 155, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31912, 9, 281, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31913, 9, 280, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31914, 9, 330, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31915, 9, 634, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31916, 9, 336, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (31917, 9, 803, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31918, 9, 266, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31919, 9, 319, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31920, 9, 304, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (31921, 9, 134, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31922, 9, 657, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31923, 9, 630, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31924, 9, 548, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (31925, 9, 75, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31926, 9, 639, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31927, 9, 736, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (31928, 9, 228, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (31929, 9, 758, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31930, 9, 45, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31931, 9, 902, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (31932, 9, 278, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31933, 9, 224, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (31934, 9, 62, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31935, 9, 210, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31936, 9, 320, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31937, 9, 53, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31938, 9, 650, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31939, 9, 945, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (31940, 9, 890, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (31941, 9, 528, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31942, 9, 511, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31943, 9, 512, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31944, 9, 406, 8.1);
INSERT INTO `myauth_user_evaluation` VALUES (31945, 9, 457, 6);
INSERT INTO `myauth_user_evaluation` VALUES (31946, 9, 811, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31947, 9, 445, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31948, 9, 924, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31949, 9, 198, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31950, 9, 944, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (31951, 9, 436, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31952, 9, 635, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31953, 9, 317, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31954, 9, 66, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31955, 9, 862, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31956, 9, 285, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (31957, 9, 318, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31958, 9, 547, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (31959, 9, 530, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31960, 9, 851, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (31961, 9, 724, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31962, 9, 397, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31963, 9, 950, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (31964, 9, 573, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31965, 9, 103, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31966, 9, 193, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31967, 9, 610, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31968, 9, 526, 5);
INSERT INTO `myauth_user_evaluation` VALUES (31969, 9, 296, 7);
INSERT INTO `myauth_user_evaluation` VALUES (31970, 9, 409, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (31971, 9, 786, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (31972, 9, 52, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31973, 9, 566, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (31974, 9, 725, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (31975, 9, 780, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (31976, 9, 714, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (31977, 9, 252, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31978, 9, 388, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31979, 9, 646, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (31980, 9, 617, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (31981, 9, 497, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31982, 9, 536, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (31983, 9, 695, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (31984, 9, 424, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (31985, 9, 943, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31986, 9, 186, 8);
INSERT INTO `myauth_user_evaluation` VALUES (31987, 9, 339, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (31988, 9, 360, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (31989, 9, 95, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (31990, 9, 749, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (31991, 9, 29, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (31992, 9, 382, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (31993, 9, 797, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31994, 9, 117, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (31995, 9, 196, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (31996, 9, 251, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (31997, 9, 770, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (31998, 9, 594, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (31999, 9, 99, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (32000, 9, 713, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32001, 9, 203, 9.7);
INSERT INTO `myauth_user_evaluation` VALUES (32002, 9, 456, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32003, 9, 814, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (32004, 9, 918, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (32005, 10, 42, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (32006, 10, 238, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (32007, 10, 440, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (32008, 10, 865, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (32009, 10, 860, 8.8);
INSERT INTO `myauth_user_evaluation` VALUES (32010, 10, 595, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32011, 10, 341, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32012, 10, 710, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (32013, 10, 181, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (32014, 10, 600, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (32015, 10, 317, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (32016, 10, 585, 6);
INSERT INTO `myauth_user_evaluation` VALUES (32017, 10, 377, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (32018, 10, 290, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32019, 10, 804, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32020, 10, 844, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32021, 10, 353, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (32022, 10, 761, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32023, 10, 797, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (32024, 10, 541, 5.3);
INSERT INTO `myauth_user_evaluation` VALUES (32025, 10, 413, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (32026, 10, 737, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (32027, 10, 392, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (32028, 10, 765, 6.5);
INSERT INTO `myauth_user_evaluation` VALUES (32029, 10, 446, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (32030, 10, 395, 5.7);
INSERT INTO `myauth_user_evaluation` VALUES (32031, 10, 404, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (32032, 10, 733, 5.5);
INSERT INTO `myauth_user_evaluation` VALUES (32033, 10, 168, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (32034, 10, 868, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (32035, 10, 560, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (32036, 10, 468, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32037, 10, 314, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (32038, 10, 50, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (32039, 10, 740, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32040, 10, 121, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (32041, 10, 758, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (32042, 10, 77, 5.4);
INSERT INTO `myauth_user_evaluation` VALUES (32043, 10, 221, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (32044, 10, 11, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (32045, 10, 885, 6.8);
INSERT INTO `myauth_user_evaluation` VALUES (32046, 10, 459, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (32047, 10, 411, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (32048, 10, 611, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32049, 10, 315, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (32050, 10, 436, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (32051, 10, 376, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32052, 10, 604, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32053, 10, 239, 6.9);
INSERT INTO `myauth_user_evaluation` VALUES (32054, 10, 177, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (32055, 10, 568, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (32056, 10, 927, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32057, 10, 364, 9);
INSERT INTO `myauth_user_evaluation` VALUES (32058, 10, 162, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32059, 10, 916, 9.2);
INSERT INTO `myauth_user_evaluation` VALUES (32060, 10, 158, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (32061, 10, 269, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32062, 10, 260, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (32063, 10, 363, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32064, 10, 416, 8.7);
INSERT INTO `myauth_user_evaluation` VALUES (32065, 10, 163, 5.1);
INSERT INTO `myauth_user_evaluation` VALUES (32066, 10, 110, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (32067, 10, 730, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (32068, 10, 157, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32069, 10, 574, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (32070, 10, 381, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32071, 10, 638, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32072, 10, 129, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (32073, 10, 486, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32074, 10, 249, 7.5);
INSERT INTO `myauth_user_evaluation` VALUES (32075, 10, 271, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32076, 10, 708, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (32077, 10, 119, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32078, 10, 125, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (32079, 10, 93, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32080, 10, 89, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (32081, 10, 127, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (32082, 10, 562, 9);
INSERT INTO `myauth_user_evaluation` VALUES (32083, 10, 942, 9.4);
INSERT INTO `myauth_user_evaluation` VALUES (32084, 10, 48, 8.2);
INSERT INTO `myauth_user_evaluation` VALUES (32085, 10, 454, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (32086, 10, 917, 7.4);
INSERT INTO `myauth_user_evaluation` VALUES (32087, 10, 375, 7.2);
INSERT INTO `myauth_user_evaluation` VALUES (32088, 10, 472, 6.4);
INSERT INTO `myauth_user_evaluation` VALUES (32089, 10, 354, 9.1);
INSERT INTO `myauth_user_evaluation` VALUES (32090, 10, 839, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (32091, 10, 79, 7.9);
INSERT INTO `myauth_user_evaluation` VALUES (32092, 10, 237, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32093, 10, 843, 6.6);
INSERT INTO `myauth_user_evaluation` VALUES (32094, 10, 23, 6.7);
INSERT INTO `myauth_user_evaluation` VALUES (32095, 10, 32, 7.3);
INSERT INTO `myauth_user_evaluation` VALUES (32096, 10, 952, 7.7);
INSERT INTO `myauth_user_evaluation` VALUES (32097, 10, 831, 6.1);
INSERT INTO `myauth_user_evaluation` VALUES (32098, 10, 902, 7.1);
INSERT INTO `myauth_user_evaluation` VALUES (32099, 10, 906, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32100, 10, 757, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (32101, 10, 828, 6.2);
INSERT INTO `myauth_user_evaluation` VALUES (32102, 10, 499, 9.8);
INSERT INTO `myauth_user_evaluation` VALUES (32103, 10, 931, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32104, 10, 148, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (32105, 11, 2, 7.8);
INSERT INTO `myauth_user_evaluation` VALUES (32106, 11, 3, 5.2);
INSERT INTO `myauth_user_evaluation` VALUES (32107, 11, 15, 9.5);
INSERT INTO `myauth_user_evaluation` VALUES (32108, 11, 39, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (32109, 12, 2, 6);
INSERT INTO `myauth_user_evaluation` VALUES (32110, 12, 264, 4);
INSERT INTO `myauth_user_evaluation` VALUES (32111, 12, 5, 50);
INSERT INTO `myauth_user_evaluation` VALUES (32112, 12, 164, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32113, 12, 3, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32114, 12, 4, 8.5);
INSERT INTO `myauth_user_evaluation` VALUES (32115, 13, 2, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32116, 13, 8, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32117, 1, 15, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32118, 14, 30, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32119, 14, 109, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32120, 14, 198, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32121, 14, 257, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32122, 14, 157, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32123, 14, 235, 2);
INSERT INTO `myauth_user_evaluation` VALUES (32124, 15, 3, 5.6);
INSERT INTO `myauth_user_evaluation` VALUES (32125, 15, 4, 5.9);
INSERT INTO `myauth_user_evaluation` VALUES (32126, 1, 139, 6.3);
INSERT INTO `myauth_user_evaluation` VALUES (32127, 1, 151, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (32128, 1, 21, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (32129, 1, 22, 8.6);
INSERT INTO `myauth_user_evaluation` VALUES (32130, 1, 28, 8.4);
INSERT INTO `myauth_user_evaluation` VALUES (32131, 1, 33, 7.6);
INSERT INTO `myauth_user_evaluation` VALUES (32132, 16, 13, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32133, 17, 2, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32134, 17, 4, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32135, 17, 7, 6);
INSERT INTO `myauth_user_evaluation` VALUES (32136, 17, 198, 7);
INSERT INTO `myauth_user_evaluation` VALUES (32137, 17, 109, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32138, 17, 15, 6);
INSERT INTO `myauth_user_evaluation` VALUES (32144, 17, 126, 10);
INSERT INTO `myauth_user_evaluation` VALUES (32145, 17, 121, 0);
INSERT INTO `myauth_user_evaluation` VALUES (32146, 21, 120, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32147, 23, 122, 8);
INSERT INTO `myauth_user_evaluation` VALUES (32148, 23, 125, 6);
INSERT INTO `myauth_user_evaluation` VALUES (32149, 23, 249, 8.3);
INSERT INTO `myauth_user_evaluation` VALUES (32150, 23, 124, 9.6);
INSERT INTO `myauth_user_evaluation` VALUES (32151, 23, 127, 8.9);
INSERT INTO `myauth_user_evaluation` VALUES (32152, 23, 580, 5);
INSERT INTO `myauth_user_evaluation` VALUES (32153, 23, 364, 5.8);
INSERT INTO `myauth_user_evaluation` VALUES (32154, 23, 120, 9);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
