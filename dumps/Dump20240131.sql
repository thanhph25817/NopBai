-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trentruong1
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `tb_categories`
--

DROP TABLE IF EXISTS `tb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categories` (
  `id_categories` int NOT NULL AUTO_INCREMENT,
  `name_categories` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_categories`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categories`
--

LOCK TABLES `tb_categories` WRITE;
/*!40000 ALTER TABLE `tb_categories` DISABLE KEYS */;
INSERT INTO `tb_categories` VALUES (1,'Category A'),(2,'Category B'),(3,'Category C');
/*!40000 ALTER TABLE `tb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_customer`
--

DROP TABLE IF EXISTS `tb_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_customer` (
  `activated_customer` int DEFAULT NULL,
  `admin_customer` int DEFAULT NULL,
  `id_customer` int NOT NULL AUTO_INCREMENT,
  `email_customer` varchar(255) DEFAULT NULL,
  `full_name_customer` varchar(255) DEFAULT NULL,
  `pass_word_customer` varchar(255) DEFAULT NULL,
  `photo_customer` varchar(255) DEFAULT NULL,
  `user_name_customer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customer`
--

LOCK TABLES `tb_customer` WRITE;
/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_order` (
  `customer_id` int DEFAULT NULL,
  `status_order` int DEFAULT NULL,
  `id_order` bigint NOT NULL AUTO_INCREMENT,
  `address_order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `FKqcp43jdylvf2riad5s1x1i2dn` (`customer_id`),
  CONSTRAINT `FKqcp43jdylvf2riad5s1x1i2dn` FOREIGN KEY (`customer_id`) REFERENCES `tb_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orderdetail`
--

DROP TABLE IF EXISTS `tb_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_orderdetail` (
  `price_order_detail` double DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity_order_detail` int DEFAULT NULL,
  `id_order_detail` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id_order_detail`),
  KEY `FKor5s486jj9w5ws7wo78uu58ds` (`order_id`),
  KEY `FKrhomslwxt1mvl9es5oknfktja` (`product_id`),
  CONSTRAINT `FKor5s486jj9w5ws7wo78uu58ds` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`id_order`),
  CONSTRAINT `FKrhomslwxt1mvl9es5oknfktja` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orderdetail`
--

LOCK TABLES `tb_orderdetail` WRITE;
/*!40000 ALTER TABLE `tb_orderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_product` (
  `avalible` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp5jlmrxb09g20xgvbhxdjm54q` (`category_id`),
  CONSTRAINT `FKp5jlmrxb09g20xgvbhxdjm54q` FOREIGN KEY (`category_id`) REFERENCES `tb_categories` (`id_categories`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` VALUES (4,2,2,15.99,'2024-01-31','Product B'),(12,NULL,4,10.9912,'2027-01-31','Product B'),(122,NULL,5,11.22,'2027-01-31','Product ABC');
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-31 11:47:25
