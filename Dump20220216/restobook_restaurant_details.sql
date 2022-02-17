-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: restobook
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `restaurant_details`
--

DROP TABLE IF EXISTS `restaurant_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext,
  `open_hour` varchar(191) DEFAULT NULL,
  `close_hour` varchar(191) DEFAULT NULL,
  `open` longtext,
  `close` longtext,
  `price` bigint DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `city` longtext,
  `address` longtext,
  `phone_number` longtext,
  `profile_picture` longtext,
  `seats` bigint DEFAULT NULL,
  `status` varchar(191) DEFAULT 'DISABLED',
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_restaurant_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_details`
--

LOCK TABLES `restaurant_details` WRITE;
/*!40000 ALTER TABLE `restaurant_details` DISABLE KEYS */;
INSERT INTO `restaurant_details` VALUES (1,'2022-02-15 21:39:17.989','2022-02-15 21:39:17.989',NULL,'Restaurant Padang','07:00','17:00','0,','1,2,3,4,5,6,',10000,0,0,'Jakarta','Jl.Taman Daan Mogot No.2','0864735624837','',100,'OPEN','Khas Padang'),(2,'2022-02-15 21:39:26.669','2022-02-15 21:39:26.669',NULL,'Restaurant Medan','07:00','11:00','0,1,2','3,4,5,6,',20000,0,0,'Jakarta','Jl. Mawar No.400','0877647354628','',80,'OPEN','Khas Medan'),(3,'2022-02-15 21:39:28.735','2022-02-15 21:39:28.735',NULL,'Restaurant Bangka','09:00','11:00','5,6,','0,1,2,3,4,',10000,0,0,'Jakarta','Jl. Melati No.404','0821985746237','',55,'OPEN','Khas Bangka'),(4,'2022-02-15 21:39:31.494','2022-02-15 21:39:31.494',NULL,'Restaurant Palembang','11:00','15:00','1,2,3,','4,5,6,0,',10000,0,0,'Jakarta','Jl. Cendrawasih No.500','0877821347234','',120,'OPEN','Khas Palembang'),(5,'2022-02-15 21:39:36.330','2022-02-15 21:39:36.330',NULL,'Restaurant Jambi','15:00','17:00','0,1,2,3,4,5,','6,',20000,0,0,'Jakarta','Jl. Anggrek No.200','0877123129472','',25,'OPEN','Khas Jambi'),(6,'2022-02-15 21:39:37.000','2022-02-15 21:39:37.000',NULL,'Restaurant Maduraa','15:00','17:00','0,1,2,3,4,5,','6,',20000,0,0,'Jakarta','Jl. Pisang No.201','0877123712333','',75,'Waiting for approval','Khas Madura');
/*!40000 ALTER TABLE `restaurant_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-16 20:37:58
