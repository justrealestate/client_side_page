-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: real_estate
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add commercial rent',7,'add_commercialrent'),(26,'Can change commercial rent',7,'change_commercialrent'),(27,'Can delete commercial rent',7,'delete_commercialrent'),(28,'Can view commercial rent',7,'view_commercialrent'),(29,'Can add commercial resale',8,'add_commercialresale'),(30,'Can change commercial resale',8,'change_commercialresale'),(31,'Can delete commercial resale',8,'delete_commercialresale'),(32,'Can view commercial resale',8,'view_commercialresale'),(33,'Can add land',9,'add_land'),(34,'Can change land',9,'change_land'),(35,'Can delete land',9,'delete_land'),(36,'Can view land',9,'view_land'),(37,'Can add land lease',10,'add_landlease'),(38,'Can change land lease',10,'change_landlease'),(39,'Can delete land lease',10,'delete_landlease'),(40,'Can view land lease',10,'view_landlease'),(41,'Can add land rent',11,'add_landrent'),(42,'Can change land rent',11,'change_landrent'),(43,'Can delete land rent',11,'delete_landrent'),(44,'Can view land rent',11,'view_landrent'),(45,'Can add land resale',12,'add_landresale'),(46,'Can change land resale',12,'change_landresale'),(47,'Can delete land resale',12,'delete_landresale'),(48,'Can view land resale',12,'view_landresale'),(49,'Can add login details',13,'add_logindetails'),(50,'Can change login details',13,'change_logindetails'),(51,'Can delete login details',13,'delete_logindetails'),(52,'Can view login details',13,'view_logindetails'),(53,'Can add residential',14,'add_residential'),(54,'Can change residential',14,'change_residential'),(55,'Can delete residential',14,'delete_residential'),(56,'Can view residential',14,'view_residential'),(57,'Can add residential lease',15,'add_residentiallease'),(58,'Can change residential lease',15,'change_residentiallease'),(59,'Can delete residential lease',15,'delete_residentiallease'),(60,'Can view residential lease',15,'view_residentiallease'),(61,'Can add residential rent',16,'add_residentialrent'),(62,'Can change residential rent',16,'change_residentialrent'),(63,'Can delete residential rent',16,'delete_residentialrent'),(64,'Can view residential rent',16,'view_residentialrent'),(65,'Can add residential resale',17,'add_residentialresale'),(66,'Can change residential resale',17,'change_residentialresale'),(67,'Can delete residential resale',17,'delete_residentialresale'),(68,'Can view residential resale',17,'view_residentialresale');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_rent`
--

DROP TABLE IF EXISTS `commercial_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial_rent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_rent`
--

