-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: perpus
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Karyawan');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (6,2,5),(7,2,6),(5,2,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add buku',7,'add_buku'),(26,'Can change buku',7,'change_buku'),(27,'Can delete buku',7,'delete_buku'),(28,'Can view buku',7,'view_buku'),(29,'Can add kelompok',8,'add_kelompok'),(30,'Can change kelompok',8,'change_kelompok'),(31,'Can delete kelompok',8,'delete_kelompok'),(32,'Can view kelompok',8,'view_kelompok');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$4GQrwFSyE4LKOxyeith8Vr$qEP9wJajnVRbLiMCNbG3tzWBPXiJrH4qv2Zp8emTloA=','2022-12-25 06:53:44.136691',1,'alfin','','','alfin@sekolah.sch.id',1,1,'2022-11-10 16:12:51.001241'),(2,'pbkdf2_sha256$390000$s2oW1pPhnjacmvrezSByxk$WrCImzngG2/b8VscVzoyYiVZ6BcBfpJgEi2SnG2OY2I=','2022-11-19 14:03:25.551675',0,'Safira','Aulia','Safira','Safira89@gmail.com',0,1,'2022-11-18 06:19:24.000000'),(3,'pbkdf2_sha256$390000$LGqsgFhODm0L2FbcoJO4Kh$hBJeCm4XsKNfRLekIKMld2Jl7A5KLVoTn9+KIIf8hVA=',NULL,1,'admin','','','admin@gmail.com',1,1,'2022-12-04 08:16:12.013613');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (8,2,5),(9,2,6),(10,2,8),(11,2,17),(12,2,18),(13,2,20),(4,2,25),(5,2,26),(6,2,28),(14,2,29),(15,2,30),(7,2,32);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-11-10 16:21:25.455675','1','Produktif',1,'[{\"added\": {}}]',8,1),(2,'2022-11-10 16:21:49.700153','2','Fiksi',1,'[{\"added\": {}}]',8,1),(3,'2022-11-10 16:22:20.254986','3','Adaptif',1,'[{\"added\": {}}]',8,1),(4,'2022-11-10 16:22:44.896674','4','Normatif',1,'[{\"added\": {}}]',8,1),(5,'2022-11-10 16:23:09.719099','1','Buku object (1)',1,'[{\"added\": {}}]',7,1),(6,'2022-11-10 16:23:17.601832','1','Buku object (1)',2,'[]',7,1),(7,'2022-11-11 02:10:09.918676','2','Buku object (2)',1,'[{\"added\": {}}]',7,1),(8,'2022-11-11 02:11:34.128674','3','Buku object (3)',1,'[{\"added\": {}}]',7,1),(9,'2022-11-11 02:13:10.384559','4','Buku object (4)',1,'[{\"added\": {}}]',7,1),(10,'2022-11-11 02:15:51.054990','5','Buku object (5)',1,'[{\"added\": {}}]',7,1),(11,'2022-11-11 02:16:58.805348','6','Buku object (6)',1,'[{\"added\": {}}]',7,1),(12,'2022-11-11 02:17:24.375004','7','Buku object (7)',1,'[{\"added\": {}}]',7,1),(13,'2022-11-11 02:18:01.457154','8','Buku object (8)',1,'[{\"added\": {}}]',7,1),(14,'2022-11-11 02:18:54.252070','9','Buku object (9)',1,'[{\"added\": {}}]',7,1),(15,'2022-11-11 02:19:58.921932','10','Buku object (10)',1,'[{\"added\": {}}]',7,1),(16,'2022-11-11 02:20:44.128461','11','Buku object (11)',1,'[{\"added\": {}}]',7,1),(17,'2022-11-11 07:31:32.454104','13','Buku object (13)',3,'',7,1),(18,'2022-11-11 07:31:55.004908','12','Buku object (12)',3,'',7,1),(19,'2022-11-11 07:40:48.443029','15','Buku object (15)',3,'',7,1),(20,'2022-11-11 07:48:42.567192','22','Buku object (22)',3,'',7,1),(21,'2022-11-11 07:54:01.941633','21','Buku object (21)',3,'',7,1),(22,'2022-11-11 07:54:01.954637','20','Buku object (20)',3,'',7,1),(23,'2022-11-11 07:54:01.960955','19','Buku object (19)',3,'',7,1),(24,'2022-11-11 07:54:18.881248','17','Buku object (17)',3,'',7,1),(25,'2022-11-11 07:54:18.890244','16','Buku object (16)',3,'',7,1),(26,'2022-11-18 06:15:10.099111','1','WiamWulandari',1,'[{\"added\": {}}]',3,1),(27,'2022-11-18 06:16:29.390120','1','WiamWulandari',2,'[]',3,1),(28,'2022-11-18 06:16:39.935974','1','WiamWulandari',2,'[]',3,1),(29,'2022-11-18 06:16:49.756460','1','WiamWulandari',2,'[]',3,1),(30,'2022-11-18 06:17:08.671411','1','WiamWulandari',3,'',3,1),(31,'2022-11-18 06:19:25.684738','2','Safira89@gmail.com',1,'[{\"added\": {}}]',4,1),(32,'2022-11-18 06:22:11.901447','2','Safira89@gmail.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"User permissions\"]}}]',4,1),(33,'2022-11-18 06:26:02.625262','2','Safira89@gmail.com',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(34,'2022-11-18 06:29:19.713895','2','Karyawan',1,'[{\"added\": {}}]',3,1),(35,'2022-11-18 06:29:39.677314','2','Safira',2,'[{\"changed\": {\"fields\": [\"Username\", \"Staff status\", \"Groups\"]}}]',4,1),(36,'2022-11-18 06:31:02.307305','2','Safira',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(37,'2022-11-18 06:31:13.660084','2','Safira',2,'[]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'perpusapp','buku'),(8,'perpusapp','kelompok'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-10 11:24:47.646089'),(2,'auth','0001_initial','2022-11-10 11:24:49.099908'),(3,'admin','0001_initial','2022-11-10 11:24:49.475931'),(4,'admin','0002_logentry_remove_auto_add','2022-11-10 11:24:49.522832'),(5,'admin','0003_logentry_add_action_flag_choices','2022-11-10 11:24:49.600954'),(6,'contenttypes','0002_remove_content_type_name','2022-11-10 11:24:49.850960'),(7,'auth','0002_alter_permission_name_max_length','2022-11-10 11:24:50.022837'),(8,'auth','0003_alter_user_email_max_length','2022-11-10 11:24:50.132232'),(9,'auth','0004_alter_user_username_opts','2022-11-10 11:24:50.147860'),(10,'auth','0005_alter_user_last_login_null','2022-11-10 11:24:50.335332'),(11,'auth','0006_require_contenttypes_0002','2022-11-10 11:24:50.350964'),(12,'auth','0007_alter_validators_add_error_messages','2022-11-10 11:24:50.382217'),(13,'auth','0008_alter_user_username_max_length','2022-11-10 11:24:50.569728'),(14,'auth','0009_alter_user_last_name_max_length','2022-11-10 11:24:50.772833'),(15,'auth','0010_alter_group_name_max_length','2022-11-10 11:24:50.850960'),(16,'auth','0011_update_proxy_permissions','2022-11-10 11:24:50.882234'),(17,'auth','0012_alter_user_first_name_max_length','2022-11-10 11:24:51.069705'),(18,'sessions','0001_initial','2022-11-10 11:24:51.179164'),(19,'perpusapp','0001_initial','2022-11-10 15:47:14.080072'),(20,'perpusapp','0002_buku_jumlah','2022-11-10 15:52:44.640420'),(21,'perpusapp','0003_kelompok_buku_kelompok_id','2022-11-10 16:02:05.765165'),(22,'perpusapp','0004_buku_cover_buku_tanggal','2022-11-22 15:54:37.127073');
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
INSERT INTO `django_session` VALUES ('hx4ejydgs9p8ekx8crlolfakmytp5x01','.eJxVjDsOwjAQBe_iGlm7js3GlPQ5g7X-4QCypTipEHeHSCmgfTPzXsLxtha39bS4OYqLQHH63TyHR6o7iHeutyZDq-sye7kr8qBdTi2m5_Vw_w4K9_KtE1GkCNkTJMhoMphBe9KYwqjOyIg0WmTDylqD2WgEGoBCBPLMQYn3B9B3Ny0:1ovuYp:plbUd0cIL59s6DYpMBe9NNB5zw9xr25meO4JlmIYQpo','2022-12-02 06:09:11.016176'),('jubpbdcv22ln47hek8dwck1a13cnlp6m','.eJxVjDsOwjAQBe_iGlm7js3GlPQ5g7X-4QCypTipEHeHSCmgfTPzXsLxtha39bS4OYqLQHH63TyHR6o7iHeutyZDq-sye7kr8qBdTi2m5_Vw_w4K9_KtE1GkCNkTJMhoMphBe9KYwqjOyIg0WmTDylqD2WgEGoBCBPLMQYn3B9B3Ny0:1p9KSG:MVi7m8o4OZVtNyuy-BgsZGSNAPeoi2n6ibPO42QQ7io','2023-01-08 06:25:52.151631'),('otrldv0x9pcd0mvzcqdkid96jzmpmciv','.eJxVjDsOwjAQBe_iGlm7js3GlPQ5g7X-4QCypTipEHeHSCmgfTPzXsLxtha39bS4OYqLQHH63TyHR6o7iHeutyZDq-sye7kr8qBdTi2m5_Vw_w4K9_KtE1GkCNkTJMhoMphBe9KYwqjOyIg0WmTDylqD2WgEGoBCBPLMQYn3B9B3Ny0:1p9KtE:niRov4CdrkOW8A2fryi4fBR8bd09-f1G3I_pgoLx7sU','2023-01-08 06:53:44.144693'),('ron1c8fn4n8jwnhi9l15i8wptn3f4bk2','.eJxVjDsOwjAQBe_iGlm7js3GlPQ5g7X-4QCypTipEHeHSCmgfTPzXsLxtha39bS4OYqLQHH63TyHR6o7iHeutyZDq-sye7kr8qBdTi2m5_Vw_w4K9_KtE1GkCNkTJMhoMphBe9KYwqjOyIg0WmTDylqD2WgEGoBCBPLMQYn3B9B3Ny0:1p25gh:OH3zMzRQ9wamFcC0sa8z7QA17IcRrqxgha2IZZyXWbo','2022-12-19 07:14:51.499927'),('wca05qkkomn0mwztnse2ho8ym80zsou6','.eJxVjDsOwjAQBe_iGlm7js3GlPQ5g7X-4QCypTipEHeHSCmgfTPzXsLxtha39bS4OYqLQHH63TyHR6o7iHeutyZDq-sye7kr8qBdTi2m5_Vw_w4K9_KtE1GkCNkTJMhoMphBe9KYwqjOyIg0WmTDylqD2WgEGoBCBPLMQYn3B9B3Ny0:1p4Lqx:dOO8VdTHss5ZKCO86PXlx61j4_zMCimhgrrpquHrVUc','2022-12-25 12:54:47.729166'),('yqdhed8lxardh2o0tvmup73cadcp582a','.eJxVjDsOwjAQBe_iGlm7js3GlPQ5g7X-4QCypTipEHeHSCmgfTPzXsLxtha39bS4OYqLQHH63TyHR6o7iHeutyZDq-sye7kr8qBdTi2m5_Vw_w4K9_KtE1GkCNkTJMhoMphBe9KYwqjOyIg0WmTDylqD2WgEGoBCBPLMQYn3B9B3Ny0:1p4cv0:AWnVx-DdOZs3o0aDA8q_JDnPGsu5N4uNk36tcD1MLo0','2022-12-26 07:08:06.142958');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perpusapp_buku`
--

DROP TABLE IF EXISTS `perpusapp_buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perpusapp_buku` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(40) NOT NULL,
  `penerbit` varchar(40) NOT NULL,
  `jumlah` int DEFAULT NULL,
  `kelompok_id_id` bigint DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `tanggal` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perpusapp_buku_kelompok_id_id_2fcd35db_fk_perpusapp_kelompok_id` (`kelompok_id_id`),
  CONSTRAINT `perpusapp_buku_kelompok_id_id_2fcd35db_fk_perpusapp_kelompok_id` FOREIGN KEY (`kelompok_id_id`) REFERENCES `perpusapp_kelompok` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perpusapp_buku`
--

LOCK TABLES `perpusapp_buku` WRITE;
/*!40000 ALTER TABLE `perpusapp_buku` DISABLE KEYS */;
INSERT INTO `perpusapp_buku` VALUES (25,'YOUTUBER FOR DUMMIES','Deddy Corbuzier','BIP',200,1,'cover/Youtube.jpg','2022-11-22 15:54:37.064574'),(32,'Bahasa Indonesia','Abd Rahman','Erlangga',200,3,'cover/b.indo.jfif','2022-11-23 03:28:07.502095');
/*!40000 ALTER TABLE `perpusapp_buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perpusapp_kelompok`
--

DROP TABLE IF EXISTS `perpusapp_kelompok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perpusapp_kelompok` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nama` varchar(9) NOT NULL,
  `keterangan` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perpusapp_kelompok`
--

LOCK TABLES `perpusapp_kelompok` WRITE;
/*!40000 ALTER TABLE `perpusapp_kelompok` DISABLE KEYS */;
INSERT INTO `perpusapp_kelompok` VALUES (1,'Produktif','Kumpulan Buku produktif'),(2,'Fiksi','Kumpulan Buku fiksi'),(3,'Adaptif','Kumpulan Buku Adaptif'),(4,'Normatif','Kumpulan Buku Normatif');
/*!40000 ALTER TABLE `perpusapp_kelompok` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-25 20:26:14
