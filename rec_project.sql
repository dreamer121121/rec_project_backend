-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: rec_project
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

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
-- Table structure for table `detection`
--

DROP TABLE IF EXISTS `detection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detection` (
  `id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detection`
--

LOCK TABLES `detection` WRITE;
/*!40000 ALTER TABLE `detection` DISABLE KEYS */;
INSERT INTO `detection` VALUES ('392e4f3e-972e-11e9-b889-005056a39b05','夏涛','Please enter your email address.','Message..'),('5096b5d4-9734-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..'),('51d76c7c-9734-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..'),('75055d82-9728-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..'),('8cad7d26-972c-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..'),('92991b9a-9728-11e9-b889-005056a39b05','admin','2761564455@qq.com','Well Done !!!!!!!!'),('9fb4fe10-972e-11e9-b889-005056a39b05','夏涛','Please enter your email address.','干得不错，继续努力'),('d18afbac-9728-11e9-b889-005056a39b05','xt','sdfa','sdfas'),('e258d94e-972e-11e9-b889-005056a39b05','夏涛','Please enter your email address.','手动阀'),('e7d01348-9804-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..'),('e88b5982-9804-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..'),('e8b928da-9804-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..'),('e937076e-9804-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..'),('f2aa9ee6-9728-11e9-b889-005056a39b05','Please enter your name.','Please enter your email address.','Message..');
/*!40000 ALTER TABLE `detection` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-26 23:57:07
