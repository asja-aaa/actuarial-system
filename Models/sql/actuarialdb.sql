CREATE DATABASE  IF NOT EXISTS `actuarialdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `actuarialdb`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: actuarialdb1
-- ------------------------------------------------------
-- Server version	8.0.18

--
-- Table structure for table `auth_group`
--
DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');


--
-- Table structure for table `auth_permission`
--
DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of auth_permission
-- ----------------------------
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


--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;





--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


--
-- Table structure for table `auth_user_groups`
--
DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


--
-- Table structure for table `django_migrations`
--
DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-09-13 07:06:46.449630');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-09-13 07:06:51.045270');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-09-13 07:07:05.678688');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-09-13 07:07:09.295216');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-13 07:07:09.429185');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-09-13 07:07:12.404506');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-09-13 07:07:14.616394');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-09-13 07:07:16.077450');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-09-13 07:07:16.198677');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-09-13 07:07:18.316195');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-09-13 07:07:18.443096');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-13 07:07:18.543310');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-09-13 07:07:20.136322');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-13 07:07:22.539295');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-09-13 07:07:24.028694');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-09-13 07:07:24.282345');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2020-09-13 07:07:25.652525');



--
-- Table structure for table `django_session`
--
DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


--
-- Table structure for table `insurance_type`
--

DROP TABLE IF EXISTS `insurance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_type` (
  `instype_id` int(10) NOT NULL,
  `instype_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`instype_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_type`
--

