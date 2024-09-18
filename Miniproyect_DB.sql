CREATE DATABASE  IF NOT EXISTS `Miniproyect_1_E_commerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Miniproyect_1_E_commerce`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Miniproyect_1_E_commerce
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.23.10.2

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `area_id` int NOT NULL AUTO_INCREMENT,
  `name` enum('Home','Kitchen','Sport','Health','Appliances','Pets','Books') DEFAULT NULL,
  `nº_workers` int DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  UNIQUE KEY `area_id` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Home',0),(2,'Kitchen',0),(3,'Sport',0),(4,'Health',0),(5,'Appliances',0),(6,'Pets',0),(7,'Books',0);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  CONSTRAINT `mail_valid` CHECK (regexp_like(`mail`,_utf8mb3'^[^@]+@[^@]+.[a-z]{2,}$'))
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (22,'John','Doe','john.doe@example.com','+34-612-345-678'),(23,'Jane','Smith','jane.smith@example.com','+34-623-456-789'),(24,'Michael','Johnson','michael.johnson@example.com','+34-634-567-890'),(25,'Emily','Davis','emily.davis@example.com','+34-645-678-901'),(26,'David','Martinez','david.martinez@example.com','+34-656-789-012'),(27,'Sarah','Garcia','sarah.garcia@example.com','+34-667-890-123'),(28,'Robert','Wilson','robert.wilson@example.com','+34-678-901-234'),(29,'Linda','Moore','linda.moore@example.com','+34-689-012-345'),(30,'James','Taylor','james.taylor@example.com','+34-690-123-456'),(31,'Patricia','Anderson','patricia.anderson@example.com','+34-601-234-567'),(32,'William','Thomas','william.thomas@example.com','+34-612-345-678'),(33,'Elizabeth','Jackson','elizabeth.jackson@example.com','+34-623-456-789'),(34,'Charles','White','charles.white@example.com','+34-634-567-890'),(35,'Joseph','Harris','joseph.harris@example.com','+34-645-678-901'),(36,'Jessica','Martin','jessica.martin@example.com','+34-656-789-012'),(37,'Thomas','Thompson','thomas.thompson@example.com','+34-667-890-123'),(38,'Sarah','Garcia','sarah.garcia2@example.com','+34-678-901-234'),(39,'Daniel','Martinez','daniel.martinez@example.com','+34-689-012-345'),(40,'Laura','Robinson','laura.robinson@example.com','+34-690-123-456'),(41,'Paul','Clark','paul.clark@example.com','+34-601-234-567'),(42,'Nancy','Rodriguez','nancy.rodriguez@example.com','+34-612-345-678'),(43,'Alice','Walker','alice.walker@example.com','+33-1-23-45-67-89'),(44,'George','Martin','george.martin@example.com','+44-20-1234-5678'),(45,'Samantha','Adams','samantha.adams@example.com','+33-1-98-76-54-32'),(46,'Brian','Taylor','brian.taylor@example.com','+44-20-2345-6789'),(47,'Rachel','Clark','rachel.clark@example.com','+33-1-34-56-78-90'),(48,'Oscar','Lewis','oscar.lewis@example.com','+44-20-3456-7890'),(49,'Nina','Young','nina.young@example.com','+33-1-45-67-89-01'),(50,'Tom','King','tom.king@example.com','+44-20-4567-8901'),(51,'Megan','Scott','megan.scott@example.com','+33-1-56-78-90-12'),(52,'Kyle','Green','kyle.green@example.com','+44-20-5678-9012'),(53,'Hannah','Hill','hannah.hill@example.com','+33-1-67-89-01-23'),(54,'Edward','Adams','edward.adams@example.com','+44-20-6789-0123'),(55,'Julia','Mitchell','julia.mitchell@example.com','+33-1-78-90-12-34'),(56,'Isaac','Perez','isaac.perez@example.com','+44-20-7890-1234'),(57,'Tina','Roberts','tina.roberts@example.com','+33-1-89-01-23-45'),(58,'Victor','Baker','victor.baker@example.com','+44-20-8901-2345'),(59,'Clara','Gonzalez','clara.gonzalez@example.com','+33-1-90-12-34-56'),(60,'Simon','Nelson','simon.nelson@example.com','+44-20-9012-3456'),(61,'Paula','Carter','paula.carter@example.com','+33-1-01-23-45-67'),(62,'Arthur','Sanders','arthur.sanders@example.com','+44-20-0123-4567'),(63,'Eva','Hughes','eva.hughes@example.com','+33-1-12-34-56-78');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_invoice`
--

DROP TABLE IF EXISTS `customers_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_invoice` (
  `invoice_c_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `worker_id` int DEFAULT NULL,
  PRIMARY KEY (`invoice_c_id`),
  UNIQUE KEY `invoice_c_id` (`invoice_c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_invoice`
--

LOCK TABLES `customers_invoice` WRITE;
/*!40000 ALTER TABLE `customers_invoice` DISABLE KEYS */;
INSERT INTO `customers_invoice` VALUES (1,'2024-09-01',22,75.00,2),(2,'2024-09-02',25,300.00,4),(3,'2024-09-03',29,150.00,1),(4,'2024-09-04',31,200.00,3),(5,'2024-09-05',35,500.00,5),(6,'2024-09-06',40,90.00,2),(7,'2024-09-07',44,100.00,4),(8,'2024-09-08',48,200.00,1),(9,'2024-09-09',50,30.00,3),(10,'2024-09-10',52,25.00,5),(11,'2024-09-11',56,15.00,2),(12,'2024-09-12',59,45.00,4),(13,'2024-09-13',62,120.00,1),(14,'2024-09-14',22,200.00,3),(15,'2024-09-15',26,65.00,5),(16,'2024-09-16',28,175.00,2),(17,'2024-09-17',33,60.00,4),(18,'2024-09-18',37,300.00,1),(19,'2024-09-19',41,22.00,3),(20,'2024-09-20',45,550.00,5),(21,'2024-09-21',48,50.00,2),(22,'2024-09-22',51,150.00,4),(23,'2024-09-23',54,275.00,1),(24,'2024-09-24',57,180.00,3),(25,'2024-09-25',60,125.00,5),(26,'2024-09-26',63,90.00,2),(27,'2024-09-27',22,60.00,4),(28,'2024-09-28',27,300.00,1),(29,'2024-09-29',32,500.00,5),(30,'2024-09-30',39,140.00,3);
/*!40000 ALTER TABLE `customers_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `membership_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `category` enum('Basic','Premium','Gold') DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`membership_id`),
  UNIQUE KEY `membership_id` (`membership_id`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (1,22,'Gold','2024-01-01'),(2,24,'Basic','2024-01-02'),(3,26,'Premium','2024-01-03'),(4,28,'Gold','2024-01-04'),(5,30,'Basic','2024-01-05'),(6,32,'Premium','2024-01-06'),(7,34,'Gold','2024-01-07'),(8,36,'Basic','2024-01-08'),(9,38,'Premium','2024-01-09'),(10,40,'Gold','2024-01-10'),(11,42,'Basic','2024-01-11'),(12,44,'Premium','2024-01-12'),(13,46,'Gold','2024-01-13'),(14,48,'Basic','2024-01-14'),(15,50,'Premium','2024-01-15'),(16,52,'Gold','2024-01-16'),(17,54,'Basic','2024-01-17'),(18,56,'Premium','2024-01-18'),(19,58,'Gold','2024-01-19'),(20,60,'Basic','2024-01-20'),(21,62,'Premium','2024-01-21'),(22,63,'Gold','2024-01-22'),(23,25,'Basic','2024-01-23'),(24,29,'Premium','2024-01-24'),(25,33,'Gold','2024-01-25'),(26,39,'Basic','2024-01-26'),(27,45,'Premium','2024-01-27');
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_c_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,1),(2,2,13),(3,3,3),(4,4,36),(5,5,1),(6,6,5),(7,7,6),(8,8,7),(9,9,8),(10,10,9),(11,11,10),(12,12,11),(13,13,12),(14,14,13),(15,15,14),(16,16,15),(17,17,16),(18,18,17),(19,19,18),(20,20,19),(21,21,20),(22,21,21),(23,22,22),(24,22,23),(25,23,24),(26,23,25),(27,24,26),(28,24,27),(29,25,28),(30,25,29),(31,26,30),(32,26,31),(33,27,32),(34,28,33),(35,29,34),(36,30,35),(37,30,36);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_items`
--

DROP TABLE IF EXISTS `sales_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `type` enum('sofa','coffee table','chair','shelf','lamp','curtains','rug','decorative painting','mirror','TV stand','pot','pan','chef''s knife','cutting board','blender','microwave','toaster','coffee maker','plates','cutlery','soccer ball','bicycle','dumbbells','yoga mat','tennis racket','sports shoes','water bottle','jump rope','skis','skateboard','vitamins','protein supplement','thermometer','blood pressure monitor','massager','exercise plan','mineral water','hand sanitizer','weights','elastic band','refrigerator','washing machine','dryer','dishwasher','iron','fryer','fan','vacuum cleaner','ovens','kitchen robot','dog food','cat litter','dog toy','carrier','collar','pet bed','brush','aquarium','leash','pet snacks','novel','biography','cookbook','self-help book','mystery','fantasy','history','science fiction','poetry','texture book') DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `selling_unit_price` decimal(8,2) DEFAULT NULL,
  `purchase_unit_price` decimal(8,2) DEFAULT NULL,
  `area_id` int DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id` (`item_id`),
  KEY `area_id` (`area_id`),
  CONSTRAINT `sales_items_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_items`
--

LOCK TABLES `sales_items` WRITE;
/*!40000 ALTER TABLE `sales_items` DISABLE KEYS */;
INSERT INTO `sales_items` VALUES (1,'sofa',10,500.00,350.00,1),(2,'coffee table',25,120.00,80.00,1),(3,'chair',50,75.00,50.00,1),(4,'shelf',30,150.00,100.00,1),(5,'lamp',40,60.00,40.00,1),(6,'blender',100,45.00,30.00,2),(7,'microwave',80,100.00,75.00,2),(8,'toaster',60,30.00,20.00,2),(9,'coffee maker',70,80.00,60.00,2),(10,'chef\'s knife',200,25.00,15.00,2),(11,'soccer ball',150,20.00,10.00,3),(12,'bicycle',30,300.00,200.00,3),(13,'dumbbells',100,50.00,30.00,3),(14,'yoga mat',120,25.00,15.00,3),(15,'tennis racket',50,120.00,80.00,3),(16,'vitamins',200,15.00,8.00,4),(17,'protein supplement',150,50.00,30.00,4),(18,'thermometer',80,25.00,18.00,4),(19,'blood pressure monitor',60,60.00,45.00,4),(20,'massager',90,40.00,30.00,4),(21,'refrigerator',20,600.00,450.00,5),(22,'washing machine',15,550.00,400.00,5),(23,'dryer',12,500.00,350.00,5),(24,'dishwasher',10,650.00,500.00,5),(25,'vacuum cleaner',35,200.00,150.00,5),(26,'dog food',120,40.00,25.00,6),(27,'cat litter',100,25.00,15.00,6),(28,'dog toy',150,10.00,5.00,6),(29,'leash',80,20.00,12.00,6),(30,'pet bed',40,60.00,40.00,6),(31,'novel',200,20.00,12.00,7),(32,'biography',150,25.00,18.00,7),(33,'cookbook',120,30.00,20.00,7),(34,'self-help book',180,15.00,10.00,7),(35,'mystery',100,22.00,16.00,7);
/*!40000 ALTER TABLE `sales_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `worker_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `bank_account` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `area_id` int DEFAULT NULL,
  `salary` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`worker_id`),
  UNIQUE KEY `worker_id` (`worker_id`),
  KEY `area_id` (`area_id`),
  CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`),
  CONSTRAINT `mail2_valid` CHECK (regexp_like(`mail`,_utf8mb4'^[^@]+@[^@]+.[a-z]{2,}$'))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'John','Doe','1234567890','john.doe@mail.com','123-456-7890',1,2000.50),(2,'Jane','Smith','2345678901','jane.smith@mail.com','234-567-8901',2,2500.75),(3,'James','Johnson','3456789012','james.johnson@mail.com','345-678-9012',4,1800.00),(4,'Emily','Williams','4567890123','emily.williams@mail.com','456-789-0123',5,2700.25),(5,'Michael','Brown','5678901234','michael.brown@mail.com','567-890-1234',7,3200.10),(6,'Linda','Jones','6789012345','linda.jones@mail.com','678-901-2345',2,2100.30),(7,'Robert','Garcia','7890123456','robert.garcia@mail.com','789-012-3456',5,2400.50),(8,'Mary','Miller','8901234567','mary.miller@mail.com','890-123-4567',4,2900.65),(9,'William','Martinez','9012345678','william.martinez@mail.com','901-234-5678',4,3050.80),(10,'Patricia','Rodriguez','0123456789','patricia.rodriguez@mail.com','012-345-6789',5,2200.00),(11,'Charles','Hernandez','1234567891','charles.hernandez@mail.com','123-456-7891',7,2600.90),(12,'Barbara','Lopez','2345678902','barbara.lopez@mail.com','234-567-8902',6,1900.75),(13,'David','Gonzalez','3456789013','david.gonzalez@mail.com','345-678-9013',6,3400.25),(14,'Susan','Wilson','4567890124','susan.wilson@mail.com','456-789-0124',6,3100.10),(15,'Joseph','Anderson','5678901235','joseph.anderson@mail.com','567-890-1235',4,2000.50),(16,'Karen','Thomas','6789012346','karen.thomas@mail.com','678-901-2346',1,2650.75),(17,'Richard','Taylor','7890123457','richard.taylor@mail.com','789-012-3457',5,2300.65),(18,'Betty','Moore','8901234568','betty.moore@mail.com','890-123-4568',2,2950.85),(19,'Thomas','Jackson','9012345679','thomas.jackson@mail.com','901-234-5679',3,2200.25),(20,'Nancy','Lee','0123456781','nancy.lee@mail.com','012-345-6781',7,2050.50),(21,'Christopher','Perez','1234567892','christopher.perez@mail.com','123-456-7892',6,2500.00),(22,'Margaret','White','2345678903','margaret.white@mail.com','234-567-8903',2,2700.30),(23,'Daniel','Harris','3456789014','daniel.harris@mail.com','345-678-9014',5,1850.50),(24,'Lisa','Clark','4567890125','lisa.clark@mail.com','456-789-0125',7,3200.00),(25,'Paul','Lewis','5678901236','paul.lewis@mail.com','567-890-1236',3,2400.40),(26,'Sandra','Robinson','6789012347','sandra.robinson@mail.com','678-901-2347',6,2600.75),(27,'Mark','Walker','7890123458','mark.walker@mail.com','789-012-3458',1,1950.25),(28,'Ashley','Young','8901234569','ashley.young@mail.com','890-123-4569',1,2800.55),(29,'George','King','9012345671','george.king@mail.com','901-234-5671',5,2350.30),(30,'Dorothy','Wright','0123456782','dorothy.wright@mail.com','012-345-6782',4,2550.65);
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-18 15:18:25