LOCK TABLES `commercial_rent` WRITE;
/*!40000 ALTER TABLE `commercial_rent` DISABLE KEYS */;
/*!40000 ALTER TABLE `commercial_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_resale`
--

DROP TABLE IF EXISTS `commercial_resale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial_resale` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_resale`
--

LOCK TABLES `commercial_resale` WRITE;
/*!40000 ALTER TABLE `commercial_resale` DISABLE KEYS */;
/*!40000 ALTER TABLE `commercial_resale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'real_estate_app','commercialrent'),(8,'real_estate_app','commercialresale'),(9,'real_estate_app','land'),(10,'real_estate_app','landlease'),(11,'real_estate_app','landrent'),(12,'real_estate_app','landresale'),(13,'real_estate_app','logindetails'),(14,'real_estate_app','residential'),(15,'real_estate_app','residentiallease'),(16,'real_estate_app','residentialrent'),(17,'real_estate_app','residentialresale'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-23 17:37:38.772194'),(2,'auth','0001_initial','2024-08-23 17:37:39.288228'),(3,'admin','0001_initial','2024-08-23 17:37:39.423199'),(4,'admin','0002_logentry_remove_auto_add','2024-08-23 17:37:39.458373'),(5,'admin','0003_logentry_add_action_flag_choices','2024-08-23 17:37:39.468147'),(6,'contenttypes','0002_remove_content_type_name','2024-08-23 17:37:39.543504'),(7,'auth','0002_alter_permission_name_max_length','2024-08-23 17:37:39.605138'),(8,'auth','0003_alter_user_email_max_length','2024-08-23 17:37:39.630539'),(9,'auth','0004_alter_user_username_opts','2024-08-23 17:37:39.641618'),(10,'auth','0005_alter_user_last_login_null','2024-08-23 17:37:39.691792'),(11,'auth','0006_require_contenttypes_0002','2024-08-23 17:37:39.694972'),(12,'auth','0007_alter_validators_add_error_messages','2024-08-23 17:37:39.705031'),(13,'auth','0008_alter_user_username_max_length','2024-08-23 17:37:39.771836'),(14,'auth','0009_alter_user_last_name_max_length','2024-08-23 17:37:39.833644'),(15,'auth','0010_alter_group_name_max_length','2024-08-23 17:37:39.855133'),(16,'auth','0011_update_proxy_permissions','2024-08-23 17:37:39.865560'),(17,'auth','0012_alter_user_first_name_max_length','2024-08-23 17:37:39.921192'),(18,'real_estate_app','0001_initial','2024-08-23 17:37:40.139645'),(19,'sessions','0001_initial','2024-08-23 17:37:40.174936'),(20,'real_estate_app','0002_alter_landresale_totalprice','2024-08-23 22:57:57.643105');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('211o1xtpjawwnkmb18npshdhu68lw2o2','eyJpc19hY3RpdmUiOnRydWV9:1sk0Jt:CheI4x5BcOUZ5uWbmU6rEQu75TRI7YAXnTXUWHdh1aA','2024-09-13 12:01:37.824509'),('6yz9faf0d1p607z4dey77zscj33gmzti','eyJpc19hY3RpdmUiOnRydWUsImVtYWlsSWQiOiJrYWdpZm9iNjk3QGFwaWZhbi5jb20ifQ:1sl5X8:JYNr4Y85cOUS0u87vV5xhAskILFNDeNVwpXnns4m3eU','2024-09-30 11:47:46.636737'),('e0ttobshic1084pbnykvbtgqtisouj84','eyJlbWFpbElkIjoieW9iaXRleTM0NEBhbXh5eS5jb20ifQ:1sjhfS:irZ9B6MAX1uQ2hlJWlcj4TvBf3CG0FWNvrXxIi5-hho','2024-09-12 16:06:38.587443'),('fdq3haoyuuged7z1isxb9mm7yyaf5z6a','eyJpc19hY3RpdmUiOnRydWV9:1sl3ZT:T6uUR6JAPDT8Jxa-AHb6adOM2YbEytEHtEBlHnPWAfY','2024-09-30 09:42:03.513211'),('i67fcezd8p2ozovh5b6pign2z7cul2px','eyJpc19hY3RpdmUiOnRydWUsImVtYWlsSWQiOiJ4ZXdlam81ODUyQGlucHN1ci5jb20ifQ:1sk5AA:AFv0dmHk_g7jmnUXpA66Pgt7-4Pn7lodkw-3LXnzfw0','2024-09-13 17:11:54.737838'),('jmjnp8uu9alrq0gxt6732i4d9kh7jeu8','eyJpc19hY3RpdmUiOnRydWV9:1skV3o:vllE7tWamfCQ7mGohL2CthyXA6OeSUMgBSYqFQdiBWY','2024-09-28 20:51:04.118985'),('sjh8vy9ywtn85q9m7h1s936186yy7vdx','eyJpc19hY3RpdmUiOnRydWV9:1skV46:wkKYVril51DewzRARSFuyTDIcg3KHTJ1mRO4UvPKivo','2024-09-28 20:51:22.953761'),('szjj985m5lcac5vdkm5ystop4wyksiy6','eyJlbWFpbElkIjoibW9iYWo0MzIxOEBhcGlmYW4uY29tIn0:1sjzTS:Z_IM4K4_fV4y_hD5D08zN1rvsfj_O-ShEqcUAoVLJfg','2024-09-13 11:07:26.566982'),('uf3ob3iq20yjaa5bwaimzpbu4qgaz7s8','eyJpc19hY3RpdmUiOnRydWUsImVtYWlsSWQiOiJwcmFrYXNocGFuZGlhbmRldmVsb3BlckBnbWFpbC5jb20ifQ:1sl3e5:MA8xh0OqricDYWi_TD37V1r4PzcQKkk9lCk3xus4GKI','2024-09-30 09:46:49.758225'),('xx8yna819iryoijaotzkh00qebtpiatj','eyJpc19hY3RpdmUiOnRydWV9:1skUhe:NiHhVWu4Y7KyfCa--jAgE78kqAbjFjIA-lQJ9LCQBdU','2024-09-28 20:28:10.946197');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_lease`
--

DROP TABLE IF EXISTS `land_lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_lease` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Email` varchar(254) NOT NULL,
  `Length` decimal(10,2) NOT NULL,
  `Width` decimal(10,2) NOT NULL,
  `PlotArea` decimal(10,2) NOT NULL,
  `Cent` decimal(10,2) NOT NULL,
  `Acre` decimal(10,2) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `ExpectedLease` int NOT NULL,
  `ExpectedLeaseDuration` varchar(12) NOT NULL,
  `Maintenance` varchar(20) NOT NULL,
  `Terms` varchar(500) NOT NULL,
  `PrimaryNumber` varchar(20) NOT NULL,
  `SecondaryNumber` varchar(20) NOT NULL,
  `Uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_lease`
--

LOCK TABLES `land_lease` WRITE;
/*!40000 ALTER TABLE `land_lease` DISABLE KEYS */;
INSERT INTO `land_lease` VALUES (1,'prakashpandian@gmail.com',1500.00,1500.00,2250000.00,5160.55,51.61,'Thoothukudi','ALWARTHIRUNAGARI','lll',500,'5 Year','Maintenance Include','lo','7854123696','7458745878','2024-08-23 23:01:11.707163');
/*!40000 ALTER TABLE `land_lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_records`
--

DROP TABLE IF EXISTS `land_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Email` varchar(254) NOT NULL,
  `Length` decimal(10,2) NOT NULL,
  `Width` decimal(10,2) NOT NULL,
  `PlotArea` decimal(10,2) NOT NULL,
  `Cent` decimal(10,2) NOT NULL,
  `Acre` decimal(10,2) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `ExpectedRent` int NOT NULL,
  `ExpectedDepositMonths` varchar(20) NOT NULL,
  `ExpectedDeposit` int NOT NULL,
  `PricePerCent` decimal(10,2) NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL,
  `PricePerSquareFeet` decimal(10,2) NOT NULL,
  `ExpectedLease` decimal(10,2) NOT NULL,
  `ExpectedLeaseDuration` varchar(12) NOT NULL,
  `Maintenance` varchar(20) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Terms` varchar(500) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `PrimaryNumber` varchar(20) NOT NULL,
  `SecondaryNumber` varchar(20) NOT NULL,
  `Uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_records`
--

LOCK TABLES `land_records` WRITE;
/*!40000 ALTER TABLE `land_records` DISABLE KEYS */;
INSERT INTO `land_records` VALUES (1,'prakashpandian@gmail.com',150.00,15.00,2250.00,5.16,0.05,'Thoothukudi','ALWARTHIRUNAGARI','lll',1500,'5',7500,0.00,0.00,0.00,0.00,'-','-','-','good','Rent','7458963210','7854123690','2024-08-23 22:47:32.386830'),(2,'prakashpandian@gmail.com',1500.00,500.00,750000.00,1720.18,17.20,'Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',0,'0',0,5000.00,8600917.43,11.47,0.00,'-','-','good','-','Resale','7854129630','8987897896','2024-08-23 22:59:02.803863'),(3,'prakashpandian@gmail.com',50.00,50.00,2500.00,5.73,0.06,'Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',0,'0',0,1500.00,8600.92,3.44,0.00,'-','-','koko','-','Resale','7412589630','7474747474','2024-08-23 23:00:22.145847'),(4,'prakashpandian@gmail.com',1500.00,1500.00,2250000.00,5160.55,51.61,'Thoothukudi','ALWARTHIRUNAGARI','lll',0,'0',0,0.00,0.00,0.00,500.00,'5 Year','Maintenance Include','-','lo','Lease','7854123696','7458745878','2024-08-23 23:01:11.720408'),(5,'prakashpandian@gmail.com',1500.00,1500.00,2250000.00,5160.55,51.61,'Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',5000,'6',30000,0.00,0.00,0.00,0.00,'-','-','-','good','Rent','7845129630','7894563210','2024-08-27 09:50:10.597905'),(6,'banabih346@daypey.com',1545.00,45.00,69525.00,159.46,1.59,'Thoothukudi','ALWARTHIRUNAGARI','kvk',8500,'4',34000,0.00,0.00,0.00,0.00,'-','-','-','good','Rent','7458978954','7896541236','2024-08-30 11:05:11.135162'),(7,'mobaj43218@apifan.com',5690.00,1500.00,8535000.00,19575.69,195.76,'Thoothukudi','ALWARTHIRUNAGARI','kvk',5000,'6',30000,0.00,0.00,0.00,0.00,'-','-','-','goodd','Rent','7854998745','7854998745','2024-08-30 11:08:11.127844'),(8,'xewejo5852@inpsur.com',1500.00,1500.00,2250000.00,5160.55,51.61,'Thoothukudi','ALWARTHIRUNAGARI','kvk',8540,'7',59780,0.00,0.00,0.00,0.00,'-','-','-','good','Rent','7458912965','7896541230','2024-08-30 17:11:15.145680');
/*!40000 ALTER TABLE `land_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_rent`
--

DROP TABLE IF EXISTS `land_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_rent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Email` varchar(254) NOT NULL,
  `Length` decimal(10,2) NOT NULL,
  `Width` decimal(10,2) NOT NULL,
  `PlotArea` decimal(10,2) NOT NULL,
  `Cent` decimal(10,2) NOT NULL,
  `Acre` decimal(10,2) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `ExpectedRent` int NOT NULL,
  `ExpectedDepositMonths` varchar(20) NOT NULL,
  `ExpectedDeposit` int NOT NULL,
  `Terms` varchar(500) NOT NULL,
  `PrimaryNumber` varchar(20) NOT NULL,
  `SecondaryNumber` varchar(20) NOT NULL,
  `Uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_rent`
--

LOCK TABLES `land_rent` WRITE;
/*!40000 ALTER TABLE `land_rent` DISABLE KEYS */;
INSERT INTO `land_rent` VALUES (1,'prakashpandian@gmail.com',150.00,15.00,2250.00,5.16,0.05,'Thoothukudi','ALWARTHIRUNAGARI','lll',1500,'5',7500,'good','7458963210','7854123690','2024-08-23 22:47:32.373385'),(2,'prakashpandian@gmail.com',1500.00,1500.00,2250000.00,5160.55,51.61,'Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',5000,'6',30000,'good','7845129630','7894563210','2024-08-27 09:50:10.589156'),(3,'banabih346@daypey.com',1545.00,45.00,69525.00,159.46,1.59,'Thoothukudi','ALWARTHIRUNAGARI','kvk',8500,'4',34000,'good','7458978954','7896541236','2024-08-30 11:05:11.122038'),(4,'mobaj43218@apifan.com',5690.00,1500.00,8535000.00,19575.69,195.76,'Thoothukudi','ALWARTHIRUNAGARI','kvk',5000,'6',30000,'goodd','7854998745','7854998745','2024-08-30 11:08:11.121127'),(5,'xewejo5852@inpsur.com',1500.00,1500.00,2250000.00,5160.55,51.61,'Thoothukudi','ALWARTHIRUNAGARI','kvk',8540,'7',59780,'good','7458912965','7896541230','2024-08-30 17:11:15.131973');
/*!40000 ALTER TABLE `land_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_resale`
--

DROP TABLE IF EXISTS `land_resale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_resale` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Email` varchar(254) NOT NULL,
  `Length` decimal(10,2) NOT NULL,
  `Width` decimal(10,2) NOT NULL,
  `PlotArea` decimal(10,2) NOT NULL,
  `Cent` decimal(10,2) NOT NULL,
  `Acre` decimal(10,2) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `PricePerCent` decimal(10,2) NOT NULL,
  `TotalPrice` decimal(15,2) NOT NULL,
  `PricePerSquareFeet` decimal(10,2) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `PrimaryNumber` varchar(20) NOT NULL,
  `SecondaryNumber` varchar(20) NOT NULL,
  `Uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_resale`
--

LOCK TABLES `land_resale` WRITE;
/*!40000 ALTER TABLE `land_resale` DISABLE KEYS */;
INSERT INTO `land_resale` VALUES (1,'prakashpandian@gmail.com',1500.00,500.00,750000.00,1720.18,17.20,'Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',5000.00,8600917.43,11.47,'good','7854129630','8987897896','2024-08-23 22:59:02.791368'),(2,'prakashpandian@gmail.com',50.00,50.00,2500.00,5.73,0.06,'Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',1500.00,8600.92,3.44,'koko','7412589630','7474747474','2024-08-23 23:00:22.109186');
/*!40000 ALTER TABLE `land_resale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_details`
--

DROP TABLE IF EXISTS `login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Email` varchar(254) NOT NULL,
  `Otp` varchar(6) NOT NULL,
  `Created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_details`
--

LOCK TABLES `login_details` WRITE;
/*!40000 ALTER TABLE `login_details` DISABLE KEYS */;
INSERT INTO `login_details` VALUES (1,'yobitey344@amxyy.com','9153','2024-08-29 15:52:22.434419'),(2,'yobitey344@amxyy.com','3992','2024-08-29 15:53:36.338749'),(3,'yobitey344@amxyy.com','5471','2024-08-29 16:03:52.561963'),(4,'yobitey344@amxyy.com','9702','2024-08-29 16:06:20.309918'),(5,'yobitey344@amxyy.com','9173','2024-08-29 16:06:38.573057'),(6,'banabih346@daypey.com','5125','2024-08-30 09:49:41.211497'),(7,'banabih346@daypey.com','9616','2024-08-30 09:57:19.118003'),(8,'banabih346@daypey.com','5738','2024-08-30 09:57:50.250188'),(9,'banabih346@daypey.com','1329','2024-08-30 10:55:48.857989'),(10,'mobaj43218@apifan.com','7948','2024-08-30 11:07:26.560062'),(11,'mobaj43218@apifan.com','2105','2024-08-30 11:38:05.380094'),(12,'xewejo5852@inpsur.com','9403','2024-08-30 17:10:17.448428'),(13,'kagifob697@apifan.com','9882','2024-08-30 21:26:19.793486'),(14,'mojexek879@avashost.com','1866','2024-08-31 20:16:59.934283'),(15,'prakashpandiandeveloper@gmail.com','3543','2024-09-02 09:46:49.742165'),(16,'kagifob697@apifan.com','1991','2024-09-02 11:26:52.429913');
/*!40000 ALTER TABLE `login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residential_lease`
--

DROP TABLE IF EXISTS `residential_lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residential_lease` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `BhkType` varchar(50) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Floor` varchar(50) NOT NULL,
  `HouseType` varchar(50) NOT NULL,
  `Parking` varchar(50) NOT NULL,
  `Terrace` varchar(50) NOT NULL,
  `Hall` varchar(50) NOT NULL,
  `Bedroom` varchar(50) NOT NULL,
  `Bathroom` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `ExpectedLease` int NOT NULL,
  `ExpectedLeaseDuration` varchar(50) NOT NULL,
  `Maintenance` varchar(50) NOT NULL,
  `Terms` varchar(1000) NOT NULL,
  `PrimaryNumber` varchar(20) NOT NULL,
  `SecondaryNumber` varchar(20) NOT NULL,
  `Created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residential_lease`
--

LOCK TABLES `residential_lease` WRITE;
/*!40000 ALTER TABLE `residential_lease` DISABLE KEYS */;
INSERT INTO `residential_lease` VALUES (1,'3 BHK','prakashpandian@gmail.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',15000,'5 Year','Maintenance Extra','good','7845129630','7845120369','2024-08-23 22:45:18.097581'),(2,'3 BHK','mobaj43218@apifan.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',5000,'5 Year','Maintenance Extra','good','7854978549','7894578945','2024-08-30 11:40:10.466797');
/*!40000 ALTER TABLE `residential_lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residential_records`
--

DROP TABLE IF EXISTS `residential_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residential_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `BhkType` varchar(50) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Floor` varchar(50) NOT NULL,
  `HouseType` varchar(20) NOT NULL,
  `Parking` varchar(50) NOT NULL,
  `Terrace` varchar(50) NOT NULL,
  `Hall` varchar(50) NOT NULL,
  `Bedroom` varchar(50) NOT NULL,
  `Bathroom` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `ExpectedRent` int NOT NULL,
  `ExpectedDepositMonths` int NOT NULL,
  `ExpectedDeposit` int NOT NULL,
  `PreferredTenants` varchar(50) NOT NULL,
  `TotalFloor` varchar(50) NOT NULL,
  `PropertyAge` varchar(50) NOT NULL,
  `HouseLength` decimal(10,2) NOT NULL,
  `HouseWidth` decimal(10,2) NOT NULL,
  `HousePlotArea` decimal(10,2) NOT NULL,
  `HouseCent` decimal(10,2) NOT NULL,
  `LandLength` decimal(10,2) NOT NULL,
  `LandWidth` decimal(10,2) NOT NULL,
  `LandPlotArea` decimal(10,2) NOT NULL,
  `LandCent` decimal(10,2) NOT NULL,
  `ExpectedPrice` int NOT NULL,
  `Description` varchar(50) NOT NULL,
  `ExpectedLease` int NOT NULL,
  `ExpectedLeaseDuration` varchar(50) NOT NULL,
  `Maintenance` varchar(50) NOT NULL,
  `Terms` varchar(1000) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `PrimaryNumber` varchar(20) NOT NULL,
  `SecondaryNumber` varchar(20) NOT NULL,
  `Created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residential_records`
--

LOCK TABLES `residential_records` WRITE;
/*!40000 ALTER TABLE `residential_records` DISABLE KEYS */;
INSERT INTO `residential_records` VALUES (1,'2 BHK','prakashpandian@gmail.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Select','ALWARTHIRUNAGARI','lll',150,2,300,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','good','Rent','7845129630','1254789630','2024-08-23 17:38:33.150084'),(2,'1 BHK','prakashpandian@gmail.com','-','-','No','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk',0,0,0,'-','2','Less than a Year',1.00,1.00,1.00,0.00,5.00,3.00,15.00,0.03,5000,'good',0,'-','-','-','Resale','7854123690','7854129630','2024-08-23 22:41:13.063001'),(3,'3 BHK','prakashpandian@gmail.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',1500,4,6000,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','good','Rent','7854123690','7896541230','2024-08-23 22:41:56.114630'),(4,'3 BHK','prakashpandian@gmail.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',0,0,0,'-','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',15000,'5 Year','Maintenance Extra','good','Lease','7845129630','7845120369','2024-08-23 22:45:18.097696'),(5,'2 BHK','mobaj43218@apifan.com','-','-','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvkv',0,0,0,'-','No Floor','Less than a Year',1500.00,500.00,750000.00,1720.18,200.00,200.00,40000.00,91.74,5000,'good',0,'-','-','-','Resale','7878974589','1236985477','2024-08-30 11:10:46.297101'),(6,'3 BHK','mobaj43218@apifan.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',0,0,0,'-','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',5000,'5 Year','Maintenance Extra','good','Lease','7854978549','7894578945','2024-08-30 11:40:10.466980'),(7,'4 BH','prakashpandiandeveloper@gmail.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',15000,5,75000,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Extra','lp','Rent','7845129630','1254789630','2024-09-02 11:17:23.833485'),(8,'2 BHK','prakashpandiandeveloper@gmail.com','Ground Floor','Separate House','No','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','llllllllllllllllllll',15000000,1,15000000,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Extra','good','Rent','7845129630','1254789630','2024-09-02 11:19:02.138429'),(9,'2 BHK','kagifob697@apifan.com','Ground Floor','Separate House','Yes','No','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',4500,3,13500,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','ko','Rent','7857847845','7845129632','2024-09-02 11:27:32.953300'),(10,'3 BHK','kagifob697@apifan.com','Ground Floor','Separate House','Yes','Yes','1','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',5000,5,25000,'Family','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Extra','good','Rent','7896541230','7896541230','2024-09-02 11:31:16.631401'),(11,'1 BHK','kagifob697@apifan.com','Ground Floor','Separate House','No','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',500,12,6000,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','lp','Rent','7845120963','7896541230','2024-09-02 11:34:57.396938'),(12,'4 BH','kagifob697@apifan.com','Ground Floor','Apartment','Yes','Yes','1','No Hall','1','Thoothukudi','KARUNGULAM','kvk nagar',4,4,16,'Family','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','4611','Rent','7845129630','7845127845','2024-09-02 11:40:30.947128'),(13,'4+ BH','kagifob697@apifan.com','Ground Floor','Separate House','No','Select','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',150000,0,0,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Extra','goodoq','Rent','7845129630','7845129630','2024-09-02 11:47:44.166266'),(14,'2 BHK','kagifob697@apifan.com','Ground Floor','Separate House','No','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',10001,5,50005,'Bachelor(Female)','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','good','Rent','7896541230','7896541230','2024-09-02 11:48:51.732782'),(15,'2 BHK','kagifob697@apifan.com','Ground Floor','Separate House','No','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',10001,5,50005,'Bachelor(Female)','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','good','Rent','7896541230','7896541230','2024-09-02 11:49:41.452088'),(16,'2 BHK','kagifob697@apifan.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',15000,3,45000,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','good','Rent','7845129630','7845120963','2024-09-02 11:50:34.672167'),(17,'3 BHK','kagifob697@apifan.com','Ground Floor','Separate House','Yes','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk na',150000,3,450000,'Anyone','-','-',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,'-',0,'-','Maintenance Include','good','Rent','784512963','9856741230','2024-09-02 11:54:57.794600');
/*!40000 ALTER TABLE `residential_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residential_rent`
--

DROP TABLE IF EXISTS `residential_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residential_rent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `BhkType` varchar(50) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Floor` varchar(50) NOT NULL,
  `HouseType` varchar(30) NOT NULL,
  `Parking` varchar(50) NOT NULL,
  `Terrace` varchar(50) NOT NULL,
  `Hall` varchar(50) NOT NULL,
  `Bedroom` varchar(50) NOT NULL,
  `Bathroom` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `ExpectedRent` int NOT NULL,
  `ExpectedDepositMonths` int NOT NULL,
  `ExpectedDeposit` int NOT NULL,
  `Maintenance` varchar(50) NOT NULL,
  `PreferredTenants` varchar(50) NOT NULL,
  `Terms` varchar(1000) NOT NULL,
  `PrimaryNumber` varchar(20) NOT NULL,
  `SecondaryNumber` varchar(20) NOT NULL,
  `Created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residential_rent`
--

LOCK TABLES `residential_rent` WRITE;
/*!40000 ALTER TABLE `residential_rent` DISABLE KEYS */;
INSERT INTO `residential_rent` VALUES (1,'2 BHK','prakashpandian@gmail.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Select','ALWARTHIRUNAGARI','lll',150,2,300,'Maintenance Include','Anyone','good','7845129630','1254789630','2024-08-23 17:38:33.149876'),(2,'3 BHK','prakashpandian@gmail.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',1500,4,6000,'Maintenance Include','Anyone','good','7854123690','7896541230','2024-08-23 22:41:56.114533'),(3,'4 BH','prakashpandiandeveloper@gmail.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',15000,5,75000,'Maintenance Extra','Anyone','lp','7845129630','1254789630','2024-09-02 11:17:23.833380'),(4,'2 BHK','prakashpandiandeveloper@gmail.com','Ground Floor','Separate House','No','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','llllllllllllllllllll',15000000,1,15000000,'Maintenance Extra','Anyone','good','7845129630','1254789630','2024-09-02 11:19:02.138318'),(5,'2 BHK','kagifob697@apifan.com','Ground Floor','Separate House','Yes','No','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',4500,3,13500,'Maintenance Include','Anyone','ko','7857847845','7845129632','2024-09-02 11:27:32.953185'),(6,'3 BHK','kagifob697@apifan.com','Ground Floor','Separate House','Yes','Yes','1','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',5000,5,25000,'Maintenance Extra','Family','good','7896541230','7896541230','2024-09-02 11:31:16.631256'),(7,'1 BHK','kagifob697@apifan.com','Ground Floor','Separate House','No','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',500,12,6000,'Maintenance Include','Anyone','lp','7845120963','7896541230','2024-09-02 11:34:57.396845'),(8,'4 BH','kagifob697@apifan.com','Ground Floor','Apartment','Yes','Yes','1','No Hall','1','Thoothukudi','KARUNGULAM','kvk nagar',4,4,16,'Maintenance Include','Family','4611','7845129630','7845127845','2024-09-02 11:40:30.947043'),(9,'4+ BH','kagifob697@apifan.com','Ground Floor','Separate House','No','Select','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',150000,0,0,'Maintenance Extra','Anyone','goodoq','7845129630','7845129630','2024-09-02 11:47:44.166128'),(10,'2 BHK','kagifob697@apifan.com','Ground Floor','Separate House','No','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',10001,5,50005,'Maintenance Include','Bachelor(Female)','good','7896541230','7896541230','2024-09-02 11:48:51.732675'),(11,'2 BHK','kagifob697@apifan.com','Ground Floor','Separate House','No','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',10001,5,50005,'Maintenance Include','Bachelor(Female)','good','7896541230','7896541230','2024-09-02 11:49:41.452011'),(12,'2 BHK','kagifob697@apifan.com','Ground Floor','Separate House','Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk nagar',15000,3,45000,'Maintenance Include','Anyone','good','7845129630','7845120963','2024-09-02 11:50:34.672086'),(13,'3 BHK','kagifob697@apifan.com','Ground Floor','Separate House','Yes','Yes','No Hall','1','1','Thoothukudi','ALWARTHIRUNAGARI','kvk na',150000,3,450000,'Maintenance Include','Anyone','good','784512963','9856741230','2024-09-02 11:54:57.794521');
/*!40000 ALTER TABLE `residential_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residential_resale`
--

DROP TABLE IF EXISTS `residential_resale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residential_resale` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `BhkType` varchar(50) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `TotalFloor` varchar(50) NOT NULL,
  `PropertyAge` varchar(50) NOT NULL,
  `HouseLength` double NOT NULL,
  `HouseWidth` double NOT NULL,
  `HousePlotArea` double NOT NULL,
  `HouseCent` double NOT NULL,
  `LandLength` double NOT NULL,
  `LandWidth` double NOT NULL,
  `LandPlotArea` double NOT NULL,
  `LandCent` double NOT NULL,
  `Parking` varchar(50) NOT NULL,
  `Terrace` varchar(50) NOT NULL,
  `Hall` varchar(50) NOT NULL,
  `Bedroom` varchar(50) NOT NULL,
  `Bathroom` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `ExpectedPrice` int NOT NULL,
  `Description` varchar(50) NOT NULL,
  `PrimaryNumber` varchar(20) NOT NULL,
  `SecondaryNumber` varchar(20) NOT NULL,
  `Created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residential_resale`
--

LOCK TABLES `residential_resale` WRITE;
/*!40000 ALTER TABLE `residential_resale` DISABLE KEYS */;
INSERT INTO `residential_resale` VALUES (1,'1 BHK','prakashpandian@gmail.com','2','Less than a Year',1,1,1,0,5,3,15,0.03,'No','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvk',5000,'good','7854123690','7854129630','2024-08-23 22:41:13.070083'),(2,'2 BHK','mobaj43218@apifan.com','No Floor','Less than a Year',1500,500,750000,1720.18,200,200,40000,91.74,'Yes','Yes','No Hall','No Hall','1','Thoothukudi','ALWARTHIRUNAGARI','kvkv',5000,'good','7878974589','1236985477','2024-08-30 11:10:46.301979');
/*!40000 ALTER TABLE `residential_resale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 23:15:37
