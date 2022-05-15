-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: electrogred
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `accountId` varchar(20) NOT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `nic` varchar(50) DEFAULT NULL,
  `permanantAddress` varchar(50) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `landNumber` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  `areaoffice` varchar(20) DEFAULT NULL,
  `joinDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('AN159756',1,'fsdfdse5','dfsf','159756769','sdfsdf','43242','5454354','gfdfg','cgfdg','ddfgv','5667867'),('AN434354',0,'fsdfds',NULL,'434354534534','sdfsdf','43242','5454354','gfdfg','cgfdg','ddfgv','5667867'),('AN657567',0,'fsdfds','dfsf','6575676576','sdfsdf','43242','5454354','gfdfg','cgfdg','ddfgv','5667867'),('AN897567',0,'fsdfdse5','dfsf','897567699','sdfsdf','43242','5454354','gfdfg','cgfdg','ddfgv','5667867'),('AN997567',0,'fsdfdse5','dfsf','997567699','sdfsdf','43242','5454354','gfdfg','cgfdg','ddfgv','5667867');
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

-- Dump completed on 2022-05-15 17:23:27
