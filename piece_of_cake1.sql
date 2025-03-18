-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: piece_of_cake1
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `AdminRole` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContactNo` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Thilini1226','owner','thilinibhagya1226@gmail.com','thilini1226',762523460,'2023-06-04 03:01:58','2023-06-04 03:01:58'),(3,'Bhagya99','owner','bhagya99@yahoo.com','bhagya99',770661671,'2023-06-04 15:06:46','2023-06-04 15:06:46');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birthday_cakes`
--

DROP TABLE IF EXISTS `birthday_cakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birthday_cakes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ProductID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birthday_cakes`
--

LOCK TABLES `birthday_cakes` WRITE;
/*!40000 ALTER TABLE `birthday_cakes` DISABLE KEYS */;
/*!40000 ALTER TABLE `birthday_cakes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `weight` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT '0',
  `total_price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cake_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (178,356,'http://127.0.0.1:8000/images/Birthday_Cakes/image1.jpg',4500.00,1,'1 kg','2023-08-30',0,'Rs.4500.00','2023-07-31 07:55:52','2023-07-31 07:55:52','Birthday_Cakes'),(179,358,'http://127.0.0.1:8000/images/Birthday_Cakes/image3.jpg',2500.00,1,'0.5 kg','2023-08-21',1,'Rs.2700.00','2023-07-31 08:04:50','2023-07-31 08:04:50','Birthday_Cakes'),(180,359,'http://127.0.0.1:8000/images/Birthday_Cakes/image4.jpg',2250.00,1,'0.5 kg','2023-08-30',0,'Rs.2250.00','2023-07-31 08:07:31','2023-07-31 08:07:31','Birthday_Cakes'),(181,360,'http://127.0.0.1:8000/images/Birthday_Cakes/image5.jpg',5300.00,1,'1 kg','2023-08-25',1,'Rs.5500.00','2023-07-31 08:08:56','2023-07-31 08:08:56','Birthday_Cakes'),(182,361,'http://127.0.0.1:8000/images/Birthday_Cakes/image9.jpg',7900.00,1,'1.5 kg','2023-08-22',0,'Rs.7900.00','2023-07-31 08:11:20','2023-07-31 08:11:20','Birthday_Cakes'),(183,362,'http://127.0.0.1:8000/images/Birthday_Cakes/image6.jpg',2250.00,1,'0.5 kg','2023-09-05',0,'Rs.2250.00','2023-07-31 09:44:03','2023-07-31 09:44:03','Birthday_Cakes'),(184,363,'http://127.0.0.1:8000/images/Birthday_Cakes/image5.jpg',7900.00,1,'1.5 kg','2023-08-30',0,'Rs.7900.00','2023-08-01 12:09:28','2023-08-01 12:09:28','Birthday_Cakes'),(185,364,'http://127.0.0.1:8000/images/Birthday_Cakes/image6.jpg',2250.00,1,'0.5 kg','2023-08-22',1,'Rs.2450.00','2023-08-01 14:09:24','2023-08-01 14:09:24','Birthday_Cakes'),(186,365,'http://127.0.0.1:8000/images/Birthday_Cakes/image14.jpg',7800.00,1,'1.5 kg','2023-08-14',0,'Rs.7800.00','2023-08-01 15:37:23','2023-08-01 15:37:23','Birthday_Cakes'),(188,367,'http://127.0.0.1:8000/images/Birthday_Cakes/image5.jpg',2900.00,1,'0.5 kg','2023-08-23',0,'Rs.2900.00','2023-08-01 22:08:52','2023-08-01 22:08:52','Birthday_Cakes'),(189,368,'http://127.0.0.1:8000/images/Birthday_Cakes/image1.jpg',4200.00,1,'1 kg','2023-08-21',0,'Rs.4200.00','2023-08-02 00:21:52','2023-08-02 00:21:52','Birthday_Cakes'),(190,369,'http://127.0.0.1:8000/images/Birthday_Cakes/image4.jpg',2650.00,1,'0.5 kg','2023-08-22',0,'Rs.2650.00','2023-08-02 00:24:10','2023-08-02 00:24:10','Birthday_Cakes'),(193,371,'http://127.0.0.1:8000/images/Birthday_Cakes/image2.jpg',4500.00,1,'1 kg','2023-08-23',0,'Rs.4500.00','2023-08-02 01:00:19','2023-08-02 01:00:19','Birthday_Cakes'),(194,373,'http://127.0.0.1:8000/images/Birthday_Cakes/image3.jpg',5400.00,1,'1 kg','2023-09-04',0,'Rs.5400.00','2023-08-05 07:59:46','2023-08-05 07:59:46','Birthday_Cakes'),(195,374,'http://127.0.0.1:8000/images/Birthday_Cakes/image1.jpg',50.00,500,'-','2023-09-10',1,'25000.00','2023-08-16 23:42:36','2023-08-16 23:42:36','Wedding_Cakes'),(196,375,'http://127.0.0.1:8000/images/Wedding_Cakes/image2.jpg',80.00,200,'-','2023-09-12',1,'16000.00','2023-08-17 22:52:16','2023-08-17 22:52:16','Wedding_Cakes'),(197,376,'http://127.0.0.1:8000/images/Wedding_Cakes/image3.jpg',100.00,150,'-','2023-09-14',1,'15000.00','2023-08-18 00:45:18','2023-08-18 00:45:18','Wedding_Cakes'),(198,377,'http://127.0.0.1:8000/images/Celebration_Cakes/image1.jpg',3000.00,1,'-','2023-09-16',1,'3000.00','2023-08-18 23:45:16','2023-08-18 23:45:16','Celebration_Cakes'),(199,378,'http://127.0.0.1:8000/images/Celebration_Cakes/image2.jpg',4500.00,1,'-','2023-09-19',1,'4500.00','2023-08-20 01:52:18','2023-08-20 01:52:18','Celebration_Cakes'),(200,379,'http://127.0.0.1:8000/images/Cup_Cakes/image1.jpg',100.00,30,'-','2023-09-24',0,'3000.00','2023-08-21 03:48:16','2023-08-21 03:48:16','Cup_Cakes'),(201,380,'http://127.0.0.1:8000/images/Cup_Cakes/image2.jpg',80.00,50,'-','2023-09-20',1,'4000.00','2023-08-21 23:42:45','2023-08-21 23:42:45','Cup_Cakes'),(202,381,'http://127.0.0.1:8000/images/Cup_Cakes/image3.jpg',110.00,40,'-','2023-09-20',1,'4400.00','2023-08-24 02:03:26','2023-08-24 02:03:26','Cup_Cakes'),(203,382,'http://127.0.0.1:8000/images/Wedding_Structures/image1.jpg',15000.00,1,'-','2023-09-26',0,'15000.00','2023-08-25 02:47:16','2023-08-25 02:47:16','Wedding_Structures'),(204,383,'http://127.0.0.1:8000/images/Wedding_Structures/image2.jpg',18000.00,1,'-','2023-09-29',0,'18000.00','2023-08-28 04:45:42','2023-08-28 04:45:42','Wedding_Structures');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES (299,356,'thilinibhagya1226@gmail.com','0702008437',NULL,NULL,'debitCreditCard','payFullPayment',NULL,'2023-07-31 07:56:12','2023-07-31 07:56:12'),(300,358,'bhagyatb26@gmail.com','0762523460','14B/22 Sadaham Uyana, Mattegoda','Kottawa','cashOnDelivery','payFullPayment',NULL,'2023-07-31 08:05:35','2023-07-31 08:05:35'),(301,359,'lihini21@yahoo.com','0756235410',NULL,NULL,'bankDeposit','payFullPayment',NULL,'2023-07-31 08:07:48','2023-07-31 08:07:48'),(302,360,'risini810@yahoo.com','+94762523460','360/A Perera Rd, Maharagama','Maharagama','debitCreditCard','payAdvance',NULL,'2023-07-31 08:09:45','2023-07-31 08:09:45'),(303,361,'thilinibhagya1226@gmail.com','0762523460',NULL,NULL,'debitCreditCard','payFullPayment',NULL,'2023-07-31 08:11:37','2023-07-31 08:11:37'),(304,362,'bhagyatb26@gmail.com','0717494067',NULL,NULL,'debitCreditCard','payAdvance',NULL,'2023-07-31 09:44:21','2023-07-31 09:44:21'),(305,363,'thilinibhagya1226@gmail.com','+94762523460',NULL,NULL,'debitCreditCard','payAdvance',NULL,'2023-08-01 13:16:33','2023-08-01 13:16:33'),(306,364,'bhagyatb26@gmail.com','0762523460','255/B De Village Rd, Homagama','Homagama','cashOnDelivery','payFullPayment',NULL,'2023-08-01 14:10:19','2023-08-01 14:10:19'),(307,365,'lihini21@yahoo.com','0702008437',NULL,NULL,'bankDeposit','payFullPayment',NULL,'2023-08-01 15:37:39','2023-08-01 15:37:39'),(308,367,'thilinibhagya1226@gmail.com','0717494067',NULL,NULL,'debitCreditCard','payAdvance',NULL,'2023-08-01 22:09:17','2023-08-01 22:09:17'),(309,368,'thilinibhagya1226@gmail.com','0762523460',NULL,NULL,'debitCreditCard','payAdvance',NULL,'2023-08-02 00:22:19','2023-08-02 00:22:19'),(310,369,'bhagyatb26@gmail.com','0762523460',NULL,NULL,'bankDeposit','payFullPayment',NULL,'2023-08-02 00:25:58','2023-08-02 00:25:58'),(311,370,'thilinibhagya1226@gmail.com','0702008437',NULL,NULL,'debitCreditCard','payAdvance',NULL,'2023-08-02 00:58:42','2023-08-02 00:58:42'),(312,371,'bhagyatb26@gmail.com','0762523460',NULL,NULL,'bankDeposit','payFullPayment',NULL,'2023-08-02 01:00:29','2023-08-02 01:00:29'),(313,373,'thilinibhagya1226@gmail.com','0762523460',NULL,NULL,'debitCreditCard','payFullPayment',NULL,'2023-08-05 07:59:57','2023-08-05 07:59:57');
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `ContactNo` varchar(12) NOT NULL,
  `UserName` varchar(40) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Bhagya','Samarakoon','bhagyatb26@gmail.com','0762523460','bhagya99','14B/22 Sadaham Uyana, Mattegoda','female','$2y$10$SYUJYWjeUremLYkMj2GT7.kZjLDUbqpi6ZJ.djAUx01RkGcLMZ9p6','2023-06-02 09:39:55','2023-06-02 09:39:55'),(3,'Thilini','Bhagya','thilinibhagya1226@gmail.com','0762523460','thinu26','360/A Araliya Road, Mt. Lavinia','female','$2y$10$3XZqy1oay4qkF2hv7wOSleNxHSPimU0aASEZOLzGzUDvrUdDdCsn.','2023-06-02 09:53:20','2023-06-02 09:53:20'),(4,'Nilakshi','Fernando','nilakshi24@gmail.com','0770664526','nishi24','12/A Siddamulla, Piliyandala','female','$2y$10$Qf5WGZXb3/ENoESKjA0xMu.YSWhx8vOIT9eKUF.CIiI4BV4Xg6jHu','2023-06-02 09:55:53','2023-06-02 09:55:53'),(5,'Risini','Dinara','risini810@yahoo.com','0770664526','risinidinara810','564/C Perera Rd., Kandy','female','$2y$10$vC58G5RJ2IWBin94UmT0z.1uLeHwhrg9qnIRT2bvfGHg/eyD9AlCC','2023-06-02 10:00:36','2023-06-02 10:00:36'),(6,'Aruna','Samarakoon','aruna0610@gmail.com','0717494067','aruna0610','256/A Saliya Mawatha, Mattegoda','male','$2y$10$z9cTwww4fE3qcpJ5S.LsOuTHdwZjp9ziaI1zArMQRgZx07ggmsZMa','2023-06-02 10:08:31','2023-06-02 10:08:31'),(7,'Lihini','Himara','lihini21@yahoo.com','0752141256','lihini22','542/B De Village Rd., Moratuwa','female','$2y$10$bswxZvJLjX1npngh97Giy.aNosuHVUpT1PNVCcaq.GCDAv731.ICW','2023-06-02 11:33:56','2023-06-02 11:33:56'),(8,'Dulanji','Fernando','dula45@gmail.com','0774562102','dula2002','15A/22 Pubudu Mawatha, Mattegoda','female','$2y$10$dI3Hd/3Hyb2TrDR7uDh6y.AOe1S5/dUdnLbxXeLFNSPbOE2uyYi6a','2023-06-04 13:47:52','2023-06-04 13:47:52'),(9,'Thilini','Samarakoon','bhagyatb26@gmail.com','0702008437','bhagya99','14B/22 Sadaham Uyana, Mattegoda','female','$2y$10$1G.JO0Ipf.5Z.EgJJT5UQ.129Qb3WsTIICK86hsCVFV/3dT4DqIP2','2023-06-04 14:58:01','2023-06-04 14:58:01'),(10,'Indika','Perera','indika80@gmail.com','0702008437','indika80','564/C Perera Rd., Kandy','male','$2y$10$ZR5d4eM0GCaepxoyPuv4FeV0fQKcLSceABb028DgkDXTp4aAj4Vsq','2023-06-24 08:14:54','2023-06-24 08:14:54'),(11,'Lilani','Wijegunewardena','lilani77@yahoo.com','0717494067','lilani77','15/A Lake View Rd, Rathmalana','female','$2y$10$LvH.rOV50U7zttpL6thwDOKN4qvGf7Uzj8yWEab/wlZmk4PoixuOW','2023-06-24 23:56:14','2023-06-24 23:56:14'),(12,'Tharushi','Perera','tharushi24@gmail.com','0771256410','tharu24','360/A Araliya Road, Mt. Lavinia','female','$2y$10$nFNFNmEASp1JSpX1KYF1SulZwWmZvjcOfQHBQKXpwKLZ3NpCvCFEm','2023-07-27 01:14:38','2023-07-27 01:14:38'),(13,'Yashodha','Siriwardene','yash03@yahoo.com','0778556120','yash03','255/B Salgaha junction, Mattegoda','female','$2y$10$JEF1v3TWdRdxXDitRC4O9.DJeQ.8XTwdPWuv12ISKt1VXPta3FSae','2023-07-27 04:29:38','2023-07-27 04:29:38');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customized_orders`
--

DROP TABLE IF EXISTS `customized_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customized_orders` (
  `CustomerID` int unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customized_orders`
--

LOCK TABLES `customized_orders` WRITE;
/*!40000 ALTER TABLE `customized_orders` DISABLE KEYS */;
INSERT INTO `customized_orders` VALUES (1,'lihini22','lihini21@yahoo.com','lihini26',NULL,'2023-06-24 11:39:44','2023-06-24 11:39:44'),(53,'lihini22','lihini21@yahoo.com','lihini26',NULL,'2023-07-06 02:12:28','2023-07-06 02:12:28'),(54,'lihini22','lihini21@yahoo.com','lihini26',NULL,'2023-07-16 06:51:15','2023-07-16 06:51:15'),(56,'indika80','indika80@gmail.com','indika80',NULL,'2023-07-16 09:05:48','2023-07-16 09:05:48'),(71,'lihini22','lihini21@yahoo.com','lihini1226',NULL,'2023-08-01 14:26:15','2023-08-01 14:26:15'),(72,'lihini22','lihini21@yahoo.com','dwduwndw56',NULL,'2023-08-01 14:26:40','2023-08-01 14:26:40'),(73,'lihini22','lihini21@yahoo.com','fefefefff',NULL,'2023-08-01 14:26:53','2023-08-01 14:26:53'),(74,'lihini22','lihini21@yahoo.com','lihini1226',NULL,'2023-08-01 14:28:19','2023-08-01 14:28:19'),(75,'lihini22','lihini21@yahoo.com','lihini1226',NULL,'2023-08-01 22:50:23','2023-08-01 22:50:23'),(76,'lihini22','lihini21@yahoo.com','lihini1226',NULL,'2023-08-02 01:02:46','2023-08-02 01:02:46'),(77,'lihini22','lihini21@yahoo.com','lihini1221',NULL,'2023-08-03 01:33:31','2023-08-03 01:33:31');
/*!40000 ALTER TABLE `customized_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installments`
--

DROP TABLE IF EXISTS `installments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `installments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `next_payment_date` date NOT NULL,
  `due_amount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` decimal(10,2) NOT NULL,
  `remaining_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `installments_order_id_foreign` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installments`
--

LOCK TABLES `installments` WRITE;
/*!40000 ALTER TABLE `installments` DISABLE KEYS */;
INSERT INTO `installments` VALUES (39,302,'2023-08-18','Rs.5500.00',2000.00,3500.00,'2023-07-31 08:09:56','2023-07-31 08:09:56'),(40,304,'2023-08-26','Rs.2250.00',800.00,1450.00,'2023-07-31 09:44:30','2023-07-31 09:44:30'),(41,305,'2023-08-17','Rs.7900.00',1000.00,6900.00,'2023-08-01 13:47:31','2023-08-01 13:47:31'),(42,308,'2023-08-17','Rs.2900.00',1000.00,1900.00,'2023-08-01 22:09:51','2023-08-01 22:09:51'),(43,309,'2023-08-18','Rs.4200.00',1500.00,2700.00,'2023-08-02 00:22:28','2023-08-02 00:22:28'),(44,311,'2023-08-16','Rs.6700.00',1000.00,5700.00,'2023-08-02 00:59:30','2023-08-02 00:59:30');
/*!40000 ALTER TABLE `installments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` int NOT NULL,
  `InvName` varchar(255) DEFAULT NULL,
  `Added_Qty` varchar(255) DEFAULT NULL,
  `Added_Date` date DEFAULT NULL,
  `Current_Qty` varchar(255) DEFAULT NULL,
  `Updated_Date` date DEFAULT NULL,
  PRIMARY KEY (`InventoryID`),
  UNIQUE KEY `InventoryID_UNIQUE` (`InventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Flour','10 kg','2023-08-10','8 kg','2023-08-15'),(2,'Sugar','10 kg','2023-08-10','5 kg','2023-08-17'),(3,'Butter','10 kg','2023-08-10','7 kg','2023-08-18'),(4,'Eggs','100','2023-08-10','85','2023-08-16'),(5,'Cocoa Powder','1 kg','2023-08-10','800 g','2023-08-20');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_06_02_150435_add_timestamps_to_customer_table',2),(6,'2023_06_03_183517_create_admins_table',3),(7,'2023_06_03_184100_create_admins_table',4),(9,'2023_06_03_184250_create_admins_table',5),(10,'2023_06_24_153413_create_customized_orders_table',6),(11,'2023_07_06_081440_create_orders_table',7),(12,'2023_07_06_181614_create_birthday_cakes_table',8),(14,'2023_07_06_194839_create_products_table',9),(15,'2023_07_21_055226_create_cart_table',10),(16,'2023_07_21_182220_create_checkout_table',11),(17,'2023_07_23_055404_update_checkout_table',12),(18,'2023_07_24_055412_create_installments_table',13),(19,'2023_07_27_072031_create_login_table',14),(20,'2023_07_27_072258_create_logins_table',15),(21,'2023_07_27_084337_remove_unique_constraint_from_login_table',15),(22,'2023_07_27_173204_update_orders_table',16),(23,'2023_07_27_191203_remove_user_name_registered_from_cart_table',17),(24,'2014_10_12_000000_create_users_table',1),(25,'2014_10_12_100000_create_password_reset_tokens_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ProductID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cake_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Cake_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Icing_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Input_Cake_Weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Input_Cake_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message_on_cake` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PaymentStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `DeliveryStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Reviews` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Feedbacks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Rating` int NOT NULL,
  `cake_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (356,'BG001','Princess Theme Cake',4500.00,'Ribbon','Buttercream_Icing','1 kg','chocolate','Happy Birthday Bhagya!','Completed','Pending','2023-07-31 07:55:43','2023-07-31 07:56:23',NULL,'Nice',0,'Birthday_Cakes'),(358,'BB003','Green Theme Cake',2500.00,'Butter','Fondant','0.5 kg','butter',NULL,'Completed','Completed','2023-07-31 08:04:30','2023-07-31 10:49:54',NULL,NULL,0,'Birthday_Cakes'),(359,'BC004','Fruit Theme Cake',2250.00,'Chocolate','Buttercream_Icing','0.5 kg','ribbon',NULL,'Pending','Pending','2023-07-31 08:07:11','2023-07-31 08:07:11',NULL,NULL,0,'Birthday_Cakes'),(360,'BC005','Chocolate & Strawberry Cake',5300.00,'Chocolate','Buttercream_Icing','1 kg','chocolate',NULL,'1st_Installment','Pending','2023-07-31 08:08:45','2023-07-31 08:10:04',NULL,NULL,0,'Birthday_Cakes'),(361,'BK009','Cartoon theme Cake',7900.00,'Chocolate','Fondant','1.5 kg','red_velvet',NULL,'Completed','Completed','2023-07-31 08:10:55','2023-07-31 10:50:11',NULL,NULL,0,'Birthday_Cakes'),(362,'BG006','Red & White Theme Heart Cake',2250.00,'Chocolate','Fondant','0.5 kg','ribbon',NULL,'1st_Installment','Pending','2023-07-31 09:43:58','2023-07-31 09:44:39',NULL,NULL,0,'Birthday_Cakes'),(363,'BC005','Chocolate & Strawberry Cake',7900.00,'Chocolate','Buttercream_Icing','1.5 kg','red_velvet','Happy Birthday Bhagya','1st_Installment','Pending','2023-08-01 11:23:36','2023-08-01 14:03:28',NULL,NULL,0,'Birthday_Cakes'),(364,'BG006','Red & White Theme Heart Cake',2250.00,'Chocolate','Fondant','0.5 kg','ribbon','Happy Birthday Risini','Completed','Completed','2023-08-01 14:07:43','2023-08-01 15:48:18',NULL,NULL,0,'Birthday_Cakes'),(365,'BF014','Red & White Theme Heart Cake',7800.00,'Red_Velvet','Fondant','1.5 kg','ribbon',NULL,'Pending','Pending','2023-08-01 15:37:16','2023-08-01 15:37:16',NULL,NULL,0,'Birthday_Cakes'),(367,'BC005','Chocolate & Strawberry Cake',2900.00,'Chocolate','Buttercream_Icing','0.5 kg','red_velvet','Happy Birthday Kasuni','1st_Installment','Completed','2023-08-01 22:08:45','2023-08-01 22:11:54',NULL,NULL,0,'Birthday_Cakes'),(368,'BG001','Princess Theme Cake',4200.00,'Ribbon','Buttercream_Icing','1 kg','ribbon',NULL,'1st_Installment','Pending','2023-08-02 00:21:45','2023-08-02 00:23:16',NULL,'Nice',0,'Birthday_Cakes'),(369,'BC004','Fruit Theme Cake',2650.00,'Chocolate','Buttercream_Icing','0.5 kg','red_velvet',NULL,'Pending','Pending','2023-08-02 00:24:04','2023-08-02 00:24:04',NULL,NULL,0,'Birthday_Cakes'),(370,'BG001','Princess Theme Cake',6700.00,'Ribbon','Buttercream_Icing','1.5 kg','red_velvet',NULL,'1st_Installment','Pending','2023-08-02 00:55:27','2023-08-02 00:59:53',NULL,'Nice',0,'Birthday_Cakes'),(371,'BC002','Guitar Theme Cake',4500.00,'Chocolate','Fondant','1 kg','ribbon',NULL,'Pending','Pending','2023-08-02 01:00:15','2023-08-02 01:00:15',NULL,NULL,0,'Birthday_Cakes'),(372,'BG001','Princess Theme Cake',4500.00,'Ribbon','Buttercream_Icing','1 kg','chocolate',NULL,'Pending','Completed','2023-08-03 01:31:20','2023-08-03 01:31:20',NULL,'Nice',0,'Birthday_Cakes'),(373,'BB003','Green Theme Cake',5400.00,'Butter','Fondant','1 kg','red_velvet',NULL,'Completed','Pending','2023-08-05 07:58:56','2023-08-05 08:00:00',NULL,NULL,0,'Birthday_Cakes');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ProductID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cake_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icing_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `feedbacks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `data_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'BG001','images/Birthday_Cakes/image1.jpg','4200.00','Birthday_Cakes','Princess Theme Cake','1 kg','Ribbon','Buttercream_Icing',5,'Nice','Cakes for Girls','2023-07-17 04:45:27','2023-07-17 04:45:27'),(2,'BC002','images/Birthday_Cakes/image2.jpg','4500.00','Birthday_Cakes','Guitar Theme Cake','1 kg','Chocolate','Fondant',5,NULL,'Common','2023-07-17 04:49:06','2023-07-17 04:49:06'),(3,'BB003','images/Birthday_Cakes/image3.jpg','5000.00','Birthday_Cakes','Green Theme Cake','1 kg','Butter','Fondant',0,NULL,'Cakes for Boys','2023-07-17 04:51:16','2023-07-17 04:51:16'),(4,'BC004','images/Birthday_Cakes/image4.jpg','4500.00/per 1kg','Birthday_Cakes','Fruit Theme Cake','500 g','Chocolate','Buttercream_Icing',5,NULL,'Common','2023-07-17 04:52:37','2023-07-17 04:52:37'),(5,'BC005','images/Birthday_Cakes/image5.jpg','5000.00','Birthday_Cakes','Chocolate & Strawberry Cake','1 kg','Chocolate','Buttercream_Icing',0,NULL,'Common','2023-07-17 04:54:11','2023-07-17 04:54:11'),(6,'BG006','images/Birthday_Cakes/image6.jpg','4500.00/per 1kg','Birthday_Cakes','Red & White Theme Heart Cake','500 g','Chocolate','Fondant',4,NULL,'Cakes for Girls','2023-07-17 04:55:36','2023-07-17 04:55:36'),(7,'BG007','images/Birthday_Cakes/image7.jpg','4200.00','Birthday_Cakes','Butterfly Theme Cake','1 kg','Ribbon','Fondant',0,NULL,'Cakes for Girls','2023-07-17 04:57:03','2023-07-17 04:57:03'),(8,'BW008','images/Birthday_Cakes/image8.jpg','3800.00','Birthday_Cakes','Flower Theme Cake','1 kg','Butter','Buttercream_Icing',0,NULL,'Cakes for Girls/Mothers','2023-07-17 04:58:20','2023-07-17 04:58:20'),(9,'BK009','images/Birthday_Cakes/image9.jpg','5000.00','Birthday_Cakes','Cartoon theme Cake','1 kg','Chocolate','Fondant',5,NULL,'Cakes for Girls/Boys','2023-07-17 04:59:49','2023-07-17 04:59:49'),(10,'BC010','images/Birthday_Cakes/image10.jpg','4200.00','Birthday_Cakes','iPhone Theme Cake','1 kg','Chocolate','Fondant',0,NULL,'Common','2023-07-17 05:00:46','2023-07-17 05:00:46'),(11,'BK011','images/Birthday_Cakes/image11.jpg','4000.00/per 1kg','Birthday_Cakes','Solar System Theme Cake','500 g','Chocolate','Buttercream_Icing',0,NULL,'Cakes for Girls/Boys','2023-07-17 05:02:07','2023-07-17 05:02:07'),(12,'BM012','images/Birthday_Cakes/image12.jpg','4000.00/per 1kg','Birthday_Cakes','Shirt Theme Cake','500 g','Butter','Buttercream_Icing',5,NULL,'Cakes for Boys/Fathers','2023-07-17 05:03:37','2023-07-17 05:03:37'),(13,'BC013','images/Birthday_Cakes/image13.jpg','3500.00','Birthday_Cakes','Mirror glaze Cake','500 g','Ribbon','Chocolate',0,NULL,'Common','2023-07-17 05:06:16','2023-07-17 05:06:16'),(14,'BF014','images/Birthday_Cakes/image14.jpg','5200.00','Birthday_Cakes','Red & White Theme Heart Cake','1 kg','Red_Velvet','Fondant',5,NULL,'Cakes for Fathers','2023-07-17 05:07:35','2023-07-17 05:07:35'),(15,'BG015','images/Birthday_Cakes/image15.jpg','4500.00','Birthday_Cakes','Garden Theme Cake','1 kg','Butter','Buttercream_Icing',0,NULL,'Cakes for Girls','2023-07-17 05:08:49','2023-07-17 05:08:49'),(16,'BK016','images/Birthday_Cakes/image16.jpg','4300.00','Birthday_Cakes','Rainbow Theme Cake','1 kg','Chocolate','Buttercream_Icing',4,NULL,'Cakes for Girls/Boys','2023-07-20 11:55:11','2023-07-20 11:55:11'),(17,'BG017','images/Birthday_Cakes/image17.jpg','3500.00','Birthday_Cakes','BTS Theme Cake','500 g','Butter','Fondant',0,NULL,'Cakes for Girls','2023-07-31 05:17:53','2023-07-31 05:17:53'),(18,'BW018','images/Birthday_Cakes/image18.jpg','4500.00','Birthday_Cakes','Red and White theme Heart Cake','1 kg','Red_Velvet','Fondant',0,NULL,'Cakes for Girls/Mothers','2023-08-01 02:43:40','2023-08-01 02:43:40'),(19,'BG019','images/Birthday_Cakes/image19.jpg','4500.00','Birthday_Cakes','21st Birthday Cake','1 kg','Butter','Buttercream_Icing',0,NULL,'Cakes for Girls','2023-08-01 15:32:34','2023-08-01 15:32:34'),(20,'BB020','images/Birthday_Cakes/image20.jpg','3200.00','Birthday_Cakes','Cartoon Theme Cake','1 kg','Coffee_Cake','Buttercream_Icing',0,NULL,'Cakes for Boys','2023-08-01 22:57:38','2023-08-01 22:57:38'),(21,'WC001','images/Wedding_Cakes/image21.jpg','250.00','Wedding_Cakes','-','100g','-','-',5,'Delicious','-','2023-08-03 00:00:48','2023-08-03 00:00:48'),(22,'WC002','images/Wedding_Cakes/image22.jpg','230.00','Wedding_Cakes','-','100g','-','-',4,'So tasty','-','2023-08-03 00:05:40','2023-08-03 00:05:40'),(23,'WC003','images/Wedding_Cakes/image23.jpg','210.00','Wedding_Cakes','-','100g','-','-',0,'-','-','2023-08-03 01:02:40','2023-08-03 01:02:40'),(24,'WC004','images/Wedding_Cakes/image24.jpg','260.00','Wedding_Cakes','-','100g','-','-',0,'-','-','2023-08-04 00:20:21','2023-08-04 00:20:21'),(25,'CC001','images/Celebration_Cakes/image25.jpg','2500.00','Celebration_Cakes','-','1 kg','Butter','Buttercream_Icing',5,'Yummy','-','2023-08-04 03:15:30','2023-08-04 03:15:30'),(26,'CC002','images/Celebration_Cakes/image26.jpg','2600.00','Celebration_Cakes','-','1 kg','Chocolate','Chocolate',4,'-','-','2023-08-04 03:40:21','2023-08-04 03:40:21'),(27,'WS001','images/Wedding_Structures/image27.jpg','10000.00','Wedding_Structures','-','2.5 kg','Butter','Fondant',5,'Beautiful & Tasty','-','2023-08-05 02:12:30','2023-08-05 02:12:30'),(28,'WS002','images/Wedding_Structures/image28.jpg','12000.00','Wedding_Structures','-','2.5 kg','Chocolate','Fondant',0,'-','-','2023-08-05 22:52:30','2023-08-05 22:52:30'),(29,'WS003','images/Wedding_Structures/image29.jpg','8000.00','Wedding_Structures','-','2 kg','Butter','Fondant',0,'-','-','2023-08-06 02:02:10','2023-08-06 02:02:10'),(30,'WS004','images/Wedding_Structures/image30.jpg','15000.00','Wedding_Structures','-','3 kg','Butter','Fondant',0,'-','-','2023-08-07 00:08:10','2023-08-07 00:08:10'),(31,'MC001','images/Cup_Cakes/image31.jpg','100.00','Cup_Cakes','-','100g','Butter','Fondant',5,'Delicious','-','2023-08-07 22:45:26','2023-08-07 22:45:26'),(32,'MC002','images/Cup_Cakes/image32.jpg','110.00','Cup_Cakes','-','100g','Chocolate','Buttercream_Icing',5,'-','-','2023-08-08 01:55:26','2023-08-08 01:55:26'),(33,'MC003','images/Cup_Cakes/image33.jpg','80.00','Cup_Cakes','-','100g','Ribbon','Buttercream_Icing',4,'-','-','2023-08-08 02:47:28','2023-08-08 02:47:28'),(34,'MC004','images/Cup_Cakes/image34.jpg','140.00','Cup_Cakes','-','100g','Red_Velvet','Fondant',5,'-','-','2023-08-08 19:45:26','2023-08-08 19:45:26'),(35,'MC005','images/Cup_Cakes/image35.jpg','100.00','Cup_Cakes','-','100g','Chocolate','Buttercream_Icing',5,'-','-','2023-08-08 05:12:15','2023-08-08 05:12:15');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2023-10-15 21:06:47
