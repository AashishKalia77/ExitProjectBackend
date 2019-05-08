-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: nagp
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applicant_activity_record`
--

DROP TABLE IF EXISTS `applicant_activity_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `applicant_activity_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `completion_date` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `done_date` varchar(255) DEFAULT NULL,
  `percentage_score` double NOT NULL,
  `points_earned` double NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `activity_id` varchar(255) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `level_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FK57sd4ky1tv0n45jx8lw1vav9l` (`level_id`),
  KEY `FKjburhpgmeu6vhij12pv6c401j` (`applicant_id`),
  KEY `FKl6bo49aj80j4u3run42fxagb8` (`activity_id`),
  CONSTRAINT `FK57sd4ky1tv0n45jx8lw1vav9l` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKjburhpgmeu6vhij12pv6c401j` FOREIGN KEY (`applicant_id`) REFERENCES `applicant_details` (`applicant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKl6bo49aj80j4u3run42fxagb8` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_activity_record`
--

LOCK TABLES `applicant_activity_record` WRITE;
/*!40000 ALTER TABLE `applicant_activity_record` DISABLE KEYS */;
INSERT INTO `applicant_activity_record` VALUES (1,'Started the activity','adfsef','',2,'',0,0,'01-05-2019','COMPLETED','act1',1,'level1'),(2,'Started the activity','adfsef','',1,'',80,20,'01-05-2019','COMPLETED','act2',1,'level1'),(10,'Started the activity','adfsef','',5,'',0,0,'08-05-2019','PLANNED','act5',8,'level1'),(11,'Started the activity','adfsef','',1,'',80,20,'02-05-2019','COMPLETED','act2',5,'level1'),(16,'Started the activity','adfsef','',1,'',80,24,'06-05-2019','COMPLETED','act4',9,'level1'),(17,'Started the activity','adfsef','',1,'',100,80,'06-05-2019','COMPLETED','act1',10,'level1'),(18,'Started the activity','adfsef','',1,'',0,0,'07-05-2019','REVIEW_FAILED','act1',2,'level1'),(19,'Started the activity','adfsef','',1,'',0,0,'07-05-2019','REVIEW_FAILED','act2',2,'level1'),(20,'Started the activity','adfsef','',1,'',0,0,'07-05-2019','PLANNED','act4',3,'level1');
/*!40000 ALTER TABLE `applicant_activity_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-08 11:47:59