LOCK TABLES `insurance_type` WRITE;
/*!40000 ALTER TABLE `insurance_type` DISABLE KEYS */;
INSERT INTO `insurance_type` VALUES (0,'个人保险'),(1,'团体保险');
/*!40000 ALTER TABLE `insurance_type` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `ins_id` int(11) NOT NULL,
  `ins_initiator_id` char(10) NOT NULL,
  `ins_name` varchar(255) NOT NULL,
  `ins_pay` varchar(255) NOT NULL,
  `ins_profit` varchar(255) NOT NULL,
  `ins_period` varchar(45) DEFAULT NULL,
  `ins_ad` varchar(255) DEFAULT 'null',
  `ins_type` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ins_id`),
  KEY `ins_type_idx` (`ins_type`),
  CONSTRAINT `ins_type` FOREIGN KEY (`ins_type`) REFERENCES `insurance_type` (`instype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (0,'100001','岁岁无忧养老保险','100-1000','5000-10000','forever','年年守护，岁岁无忧',0),(1,'100002','健康之诺重大疾病保险','5000-10000','30000-100000','forever','健康之诺，一诺千金',0),(2,'100003','百万守护意外伤害保险','50000-150000','200000-1000000','10years','您的健康由我来守护',0),(3,'100004','平安寿险','50000-100000','200000-1000000','forever','买保险就是买平安',0),(4,'100005','中国人寿团体寿险','50-100','50000-100000','forever','要投就投中国人寿',1),(5,'100005','团体健康保障险','100-10000','50000-1000000','1year','强力呵护大家的健康',1),(6,'100006','企业团体综合意外险','500-10000','200000-1000000','30days','放心工作，免后顾之忧',1),(7,'100002','平安鑫祥养老保险','50000-100000','200000-300000','30years','平安鑫祥，养老首选',0),(8,'100005','境外旅游个人险','200-500','5000-100000','15days','让您的出游更有保障',0),(9,'100006','境外旅游团体险','200-500','5000-100000','15days','给您的生活带来更多保障',1),(10,'100007','小型团队创业险','500-1000','10000-100000','5years','给您的生活带来更多保障',1),(11,'100003','婴幼儿健康险','5000-10000','50000-200000','3years','孩子的健康我们来呵护',0),(12,'100008','短途出差意外险','50-100','10000-200000','5days','给您的生活带来更多保障',0),(13,'100009','全球交通意外险','100-200','50000-500000','180days','给您的生活带来更多保障',0),(14,'100009','境外留学意外险','1000-2000','100000-500000','2years','让学习深造没有后顾之忧',0),(15,'100002','红丝带艾滋病险','5000-10000','30000-100000','forever','给您的生活带来更多保障',0),(16,'100003','短期意外伤害保险','50000-150000','200000-1000000','10years','给您的生活带来更多保障',0),(17,'100004','太平洋寿险','50000-100000','200000-1000000','forever','给您的生活带来更多保障',0),(18,'100005','天伦之乐父母寿险','50-100','50000-100000','forever','给您的生活带来更多保障',1),(19,'100005','一家三口健康保障险','100-10000','50000-1000000','1year','给您的生活带来更多保障',1),(20,'100006','驴友登山意外险','500-10000','200000-1000000','30days','给您的生活带来更多保障',1),(21,'100002','天伦之乐养老保险','50000-100000','200000-300000','30years','给您的生活带来更多保障',0),(22,'100005','安心国内游个人险','200-500','5000-100000','15days','给您的生活带来更多保障',0),(23,'100006','安心国内游团体险','200-500','5000-100000','15days','给您的生活带来更多保障',1),(24,'100007','中型团队创业险','500-1000','10000-100000','5years','给您的生活带来更多保障',1),(25,'100003','学龄前儿童健康险','5000-10000','50000-200000','3years','孩子的健康我们来呵护',0),(26,'100008','长途出差意外险','50-100','10000-200000','5days','给您的生活带来更多保障',0),(27,'100009','陆上交通意外险','100-200','50000-500000','180days','给您的生活带来更多保障',0),(28,'100009','香港留学意外险','1000-2000','100000-500000','2years','让学习深造没有后顾之忧',0),(29,'100001','安翔养老保险','100-1000','5000-10000','forever','放心养老',0),
(30,'100002','鑫泰祥和重大疾病保险','5000-10000','30000-100000','forever','您的健康我来守护',0),
(31,'100003','一生无忧意外伤害保险','50000-150000','200000-1000000','10years','您的健康由我来守护',0),
(32,'100004','放心寿险','50000-100000','200000-1000000','forever','买保险就是买放心',0),
(33,'100005','中国太平团体寿险','50-100','50000-100000','forever','要投就投中国太平',1),
(34,'100005','无忧团体健康保障险','100-10000','50000-1000000','1year','尽心呵护大家的健康',1),
(35,'100006','中型团体综合意外险','500-10000','200000-1000000','30days','买保险，免后顾之忧',1),
(36,'100002','安享晚年养老保险','50000-100000','200000-300000','30years','晚年尽享天伦之乐',0),
(37,'100005','欧美旅游个人险','200-500','5000-100000','15days','让您的出游更有保障',0),
(38,'100006','欧美旅游团体险','200-500','5000-100000','15days','让您的出游更有保障',1),
(39,'100007','小型团队奋斗险','500-1000','10000-100000','5years','尽情奋斗，无所顾忌',1),
(40,'100003','宝宝呵护健康险','5000-10000','50000-200000','3years','守护宝宝的健康',0),
(41,'100008','国内短途出差意外险','50-100','10000-200000','5days','给您的生活带来更多保障',0),
(42,'100009','全球陆上交通意外险','100-200','50000-500000','180days','交通安全请放心',0),
(43,'100009','欧美留学意外险','1000-2000','100000-500000','2years','让学习深造没有隐患',0),
(44,'100002','轻型疾病险','5000-10000','30000-100000','forever','给您的健康带来更多保障',0),
(45,'100003','意外伤害守护险','50000-150000','200000-1000000','10years','让您的生活没有顾虑',0),
(46,'100004','鸿丰老年寿险','50000-100000','200000-1000000','forever','选择鸿丰，安享晚年',0),
(47,'100005','鸿丰父母寿险','50-100','50000-100000','forever','选择鸿丰，安享晚年',1),
(48,'100005','全家健康保障险','100-10000','50000-1000000','1year','守护全家人的健康',1),
(49,'100006','户外登山意外险','500-10000','200000-1000000','30days','尽享湖光山色',1),
(50,'100002','平安养老保险','50000-100000','200000-300000','30years','买保险就是买平安',0);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;



-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `post_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_time` datetime(0) NOT NULL,
  `post_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_looked` int(10) NULL DEFAULT NULL,
  `post_lmsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('100001', '2020-09-22 18:53:31', '境外旅游险', '出国旅游，异域风情让人流连忘返，但突发意外也会让我们措手不及。 最近微博有位女孩爆出父母在伊朗遭遇严重车祸，母亲身故、父亲重伤急需紧急救援，对保险公司不作为表达了自己的愤怒。 相信很多人一定对紧急救援存在很多疑惑，今天深蓝君就通过一篇文章，一起看看旅游意外险到底怎么选？主要内容如下：', 8700, '800', '1-2-3', NULL);



-- ----------------------------
-- Table structure for post_type
-- ----------------------------
DROP TABLE IF EXISTS `post_type`;
CREATE TABLE `post_type`  (
  `post_type_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_type_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`post_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_type
-- ----------------------------
INSERT INTO `post_type` VALUES ('1', '保险理赔');
INSERT INTO `post_type` VALUES ('2', '保险细则');
INSERT INTO `post_type` VALUES ('3', '经验分享');
INSERT INTO `post_type` VALUES ('4', '保险选购');
INSERT INTO `post_type` VALUES ('5', '保险意义');
INSERT INTO `post_type` VALUES ('6', '保险收益');


--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `usertype_id` int(10) NOT NULL,
  `usertype_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`usertype_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
INSERT INTO `user_type` VALUES (0,'管理员'),(1,'普通用户');


--
-- Table structure for table `user`
--
DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_type` int(10) NOT NULL,
  `user_gender` int(10) DEFAULT NULL,
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `user_name` (`user_name`) USING BTREE,
  UNIQUE KEY `user_phone` (`user_phone`) USING BTREE,
  UNIQUE KEY `user_email` (`user_email`) USING BTREE,
  KEY `user_type` (`user_type`) USING BTREE,
  CONSTRAINT `user_type` FOREIGN KEY (`user_type`) REFERENCES `user_type` (`usertype_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `user` VALUES ('100001','jlmnb','123456',0,0,'14533363366','198654445@qq.com',NULL);
