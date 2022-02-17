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
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` longtext NOT NULL,
  `restaurant_detail_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_restaurants_deleted_at` (`deleted_at`),
  KEY `fk_restaurant_details_restaurant` (`restaurant_detail_id`),
  CONSTRAINT `fk_restaurant_details_restaurant` FOREIGN KEY (`restaurant_detail_id`) REFERENCES `restaurant_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'2022-02-15 21:39:17.992','2022-02-15 21:39:17.992',NULL,'restaurant1@outlook.my','f4679ddee42a58f06f60b943e0681a64762fa83ed4af1dbd79f4a1ed629a2966',1),(2,'2022-02-15 21:39:26.675','2022-02-15 21:39:26.675',NULL,'restaurant2@outlook.my','f4679ddee42a58f06f60b943e0681a64762fa83ed4af1dbd79f4a1ed629a2966',2),(3,'2022-02-15 21:39:28.743','2022-02-15 21:39:28.743',NULL,'restaurant3@outlook.my','f4679ddee42a58f06f60b943e0681a64762fa83ed4af1dbd79f4a1ed629a2966',3),(4,'2022-02-15 21:39:31.501','2022-02-15 21:39:31.501',NULL,'restaurant4@outlook.my','f4679ddee42a58f06f60b943e0681a64762fa83ed4af1dbd79f4a1ed629a2966',4),(5,'2022-02-15 21:39:36.336','2022-02-15 21:39:36.336',NULL,'restaurant5@outlook.my','f4679ddee42a58f06f60b943e0681a64762fa83ed4af1dbd79f4a1ed629a2966',5),(6,'2022-02-15 21:39:37.336','2022-02-15 21:39:37.336',NULL,'restaurant6@outlook.my','f4679ddee42a58f06f60b943e0681a64762fa83ed4af1dbd79f4a1ed629a2966',6);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-16 20:37:59
