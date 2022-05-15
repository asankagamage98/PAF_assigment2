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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `billId` varchar(20) NOT NULL,
  `accountId` varchar(20) DEFAULT NULL,
  `joinDate` varchar(14) DEFAULT NULL,
  `meterReadingBeforeDate` varchar(40) DEFAULT NULL,
  `meterReadingBefore` varchar(40) DEFAULT NULL,
  `meterReadingNowDate` varchar(40) DEFAULT NULL,
  `meterReadingNow` varchar(40) DEFAULT NULL,
  `noOfUntitsConsumed` varchar(40) DEFAULT NULL,
  `chargeforelectricityConsume` varchar(40) DEFAULT NULL,
  `adjustments` varchar(40) DEFAULT NULL,
  `totalAmountDue` double(6,2) DEFAULT NULL,
  `billDate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`billId`),
  KEY `accountId` (`accountId`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `users` (`accountId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES ('BI220514045326526','AN159756','2022-05-25','2022-05-17','3131','2022-05-18','2312','1231','2144','2142',800.00,'2022-05-17'),('BI220514050436536','AN434354','2022-05-09','2022-05-16','2412','2022-05-17','24242','2424','21421','2421',1242.00,'2022-05-23'),('BI220515051931531','AN434354','2022-04-09','2022-05-13','3242','2012-11-10','1213','13','133','Repudiandae alias te',1331.00,'2002-02-22');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
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
