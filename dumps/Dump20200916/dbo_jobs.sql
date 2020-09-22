-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dbo
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `JobId` int NOT NULL AUTO_INCREMENT,
  `PrintBOSServerIP` varchar(255) DEFAULT NULL,
  `RequestId` int DEFAULT NULL,
  `JobState` int DEFAULT NULL,
  `OutputReady` int DEFAULT NULL,
  `QueueName` varchar(255) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `JobName` varchar(255) DEFAULT NULL,
  `JobFileName` varchar(255) DEFAULT NULL,
  `JobSize` float DEFAULT NULL,
  `StatusCode` varchar(255) DEFAULT NULL,
  `StatusMessage` varchar(255) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `LASTUPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`JobId`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'server IP',1,0,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(2,'server IP',1,1,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(3,'server IP',1,2,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(4,'server IP',1,4,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(5,'server IP',1,8,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(6,'server IP',1,16,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(7,'server IP',1,32,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(8,'server IP',1,64,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(9,'server IP',1,128,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(10,'server IP',1,256,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-14 00:00:00','2020-09-14 00:00:00'),(18,'server IP',1,512,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-15 00:00:00','2020-09-15 00:00:00'),(19,'server IP',1,1024,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-15 00:00:00','2020-09-15 00:00:00'),(20,'server IP',1,2048,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-15 00:00:00','2020-09-15 00:00:00'),(21,'server IP',1,4096,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-15 00:00:00','2020-09-15 00:00:00'),(22,'server IP',1,8192,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-15 00:00:00','2020-09-15 00:00:00'),(23,'server IP',1,16384,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-15 00:00:00','2020-09-15 00:00:00'),(24,'server IP',1,32768,1,'queue name','username','job name','job file name',1.1,'status code','status message','2020-09-15 00:00:00','2020-09-15 00:00:00');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-16 13:07:11
