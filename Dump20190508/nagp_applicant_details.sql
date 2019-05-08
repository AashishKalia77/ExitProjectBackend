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
-- Table structure for table `applicant_details`
--

DROP TABLE IF EXISTS `applicant_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `applicant_details` (
  `applicant_id` int(11) NOT NULL,
  `contact_number` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nagp_status` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `batch_id` varchar(255) DEFAULT NULL,
  `level_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`applicant_id`),
  UNIQUE KEY `UK35spqmek9hjr3f7wwx7hcjc0d` (`email`),
  KEY `FKa74igq3yy0lkppkjmgxd5ivw4` (`batch_id`),
  KEY `FK86ajkxbk9j2heyperhu1cqmei` (`level_id`),
  CONSTRAINT `FK86ajkxbk9j2heyperhu1cqmei` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKa74igq3yy0lkppkjmgxd5ivw4` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_details`
--

LOCK TABLES `applicant_details` WRITE;
/*!40000 ALTER TABLE `applicant_details` DISABLE KEYS */;
INSERT INTO `applicant_details` VALUES (1,78789545,'dam@gmail.com','ASPIRING','daman','5678','bat1','level1'),(2,65363,'kla','ASPIRING','lakshay sahrma','678','bat1','level1'),(3,54353,'ckl','ASPIRING','chirag','678','bat2','level1'),(5,4632764,'aditya.khanijow@nagarro.com','ASPIRING','aditya','terry123','bat1','level1'),(8,4567833924,'peter@gmail.com','ASPIRING','peter','234','bat3','level1'),(9,4324132,'yashmehta.mehta45@gmail.com','ASPIRING','mehta','435','bat2','level1'),(10,5673849214,'kaliaaashish10@gmail.com','ASPIRING','Aashish Kalia','777','bat1','level1'),(11,4567890123,'kevin23@gmail.com','ASPIRING','kevin','23456','bat3','level1');
/*!40000 ALTER TABLE `applicant_details` ENABLE KEYS */;
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
