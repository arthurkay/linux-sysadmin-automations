-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: zamlearn
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `security_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `faculties_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (1,'2019-08-20 14:33:31','2019-08-20 14:33:31','Mathematics','Calculation and computational related studies',1),(2,'2019-08-20 14:33:31','2019-08-20 14:33:31','Languages','Language related studies, e.g Bemba, Nyanja, English, French etc',1),(3,'2019-08-20 14:33:31','2019-08-20 14:33:31','Civic Education','Studies related to wellfare, society etc',1),(4,'2019-08-20 14:33:32','2019-08-20 14:33:32','Arts','Music, poetry, writing etc',1),(5,'2019-08-20 14:33:32','2019-08-20 14:33:32','Science','Branches of all scientific knowledge',1);
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `levels_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'2019-08-20 14:33:33','2019-08-20 14:33:33','primary','Grades 1 - 7'),(2,'2019-08-20 14:33:33','2019-08-20 14:33:33','secondary','Grades 8 - 12'),(3,'2019-08-20 14:33:33','2019-08-20 14:33:33','tertiary','Colleges and Universities');
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_01_11_203519_create_programmes_table',1),(4,'2019_01_11_204554_create_books_table',1),(5,'2019_01_12_103811_create_schools_table',1),(6,'2019_01_12_104010_create_school_admins_table',1),(7,'2019_01_12_104800_create_upgrade_applications_table',1),(8,'2019_01_12_105749_create_subjects_table',1),(9,'2019_02_16_133553_added_account_activity',1),(10,'2019_07_14_031147_create_faculties_table',1),(11,'2019_07_14_031608_create_levels_table',1),(12,'2019_07_14_040138_create_study_materials_table',1),(13,'2019_07_14_054327_create_tags_table',1),(14,'2019_07_21_203939_create_tests_table',1),(15,'2019_07_21_204719_create_test_exams_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programmes`
--

DROP TABLE IF EXISTS `programmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programmes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programmes`
--

LOCK TABLES `programmes` WRITE;
/*!40000 ALTER TABLE `programmes` DISABLE KEYS */;
/*!40000 ALTER TABLE `programmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_admins`
--

DROP TABLE IF EXISTS `school_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_admins`
--

LOCK TABLES `school_admins` WRITE;
/*!40000 ALTER TABLE `school_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `emblem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_materials`
--

DROP TABLE IF EXISTS `study_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `study_materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `data_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'doc',
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_materials`
--

LOCK TABLES `study_materials` WRITE;
/*!40000 ALTER TABLE `study_materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `study_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `faculty_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `grade` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 1'),(2,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 2'),(3,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 3'),(4,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 4'),(5,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 5'),(6,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 6'),(7,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 7'),(8,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 8'),(9,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 9'),(10,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 10'),(11,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 11'),(12,'2019-08-20 14:33:35','2019-08-20 14:33:35','Grade 12'),(13,'2019-08-20 14:33:35','2019-08-20 14:33:35','Year 1'),(14,'2019-08-20 14:33:35','2019-08-20 14:33:35','Year 2'),(15,'2019-08-20 14:33:36','2019-08-20 14:33:36','Year 3'),(16,'2019-08-20 14:33:36','2019-08-20 14:33:36','Year 4'),(17,'2019-08-20 14:33:36','2019-08-20 14:33:36','Year 5'),(18,'2019-08-20 14:33:36','2019-08-20 14:33:36','Year 6'),(19,'2019-08-20 14:33:36','2019-08-20 14:33:36','Year 7'),(20,'2019-08-20 14:33:36','2019-08-20 14:33:36','university'),(21,'2019-08-20 14:33:36','2019-08-20 14:33:36','tertiary'),(22,'2019-08-20 14:33:36','2019-08-20 14:33:36','college'),(23,'2019-08-20 14:33:36','2019-08-20 14:33:36','primary'),(24,'2019-08-20 14:33:36','2019-08-20 14:33:36','secondary');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_exams`
--

DROP TABLE IF EXISTS `test_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_exams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_exams`
--

LOCK TABLES `test_exams` WRITE;
/*!40000 ALTER TABLE `test_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_applications`
--

DROP TABLE IF EXISTS `upgrade_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `faculties` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_applications`
--

LOCK TABLES `upgrade_applications` WRITE;
/*!40000 ALTER TABLE `upgrade_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `last_logout` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Arthur Kalikiti','arthur@kalikiti.net','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',0,NULL,NULL,NULL,'xcuTjNgB29dq2rDqXiN0cgOWgQzFSOO7Xq7BSQ6qQIoU2PZIJmui1FNyNtjX','2019-08-20 14:33:39','2019-08-20 14:33:39',0),(2,'James Poda','jamespoda16@gmail.com','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',0,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(3,'Crispin Kalikiti','crispin@kalikiti.net','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',0,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(4,'Cielo Koss DVM','blegros@feest.org','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(5,'Rylan Wyman','paxton59@halvorson.info','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(6,'Prof. Frederic Nicolas','gussie.fisher@walsh.info','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(7,'Allene Purdy','agustin.gorczany@gmail.com','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(8,'Delphia Hayes','nathen.predovic@christiansen.com','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(9,'Dianna Crooks','hoppe.beverly@wyman.com','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(10,'Dr. Eda Spinka DVM','minerva26@gmail.com','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(11,'Maybelle Boyer','trudie.hodkiewicz@lubowitz.com','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(12,'Dr. Boyd Wolf','ksteuber@hotmail.com','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0),(13,'Amie Mosciski','simonis.jewel@schuppe.info','2019-08-20 14:33:39','$2y$10$tuwMxhXVaFbLoLKh.cl37.nIUdLs6f4Ij4dzUiQXDYknfQtXgtuuu',1,NULL,NULL,NULL,NULL,'2019-08-20 14:33:39','2019-08-20 14:33:39',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23 21:39:42
