-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbfinal
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `selected_customer_address_id` int NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'12gktmddnjs@naver.com','Lee','010-1234-1234',1),(2,'10034kimim@gmailcom','Kang','010-2345-2345',2),(3,'hahaahworld@naver.com','Yeom','010-5678-5678',3),(4,'kimkim1234@gmail.com','Hong','010-3456-3456',4),(5,'hth1004@naver.com','Park','010-9876-9876',5);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_address` (
  `customer_address_id` int NOT NULL AUTO_INCREMENT,
  `house_number` int NOT NULL,
  `postal_code` int NOT NULL,
  `customer_id` int NOT NULL,
  `building_name` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_address_id`),
  KEY `postal_code` (`postal_code`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`postal_code`) REFERENCES `postalcode` (`postal_code`),
  CONSTRAINT `customer_address_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;
INSERT INTO `customer_address` VALUES (1,201,1111,1,'ubang'),(2,301,2222,2,'lotte'),(3,1501,3333,3,'daeou'),(4,2102,4444,4,'hoban'),(5,304,5555,5,'xi');
/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `bank_account` varchar(20) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `rating` float NOT NULL,
  `identity_card_number` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` int NOT NULL,
  `birth_date` datetime NOT NULL,
  `selected_vehicle_id` int NOT NULL,
  `current_order_id` int NOT NULL,
  `driver_licence_number` int NOT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `driver_licence_number` (`driver_licence_number`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`driver_licence_number`) REFERENCES `license` (`driver_licence_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'1002452632806',1,1.3,11,'ha','m','he30@gmail',1234,'1988-04-06 00:00:00',5,1,12345),(2,'123123213213',1,2.5,22,'kim','f','ge5@gmail',4565,'1997-01-22 00:00:00',4,2,23456),(3,'12312343545',1,3,33,'park','m','num@naver',45646,'2001-04-06 00:00:00',3,3,34567),(4,'345435454',1,4.7,44,'kim','m','dkfj@gmail',768,'2001-04-06 00:00:00',2,4,45678),(5,'1231243654756',1,5,55,'kim','f','hhh@naver',45645,'1975-03-09 00:00:00',1,5,56789);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license` (
  `driver_licence_number` int NOT NULL AUTO_INCREMENT,
  `licence_type` int DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`driver_licence_number`)
) ENGINE=InnoDB AUTO_INCREMENT=56790 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (12345,1,'2023-08-06 00:00:00'),(23456,2,'2026-10-12 00:00:00'),(34567,1,'2024-01-05 00:00:00'),(45678,1,'2026-11-12 00:00:00'),(56789,2,'2029-05-20 00:00:00');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `delivery_requirements` varchar(100) DEFAULT NULL,
  `order_datetime` varchar(30) DEFAULT NULL,
  `order_status` varchar(30) DEFAULT NULL,
  `delivery_compensation` int DEFAULT NULL,
  `total_order_value` int DEFAULT NULL,
  `customer_requisitions` varchar(100) DEFAULT NULL,
  `order_delivery_rating` int NOT NULL,
  `order_item` varchar(20) DEFAULT NULL,
  `restaurant_address_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `customer_address_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `driver_id` int DEFAULT NULL,
  `pickup_datetime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `restaurant_address_id` (`restaurant_address_id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `customer_address_id` (`customer_address_id`),
  KEY `customer_id` (`customer_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`restaurant_address_id`) REFERENCES `restaurant_address` (`restaurant_address_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`customer_address_id`) REFERENCES `customer_address` (`customer_address_id`),
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'keep it in front of the house','2022-01-01/12:12:12','completed',3000,21000,'not disposable product',5,'pasta',1,1,1,1,1,'2022-01-01/12:20:00'),(2,'keep it in front of the house','2022-02-01/12:12:12','completed',5000,30000,'not disposable product',4,'icecream',2,2,2,2,2,'2022-02-01/12:40:00'),(3,'keep it in front of the house','2022-01-12/12:12:12','completed',4000,60000,'not disposable product',3,'burger',3,3,3,3,3,'2022-01-12/12:30:00'),(4,'keep it in front of the house','2022-04-02/12:13:14','on the way to customer',3000,20000,'not disposable product',2,'bread',4,4,4,4,4,'2022-04-02/12:20:00'),(5,'keep it in front of the house','2022-05-01/23:12:12','on the way to customer',2000,10000,'no ketchup on the burger',1,'coffee',5,5,5,5,5,'2022-05-02/00:12:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postalcode`
--

DROP TABLE IF EXISTS `postalcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postalcode` (
  `postal_code` int NOT NULL AUTO_INCREMENT,
  `city` varchar(20) NOT NULL,
  `street` varchar(30) NOT NULL,
  PRIMARY KEY (`postal_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postalcode`
--

LOCK TABLES `postalcode` WRITE;
/*!40000 ALTER TABLE `postalcode` DISABLE KEYS */;
INSERT INTO `postalcode` VALUES (1010,'Busan','Haeundae'),(1111,'Gyeonggi','Daegiro'),(2222,'Busan','Haeundae'),(3333,'Seoul','Gangnamro'),(4444,'Seoul','Gangdongro'),(5555,'Gyeonggi','GiHeungro'),(6666,'Gyeonggi','Daegiro'),(7777,'Seoul','Gangnamro'),(8888,'Gyeonggi','GiHeungro'),(9999,'Seoul','Seocho');
/*!40000 ALTER TABLE `postalcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) NOT NULL,
  `restaurant_owner` varchar(30) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `selected_restaurant_address_id` int NOT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'mom\'s touch','ha','010-1234-7898',1),(2,'mcdonald','pete','010-5345-7898',2),(3,'subway','jung','010-7876-7867',3),(4,'pizza hot','la','010-4321-6789',4),(5,'pizza school','kim','010-1234-7890',5);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_address`
--

DROP TABLE IF EXISTS `restaurant_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_address` (
  `restaurant_address_id` int NOT NULL AUTO_INCREMENT,
  `house_number` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `postal_code` int NOT NULL,
  PRIMARY KEY (`restaurant_address_id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `postal_code` (`postal_code`),
  CONSTRAINT `restaurant_address_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `restaurant_address_ibfk_2` FOREIGN KEY (`postal_code`) REFERENCES `postalcode` (`postal_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_address`
--

LOCK TABLES `restaurant_address` WRITE;
/*!40000 ALTER TABLE `restaurant_address` DISABLE KEYS */;
INSERT INTO `restaurant_address` VALUES (1,1111,1,6666),(2,2222,2,7777),(3,3333,3,8888),(4,4444,4,9999),(5,5555,5,1010);
/*!40000 ALTER TABLE `restaurant_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `number_plate` int DEFAULT NULL,
  `transport_capacity` int NOT NULL,
  `insurance_number` int DEFAULT NULL,
  `vehicle_type` varchar(10) NOT NULL,
  `driver_id` int NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,3654,500,292839,'motobike',1),(2,2908,2000,273839,'car',2),(3,1398,25,378203,'truck',3),(4,1987,30,273839,'e-scooter',4),(5,NULL,25,NULL,'bycicle',5);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-13 19:40:39
