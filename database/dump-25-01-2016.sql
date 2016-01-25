CREATE DATABASE  IF NOT EXISTS `delatek` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `delatek`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: delatek
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'София','2016-01-23 14:23:21','2016-01-23 11:30:24'),(2,'Варна','2016-01-23 14:23:21','2016-01-23 11:30:34'),(3,'Бургас','2016-01-23 14:23:21','2016-01-23 11:32:11'),(4,'Велико Търново','2016-01-23 14:23:21','2016-01-23 11:32:21'),(5,'Търговище','2016-01-23 14:23:52','0000-00-00 00:00:00'),(6,'Шумен','2016-01-23 14:23:52','0000-00-00 00:00:00'),(31,'Ботевград','2016-01-24 11:41:51','2016-01-24 11:41:51'),(32,'Плевен','2016-01-24 11:42:05','2016-01-24 11:42:05'),(33,'Русе','2016-01-24 11:47:12','2016-01-24 11:47:12'),(34,'Пловдив ','2016-01-24 11:47:33','2016-01-24 11:47:33'),(35,'Ямбол','2016-01-24 11:47:50','2016-01-24 11:47:50');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directions`
--

DROP TABLE IF EXISTS `directions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providerid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directions`
--

LOCK TABLES `directions` WRITE;
/*!40000 ALTER TABLE `directions` DISABLE KEYS */;
INSERT INTO `directions` VALUES (1,1,'2016-01-24 05:59:41','0000-00-00 00:00:00'),(2,1,'2016-01-24 05:59:41','0000-00-00 00:00:00'),(3,2,'2016-01-24 05:59:41','0000-00-00 00:00:00'),(4,1,'2016-01-24 05:59:41','0000-00-00 00:00:00'),(5,3,'2016-01-24 05:59:41','0000-00-00 00:00:00'),(6,4,'2016-01-24 05:59:41','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `directions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodes` (
  `nodeID` char(1) NOT NULL,
  PRIMARY KEY (`nodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
INSERT INTO `nodes` VALUES ('A'),('B'),('C'),('D'),('E'),('F');
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `experienceid` int(10) unsigned DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `candidates_experienceid_foreign` (`experienceid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_name_unique` (`provider_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'Provider 1','2016-01-24 01:18:15','0000-00-00 00:00:00'),(2,'Provider 2','2016-01-24 01:18:15','0000-00-00 00:00:00'),(3,'Provider 3','2016-01-24 01:18:15','0000-00-00 00:00:00'),(4,'Provider 4','2016-01-24 01:18:15','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityid` int(11) NOT NULL,
  `directionid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,1,1,0,'2016-01-24 06:02:00','0000-00-00 00:00:00'),(2,2,1,1,'2016-01-24 06:02:00','0000-00-00 00:00:00'),(3,1,2,2,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(4,3,2,3,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(5,1,3,0,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(6,4,3,1,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(7,5,3,0,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(8,2,3,0,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(9,1,4,0,'2016-01-24 06:03:42','0000-00-00 00:00:00'),(10,31,4,0,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(11,32,4,0,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(12,33,4,0,'2016-01-24 14:09:31','0000-00-00 00:00:00'),(13,2,4,0,'2016-01-24 14:09:31','0000-00-00 00:00:00'),(14,1,5,0,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(15,34,5,0,'2016-01-24 14:05:09','0000-00-00 00:00:00'),(16,35,5,0,'2016-01-24 14:09:31','0000-00-00 00:00:00'),(17,3,5,0,'2016-01-24 14:09:31','0000-00-00 00:00:00'),(18,1,6,0,'2016-01-24 14:09:31','0000-00-00 00:00:00'),(19,34,6,0,'2016-01-24 14:09:31','0000-00-00 00:00:00'),(20,3,6,0,'2016-01-24 14:09:31','0000-00-00 00:00:00'),(21,2,6,0,'2016-01-24 14:09:31','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` tinyint(4) NOT NULL,
  `price` decimal(6,0) NOT NULL,
  `discount` decimal(6,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `directonid` int(11) DEFAULT NULL,
  `from_city` int(11) DEFAULT NULL,
  `to_city` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,1,120,5,'2016-01-24 18:55:27','0000-00-00 00:00:00',NULL,1,3);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'testsss teeeeeeee ssjsjsjsj','ktinheva@test.br','',NULL,'2016-01-23 11:49:02','2016-01-23 09:49:02'),(12,'zzxcxzczxc','sdsadadad@erer.gggg','',NULL,'2016-01-22 15:59:02','2016-01-22 15:59:02'),(13,'adadad','adadad@asdad.gggg','',NULL,'2016-01-22 15:59:20','2016-01-22 15:59:20'),(14,'sadasdad','asdasda@sdasd.asd','',NULL,'2016-01-22 15:59:40','2016-01-22 15:59:40'),(15,'asdsad sadasdad','asdasd@dsada.com','',NULL,'2016-01-22 20:10:46','2016-01-22 18:10:46'),(16,'asdadad','asdad@dsadsa.dsa','',NULL,'2016-01-22 16:00:13','2016-01-22 16:00:13'),(20,'test 12333','ktincheva@gmail.com','',NULL,'2016-01-23 08:20:06','2016-01-23 08:20:06'),(21,'sadasdad','ktincheva@gmail.co','',NULL,'2016-01-23 08:39:36','2016-01-23 08:39:36'),(22,'askdadadlad','sdasdsad@fdfd.bg','',NULL,'2016-01-23 09:26:57','2016-01-23 09:26:57'),(23,'sadasda','test@test.bg','',NULL,'2016-01-23 12:21:41','2016-01-23 10:21:41'),(25,'last once','lastonce@test.bg','',NULL,'2016-01-23 10:24:06','2016-01-23 10:24:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'delatek'
--
/*!50003 DROP PROCEDURE IF EXISTS `ListReached` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListReached`( IN root CHAR(1) )
BEGIN
  DECLARE rows SMALLINT DEFAULT 0;
  DROP TABLE IF EXISTS reached;
  CREATE TABLE reached (
    nodeID CHAR(1) PRIMARY KEY
  ) ENGINE=HEAP;
  INSERT INTO reached VALUES (root );
  SET rows = ROW_COUNT();
  WHILE rows > 0 DO
    INSERT IGNORE INTO reached
      SELECT DISTINCT from_city
      FROM directions AS e
      INNER JOIN reached AS p ON e.to_city = p.nodeID;
    SET rows = ROW_COUNT();
    INSERT IGNORE INTO reached
      SELECT DISTINCT to_city
      FROM directions AS e
      INNER JOIN reached AS p ON e.from_city = p.nodeID;
    SET rows = rows + ROW_COUNT();
  END WHILE;
  SELECT * FROM reached;
  DROP TABLE reached;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-25  9:33:30
