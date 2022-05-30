-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: northwind
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplier_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `status_id` int DEFAULT '0',
  `expected_date` datetime DEFAULT NULL,
  `shipping_fee` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `taxes` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,4) DEFAULT '0.0000',
  `payment_method` varchar(50) DEFAULT NULL,
  `notes` longtext,
  `approved_by` int DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `submitted_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `status_id` (`status_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `fk_purchase_orders_employees1` FOREIGN KEY (`created_by`) REFERENCES `employees` (`id`),
  CONSTRAINT `fk_purchase_orders_purchase_order_status1` FOREIGN KEY (`status_id`) REFERENCES `purchase_order_status` (`id`),
  CONSTRAINT `fk_purchase_orders_suppliers1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
INSERT INTO `purchase_orders` VALUES (90,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),(91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),(92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),(93,5,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),(94,6,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),(95,4,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),(96,1,5,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #30',2,'2006-01-22 00:00:00',5),(97,2,7,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #33',2,'2006-01-22 00:00:00',7),(98,2,4,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #36',2,'2006-01-22 00:00:00',4),(99,1,3,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #38',2,'2006-01-22 00:00:00',3),(100,2,9,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #39',2,'2006-01-22 00:00:00',9),(101,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #40',2,'2006-01-22 00:00:00',2),(102,1,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #41',2,'2006-04-04 00:00:00',1),(103,2,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #42',2,'2006-04-04 00:00:00',1),(104,2,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #45',2,'2006-04-04 00:00:00',1),(105,5,7,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,'Check','Purchase generated based on Order #46',2,'2006-04-04 00:00:00',7),(106,6,7,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #46',2,'2006-04-04 00:00:00',7),(107,1,6,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #47',2,'2006-04-04 00:00:00',6),(108,2,4,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #48',2,'2006-04-04 00:00:00',4),(109,2,4,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #48',2,'2006-04-04 00:00:00',4),(110,1,3,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #49',2,'2006-04-04 00:00:00',3),(111,1,2,'2006-03-31 00:00:00','2006-03-31 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #56',2,'2006-04-04 00:00:00',2),(140,6,NULL,'2006-04-25 00:00:00','2006-04-25 16:40:51',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-04-25 16:41:33',2),(141,8,NULL,'2006-04-25 00:00:00','2006-04-25 17:10:35',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-04-25 17:10:55',2),(142,8,NULL,'2006-04-25 00:00:00','2006-04-25 17:18:29',2,NULL,0.0000,0.0000,NULL,0.0000,'Check',NULL,2,'2006-04-25 17:18:51',2),(146,2,2,'2006-04-26 18:26:37','2006-04-26 18:26:37',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2),(147,7,2,'2006-04-26 18:33:28','2006-04-26 18:33:28',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2),(148,5,2,'2006-04-26 18:33:52','2006-04-26 18:33:52',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-30 16:48:05
