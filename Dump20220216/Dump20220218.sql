CREATE DATABASE  IF NOT EXISTS `restobook` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restobook`;
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
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `id` bigint unsigned DEFAULT NULL,
  `restaurant_detail_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `rating` bigint NOT NULL,
  `comment` longtext,
  PRIMARY KEY (`restaurant_detail_id`,`user_id`),
  KEY `fk_ratings_user` (`user_id`),
  CONSTRAINT `fk_ratings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_restaurant_details_rating` FOREIGN KEY (`restaurant_detail_id`) REFERENCES `restaurant_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,3,3,'Tempatnya Kurang Bagus'),(7,1,4,3,'Tempatnya Kurang Bagus'),(2,2,3,4,'Tempatnya Bersih'),(8,2,4,5,'Tempatnya Bersih'),(3,3,3,4,'Tempatnya Rapi'),(9,3,4,4,'Tempatnya Rapi'),(4,4,3,4,'Pelayanannya Baik'),(10,4,4,5,'Pelayanannya Baik'),(5,5,3,3,'Pelayannya Kurang baik'),(11,5,4,3,'Pelayannya Kurang baik'),(6,6,3,4,'Makannanya Enak'),(12,6,4,5,'Makannanya Enak');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `top_ups`
--

DROP TABLE IF EXISTS `top_ups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top_ups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `invoice_id` longtext,
  `payment_url` longtext,
  `total` bigint NOT NULL,
  `status` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_top_ups_deleted_at` (`deleted_at`),
  KEY `fk_top_ups_user` (`user_id`),
  CONSTRAINT `fk_top_ups_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_ups`
--

LOCK TABLES `top_ups` WRITE;
/*!40000 ALTER TABLE `top_ups` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_ups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `restaurant_id` bigint unsigned NOT NULL,
  `date_time` datetime(3) DEFAULT NULL,
  `persons` bigint NOT NULL DEFAULT '1',
  `total` bigint NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'waiting for confirmation',
  PRIMARY KEY (`id`),
  KEY `idx_transactions_deleted_at` (`deleted_at`),
  KEY `fk_transactions_restaurant` (`restaurant_id`),
  KEY `fk_transactions_user` (`user_id`),
  CONSTRAINT `fk_transactions_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`),
  CONSTRAINT `fk_transactions_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'2022-02-15 21:39:17.992','2022-02-15 21:39:17.992',NULL,3,1,'2022-02-07 07:00:00.000',3,30000,'Success'),(2,'2022-02-15 21:40:17.992','2022-02-15 21:40:17.992',NULL,4,1,'2022-02-07 07:00:00.000',4,40000,'Success'),(3,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 08:00:00.000',5,50000,'Success'),(4,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 09:00:00.000',6,60000,'Success'),(5,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 10:00:00.000',7,70000,'Cancel'),(6,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 11:00:00.000',3,30000,'Fail'),(7,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 12:00:00.000',4,40000,'Fail'),(8,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 13:00:00.000',5,50000,'Cancel'),(9,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 14:00:00.000',6,60000,'Rejected'),(10,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 15:00:00.000',10,100000,'Rejected'),(11,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,4,1,'2022-02-07 16:00:00.000',6,60000,'Rejected'),(13,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 08:00:00.000',4,40000,'Sucess'),(14,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 09:00:00.000',4,40000,'Sucess'),(15,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 10:00:00.000',4,40000,'Cancel'),(16,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 11:00:00.000',4,40000,'Cancel'),(17,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 12:00:00.000',4,40000,'Fail'),(18,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 13:00:00.000',4,40000,'Fail'),(19,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 14:00:00.000',4,40000,'Fail'),(20,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 15:00:00.000',4,40000,'Rejected'),(21,'2022-02-15 23:40:17.992','2022-02-15 23:40:17.992',NULL,3,1,'2022-02-07 16:00:00.000',4,40000,'Rejected');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` longtext NOT NULL,
  `name` longtext NOT NULL,
  `phone_number` longtext,
  `reputation` bigint NOT NULL DEFAULT '80',
  `balance` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2022-02-15 21:37:50.120','2022-02-15 21:37:50.112',NULL,'admin@outlook.my','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9','admin','0877',999,0),(2,'2022-02-15 21:51:20.204','2022-02-15 21:51:20.204',NULL,'herlianto.inbox@gmail.com','e8d64aeed43b8afafe8823076c4587a5d8907bbdb080e3ee318e322122da6bca','herlianto','085384657365',80,0),(3,'2022-02-15 21:52:18.039','2022-02-15 21:52:18.039',NULL,'ilhamjunius713@gmail.com','b31984046c568f1fac1e6b56298a78cc11b608920db7e6d60bb22bf57cac34cb','ilham','085384657365',80,100000),(4,'2022-02-16 01:31:38.938','2022-02-16 01:31:38.938',NULL,'Andrewptjioo@gmail.com','07081c592699a67f4485da2be31a48dbbb1372faf2a0683dee2435a18ec81870','andrew','084384657365',80,100000);
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

-- Dump completed on 2022-02-18 10:07:29
