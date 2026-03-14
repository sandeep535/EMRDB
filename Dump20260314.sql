-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: emr2
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `allergies`
--

DROP TABLE IF EXISTS `allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergies` (
  `allergyid` bigint NOT NULL,
  `allergy` varchar(2000) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `indications` varchar(8000) DEFAULT NULL,
  `severity` bigint DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `allergymaster` double DEFAULT NULL,
  PRIMARY KEY (`allergyid`),
  KEY `FKd0n3eo946qr8fnlhgu846rgl4` (`severity`),
  CONSTRAINT `FKd0n3eo946qr8fnlhgu846rgl4` FOREIGN KEY (`severity`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergies`
--

LOCK TABLES `allergies` WRITE;
/*!40000 ALTER TABLE `allergies` DISABLE KEYS */;
INSERT INTO `allergies` VALUES (1,'asdasd',1,'asdasd',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'zxczxc',1,'zxczxc',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'zxczxc',1,'zxczxc',14,603,152,NULL,NULL,NULL,NULL,NULL),(53,'asd',1,'asd',15,652,152,NULL,NULL,NULL,NULL,NULL),(102,'asdasd',1,'asd',15,702,452,NULL,NULL,NULL,NULL,NULL),(103,'Allergy1',1,'sdssdf',15,752,502,NULL,NULL,NULL,NULL,NULL),(152,'Alleri',1,'',14,1102,552,1,'2024-03-25 20:46:52.500000',1,NULL,NULL),(202,'Alergy test1-edited',1,'ss',15,1202,503,NULL,'2024-05-21 13:40:16.392000',1,NULL,2),(252,'Test allergy-1',2,'ee',14,1302,503,NULL,'2024-05-21 13:36:53.304000',1,NULL,1),(302,'Test allergy-1',1,'Hand',14,1302,503,1,'2024-05-21 10:16:46.461000',1,NULL,1),(352,'Test allergy-1',1,'Test12',14,1402,53,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergies_seq`
--

DROP TABLE IF EXISTS `allergies_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergies_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergies_seq`
--

LOCK TABLES `allergies_seq` WRITE;
/*!40000 ALTER TABLE `allergies_seq` DISABLE KEYS */;
INSERT INTO `allergies_seq` VALUES (451);
/*!40000 ALTER TABLE `allergies_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergiesfavourite`
--

DROP TABLE IF EXISTS `allergiesfavourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergiesfavourite` (
  `allergiesfavouriteid` double NOT NULL,
  `allergyid` double DEFAULT NULL,
  `active` int DEFAULT NULL,
  `doctorid` int DEFAULT NULL,
  PRIMARY KEY (`allergiesfavouriteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergiesfavourite`
--

LOCK TABLES `allergiesfavourite` WRITE;
/*!40000 ALTER TABLE `allergiesfavourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `allergiesfavourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergiesmaster`
--

DROP TABLE IF EXISTS `allergiesmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergiesmaster` (
  `allergyid` bigint NOT NULL,
  `allergyname` varchar(100) DEFAULT NULL,
  `allergycode` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `allergytype` bigint DEFAULT NULL,
  PRIMARY KEY (`allergyid`),
  KEY `FKg6bthoke0qcyfabftfx9e21y4` (`allergytype`),
  CONSTRAINT `FKg6bthoke0qcyfabftfx9e21y4` FOREIGN KEY (`allergytype`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergiesmaster`
--

LOCK TABLES `allergiesmaster` WRITE;
/*!40000 ALTER TABLE `allergiesmaster` DISABLE KEYS */;
INSERT INTO `allergiesmaster` VALUES (1,'Test allergy-1','A001',1,17),(2,'Alergy test1-edited','A002',1,18);
/*!40000 ALTER TABLE `allergiesmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergiesmaster_seq`
--

DROP TABLE IF EXISTS `allergiesmaster_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergiesmaster_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergiesmaster_seq`
--

LOCK TABLES `allergiesmaster_seq` WRITE;
/*!40000 ALTER TABLE `allergiesmaster_seq` DISABLE KEYS */;
INSERT INTO `allergiesmaster_seq` VALUES (101);
/*!40000 ALTER TABLE `allergiesmaster_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_payment`
--

DROP TABLE IF EXISTS `bill_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_payment` (
  `PAYMENT_ID` bigint NOT NULL AUTO_INCREMENT,
  `BILL_ID` bigint NOT NULL,
  `PAYMENT_DATE` datetime DEFAULT NULL,
  `PAYMENT_AMOUNT` double DEFAULT NULL,
  `PAYMENT_MODE` varchar(100) DEFAULT NULL,
  `TRANSACTION_NUMBER` varchar(100) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `fk_bill_payment_bill` (`BILL_ID`),
  CONSTRAINT `fk_bill_payment_bill` FOREIGN KEY (`BILL_ID`) REFERENCES `visit_bill` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_payment`
--

LOCK TABLES `bill_payment` WRITE;
/*!40000 ALTER TABLE `bill_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_sequence_generator`
--

DROP TABLE IF EXISTS `bill_sequence_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_sequence_generator` (
  `BILL_SEQ_GEN_ID` bigint NOT NULL,
  `SEQUENCE_NUMBER` bigint NOT NULL,
  PRIMARY KEY (`BILL_SEQ_GEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_sequence_generator`
--

LOCK TABLES `bill_sequence_generator` WRITE;
/*!40000 ALTER TABLE `bill_sequence_generator` DISABLE KEYS */;
INSERT INTO `bill_sequence_generator` VALUES (1,13);
/*!40000 ALTER TABLE `bill_sequence_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `cityid` bigint NOT NULL,
  `cityname` varchar(45) DEFAULT NULL,
  `citycode` varchar(45) DEFAULT NULL,
  `stateid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'City1','CT1',1,1);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_seq`
--

DROP TABLE IF EXISTS `cities_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_seq`
--

LOCK TABLES `cities_seq` WRITE;
/*!40000 ALTER TABLE `cities_seq` DISABLE KEYS */;
INSERT INTO `cities_seq` VALUES (1);
/*!40000 ALTER TABLE `cities_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `countryid` bigint NOT NULL,
  `countryname` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `countrycode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'INDIA',1,'IND');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_seq`
--

DROP TABLE IF EXISTS `countries_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_seq`
--

LOCK TABLES `countries_seq` WRITE;
/*!40000 ALTER TABLE `countries_seq` DISABLE KEYS */;
INSERT INTO `countries_seq` VALUES (1);
/*!40000 ALTER TABLE `countries_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasourceconfig`
--

DROP TABLE IF EXISTS `datasourceconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datasourceconfig` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `driverClassName` varchar(45) DEFAULT NULL,
  `initialize` tinyint DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasourceconfig`
--

LOCK TABLES `datasourceconfig` WRITE;
/*!40000 ALTER TABLE `datasourceconfig` DISABLE KEYS */;
INSERT INTO `datasourceconfig` VALUES (1,'emr','jdbc:mysql://localhost:3306/emr?','admin','com.mysql.cj.jdbc.Driver',1,'root'),(2,'emr2','jdbc:mysql://localhost:3306/emr2?','admin','com.mysql.cj.jdbc.Driver',1,'root');
/*!40000 ALTER TABLE `datasourceconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosismaster`
--

DROP TABLE IF EXISTS `diagnosismaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosismaster` (
  `dignosisid` double NOT NULL,
  `dignosisname` varchar(150) DEFAULT NULL,
  `dignosiscode` varchar(150) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `dignosiscodeset` double DEFAULT NULL,
  PRIMARY KEY (`dignosisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosismaster`
--

LOCK TABLES `diagnosismaster` WRITE;
/*!40000 ALTER TABLE `diagnosismaster` DISABLE KEYS */;
INSERT INTO `diagnosismaster` VALUES (252,'Dia','D001',1,20),(302,NULL,NULL,1,20),(303,NULL,NULL,1,20),(304,'Do8','D006',1,20),(305,'D08','D007',1,20);
/*!40000 ALTER TABLE `diagnosismaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosismaster_seq`
--

DROP TABLE IF EXISTS `diagnosismaster_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosismaster_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosismaster_seq`
--

LOCK TABLES `diagnosismaster_seq` WRITE;
/*!40000 ALTER TABLE `diagnosismaster_seq` DISABLE KEYS */;
INSERT INTO `diagnosismaster_seq` VALUES (401);
/*!40000 ALTER TABLE `diagnosismaster_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs_list`
--

DROP TABLE IF EXISTS `drugs_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs_list` (
  `drugid` bigint NOT NULL,
  `drugname` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `drugcode` varchar(45) DEFAULT NULL,
  `drugdose` varchar(255) DEFAULT NULL,
  `drugalert` bigint DEFAULT NULL,
  `drugform` bigint DEFAULT NULL,
  `drugtype` bigint DEFAULT NULL,
  `drugunit` bigint DEFAULT NULL,
  `defaultduration` int DEFAULT NULL,
  `defaultInstruction` varchar(500) DEFAULT NULL,
  `sig` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`drugid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs_list`
--

LOCK TABLES `drugs_list` WRITE;
/*!40000 ALTER TABLE `drugs_list` DISABLE KEYS */;
INSERT INTO `drugs_list` VALUES (1,'Druug_1',1,'D001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Druug_2',1,'D002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Druug_3',1,'D003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Dolo',1,'D12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Drug Brand test',1,'D00123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Generic Med 1',1,'G0012','11',11,18,10,NULL,NULL,NULL,NULL),(105,'Sample_1',1,'D001212','100',11,18,9,26,NULL,NULL,NULL),(106,'Sample_2',1,'D001212','200',11,19,9,24,NULL,NULL,NULL),(152,'Sample_3',1,'S001212','250',11,18,9,26,2,'Checking default instruction',NULL);
/*!40000 ALTER TABLE `drugs_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs_list_seq`
--

DROP TABLE IF EXISTS `drugs_list_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs_list_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs_list_seq`
--

LOCK TABLES `drugs_list_seq` WRITE;
/*!40000 ALTER TABLE `drugs_list_seq` DISABLE KEYS */;
INSERT INTO `drugs_list_seq` VALUES (251);
/*!40000 ALTER TABLE `drugs_list_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `id` bigint NOT NULL,
  `empid` int DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `designation` bigint DEFAULT NULL,
  `gender` bigint DEFAULT NULL,
  `title` bigint DEFAULT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `role` bigint DEFAULT NULL,
  `age` int DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `mobilenumber` varchar(45) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `specilaity` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrjv8jc8d49tnsshk3qfha4sid` (`designation`),
  KEY `FKnu4pyxe4lbn4x257lq20du7wt` (`gender`),
  KEY `FKg0tqgh48ukndxpgify34004pf` (`role`),
  KEY `FKgup3w2insawp2p4nywkmdjbf4` (`title`),
  CONSTRAINT `FKg0tqgh48ukndxpgify34004pf` FOREIGN KEY (`role`) REFERENCES `masterdata` (`id`),
  CONSTRAINT `FKgup3w2insawp2p4nywkmdjbf4` FOREIGN KEY (`title`) REFERENCES `lookup` (`lookupid`),
  CONSTRAINT `FKnu4pyxe4lbn4x257lq20du7wt` FOREIGN KEY (`gender`) REFERENCES `lookup` (`lookupid`),
  CONSTRAINT `FKrjv8jc8d49tnsshk3qfha4sid` FOREIGN KEY (`designation`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,NULL,'Sandeep','Mandalapu',1,1,7,NULL,NULL,6,40,'2025-06-29 00:00:00',NULL,'84695608',NULL,'2025-06-29 19:12:10.411000',1,NULL,9),(2,NULL,'Ram','Varanasi',1,1,7,NULL,'',6,41,'1984-06-29 00:00:00',NULL,'846956081',NULL,'2025-06-29 19:14:35.490000',1,NULL,10),(3,NULL,'testuser','lname',4,1,NULL,'$2a$10$9kYDbY2PLjp8d.R9JuwbNuyVZfMGrtqQ7x5K1MpUrvIGulbESCiZC','testuser',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,NULL,'fsfs','sjhs',4,1,NULL,'$2a$10$eAy2qRz1NXeOGCC.qw4qBuwZS2Ye3T46CoJz2N8Z1aoNkHiacMZky','testuser2',6,21,'2023-11-28 08:00:00','san@gmail.com','90321',NULL,NULL,NULL,NULL,NULL),(252,NULL,'Shiva','S',4,1,NULL,'$2a$10$MBMqFy5J58wgXw1o7DYnpe9MbG7sChkk6Zrw9/Kkj/V7NMj3JZD8G','shiva',7,27,'2024-01-01 08:00:00','sa@gmail.com','2121212121',NULL,NULL,NULL,NULL,NULL),(302,NULL,'Sandeep','Mandalapu',4,1,NULL,'$2a$10$jblrjdI7g92ul/1/xtEUxefwqd5xNRvkDYwaQH38HZp3xqqezsFcC','sandeep535',7,31,'2024-01-29 08:00:00','sa@gmail.com','9032151096',1,'2024-02-15 16:44:32.117000',1,NULL,NULL),(352,NULL,'testuser','user',4,1,NULL,'$2a$10$sk.gI0asn6iRDsFRFj8ICupQRwCsVSlESW9FmRUm4HBWE1Ei0dA56','testuser2',7,0,'2024-02-27 08:00:00','sand@gmail.com','9032151096',1,'2024-03-03 12:45:05.666000',1,NULL,NULL),(402,NULL,'Admin','Test',4,1,NULL,'$2a$10$YtT/vm8JmQLEZsymGM8rne09Vez44dncnlOm1aA6iRdrlNMY0W0K6','admintest',6,0,'2024-02-27 08:00:00','abc@gmail.com','121211',1,'2024-03-06 13:34:02.857000',1,NULL,NULL),(403,NULL,'Nurse','Test',4,1,NULL,'$2a$10$TpVaNOw.4Xqtl7OLMRrApOHYswaE5Bg85K654f/Wzq6z4.yzRERYK','nursetest',8,0,'2024-02-27 08:00:00','abc@gmail.com','21211',1,'2024-03-06 13:34:21.003000',1,NULL,NULL),(404,NULL,'Doctor','Test',4,1,NULL,'$2a$10$rn9UBa7IxkCBttsQj2vaY.LE0KNCiBIZVi9MAaTg0PkoAgRhfh5Mm','doctortest',7,0,'2024-03-01 08:00:00','ab@gmail.com','123213',1,'2024-03-06 13:35:10.381000',1,NULL,NULL);
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_details_seq`
--

DROP TABLE IF EXISTS `employee_details_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details_seq`
--

LOCK TABLES `employee_details_seq` WRITE;
/*!40000 ALTER TABLE `employee_details_seq` DISABLE KEYS */;
INSERT INTO `employee_details_seq` VALUES (501);
/*!40000 ALTER TABLE `employee_details_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_address`
--

DROP TABLE IF EXISTS `emr_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_address` (
  `addressid` bigint NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` bigint DEFAULT NULL,
  `country` bigint DEFAULT NULL,
  `state` bigint DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  PRIMARY KEY (`addressid`),
  KEY `FKnrjoviehacjp6a6si9rlkfkuc` (`city`),
  KEY `FKidnaok8ooc9ajllvp3bldg6e9` (`country`),
  KEY `FK6vnr92wv7ji9kpttwki0g5mdw` (`state`),
  CONSTRAINT `FK6vnr92wv7ji9kpttwki0g5mdw` FOREIGN KEY (`state`) REFERENCES `states` (`stateid`),
  CONSTRAINT `FKidnaok8ooc9ajllvp3bldg6e9` FOREIGN KEY (`country`) REFERENCES `countries` (`countryid`),
  CONSTRAINT `FKnrjoviehacjp6a6si9rlkfkuc` FOREIGN KEY (`city`) REFERENCES `cities` (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_address`
--

LOCK TABLES `emr_address` WRITE;
/*!40000 ALTER TABLE `emr_address` DISABLE KEYS */;
INSERT INTO `emr_address` VALUES (53,'add1','add2',1,1,1,12131),(102,'add1','add3',1,1,1,12345),(152,'add2','add3',1,1,1,1121);
/*!40000 ALTER TABLE `emr_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_address_seq`
--

DROP TABLE IF EXISTS `emr_address_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_address_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_address_seq`
--

LOCK TABLES `emr_address_seq` WRITE;
/*!40000 ALTER TABLE `emr_address_seq` DISABLE KEYS */;
INSERT INTO `emr_address_seq` VALUES (251);
/*!40000 ALTER TABLE `emr_address_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_diagnosis`
--

DROP TABLE IF EXISTS `emr_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_diagnosis` (
  `diagnosisid` bigint NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `dignosismasterid` varchar(45) DEFAULT NULL,
  `emr_diagnosiscol` double DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`diagnosisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_diagnosis`
--

LOCK TABLES `emr_diagnosis` WRITE;
/*!40000 ALTER TABLE `emr_diagnosis` DISABLE KEYS */;
INSERT INTO `emr_diagnosis` VALUES (1,NULL,102,302,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'dmk',53,402,1,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Notes checking updated',53,452,1,NULL,NULL,NULL,NULL,NULL,NULL),(352,'Diagonis',53,502,1,NULL,NULL,NULL,NULL,NULL,NULL),(402,'Headache',53,553,1,NULL,NULL,NULL,NULL,NULL,NULL),(452,'fgdfg',53,503,1,NULL,NULL,NULL,NULL,NULL,NULL),(502,'dsvsdv',53,602,1,NULL,NULL,NULL,NULL,NULL,NULL),(503,'dfsdf',152,603,1,NULL,NULL,NULL,NULL,NULL,NULL),(552,'xcx',152,652,1,NULL,NULL,NULL,NULL,NULL,NULL),(602,'Dia notes sdsd',452,702,1,NULL,NULL,NULL,NULL,NULL,NULL),(603,'sdvsdv',502,752,1,NULL,NULL,NULL,NULL,NULL,NULL),(652,'test',552,1102,1,NULL,NULL,1,'2024-03-25 20:46:52.435000',1,NULL),(702,'aad',53,1302,1,NULL,NULL,NULL,'2024-07-29 10:47:57.645000',1,NULL),(752,'dcsdc',552,1352,1,NULL,NULL,1,'2024-07-29 15:09:24.703000',1,NULL),(753,'headache',652,1353,1,NULL,NULL,1,'2024-07-29 20:29:26.838000',1,NULL),(754,'headache',652,1353,1,NULL,NULL,1,'2024-07-29 20:29:33.764000',1,NULL),(755,'headache',652,1353,1,NULL,NULL,1,'2024-07-29 20:29:44.437000',1,NULL),(756,'headache',652,1353,1,NULL,NULL,1,'2024-07-29 20:29:48.716000',1,NULL),(757,'headache',652,1353,1,NULL,NULL,1,'2024-07-29 20:29:49.826000',1,NULL),(758,'headache',652,1353,1,NULL,NULL,1,'2024-07-29 20:30:36.953000',1,NULL),(759,'headache',652,1353,1,NULL,NULL,1,'2024-07-29 20:31:20.357000',1,NULL),(804,'Diagnosis02',53,1402,1,'4',NULL,NULL,'2024-07-30 14:42:10.236000',1,NULL),(852,'Diagnosis01',53,1452,1,'3',NULL,NULL,'2024-08-01 10:59:05.901000',1,NULL),(853,'Diagnosis01',102,1453,1,'3',NULL,NULL,'2024-08-01 13:06:44.462000',1,NULL),(854,'Dia',503,1552,1,'252',NULL,1,'2024-08-22 21:20:18.823000',1,NULL),(952,'Diagnosis01',102,1602,1,'3',NULL,NULL,'2024-08-08 12:11:16.332000',1,NULL),(1002,'Dia',53,1906,1,'252',NULL,1,'2025-04-26 15:10:01.990000',1,NULL),(1052,'Dia',552,2003,1,'252',NULL,NULL,'2025-06-14 21:06:03.759000',1,NULL),(1102,'Dia',53,2152,1,'252',NULL,1,'2025-07-27 11:23:11.720000',1,NULL),(1152,'Dia',652,2252,1,'252',NULL,1,'2025-09-13 16:50:34.741000',1,NULL),(1202,'Dia',53,2353,1,'252',NULL,1,'2026-01-27 20:13:55.424000',1,NULL);
/*!40000 ALTER TABLE `emr_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_diagnosis_seq`
--

DROP TABLE IF EXISTS `emr_diagnosis_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_diagnosis_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_diagnosis_seq`
--

LOCK TABLES `emr_diagnosis_seq` WRITE;
/*!40000 ALTER TABLE `emr_diagnosis_seq` DISABLE KEYS */;
INSERT INTO `emr_diagnosis_seq` VALUES (1301);
/*!40000 ALTER TABLE `emr_diagnosis_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_notes`
--

DROP TABLE IF EXISTS `emr_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_notes` (
  `notesid` bigint NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_notes`
--

LOCK TABLES `emr_notes` WRITE;
/*!40000 ALTER TABLE `emr_notes` DISABLE KEYS */;
INSERT INTO `emr_notes` VALUES (1,NULL,302,102,1,NULL,NULL,NULL,NULL),(2,'kdvnv',402,53,1,NULL,NULL,NULL,NULL),(52,'General notes updated',452,53,1,NULL,NULL,NULL,NULL),(152,'General notes',502,53,1,NULL,NULL,NULL,NULL),(202,'The patient is suffering from headache',553,53,1,NULL,NULL,NULL,NULL),(252,'dfgdfg',503,53,1,NULL,NULL,NULL,NULL),(302,'sdcsdc',602,53,1,NULL,NULL,NULL,NULL),(303,'sdsds',603,152,1,NULL,NULL,NULL,NULL),(352,'sd',652,152,1,NULL,NULL,NULL,NULL),(402,'gENRAL NOTES',702,452,1,NULL,NULL,NULL,NULL),(403,'ssdfsdfsd',752,502,1,NULL,NULL,NULL,NULL),(452,'checkinh',1102,552,1,1,'2024-03-25 20:46:52.406000',1,NULL),(502,'ss',1202,503,1,1,'2024-05-14 18:46:15.226000',1,NULL),(552,'Updated General notes',1402,53,1,NULL,'2024-06-19 15:19:43.407000',1,NULL),(602,'Test Dia',1452,552,1,NULL,'2024-06-21 19:47:52.781000',1,NULL),(654,'xczx',1552,503,1,1,'2024-08-22 21:20:18.822000',1,NULL),(752,'zs dvs sds sdf sd sdv dc sdvsv ',1652,503,1,1,'2024-08-26 13:53:55.766000',1,NULL),(753,'',1702,53,1,1,'2024-08-30 12:56:42.216000',1,NULL),(802,'dasd',1906,53,1,1,'2025-04-26 15:10:01.980000',1,NULL),(852,'Notes ',2003,552,1,NULL,'2025-06-14 21:06:03.759000',1,NULL),(902,'Notes',2152,53,1,1,'2025-07-27 11:23:11.705000',1,NULL),(952,'ad',2252,652,1,1,'2025-09-13 16:50:34.709000',1,NULL),(1002,'czzxc',2353,53,1,1,'2026-01-27 20:13:55.394000',1,NULL);
/*!40000 ALTER TABLE `emr_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_notes_seq`
--

DROP TABLE IF EXISTS `emr_notes_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_notes_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_notes_seq`
--

LOCK TABLES `emr_notes_seq` WRITE;
/*!40000 ALTER TABLE `emr_notes_seq` DISABLE KEYS */;
INSERT INTO `emr_notes_seq` VALUES (1101);
/*!40000 ALTER TABLE `emr_notes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_prescriptions`
--

DROP TABLE IF EXISTS `emr_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_prescriptions` (
  `prescriptionid` bigint NOT NULL,
  `drugid` bigint DEFAULT NULL,
  `dose` varchar(45) DEFAULT NULL,
  `doseunit` varchar(30) DEFAULT NULL,
  `sig` varchar(100) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `instructions` varchar(8000) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `capturedby` bigint DEFAULT NULL,
  `drugname` varchar(200) DEFAULT NULL,
  `endate` datetime DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`prescriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_prescriptions`
--

LOCK TABLES `emr_prescriptions` WRITE;
/*!40000 ALTER TABLE `emr_prescriptions` DISABLE KEYS */;
INSERT INTO `emr_prescriptions` VALUES (1,1,'1','MG','sdlk','2023-12-14 00:00:00','',1,302,102,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'100','mg','Oral 2 times daily','2023-12-25 00:00:00','instructions added',1,402,53,1,NULL,'2023-12-29 00:00:00',NULL,NULL,NULL,NULL),(52,1,'20','mg','Oral daily once','2023-08-12 00:00:00','Instructions',1,452,53,1,NULL,'2023-08-12 00:00:00',NULL,NULL,NULL,NULL),(102,2,'23','mg','sass','2024-01-03 00:00:00','ss',1,452,53,1,NULL,'2024-01-13 00:00:00',NULL,NULL,NULL,NULL),(152,3,'25','mh','sdasd','2024-01-03 00:00:00','zczxczxc',1,452,53,1,NULL,'2024-01-19 00:00:00',NULL,NULL,NULL,NULL),(202,1,'100','mg','nsdjsnd','2024-01-01 00:00:00','xcxc',1,502,53,1,NULL,'2024-01-26 00:00:00',NULL,NULL,NULL,NULL),(252,1,'100','mg','Oral three times day','2024-01-06 00:00:00','take before meals',1,553,53,1,NULL,'2024-01-13 00:00:00',NULL,NULL,NULL,NULL),(302,1,'23','mg','sdfsdf','2024-01-02 00:00:00','fgdfg',1,503,53,1,NULL,'2024-01-23 00:00:00',NULL,NULL,NULL,NULL),(352,2,'231','mg','dsfs','2024-01-02 00:00:00','sdfsdfsd',1,503,53,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(402,2,'111','sd','sadasd','2024-01-15 00:00:00',NULL,1,602,53,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(403,1,'11','ng','sdsdf','2024-01-03 00:00:00','zczxc',1,603,152,1,NULL,'2024-01-05 00:00:00',NULL,NULL,NULL,NULL),(452,3,'22','ad','sad','2024-01-02 00:00:00','zxczxc',1,652,152,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(502,1,'11','f','asd','2024-01-01 00:00:00','sdas',1,702,452,1,'Druug_1','2024-01-25 00:00:00',NULL,NULL,NULL,NULL),(503,1,'11','mg','sdnd sjkdn','2024-01-02 00:00:00',NULL,1,752,502,1,'Druug_1','2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(552,1,'1','mg','morining','2024-03-17 00:00:00','ss',1,1102,552,1,'Druug_1','2024-03-29 00:00:00',1,'2024-03-25 20:46:52.468000',1,NULL),(602,1,'1',NULL,NULL,'2024-05-01 00:00:00','ss',1,1202,503,1,'Druug_1','2024-05-17 00:00:00',1,'2024-05-14 18:46:15.258000',1,NULL),(652,52,'11','11','Daily Once At Night','2024-06-11 00:00:00','After Lunch',1,1402,53,1,'Drug Brand test','2024-06-28 00:00:00',1,'2024-06-19 15:19:43.406000',1,NULL),(702,52,'1','mg','11','2024-06-18 00:00:00','sss',1,1452,552,1,'Drug Brand test','2024-06-29 00:00:00',NULL,'2024-06-21 19:47:52.781000',1,NULL),(703,1,'11','Mg','sss',NULL,NULL,1,1452,552,1,'Druug_1',NULL,1,'2024-06-21 19:47:52.781000',1,NULL),(752,3,'20','mg','Daily Night','2024-06-23 00:00:00','Test',1,1502,552,1,'Druug_3','2024-06-25 00:00:00',1,'2024-06-23 15:18:46.068000',1,NULL),(804,52,'1','s','sdsd','2024-08-22 00:00:00',NULL,1,1552,503,1,'Drug Brand test','2024-08-22 00:00:00',1,'2024-08-22 21:20:18.823000',1,NULL),(852,52,'12','ng',' adasd','2025-04-26 00:00:00',' asdasd',1,1906,53,1,'Drug Brand test','2025-04-26 00:00:00',1,'2025-04-26 15:10:01.999000',1,NULL),(902,3,'12','ng','Daily twice','2025-06-14 00:00:00',' After lunch',1,2003,552,1,'Druug_3','2025-06-26 00:00:00',NULL,'2025-06-14 21:06:03.759000',1,NULL),(903,105,'Tablet','mg',' adasd','2025-06-14 00:00:00',' asdasd',1,2003,552,1,'Sample_1','2025-06-14 00:00:00',NULL,'2025-06-14 21:06:03.759000',1,NULL),(904,152,'Tablet','mg',' dasd','2025-06-14 00:00:00','Checking default instructions',1,2003,552,1,'Sample_3','2025-06-14 00:00:00',NULL,'2025-06-14 21:06:03.759000',1,NULL),(905,106,'Injection','ml',' DASD','2025-06-14 00:00:00',' ASASD',1,2003,552,1,'Sample_2','2025-06-14 00:00:00',NULL,'2025-06-14 21:06:03.759000',1,NULL),(952,52,'12','12',' Daily Once in night','2025-07-27 00:00:00',' After dinner',1,2152,53,1,'Drug Brand test','2025-07-31 00:00:00',1,'2025-07-27 11:23:11.737000',1,NULL),(1002,52,'12','12',' 12','2025-09-13 00:00:00',NULL,1,2252,652,1,'Drug Brand test','2025-09-13 00:00:00',1,'2025-09-13 16:50:34.767000',1,NULL),(1052,1,'12','ng',' Daily Once in night','2026-01-27 00:00:00',' sczcdc',1,2353,53,1,'Druug_1','2026-01-27 00:00:00',1,'2026-01-27 20:13:55.456000',1,NULL);
/*!40000 ALTER TABLE `emr_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_prescriptions_seq`
--

DROP TABLE IF EXISTS `emr_prescriptions_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_prescriptions_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_prescriptions_seq`
--

LOCK TABLES `emr_prescriptions_seq` WRITE;
/*!40000 ALTER TABLE `emr_prescriptions_seq` DISABLE KEYS */;
INSERT INTO `emr_prescriptions_seq` VALUES (1151);
/*!40000 ALTER TABLE `emr_prescriptions_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_registration`
--

DROP TABLE IF EXISTS `emr_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_registration` (
  `seqid` bigint NOT NULL,
  `age` int DEFAULT NULL,
  `contact` varchar(25) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address` bigint DEFAULT NULL,
  `gender` bigint DEFAULT NULL,
  `title` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `EDITED_BY` bigint DEFAULT NULL,
  PRIMARY KEY (`seqid`),
  KEY `FK5mndx38q3nlgka92s8d4ahjvb` (`address`),
  KEY `FKd2mjxbhfaexa9fpg3n08kgjtq` (`gender`),
  KEY `FKbqae7pwiqpddj8d16qdweqmlw` (`title`),
  CONSTRAINT `FK5mndx38q3nlgka92s8d4ahjvb` FOREIGN KEY (`address`) REFERENCES `emr_address` (`addressid`),
  CONSTRAINT `FKbqae7pwiqpddj8d16qdweqmlw` FOREIGN KEY (`title`) REFERENCES `lookup` (`lookupid`),
  CONSTRAINT `FKd2mjxbhfaexa9fpg3n08kgjtq` FOREIGN KEY (`gender`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_registration`
--

LOCK TABLES `emr_registration` WRITE;
/*!40000 ALTER TABLE `emr_registration` DISABLE KEYS */;
INSERT INTO `emr_registration` VALUES (53,21,'9032151096','2023-11-29','sand@gmail.com','tets2','lanme2',53,1,4,NULL,NULL,NULL,NULL),(102,32,'99891121211','2023-11-26','user@gmail.com','User1','Lname1',NULL,2,4,NULL,NULL,NULL,NULL),(152,23,'1234567890','2023-11-27','man@gmail.com','test','user1',102,1,4,NULL,NULL,NULL,NULL),(202,23,'9876543210','2023-12-13','sa@gmail.com','user','name',152,1,4,NULL,NULL,NULL,NULL),(252,32,'7645678754','2024-01-03','sa@gmail.com','Patient_1','Last Name',NULL,2,5,NULL,NULL,NULL,NULL),(452,23,'8765432101','2024-01-01','sa@gmail.com','Shiva','Samala',NULL,1,4,'2024-01-09 16:49:41.954000',1,NULL,1),(502,45,'9786543427','2024-01-01','sa@gmail.com','Habeeb','test',NULL,1,4,'2024-01-09 21:14:54.464000',1,NULL,1),(503,23,'9032151096','2024-01-02','sa@gmail.com','test','User',NULL,1,4,'2024-01-11 13:45:47.510000',1,NULL,1),(552,0,'9032151096','2024-02-27','','Mar test','User',NULL,1,4,'2024-03-12 13:31:49.972000',1,NULL,1),(553,0,'9848368181','2000-02-27','ramtest@gmail.com','Ram','Test',NULL,1,4,'2024-03-12 21:50:09.081000',1,NULL,1),(652,33,'9989110121','1992-06-21T18:30:00.000Z','sa@gmail.com','Patient','Name',NULL,1,4,'2025-06-22 12:34:38.629000',1,NULL,1),(702,30,'1234567891','1995-12-31T18:30:00.000Z','','prudhvi','rl',NULL,1,4,'2026-03-10 17:08:11.018000',1,NULL,1);
/*!40000 ALTER TABLE `emr_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_registration_seq`
--

DROP TABLE IF EXISTS `emr_registration_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_registration_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_registration_seq`
--

LOCK TABLES `emr_registration_seq` WRITE;
/*!40000 ALTER TABLE `emr_registration_seq` DISABLE KEYS */;
INSERT INTO `emr_registration_seq` VALUES (801);
/*!40000 ALTER TABLE `emr_registration_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_unit`
--

DROP TABLE IF EXISTS `institution_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution_unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `is_bed` tinyint(1) NOT NULL DEFAULT '0',
  `bed_cost` decimal(12,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_occupied` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_institution_unit_code_parent` (`code`,`parent_id`),
  KEY `idx_institution_unit_parent` (`parent_id`),
  CONSTRAINT `fk_institution_unit_parent` FOREIGN KEY (`parent_id`) REFERENCES `institution_unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_unit`
--

LOCK TABLES `institution_unit` WRITE;
/*!40000 ALTER TABLE `institution_unit` DISABLE KEYS */;
INSERT INTO `institution_unit` VALUES (1,'Block-1','B1',NULL,0,NULL,'2025-09-17 13:53:17','2025-09-17 13:53:17',NULL),(2,'Block-2','B2',NULL,0,NULL,'2025-09-17 13:53:30','2025-09-17 13:53:30',NULL),(3,'Room1','R1',1,0,NULL,'2025-09-17 13:53:41','2025-09-17 13:53:41',NULL),(4,'Bed-1','B1',3,1,1.00,'2025-09-17 13:53:57','2025-09-17 13:53:57',NULL),(5,'Bed-2','B2',4,1,100.00,'2026-01-26 14:12:49','2026-01-26 14:12:49',0),(10,'Room1','R1',2,0,NULL,'2026-01-26 14:14:09','2026-01-26 14:14:09',0),(11,'Bed-1','B1',10,1,1000.00,'2026-01-26 14:14:25','2026-01-26 14:14:25',0),(12,'Bed-2','B2',10,1,1000.00,'2026-01-26 14:14:35','2026-01-26 14:14:35',0),(13,'Bed-3','B3',10,1,1000.00,'2026-01-26 14:14:55','2026-01-26 14:14:55',0),(14,'Bed-4','B4',10,1,1000.00,'2026-01-26 14:15:05','2026-01-26 14:15:05',0),(15,'Bed-2','B2',3,1,500.00,'2026-01-26 14:15:27','2026-01-26 14:15:27',0),(16,'Room2','r2',1,0,NULL,'2026-01-27 14:55:53','2026-01-27 14:55:53',0),(17,'Bed-3','B3',3,1,2000.00,'2026-01-27 14:56:20','2026-01-27 14:56:20',0),(18,'war1','w1',16,0,NULL,'2026-01-27 14:56:42','2026-01-27 14:56:42',0),(19,'Bed-1','b1',18,1,100.00,'2026-01-27 14:56:55','2026-01-27 14:56:55',0);
/*!40000 ALTER TABLE `institution_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labmaster`
--

DROP TABLE IF EXISTS `labmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labmaster` (
  `labid` double NOT NULL,
  `labname` varchar(150) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`labid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labmaster`
--

LOCK TABLES `labmaster` WRITE;
/*!40000 ALTER TABLE `labmaster` DISABLE KEYS */;
INSERT INTO `labmaster` VALUES (1,'Lab01',1),(2,'Lab02_1',1),(3,'Lab03',2),(52,'Lab_003',1),(53,'Lab04',1);
/*!40000 ALTER TABLE `labmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labmaster_seq`
--

DROP TABLE IF EXISTS `labmaster_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labmaster_seq` (
  `next_val` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labmaster_seq`
--

LOCK TABLES `labmaster_seq` WRITE;
/*!40000 ALTER TABLE `labmaster_seq` DISABLE KEYS */;
INSERT INTO `labmaster_seq` VALUES (151);
/*!40000 ALTER TABLE `labmaster_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laborders`
--

DROP TABLE IF EXISTS `laborders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laborders` (
  `labtransid` double NOT NULL,
  `labname` varchar(145) DEFAULT NULL,
  `labmasterid` double DEFAULT NULL,
  `status` int DEFAULT NULL,
  `clientid` double DEFAULT NULL,
  `visitid` double DEFAULT NULL,
  PRIMARY KEY (`labtransid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laborders`
--

LOCK TABLES `laborders` WRITE;
/*!40000 ALTER TABLE `laborders` DISABLE KEYS */;
INSERT INTO `laborders` VALUES (5,'Lab01',1,1,552,1552),(6,'Lab02_1',2,1,552,1552),(52,'Lab01',1,1,102,1602),(102,'Lab02_1',2,2,102,1602),(103,'Lab_003',52,1,102,1602),(104,'Lab04',53,1,102,1602),(152,'Lab01',1,1,53,1906),(202,'Lab02_1',2,1,552,2003),(203,'Lab04',53,1,552,2003),(252,'Lab01',1,1,53,2152),(302,'Lab04',53,1,652,2252),(352,'Lab01',1,1,53,2353);
/*!40000 ALTER TABLE `laborders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laborders_seq`
--

DROP TABLE IF EXISTS `laborders_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laborders_seq` (
  `next_val` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laborders_seq`
--

LOCK TABLES `laborders_seq` WRITE;
/*!40000 ALTER TABLE `laborders_seq` DISABLE KEYS */;
INSERT INTO `laborders_seq` VALUES (451);
/*!40000 ALTER TABLE `laborders_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lookup`
--

DROP TABLE IF EXISTS `lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lookup` (
  `lookupid` bigint NOT NULL,
  `lookupcode` varchar(255) DEFAULT NULL,
  `lookuptype` varchar(255) DEFAULT NULL,
  `lookupvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup`
--

LOCK TABLES `lookup` WRITE;
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;
INSERT INTO `lookup` VALUES (1,'MALE','GENDER','Male'),(2,'FEMALE','GENDER','Female'),(3,'OTHERS','GENDER','Others'),(4,'MR','SALUTATION','Mr'),(5,'MRS','SALUTATION','Mrs'),(6,'MIS','SALUTATION','Mis'),(7,'DR','SALUTATION','DR'),(8,'BABY','SALUTATION','Baby'),(9,'GNMEDICINE','SPECILAITY','Specilaity'),(10,'DENTAIL','SPECILAITY','Dental'),(11,'PHYSCHLOGY','SPECILAITY','Physchlogy'),(12,'GENERAL','VISIT_TYPES','Genral'),(13,'EMR','VISIT_TYPES','Emergency'),(14,'LOW','ALLERGY_SEVERITY','Low'),(15,'MODERATE','ALLERGY_SEVERITY','Moderate'),(16,'LOW','ALLERGY_SEVERITY','Low'),(17,'DRUG','ALLERGY_TYPE','Drug'),(18,'ENVIRONMENT','ALLERGY_TYPE','Environment'),(19,'FOOD','ALLERGY_TYPE','Food'),(20,'ICD10','DIAGNOSISMASTERCODESET','ICD10'),(21,'SNOMED','DIAGNOSISMASTERCODESET','SNOMED');
/*!40000 ALTER TABLE `lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lookup_seq`
--

DROP TABLE IF EXISTS `lookup_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lookup_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup_seq`
--

LOCK TABLES `lookup_seq` WRITE;
/*!40000 ALTER TABLE `lookup_seq` DISABLE KEYS */;
INSERT INTO `lookup_seq` VALUES (1);
/*!40000 ALTER TABLE `lookup_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterdata`
--

DROP TABLE IF EXISTS `masterdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masterdata` (
  `id` bigint NOT NULL,
  `mastercode` varchar(25) DEFAULT NULL,
  `masterdatavalue` varchar(45) DEFAULT NULL,
  `active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterdata`
--

LOCK TABLES `masterdata` WRITE;
/*!40000 ALTER TABLE `masterdata` DISABLE KEYS */;
INSERT INTO `masterdata` VALUES (1,'VISIT_STATUS','Active',1),(2,'VISIT_STATUS','In-active',1),(3,'VISIT_STATUS','Visit Started',1),(4,'VISIT_STATUS','Visit Completed',1),(5,'VISIT_STATUS','Visit Canceled',1),(6,'ROLE','Admin',1),(7,'ROLE','Doctor',1),(8,'ROLE','Nurse',1),(9,'DRUG_TYPE','Brand',1),(10,'DRUG_TYPE','Generic',1),(11,'DRUG_ALERTS','High Alerts',1),(12,'DRUG_ALERTS','Narcotic',1),(13,'DRUG_ALERTS','Psychiatric',1),(14,'DRUG_ALERTS','Life saving',1),(15,'DRUG_ALERTS','Prescription Required',1),(16,'DRUG_ALERTS','Chronic',1),(17,'DRUG_ALERTS','Standard',1),(18,'DRUG_FORM','Tablet',1),(19,'DRUG_FORM','Injection',1),(20,'DRUG_FORM','Cream',1),(21,'PAYMENT_MODE','Cash',1),(22,'PAYMENT_MODE','PhonePe',1),(23,'PAYMENT_MODE','Card',1),(24,'DRUG_DOSE_UNIT','ml',1),(25,'DRUG_DOSE_UNIT','capsule',1),(26,'DRUG_DOSE_UNIT','mg',1);
/*!40000 ALTER TABLE `masterdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterdata_seq`
--

DROP TABLE IF EXISTS `masterdata_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masterdata_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterdata_seq`
--

LOCK TABLES `masterdata_seq` WRITE;
/*!40000 ALTER TABLE `masterdata_seq` DISABLE KEYS */;
INSERT INTO `masterdata_seq` VALUES (51);
/*!40000 ALTER TABLE `masterdata_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_and_task_response_model`
--

DROP TABLE IF EXISTS `roles_and_task_response_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_and_task_response_model` (
  `taskid` bigint NOT NULL,
  `actioncode` varchar(255) DEFAULT NULL,
  `actionname` varchar(255) DEFAULT NULL,
  `ispermission` int DEFAULT NULL,
  `roleid` bigint DEFAULT NULL,
  `roletaskactionid` bigint DEFAULT NULL,
  `screencode` varchar(255) DEFAULT NULL,
  `screenname` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `defultoption` bit(1) DEFAULT NULL,
  `defaultoptionvalue` bit(1) DEFAULT NULL,
  PRIMARY KEY (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_and_task_response_model`
--

LOCK TABLES `roles_and_task_response_model` WRITE;
/*!40000 ALTER TABLE `roles_and_task_response_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_and_task_response_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolesandtasks_seq`
--

DROP TABLE IF EXISTS `rolesandtasks_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolesandtasks_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolesandtasks_seq`
--

LOCK TABLES `rolesandtasks_seq` WRITE;
/*!40000 ALTER TABLE `rolesandtasks_seq` DISABLE KEYS */;
INSERT INTO `rolesandtasks_seq` VALUES (1);
/*!40000 ALTER TABLE `rolesandtasks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roletaksactions`
--

DROP TABLE IF EXISTS `roletaksactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roletaksactions` (
  `roletaskactionid` bigint NOT NULL,
  `taskid` bigint DEFAULT NULL,
  `roleid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `ispermission` bit(1) DEFAULT NULL,
  `defaultoptionvalue` bit(1) DEFAULT NULL,
  PRIMARY KEY (`roletaskactionid`),
  KEY `FKmtmf4j1xlqyufo93gdrr15qlc` (`taskid`),
  CONSTRAINT `FKmtmf4j1xlqyufo93gdrr15qlc` FOREIGN KEY (`taskid`) REFERENCES `taskactions` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roletaksactions`
--

LOCK TABLES `roletaksactions` WRITE;
/*!40000 ALTER TABLE `roletaksactions` DISABLE KEYS */;
INSERT INTO `roletaksactions` VALUES (1,1,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(2,2,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(3,3,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(4,4,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(5,5,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '\0',NULL),(6,1,1,1,1,'2024-03-05 18:23:48.772000',1,NULL,_binary '',NULL),(7,2,1,1,1,'2024-03-05 18:23:48.773000',1,NULL,_binary '',NULL),(8,3,1,1,1,'2024-03-05 18:23:48.773000',1,NULL,NULL,NULL),(9,4,1,1,1,'2024-03-05 18:23:48.774000',1,NULL,NULL,NULL),(10,5,1,1,1,'2024-03-05 18:23:48.774000',1,NULL,NULL,NULL),(11,1,1,1,1,'2024-03-05 18:23:52.166000',1,NULL,NULL,NULL),(12,2,1,1,1,'2024-03-05 18:23:52.166000',1,NULL,NULL,NULL),(13,3,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,_binary '',NULL),(14,4,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,NULL,NULL),(15,5,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,NULL,NULL),(16,1,6,1,NULL,'2024-05-14 19:03:42.748000',1,NULL,_binary '',_binary '\0'),(17,2,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(18,3,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(19,4,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary ''),(20,5,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(21,1,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(22,2,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(23,3,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,_binary '',_binary '\0'),(24,4,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(25,5,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(26,1,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(27,2,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(28,3,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(29,4,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,_binary '',NULL),(30,5,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,_binary '',NULL),(52,6,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(53,7,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(54,8,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(55,9,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(56,10,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(57,11,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(102,6,7,1,1,'2024-03-13 21:39:25.635000',1,NULL,NULL,_binary '\0'),(103,7,7,1,1,'2024-03-13 21:39:25.702000',1,NULL,NULL,_binary '\0'),(104,8,7,1,1,'2024-03-13 21:39:25.702000',1,NULL,NULL,_binary ''),(105,9,7,1,1,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(106,10,7,1,1,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(107,11,7,1,1,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(152,12,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0');
/*!40000 ALTER TABLE `roletaksactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roletaksactions_seq`
--

DROP TABLE IF EXISTS `roletaksactions_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roletaksactions_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roletaksactions_seq`
--

LOCK TABLES `roletaksactions_seq` WRITE;
/*!40000 ALTER TABLE `roletaksactions_seq` DISABLE KEYS */;
INSERT INTO `roletaksactions_seq` VALUES (251);
/*!40000 ALTER TABLE `roletaksactions_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_master`
--

DROP TABLE IF EXISTS `service_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_master` (
  `serviceid` bigint NOT NULL,
  `active` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `servicename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_master`
--

LOCK TABLES `service_master` WRITE;
/*!40000 ALTER TABLE `service_master` DISABLE KEYS */;
INSERT INTO `service_master` VALUES (1,1,200,'Service1'),(2,1,300,'Service2'),(3,1,400,'Service3'),(4,1,1000,'Bed Service'),(52,1,100,'Cleaning service'),(102,1,1000,'New Service');
/*!40000 ALTER TABLE `service_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_master_seq`
--

DROP TABLE IF EXISTS `service_master_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_master_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_master_seq`
--

LOCK TABLES `service_master_seq` WRITE;
/*!40000 ALTER TABLE `service_master_seq` DISABLE KEYS */;
INSERT INTO `service_master_seq` VALUES (201);
/*!40000 ALTER TABLE `service_master_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specilaity_master`
--

DROP TABLE IF EXISTS `specilaity_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specilaity_master` (
  `specilaityid` bigint NOT NULL,
  `specilaityname` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`specilaityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specilaity_master`
--

LOCK TABLES `specilaity_master` WRITE;
/*!40000 ALTER TABLE `specilaity_master` DISABLE KEYS */;
INSERT INTO `specilaity_master` VALUES (52,NULL,NULL),(53,NULL,NULL),(102,NULL,NULL),(152,NULL,NULL),(153,NULL,NULL),(202,NULL,NULL),(252,NULL,NULL),(302,NULL,NULL),(352,NULL,NULL),(353,NULL,NULL),(402,NULL,NULL),(403,NULL,NULL),(452,NULL,NULL),(453,NULL,NULL),(502,NULL,NULL),(552,NULL,NULL),(602,NULL,NULL),(603,NULL,NULL),(652,NULL,NULL),(653,NULL,NULL),(702,NULL,NULL),(752,NULL,NULL),(802,NULL,NULL),(803,NULL,NULL);
/*!40000 ALTER TABLE `specilaity_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specilaity_master_seq`
--

DROP TABLE IF EXISTS `specilaity_master_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specilaity_master_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specilaity_master_seq`
--

LOCK TABLES `specilaity_master_seq` WRITE;
/*!40000 ALTER TABLE `specilaity_master_seq` DISABLE KEYS */;
INSERT INTO `specilaity_master_seq` VALUES (901);
/*!40000 ALTER TABLE `specilaity_master_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `stateid` bigint NOT NULL,
  `statename` varchar(45) DEFAULT NULL,
  `statecode` varchar(45) DEFAULT NULL,
  `countryid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Telangana','TG',1,1);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_seq`
--

DROP TABLE IF EXISTS `states_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_seq`
--

LOCK TABLES `states_seq` WRITE;
/*!40000 ALTER TABLE `states_seq` DISABLE KEYS */;
INSERT INTO `states_seq` VALUES (1);
/*!40000 ALTER TABLE `states_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskactions`
--

DROP TABLE IF EXISTS `taskactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taskactions` (
  `taskid` bigint NOT NULL,
  `screencode` varchar(45) DEFAULT NULL,
  `screenname` varchar(45) DEFAULT NULL,
  `actionname` varchar(45) DEFAULT NULL,
  `actioncode` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `defultoption` tinyint DEFAULT '0',
  PRIMARY KEY (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskactions`
--

LOCK TABLES `taskactions` WRITE;
/*!40000 ALTER TABLE `taskactions` DISABLE KEYS */;
INSERT INTO `taskactions` VALUES (1,'REGISTRATION','Registration','Screen View','REGISTRATION_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(2,'REGISTRATION','Registration','Save','REGISTRATION_SAVE',1,NULL,NULL,NULL,NULL,0),(3,'VISIT_DAHSBOARD','Visit Dashboard','Screen View','VISIT_DAHSBOARD_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(4,'VISIT_CREATION','Visit Creation','Screen View','VISIT_CREATION_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(5,'VISIT_CREATION','Visit Creation','Save','VISIT_CREATION_SAVE',1,NULL,NULL,NULL,NULL,0),(6,'EMPLOYE_MASTER','Employe Master','EMPLOYE_MASTER_SCREEN_VIEW','EMPLOYE_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(7,'EMPLOYE_MASTER','Employe Master','EMPLOYE_MASTER_SAVE','EMPLOYE_MASTER_SAVE',1,NULL,NULL,NULL,NULL,0),(8,'SERVICE_MASTER','Service Master','SERVICE_MASTER_SCREEN_VIEW','SERVICE_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(9,'ROLES_MASTER','Roles Master','ROLES_MASTER_SCREEN_VIEW','ROLES_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(10,'VITALS','Vitals','Vitals Main Screen','VITALS_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,0),(11,'PRESCRIPTIONS','Prescriptions','Prescriptions Main Screen','PRESCRIPTIONS_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,0),(12,'DRUG_MASTER','Drug Master','Drug Master screen view','DRUG_MASTER_SCREEN_VIEW',1,1,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `taskactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskactions_seq`
--

DROP TABLE IF EXISTS `taskactions_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taskactions_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskactions_seq`
--

LOCK TABLES `taskactions_seq` WRITE;
/*!40000 ALTER TABLE `taskactions_seq` DISABLE KEYS */;
INSERT INTO `taskactions_seq` VALUES (1);
/*!40000 ALTER TABLE `taskactions_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_bill`
--

DROP TABLE IF EXISTS `visit_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_bill` (
  `BILL_ID` bigint NOT NULL,
  `BILL_NUM` varchar(45) DEFAULT NULL,
  `BILL_DATE` varchar(45) DEFAULT NULL,
  `BILL_AMOUNT` double(10,2) DEFAULT NULL,
  `VISIT_ID` int DEFAULT NULL,
  `CLIENT_ID` int DEFAULT NULL,
  `VISIT_TOTAL_AMOUNT` double(10,2) DEFAULT NULL,
  `VISIT_DISCOUNT_PERCENTAGE` double(10,2) DEFAULT NULL,
  `VISIT_DISCOUNT` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_bill`
--

LOCK TABLES `visit_bill` WRITE;
/*!40000 ALTER TABLE `visit_bill` DISABLE KEYS */;
INSERT INTO `visit_bill` VALUES (402,'INV_1542025_11','2025-04-15 21:18:46.668',200.00,1905,503,NULL,0.00,0.00),(403,'INV_2642025_21','2025-04-26 15:06:52.177',465.00,1906,53,NULL,5.00,25.00),(404,'INV_3042025_31','2025-04-30 22:04:15.302',300.00,1907,53,NULL,0.00,0.00),(452,'INV_1252025_41','2025-05-12 19:22:12.519',1000.00,1952,503,NULL,0.00,0.00),(502,'INV_1362025_51','2025-06-13 21:27:04.759',300.00,2002,53,NULL,0.00,0.00),(552,'INV_2962025_61','2025-06-29 19:20:28.228',100.00,2102,53,NULL,0.00,0.00),(602,'INV_2772025_71','2025-07-27 11:21:15.957',93.10,2152,53,NULL,2.00,1.90),(652,'INV_492025_81','2025-09-04 20:34:33.732',200.00,2202,53,NULL,0.00,0.00),(702,'INV_1392025_91','2025-09-13 16:58:00.135',290.00,2252,652,NULL,3.33,10.00),(703,'INV_1592025_101','2025-09-15 18:39:50.341',400.00,2204,503,NULL,0.00,0.00),(704,'INV_1592025_111','2025-09-15 19:54:13.306',300.00,2253,152,NULL,0.00,0.00),(752,'INV_2712026_121','2026-01-27 20:10:26.785',902.50,2353,53,NULL,5.00,47.50);
/*!40000 ALTER TABLE `visit_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_bill_seq`
--

DROP TABLE IF EXISTS `visit_bill_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_bill_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_bill_seq`
--

LOCK TABLES `visit_bill_seq` WRITE;
/*!40000 ALTER TABLE `visit_bill_seq` DISABLE KEYS */;
INSERT INTO `visit_bill_seq` VALUES (851);
/*!40000 ALTER TABLE `visit_bill_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_details`
--

DROP TABLE IF EXISTS `visit_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_details` (
  `visitid` bigint NOT NULL,
  `clientid` bigint DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `visitdate` datetime(6) DEFAULT NULL,
  `visitdiscount` float DEFAULT NULL,
  `visitpercentage` float DEFAULT NULL,
  `visittotalamount` float DEFAULT NULL,
  `doctor` bigint DEFAULT NULL,
  `specilaity` bigint DEFAULT NULL,
  `visittype` bigint DEFAULT NULL,
  `token` int DEFAULT NULL,
  `paymenttype` double DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `patienttype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`visitid`),
  KEY `FKi01i24wqyg6x16f52ajd26rms` (`clientid`),
  KEY `FK56llsf1kv9rv1cjjv3e9sqgoo` (`doctor`),
  KEY `FKtjof2cc86trkjve8e6yh67u4a` (`visittype`),
  CONSTRAINT `FK56llsf1kv9rv1cjjv3e9sqgoo` FOREIGN KEY (`doctor`) REFERENCES `employee_details` (`id`),
  CONSTRAINT `FKi01i24wqyg6x16f52ajd26rms` FOREIGN KEY (`clientid`) REFERENCES `emr_registration` (`seqid`),
  CONSTRAINT `FKtjof2cc86trkjve8e6yh67u4a` FOREIGN KEY (`visittype`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_details`
--

LOCK TABLES `visit_details` WRITE;
/*!40000 ALTER TABLE `visit_details` DISABLE KEYS */;
INSERT INTO `visit_details` VALUES (252,102,'Test for user@1',3,'2023-12-16 17:26:39.439000',0,NULL,0,1,102,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(302,102,'Reason2',3,'2023-12-16 23:18:24.436000',0,NULL,0,2,152,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(303,53,'Reasoner',1,'2023-12-17 12:28:58.693000',0,NULL,0,1,153,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(352,53,'Checking for test1 24-12-2023',4,'2023-12-24 17:37:01.014000',0,NULL,0,1,202,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(402,53,'Check up 25/12',3,'2023-12-25 13:18:15.450000',0,NULL,0,1,252,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(452,53,'check',3,'2023-12-31 15:35:42.479000',0,NULL,0,1,302,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(502,53,'Test visit',4,'2024-01-04 20:24:52.668000',0,NULL,0,1,352,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(503,53,'reason',3,'2024-01-05 11:07:38.245000',0,NULL,0,1,353,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(552,252,'Tests',1,'2024-01-06 00:00:00.000000',0,NULL,0,2,402,12,13,NULL,NULL,NULL,NULL,NULL,NULL),(553,53,'Headache',4,'2024-01-06 00:00:00.000000',0,NULL,0,2,403,12,15,NULL,NULL,NULL,NULL,NULL,NULL),(602,53,'Checking allerigies',3,'2024-01-08 00:00:00.000000',0,NULL,0,1,452,12,12,NULL,NULL,NULL,NULL,NULL,NULL),(603,152,'asd',3,'2024-01-09 00:00:00.000000',0,NULL,0,1,453,12,12,NULL,NULL,NULL,NULL,NULL,NULL),(652,152,'asdasd',3,'2024-01-09 00:00:00.000000',0,NULL,0,2,502,12,12,NULL,NULL,NULL,NULL,NULL,NULL),(702,452,'asdasd',3,'2024-01-09 00:00:00.000000',0,NULL,0,3,552,12,12,NULL,NULL,NULL,NULL,NULL,NULL),(752,502,'Test',3,'2024-01-09 00:00:00.000000',0,NULL,0,2,602,12,12,NULL,NULL,NULL,NULL,NULL,NULL),(753,503,'tesr',3,'2024-01-11 00:00:00.000000',0,NULL,1000,2,603,12,12,NULL,NULL,NULL,NULL,NULL,NULL),(802,552,'ss',3,'2024-03-12 00:00:00.000000',0,NULL,1000,1,652,12,12,NULL,1,'2024-03-12 13:31:49.996000',1,NULL,NULL),(803,553,'Abdominal Pain',1,'2024-03-12 00:00:00.000000',0,NULL,470,1,653,12,10,NULL,1,'2024-03-12 21:50:09.093000',1,NULL,NULL),(852,53,'check',1,'2024-03-17 00:00:00.000000',400,NULL,400,1,702,12,12,NULL,1,'2024-03-17 12:34:50.772000',1,NULL,NULL),(902,152,'ssss',1,'2024-03-18 00:00:00.000000',23.25,5,441.75,1,752,12,11,NULL,1,'2024-03-17 12:43:16.374000',1,NULL,NULL),(952,53,'sss',3,'2024-03-20 00:00:00.000000',0,0,200,1,802,12,1,NULL,1,'2024-03-20 20:40:09.364000',1,NULL,NULL),(953,503,'Test edited reason',1,'2024-03-20 00:00:00.000000',0,0,200,1,10,12,3,NULL,NULL,'2024-03-25 14:32:10.409000',1,NULL,NULL),(1053,503,'121 edited',1,'2024-03-25 00:00:00.000000',0,0,200,1,10,12,1,NULL,NULL,'2024-03-25 14:26:30.660000',1,NULL,NULL),(1102,552,'Test edited',4,'2024-03-25 00:00:00.000000',0,0,150,1,10,12,3,NULL,NULL,'2024-03-25 20:44:42.561000',1,NULL,NULL),(1152,552,'Test',1,'2024-04-15 00:00:00.000000',0,0,1000,1,9,12,1,NULL,1,'2024-04-15 15:33:35.114000',1,NULL,NULL),(1202,503,'ss',3,'2024-05-14 00:00:00.000000',0,0,900,1,9,12,1,NULL,NULL,'2024-05-14 18:44:23.169000',1,NULL,NULL),(1203,552,'sss',1,'2024-05-14 00:00:00.000000',0,0,1000,1,9,12,2,NULL,1,'2024-05-14 18:44:00.954000',1,NULL,NULL),(1252,503,'ss',1,'2024-05-16 00:00:00.000000',0,0,1000,1,9,12,1,NULL,1,'2024-05-16 14:34:39.950000',1,NULL,NULL),(1302,503,'ss',1,'2024-05-17 00:00:00.000000',0,0,1000,1,9,12,1,NULL,1,'2024-05-17 08:39:47.678000',1,NULL,NULL),(1352,53,'sss',3,'2024-05-19 00:00:00.000000',0,0,1000,1,9,12,1,NULL,1,'2024-05-19 12:10:36.822000',1,NULL,NULL),(1402,53,'Checking',3,'2024-06-18 00:00:00.000000',0,0,1000,1,9,12,1,NULL,1,'2024-06-18 10:52:12.193000',1,NULL,NULL),(1403,552,'ss',3,'2024-06-20 00:00:00.000000',0,0,1000,1,9,12,1,NULL,1,'2024-06-20 14:31:52.516000',1,NULL,NULL),(1452,552,'Test',3,'2024-06-21 00:00:00.000000',0,0,1000,1,9,12,1,NULL,1,'2024-06-21 12:13:01.441000',1,NULL,NULL),(1502,552,'Sa',3,'2024-06-22 00:00:00.000000',0,0,1000,1,10,12,1,NULL,1,'2024-06-22 15:29:51.752000',1,NULL,NULL),(1503,552,'Check',1,'2024-06-25 00:00:00.000000',0,0,100,1,9,12,1,NULL,1,'2024-06-25 09:48:28.726000',1,NULL,NULL),(1552,503,'sdasd',3,'2024-08-22 00:00:00.000000',0,0,200,1,9,12,1,22,1,'2024-08-22 16:02:13.193000',1,NULL,NULL),(1602,552,'asd',1,'2024-08-23 00:00:00.000000',0,0,200,1,9,12,1,23,1,'2024-08-23 20:06:20.863000',1,NULL,NULL),(1652,503,'asdasd',1,'2024-08-26 00:00:00.000000',0,0,200,1,9,12,1,22,1,'2024-08-26 13:50:35.414000',1,NULL,NULL),(1702,53,'wdwd',1,'2024-08-30 00:00:00.000000',0,0,1000,1,9,12,1,22,1,'2024-08-30 12:53:38.767000',1,NULL,NULL),(1752,53,'adsas',1,'2024-09-02 00:00:00.000000',0,0,1000,1,9,12,1,22,1,'2024-09-02 12:04:27.550000',1,NULL,NULL),(1853,53,'ss',1,'2025-04-15 00:00:00.000000',0,0,200,1,9,12,1,21,1,'2025-04-15 21:03:29.046000',1,NULL,NULL),(1902,503,'sss',1,'2025-04-15 00:00:00.000000',0,0,300,302,9,12,2,21,1,'2025-04-15 21:09:05.285000',1,NULL,NULL),(1903,552,'sas',1,'2025-04-15 00:00:00.000000',0,0,200,1,9,12,3,NULL,1,'2025-04-15 21:13:05.496000',1,NULL,NULL),(1904,53,'ss',1,'2025-04-15 00:00:00.000000',0,0,400,1,9,12,4,21,1,'2025-04-15 21:16:21.425000',1,NULL,NULL),(1905,503,'Sa',1,'2025-04-15 00:00:00.000000',0,0,0,1,9,12,5,21,1,'2025-04-15 21:18:45.162000',1,NULL,NULL),(1906,53,'Fevar',4,'2025-04-26 00:00:00.000000',0,0,0,1,9,12,1,21,1,'2025-04-26 15:06:42.827000',1,NULL,NULL),(1907,53,'ss',1,'2025-04-30 00:00:00.000000',0,0,0,1,9,12,1,21,1,'2025-04-30 22:04:11.222000',1,NULL,NULL),(1952,503,'ss',1,'2025-05-12 00:00:00.000000',0,0,0,1,9,12,1,NULL,1,'2025-05-12 19:22:10.218000',1,NULL,NULL),(2002,53,'ss',3,'2025-06-13 00:00:00.000000',0,0,0,1,9,12,1,NULL,1,'2025-06-13 21:25:45.543000',1,NULL,NULL),(2003,552,'asdas',3,'2025-06-14 00:00:00.000000',0,0,200,1,9,12,1,21,1,'2025-06-14 20:15:36.384000',1,NULL,NULL),(2052,53,'asd',1,'2025-06-22 00:00:00.000000',0,0,300,1,9,12,1,22,1,'2025-06-22 12:30:27.828000',1,NULL,NULL),(2053,652,'sas',1,'2025-06-22 00:00:00.000000',0,0,1000,302,10,13,2,23,1,'2025-06-22 12:34:38.633000',1,NULL,NULL),(2102,53,'Fevar',3,'2025-06-29 00:00:00.000000',0,0,0,1,9,12,1,21,1,'2025-06-29 19:20:25.927000',1,NULL,NULL),(2152,53,'Rason',3,'2025-07-27 00:00:00.000000',0,0,0,1,9,12,1,21,1,'2025-07-27 11:21:06.007000',1,NULL,NULL),(2202,53,'Fevar',3,'2025-09-04 00:00:00.000000',0,0,0,1,9,12,1,22,1,'2025-09-04 20:34:01.241000',1,NULL,NULL),(2203,53,'sss',3,'2025-09-13 00:00:00.000000',0,0,300,1,9,12,1,21,1,'2025-09-13 10:48:42.263000',1,NULL,NULL),(2204,503,'asdas',1,'2025-09-13 00:00:00.000000',0,0,0,1,9,12,2,21,1,'2025-09-13 10:56:09.248000',1,NULL,NULL),(2252,652,'Dental',3,'2025-09-13 00:00:00.000000',0,0,0,1,9,12,3,21,1,'2025-09-13 16:49:12.398000',1,NULL,NULL),(2253,152,'sas',1,'2025-09-15 00:00:00.000000',0,0,0,1,9,12,1,22,1,'2025-09-15 19:54:09.007000',1,NULL,NULL),(2302,53,NULL,1,'2025-09-22 00:00:00.000000',NULL,NULL,NULL,1,9,NULL,1,NULL,1,'2025-09-22 20:02:53.134000',1,NULL,NULL),(2352,53,'Fevar',1,'2026-01-26 00:00:00.000000',0,0,200,1,9,12,1,21,1,'2026-01-26 19:40:26.455000',1,NULL,NULL),(2353,53,'asdas',3,'2026-01-27 00:00:00.000000',0,0,0,1,9,12,1,21,1,'2026-01-27 20:09:39.418000',1,NULL,NULL),(2402,53,'asdad',3,'2026-03-09 00:00:00.000000',0,0,200,1,9,12,1,21,1,'2026-03-09 19:46:03.876000',1,NULL,NULL),(2403,702,'checkup',1,'2026-03-10 00:00:00.000000',0,0,-19800,1,9,12,1,21,1,'2026-03-10 17:08:11.022000',1,NULL,NULL),(2452,552,'asdasd',1,'2026-03-14 00:00:00.000000',0,0,200,1,9,12,1,21,1,'2026-03-14 18:36:14.940000',1,NULL,'INPATIENT'),(2502,503,'Fevar',1,'2026-03-14 00:00:00.000000',0,0,200,1,9,12,2,21,1,'2026-03-14 18:41:46.835000',1,NULL,NULL),(2503,53,'asd',1,'2026-03-14 00:00:00.000000',0,0,1000,1,9,12,3,21,1,'2026-03-14 18:43:32.872000',1,NULL,'OUTPATIENT');
/*!40000 ALTER TABLE `visit_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_details_seq`
--

DROP TABLE IF EXISTS `visit_details_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_details_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_details_seq`
--

LOCK TABLES `visit_details_seq` WRITE;
/*!40000 ALTER TABLE `visit_details_seq` DISABLE KEYS */;
INSERT INTO `visit_details_seq` VALUES (2601);
/*!40000 ALTER TABLE `visit_details_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_services`
--

DROP TABLE IF EXISTS `visit_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_services` (
  `id` bigint NOT NULL,
  `quantity` float DEFAULT NULL,
  `servicediscount` float DEFAULT NULL,
  `servicediscountInpercentage` float DEFAULT NULL,
  `serviceid` bigint DEFAULT NULL,
  `serviceprice` float DEFAULT NULL,
  `status` int DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `servicetotalamount` float DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `BILL_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl8hcudnxv1a7506kjnlp9bqpq` (`visitid`),
  KEY `FKb1iuk761v5dci9rcn308p7idf` (`serviceid`),
  CONSTRAINT `FKb1iuk761v5dci9rcn308p7idf` FOREIGN KEY (`serviceid`) REFERENCES `service_master` (`serviceid`),
  CONSTRAINT `FKl8hcudnxv1a7506kjnlp9bqpq` FOREIGN KEY (`visitid`) REFERENCES `visit_details` (`visitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_services`
--

LOCK TABLES `visit_services` WRITE;
/*!40000 ALTER TABLE `visit_services` DISABLE KEYS */;
INSERT INTO `visit_services` VALUES (252,1,0,NULL,2,300,NULL,252,300,NULL,NULL,NULL,NULL,NULL),(253,1,0,NULL,1,200,NULL,252,200,NULL,NULL,NULL,NULL,NULL),(302,1,0,NULL,1,200,NULL,302,200,NULL,NULL,NULL,NULL,NULL),(303,1,0,NULL,1,200,NULL,303,200,NULL,NULL,NULL,NULL,NULL),(352,1,10,NULL,1,200,NULL,352,190,NULL,NULL,NULL,NULL,NULL),(353,1,0,NULL,2,300,NULL,352,300,NULL,NULL,NULL,NULL,NULL),(402,1,10,NULL,1,200,NULL,402,190,NULL,NULL,NULL,NULL,NULL),(452,1,0,NULL,1,200,NULL,452,200,NULL,NULL,NULL,NULL,NULL),(502,1,100,NULL,4,1000,NULL,502,900,NULL,NULL,NULL,NULL,NULL),(503,1,0,NULL,4,1000,NULL,503,1000,NULL,NULL,NULL,NULL,NULL),(504,1,100,NULL,52,100,NULL,503,0,NULL,NULL,NULL,NULL,NULL),(552,1,11,NULL,1,200,NULL,552,189,NULL,NULL,NULL,NULL,NULL),(553,1,100,NULL,4,1000,NULL,553,900,NULL,NULL,NULL,NULL,NULL),(554,1,50,NULL,1,200,NULL,553,150,NULL,NULL,NULL,NULL,NULL),(602,1,111,NULL,4,1000,NULL,602,889,NULL,NULL,NULL,NULL,NULL),(603,1,11,NULL,1,200,NULL,603,189,NULL,NULL,NULL,NULL,NULL),(652,0,0,NULL,2,300,NULL,652,0,NULL,NULL,NULL,NULL,NULL),(702,0,0,NULL,4,1000,NULL,702,0,NULL,NULL,NULL,NULL,NULL),(752,1,100,NULL,4,1000,NULL,752,900,NULL,NULL,NULL,NULL,NULL),(753,1,0,NULL,4,1000,NULL,753,1000,NULL,NULL,NULL,NULL,NULL),(802,1,0,NULL,4,1000,NULL,802,1000,1,'2024-03-12 13:31:50.024000',1,NULL,NULL),(803,1,10,NULL,1,200,NULL,803,190,1,'2024-03-12 21:50:09.093000',1,NULL,NULL),(804,1,20,NULL,2,300,NULL,803,280,1,'2024-03-12 21:50:09.093000',1,NULL,NULL),(852,1,100,NULL,1,200,NULL,852,100,1,'2024-03-17 12:34:50.827000',1,NULL,NULL),(853,1,0,NULL,2,300,NULL,852,300,1,'2024-03-17 12:34:50.827000',1,NULL,NULL),(854,1,0,NULL,3,400,NULL,852,400,1,'2024-03-17 12:34:50.827000',1,NULL,NULL),(902,1,20,NULL,1,200,NULL,902,180,1,'2024-03-17 12:43:16.404000',1,NULL,NULL),(903,1,15,NULL,2,300,NULL,902,285,1,'2024-03-17 12:43:16.404000',1,NULL,NULL),(952,1,0,0,1,200,NULL,952,200,1,'2024-03-20 20:40:09.399000',1,NULL,NULL),(953,1,0,0,1,200,NULL,953,200,1,'2024-03-20 20:41:24.139000',1,NULL,NULL),(1003,1,0,0,1,200,NULL,1053,200,1,'2024-03-24 20:38:44.099000',1,NULL,NULL),(1052,1,50,25,1,200,NULL,1102,150,1,'2024-03-25 20:44:20.748000',1,NULL,NULL),(1102,1,0,0,4,1000,NULL,1152,1000,1,'2024-04-15 15:33:35.141000',1,NULL,NULL),(1152,1,100,10,4,1000,NULL,1202,900,1,'2024-05-14 18:44:23.164000',1,NULL,NULL),(1153,1,0,0,4,1000,NULL,1203,1000,1,'2024-05-14 18:44:00.954000',1,NULL,NULL),(1202,1,0,0,4,1000,NULL,1252,1000,1,'2024-05-16 14:34:39.968000',1,NULL,NULL),(1252,1,0,0,4,1000,NULL,1302,1000,1,'2024-05-17 08:39:47.708000',1,NULL,NULL),(1302,1,0,0,4,1000,NULL,1352,1000,1,'2024-05-19 12:10:36.862000',1,NULL,NULL),(1352,1,0,0,4,1000,NULL,1402,1000,1,'2024-06-18 10:52:12.212000',1,NULL,NULL),(1353,1,0,0,4,1000,NULL,1403,1000,1,'2024-06-20 14:31:52.517000',1,NULL,NULL),(1402,1,0,0,4,1000,NULL,1452,1000,1,'2024-06-21 12:13:01.482000',1,NULL,NULL),(1452,1,0,0,4,1000,NULL,1502,1000,1,'2024-06-22 15:29:51.783000',1,NULL,NULL),(1453,1,0,0,52,100,NULL,1503,100,1,'2024-06-25 09:48:28.732000',1,NULL,NULL),(1502,1,0,0,1,200,NULL,1552,200,1,'2024-08-22 16:02:13.223000',1,NULL,NULL),(1552,1,0,0,1,200,NULL,1602,200,1,'2024-08-23 20:06:20.882000',1,NULL,NULL),(1602,1,0,0,1,200,NULL,1652,200,1,'2024-08-26 13:50:35.451000',1,NULL,NULL),(1652,1,0,0,4,1000,NULL,1702,1000,1,'2024-08-30 12:53:38.788000',1,NULL,NULL),(1702,1,0,0,4,1000,NULL,1752,1000,1,'2024-09-02 12:04:27.593000',1,NULL,NULL),(1803,1,0,0,1,200,NULL,1853,200,1,'2025-04-15 21:03:29.047000',1,NULL,NULL),(1852,1,0,0,2,300,NULL,1902,300,1,'2025-04-15 21:09:05.329000',1,NULL,NULL),(1853,1,0,0,1,200,NULL,1903,200,1,'2025-04-15 21:13:05.497000',1,NULL,NULL),(1854,1,0,0,3,400,NULL,1904,400,1,'2025-04-15 21:16:21.427000',1,NULL,NULL),(1855,1,0,0,1,200,NULL,1905,200,1,'2025-04-15 21:18:45.166000',1,NULL,402),(1856,1,10,5,1,200,NULL,1906,190,1,'2025-04-26 15:06:42.828000',1,NULL,403),(1857,1,0,0,2,300,NULL,1906,300,1,'2025-04-26 15:06:42.828000',1,NULL,403),(1858,1,0,0,2,300,NULL,1907,300,1,'2025-04-30 22:04:11.227000',1,NULL,404),(1902,1,0,0,4,1000,NULL,1952,1000,1,'2025-05-12 19:22:10.282000',1,NULL,452),(1952,1,0,0,2,300,NULL,2002,300,1,'2025-06-13 21:25:45.592000',1,NULL,502),(1953,1,0,0,1,200,NULL,2003,200,1,'2025-06-14 20:15:36.384000',1,NULL,NULL),(2002,1,0,0,2,300,NULL,2052,300,1,'2025-06-22 12:30:27.877000',1,NULL,NULL),(2003,1,0,0,4,1000,NULL,2053,1000,1,'2025-06-22 12:34:38.635000',1,NULL,NULL),(2052,1,0,0,52,100,NULL,2102,100,1,'2025-06-29 19:20:25.961000',1,NULL,552),(2102,1,5,5,52,100,NULL,2152,95,1,'2025-07-27 11:21:06.080000',1,NULL,602),(2152,1,0,0,1,200,NULL,2202,200,1,'2025-09-04 20:34:01.297000',1,NULL,652),(2153,1,0,0,2,300,NULL,2203,300,1,'2025-09-13 10:48:42.270000',1,NULL,NULL),(2154,1,0,0,3,400,NULL,2204,400,1,'2025-09-13 10:56:09.251000',1,NULL,703),(2202,1,0,0,1,200,NULL,2252,200,1,'2025-09-13 16:49:12.457000',1,NULL,702),(2203,1,0,0,52,100,NULL,2252,100,1,'2025-09-13 16:49:12.458000',1,NULL,702),(2204,1,0,0,1,200,NULL,2253,200,1,'2025-09-15 19:54:09.015000',1,NULL,704),(2205,1,0,0,52,100,NULL,2253,100,1,'2025-09-15 19:54:09.015000',1,NULL,704),(2252,1,0,0,1,200,NULL,2352,200,1,'2026-01-26 19:40:26.526000',1,NULL,NULL),(2253,1,50,5,4,1000,NULL,2353,950,1,'2026-01-27 20:09:39.418000',1,NULL,752),(2302,1,0,0,1,200,NULL,2402,200,1,'2026-03-09 19:46:03.998000',1,NULL,NULL),(2303,1,20000,10000,1,200,NULL,2403,-19800,1,'2026-03-10 17:08:11.022000',1,NULL,NULL),(2352,1,0,0,1,200,NULL,2452,200,1,'2026-03-14 18:36:14.973000',1,NULL,NULL),(2402,1,0,0,1,200,NULL,2502,200,1,'2026-03-14 18:41:46.850000',1,NULL,NULL),(2403,1,0,0,102,1000,NULL,2503,1000,1,'2026-03-14 18:43:32.872000',1,NULL,NULL);
/*!40000 ALTER TABLE `visit_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_services_seq`
--

DROP TABLE IF EXISTS `visit_services_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_services_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_services_seq`
--

LOCK TABLES `visit_services_seq` WRITE;
/*!40000 ALTER TABLE `visit_services_seq` DISABLE KEYS */;
INSERT INTO `visit_services_seq` VALUES (2501);
/*!40000 ALTER TABLE `visit_services_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitals`
--

DROP TABLE IF EXISTS `vitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vitals` (
  `vitalid` bigint NOT NULL,
  `visitid` bigint DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `bmi` float DEFAULT NULL,
  `systolic` float DEFAULT NULL,
  `diastolic` float DEFAULT NULL,
  `pulse` float DEFAULT NULL,
  `respiratoryrate` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `capturedby` bigint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`vitalid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitals`
--

LOCK TABLES `vitals` WRITE;
/*!40000 ALTER TABLE `vitals` DISABLE KEYS */;
INSERT INTO `vitals` VALUES (52,303,53,170,56,12,80,110,98,12,98,1,NULL,NULL,NULL,NULL),(102,302,102,112,122,12,221,221,22,22,22,1,NULL,NULL,NULL,NULL),(152,402,53,170,78,28,80,110,98,111,99,1,NULL,NULL,NULL,NULL),(202,452,53,180,67,88,80,110,98,10,98,1,NULL,NULL,NULL,NULL),(352,502,53,170,78,78,110,80,98,110,98,1,NULL,NULL,NULL,NULL),(402,553,53,183,80,NULL,110,70,60,24,36,1,NULL,NULL,NULL,NULL),(452,503,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(502,602,53,11,21,21,11,11,11,11,11,1,NULL,NULL,NULL,NULL),(503,603,152,33,33,33,33,33,33,33,33,1,NULL,NULL,NULL,NULL),(552,652,152,121,122,2,21,2,1,2,21,1,NULL,NULL,NULL,NULL),(602,702,452,178,76,87,110,110,11,12,98,1,NULL,NULL,NULL,NULL),(603,752,502,12,22,12,122,22,22,223,NULL,1,NULL,NULL,NULL,NULL),(652,1102,552,76,56,12,110,80,98,87,98,1,1,'2024-03-25 20:46:52.377000',1,NULL),(702,1202,503,176,78,98,110,98,98,NULL,NULL,1,1,'2024-05-14 18:46:15.214000',1,NULL),(752,1402,53,189,76,89,110,80,98,98,98,1,NULL,'2024-06-19 15:19:43.406000',1,NULL),(802,1452,552,11.11,11.11,11.11,11.11,11.11,11.11,11.11,11.11,1,1,'2024-06-21 15:47:01.294000',1,NULL),(803,1452,552,11.11,11.11,11.11,11.11,11.11,11.11,11.11,11.11,1,1,'2024-06-21 19:38:46.994000',1,NULL),(804,1452,552,11.11,11.11,11.11,11.11,11.11,11.11,11.11,11.11,1,1,'2024-06-21 19:47:50.058000',1,NULL),(852,NULL,552,176,75.1,11.12,110,80.1,NULL,NULL,NULL,1,1,'2024-06-22 16:56:41.890000',1,NULL),(904,1552,503,176,76,11,110,90,98,11,100,1,1,'2024-08-22 21:20:18.822000',1,NULL),(1002,1652,503,110,11,11,11,11,121,12,111,1,1,'2024-08-26 13:53:55.742000',1,NULL),(1003,1702,53,110,80,0.01,110,90,98,11,110,1,1,'2024-08-30 12:56:42.215000',1,NULL),(1052,1906,53,111,11,0,111,11,11,11,11,1,1,'2025-04-26 15:10:01.969000',1,NULL),(1102,2003,552,NULL,67,NULL,110,120,98,NULL,NULL,1,1,'2025-06-14 21:00:45.138000',1,NULL),(1103,2003,552,110,67,11,110,120,98,121,110,1,1,'2025-06-14 21:06:03.713000',1,NULL),(1152,2152,53,110,80,0.01,110,80,9,121,100,1,1,'2025-07-27 11:23:11.685000',1,NULL),(1202,2252,652,110,11,0,NULL,NULL,NULL,NULL,NULL,1,1,'2025-09-13 16:50:34.680000',1,NULL),(1252,2353,53,110,67,0.01,110,120,98,121,110,1,1,'2026-01-27 20:13:55.366000',1,NULL);
/*!40000 ALTER TABLE `vitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitals_seq`
--

DROP TABLE IF EXISTS `vitals_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vitals_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitals_seq`
--

LOCK TABLES `vitals_seq` WRITE;
/*!40000 ALTER TABLE `vitals_seq` DISABLE KEYS */;
INSERT INTO `vitals_seq` VALUES (1351);
/*!40000 ALTER TABLE `vitals_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'emr2'
--

--
-- Dumping routines for database 'emr2'
--
/*!50003 DROP PROCEDURE IF EXISTS `GET_ROLES_TASKS_BASED_ON_ROLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_ROLES_TASKS_BASED_ON_ROLE`(roleid bigint)
BEGIN
SELECT ta.defultoption,ta.taskid,ta.screenname,ta.screencode,ta.actionname,ta.actioncode,ta.status,ra.ispermission,ra.roleid,ra.roletaskactionid,ra.defaultoptionvalue FROM taskactions ta
left join roletaksactions  ra on ra.taskid = ta.taskid and ra.roleid = roleid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-14 23:16:45
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2023-11-29 14:35:38',NULL),('diagnostics.include_raw','OFF','2023-11-29 14:35:38',NULL),('ps_thread_trx_info.max_length','65535','2023-11-29 14:35:38',NULL),('statement_performance_analyzer.limit','100','2023-11-29 14:35:38',NULL),('statement_performance_analyzer.view',NULL,'2023-11-29 14:35:38',NULL),('statement_truncate_len','64','2023-11-29 14:35:38',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mysql.sys`@`localhost`*/ /*!50003 TRIGGER `sys_config_insert_set_user` BEFORE INSERT ON `sys_config` FOR EACH ROW BEGIN
    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN
        SET NEW.set_by = USER();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mysql.sys`@`localhost`*/ /*!50003 TRIGGER `sys_config_update_set_user` BEFORE UPDATE ON `sys_config` FOR EACH ROW BEGIN
    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN
        SET NEW.set_by = USER();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `exec_secondary_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'sys'
--

--
-- Dumping routines for database 'sys'
--
/*!50003 DROP FUNCTION IF EXISTS `extract_schema_from_file_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `extract_schema_from_file_name`(
        path VARCHAR(512)
    ) RETURNS varchar(64) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw file path, and attempts to extract the schema name from it.\n\nUseful for when interacting with Performance Schema data \nconcerning IO statistics, for example.\n\nCurrently relies on the fact that a table data file will be within a \nspecified database directory (will not work with partitions or tables\nthat specify an individual DATA_DIRECTORY).\n\nParameters\n-----------\n\npath (VARCHAR(512)):\n  The full file path to a data file to extract the schema name from.\n\nReturns\n-----------\n\nVARCHAR(64)\n\nExample\n-----------\n\nmysql> SELECT sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n+----------------------------------------------------------------------------+\n| sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n+----------------------------------------------------------------------------+\n| employees                                                                  |\n+----------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -2), '/', 1), 64);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `extract_table_from_file_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `extract_table_from_file_name`(
        path VARCHAR(512)
    ) RETURNS varchar(64) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw file path, and extracts the table name from it.\n\nUseful for when interacting with Performance Schema data \nconcerning IO statistics, for example.\n\nParameters\n-----------\n\npath (VARCHAR(512)):\n  The full file path to a data file to extract the table name from.\n\nReturns\n-----------\n\nVARCHAR(64)\n\nExample\n-----------\n\nmysql> SELECT sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n+---------------------------------------------------------------------------+\n| sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n+---------------------------------------------------------------------------+\n| employee                                                                  |\n+---------------------------------------------------------------------------+\n1 row in set (0.02 sec)\n'
BEGIN
    RETURN LEFT(SUBSTRING_INDEX(REPLACE(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -1), '@0024', '$'), '.', 1), 64);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_bytes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_bytes`(
        -- We feed in and return TEXT here, as aggregates of
        -- bytes can return numbers larger than BIGINT UNSIGNED
        bytes TEXT
    ) RETURNS text CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw bytes value, and converts it to a human readable format.\n\nParameters\n-----------\n\nbytes (TEXT):\n  A raw bytes value.\n\nReturns\n-----------\n\nTEXT\n\nExample\n-----------\n\nmysql> SELECT sys.format_bytes(2348723492723746) AS size;\n+----------+\n| size     |\n+----------+\n| 2.09 PiB |\n+----------+\n1 row in set (0.00 sec)\n\nmysql> SELECT sys.format_bytes(2348723492723) AS size;\n+----------+\n| size     |\n+----------+\n| 2.14 TiB |\n+----------+\n1 row in set (0.00 sec)\n\nmysql> SELECT sys.format_bytes(23487234) AS size;\n+-----------+\n| size      |\n+-----------+\n| 22.40 MiB |\n+-----------+\n1 row in set (0.00 sec)\n'
BEGIN
  IF (bytes IS NULL) THEN
    RETURN NULL;
  ELSE
    RETURN format_bytes(bytes);
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_path` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_path`(
        in_path VARCHAR(512)
    ) RETURNS varchar(512) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw path value, and strips out the datadir or tmpdir\nreplacing with @@datadir and @@tmpdir respectively.\n\nAlso normalizes the paths across operating systems, so backslashes\non Windows are converted to forward slashes\n\nParameters\n-----------\n\npath (VARCHAR(512)):\n  The raw file path value to format.\n\nReturns\n-----------\n\nVARCHAR(512) CHARSET UTF8MB4\n\nExample\n-----------\n\nmysql> select @@datadir;\n+-----------------------------------------------+\n| @@datadir                                     |\n+-----------------------------------------------+\n| /Users/mark/sandboxes/SmallTree/AMaster/data/ |\n+-----------------------------------------------+\n1 row in set (0.06 sec)\n\nmysql> select format_path(''/Users/mark/sandboxes/SmallTree/AMaster/data/mysql/proc.MYD'') AS path;\n+--------------------------+\n| path                     |\n+--------------------------+\n| @@datadir/mysql/proc.MYD |\n+--------------------------+\n1 row in set (0.03 sec)\n'
BEGIN
  DECLARE v_path VARCHAR(512);
  DECLARE v_undo_dir VARCHAR(1024);
  DECLARE path_separator CHAR(1) DEFAULT '/';
  IF @@global.version_compile_os LIKE 'win%' THEN
    SET path_separator = '\\';
  END IF;
  -- OSX hides /private/ in variables, but Performance Schema does not
  IF in_path LIKE '/private/%' THEN
    SET v_path = REPLACE(in_path, '/private', '');
  ELSE
    SET v_path = in_path;
  END IF;
  -- @@global.innodb_undo_directory is only set when separate undo logs are used
  SET v_undo_dir = IFNULL((SELECT VARIABLE_VALUE FROM performance_schema.global_variables WHERE VARIABLE_NAME = 'innodb_undo_directory'), '');
  IF v_path IS NULL THEN
    RETURN NULL;
  ELSEIF v_path LIKE CONCAT(@@global.datadir, IF(SUBSTRING(@@global.datadir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.datadir, CONCAT('@@datadir', IF(SUBSTRING(@@global.datadir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.tmpdir, IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.tmpdir, CONCAT('@@tmpdir', IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.replica_load_tmpdir, IF(SUBSTRING(@@global.replica_load_tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.replica_load_tmpdir, CONCAT('@@replica_load_tmpdir', IF(SUBSTRING(@@global.replica_load_tmpdir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.innodb_data_home_dir, IF(SUBSTRING(@@global.innodb_data_home_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.innodb_data_home_dir, CONCAT('@@innodb_data_home_dir', IF(SUBSTRING(@@global.innodb_data_home_dir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.innodb_log_group_home_dir, IF(SUBSTRING(@@global.innodb_log_group_home_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.innodb_log_group_home_dir, CONCAT('@@innodb_log_group_home_dir', IF(SUBSTRING(@@global.innodb_log_group_home_dir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(v_undo_dir, IF(SUBSTRING(v_undo_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_undo_dir, CONCAT('@@innodb_undo_directory', IF(SUBSTRING(v_undo_dir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.basedir, IF(SUBSTRING(@@global.basedir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.basedir, CONCAT('@@basedir', IF(SUBSTRING(@@global.basedir, -1) = path_separator, path_separator, '')));
  END IF;
  RETURN v_path;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_statement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_statement`(
        statement LONGTEXT
    ) RETURNS longtext CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nFormats a normalized statement, truncating it if it is > 64 characters long by default.\n\nTo configure the length to truncate the statement to by default, update the `statement_truncate_len`\nvariable with `sys_config` table to a different value. Alternatively, to change it just for just \nyour particular session, use `SET @sys.statement_truncate_len := <some new value>`.\n\nUseful for printing statement related data from Performance Schema from \nthe command line.\n\nParameters\n-----------\n\nstatement (LONGTEXT): \n  The statement to format.\n\nReturns\n-----------\n\nLONGTEXT\n\nExample\n-----------\n\nmysql> SELECT sys.format_statement(digest_text)\n    ->   FROM performance_schema.events_statements_summary_by_digest\n    ->  ORDER by sum_timer_wait DESC limit 5;\n+-------------------------------------------------------------------+\n| sys.format_statement(digest_text)                                 |\n+-------------------------------------------------------------------+\n| CREATE SQL SECURITY INVOKER VI ... KE ? AND `variable_value` > ?  |\n| CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `esc` . ... |\n| CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `sys` . ... |\n| CREATE SQL SECURITY INVOKER VI ...  , `compressed_size` ) ) DESC  |\n| CREATE SQL SECURITY INVOKER VI ... LIKE ? ORDER BY `timer_start`  |\n+-------------------------------------------------------------------+\n5 rows in set (0.00 sec)\n'
BEGIN
  -- Check if we have the configured length, if not, init it
  IF @sys.statement_truncate_len IS NULL THEN
      SET @sys.statement_truncate_len = sys_get_config('statement_truncate_len', 64);
  END IF;
  IF CHAR_LENGTH(statement) > @sys.statement_truncate_len THEN
      RETURN REPLACE(CONCAT(LEFT(statement, (@sys.statement_truncate_len/2)-2), ' ... ', RIGHT(statement, (@sys.statement_truncate_len/2)-2)), '\n', ' ');
  ELSE 
      RETURN REPLACE(statement, '\n', ' ');
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_time`(
-- We feed in and return TEXT here, as aggregates of
-- picoseconds can return numbers larger than BIGINT UNSIGNED
        picoseconds TEXT
    ) RETURNS text CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw picoseconds value, and converts it to a human readable form.\n\nPicoseconds are the precision that all latency values are printed in\nwithin Performance Schema, however are not user friendly when wanting\nto scan output from the command line.\n\nParameters\n-----------\n\npicoseconds (TEXT):\n  The raw picoseconds value to convert.\n\nReturns\n-----------\n\nTEXT CHARSET UTF8MB4\n\nExample\n-----------\n\nmysql> select format_time(342342342342345);\n+------------------------------+\n| format_time(342342342342345) |\n+------------------------------+\n| 00:05:42                     |\n+------------------------------+\n1 row in set (0.00 sec)\n\nmysql> select format_time(342342342);\n+------------------------+\n| format_time(342342342) |\n+------------------------+\n| 342.34 us              |\n+------------------------+\n1 row in set (0.00 sec)\n\nmysql> select format_time(34234);\n+--------------------+\n| format_time(34234) |\n+--------------------+\n| 34.23 ns           |\n+--------------------+\n1 row in set (0.00 sec)\n'
BEGIN
  IF picoseconds IS NULL THEN RETURN NULL;
  ELSEIF picoseconds >= 604800000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 604800000000000000, 2), ' w');
  ELSEIF picoseconds >= 86400000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 86400000000000000, 2), ' d');
  ELSEIF picoseconds >= 3600000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 3600000000000000, 2), ' h');
  ELSEIF picoseconds >= 60000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 60000000000000, 2), ' m');
  ELSEIF picoseconds >= 1000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000000, 2), ' s');
  ELSEIF picoseconds >= 1000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000, 2), ' ms');
  ELSEIF picoseconds >= 1000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000, 2), ' us');
  ELSEIF picoseconds >= 1000 THEN RETURN CONCAT(ROUND(picoseconds / 1000, 2), ' ns');
  ELSE RETURN CONCAT(picoseconds, ' ps');
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `list_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `list_add`(
        in_list TEXT,
        in_add_value TEXT
    ) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a list, and a value to add to the list, and returns the resulting list.\n\nUseful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n\nParameters\n-----------\n\nin_list (TEXT):\n  The comma separated list to add a value to\n\nin_add_value (TEXT):\n  The value to add to the input list\n\nReturns\n-----------\n\nTEXT\n\nExample\n--------\n\nmysql> select @@sql_mode;\n+-----------------------------------------------------------------------------------+\n| @@sql_mode                                                                        |\n+-----------------------------------------------------------------------------------+\n| ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n+-----------------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> set sql_mode = sys.list_add(@@sql_mode, ''ANSI_QUOTES'');\nQuery OK, 0 rows affected (0.06 sec)\n\nmysql> select @@sql_mode;\n+-----------------------------------------------------------------------------------------------+\n| @@sql_mode                                                                                    |\n+-----------------------------------------------------------------------------------------------+\n| ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n+-----------------------------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\n'
BEGIN
    IF (in_add_value IS NULL) THEN
        SIGNAL SQLSTATE '02200'
           SET MESSAGE_TEXT = 'Function sys.list_add: in_add_value input variable should not be NULL',
               MYSQL_ERRNO = 1138;
    END IF;
    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN
        -- return the new value as a single value list
        RETURN in_add_value;
    END IF;
    RETURN (SELECT CONCAT(TRIM(BOTH ',' FROM TRIM(in_list)), ',', in_add_value));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `list_drop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `list_drop`(
        in_list TEXT,
        in_drop_value TEXT
    ) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a list, and a value to attempt to remove from the list, and returns the resulting list.\n\nUseful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n\nParameters\n-----------\n\nin_list (TEXT):\n  The comma separated list to drop a value from\n\nin_drop_value (TEXT):\n  The value to drop from the input list\n\nReturns\n-----------\n\nTEXT\n\nExample\n--------\n\nmysql> select @@sql_mode;\n+-----------------------------------------------------------------------------------------------+\n| @@sql_mode                                                                                    |\n+-----------------------------------------------------------------------------------------------+\n| ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n+-----------------------------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> set sql_mode = sys.list_drop(@@sql_mode, ''ONLY_FULL_GROUP_BY'');\nQuery OK, 0 rows affected (0.03 sec)\n\nmysql> select @@sql_mode;\n+----------------------------------------------------------------------------+\n| @@sql_mode                                                                 |\n+----------------------------------------------------------------------------+\n| ANSI_QUOTES,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n+----------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\n'
BEGIN
    IF (in_drop_value IS NULL) THEN
        SIGNAL SQLSTATE '02200'
           SET MESSAGE_TEXT = 'Function sys.list_drop: in_drop_value input variable should not be NULL',
               MYSQL_ERRNO = 1138;
    END IF;
    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN
        -- return the list as it was passed in
        RETURN in_list;
    END IF;
    -- ensure that leading / trailing commas are remove, support values with either spaces or not between commas
    RETURN (SELECT TRIM(BOTH ',' FROM REPLACE(REPLACE(CONCAT(',', in_list), CONCAT(',', in_drop_value), ''), CONCAT(', ', in_drop_value), '')));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_account_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_account_enabled`(
        in_host VARCHAR(255), 
        in_user VARCHAR(32)
    ) RETURNS enum('YES','NO') CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDetermines whether instrumentation of an account is enabled \nwithin Performance Schema.\n\nParameters\n-----------\n\nin_host VARCHAR(255): \n  The hostname of the account to check.\nin_user VARCHAR(32):\n  The username of the account to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'', ''PARTIAL'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_account_enabled(''localhost'', ''root'');\n+------------------------------------------------+\n| sys.ps_is_account_enabled(''localhost'', ''root'') |\n+------------------------------------------------+\n| YES                                            |\n+------------------------------------------------+\n1 row in set (0.01 sec)\n'
BEGIN
    RETURN IF(EXISTS(SELECT 1
                       FROM performance_schema.setup_actors
                      WHERE (`HOST` = '%' OR in_host LIKE `HOST`)
                        AND (`USER` = '%' OR `USER` = in_user)
                        AND (`ENABLED` = 'YES')
                    ),
              'YES', 'NO'
           );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_consumer_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_consumer_enabled`(
        in_consumer varchar(64)
   ) RETURNS enum('YES','NO') CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDetermines whether a consumer is enabled (taking the consumer hierarchy into consideration)\nwithin the Performance Schema.\n\nAn exception with errno 3047 is thrown if an unknown consumer name is passed to the function.\nA consumer name of NULL returns NULL.\n\nParameters\n-----------\n\nin_consumer VARCHAR(64): \n  The name of the consumer to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_consumer_enabled(''events_stages_history'');\n+-----------------------------------------------------+\n| sys.ps_is_consumer_enabled(''events_stages_history'') |\n+-----------------------------------------------------+\n| NO                                                  |\n+-----------------------------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    DECLARE v_is_enabled ENUM('YES', 'NO') DEFAULT NULL;
    DECLARE v_error_msg VARCHAR(128);
    -- Return NULL for a NULL argument.
    IF (in_consumer IS NULL) THEN
        RETURN NULL;
    END IF;
    SET v_is_enabled = (
        SELECT (CASE
                   WHEN c.NAME = 'global_instrumentation' THEN c.ENABLED
                   WHEN c.NAME = 'thread_instrumentation' THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   WHEN c.NAME LIKE '%\_digest'           THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   WHEN c.NAME LIKE '%\_current'          THEN IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   ELSE IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES'
                           AND ( SELECT cc.ENABLED FROM performance_schema.setup_consumers cc WHERE NAME = CONCAT(SUBSTRING_INDEX(c.NAME, '_', 2), '_current')
                               ) = 'YES', 'YES', 'NO')
                END) AS IsEnabled
          FROM performance_schema.setup_consumers c
               INNER JOIN performance_schema.setup_consumers cg
               INNER JOIN performance_schema.setup_consumers ct
         WHERE cg.NAME       = 'global_instrumentation'
               AND ct.NAME   = 'thread_instrumentation'
               AND c.NAME    = in_consumer
        );
    IF (v_is_enabled IS NOT NULL) THEN
        RETURN v_is_enabled;
    ELSE
        -- A value of NULL here means it is an unknown consumer name that was passed as an argument.
        -- Only an input value of NULL is allowed to return a NULL result value, to throw a signal instead.
        SET v_error_msg = CONCAT('Invalid argument error: ', in_consumer, ' in function sys.ps_is_consumer_enabled.');
        SIGNAL SQLSTATE 'HY000'
           SET MESSAGE_TEXT = v_error_msg,
               MYSQL_ERRNO  = 3047;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_instrument_default_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_instrument_default_enabled`(
        in_instrument VARCHAR(128)
    ) RETURNS enum('YES','NO') CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns whether an instrument is enabled by default in this version of MySQL.\n\nParameters\n-----------\n\nin_instrument VARCHAR(128): \n  The instrument to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_instrument_default_enabled(''statement/sql/select'');\n+--------------------------------------------------------------+\n| sys.ps_is_instrument_default_enabled(''statement/sql/select'') |\n+--------------------------------------------------------------+\n| YES                                                          |\n+--------------------------------------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    DECLARE v_enabled ENUM('YES', 'NO');
    IF (in_instrument LIKE 'stage/%') THEN
    BEGIN
      /* Stages are enabled by default if the progress property is set. */
      SET v_enabled = (SELECT
                        IF(find_in_set("progress", PROPERTIES) != 0, 'YES', 'NO')
                        FROM performance_schema.setup_instruments
                        WHERE NAME = in_instrument);
      SET v_enabled = IFNULL(v_enabled, 'NO');
    END;
    ELSE
      SET v_enabled = IF(in_instrument LIKE 'wait/synch/%'
                         OR in_instrument LIKE 'wait/io/socket/%'
                        ,
                         'NO',
                         'YES'
                      );
    END IF;
    RETURN v_enabled;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_instrument_default_timed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_instrument_default_timed`(
        in_instrument VARCHAR(128)
    ) RETURNS enum('YES','NO') CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns whether an instrument is timed by default in this version of MySQL.\n\nParameters\n-----------\n\nin_instrument VARCHAR(128): \n  The instrument to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_instrument_default_timed(''statement/sql/select'');\n+------------------------------------------------------------+\n| sys.ps_is_instrument_default_timed(''statement/sql/select'') |\n+------------------------------------------------------------+\n| YES                                                        |\n+------------------------------------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    DECLARE v_timed ENUM('YES', 'NO');
    IF (in_instrument LIKE 'stage/%') THEN
    BEGIN
      -- Stages are timed by default if the progress property is set.
      SET v_timed = (SELECT
                      IF(find_in_set("progress", PROPERTIES) != 0, 'YES', 'NO')
                      FROM performance_schema.setup_instruments
                      WHERE NAME = in_instrument);
      SET v_timed = IFNULL(v_timed, 'NO');
    END;
    ELSE
      -- Mutex, rwlock, prlock, sxlock, cond are not timed by default
      -- Memory instruments are never timed.
      SET v_timed = IF(in_instrument LIKE 'wait/synch/%'
                       OR in_instrument LIKE 'memory/%'
                      ,
                       'NO',
                       'YES'
                    );
    END IF;
    RETURN v_timed;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_thread_instrumented` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_thread_instrumented`(
        in_connection_id BIGINT UNSIGNED
    ) RETURNS enum('YES','NO','UNKNOWN') CHARSET utf8mb4
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nChecks whether the provided connection id is instrumented within Performance Schema.\n\nParameters\n-----------\n\nin_connection_id (BIGINT UNSIGNED):\n  The id of the connection to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'', ''UNKNOWN'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_thread_instrumented(CONNECTION_ID());\n+------------------------------------------------+\n| sys.ps_is_thread_instrumented(CONNECTION_ID()) |\n+------------------------------------------------+\n| YES                                            |\n+------------------------------------------------+\n'
BEGIN
    DECLARE v_enabled ENUM('YES', 'NO', 'UNKNOWN');
    IF (in_connection_id IS NULL) THEN
        RETURN NULL;
    END IF;
    SELECT INSTRUMENTED INTO v_enabled
      FROM performance_schema.threads 
     WHERE PROCESSLIST_ID = in_connection_id;
    IF (v_enabled IS NULL) THEN
        RETURN 'UNKNOWN';
    ELSE
        RETURN v_enabled;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_account`(
        in_thread_id BIGINT UNSIGNED
    ) RETURNS text CHARSET utf8mb4
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturn the user@host account for the given Performance Schema thread id.\n\nParameters\n-----------\n\nin_thread_id (BIGINT UNSIGNED):\n  The id of the thread to return the account for.\n\nExample\n-----------\n\nmysql> select thread_id, processlist_user, processlist_host from performance_schema.threads where type = ''foreground'';\n+-----------+------------------+------------------+\n| thread_id | processlist_user | processlist_host |\n+-----------+------------------+------------------+\n|        23 | NULL             | NULL             |\n|        30 | root             | localhost        |\n|        31 | msandbox         | localhost        |\n|        32 | msandbox         | localhost        |\n+-----------+------------------+------------------+\n4 rows in set (0.00 sec)\n\nmysql> select sys.ps_thread_account(31);\n+---------------------------+\n| sys.ps_thread_account(31) |\n+---------------------------+\n| msandbox@localhost        |\n+---------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN (SELECT IF(
                      type = 'FOREGROUND',
                      CONCAT(processlist_user, '@', processlist_host),
                      type
                     ) AS account
              FROM `performance_schema`.`threads`
             WHERE thread_id = in_thread_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_id`(
        in_connection_id BIGINT UNSIGNED
    ) RETURNS bigint unsigned
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturn the Performance Schema THREAD_ID for the specified connection ID.\n\nParameters\n-----------\n\nin_connection_id (BIGINT UNSIGNED):\n  The id of the connection to return the thread id for. If NULL, the current\n  connection thread id is returned.\n\nExample\n-----------\n\nmysql> SELECT sys.ps_thread_id(79);\n+----------------------+\n| sys.ps_thread_id(79) |\n+----------------------+\n|                   98 |\n+----------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT sys.ps_thread_id(CONNECTION_ID());\n+-----------------------------------+\n| sys.ps_thread_id(CONNECTION_ID()) |\n+-----------------------------------+\n|                                98 |\n+-----------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
  IF (in_connection_id IS NULL) THEN
    RETURN ps_current_thread_id();
  ELSE
    RETURN ps_thread_id(in_connection_id);
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_stack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_stack`(
        thd_id BIGINT UNSIGNED,
        debug BOOLEAN
    ) RETURNS longtext CHARSET latin1
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nOutputs a JSON formatted stack of all statements, stages and events\nwithin Performance Schema for the specified thread.\n\nParameters\n-----------\n\nthd_id (BIGINT UNSIGNED):\n  The id of the thread to trace. This should match the thread_id\n  column from the performance_schema.threads table.\nin_verbose (BOOLEAN):\n  Include file:lineno information in the events.\n\nExample\n-----------\n\n(line separation added for output)\n\nmysql> SELECT sys.ps_thread_stack(37, FALSE) AS thread_stack\\G\n*************************** 1. row ***************************\nthread_stack: {"rankdir": "LR","nodesep": "0.10","stack_created": "2014-02-19 13:39:03",\n"mysql_version": "5.7.3-m13","mysql_user": "root@localhost","events": \n[{"nesting_event_id": "0", "event_id": "10", "timer_wait": 256.35, "event_info": \n"sql/select", "wait_info": "select @@version_comment limit 1\\nerrors: 0\\nwarnings: 0\\nlock time:\n...\n'
BEGIN
    DECLARE json_objects LONGTEXT;
    -- Do not track the current thread, it will kill the stack
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE processlist_id = CONNECTION_ID();
    SET SESSION group_concat_max_len=@@global.max_allowed_packet;
    -- Select the entire stack of events
    SELECT GROUP_CONCAT(CONCAT( '{'
              , CONCAT_WS( ', '
              , CONCAT('"nesting_event_id": "', IF(nesting_event_id IS NULL, '0', nesting_event_id), '"')
              , CONCAT('"event_id": "', event_id, '"')
              -- Convert from picoseconds to microseconds
              , CONCAT( '"timer_wait": ', ROUND(timer_wait/1000000, 2))  
              , CONCAT( '"event_info": "'
                  , CASE
                        WHEN event_name NOT LIKE 'wait/io%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -2), '\\', '\\\\')
                        WHEN event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -4), '\\', '\\\\')
                        ELSE event_name
                    END
                  , '"'
              )
              -- Always dump the extra wait information gathered for statements
              , CONCAT( '"wait_info": "', IFNULL(wait_info, ''), '"')
              -- If debug is enabled, add the file:lineno information for waits
              , CONCAT( '"source": "', IF(true AND event_name LIKE 'wait%', IFNULL(wait_info, ''), ''), '"')
              -- Depending on the type of event, name it appropriately
              , CASE 
                     WHEN event_name LIKE 'wait/io/file%'      THEN '"event_type": "io/file"'
                     WHEN event_name LIKE 'wait/io/table%'     THEN '"event_type": "io/table"'
                     WHEN event_name LIKE 'wait/io/socket%'    THEN '"event_type": "io/socket"'
                     WHEN event_name LIKE 'wait/synch/mutex%'  THEN '"event_type": "synch/mutex"'
                     WHEN event_name LIKE 'wait/synch/cond%'   THEN '"event_type": "synch/cond"'
                     WHEN event_name LIKE 'wait/synch/rwlock%' THEN '"event_type": "synch/rwlock"'
                     WHEN event_name LIKE 'wait/lock%'         THEN '"event_type": "lock"'
                     WHEN event_name LIKE 'statement/%'        THEN '"event_type": "stmt"'
                     WHEN event_name LIKE 'stage/%'            THEN '"event_type": "stage"'
                     WHEN event_name LIKE '%idle%'             THEN '"event_type": "idle"'
                     ELSE '' 
                END                   
            )
            , '}'
          )
          ORDER BY event_id ASC SEPARATOR ',') event
    INTO json_objects
    FROM (
          -- Select all statements, with the extra tracing information available
          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, 
                  CONCAT(sql_text, '\\n',
                         'errors: ', errors, '\\n',
                         'warnings: ', warnings, '\\n',
                         'lock time: ', ROUND(lock_time/1000000, 2),'us\\n',
                         'rows affected: ', rows_affected, '\\n',
                         'rows sent: ', rows_sent, '\\n',
                         'rows examined: ', rows_examined, '\\n',
                         'tmp tables: ', created_tmp_tables, '\\n',
                         'tmp disk tables: ', created_tmp_disk_tables, '\\n',
                         'select scan: ', select_scan, '\\n',
                         'select full join: ', select_full_join, '\\n',
                         'select full range join: ', select_full_range_join, '\\n',
                         'select range: ', select_range, '\\n',
                         'select range check: ', select_range_check, '\\n', 
                         'sort merge passes: ', sort_merge_passes, '\\n',
                         'sort rows: ', sort_rows, '\\n',
                         'sort range: ', sort_range, '\\n',
                         'sort scan: ', sort_scan, '\\n',
                         'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n',
                         'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n'
                         ) AS wait_info
             FROM performance_schema.events_statements_history_long WHERE thread_id = thd_id)
          UNION 
          -- Select all stages
          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info
             FROM performance_schema.events_stages_history_long WHERE thread_id = thd_id) 
          UNION
          -- Select all events, adding information appropriate to the event
          (SELECT thread_id, event_id, 
                  CONCAT(event_name , 
                         IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''), 
                         IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''),
                         IF(event_name LIKE 'wait/io/file%', '\\n', ''),
                         IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''), 
                         IF(object_name IS NOT NULL, 
                            IF (event_name LIKE 'wait/io/socket%',
                                -- Print the socket if used, else the IP:port as reported
                                CONCAT(IF (object_name LIKE ':0%', @@socket, object_name)),
                                object_name),
                            ''),
                         IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''),'\\n'
                         ) AS event_name,
                  timer_wait, timer_start, nesting_event_id, source AS wait_info
             FROM performance_schema.events_waits_history_long WHERE thread_id = thd_id)) events 
    ORDER BY event_id;
    RETURN CONCAT('{', 
                  CONCAT_WS(',', 
                            '"rankdir": "LR"',
                            '"nodesep": "0.10"',
                            CONCAT('"stack_created": "', NOW(), '"'),
                            CONCAT('"mysql_version": "', VERSION(), '"'),
                            CONCAT('"mysql_user": "', CURRENT_USER(), '"'),
                            CONCAT('"events": [', IFNULL(json_objects,''), ']')
                           ),
                  '}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_trx_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_trx_info`(
        in_thread_id BIGINT UNSIGNED
    ) RETURNS longtext CHARSET utf8mb4
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns a JSON object with info on the given threads current transaction, \nand the statements it has already executed, derived from the\nperformance_schema.events_transactions_current and\nperformance_schema.events_statements_history tables (so the consumers \nfor these also have to be enabled within Performance Schema to get full\ndata in the object).\n\nWhen the output exceeds the default truncation length (65535), a JSON error\nobject is returned, such as:\n\n{ "error": "Trx info truncated: Row 6 was cut by GROUP_CONCAT()" }\n\nSimilar error objects are returned for other warnings/and exceptions raised\nwhen calling the function.\n\nThe max length of the output of this function can be controlled with the\nps_thread_trx_info.max_length variable set via sys_config, or the\n@sys.ps_thread_trx_info.max_length user variable, as appropriate.\n\nParameters\n-----------\n\nin_thread_id (BIGINT UNSIGNED):\n  The id of the thread to return the transaction info for.\n\nExample\n-----------\n\nSELECT sys.ps_thread_trx_info(48)\\G\n*************************** 1. row ***************************\nsys.ps_thread_trx_info(48): [\n  {\n    "time": "790.70 us",\n    "state": "COMMITTED",\n    "mode": "READ WRITE",\n    "autocommitted": "NO",\n    "gtid": "AUTOMATIC",\n    "isolation": "REPEATABLE READ",\n    "statements_executed": [\n      {\n        "sql_text": "INSERT INTO info VALUES (1, ''foo'')",\n        "time": "471.02 us",\n        "schema": "trx",\n        "rows_examined": 0,\n        "rows_affected": 1,\n        "rows_sent": 0,\n        "tmp_tables": 0,\n        "tmp_disk_tables": 0,\n        "sort_rows": 0,\n        "sort_merge_passes": 0\n      },\n      {\n        "sql_text": "COMMIT",\n        "time": "254.42 us",\n        "schema": "trx",\n        "rows_examined": 0,\n        "rows_affected": 0,\n        "rows_sent": 0,\n        "tmp_tables": 0,\n        "tmp_disk_tables": 0,\n        "sort_rows": 0,\n        "sort_merge_passes": 0\n      }\n    ]\n  },\n  {\n    "time": "426.20 us",\n    "state": "COMMITTED",\n    "mode": "READ WRITE",\n    "autocommitted": "NO",\n    "gtid": "AUTOMATIC",\n    "isolation": "REPEATABLE READ",\n    "statements_executed": [\n      {\n        "sql_text": "INSERT INTO info VALUES (2, ''bar'')",\n        "time": "107.33 us",\n        "schema": "trx",\n        "rows_examined": 0,\n        "rows_affected": 1,\n        "rows_sent": 0,\n        "tmp_tables": 0,\n        "tmp_disk_tables": 0,\n        "sort_rows": 0,\n        "sort_merge_passes": 0\n      },\n      {\n        "sql_text": "COMMIT",\n        "time": "213.23 us",\n        "schema": "trx",\n        "rows_examined": 0,\n        "rows_affected": 0,\n        "rows_sent": 0,\n        "tmp_tables": 0,\n        "tmp_disk_tables": 0,\n        "sort_rows": 0,\n        "sort_merge_passes": 0\n      }\n    ]\n  }\n]\n1 row in set (0.03 sec)\n'
BEGIN
    DECLARE v_output LONGTEXT DEFAULT '{}';
    DECLARE v_msg_text TEXT DEFAULT '';
    DECLARE v_signal_msg TEXT DEFAULT '';
    DECLARE v_mysql_errno INT;
    DECLARE v_max_output_len BIGINT;
    -- Capture warnings/errors such as group_concat truncation
    -- and report as JSON error objects
    DECLARE EXIT HANDLER FOR SQLWARNING, SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            v_msg_text = MESSAGE_TEXT,
            v_mysql_errno = MYSQL_ERRNO;
        IF v_mysql_errno = 1260 THEN
            SET v_signal_msg = CONCAT('{ "error": "Trx info truncated: ', v_msg_text, '" }');
        ELSE
            SET v_signal_msg = CONCAT('{ "error": "', v_msg_text, '" }');
        END IF;
        RETURN v_signal_msg;
    END;
    -- Set configuration options
    IF (@sys.ps_thread_trx_info.max_length IS NULL) THEN
        SET @sys.ps_thread_trx_info.max_length = sys.sys_get_config('ps_thread_trx_info.max_length', 65535);
    END IF;
    IF (@sys.ps_thread_trx_info.max_length != @@session.group_concat_max_len) THEN
        SET @old_group_concat_max_len = @@session.group_concat_max_len;
        -- Convert to int value for the SET, and give some surrounding space
        SET v_max_output_len = (@sys.ps_thread_trx_info.max_length - 5);
        SET SESSION group_concat_max_len = v_max_output_len;
    END IF;
    SET v_output = (
        SELECT CONCAT('[', IFNULL(GROUP_CONCAT(trx_info ORDER BY event_id), ''), '\n]') AS trx_info
          FROM (SELECT trxi.thread_id, 
                       trxi.event_id,
                       GROUP_CONCAT(
                         IFNULL(
                           CONCAT('\n  {\n',
                                  '    "time": "', IFNULL(format_pico_time(trxi.timer_wait), ''), '",\n',
                                  '    "state": "', IFNULL(trxi.state, ''), '",\n',
                                  '    "mode": "', IFNULL(trxi.access_mode, ''), '",\n',
                                  '    "autocommitted": "', IFNULL(trxi.autocommit, ''), '",\n',
                                  '    "gtid": "', IFNULL(trxi.gtid, ''), '",\n',
                                  '    "isolation": "', IFNULL(trxi.isolation_level, ''), '",\n',
                                  '    "statements_executed": [', IFNULL(s.stmts, ''), IF(s.stmts IS NULL, ' ]\n', '\n    ]\n'),
                                  '  }'
                           ), 
                           '') 
                         ORDER BY event_id) AS trx_info
                  FROM (
                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level
                           FROM performance_schema.events_transactions_current
                          WHERE thread_id = in_thread_id
                            AND end_event_id IS NULL)
                        UNION
                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level
                           FROM performance_schema.events_transactions_history
                          WHERE thread_id = in_thread_id)
                       ) AS trxi
                  LEFT JOIN (SELECT thread_id,
                                    nesting_event_id,
                                    GROUP_CONCAT(
                                      IFNULL(
                                        CONCAT('\n      {\n',
                                               '        "sql_text": "', IFNULL(sys.format_statement(REPLACE(sql_text, '\\', '\\\\')), ''), '",\n',
                                               '        "time": "', IFNULL(format_pico_time(timer_wait), ''), '",\n',
                                               '        "schema": "', IFNULL(current_schema, ''), '",\n',
                                               '        "rows_examined": ', IFNULL(rows_examined, ''), ',\n',
                                               '        "rows_affected": ', IFNULL(rows_affected, ''), ',\n',
                                               '        "rows_sent": ', IFNULL(rows_sent, ''), ',\n',
                                               '        "tmp_tables": ', IFNULL(created_tmp_tables, ''), ',\n',
                                               '        "tmp_disk_tables": ', IFNULL(created_tmp_disk_tables, ''), ',\n',
                                               '        "sort_rows": ', IFNULL(sort_rows, ''), ',\n',
                                               '        "sort_merge_passes": ', IFNULL(sort_merge_passes, ''), '\n',
                                               '      }'), '') ORDER BY event_id) AS stmts
                               FROM performance_schema.events_statements_history
                              WHERE sql_text IS NOT NULL
                                AND thread_id = in_thread_id
                              GROUP BY thread_id, nesting_event_id
                            ) AS s 
                    ON trxi.thread_id = s.thread_id 
                   AND trxi.event_id = s.nesting_event_id
                 WHERE trxi.thread_id = in_thread_id
                 GROUP BY trxi.thread_id, trxi.event_id
                ) trxs
          GROUP BY thread_id
    );
    IF (@old_group_concat_max_len IS NOT NULL) THEN
        SET SESSION group_concat_max_len = @old_group_concat_max_len;
    END IF;
    RETURN v_output;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `quote_identifier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `quote_identifier`(in_identifier TEXT) RETURNS text CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes an unquoted identifier (schema name, table name, etc.) and\nreturns the identifier quoted with backticks.\n\nParameters\n-----------\n\nin_identifier (TEXT):\n  The identifier to quote.\n\nReturns\n-----------\n\nTEXT CHARSET UTF8MB4\n\nExample\n-----------\n\nmysql> SELECT sys.quote_identifier(''my_identifier'') AS Identifier;\n+-----------------+\n| Identifier      |\n+-----------------+\n| `my_identifier` |\n+-----------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT sys.quote_identifier(''my`idenfier'') AS Identifier;\n+----------------+\n| Identifier     |\n+----------------+\n| `my``idenfier` |\n+----------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN CONCAT('`', REPLACE(in_identifier, '`', '``'), '`');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sys_get_config` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `sys_get_config`(
        in_variable_name VARCHAR(128),
        in_default_value VARCHAR(128)
    ) RETURNS varchar(128) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns the value for the requested variable using the following logic:\n\n   1. If the option exists in sys.sys_config return the value from there.\n   2. Else fall back on the provided default value.\n\nNotes for using sys_get_config():\n\n   * If the default value argument to sys_get_config() is NULL and case 2. is reached, NULL is returned.\n     It is then expected that the caller is able to handle NULL for the given configuration option.\n   * The convention is to name the user variables @sys.<name of variable>. It is <name of variable> that\n     is stored in the sys_config table and is what is expected as the argument to sys_get_config().\n   * If you want to check whether the configuration option has already been set and if not assign with\n     the return value of sys_get_config() you can use IFNULL(...) (see example below). However this should\n     not be done inside a loop (e.g. for each row in a result set) as for repeated calls where assignment\n     is only needed in the first iteration using IFNULL(...) is expected to be significantly slower than\n     using an IF (...) THEN ... END IF; block (see example below).\n\nParameters\n-----------\n\nin_variable_name (VARCHAR(128)):\n  The name of the config option to return the value for.\n\nin_default_value (VARCHAR(128)):\n  The default value to return if the variable does not exist in sys.sys_config.\n\nReturns\n-----------\n\nVARCHAR(128)\n\nExample\n-----------\n\n-- Get the configuration value from sys.sys_config falling back on 128 if the option is not present in the table.\nmysql> SELECT sys.sys_get_config(''statement_truncate_len'', 128) AS Value;\n+-------+\n| Value |\n+-------+\n| 64    |\n+-------+\n1 row in set (0.00 sec)\n\n-- Check whether the option is already set, if not assign - IFNULL(...) one liner example.\nmysql> SET @sys.statement_truncate_len = IFNULL(@sys.statement_truncate_len, sys.sys_get_config(''statement_truncate_len'', 64));\nQuery OK, 0 rows affected (0.00 sec)\n\n-- Check whether the option is already set, if not assign - IF ... THEN ... END IF example.\nIF (@sys.statement_truncate_len IS NULL) THEN\n    SET @sys.statement_truncate_len = sys.sys_get_config(''statement_truncate_len'', 64);\nEND IF;\n'
BEGIN
    DECLARE v_value VARCHAR(128) DEFAULT NULL;
    -- Check if we have the variable in the sys.sys_config table
    SET v_value = (SELECT value FROM sys.sys_config WHERE variable = in_variable_name);
    -- Protection against the variable not existing in sys_config
    IF (v_value IS NULL) THEN
        SET v_value = in_default_value;
    END IF;
    RETURN v_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_major` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_major`() RETURNS tinyint unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns the major version of MySQL Server.\n\nReturns\n-----------\n\nTINYINT UNSIGNED\n\nExample\n-----------\n\nmysql> SELECT VERSION(), sys.version_major();\n+--------------------------------------+---------------------+\n| VERSION()                            | sys.version_major() |\n+--------------------------------------+---------------------+\n| 5.7.9-enterprise-commercial-advanced | 5                   |\n+--------------------------------------+---------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_minor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_minor`() RETURNS tinyint unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns the minor (release series) version of MySQL Server.\n\nReturns\n-----------\n\nTINYINT UNSIGNED\n\nExample\n-----------\n\nmysql> SELECT VERSION(), sys.server_minor();\n+--------------------------------------+---------------------+\n| VERSION()                            | sys.version_minor() |\n+--------------------------------------+---------------------+\n| 5.7.9-enterprise-commercial-advanced | 7                   |\n+--------------------------------------+---------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 2), '.', -1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_patch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_patch`() RETURNS tinyint unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns the patch release version of MySQL Server.\n\nReturns\n-----------\n\nTINYINT UNSIGNED\n\nExample\n-----------\n\nmysql> SELECT VERSION(), sys.version_patch();\n+--------------------------------------+---------------------+\n| VERSION()                            | sys.version_patch() |\n+--------------------------------------+---------------------+\n| 5.7.9-enterprise-commercial-advanced | 9                   |\n+--------------------------------------+---------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', -1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_synonym_db` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `create_synonym_db`(
        IN in_db_name VARCHAR(64), 
        IN in_synonym VARCHAR(64)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a source database name and synonym name, and then creates the \nsynonym database with views that point to all of the tables within\nthe source database.\n\nUseful for creating a "ps" synonym for "performance_schema",\nor "is" instead of "information_schema", for example.\n\nParameters\n-----------\n\nin_db_name (VARCHAR(64)):\n  The database name that you would like to create a synonym for.\nin_synonym (VARCHAR(64)):\n  The database synonym name.\n\nExample\n-----------\n\nmysql> SHOW DATABASES;\n+--------------------+\n| Database           |\n+--------------------+\n| information_schema |\n| mysql              |\n| performance_schema |\n| sys                |\n| test               |\n+--------------------+\n5 rows in set (0.00 sec)\n\nmysql> CALL sys.create_synonym_db(''performance_schema'', ''ps'');\n+---------------------------------------+\n| summary                               |\n+---------------------------------------+\n| Created 74 views in the `ps` database |\n+---------------------------------------+\n1 row in set (8.57 sec)\n\nQuery OK, 0 rows affected (8.57 sec)\n\nmysql> SHOW DATABASES;\n+--------------------+\n| Database           |\n+--------------------+\n| information_schema |\n| mysql              |\n| performance_schema |\n| ps                 |\n| sys                |\n| test               |\n+--------------------+\n6 rows in set (0.00 sec)\n\nmysql> SHOW FULL TABLES FROM ps;\n+------------------------------------------------------+------------+\n| Tables_in_ps                                         | Table_type |\n+------------------------------------------------------+------------+\n| accounts                                             | VIEW       |\n| cond_instances                                       | VIEW       |\n| events_stages_current                                | VIEW       |\n| events_stages_history                                | VIEW       |\n...\n'
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_db_name_check VARCHAR(64);
    DECLARE v_db_err_msg TEXT;
    DECLARE v_table VARCHAR(64);
    DECLARE v_views_created INT DEFAULT 0;
    DECLARE db_doesnt_exist CONDITION FOR SQLSTATE '42000';
    DECLARE db_name_exists CONDITION FOR SQLSTATE 'HY000';
    DECLARE c_table_names CURSOR FOR 
        SELECT TABLE_NAME 
          FROM INFORMATION_SCHEMA.TABLES 
         WHERE TABLE_SCHEMA = in_db_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    -- Check if the source database exists
    SELECT SCHEMA_NAME INTO v_db_name_check
      FROM INFORMATION_SCHEMA.SCHEMATA
     WHERE SCHEMA_NAME = in_db_name;
    IF v_db_name_check IS NULL THEN
        SET v_db_err_msg = CONCAT('Unknown database ', in_db_name);
        SIGNAL SQLSTATE 'HY000'
            SET MESSAGE_TEXT = v_db_err_msg;
    END IF;
    -- Check if a database of the synonym name already exists
    SELECT SCHEMA_NAME INTO v_db_name_check
      FROM INFORMATION_SCHEMA.SCHEMATA
     WHERE SCHEMA_NAME = in_synonym;
    IF v_db_name_check = in_synonym THEN
        SET v_db_err_msg = CONCAT('Can\'t create database ', in_synonym, '; database exists');
        SIGNAL SQLSTATE 'HY000'
            SET MESSAGE_TEXT = v_db_err_msg;
    END IF;
    -- All good, create the database and views
    SET @create_db_stmt := CONCAT('CREATE DATABASE ', sys.quote_identifier(in_synonym));
    PREPARE create_db_stmt FROM @create_db_stmt;
    EXECUTE create_db_stmt;
    DEALLOCATE PREPARE create_db_stmt;
    SET v_done = FALSE;
    OPEN c_table_names;
    c_table_names: LOOP
        FETCH c_table_names INTO v_table;
        IF v_done THEN
            LEAVE c_table_names;
        END IF;
        SET @create_view_stmt = CONCAT(
            'CREATE SQL SECURITY INVOKER VIEW ',
            sys.quote_identifier(in_synonym),
            '.',
            sys.quote_identifier(v_table),
            ' AS SELECT * FROM ',
            sys.quote_identifier(in_db_name),
            '.',
            sys.quote_identifier(v_table)
        );
        PREPARE create_view_stmt FROM @create_view_stmt;
        EXECUTE create_view_stmt;
        DEALLOCATE PREPARE create_view_stmt;
        SET v_views_created = v_views_created + 1;
    END LOOP;
    CLOSE c_table_names;
    SELECT CONCAT(
        'Created ', v_views_created, ' view',
        IF(v_views_created != 1, 's', ''), ' in the ',
        sys.quote_identifier(in_synonym), ' database'
    ) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `diagnostics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `diagnostics`(
        IN in_max_runtime int unsigned, IN in_interval int unsigned,
        IN in_auto_config enum ('current', 'medium', 'full')
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nCreate a report of the current status of the server for diagnostics purposes. Data collected includes (some items depends on versions and settings):\n\n   * The GLOBAL VARIABLES\n   * Several sys schema views including metrics or equivalent (depending on version and settings)\n   * Queries in the 95th percentile\n   * Several ndbinfo views for MySQL Cluster\n   * Replication (both master and slave) information.\n\nSome of the sys schema views are calculated as initial (optional), overall, delta:\n\n   * The initial view is the content of the view at the start of this procedure.\n     This output will be the same as the the start values used for the delta view.\n     The initial view is included if @sys.diagnostics.include_raw = ''ON''.\n   * The overall view is the content of the view at the end of this procedure.\n     This output is the same as the end values used for the delta view.\n     The overall view is always included.\n   * The delta view is the difference from the beginning to the end. Note that for min and max values\n     they are simply the min or max value from the end view respectively, so does not necessarily reflect\n     the minimum/maximum value in the monitored period.\n     Note: except for the metrics views the delta is only calculation between the first and last outputs.\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_max_runtime (INT UNSIGNED):\n  The maximum time to keep collecting data.\n  Use NULL to get the default which is 60 seconds, otherwise enter a value greater than 0.\nin_interval (INT UNSIGNED):\n  How long to sleep between data collections.\n  Use NULL to get the default which is 30 seconds, otherwise enter a value greater than 0.\nin_auto_config (ENUM(''current'', ''medium'', ''full''))\n  Automatically enable Performance Schema instruments and consumers.\n  NOTE: The more that are enabled, the more impact on the performance.\n  Supported values are:\n     * current - use the current settings.\n     * medium - enable some settings. This requires the SUPER privilege.\n     * full - enables all settings. This will have a big impact on the\n              performance - be careful using this option. This requires\n              the SUPER privilege.\n  If another setting the ''current'' is chosen, the current settings\n  are restored at the end of the procedure.\n\n\nConfiguration Options\n----------------------\n\nsys.diagnostics.allow_i_s_tables\n  Specifies whether it is allowed to do table scan queries on information_schema.TABLES. This can be expensive if there\n  are many tables. Set to ''ON'' to allow, ''OFF'' to not allow.\n  Default is ''OFF''.\n\nsys.diagnostics.include_raw\n  Set to ''ON'' to include the raw data (e.g. the original output of "SELECT * FROM sys.metrics").\n  Use this to get the initial values of the various views.\n  Default is ''OFF''.\n\nsys.statement_truncate_len\n  How much of queries in the process list output to include.\n  Default is 64.\n\nsys.debug\n  Whether to provide debugging output.\n  Default is ''OFF''. Set to ''ON'' to include.\n\n\nExample\n--------\n\nTo create a report and append it to the file diag.out:\n\nmysql> TEE diag.out;\nmysql> CALL sys.diagnostics(120, 30, ''current'');\n...\nmysql> NOTEE;\n'
BEGIN
    DECLARE v_start, v_runtime, v_iter_start, v_sleep DECIMAL(20,2) DEFAULT 0.0;
    DECLARE v_has_innodb, v_has_ndb, v_has_ps, v_has_replication, v_has_ps_replication VARCHAR(8) CHARSET utf8mb4 DEFAULT 'NO';
    DECLARE v_this_thread_enabled  ENUM('YES', 'NO');
    DECLARE v_table_name, v_banner VARCHAR(64) CHARSET utf8mb4;
    DECLARE v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from, v_no_delta_names TEXT;
    DECLARE v_output_time, v_output_time_prev DECIMAL(20,3) UNSIGNED;
    DECLARE v_output_count, v_count, v_old_group_concat_max_len INT UNSIGNED DEFAULT 0;
    -- The width of each of the status outputs in the summery
    DECLARE v_status_summary_width TINYINT UNSIGNED DEFAULT 50;
    DECLARE v_done BOOLEAN DEFAULT FALSE;
    -- Do not include the following ndbinfo views:
    --    'blocks'                    Static
    --    'config_params'             Static
    --    'dict_obj_types'            Static
    --    'disk_write_speed_base'     Can generate lots of output - only include aggregate views here
    --    'memory_per_fragment'       Can generate lots of output
    --    'memoryusage'               Handled separately
    --    'operations_per_fragment'   Can generate lots of output
    --    'threadblocks'              Only needed once
    DECLARE c_ndbinfo CURSOR FOR
        SELECT TABLE_NAME
          FROM information_schema.TABLES
         WHERE TABLE_SCHEMA = 'ndbinfo'
               AND TABLE_NAME NOT IN (
                  'blocks',
                  'config_params',
                  'dict_obj_types',
                  'disk_write_speed_base',
                  'memory_per_fragment',
                  'memoryusage',
                  'operations_per_fragment',
                  'threadblocks'
               );
    DECLARE c_sysviews_w_delta CURSOR FOR
        SELECT table_name
          FROM tmp_sys_views_delta
         ORDER BY table_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    -- Do not track the current thread - no reason to clutter the output
    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    END IF;
    -- Check options are sane
    IF (in_max_runtime < in_interval) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_max_runtime must be greater than or equal to in_interval';
    END IF;
    IF (in_max_runtime = 0) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_max_runtime must be greater than 0';
    END IF;
    IF (in_interval = 0) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_interval must be greater than 0';
    END IF;
    -- Set configuration options
    IF (@sys.diagnostics.allow_i_s_tables IS NULL) THEN
        SET @sys.diagnostics.allow_i_s_tables = sys.sys_get_config('diagnostics.allow_i_s_tables', 'OFF');
    END IF;
    IF (@sys.diagnostics.include_raw IS NULL) THEN
        SET @sys.diagnostics.include_raw      = sys.sys_get_config('diagnostics.include_raw'     , 'OFF');
    END IF;
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug                        = sys.sys_get_config('debug'                       , 'OFF');
    END IF;
    IF (@sys.statement_truncate_len IS NULL) THEN
        SET @sys.statement_truncate_len       = sys.sys_get_config('statement_truncate_len'      , '64' );
    END IF;
    -- Temporary table are used - disable sql_log_bin if necessary to prevent them replicating
    SET @log_bin := @@sql_log_bin;
    IF ((@log_bin = 1) AND (@@binlog_format = 'STATEMENT')) THEN
        SET sql_log_bin = 0;
    END IF;
    -- Some metrics variables doesn't make sense in delta and rate calculations even if they are numeric
    -- as they really are more like settings or "current" status.
    SET v_no_delta_names = CONCAT('s%{COUNT}.Variable_name NOT IN (',
        '''innodb_buffer_pool_pages_total'', ',
        '''innodb_page_size'', ',
        '''last_query_cost'', ',
        '''last_query_partial_plans'', ',
        '''qcache_total_blocks'', ',
        '''slave_last_heartbeat'', ',
        '''ssl_ctx_verify_depth'', ',
        '''ssl_ctx_verify_mode'', ',
        '''ssl_session_cache_size'', ',
        '''ssl_verify_depth'', ',
        '''ssl_verify_mode'', ',
        '''ssl_version'', ',
        '''buffer_flush_lsn_avg_rate'', ',
        '''buffer_flush_pct_for_dirty'', ',
        '''buffer_flush_pct_for_lsn'', ',
        '''buffer_pool_pages_total'', ',
        '''lock_row_lock_time_avg'', ',
        '''lock_row_lock_time_max'', ',
        '''innodb_page_size''',
    ')');
    IF (in_auto_config <> 'current') THEN
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('Updating Performance Schema configuration to ', in_auto_config) AS 'Debug';
        END IF;
        CALL sys.ps_setup_save(0);
        IF (in_auto_config = 'medium') THEN
            -- Enable all consumers except %history and %history_long
            UPDATE performance_schema.setup_consumers
                SET ENABLED = 'YES'
            WHERE NAME NOT LIKE '%\_history%';
            -- Enable all instruments except wait/synch/%
            UPDATE performance_schema.setup_instruments
                SET ENABLED = 'YES',
                    TIMED   = 'YES'
            WHERE NAME NOT LIKE 'wait/synch/%';
        ELSEIF (in_auto_config = 'full') THEN
            UPDATE performance_schema.setup_consumers
                SET ENABLED = 'YES';
            UPDATE performance_schema.setup_instruments
                SET ENABLED = 'YES',
                    TIMED   = 'YES';
        END IF;
        -- Enable all threads except this one
        UPDATE performance_schema.threads
           SET INSTRUMENTED = 'YES'
         WHERE PROCESSLIST_ID <> CONNECTION_ID();
    END IF;
    SET v_start        = UNIX_TIMESTAMP(NOW(2)),
        in_interval    = IFNULL(in_interval, 30),
        in_max_runtime = IFNULL(in_max_runtime, 60);
    -- Get a quick ref with hostname, server UUID, and the time for the report.
    SET v_banner = REPEAT(
                      '-',
                      LEAST(
                         GREATEST(
                            36,
                            CHAR_LENGTH(VERSION()),
                            CHAR_LENGTH(@@global.version_comment),
                            CHAR_LENGTH(@@global.version_compile_os),
                            CHAR_LENGTH(@@global.version_compile_machine),
                            CHAR_LENGTH(@@global.socket),
                            CHAR_LENGTH(@@global.datadir)
                         ),
                         64
                      )
                   );
    SELECT 'Hostname' AS 'Name', @@global.hostname AS 'Value'
    UNION ALL
    SELECT 'Port' AS 'Name', @@global.port AS 'Value'
    UNION ALL
    SELECT 'Socket' AS 'Name', @@global.socket AS 'Value'
    UNION ALL
    SELECT 'Datadir' AS 'Name', @@global.datadir AS 'Value'
    UNION ALL
    SELECT 'Server UUID' AS 'Name', @@global.server_uuid AS 'Value'
    UNION ALL
    SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value'
    UNION ALL
    SELECT 'MySQL Version' AS 'Name', VERSION() AS 'Value'
    UNION ALL
    SELECT 'Sys Schema Version' AS 'Name', (SELECT sys_version FROM sys.version) AS 'Value'
    UNION ALL
    SELECT 'Version Comment' AS 'Name', @@global.version_comment AS 'Value'
    UNION ALL
    SELECT 'Version Compile OS' AS 'Name', @@global.version_compile_os AS 'Value'
    UNION ALL
    SELECT 'Version Compile Machine' AS 'Name', @@global.version_compile_machine AS 'Value'
    UNION ALL
    SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value'
    UNION ALL
    SELECT 'UTC Time' AS 'Name', UTC_TIMESTAMP() AS 'Value'
    UNION ALL
    SELECT 'Local Time' AS 'Name', NOW() AS 'Value'
    UNION ALL
    SELECT 'Time Zone' AS 'Name', @@global.time_zone AS 'Value'
    UNION ALL
    SELECT 'System Time Zone' AS 'Name', @@global.system_time_zone AS 'Value'
    UNION ALL
    SELECT 'Time Zone Offset' AS 'Name', TIMEDIFF(NOW(), UTC_TIMESTAMP()) AS 'Value';
    -- Are the InnoDB, NDBCluster, and Performance Schema storage engines present?
    SET v_has_innodb         = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'InnoDB'), 'NO'),
        v_has_ndb            = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'NDBCluster'), 'NO'),
        v_has_ps             = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'PERFORMANCE_SCHEMA'), 'NO'),
        v_has_ps_replication = v_has_ps,
        v_has_replication    = IF(v_has_ps_replication = 'YES', IF((SELECT COUNT(*) FROM performance_schema.replication_connection_status) > 0, 'YES', 'NO'),
                                  IF(@@master_info_repository = 'TABLE', IF((SELECT COUNT(*) FROM mysql.slave_master_info) > 0, 'YES', 'NO'),
                                     IF(@@relay_log_info_repository = 'TABLE', IF((SELECT COUNT(*) FROM mysql.slave_relay_log_info) > 0, 'YES', 'NO'),
                                        'MAYBE')));
    IF (@sys.debug = 'ON') THEN
       SELECT v_has_innodb AS 'Has_InnoDB', v_has_ndb AS 'Has_NDBCluster',
              v_has_ps AS 'Has_Performance_Schema',
              v_has_ps_replication 'AS Has_P_S_Replication', v_has_replication AS 'Has_Replication';
    END IF;
    IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
        -- Need to use prepared statement as just having the query as a plain command
        -- will generate an error if the InnoDB storage engine is not present
        SET @sys.diagnostics.sql = 'SHOW ENGINE InnoDB STATUS';
        PREPARE stmt_innodb_status FROM @sys.diagnostics.sql;
    END IF;
    IF (v_has_ps = 'YES') THEN
        -- Need to use prepared statement as just having the query as a plain command
        -- will generate an error if the InnoDB storage engine is not present
        SET @sys.diagnostics.sql = 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS';
        PREPARE stmt_ps_status FROM @sys.diagnostics.sql;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
        -- Need to use prepared statement as just having the query as a plain command
        -- will generate an error if the NDBCluster storage engine is not present
        SET @sys.diagnostics.sql = 'SHOW ENGINE NDBCLUSTER STATUS';
        PREPARE stmt_ndbcluster_status FROM @sys.diagnostics.sql;
    END IF;
    SET @sys.diagnostics.sql_gen_query_template = 'SELECT CONCAT(
           ''SELECT '',
           GROUP_CONCAT(
               CASE WHEN (SUBSTRING(TABLE_NAME, 3), COLUMN_NAME) IN (
                                (''io_global_by_file_by_bytes'', ''total''),
                                (''io_global_by_wait_by_bytes'', ''total_requested'')
                         )
                         THEN CONCAT(''format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME LIKE ''%latency''
                         THEN CONCAT(''format_pico_time('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated''
                         OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'')
                         THEN CONCAT(''format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    ELSE COLUMN_NAME
               END
               ORDER BY ORDINAL_POSITION
               SEPARATOR '',\n       ''
           ),
           ''\n  FROM tmp_'', SUBSTRING(TABLE_NAME FROM 3), ''_%{OUTPUT}''
       ) AS Query INTO @sys.diagnostics.sql_select
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = ''sys'' AND TABLE_NAME = ?
 GROUP BY TABLE_NAME';
    SET @sys.diagnostics.sql_gen_query_delta = 'SELECT CONCAT(
           ''SELECT '',
           GROUP_CONCAT(
               CASE WHEN FIND_IN_SET(COLUMN_NAME COLLATE utf8mb3_general_ci, diag.pk)
                         THEN COLUMN_NAME
                    WHEN diag.TABLE_NAME = ''io_global_by_file_by_bytes'' AND COLUMN_NAME COLLATE utf8mb3_general_ci = ''write_pct''
                         THEN CONCAT(''IFNULL(ROUND(100-(((e.total_read-IFNULL(s.total_read, 0))'',
                                     ''/NULLIF(((e.total_read-IFNULL(s.total_read, 0))+(e.total_written-IFNULL(s.total_written, 0))), 0))*100), 2), 0.00) AS '',
                                     COLUMN_NAME)
                    WHEN (diag.TABLE_NAME, COLUMN_NAME) IN (
                                (''io_global_by_file_by_bytes'', ''total''),
                                (''io_global_by_wait_by_bytes'', ''total_requested'')
                         )
                         THEN CONCAT(''format_bytes(e.'', COLUMN_NAME, ''-IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, 1, 4) IN (''max_'', ''min_'') AND SUBSTRING(COLUMN_NAME, -8) = ''_latency''
                         THEN CONCAT(''format_pico_time(e.'', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME COLLATE utf8mb3_general_ci = ''avg_latency''
                         THEN CONCAT(''format_pico_time((e.total_latency - IFNULL(s.total_latency, 0))'',
                                     ''/NULLIF(e.total - IFNULL(s.total, 0), 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -12) = ''_avg_latency''
                         THEN CONCAT(''format_pico_time((e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency, 0))'',
                                     ''/NULLIF(e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s, 0), 0)) AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME LIKE ''%latency''
                         THEN CONCAT(''format_pico_time(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME IN (''avg_read'', ''avg_write'', ''avg_written'')
                         THEN CONCAT(''format_bytes(IFNULL((e.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), ''-IFNULL(s.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), '', 0))'',
                                     ''/NULLIF(e.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), ''-IFNULL(s.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), '', 0), 0), 0)) AS '',
                                     COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated''
                         OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'')
                         THEN CONCAT(''format_bytes(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    ELSE CONCAT(''(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
               END
               ORDER BY ORDINAL_POSITION
               SEPARATOR '',\n       ''
           ),
           ''\n  FROM tmp_'', diag.TABLE_NAME, ''_end e
       LEFT OUTER JOIN tmp_'', diag.TABLE_NAME, ''_start s USING ('', diag.pk, '')''
       ) AS Query INTO @sys.diagnostics.sql_select
  FROM tmp_sys_views_delta diag
       INNER JOIN information_schema.COLUMNS c ON c.TABLE_NAME COLLATE utf8mb3_general_ci = CONCAT(''x$'', diag.TABLE_NAME)
 WHERE c.TABLE_SCHEMA = ''sys'' AND diag.TABLE_NAME = ?
 GROUP BY diag.TABLE_NAME';
    IF (v_has_ps = 'YES') THEN
        -- Create temporary table with the ORDER BY clauses. Will be required both for the initial (if included) and end queries
        DROP TEMPORARY TABLE IF EXISTS tmp_sys_views_delta;
        CREATE TEMPORARY TABLE tmp_sys_views_delta (
            TABLE_NAME varchar(64) NOT NULL,
            order_by text COMMENT 'ORDER BY clause for the initial and overall views',
            order_by_delta text COMMENT 'ORDER BY clause for the delta views',
            where_delta text COMMENT 'WHERE clause to use for delta views to only include rows with a "count" > 0',
            limit_rows int unsigned COMMENT 'The maximum number of rows to include for the view',
            pk varchar(128) COMMENT 'Used with the FIND_IN_SET() function so use comma separated list without whitespace',
            PRIMARY KEY (TABLE_NAME)
        );
        -- %{OUTPUT} will be replace by the suffix used for the output.
        IF (@sys.debug = 'ON') THEN
            SELECT 'Populating tmp_sys_views_delta' AS 'Debug';
        END IF;
        INSERT INTO tmp_sys_views_delta
        VALUES ('host_summary'                       , '%{TABLE}.statement_latency DESC',
                                                       '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC',
                                                       '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'host'),
               ('host_summary_by_file_io'            , '%{TABLE}.io_latency DESC',
                                                       '(e.io_latency-IFNULL(s.io_latency, 0)) DESC',
                                                       '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'host'),
               ('host_summary_by_file_io_type'       , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'),
               ('host_summary_by_stages'             , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'),
               ('host_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host'),
               ('host_summary_by_statement_type'     , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,statement'),
               ('io_by_thread_by_latency'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,thread_id,processlist_id'),
               ('io_global_by_file_by_bytes'         , '%{TABLE}.total DESC',
                                                       '(e.total-IFNULL(s.total, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'),
               ('io_global_by_file_by_latency'       , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'),
               ('io_global_by_wait_by_bytes'         , '%{TABLE}.total_requested DESC',
                                                       '(e.total_requested-IFNULL(s.total_requested, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'),
               ('io_global_by_wait_by_latency'       , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'),
               ('schema_index_statistics'            , '(%{TABLE}.select_latency+%{TABLE}.insert_latency+%{TABLE}.update_latency+%{TABLE}.delete_latency) DESC',
                                                       '((e.select_latency+e.insert_latency+e.update_latency+e.delete_latency)-IFNULL(s.select_latency+s.insert_latency+s.update_latency+s.delete_latency, 0)) DESC',
                                                       '((e.rows_selected+e.insert_latency+e.rows_updated+e.rows_deleted)-IFNULL(s.rows_selected+s.rows_inserted+s.rows_updated+s.rows_deleted, 0)) > 0',
                                                       100, 'table_schema,table_name,index_name'),
               ('schema_table_statistics'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) > 0', 100, 'table_schema,table_name'),
               ('schema_tables_with_full_table_scans', '%{TABLE}.rows_full_scanned DESC',
                                                       '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) DESC',
                                                       '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) > 0', 100, 'object_schema,object_name'),
               ('user_summary'                       , '%{TABLE}.statement_latency DESC',
                                                       '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC',
                                                       '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'user'),
               ('user_summary_by_file_io'            , '%{TABLE}.io_latency DESC',
                                                       '(e.io_latency-IFNULL(s.io_latency, 0)) DESC',
                                                       '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'user'),
               ('user_summary_by_file_io_type'       , '%{TABLE}.user, %{TABLE}.latency DESC',
                                                       'e.user, (e.latency-IFNULL(s.latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'),
               ('user_summary_by_stages'             , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'),
               ('user_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user'),
               ('user_summary_by_statement_type'     , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,statement'),
               ('wait_classes_global_by_avg_latency' , 'IFNULL(%{TABLE}.total_latency / NULLIF(%{TABLE}.total, 0), 0) DESC',
                                                       'IFNULL((e.total_latency-IFNULL(s.total_latency, 0)) / NULLIF((e.total - IFNULL(s.total, 0)), 0), 0) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'),
               ('wait_classes_global_by_latency'     , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'),
               ('waits_by_host_by_latency'           , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event'),
               ('waits_by_user_by_latency'           , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event'),
               ('waits_global_by_latency'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'events')
        ;
    END IF;
    SELECT '

=======================

     Configuration

=======================

' AS '';
    -- Get the configuration.
    SELECT 'GLOBAL VARIABLES' AS 'The following output is:';
    SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM performance_schema.global_variables ORDER BY VARIABLE_NAME;
    IF (v_has_ps = 'YES') THEN
        -- Overview of the Performance Schema dynamic settings used for this report.
        SELECT 'Performance Schema Setup - Actors' AS 'The following output is:';
        SELECT * FROM performance_schema.setup_actors;
        SELECT 'Performance Schema Setup - Consumers' AS 'The following output is:';
        SELECT NAME AS Consumer, ENABLED, sys.ps_is_consumer_enabled(NAME) AS COLLECTS
          FROM performance_schema.setup_consumers;
        SELECT 'Performance Schema Setup - Instruments' AS 'The following output is:';
        SELECT SUBSTRING_INDEX(NAME, '/', 2) AS 'InstrumentClass',
               ROUND(100*SUM(IF(ENABLED = 'YES', 1, 0))/COUNT(*), 2) AS 'EnabledPct',
               ROUND(100*SUM(IF(TIMED = 'YES', 1, 0))/COUNT(*), 2) AS 'TimedPct'
          FROM performance_schema.setup_instruments
         GROUP BY SUBSTRING_INDEX(NAME, '/', 2)
         ORDER BY SUBSTRING_INDEX(NAME, '/', 2);
        SELECT 'Performance Schema Setup - Objects' AS 'The following output is:';
        SELECT * FROM performance_schema.setup_objects;
        SELECT 'Performance Schema Setup - Threads' AS 'The following output is:';
        SELECT `TYPE` AS ThreadType, COUNT(*) AS 'Total', ROUND(100*SUM(IF(INSTRUMENTED = 'YES', 1, 0))/COUNT(*), 2) AS 'InstrumentedPct'
          FROM performance_schema.threads
        GROUP BY TYPE;
    END IF;
    IF (v_has_replication = 'NO') THEN
        SELECT 'No Replication Configured' AS 'Replication Status';
    ELSE
        -- No guarantee that replication is actually configured, but we can't really know
        SELECT CONCAT('Replication Configured: ', v_has_replication, ' - Performance Schema Replication Tables: ', v_has_ps_replication) AS 'Replication Status';
        IF (v_has_ps_replication = 'YES') THEN
            SELECT 'Replication - Connection Configuration' AS 'The following output is:';
            SELECT * FROM performance_schema.replication_connection_configuration ORDER BY CHANNEL_NAME;
        END IF;
        IF (v_has_ps_replication = 'YES') THEN
            SELECT 'Replication - Applier Configuration' AS 'The following output is:';
            SELECT * FROM performance_schema.replication_applier_configuration ORDER BY CHANNEL_NAME;
        END IF;
        IF (@@master_info_repository = 'TABLE') THEN
            SELECT 'Replication - Master Info Repository Configuration' AS 'The following output is:';
            -- Can't just do SELECT *  as the password may be present in plain text
            -- Don't include binary log file and position as that will be determined in each iteration as well
            SELECT Channel_name, Host, User_name, Port, Connect_retry,
                   Enabled_ssl, Ssl_ca, Ssl_capath, Ssl_cert, Ssl_cipher, Ssl_key, Ssl_verify_server_cert,
                   Heartbeat, Bind, Ignored_server_ids, Uuid, Retry_count, Ssl_crl, Ssl_crlpath,
                   Tls_version, Enabled_auto_position
              FROM mysql.slave_master_info ORDER BY Channel_name;
        END IF;
        IF (@@relay_log_info_repository = 'TABLE') THEN
            SELECT 'Replication - Relay Log Repository Configuration' AS 'The following output is:';
            SELECT Channel_name, Sql_delay, Number_of_workers, Id
              FROM mysql.slave_relay_log_info ORDER BY Channel_name;
        END IF;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
       SELECT 'Cluster Thread Blocks' AS 'The following output is:';
       SELECT * FROM ndbinfo.threadblocks;
    END IF;
    -- For a number of sys views as well as events_statements_summary_by_digest,
    -- just get the start data and then at the end output the overall and delta values
    IF (v_has_ps = 'YES') THEN
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SELECT '

========================

     Initial Status

========================

' AS '';
        END IF;
        DROP TEMPORARY TABLE IF EXISTS tmp_digests_start;
        CALL sys.statement_performance_analyzer('create_tmp', 'tmp_digests_start', NULL);
        CALL sys.statement_performance_analyzer('snapshot', NULL, NULL);
        CALL sys.statement_performance_analyzer('save', 'tmp_digests_start', NULL);
        -- Loop over the sys views where deltas should be calculated.
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'start');
            IF (@sys.debug = 'ON') THEN
                SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug';
                SELECT @sys.diagnostics.sql AS 'Debug';
            END IF;
            PREPARE stmt_gen_query FROM @sys.diagnostics.sql;
        END IF;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            IF (@sys.debug = 'ON') THEN
                SELECT CONCAT('The following queries are for storing the initial content of ', v_table_name) AS 'Debug';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_start`'));
            CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_start` SELECT * FROM `sys`.`x$', v_table_name, '`'));
            IF (@sys.diagnostics.include_raw = 'ON') THEN
                SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name);
                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;
                -- If necessary add ORDER BY and LIMIT
                SELECT CONCAT(@sys.diagnostics.sql_select,
                              IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_start'))), ''),
                              IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                       )
                  INTO @sys.diagnostics.sql_select
                  FROM tmp_sys_views_delta
                 WHERE TABLE_NAME COLLATE utf8mb4_0900_as_ci = v_table_name;
                SELECT CONCAT('Initial ', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            END IF;
        END LOOP;
        CLOSE c_sysviews_w_delta;
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            DEALLOCATE PREPARE stmt_gen_query;
        END IF;
    END IF;
    -- If in_include_status_summary is TRUE then a temporary table is required to store the data
    SET v_sql_status_summary_select = 'SELECT Variable_name',
        v_sql_status_summary_delta  = '',
        v_sql_status_summary_from   = '';
    -- Start the loop
    REPEAT
        SET v_output_count = v_output_count + 1;
        IF (v_output_count > 1) THEN
            -- Don't sleep on the first execution
            SET v_sleep = in_interval-(UNIX_TIMESTAMP(NOW(2))-v_iter_start);
            SELECT NOW() AS 'Time', CONCAT('Going to sleep for ', v_sleep, ' seconds. Please do not interrupt') AS 'The following output is:';
            DO SLEEP(in_interval);
        END IF;
        SET v_iter_start = UNIX_TIMESTAMP(NOW(2));
        SELECT NOW(), CONCAT('Iteration Number ', IFNULL(v_output_count, 'NULL')) AS 'The following output is:';
        -- Even in 5.7 there is no way to get all the info from SHOW MASTER|SLAVE STATUS using the Performance Schema or
        -- other tables, so include them even though they are no longer optimal solutions and if present get the additional
        -- information from the other tables available.
        IF (@@log_bin = 1) THEN
            SELECT 'SHOW MASTER STATUS' AS 'The following output is:';
            SHOW MASTER STATUS;
        END IF;
        IF (v_has_replication <> 'NO') THEN
            SELECT 'SHOW SLAVE STATUS' AS 'The following output is:';
            SHOW SLAVE STATUS;
            IF (v_has_ps_replication = 'YES') THEN
                SELECT 'Replication Connection Status' AS 'The following output is:';
                SELECT * FROM performance_schema.replication_connection_status;
                SELECT 'Replication Applier Status' AS 'The following output is:';
                SELECT * FROM performance_schema.replication_applier_status ORDER BY CHANNEL_NAME;
                SELECT 'Replication Applier Status - Coordinator' AS 'The following output is:';
                SELECT * FROM performance_schema.replication_applier_status_by_coordinator ORDER BY CHANNEL_NAME;
                SELECT 'Replication Applier Status - Worker' AS 'The following output is:';
                SELECT * FROM performance_schema.replication_applier_status_by_worker ORDER BY CHANNEL_NAME, WORKER_ID;
            END IF;
            IF (@@master_info_repository = 'TABLE') THEN
                SELECT 'Replication - Master Log Status' AS 'The following output is:';
                SELECT Master_log_name, Master_log_pos FROM mysql.slave_master_info;
            END IF;
            IF (@@relay_log_info_repository = 'TABLE') THEN
                SELECT 'Replication - Relay Log Status' AS 'The following output is:';
                SELECT sys.format_path(Relay_log_name) AS Relay_log_name, Relay_log_pos, Master_log_name, Master_log_pos FROM mysql.slave_relay_log_info;
                SELECT 'Replication - Worker Status' AS 'The following output is:';
                SELECT Id, sys.format_path(Relay_log_name) AS Relay_log_name, Relay_log_pos, Master_log_name, Master_log_pos,
                       sys.format_path(Checkpoint_relay_log_name) AS Checkpoint_relay_log_name, Checkpoint_relay_log_pos,
                       Checkpoint_master_log_name, Checkpoint_master_log_pos, Checkpoint_seqno, Checkpoint_group_size,
                       HEX(Checkpoint_group_bitmap) AS Checkpoint_group_bitmap, Channel_name
                  FROM mysql.slave_worker_info
              ORDER BY Channel_name, Id;
            END IF;
        END IF;
        -- We need one table per output as a temporary table cannot be opened twice in the same query, and we need to
        -- join the outputs in the summary at the end.
        SET v_table_name = CONCAT('tmp_metrics_', v_output_count);
        CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));
        -- Currently information_schema.GLOBAL_STATUS has VARIABLE_VALUE as varchar(1024)
        CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE ', v_table_name, ' (
  Variable_name VARCHAR(193) NOT NULL,
  Variable_value VARCHAR(1024),
  Type VARCHAR(225) NOT NULL,
  Enabled ENUM(''YES'', ''NO'', ''PARTIAL'') NOT NULL,
  PRIMARY KEY (Type, Variable_name)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4'));
        SET @sys.diagnostics.sql = CONCAT(
            'INSERT INTO ', v_table_name,
            ' SELECT Variable_name, REPLACE(Variable_value, ''\n'', ''\\\\n'') AS Variable_value, Type, Enabled FROM sys.metrics'
        );
        CALL sys.execute_prepared_stmt(@sys.diagnostics.sql);
        -- Prepare the query to retrieve the summary
        CALL sys.execute_prepared_stmt(
            CONCAT('(SELECT Variable_value INTO @sys.diagnostics.output_time FROM ', v_table_name, ' WHERE Type = ''System Time'' AND Variable_name = ''UNIX_TIMESTAMP()'')')
        );
        SET v_output_time = @sys.diagnostics.output_time;
        -- Limit each value to v_status_summary_width chars (when v_has_ndb = TRUE the values can be very wide - refer to the output here for the full values)
        -- v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from
        SET v_sql_status_summary_select = CONCAT(v_sql_status_summary_select, ',
       CONCAT(
           LEFT(s', v_output_count, '.Variable_value, ', v_status_summary_width, '),
           IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'', CONCAT('' ('', ROUND(s', v_output_count, '.Variable_value/', v_output_time, ', 2), ''/sec)''), '''')
       ) AS ''Output ', v_output_count, ''''),
            v_sql_status_summary_from   = CONCAT(v_sql_status_summary_from, '
',
                                                    IF(v_output_count = 1, '  FROM ', '       INNER JOIN '),
                                                    v_table_name, ' s', v_output_count,
                                                    IF (v_output_count = 1, '', ' USING (Type, Variable_name)'));
        IF (v_output_count > 1) THEN
            SET v_sql_status_summary_delta  = CONCAT(v_sql_status_summary_delta, ',
       IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'',
          CONCAT(IF(s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'' OR s', v_output_count, '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'',
                    ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value), 2),
                    (s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)
                   ),
                 '' ('', ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)/(', v_output_time, '-', v_output_time_prev, '), 2), ''/sec)''
          ),
          ''''
       ) AS ''Delta (', (v_output_count-1), ' -> ', v_output_count, ')''');
        END IF;
        SET v_output_time_prev = v_output_time;
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:';
            -- Ensures that the output here is the same as the one used in the status summary at the end
            CALL sys.execute_prepared_stmt(CONCAT('SELECT Type, Variable_name, Enabled, Variable_value FROM ', v_table_name, ' ORDER BY Type, Variable_name'));
        END IF;
        -- InnoDB
        IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
            SELECT 'SHOW ENGINE INNODB STATUS' AS 'The following output is:';
            EXECUTE stmt_innodb_status;
            SELECT 'InnoDB - Transactions' AS 'The following output is:';
            SELECT * FROM information_schema.INNODB_TRX;
        END IF;
        -- NDBCluster
        IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
            SELECT 'SHOW ENGINE NDBCLUSTER STATUS' AS 'The following output is:';
            EXECUTE stmt_ndbcluster_status;
            SELECT 'ndbinfo.memoryusage' AS 'The following output is:';
            SELECT node_id, memory_type, format_bytes(used) AS used, used_pages, format_bytes(total) AS total, total_pages,
                   ROUND(100*(used/total), 2) AS 'Used %'
            FROM ndbinfo.memoryusage;
            -- Loop over the ndbinfo tables (except memoryusage which was handled separately above).
            -- The exact tables available are version dependent, so get the list from the Information Schema.
            SET v_done = FALSE;
            OPEN c_ndbinfo;
            c_ndbinfo_loop: LOOP
                FETCH c_ndbinfo INTO v_table_name;
                IF v_done THEN
                LEAVE c_ndbinfo_loop;
                END IF;
                SELECT CONCAT('SELECT * FROM ndbinfo.', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(CONCAT('SELECT * FROM `ndbinfo`.`', v_table_name, '`'));
            END LOOP;
            CLOSE c_ndbinfo;
            SELECT * FROM information_schema.FILES;
        END IF;
        SELECT 'SELECT * FROM sys.processlist' AS 'The following output is:';
        SELECT processlist.* FROM sys.processlist;
        IF (v_has_ps = 'YES') THEN
            -- latest_file_io
            IF (sys.ps_is_consumer_enabled('events_waits_history_long') = 'YES') THEN
                SELECT 'SELECT * FROM sys.latest_file_io' AS 'The following output is:';
                SELECT * FROM sys.latest_file_io;
            END IF;
            -- current memory usage
            IF (EXISTS(SELECT 1 FROM performance_schema.setup_instruments WHERE NAME LIKE 'memory/%' AND ENABLED = 'YES')) THEN
                SELECT 'SELECT * FROM sys.memory_by_host_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_host_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_by_thread_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_thread_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_by_user_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_user_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_global_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_global_by_current_bytes;
            END IF;
        END IF;
        SET v_runtime = (UNIX_TIMESTAMP(NOW(2)) - v_start);
    UNTIL (v_runtime + in_interval >= in_max_runtime) END REPEAT;
    -- Get Performance Schema status
    IF (v_has_ps = 'YES') THEN
        SELECT 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS' AS 'The following output is:';
        EXECUTE stmt_ps_status;
    END IF;
    -- Deallocate prepared statements
    IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
        DEALLOCATE PREPARE stmt_innodb_status;
    END IF;
    IF (v_has_ps = 'YES') THEN
        DEALLOCATE PREPARE stmt_ps_status;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
        DEALLOCATE PREPARE stmt_ndbcluster_status;
    END IF;
    SELECT '

============================

     Schema Information

============================

' AS '';
    SELECT COUNT(*) AS 'Total Number of Tables' FROM information_schema.TABLES;
    -- The cost of information_schema.TABLES.DATA_LENGTH depends mostly on the number of tables
    IF (@sys.diagnostics.allow_i_s_tables = 'ON') THEN
        SELECT 'Storage Engine Usage' AS 'The following output is:';
        SELECT ENGINE, COUNT(*) AS NUM_TABLES,
                format_bytes(SUM(DATA_LENGTH)) AS DATA_LENGTH,
                format_bytes(SUM(INDEX_LENGTH)) AS INDEX_LENGTH,
                format_bytes(SUM(DATA_LENGTH+INDEX_LENGTH)) AS TOTAL
            FROM information_schema.TABLES
            GROUP BY ENGINE;
        SELECT 'Schema Object Overview' AS 'The following output is:';
        SELECT * FROM sys.schema_object_overview;
        SELECT 'Tables without a PRIMARY KEY' AS 'The following output is:';
        SELECT TABLES.TABLE_SCHEMA, ENGINE, COUNT(*) AS NumTables
          FROM information_schema.TABLES
               LEFT OUTER JOIN information_schema.STATISTICS ON STATISTICS.TABLE_SCHEMA = TABLES.TABLE_SCHEMA
                                                                AND STATISTICS.TABLE_NAME = TABLES.TABLE_NAME
                                                                AND STATISTICS.INDEX_NAME = 'PRIMARY'
         WHERE STATISTICS.TABLE_NAME IS NULL
               AND TABLES.TABLE_SCHEMA NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys')
               AND TABLES.TABLE_TYPE = 'BASE TABLE'
         GROUP BY TABLES.TABLE_SCHEMA, ENGINE;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT 'Unused Indexes' AS 'The following output is:';
        SELECT object_schema, COUNT(*) AS NumUnusedIndexes
          FROM performance_schema.table_io_waits_summary_by_index_usage
         WHERE index_name IS NOT NULL
               AND count_star = 0
               AND object_schema NOT IN ('mysql', 'sys')
               AND index_name != 'PRIMARY'
         GROUP BY object_schema;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT '

=========================

     Overall Status

=========================

' AS '';
        SELECT 'CALL sys.ps_statement_avg_latency_histogram()' AS 'The following output is:';
        CALL sys.ps_statement_avg_latency_histogram();
        CALL sys.statement_performance_analyzer('snapshot', NULL, NULL);
        CALL sys.statement_performance_analyzer('overall', NULL, 'with_runtimes_in_95th_percentile');
        SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'end');
        IF (@sys.debug = 'ON') THEN
            SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug';
            SELECT @sys.diagnostics.sql AS 'Debug';
        END IF;
        PREPARE stmt_gen_query FROM @sys.diagnostics.sql;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            IF (@sys.debug = 'ON') THEN
                SELECT CONCAT('The following queries are for storing the final content of ', v_table_name) AS 'Debug';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_end`'));
            CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_end` SELECT * FROM `sys`.`x$', v_table_name, '`'));
            SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name);
            EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;
            -- If necessary add ORDER BY and LIMIT
            SELECT CONCAT(@sys.diagnostics.sql_select,
                            IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_end'))), ''),
                            IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                    )
                INTO @sys.diagnostics.sql_select
                FROM tmp_sys_views_delta
                WHERE TABLE_NAME COLLATE utf8mb4_0900_as_ci = v_table_name;
            SELECT CONCAT('Overall ', v_table_name) AS 'The following output is:';
            CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
        END LOOP;
        CLOSE c_sysviews_w_delta;
        DEALLOCATE PREPARE stmt_gen_query;
        SELECT '

======================

     Delta Status

======================

' AS '';
        CALL sys.statement_performance_analyzer('delta', 'tmp_digests_start', 'with_runtimes_in_95th_percentile');
        CALL sys.statement_performance_analyzer('cleanup', NULL, NULL);
        DROP TEMPORARY TABLE tmp_digests_start;
        -- @sys.diagnostics.sql_gen_query_delta is defined near the to together with @sys.diagnostics.sql_gen_query_template
        IF (@sys.debug = 'ON') THEN
            SELECT 'The following query will be used to generate the query for each sys view delta' AS 'Debug';
            SELECT @sys.diagnostics.sql_gen_query_delta AS 'Debug';
        END IF;
        PREPARE stmt_gen_query_delta FROM @sys.diagnostics.sql_gen_query_delta;
        SET v_old_group_concat_max_len = @@session.group_concat_max_len;
        SET @@session.group_concat_max_len = 2048;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            SET @sys.diagnostics.table_name = v_table_name;
            EXECUTE stmt_gen_query_delta USING @sys.diagnostics.table_name;
            -- If necessary add WHERE, ORDER BY, and LIMIT
            SELECT CONCAT(@sys.diagnostics.sql_select,
                            IF(where_delta IS NOT NULL, CONCAT('\n WHERE ', where_delta), ''),
                            IF(order_by_delta IS NOT NULL, CONCAT('\n ORDER BY ', order_by_delta), ''),
                            IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                    )
                INTO @sys.diagnostics.sql_select
                FROM tmp_sys_views_delta
                WHERE TABLE_NAME COLLATE utf8mb4_0900_as_ci = v_table_name;
            SELECT CONCAT('Delta ', v_table_name) AS 'The following output is:';
            CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_end`'));
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_start`'));
        END LOOP;
        CLOSE c_sysviews_w_delta;
        SET @@session.group_concat_max_len = v_old_group_concat_max_len;
        DEALLOCATE PREPARE stmt_gen_query_delta;
        DROP TEMPORARY TABLE tmp_sys_views_delta;
    END IF;
    SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:';
    CALL sys.execute_prepared_stmt(
        CONCAT(v_sql_status_summary_select, v_sql_status_summary_delta, ', Type, s1.Enabled', v_sql_status_summary_from,
               '
 ORDER BY Type, Variable_name'
        )
    );
    -- Remove all the metrics temporary tables again
    SET v_count = 0;
    WHILE (v_count < v_output_count) DO
        SET v_count = v_count + 1;
        SET v_table_name = CONCAT('tmp_metrics_', v_count);
        CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));
    END WHILE;
    IF (in_auto_config <> 'current') THEN
        CALL sys.ps_setup_reload_saved();
        IF ((@log_bin = 1) AND (@@binlog_format = 'STATEMENT')) THEN
            SET sql_log_bin = @log_bin;
        END IF;
    END IF;
    -- Reset the @sys.diagnostics.% user variables internal to this procedure
    SET @sys.diagnostics.output_time            = NULL,
        @sys.diagnostics.sql                    = NULL,
        @sys.diagnostics.sql_gen_query_delta    = NULL,
        @sys.diagnostics.sql_gen_query_template = NULL,
        @sys.diagnostics.sql_select             = NULL,
        @sys.diagnostics.table_name             = NULL;
    -- Restore INSTRUMENTED for this thread
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    IF ((@log_bin = 1) AND (@@binlog_format = 'STATEMENT')) THEN
        SET sql_log_bin = @log_bin;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `execute_prepared_stmt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `execute_prepared_stmt`(
        IN in_query longtext CHARACTER SET UTF8MB4
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes the query in the argument and executes it using a prepared statement. The prepared statement is deallocated,\nso the procedure is mainly useful for executing one off dynamically created queries.\n\nThe sys_execute_prepared_stmt prepared statement name is used for the query and is required not to exist.\n\n\nParameters\n-----------\n\nin_query (longtext CHARACTER SET UTF8MB4):\n  The query to execute.\n\n\nConfiguration Options\n----------------------\n\nsys.debug\n  Whether to provide debugging output.\n  Default is ''OFF''. Set to ''ON'' to include.\n\n\nExample\n--------\n\nmysql> CALL sys.execute_prepared_stmt(''SELECT * FROM sys.sys_config'');\n+------------------------+-------+---------------------+--------+\n| variable               | value | set_time            | set_by |\n+------------------------+-------+---------------------+--------+\n| statement_truncate_len | 64    | 2015-06-30 13:06:00 | NULL   |\n+------------------------+-------+---------------------+--------+\n1 row in set (0.00 sec)\n\nQuery OK, 0 rows affected (0.00 sec)\n'
BEGIN
    -- Set configuration options
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug = sys.sys_get_config('debug', 'OFF');
    END IF;
    -- Verify the query exists
    -- The shortest possible query is "DO 1"
    IF (in_query IS NULL OR LENGTH(in_query) < 4) THEN
       SIGNAL SQLSTATE '45000'
          SET MESSAGE_TEXT = "The @sys.execute_prepared_stmt.sql must contain a query";
    END IF;
    SET @sys.execute_prepared_stmt.sql = in_query;
    IF (@sys.debug = 'ON') THEN
        SELECT @sys.execute_prepared_stmt.sql AS 'Debug';
    END IF;
    PREPARE sys_execute_prepared_stmt FROM @sys.execute_prepared_stmt.sql;
    EXECUTE sys_execute_prepared_stmt;
    DEALLOCATE PREPARE sys_execute_prepared_stmt;
    SET @sys.execute_prepared_stmt.sql = NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_background_threads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDisable all background thread instrumentation within Performance Schema.\n\nParameters\n-----------\n\nNone.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_disable_background_threads();\n+--------------------------------+\n| summary                        |\n+--------------------------------+\n| Disabled 18 background threads |\n+--------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE type = 'BACKGROUND';
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_consumer`(
        IN consumer VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDisables consumers within Performance Schema \nmatching the input pattern.\n\nParameters\n-----------\n\nconsumer (VARCHAR(128)):\n  A LIKE pattern match (using "%consumer%") of consumers to disable\n\nExample\n-----------\n\nTo disable all consumers:\n\nmysql> CALL sys.ps_setup_disable_consumer('''');\n+--------------------------+\n| summary                  |\n+--------------------------+\n| Disabled 15 consumers    |\n+--------------------------+\n1 row in set (0.02 sec)\n\nTo disable just the event_stage consumers:\n\nmysql> CALL sys.ps_setup_disable_comsumers(''stage'');\n+------------------------+\n| summary                |\n+------------------------+\n| Disabled 3 consumers   |\n+------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.setup_consumers
       SET enabled = 'NO'
     WHERE name LIKE CONCAT('%', consumer, '%');
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_instrument` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_instrument`(
        IN in_pattern VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDisables instruments within Performance Schema \nmatching the input pattern.\n\nParameters\n-----------\n\nin_pattern (VARCHAR(128)):\n  A LIKE pattern match (using "%in_pattern%") of events to disable\n\nExample\n-----------\n\nTo disable all mutex instruments:\n\nmysql> CALL sys.ps_setup_disable_instrument(''wait/synch/mutex'');\n+--------------------------+\n| summary                  |\n+--------------------------+\n| Disabled 155 instruments |\n+--------------------------+\n1 row in set (0.02 sec)\n\nTo disable just a specific TCP/IP based network IO instrument:\n\nmysql> CALL sys.ps_setup_disable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n+------------------------+\n| summary                |\n+------------------------+\n| Disabled 1 instruments |\n+------------------------+\n1 row in set (0.00 sec)\n\nTo disable all instruments:\n\nmysql> CALL sys.ps_setup_disable_instrument('''');\n+--------------------------+\n| summary                  |\n+--------------------------+\n| Disabled 547 instruments |\n+--------------------------+\n1 row in set (0.01 sec)\n'
BEGIN
    UPDATE performance_schema.setup_instruments
       SET enabled = 'NO', timed = 'NO'
     WHERE name LIKE CONCAT('%', in_pattern, '%');
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_thread`(
        IN in_connection_id BIGINT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDisable the given connection/thread in Performance Schema.\n\nParameters\n-----------\n\nin_connection_id (BIGINT):\n  The connection ID (PROCESSLIST_ID from performance_schema.threads\n  or the ID shown within SHOW PROCESSLIST)\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_disable_thread(3);\n+-------------------+\n| summary           |\n+-------------------+\n| Disabled 1 thread |\n+-------------------+\n1 row in set (0.01 sec)\n\nTo disable the current connection:\n\nmysql> CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n+-------------------+\n| summary           |\n+-------------------+\n| Disabled 1 thread |\n+-------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE processlist_id = in_connection_id;
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_background_threads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nEnable all background thread instrumentation within Performance Schema.\n\nParameters\n-----------\n\nNone.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_enable_background_threads();\n+-------------------------------+\n| summary                       |\n+-------------------------------+\n| Enabled 18 background threads |\n+-------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'YES'
     WHERE type = 'BACKGROUND';
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_consumer`(
        IN consumer VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nEnables consumers within Performance Schema \nmatching the input pattern.\n\nParameters\n-----------\n\nconsumer (VARCHAR(128)):\n  A LIKE pattern match (using "%consumer%") of consumers to enable\n\nExample\n-----------\n\nTo enable all consumers:\n\nmysql> CALL sys.ps_setup_enable_consumer('''');\n+-------------------------+\n| summary                 |\n+-------------------------+\n| Enabled 10 consumers    |\n+-------------------------+\n1 row in set (0.02 sec)\n\nQuery OK, 0 rows affected (0.02 sec)\n\nTo enable just "waits" consumers:\n\nmysql> CALL sys.ps_setup_enable_consumer(''waits'');\n+-----------------------+\n| summary               |\n+-----------------------+\n| Enabled 3 consumers   |\n+-----------------------+\n1 row in set (0.00 sec)\n\nQuery OK, 0 rows affected (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.setup_consumers
       SET enabled = 'YES'
     WHERE name LIKE CONCAT('%', consumer, '%');
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_instrument` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_instrument`(
        IN in_pattern VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nEnables instruments within Performance Schema \nmatching the input pattern.\n\nParameters\n-----------\n\nin_pattern (VARCHAR(128)):\n  A LIKE pattern match (using "%in_pattern%") of events to enable\n\nExample\n-----------\n\nTo enable all mutex instruments:\n\nmysql> CALL sys.ps_setup_enable_instrument(''wait/synch/mutex'');\n+-------------------------+\n| summary                 |\n+-------------------------+\n| Enabled 155 instruments |\n+-------------------------+\n1 row in set (0.02 sec)\n\nQuery OK, 0 rows affected (0.02 sec)\n\nTo enable just a specific TCP/IP based network IO instrument:\n\nmysql> CALL sys.ps_setup_enable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n+-----------------------+\n| summary               |\n+-----------------------+\n| Enabled 1 instruments |\n+-----------------------+\n1 row in set (0.00 sec)\n\nQuery OK, 0 rows affected (0.00 sec)\n\nTo enable all instruments:\n\nmysql> CALL sys.ps_setup_enable_instrument('''');\n+-------------------------+\n| summary                 |\n+-------------------------+\n| Enabled 547 instruments |\n+-------------------------+\n1 row in set (0.01 sec)\n\nQuery OK, 0 rows affected (0.01 sec)\n'
BEGIN
    UPDATE performance_schema.setup_instruments
       SET enabled = 'YES', timed = 'YES'
     WHERE name LIKE CONCAT('%', in_pattern, '%');
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_thread`(
        IN in_connection_id BIGINT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nEnable the given connection/thread in Performance Schema.\n\nParameters\n-----------\n\nin_connection_id (BIGINT):\n  The connection ID (PROCESSLIST_ID from performance_schema.threads\n  or the ID shown within SHOW PROCESSLIST)\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_enable_thread(3);\n+------------------+\n| summary          |\n+------------------+\n| Enabled 1 thread |\n+------------------+\n1 row in set (0.01 sec)\n\nTo enable the current connection:\n\nmysql> CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n+------------------+\n| summary          |\n+------------------+\n| Enabled 1 thread |\n+------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'YES'
     WHERE processlist_id = in_connection_id;
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_reload_saved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_reload_saved`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReloads a saved Performance Schema configuration,\nso that you can alter the setup for debugging purposes, \nbut restore it to a previous state.\n\nUse the companion procedure - ps_setup_save(), to \nsave a configuration.\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nNone.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_save();\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> UPDATE performance_schema.setup_instruments SET enabled = ''YES'', timed = ''YES'';\nQuery OK, 547 rows affected (0.40 sec)\nRows matched: 784  Changed: 547  Warnings: 0\n\n/* Run some tests that need more detailed instrumentation here */\n\nmysql> CALL sys.ps_setup_reload_saved();\nQuery OK, 0 rows affected (0.32 sec)\n'
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_lock_result INT;
    DECLARE v_lock_used_by BIGINT;
    DECLARE v_signal_message TEXT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SIGNAL SQLSTATE VALUE '90001'
           SET MESSAGE_TEXT = 'An error occurred, was sys.ps_setup_save() run before this procedure?';
    END;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT IS_USED_LOCK('sys.ps_setup_save') INTO v_lock_used_by;
    IF (v_lock_used_by != CONNECTION_ID()) THEN
        SET v_signal_message = CONCAT('The sys.ps_setup_save lock is currently owned by ', v_lock_used_by);
        SIGNAL SQLSTATE VALUE '90002'
           SET MESSAGE_TEXT = v_signal_message;
    END IF;
    DELETE FROM performance_schema.setup_actors;
    INSERT INTO performance_schema.setup_actors SELECT * FROM tmp_setup_actors;
    BEGIN
        -- Workaround for http://bugs.mysql.com/bug.php?id=70025
        DECLARE v_name varchar(64);
        DECLARE v_enabled enum('YES', 'NO');
        DECLARE c_consumers CURSOR FOR SELECT NAME, ENABLED FROM tmp_setup_consumers;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
        SET v_done = FALSE;
        OPEN c_consumers;
        c_consumers_loop: LOOP
            FETCH c_consumers INTO v_name, v_enabled;
            IF v_done THEN
               LEAVE c_consumers_loop;
            END IF;
            UPDATE performance_schema.setup_consumers
               SET ENABLED = v_enabled
             WHERE NAME = v_name;
         END LOOP;
         CLOSE c_consumers;
    END;
    UPDATE performance_schema.setup_instruments
     INNER JOIN tmp_setup_instruments USING (NAME)
       SET performance_schema.setup_instruments.ENABLED = tmp_setup_instruments.ENABLED,
           performance_schema.setup_instruments.TIMED   = tmp_setup_instruments.TIMED;
    BEGIN
        -- Workaround for http://bugs.mysql.com/bug.php?id=70025
        DECLARE v_thread_id bigint unsigned;
        DECLARE v_instrumented enum('YES', 'NO');
        DECLARE c_threads CURSOR FOR SELECT THREAD_ID, INSTRUMENTED FROM tmp_threads;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
        SET v_done = FALSE;
        OPEN c_threads;
        c_threads_loop: LOOP
            FETCH c_threads INTO v_thread_id, v_instrumented;
            IF v_done THEN
               LEAVE c_threads_loop;
            END IF;
            UPDATE performance_schema.threads
               SET INSTRUMENTED = v_instrumented
             WHERE THREAD_ID = v_thread_id;
        END LOOP;
        CLOSE c_threads;
    END;
    UPDATE performance_schema.threads
       SET INSTRUMENTED = IF(PROCESSLIST_USER IS NOT NULL,
                             sys.ps_is_account_enabled(PROCESSLIST_HOST, PROCESSLIST_USER),
                             'YES')
     WHERE THREAD_ID NOT IN (SELECT THREAD_ID FROM tmp_threads);
    DROP TEMPORARY TABLE tmp_setup_actors;
    DROP TEMPORARY TABLE tmp_setup_consumers;
    DROP TEMPORARY TABLE tmp_setup_instruments;
    DROP TEMPORARY TABLE tmp_threads;
    SELECT RELEASE_LOCK('sys.ps_setup_save') INTO v_lock_result;
    SET sql_log_bin = @log_bin; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_reset_to_default` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_reset_to_default`(
       IN in_verbose BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nResets the Performance Schema setup to the default settings.\n\nParameters\n-----------\n\nin_verbose (BOOLEAN):\n  Whether to print each setup stage (including the SQL) whilst running.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_reset_to_default(true)\\G\n*************************** 1. row ***************************\nstatus: Resetting: setup_actors\nDELETE\nFROM performance_schema.setup_actors\n WHERE NOT (HOST = ''%'' AND USER = ''%'' AND `ROLE` = ''%'')\n1 row in set (0.00 sec)\n\n*************************** 1. row ***************************\nstatus: Resetting: setup_actors\nINSERT IGNORE INTO performance_schema.setup_actors\nVALUES (''%'', ''%'', ''%'')\n1 row in set (0.00 sec)\n...\n\nmysql> CALL sys.ps_setup_reset_to_default(false)\\G\nQuery OK, 0 rows affected (0.00 sec)\n'
BEGIN
    SET @query = 'DELETE
                    FROM performance_schema.setup_actors
                   WHERE NOT (HOST = ''%'' AND USER = ''%'' AND `ROLE` = ''%'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'INSERT IGNORE INTO performance_schema.setup_actors
                  VALUES (''%'', ''%'', ''%'', ''YES'', ''YES'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.setup_instruments
                     SET ENABLED = sys.ps_is_instrument_default_enabled(NAME),
                         TIMED   = sys.ps_is_instrument_default_timed(NAME)';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_instruments\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.setup_consumers
                     SET ENABLED = IF(NAME IN (''events_statements_current'', ''events_transactions_current'', ''global_instrumentation'', ''thread_instrumentation'', ''statements_digest''), ''YES'', ''NO'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_consumers\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'DELETE
                    FROM performance_schema.setup_objects
                   WHERE NOT (OBJECT_TYPE IN (''EVENT'', ''FUNCTION'', ''PROCEDURE'', ''TABLE'', ''TRIGGER'') AND OBJECT_NAME = ''%'' 
                     AND (OBJECT_SCHEMA = ''mysql''              AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''performance_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''information_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''%''                  AND ENABLED = ''YES'' AND TIMED = ''YES''))';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'INSERT IGNORE INTO performance_schema.setup_objects
                  VALUES (''EVENT''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''FUNCTION'' , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''PROCEDURE'', ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''%''                 , ''%'', ''YES'', ''YES''),
                         (''TABLE''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''TRIGGER''  , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''%''                 , ''%'', ''YES'', ''YES'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.threads
                     SET INSTRUMENTED = ''YES''';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: threads\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_save`(
        IN in_timeout INT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nSaves the current configuration of Performance Schema, \nso that you can alter the setup for debugging purposes, \nbut restore it to a previous state.\n\nUse the companion procedure - ps_setup_reload_saved(), to \nrestore the saved config.\n\nThe named lock "sys.ps_setup_save" is taken before the\ncurrent configuration is saved. If the attempt to get the named\nlock times out, an error occurs.\n\nThe lock is released after the settings have been restored by\ncalling ps_setup_reload_saved().\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_timeout INT\n  The timeout in seconds used when trying to obtain the lock.\n  A negative timeout means infinite timeout.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_save(-1);\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> UPDATE performance_schema.setup_instruments \n    ->    SET enabled = ''YES'', timed = ''YES'';\nQuery OK, 547 rows affected (0.40 sec)\nRows matched: 784  Changed: 547  Warnings: 0\n\n/* Run some tests that need more detailed instrumentation here */\n\nmysql> CALL sys.ps_setup_reload_saved();\nQuery OK, 0 rows affected (0.32 sec)\n'
BEGIN
    DECLARE v_lock_result INT;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT GET_LOCK('sys.ps_setup_save', in_timeout) INTO v_lock_result;
    IF v_lock_result THEN
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_actors;
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_consumers;
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_instruments;
        DROP TEMPORARY TABLE IF EXISTS tmp_threads;
        CREATE TEMPORARY TABLE tmp_setup_actors SELECT * FROM performance_schema.setup_actors LIMIT 0;
        CREATE TEMPORARY TABLE tmp_setup_consumers LIKE performance_schema.setup_consumers;
        CREATE TEMPORARY TABLE tmp_setup_instruments LIKE performance_schema.setup_instruments;
        CREATE TEMPORARY TABLE tmp_threads (THREAD_ID bigint unsigned NOT NULL PRIMARY KEY, INSTRUMENTED enum('YES','NO') NOT NULL);
        INSERT INTO tmp_setup_actors SELECT * FROM performance_schema.setup_actors;
        INSERT INTO tmp_setup_consumers SELECT * FROM performance_schema.setup_consumers;
        INSERT INTO tmp_setup_instruments SELECT * FROM performance_schema.setup_instruments;
        INSERT INTO tmp_threads SELECT THREAD_ID, INSTRUMENTED FROM performance_schema.threads;
    ELSE
        SIGNAL SQLSTATE VALUE '90000'
           SET MESSAGE_TEXT = 'Could not lock the sys.ps_setup_save user lock, another thread has a saved configuration';
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled`(
        IN in_show_instruments BOOLEAN,
        IN in_show_threads BOOLEAN
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently disable Performance Schema configuration.\n\nDisabled users is only available for MySQL 5.7.6 and later.\nIn earlier versions it was only possible to enable users.\n\nParameters\n-----------\n\nin_show_instruments (BOOLEAN):\n  Whether to print disabled instruments (can print many items)\n\nin_show_threads (BOOLEAN):\n  Whether to print disabled threads\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_disabled(TRUE, TRUE);\n+----------------------------+\n| performance_schema_enabled |\n+----------------------------+\n|                          1 |\n+----------------------------+\n1 row in set (0.00 sec)\n\n+--------------------+\n| disabled_users     |\n+--------------------+\n| ''mark''@''localhost'' |\n+--------------------+\n1 row in set (0.00 sec)\n\n+-------------+----------------------+---------+-------+\n| object_type | objects              | enabled | timed |\n+-------------+----------------------+---------+-------+\n| EVENT       | mysql.%              | NO      | NO    |\n| EVENT       | performance_schema.% | NO      | NO    |\n| EVENT       | information_schema.% | NO      | NO    |\n| FUNCTION    | mysql.%              | NO      | NO    |\n| FUNCTION    | performance_schema.% | NO      | NO    |\n| FUNCTION    | information_schema.% | NO      | NO    |\n| PROCEDURE   | mysql.%              | NO      | NO    |\n| PROCEDURE   | performance_schema.% | NO      | NO    |\n| PROCEDURE   | information_schema.% | NO      | NO    |\n| TABLE       | mysql.%              | NO      | NO    |\n| TABLE       | performance_schema.% | NO      | NO    |\n| TABLE       | information_schema.% | NO      | NO    |\n| TRIGGER     | mysql.%              | NO      | NO    |\n| TRIGGER     | performance_schema.% | NO      | NO    |\n| TRIGGER     | information_schema.% | NO      | NO    |\n+-------------+----------------------+---------+-------+\n15 rows in set (0.00 sec)\n\n+----------------------------------+\n| disabled_consumers               |\n+----------------------------------+\n| events_stages_current            |\n| events_stages_history            |\n| events_stages_history_long       |\n| events_statements_history        |\n| events_statements_history_long   |\n| events_transactions_history      |\n| events_transactions_history_long |\n| events_waits_current             |\n| events_waits_history             |\n| events_waits_history_long        |\n+----------------------------------+\n10 rows in set (0.00 sec)\n\nEmpty set (0.00 sec)\n\n+---------------------------------------------------------------------------------------+-------+\n| disabled_instruments                                                                  | timed |\n+---------------------------------------------------------------------------------------+-------+\n| wait/synch/mutex/sql/TC_LOG_MMAP::LOCK_tc                                             | NO    |\n| wait/synch/mutex/sql/LOCK_des_key_file                                                | NO    |\n| wait/synch/mutex/sql/MYSQL_BIN_LOG::LOCK_commit                                       | NO    |\n...\n| memory/sql/servers_cache                                                              | NO    |\n| memory/sql/udf_mem                                                                    | NO    |\n| wait/lock/metadata/sql/mdl                                                            | NO    |\n+---------------------------------------------------------------------------------------+-------+\n547 rows in set (0.00 sec)\n\nQuery OK, 0 rows affected (0.01 sec)\n'
BEGIN
    SELECT @@performance_schema AS performance_schema_enabled;
    SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS disabled_users
      FROM performance_schema.setup_actors
     WHERE enabled = 'NO'
     ORDER BY disabled_users;
    SELECT object_type,
           CONCAT(object_schema, '.', object_name) AS objects,
           enabled,
           timed
      FROM performance_schema.setup_objects
     WHERE enabled = 'NO'
     ORDER BY object_type, objects;
    SELECT name AS disabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'NO'
     ORDER BY disabled_consumers;
    IF (in_show_threads) THEN
        SELECT IF(name = 'thread/sql/one_connection', 
                  CONCAT(processlist_user, '@', processlist_host), 
                  REPLACE(name, 'thread/', '')) AS disabled_threads,
        TYPE AS thread_type
          FROM performance_schema.threads
         WHERE INSTRUMENTED = 'NO'
         ORDER BY disabled_threads;
    END IF;
    IF (in_show_instruments) THEN
        SELECT name AS disabled_instruments,
               timed
          FROM performance_schema.setup_instruments
         WHERE enabled = 'NO'
         ORDER BY disabled_instruments;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled_consumers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently disabled consumers.\n\nParameters\n-----------\n\nNone\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_disabled_consumers();\n\n+---------------------------+\n| disabled_consumers        |\n+---------------------------+\n| events_statements_current |\n| global_instrumentation    |\n| thread_instrumentation    |\n| statements_digest         |\n+---------------------------+\n4 rows in set (0.05 sec)\n'
BEGIN
    SELECT name AS disabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'NO'
     ORDER BY disabled_consumers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently disabled instruments.\n\nParameters\n-----------\n\nNone\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_disabled_instruments();\n'
BEGIN
    SELECT name AS disabled_instruments, timed
      FROM performance_schema.setup_instruments
     WHERE enabled = 'NO'
     ORDER BY disabled_instruments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled`(
        IN in_show_instruments BOOLEAN,
        IN in_show_threads BOOLEAN
    )
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently enabled Performance Schema configuration.\n\nParameters\n-----------\n\nin_show_instruments (BOOLEAN):\n  Whether to print enabled instruments (can print many items)\n\nin_show_threads (BOOLEAN):\n  Whether to print enabled threads\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_enabled(TRUE, TRUE);\n+----------------------------+\n| performance_schema_enabled |\n+----------------------------+\n|                          1 |\n+----------------------------+\n1 row in set (0.00 sec)\n\n+---------------+\n| enabled_users |\n+---------------+\n| ''%''@''%''       |\n+---------------+\n1 row in set (0.01 sec)\n\n+-------------+---------+---------+-------+\n| object_type | objects | enabled | timed |\n+-------------+---------+---------+-------+\n| EVENT       | %.%     | YES     | YES   |\n| FUNCTION    | %.%     | YES     | YES   |\n| PROCEDURE   | %.%     | YES     | YES   |\n| TABLE       | %.%     | YES     | YES   |\n| TRIGGER     | %.%     | YES     | YES   |\n+-------------+---------+---------+-------+\n5 rows in set (0.01 sec)\n\n+---------------------------+\n| enabled_consumers         |\n+---------------------------+\n| events_statements_current |\n| global_instrumentation    |\n| thread_instrumentation    |\n| statements_digest         |\n+---------------------------+\n4 rows in set (0.05 sec)\n\n+---------------------------------+-------------+\n| enabled_threads                 | thread_type |\n+---------------------------------+-------------+\n| sql/main                        | BACKGROUND  |\n| sql/thread_timer_notifier       | BACKGROUND  |\n| innodb/io_ibuf_thread           | BACKGROUND  |\n| innodb/io_log_thread            | BACKGROUND  |\n| innodb/io_read_thread           | BACKGROUND  |\n| innodb/io_read_thread           | BACKGROUND  |\n| innodb/io_write_thread          | BACKGROUND  |\n| innodb/io_write_thread          | BACKGROUND  |\n| innodb/page_cleaner_thread      | BACKGROUND  |\n| innodb/srv_lock_timeout_thread  | BACKGROUND  |\n| innodb/srv_error_monitor_thread | BACKGROUND  |\n| innodb/srv_monitor_thread       | BACKGROUND  |\n| innodb/srv_master_thread        | BACKGROUND  |\n| innodb/srv_purge_thread         | BACKGROUND  |\n| innodb/srv_worker_thread        | BACKGROUND  |\n| innodb/srv_worker_thread        | BACKGROUND  |\n| innodb/srv_worker_thread        | BACKGROUND  |\n| innodb/buf_dump_thread          | BACKGROUND  |\n| innodb/dict_stats_thread        | BACKGROUND  |\n| sql/signal_handler              | BACKGROUND  |\n| sql/compress_gtid_table         | FOREGROUND  |\n| root@localhost                  | FOREGROUND  |\n+---------------------------------+-------------+\n22 rows in set (0.01 sec)\n\n+-------------------------------------+-------+\n| enabled_instruments                 | timed |\n+-------------------------------------+-------+\n| wait/io/file/sql/map                | YES   |\n| wait/io/file/sql/binlog             | YES   |\n...\n| statement/com/Error                 | YES   |\n| statement/com/                      | YES   |\n| idle                                | YES   |\n+-------------------------------------+-------+\n210 rows in set (0.08 sec)\n\nQuery OK, 0 rows affected (0.89 sec)\n'
BEGIN
    SELECT @@performance_schema AS performance_schema_enabled;
    SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS enabled_users
      FROM performance_schema.setup_actors
     WHERE enabled = 'YES'
     ORDER BY enabled_users;
    SELECT object_type,
           CONCAT(object_schema, '.', object_name) AS objects,
           enabled,
           timed
      FROM performance_schema.setup_objects
     WHERE enabled = 'YES'
     ORDER BY object_type, objects;
    SELECT name AS enabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'YES'
     ORDER BY enabled_consumers;
    IF (in_show_threads) THEN
        SELECT IF(name = 'thread/sql/one_connection', 
                  CONCAT(processlist_user, '@', processlist_host), 
                  REPLACE(name, 'thread/', '')) AS enabled_threads,
        TYPE AS thread_type
          FROM performance_schema.threads
         WHERE INSTRUMENTED = 'YES'
         ORDER BY enabled_threads;
    END IF;
    IF (in_show_instruments) THEN
        SELECT name AS enabled_instruments,
               timed
          FROM performance_schema.setup_instruments
         WHERE enabled = 'YES'
         ORDER BY enabled_instruments;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled_consumers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently enabled consumers.\n\nParameters\n-----------\n\nNone\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_enabled_consumers();\n\n+---------------------------+\n| enabled_consumers         |\n+---------------------------+\n| events_statements_current |\n| global_instrumentation    |\n| thread_instrumentation    |\n| statements_digest         |\n+---------------------------+\n4 rows in set (0.05 sec)\n'
BEGIN
    SELECT name AS enabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'YES'
     ORDER BY enabled_consumers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently enabled instruments.\n\nParameters\n-----------\n\nNone\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_enabled_instruments();\n'
BEGIN
    SELECT name AS enabled_instruments, timed
      FROM performance_schema.setup_instruments
     WHERE enabled = 'YES'
     ORDER BY enabled_instruments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_statement_avg_latency_histogram` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_statement_avg_latency_histogram`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nOutputs a textual histogram graph of the average latency values\nacross all normalized queries tracked within the Performance Schema\nevents_statements_summary_by_digest table.\n\nCan be used to show a very high level picture of what kind of \nlatency distribution statements running within this instance have.\n\nParameters\n-----------\n\nNone.\n\nExample\n-----------\n\nmysql> CALL sys.ps_statement_avg_latency_histogram()\\G\n*************************** 1. row ***************************\nPerformance Schema Statement Digest Average Latency Histogram:\n\n  . = 1 unit\n  * = 2 units\n  # = 3 units\n\n(0 - 38ms)     240 | ################################################################################\n(38 - 77ms)    38  | ......................................\n(77 - 115ms)   3   | ...\n(115 - 154ms)  62  | *******************************\n(154 - 192ms)  3   | ...\n(192 - 231ms)  0   |\n(231 - 269ms)  0   |\n(269 - 307ms)  0   |\n(307 - 346ms)  0   |\n(346 - 384ms)  1   | .\n(384 - 423ms)  1   | .\n(423 - 461ms)  0   |\n(461 - 499ms)  0   |\n(499 - 538ms)  0   |\n(538 - 576ms)  0   |\n(576 - 615ms)  1   | .\n\n  Total Statements: 350; Buckets: 16; Bucket Size: 38 ms;\n'
BEGIN
SELECT CONCAT('\n',
       '\n  . = 1 unit',
       '\n  * = 2 units',
       '\n  # = 3 units\n',
       @label := CONCAT(@label_inner := CONCAT('\n(0 - ',
                                               ROUND((@bucket_size := (SELECT ROUND((MAX(avg_us) - MIN(avg_us)) / (@buckets := 16)) AS size
                                                                         FROM sys.x$ps_digest_avg_latency_distribution)) / (@unit_div := 1000)),
                                                (@unit := 'ms'), ')'),
                        REPEAT(' ', (@max_label_size := ((1 + LENGTH(ROUND((@bucket_size * 15) / @unit_div)) + 3 + LENGTH(ROUND(@bucket_size * 16) / @unit_div)) + 1)) - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us <= @bucket_size), 0)),
       REPEAT(' ', (@max_label_len := (@max_label_size + LENGTH((@total_queries := (SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution)))) + 1) - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < (@one_unit := 40), '.', IF(@count_in_bucket < (@two_unit := 80), '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND(@bucket_size / @unit_div), ' - ', ROUND((@bucket_size * 2) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size AND b1.avg_us <= @bucket_size * 2), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 2) / @unit_div), ' - ', ROUND((@bucket_size * 3) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 2 AND b1.avg_us <= @bucket_size * 3), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 3) / @unit_div), ' - ', ROUND((@bucket_size * 4) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 3 AND b1.avg_us <= @bucket_size * 4), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 4) / @unit_div), ' - ', ROUND((@bucket_size * 5) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 4 AND b1.avg_us <= @bucket_size * 5), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 5) / @unit_div), ' - ', ROUND((@bucket_size * 6) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 5 AND b1.avg_us <= @bucket_size * 6), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 6) / @unit_div), ' - ', ROUND((@bucket_size * 7) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 6 AND b1.avg_us <= @bucket_size * 7), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 7) / @unit_div), ' - ', ROUND((@bucket_size * 8) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 7 AND b1.avg_us <= @bucket_size * 8), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 8) / @unit_div), ' - ', ROUND((@bucket_size * 9) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 8 AND b1.avg_us <= @bucket_size * 9), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 9) / @unit_div), ' - ', ROUND((@bucket_size * 10) / @unit_div), @unit, ')'),
                         REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                         @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                       FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                      WHERE b1.avg_us > @bucket_size * 9 AND b1.avg_us <= @bucket_size * 10), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 10) / @unit_div), ' - ', ROUND((@bucket_size * 11) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 10 AND b1.avg_us <= @bucket_size * 11), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 11) / @unit_div), ' - ', ROUND((@bucket_size * 12) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 11 AND b1.avg_us <= @bucket_size * 12), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 12) / @unit_div), ' - ', ROUND((@bucket_size * 13) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 12 AND b1.avg_us <= @bucket_size * 13), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 13) / @unit_div), ' - ', ROUND((@bucket_size * 14) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 13 AND b1.avg_us <= @bucket_size * 14), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 14) / @unit_div), ' - ', ROUND((@bucket_size * 15) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 14 AND b1.avg_us <= @bucket_size * 15), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 15) / @unit_div), ' - ', ROUND((@bucket_size * 16) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 15 AND b1.avg_us <= @bucket_size * 16), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       '\n\n  Total Statements: ', @total_queries, '; Buckets: ', @buckets , '; Bucket Size: ', ROUND(@bucket_size / @unit_div) , ' ', @unit, ';\n'
      ) AS `Performance Schema Statement Digest Average Latency Histogram`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_trace_statement_digest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_trace_statement_digest`(
        IN in_digest VARCHAR(64),
        IN in_runtime INT,
        IN in_interval DECIMAL(2,2),
        IN in_start_fresh BOOLEAN,
        IN in_auto_enable BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTraces all instrumentation within Performance Schema for a specific\nStatement Digest.\n\nWhen finding a statement of interest within the\nperformance_schema.events_statements_summary_by_digest table, feed\nthe DIGEST value in to this procedure, set how long to poll for,\nand at what interval to poll, and it will generate a report of all\nstatistics tracked within Performance Schema for that digest for the\ninterval.\n\nIt will also attempt to generate an EXPLAIN for the longest running\nexample of the digest during the interval. Note this may fail, as:\n\n   * Performance Schema truncates long SQL_TEXT values (and hence the\n     EXPLAIN will fail due to parse errors)\n   * the default schema is sys (so tables that are not fully qualified\n     in the query may not be found)\n   * some queries such as SHOW are not supported in EXPLAIN.\n\nWhen the EXPLAIN fails, the error will be ignored and no EXPLAIN\noutput generated.\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_digest (VARCHAR(64)):\n  The statement digest identifier you would like to analyze\nin_runtime (INT):\n  The number of seconds to run analysis for\nin_interval (DECIMAL(2,2)):\n  The interval (in seconds, may be fractional) at which to try\n  and take snapshots\nin_start_fresh (BOOLEAN):\n  Whether to TRUNCATE the events_statements_history_long and\n  events_stages_history_long tables before starting\nin_auto_enable (BOOLEAN):\n  Whether to automatically turn on required consumers\n\nExample\n-----------\n\nmysql> call ps_trace_statement_digest(''891ec6860f98ba46d89dd20b0c03652c'', 10, 0.1, true, true);\n+--------------------+\n| SUMMARY STATISTICS |\n+--------------------+\n| SUMMARY STATISTICS |\n+--------------------+\n1 row in set (9.11 sec)\n\n+------------+-----------+-----------+-----------+---------------+------------+------------+\n| executions | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scans |\n+------------+-----------+-----------+-----------+---------------+------------+------------+\n|         21 | 4.11 ms   | 2.00 ms   |         0 |            21 |          0 |          0 |\n+------------+-----------+-----------+-----------+---------------+------------+------------+\n1 row in set (9.11 sec)\n\n+------------------------------------------+-------+-----------+\n| event_name                               | count | latency   |\n+------------------------------------------+-------+-----------+\n| stage/sql/checking query cache for query |    16 | 724.37 us |\n| stage/sql/statistics                     |    16 | 546.92 us |\n| stage/sql/freeing items                  |    18 | 520.11 us |\n| stage/sql/init                           |    51 | 466.80 us |\n...\n| stage/sql/cleaning up                    |    18 | 11.92 us  |\n| stage/sql/executing                      |    16 | 6.95 us   |\n+------------------------------------------+-------+-----------+\n17 rows in set (9.12 sec)\n\n+---------------------------+\n| LONGEST RUNNING STATEMENT |\n+---------------------------+\n| LONGEST RUNNING STATEMENT |\n+---------------------------+\n1 row in set (9.16 sec)\n\n+-----------+-----------+-----------+-----------+---------------+------------+-----------+\n| thread_id | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scan |\n+-----------+-----------+-----------+-----------+---------------+------------+-----------+\n|    166646 | 618.43 us | 1.00 ms   |         0 |             1 |          0 |         0 |\n+-----------+-----------+-----------+-----------+---------------+------------+-----------+\n1 row in set (9.16 sec)\n\n// Truncated for clarity...\n+-----------------------------------------------------------------+\n| sql_text                                                        |\n+-----------------------------------------------------------------+\n| select hibeventhe0_.id as id1382_, hibeventhe0_.createdTime ... |\n+-----------------------------------------------------------------+\n1 row in set (9.17 sec)\n\n+------------------------------------------+-----------+\n| event_name                               | latency   |\n+------------------------------------------+-----------+\n| stage/sql/init                           | 8.61 us   |\n| stage/sql/Waiting for query cache lock   | 453.23 us |\n| stage/sql/init                           | 331.07 ns |\n| stage/sql/checking query cache for query | 43.04 us  |\n...\n| stage/sql/freeing items                  | 30.46 us  |\n| stage/sql/cleaning up                    | 662.13 ns |\n+------------------------------------------+-----------+\n18 rows in set (9.23 sec)\n\n+----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n| id | select_type | table        | type  | possible_keys | key       | key_len | ref         | rows | Extra |\n+----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n|  1 | SIMPLE      | hibeventhe0_ | const | fixedTime     | fixedTime | 775     | const,const |    1 | NULL  |\n+----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n1 row in set (9.27 sec)\n\nQuery OK, 0 rows affected (9.28 sec)\n'
BEGIN
    DECLARE v_start_fresh BOOLEAN DEFAULT false;
    DECLARE v_auto_enable BOOLEAN DEFAULT false;
    DECLARE v_explain     BOOLEAN DEFAULT true;
    DECLARE v_this_thread_enabed ENUM('YES', 'NO');
    DECLARE v_runtime INT DEFAULT 0;
    DECLARE v_start INT DEFAULT 0;
    DECLARE v_found_stmts INT;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    -- Do not track the current thread, it will kill the stack
    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    DROP TEMPORARY TABLE IF EXISTS stmt_trace;
    CREATE TEMPORARY TABLE stmt_trace (
        thread_id BIGINT UNSIGNED,
        timer_start BIGINT UNSIGNED,
        event_id BIGINT UNSIGNED,
        sql_text longtext,
        timer_wait BIGINT UNSIGNED,
        lock_time BIGINT UNSIGNED,
        errors BIGINT UNSIGNED,
        mysql_errno INT,
        rows_sent BIGINT UNSIGNED,
        rows_affected BIGINT UNSIGNED,
        rows_examined BIGINT UNSIGNED,
        created_tmp_tables BIGINT UNSIGNED,
        created_tmp_disk_tables BIGINT UNSIGNED,
        no_index_used BIGINT UNSIGNED,
        PRIMARY KEY (thread_id, timer_start)
    );
    DROP TEMPORARY TABLE IF EXISTS stmt_stages;
    CREATE TEMPORARY TABLE stmt_stages (
       event_id BIGINT UNSIGNED,
       stmt_id BIGINT UNSIGNED,
       event_name VARCHAR(128),
       timer_wait BIGINT UNSIGNED,
       PRIMARY KEY (event_id)
    );
    SET v_start_fresh = in_start_fresh;
    IF v_start_fresh THEN
        TRUNCATE TABLE performance_schema.events_statements_history_long;
        TRUNCATE TABLE performance_schema.events_stages_history_long;
    END IF;
    SET v_auto_enable = in_auto_enable;
    IF v_auto_enable THEN
        CALL sys.ps_setup_save(0);
        UPDATE performance_schema.threads
           SET INSTRUMENTED = IF(PROCESSLIST_ID IS NOT NULL, 'YES', 'NO');
        -- Only the events_statements_history_long and events_stages_history_long tables and their ancestors are needed
        UPDATE performance_schema.setup_consumers
           SET ENABLED = 'YES'
         WHERE NAME NOT LIKE '%\_history'
               AND NAME NOT LIKE 'events_wait%'
               AND NAME NOT LIKE 'events_transactions%'
               AND NAME <> 'statements_digest';
        UPDATE performance_schema.setup_instruments
           SET ENABLED = 'YES',
               TIMED   = 'YES'
         WHERE NAME LIKE 'statement/%' OR NAME LIKE 'stage/%';
    END IF;
    WHILE v_runtime < in_runtime DO
        SELECT UNIX_TIMESTAMP() INTO v_start;
        INSERT IGNORE INTO stmt_trace
        SELECT thread_id, timer_start, event_id, sql_text, timer_wait, lock_time, errors, mysql_errno, 
               rows_sent, rows_affected, rows_examined, created_tmp_tables, created_tmp_disk_tables, no_index_used
          FROM performance_schema.events_statements_history_long
        WHERE digest = in_digest;
        INSERT IGNORE INTO stmt_stages
        SELECT stages.event_id, stmt_trace.event_id,
               stages.event_name, stages.timer_wait
          FROM performance_schema.events_stages_history_long AS stages
          JOIN stmt_trace ON stages.nesting_event_id = stmt_trace.event_id;
        SELECT SLEEP(in_interval) INTO @sleep;
        SET v_runtime = v_runtime + (UNIX_TIMESTAMP() - v_start);
    END WHILE;
    SELECT "SUMMARY STATISTICS";
    SELECT COUNT(*) executions,
           format_pico_time(SUM(timer_wait)) AS exec_time,
           format_pico_time(SUM(lock_time)) AS lock_time,
           SUM(rows_sent) AS rows_sent,
           SUM(rows_affected) AS rows_affected,
           SUM(rows_examined) AS rows_examined,
           SUM(created_tmp_tables) AS tmp_tables,
           SUM(no_index_used) AS full_scans
      FROM stmt_trace;
    SELECT event_name,
           COUNT(*) as count,
           format_pico_time(SUM(timer_wait)) as latency
      FROM stmt_stages
     GROUP BY event_name
     ORDER BY SUM(timer_wait) DESC;
    SELECT "LONGEST RUNNING STATEMENT";
    SELECT thread_id,
           format_pico_time(timer_wait) AS exec_time,
           format_pico_time(lock_time) AS lock_time,
           rows_sent,
           rows_affected,
           rows_examined,
           created_tmp_tables AS tmp_tables,
           no_index_used AS full_scan
      FROM stmt_trace
     ORDER BY timer_wait DESC LIMIT 1;
    SELECT sql_text
      FROM stmt_trace
     ORDER BY timer_wait DESC LIMIT 1;
    SELECT sql_text, event_id INTO @sql, @sql_id
      FROM stmt_trace
    ORDER BY timer_wait DESC LIMIT 1;
    IF (@sql_id IS NOT NULL) THEN
        SELECT event_name,
               format_pico_time(timer_wait) as latency
          FROM stmt_stages
         WHERE stmt_id = @sql_id
         ORDER BY event_id;
    END IF;
    DROP TEMPORARY TABLE stmt_trace;
    DROP TEMPORARY TABLE stmt_stages;
    IF (@sql IS NOT NULL) THEN
        SET @stmt := CONCAT("EXPLAIN FORMAT=JSON ", @sql);
        BEGIN
            -- Not all queries support EXPLAIN, so catch the cases that are
            -- not supported. Currently that includes cases where the table
            -- is not fully qualified and is not in the default schema for this
            -- procedure as it's not possible to change the default schema inside
            -- a procedure.
            --
            -- Errno = 1064: You have an error in your SQL syntax
            -- Errno = 1146: Table '...' doesn't exist
            DECLARE CONTINUE HANDLER FOR 1064, 1146 SET v_explain = false;
            PREPARE explain_stmt FROM @stmt;
        END;
        IF (v_explain) THEN
            EXECUTE explain_stmt;
            DEALLOCATE PREPARE explain_stmt;
        END IF;
    END IF;
    IF v_auto_enable THEN
        CALL sys.ps_setup_reload_saved();
    END IF;
    -- Restore INSTRUMENTED for this thread
    IF (v_this_thread_enabed = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_trace_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_trace_thread`(
        IN in_thread_id BIGINT UNSIGNED,
        IN in_outfile VARCHAR(255),
        IN in_max_runtime DECIMAL(20,2),
        IN in_interval DECIMAL(20,2),
        IN in_start_fresh BOOLEAN,
        IN in_auto_setup BOOLEAN,
        IN in_debug BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDumps all data within Performance Schema for an instrumented thread,\nto create a DOT formatted graph file. \n\nEach resultset returned from the procedure should be used for a complete graph\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_thread_id (BIGINT UNSIGNED):\n  The thread that you would like a stack trace for\nin_outfile  (VARCHAR(255)):\n  The filename the dot file will be written to\nin_max_runtime (DECIMAL(20,2)):\n  The maximum time to keep collecting data.\n  Use NULL to get the default which is 60 seconds.\nin_interval (DECIMAL(20,2)): \n  How long to sleep between data collections. \n  Use NULL to get the default which is 1 second.\nin_start_fresh (BOOLEAN):\n  Whether to reset all Performance Schema data before tracing.\nin_auto_setup (BOOLEAN):\n  Whether to disable all other threads and enable all consumers/instruments. \n  This will also reset the settings at the end of the run.\nin_debug (BOOLEAN):\n  Whether you would like to include file:lineno in the graph\n\nExample\n-----------\n\nmysql> CALL sys.ps_trace_thread(25, CONCAT(''/tmp/stack-'', REPLACE(NOW(), '' '', ''-''), ''.dot''), NULL, NULL, TRUE, TRUE, TRUE);\n+-------------------+\n| summary           |\n+-------------------+\n| Disabled 1 thread |\n+-------------------+\n1 row in set (0.00 sec)\n\n+---------------------------------------------+\n| Info                                        |\n+---------------------------------------------+\n| Data collection starting for THREAD_ID = 25 |\n+---------------------------------------------+\n1 row in set (0.03 sec)\n\n+-----------------------------------------------------------+\n| Info                                                      |\n+-----------------------------------------------------------+\n| Stack trace written to /tmp/stack-2014-02-16-21:18:41.dot |\n+-----------------------------------------------------------+\n1 row in set (60.07 sec)\n\n+-------------------------------------------------------------------+\n| Convert to PDF                                                    |\n+-------------------------------------------------------------------+\n| dot -Tpdf -o /tmp/stack_25.pdf /tmp/stack-2014-02-16-21:18:41.dot |\n+-------------------------------------------------------------------+\n1 row in set (60.07 sec)\n\n+-------------------------------------------------------------------+\n| Convert to PNG                                                    |\n+-------------------------------------------------------------------+\n| dot -Tpng -o /tmp/stack_25.png /tmp/stack-2014-02-16-21:18:41.dot |\n+-------------------------------------------------------------------+\n1 row in set (60.07 sec)\n\n+------------------+\n| summary          |\n+------------------+\n| Enabled 1 thread |\n+------------------+\n1 row in set (60.32 sec)\n'
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_start, v_runtime DECIMAL(20,2) DEFAULT 0.0;
    DECLARE v_min_event_id bigint unsigned DEFAULT 0;
    DECLARE v_this_thread_enabed ENUM('YES', 'NO');
    DECLARE v_event longtext;
    DECLARE c_stack CURSOR FOR
        SELECT CONCAT(IF(nesting_event_id IS NOT NULL, CONCAT(nesting_event_id, ' -> '), ''), 
                    event_id, '; ', event_id, ' [label="',
                    -- Convert from picoseconds to microseconds
                    '(', format_pico_time(timer_wait), ') ',
                    IF (event_name NOT LIKE 'wait/io%', 
                        SUBSTRING_INDEX(event_name, '/', -2), 
                        IF (event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%',
                            SUBSTRING_INDEX(event_name, '/', -4),
                            event_name)
                        ),
                    -- Always dump the extra wait information gathered for transactions and statements
                    IF (event_name LIKE 'transaction', IFNULL(CONCAT('\\n', wait_info), ''), ''),
                    IF (event_name LIKE 'statement/%', IFNULL(CONCAT('\\n', wait_info), ''), ''),
                    -- If debug is enabled, add the file:lineno information for waits
                    IF (in_debug AND event_name LIKE 'wait%', wait_info, ''),
                    '", ', 
                    -- Depending on the type of event, style appropriately
                    CASE WHEN event_name LIKE 'wait/io/file%' THEN 
                           'shape=box, style=filled, color=red'
                         WHEN event_name LIKE 'wait/io/table%' THEN 
                           'shape=box, style=filled, color=green'
                         WHEN event_name LIKE 'wait/io/socket%' THEN
                           'shape=box, style=filled, color=yellow'
                         WHEN event_name LIKE 'wait/synch/mutex%' THEN
                           'style=filled, color=lightskyblue'
                         WHEN event_name LIKE 'wait/synch/cond%' THEN
                           'style=filled, color=darkseagreen3'
                         WHEN event_name LIKE 'wait/synch/rwlock%' THEN
                           'style=filled, color=orchid'
                         WHEN event_name LIKE 'wait/synch/sxlock%' THEN
                           'style=filled, color=palevioletred' 
                         WHEN event_name LIKE 'wait/lock%' THEN
                           'shape=box, style=filled, color=tan'
                         WHEN event_name LIKE 'statement/%' THEN
                           CONCAT('shape=box, style=bold',
                                  -- Style statements depending on COM vs SQL
                                  CASE WHEN event_name LIKE 'statement/com/%' THEN
                                         ' style=filled, color=darkseagreen'
                                       ELSE
                                         -- Use long query time from the server to
                                         -- flag long running statements in red
                                         IF((timer_wait/1000000000000) > @@long_query_time, 
                                            ' style=filled, color=red', 
                                            ' style=filled, color=lightblue')
                                  END
                           )
                         WHEN event_name LIKE 'transaction' THEN
                           'shape=box, style=filled, color=lightblue3'
                         WHEN event_name LIKE 'stage/%' THEN
                           'style=filled, color=slategray3'
                         -- IDLE events are on their own, call attention to them
                         WHEN event_name LIKE '%idle%' THEN
                           'shape=box, style=filled, color=firebrick3'
                         ELSE '' END,
                     '];\n'
                   ) event, event_id
        FROM (
             -- Select all transactions
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,
                     CONCAT('trx_id: ',  IFNULL(trx_id, ''), '\\n',
                            'gtid: ', IFNULL(gtid, ''), '\\n',
                            'state: ', state, '\\n',
                            'mode: ', access_mode, '\\n',
                            'isolation: ', isolation_level, '\\n',
                            'autocommit: ', autocommit, '\\n',
                            'savepoints: ', number_of_savepoints, '\\n'
                     ) AS wait_info
                FROM performance_schema.events_transactions_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION
             -- Select all statements, with the extra tracing information available
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, 
                     CONCAT('statement: ', sql_text, '\\n',
                            'errors: ', errors, '\\n',
                            'warnings: ', warnings, '\\n',
                            'lock time: ', format_pico_time(lock_time),'\\n',
                            'rows affected: ', rows_affected, '\\n',
                            'rows sent: ', rows_sent, '\\n',
                            'rows examined: ', rows_examined, '\\n',
                            'tmp tables: ', created_tmp_tables, '\\n',
                            'tmp disk tables: ', created_tmp_disk_tables, '\\n'
                            'select scan: ', select_scan, '\\n',
                            'select full join: ', select_full_join, '\\n',
                            'select full range join: ', select_full_range_join, '\\n',
                            'select range: ', select_range, '\\n',
                            'select range check: ', select_range_check, '\\n', 
                            'sort merge passes: ', sort_merge_passes, '\\n',
                            'sort rows: ', sort_rows, '\\n',
                            'sort range: ', sort_range, '\\n',
                            'sort scan: ', sort_scan, '\\n',
                            'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n',
                            'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n'
                     ) AS wait_info
                FROM performance_schema.events_statements_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION
             -- Select all stages
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info
                FROM performance_schema.events_stages_history_long 
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION 
             -- Select all events, adding information appropriate to the event
             (SELECT thread_id, event_id, 
                     CONCAT(event_name, 
                            IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''), 
                            IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''),
                            IF(event_name LIKE 'wait/io/file%', '\\n', ''),
                            IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''), 
                            IF(object_name IS NOT NULL, 
                               IF (event_name LIKE 'wait/io/socket%',
                                   -- Print the socket if used, else the IP:port as reported
                                   CONCAT('\\n', IF (object_name LIKE ':0%', @@socket, object_name)),
                                   object_name),
                               ''
                            ),
                            IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n'
                     ) AS event_name,
                     timer_wait, timer_start, nesting_event_id, source AS wait_info
                FROM performance_schema.events_waits_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
           ) events 
       ORDER BY event_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    -- Do not track the current thread, it will kill the stack
    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    IF (in_auto_setup) THEN
        CALL sys.ps_setup_save(0);
        -- Ensure only the thread to create the stack trace for is instrumented and that we instrument everything.
        DELETE FROM performance_schema.setup_actors;
        UPDATE performance_schema.threads
           SET INSTRUMENTED = IF(THREAD_ID = in_thread_id, 'YES', 'NO');
        -- only the %_history_long tables and it ancestors are needed
        UPDATE performance_schema.setup_consumers
           SET ENABLED = 'YES'
         WHERE NAME NOT LIKE '%\_history';
        UPDATE performance_schema.setup_instruments
           SET ENABLED = 'YES',
               TIMED   = 'YES';
    END IF;
    IF (in_start_fresh) THEN
        TRUNCATE performance_schema.events_transactions_history_long;
        TRUNCATE performance_schema.events_statements_history_long;
        TRUNCATE performance_schema.events_stages_history_long;
        TRUNCATE performance_schema.events_waits_history_long;
    END IF;
    DROP TEMPORARY TABLE IF EXISTS tmp_events;
    CREATE TEMPORARY TABLE tmp_events (
      event_id bigint unsigned NOT NULL,
      event longblob,
      PRIMARY KEY (event_id)
    );
    -- Print headers for a .dot file
    INSERT INTO tmp_events VALUES (0, CONCAT('digraph events { rankdir=LR; nodesep=0.10;\n',
                                             '// Stack created .....: ', NOW(), '\n',
                                             '// MySQL version .....: ', VERSION(), '\n',
                                             '// MySQL hostname ....: ', @@hostname, '\n',
                                             '// MySQL port ........: ', @@port, '\n',
                                             '// MySQL socket ......: ', @@socket, '\n',
                                             '// MySQL user ........: ', CURRENT_USER(), '\n'));
    SELECT CONCAT('Data collection starting for THREAD_ID = ', in_thread_id) AS 'Info';
    SET v_min_event_id = 0,
        v_start        = UNIX_TIMESTAMP(),
        in_interval    = IFNULL(in_interval, 1.00),
        in_max_runtime = IFNULL(in_max_runtime, 60.00);
    WHILE (v_runtime < in_max_runtime
           AND (SELECT INSTRUMENTED FROM performance_schema.threads WHERE THREAD_ID = in_thread_id) = 'YES') DO
        SET v_done = FALSE;
        OPEN c_stack;
        c_stack_loop: LOOP
            FETCH c_stack INTO v_event, v_min_event_id;
            IF v_done THEN
                LEAVE c_stack_loop;
            END IF;
            IF (LENGTH(v_event) > 0) THEN
                INSERT INTO tmp_events VALUES (v_min_event_id, v_event);
            END IF;
        END LOOP;
        CLOSE c_stack;
        SELECT SLEEP(in_interval) INTO @sleep;
        SET v_runtime = (UNIX_TIMESTAMP() - v_start);
    END WHILE;
    INSERT INTO tmp_events VALUES (v_min_event_id+1, '}');
    SET @query = CONCAT('SELECT event FROM tmp_events ORDER BY event_id INTO OUTFILE ''', in_outfile, ''' FIELDS ESCAPED BY '''' LINES TERMINATED BY ''''');
    PREPARE stmt_output FROM @query;
    EXECUTE stmt_output;
    DEALLOCATE PREPARE stmt_output;
    SELECT CONCAT('Stack trace written to ', in_outfile) AS 'Info';
    SELECT CONCAT('dot -Tpdf -o /tmp/stack_', in_thread_id, '.pdf ', in_outfile) AS 'Convert to PDF';
    SELECT CONCAT('dot -Tpng -o /tmp/stack_', in_thread_id, '.png ', in_outfile) AS 'Convert to PNG';
    DROP TEMPORARY TABLE tmp_events;
    -- Reset the settings for the performance schema
    IF (in_auto_setup) THEN
        CALL sys.ps_setup_reload_saved();
    END IF;
    -- Restore INSTRUMENTED for this thread
    IF (v_this_thread_enabed = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_truncate_all_tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_truncate_all_tables`(
        IN in_verbose BOOLEAN
    )
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTruncates all summary tables within Performance Schema, \nresetting all aggregated instrumentation as a snapshot.\n\nParameters\n-----------\n\nin_verbose (BOOLEAN):\n  Whether to print each TRUNCATE statement before running\n\nExample\n-----------\n\nmysql> CALL sys.ps_truncate_all_tables(false);\n+---------------------+\n| summary             |\n+---------------------+\n| Truncated 44 tables |\n+---------------------+\n1 row in set (0.10 sec)\n\nQuery OK, 0 rows affected (0.10 sec)\n'
BEGIN
    DECLARE v_done INT DEFAULT FALSE;
    DECLARE v_total_tables INT DEFAULT 0;
    DECLARE v_ps_table VARCHAR(64);
    DECLARE ps_tables CURSOR FOR
        SELECT table_name 
          FROM INFORMATION_SCHEMA.TABLES 
         WHERE table_schema = 'performance_schema' 
           AND (table_name LIKE '%summary%' 
            OR table_name LIKE '%history%');
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    OPEN ps_tables;
    ps_tables_loop: LOOP
        FETCH ps_tables INTO v_ps_table;
        IF v_done THEN
          LEAVE ps_tables_loop;
        END IF;
        SET @truncate_stmt := CONCAT('TRUNCATE TABLE performance_schema.', v_ps_table);
        IF in_verbose THEN
            SELECT CONCAT('Running: ', @truncate_stmt) AS status;
        END IF;
        PREPARE truncate_stmt FROM @truncate_stmt;
        EXECUTE truncate_stmt;
        DEALLOCATE PREPARE truncate_stmt;
        SET v_total_tables = v_total_tables + 1;
    END LOOP;
    CLOSE ps_tables;
    SELECT CONCAT('Truncated ', v_total_tables, ' tables') AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `statement_performance_analyzer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `statement_performance_analyzer`(
        IN in_action ENUM('snapshot', 'overall', 'delta', 'create_table', 'create_tmp', 'save', 'cleanup'),
        IN in_table VARCHAR(129),
        IN in_views SET ('with_runtimes_in_95th_percentile', 'analysis', 'with_errors_or_warnings', 'with_full_table_scans', 'with_sorting', 'with_temp_tables', 'custom')
    )
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nCreate a report of the statements running on the server.\n\nThe views are calculated based on the overall and/or delta activity.\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_action (ENUM(''snapshot'', ''overall'', ''delta'', ''create_tmp'', ''create_table'', ''save'', ''cleanup'')):\n  The action to take. Supported actions are:\n    * snapshot      Store a snapshot. The default is to make a snapshot of the current content of\n                    performance_schema.events_statements_summary_by_digest, but by setting in_table\n                    this can be overwritten to copy the content of the specified table.\n                    The snapshot is stored in the sys.tmp_digests temporary table.\n    * overall       Generate analyzis based on the content specified by in_table. For the overall analyzis,\n                    in_table can be NOW() to use a fresh snapshot. This will overwrite an existing snapshot.\n                    Use NULL for in_table to use the existing snapshot. If in_table IS NULL and no snapshot\n                    exists, a new will be created.\n                    See also in_views and @sys.statement_performance_analyzer.limit.\n    * delta         Generate a delta analysis. The delta will be calculated between the reference table in\n                    in_table and the snapshot. An existing snapshot must exist.\n                    The action uses the sys.tmp_digests_delta temporary table.\n                    See also in_views and @sys.statement_performance_analyzer.limit.\n    * create_table  Create a regular table suitable for storing the snapshot for later use, e.g. for\n                    calculating deltas.\n    * create_tmp    Create a temporary table suitable for storing the snapshot for later use, e.g. for\n                    calculating deltas.\n    * save          Save the snapshot in the table specified by in_table. The table must exists and have\n                    the correct structure.\n                    If no snapshot exists, a new is created.\n    * cleanup       Remove the temporary tables used for the snapshot and delta.\n\nin_table (VARCHAR(129)):\n  The table argument used for some actions. Use the format ''db1.t1'' or ''t1'' without using any backticks (`)\n  for quoting. Periods (.) are not supported in the database and table names.\n\n  The meaning of the table for each action supporting the argument is:\n\n    * snapshot      The snapshot is created based on the specified table. Set to NULL or NOW() to use\n                    the current content of performance_schema.events_statements_summary_by_digest.\n    * overall       The table with the content to create the overall analyzis for. The following values\n                    can be used:\n                      - A table name - use the content of that table.\n                      - NOW()        - create a fresh snapshot and overwrite the existing snapshot.\n                      - NULL         - use the last stored snapshot.\n    * delta         The table name is mandatory and specified the reference view to compare the currently\n                    stored snapshot against. If no snapshot exists, a new will be created.\n    * create_table  The name of the regular table to create.\n    * create_tmp    The name of the temporary table to create.\n    * save          The name of the table to save the currently stored snapshot into.\n\nin_views (SET (''with_runtimes_in_95th_percentile'', ''analysis'', ''with_errors_or_warnings'',\n               ''with_full_table_scans'', ''with_sorting'', ''with_temp_tables'', ''custom''))\n  Which views to include:\n\n    * with_runtimes_in_95th_percentile  Based on the sys.statements_with_runtimes_in_95th_percentile view\n    * analysis                          Based on the sys.statement_analysis view\n    * with_errors_or_warnings           Based on the sys.statements_with_errors_or_warnings view\n    * with_full_table_scans             Based on the sys.statements_with_full_table_scans view\n    * with_sorting                      Based on the sys.statements_with_sorting view\n    * with_temp_tables                  Based on the sys.statements_with_temp_tables view\n    * custom                            Use a custom view. This view must be specified in @sys.statement_performance_analyzer.view to an existing view or a query\n\nDefault is to include all except ''custom''.\n\n\nConfiguration Options\n----------------------\n\nsys.statement_performance_analyzer.limit\n  The maximum number of rows to include for the views that does not have a built-in limit (e.g. the 95th percentile view).\n  If not set the limit is 100.\n\nsys.statement_performance_analyzer.view\n  Used together with the ''custom'' view. If the value contains a space, it is considered a query, otherwise it must be\n  an existing view querying the performance_schema.events_statements_summary_by_digest table. There cannot be any limit\n  clause including in the query or view definition if @sys.statement_performance_analyzer.limit > 0.\n  If specifying a view, use the same format as for in_table.\n\nsys.debug\n  Whether to provide debugging output.\n  Default is ''OFF''. Set to ''ON'' to include.\n\n\nExample\n--------\n\nTo create a report with the queries in the 95th percentile since last truncate of performance_schema.events_statements_summary_by_digest\nand the delta for a 1 minute period:\n\n   1. Create a temporary table to store the initial snapshot.\n   2. Create the initial snapshot.\n   3. Save the initial snapshot in the temporary table.\n   4. Wait one minute.\n   5. Create a new snapshot.\n   6. Perform analyzis based on the new snapshot.\n   7. Perform analyzis based on the delta between the initial and new snapshots.\n\nmysql> CALL sys.statement_performance_analyzer(''create_tmp'', ''mydb.tmp_digests_ini'', NULL);\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\nQuery OK, 0 rows affected (0.02 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''save'', ''mydb.tmp_digests_ini'', NULL);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DO SLEEP(60);\nQuery OK, 0 rows affected (1 min 0.00 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\nQuery OK, 0 rows affected (0.02 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile'');\n+-----------------------------------------+\n| Next Output                             |\n+-----------------------------------------+\n| Queries with Runtime in 95th Percentile |\n+-----------------------------------------+\n1 row in set (0.05 sec)\n\n...\n\nmysql> CALL sys.statement_performance_analyzer(''delta'', ''mydb.tmp_digests_ini'', ''with_runtimes_in_95th_percentile'');\n+-----------------------------------------+\n| Next Output                             |\n+-----------------------------------------+\n| Queries with Runtime in 95th Percentile |\n+-----------------------------------------+\n1 row in set (0.03 sec)\n\n...\n\n\nTo create an overall report of the 95th percentile queries and the top 10 queries with full table scans:\n\nmysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET @sys.statement_performance_analyzer.limit = 10;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile,with_full_table_scans'');\n+-----------------------------------------+\n| Next Output                             |\n+-----------------------------------------+\n| Queries with Runtime in 95th Percentile |\n+-----------------------------------------+\n1 row in set (0.01 sec)\n\n...\n\n+-------------------------------------+\n| Next Output                         |\n+-------------------------------------+\n| Top 10 Queries with Full Table Scan |\n+-------------------------------------+\n1 row in set (0.09 sec)\n\n...\n\n\nUse a custom view showing the top 10 query sorted by total execution time refreshing the view every minute using\nthe watch command in Linux.\n\nmysql> CREATE OR REPLACE VIEW mydb.my_statements AS\n    -> SELECT sys.format_statement(DIGEST_TEXT) AS query,\n    ->        SCHEMA_NAME AS db,\n    ->        COUNT_STAR AS exec_count,\n    ->        format_pico_time(SUM_TIMER_WAIT) AS total_latency,\n    ->        format_pico_time(AVG_TIMER_WAIT) AS avg_latency,\n    ->        ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg,\n    ->        ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg,\n    ->        ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0)) AS rows_affected_avg,\n    ->        DIGEST AS digest\n    ->   FROM performance_schema.events_statements_summary_by_digest\n    -> ORDER BY SUM_TIMER_WAIT DESC;\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''create_table'', ''mydb.digests_prev'', NULL);\nQuery OK, 0 rows affected (0.10 sec)\n\nshell$ watch -n 60 "mysql sys --table -e "\n> SET @sys.statement_performance_analyzer.view = ''mydb.my_statements'';\n> SET @sys.statement_performance_analyzer.limit = 10;\n> CALL statement_performance_analyzer(''snapshot'', NULL, NULL);\n> CALL statement_performance_analyzer(''delta'', ''mydb.digests_prev'', ''custom'');\n> CALL statement_performance_analyzer(''save'', ''mydb.digests_prev'', NULL);\n> ""\n\nEvery 60.0s: mysql sys --table -e "                                                                                                   ...  Mon Dec 22 10:58:51 2014\n\n+----------------------------------+\n| Next Output                      |\n+----------------------------------+\n| Top 10 Queries Using Custom View |\n+----------------------------------+\n+-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n| query             | db    | exec_count | total_latency | avg_latency | rows_sent_avg | rows_examined_avg | rows_affected_avg | digest                           |\n+-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n...\n'
BEGIN
    DECLARE v_table_exists, v_tmp_digests_table_exists, v_custom_view_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') DEFAULT '';
    DECLARE v_this_thread_enabled ENUM('YES', 'NO');
    DECLARE v_force_new_snapshot BOOLEAN DEFAULT FALSE;
    DECLARE v_digests_table VARCHAR(133);
    DECLARE v_quoted_table, v_quoted_custom_view VARCHAR(133) DEFAULT '';
    DECLARE v_table_db, v_table_name, v_custom_db, v_custom_name VARCHAR(64);
    DECLARE v_digest_table_template, v_checksum_ref, v_checksum_table text;
    DECLARE v_sql longtext;
    -- Maximum supported length for MESSAGE_TEXT with the SIGNAL command is 128 chars.
    DECLARE v_error_msg VARCHAR(128);
    DECLARE v_old_group_concat_max_len INT UNSIGNED DEFAULT 0;
    -- Don't instrument this thread
    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    END IF;
    -- Temporary table are used - disable sql_log_bin if necessary to prevent them replicating
    SET @log_bin := @@sql_log_bin;
    IF ((@log_bin = 1) AND (@@binlog_format = 'STATEMENT')) THEN
        SET sql_log_bin = 0;
    END IF;
    -- Set configuration options
    IF (@sys.statement_performance_analyzer.limit IS NULL) THEN
        SET @sys.statement_performance_analyzer.limit = sys.sys_get_config('statement_performance_analyzer.limit', '100');
    END IF;
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug                                = sys.sys_get_config('debug'                               , 'OFF');
    END IF;
    -- If in_table is set, break in_table into a db and table component and check whether it exists
    -- in_table = NOW() is considered like it's not set.
    IF (in_table = 'NOW()') THEN
        SET v_force_new_snapshot = TRUE,
            in_table             = NULL;
    ELSEIF (in_table IS NOT NULL) THEN
        IF (NOT INSTR(in_table, '.')) THEN
            -- No . in the table name - use current database
            -- DATABASE() will be the database of the procedure
            SET v_table_db   = DATABASE(),
                v_table_name = in_table;
        ELSE
            SET v_table_db   = SUBSTRING_INDEX(in_table, '.', 1);
            SET v_table_name = SUBSTRING(in_table, CHAR_LENGTH(v_table_db)+2);
        END IF;
        SET v_quoted_table = CONCAT('`', v_table_db, '`.`', v_table_name, '`');
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('in_table is: db = ''', v_table_db, ''', table = ''', v_table_name, '''') AS 'Debug';
        END IF;
        IF (v_table_db = DATABASE() AND (v_table_name = 'tmp_digests' OR v_table_name = 'tmp_digests_delta')) THEN
            SET v_error_msg = CONCAT('Invalid value for in_table: ', v_quoted_table, ' is reserved table name.');
            SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = v_error_msg;
        END IF;
        CALL sys.table_exists(v_table_db, v_table_name, v_table_exists);
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('v_table_exists = ', v_table_exists) AS 'Debug';
        END IF;
        IF (v_table_exists = 'BASE TABLE') THEN
            SET v_old_group_concat_max_len = @@session.group_concat_max_len;
            SET @@session.group_concat_max_len = 2048;
            -- Verify that the table has the correct table definition
            -- This can only be done for base tables as temporary aren't in information_schema.COLUMNS.
            -- This also minimises the risk of using a production table.
            SET v_checksum_ref = (
                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum
                   FROM information_schema.COLUMNS
                  WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'events_statements_summary_by_digest'
                ),
                v_checksum_table = (
                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum
                   FROM information_schema.COLUMNS
                  WHERE TABLE_SCHEMA = v_table_db AND TABLE_NAME = v_table_name
                );
            SET @@session.group_concat_max_len = v_old_group_concat_max_len;
            IF (v_checksum_ref <> v_checksum_table) THEN
                -- The table does not have the correct definition, so abandon
                SET v_error_msg = CONCAT('The table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 93, CONCAT('...', SUBSTRING(v_quoted_table, -90)), v_quoted_table),
                                         ' has the wrong definition.');
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        END IF;
    END IF;
    IF (in_views IS NULL OR in_views = '') THEN
        -- Set to default
        SET in_views = 'with_runtimes_in_95th_percentile,analysis,with_errors_or_warnings,with_full_table_scans,with_sorting,with_temp_tables';
    END IF;
    -- Validate settings
    CALL sys.table_exists(DATABASE(), 'tmp_digests', v_tmp_digests_table_exists);
    IF (@sys.debug = 'ON') THEN
        SELECT CONCAT('v_tmp_digests_table_exists = ', v_tmp_digests_table_exists) AS 'Debug';
    END IF;
    CASE
        WHEN in_action IN ('snapshot', 'overall') THEN
            -- in_table must be NULL, NOW(), or an existing table
            IF (in_table IS NOT NULL) THEN
                IF (NOT v_table_exists IN ('TEMPORARY', 'BASE TABLE')) THEN
                    SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be NULL, NOW() or specify an existing table.',
                                             ' The table ',
                                             IF(CHAR_LENGTH(v_quoted_table) > 16, CONCAT('...', SUBSTRING(v_quoted_table, -13)), v_quoted_table),
                                             ' does not exist.');
                    SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = v_error_msg;
                END IF;
            END IF;
        WHEN in_action IN ('delta', 'save') THEN
            -- in_table must be an existing table
            IF (v_table_exists NOT IN ('TEMPORARY', 'BASE TABLE')) THEN
                SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be an existing table.',
                                         IF(in_table IS NOT NULL, CONCAT(' The table ',
                                             IF(CHAR_LENGTH(v_quoted_table) > 39, CONCAT('...', SUBSTRING(v_quoted_table, -36)), v_quoted_table),
                                             ' does not exist.'), ''));
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
            IF (in_action = 'delta' AND v_tmp_digests_table_exists <> 'TEMPORARY') THEN
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = 'An existing snapshot generated with the statement_performance_analyzer() must exist.';
            END IF;
        WHEN in_action = 'create_tmp' THEN
            -- in_table must not exists as a temporary table
            IF (v_table_exists = 'TEMPORARY') THEN
                SET v_error_msg = CONCAT('Cannot create the table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 72, CONCAT('...', SUBSTRING(v_quoted_table, -69)), v_quoted_table),
                                         ' as it already exists.');
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        WHEN in_action = 'create_table' THEN
            -- in_table must not exists at all
            IF (v_table_exists <> '') THEN
                SET v_error_msg = CONCAT('Cannot create the table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 52, CONCAT('...', SUBSTRING(v_quoted_table, -49)), v_quoted_table),
                                         ' as it already exists',
                                         IF(v_table_exists = 'TEMPORARY', ' as a temporary table.', '.'));
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        WHEN in_action = 'cleanup' THEN
            -- doesn't use any of the arguments
            DO (SELECT 1);
        ELSE
            SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = 'Unknown action. Supported actions are: cleanup, create_table, create_tmp, delta, overall, save, snapshot';
    END CASE;
    SET v_digest_table_template = 'CREATE %{TEMPORARY}TABLE %{TABLE_NAME} (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL,
  `DIGEST` varchar(64) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `COUNT_STAR` bigint unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint unsigned NOT NULL,
  `SUM_ERRORS` bigint unsigned NOT NULL,
  `SUM_WARNINGS` bigint unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint unsigned NOT NULL,
  `SUM_CPU_TIME` bigint unsigned NOT NULL,
  `MAX_CONTROLLED_MEMORY` bigint unsigned NOT NULL,
  `MAX_TOTAL_MEMORY` bigint unsigned NOT NULL,
  `COUNT_SECONDARY` bigint unsigned NOT NULL,
  `FIRST_SEEN` timestamp(6) NULL DEFAULT NULL,
  `LAST_SEEN` timestamp(6) NULL DEFAULT NULL,
  `QUANTILE_95` bigint unsigned NOT NULL,
  `QUANTILE_99` bigint unsigned NOT NULL,
  `QUANTILE_999` bigint unsigned NOT NULL,
  `QUERY_SAMPLE_TEXT` longtext,
  `QUERY_SAMPLE_SEEN` timestamp(6) NULL DEFAULT NULL,
  `QUERY_SAMPLE_TIMER_WAIT` bigint unsigned NOT NULL,
  INDEX (SCHEMA_NAME, DIGEST)
) DEFAULT CHARSET=utf8mb4';
    -- Do the action
    -- The actions snapshot, ... requires a fresh snapshot - create it now
    IF (v_force_new_snapshot
           OR in_action = 'snapshot'
           OR (in_action = 'overall' AND in_table IS NULL)
           OR (in_action = 'save' AND v_tmp_digests_table_exists <> 'TEMPORARY')
       ) THEN
        IF (v_tmp_digests_table_exists = 'TEMPORARY') THEN
            IF (@sys.debug = 'ON') THEN
                SELECT 'DROP TEMPORARY TABLE IF EXISTS tmp_digests' AS 'Debug';
            END IF;
            DROP TEMPORARY TABLE IF EXISTS tmp_digests;
        END IF;
        CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', 'tmp_digests'));
        SET v_sql = CONCAT('INSERT INTO tmp_digests SELECT * FROM ',
                           IF(in_table IS NULL OR in_action = 'save', 'performance_schema.events_statements_summary_by_digest', v_quoted_table));
        CALL sys.execute_prepared_stmt(v_sql);
    END IF;
    -- Go through the remaining actions
    IF (in_action IN ('create_table', 'create_tmp')) THEN
        IF (in_action = 'create_table') THEN
            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', ''), '%{TABLE_NAME}', v_quoted_table));
        ELSE
            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', v_quoted_table));
        END IF;
    ELSEIF (in_action = 'save') THEN
        CALL sys.execute_prepared_stmt(CONCAT('DELETE FROM ', v_quoted_table));
        CALL sys.execute_prepared_stmt(CONCAT('INSERT INTO ', v_quoted_table, ' SELECT * FROM tmp_digests'));
    ELSEIF (in_action = 'cleanup') THEN
        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests;
        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests_delta;
    ELSEIF (in_action IN ('overall', 'delta')) THEN
        -- These are almost the same - for delta calculate the delta in tmp_digests_delta and use that instead of tmp_digests.
        -- And overall allows overriding the table to use.
        IF (in_action = 'overall') THEN
            IF (in_table IS NULL) THEN
                SET v_digests_table = 'tmp_digests';
            ELSE
                SET v_digests_table = v_quoted_table;
            END IF;
        ELSE
            SET v_digests_table = 'tmp_digests_delta';
            DROP TEMPORARY TABLE IF EXISTS tmp_digests_delta;
            CREATE TEMPORARY TABLE tmp_digests_delta LIKE tmp_digests;
            SET v_sql = CONCAT('INSERT INTO tmp_digests_delta
SELECT `d_end`.`SCHEMA_NAME`,
       `d_end`.`DIGEST`,
       `d_end`.`DIGEST_TEXT`,
       `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) AS ''COUNT_STAR'',
       `d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0) AS ''SUM_TIMER_WAIT'',
       `d_end`.`MIN_TIMER_WAIT` AS ''MIN_TIMER_WAIT'',
       IFNULL((`d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0))/NULLIF(`d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0), 0), 0) AS ''AVG_TIMER_WAIT'',
       `d_end`.`MAX_TIMER_WAIT` AS ''MAX_TIMER_WAIT'',
       `d_end`.`SUM_LOCK_TIME`-IFNULL(`d_start`.`SUM_LOCK_TIME`, 0) AS ''SUM_LOCK_TIME'',
       `d_end`.`SUM_ERRORS`-IFNULL(`d_start`.`SUM_ERRORS`, 0) AS ''SUM_ERRORS'',
       `d_end`.`SUM_WARNINGS`-IFNULL(`d_start`.`SUM_WARNINGS`, 0) AS ''SUM_WARNINGS'',
       `d_end`.`SUM_ROWS_AFFECTED`-IFNULL(`d_start`.`SUM_ROWS_AFFECTED`, 0) AS ''SUM_ROWS_AFFECTED'',
       `d_end`.`SUM_ROWS_SENT`-IFNULL(`d_start`.`SUM_ROWS_SENT`, 0) AS ''SUM_ROWS_SENT'',
       `d_end`.`SUM_ROWS_EXAMINED`-IFNULL(`d_start`.`SUM_ROWS_EXAMINED`, 0) AS ''SUM_ROWS_EXAMINED'',
       `d_end`.`SUM_CREATED_TMP_DISK_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_DISK_TABLES`, 0) AS ''SUM_CREATED_TMP_DISK_TABLES'',
       `d_end`.`SUM_CREATED_TMP_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_TABLES`, 0) AS ''SUM_CREATED_TMP_TABLES'',
       `d_end`.`SUM_SELECT_FULL_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_JOIN`, 0) AS ''SUM_SELECT_FULL_JOIN'',
       `d_end`.`SUM_SELECT_FULL_RANGE_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_RANGE_JOIN`, 0) AS ''SUM_SELECT_FULL_RANGE_JOIN'',
       `d_end`.`SUM_SELECT_RANGE`-IFNULL(`d_start`.`SUM_SELECT_RANGE`, 0) AS ''SUM_SELECT_RANGE'',
       `d_end`.`SUM_SELECT_RANGE_CHECK`-IFNULL(`d_start`.`SUM_SELECT_RANGE_CHECK`, 0) AS ''SUM_SELECT_RANGE_CHECK'',
       `d_end`.`SUM_SELECT_SCAN`-IFNULL(`d_start`.`SUM_SELECT_SCAN`, 0) AS ''SUM_SELECT_SCAN'',
       `d_end`.`SUM_SORT_MERGE_PASSES`-IFNULL(`d_start`.`SUM_SORT_MERGE_PASSES`, 0) AS ''SUM_SORT_MERGE_PASSES'',
       `d_end`.`SUM_SORT_RANGE`-IFNULL(`d_start`.`SUM_SORT_RANGE`, 0) AS ''SUM_SORT_RANGE'',
       `d_end`.`SUM_SORT_ROWS`-IFNULL(`d_start`.`SUM_SORT_ROWS`, 0) AS ''SUM_SORT_ROWS'',
       `d_end`.`SUM_SORT_SCAN`-IFNULL(`d_start`.`SUM_SORT_SCAN`, 0) AS ''SUM_SORT_SCAN'',
       `d_end`.`SUM_NO_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_INDEX_USED`, 0) AS ''SUM_NO_INDEX_USED'',
       `d_end`.`SUM_NO_GOOD_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_GOOD_INDEX_USED`, 0) AS ''SUM_NO_GOOD_INDEX_USED'',
       `d_end`.`SUM_CPU_TIME`-IFNULL(`d_start`.`SUM_CPU_TIME`, 0) AS ''SUM_CPU_TIME'',
       `d_end`.`MAX_CONTROLLED_MEMORY` AS ''MAX_CONTROLLED_MEMORY'',
       `d_end`.`MAX_TOTAL_MEMORY` AS ''MAX_TOTAL_MEMORY'',
       `d_end`.`COUNT_SECONDARY`-IFNULL(`d_start`.`COUNT_SECONDARY`, 0) AS ''COUNT_SECONDARY'',
       `d_end`.`FIRST_SEEN`,
       `d_end`.`LAST_SEEN`,
       `d_end`.`QUANTILE_95`,
       `d_end`.`QUANTILE_99`,
       `d_end`.`QUANTILE_999`,
       `d_end`.`QUERY_SAMPLE_TEXT`,
       `d_end`.`QUERY_SAMPLE_SEEN`,
       `d_end`.`QUERY_SAMPLE_TIMER_WAIT`
  FROM tmp_digests d_end
       LEFT OUTER JOIN ', v_quoted_table, ' d_start ON `d_start`.`DIGEST` = `d_end`.`DIGEST`
                                                    AND (`d_start`.`SCHEMA_NAME` = `d_end`.`SCHEMA_NAME`
                                                          OR (`d_start`.`SCHEMA_NAME` IS NULL AND `d_end`.`SCHEMA_NAME` IS NULL)
                                                        )
 WHERE `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) > 0');
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_runtimes_in_95th_percentile', in_views)) THEN
            SELECT 'Queries with Runtime in 95th Percentile' AS 'Next Output';
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution1;
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution2;
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_95th_percentile_by_avg_us;
            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution1 (
              cnt bigint unsigned NOT NULL,
              avg_us decimal(21,0) NOT NULL,
              PRIMARY KEY (avg_us)
            ) ENGINE=InnoDB;
            SET v_sql = CONCAT('INSERT INTO tmp_digest_avg_latency_distribution1
SELECT COUNT(*) cnt,
       ROUND(avg_timer_wait/1000000) AS avg_us
  FROM ', v_digests_table, '
 GROUP BY avg_us');
            CALL sys.execute_prepared_stmt(v_sql);
            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution2 LIKE tmp_digest_avg_latency_distribution1;
            INSERT INTO tmp_digest_avg_latency_distribution2 SELECT * FROM tmp_digest_avg_latency_distribution1;
            CREATE TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us (
              avg_us decimal(21,0) NOT NULL,
              percentile decimal(46,4) NOT NULL,
              PRIMARY KEY (avg_us)
            ) ENGINE=InnoDB;
            SET v_sql = CONCAT('INSERT INTO tmp_digest_95th_percentile_by_avg_us
SELECT s2.avg_us avg_us,
       IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM ', v_digests_table, '), 0), 0) percentile
  FROM tmp_digest_avg_latency_distribution1 AS s1
       JOIN tmp_digest_avg_latency_distribution2 AS s2 ON s1.avg_us <= s2.avg_us
 GROUP BY s2.avg_us
HAVING percentile > 0.95
 ORDER BY percentile
 LIMIT 1');
            CALL sys.execute_prepared_stmt(v_sql);
            SET v_sql =
                REPLACE(
                    REPLACE(
                        (SELECT VIEW_DEFINITION
                           FROM information_schema.VIEWS
                          WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_runtimes_in_95th_percentile'
                        ),
                        '`performance_schema`.`events_statements_summary_by_digest`',
                        v_digests_table
                    ),
                    'sys.x$ps_digest_95th_percentile_by_avg_us',
                    '`sys`.`x$ps_digest_95th_percentile_by_avg_us`'
              );
            CALL sys.execute_prepared_stmt(v_sql);
            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution1;
            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution2;
            DROP TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us;
        END IF;
        IF (FIND_IN_SET('analysis', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Ordered by Total Latency') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statement_analysis'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_errors_or_warnings', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Errors') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_errors_or_warnings'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_full_table_scans', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Full Table Scan') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_full_table_scans'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_sorting', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Sorting') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_sorting'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_temp_tables', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Internal Temporary Tables') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_temp_tables'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('custom', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Using Custom View') AS 'Next Output';
            IF (@sys.statement_performance_analyzer.view IS NULL) THEN
                SET @sys.statement_performance_analyzer.view = sys.sys_get_config('statement_performance_analyzer.view', NULL);
            END IF;
            IF (@sys.statement_performance_analyzer.view IS NULL) THEN
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable must be set with the view or query to use.';
            END IF;
            IF (NOT INSTR(@sys.statement_performance_analyzer.view, ' ')) THEN
                -- No spaces, so can't be a query
                IF (NOT INSTR(@sys.statement_performance_analyzer.view, '.')) THEN
                    -- No . in the table name - use current database
                    -- DATABASE() will be the database of the procedure
                    SET v_custom_db   = DATABASE(),
                        v_custom_name = @sys.statement_performance_analyzer.view;
                ELSE
                    SET v_custom_db   = SUBSTRING_INDEX(@sys.statement_performance_analyzer.view, '.', 1);
                    SET v_custom_name = SUBSTRING(@sys.statement_performance_analyzer.view, CHAR_LENGTH(v_custom_db)+2);
                END IF;
                CALL sys.table_exists(v_custom_db, v_custom_name, v_custom_view_exists);
                IF (v_custom_view_exists <> 'VIEW') THEN
                    SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable is set but specified neither an existing view nor a query.';
                END IF;
                SET v_sql =
                    REPLACE(
                        (SELECT VIEW_DEFINITION
                           FROM information_schema.VIEWS
                          WHERE TABLE_SCHEMA = v_custom_db AND TABLE_NAME = v_custom_name
                        ),
                        '`performance_schema`.`events_statements_summary_by_digest`',
                        v_digests_table
                    );
            ELSE
                SET v_sql = REPLACE(@sys.statement_performance_analyzer.view, '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table);
            END IF;
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
    END IF;
    -- Restore INSTRUMENTED for this thread
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    IF ((@log_bin = 1) AND (@@binlog_format = 'STATEMENT')) THEN
        SET sql_log_bin = @log_bin;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_exists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `table_exists`(
        IN in_db VARCHAR(64), IN in_table VARCHAR(64),
        OUT out_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY')
    )
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTests whether the table specified in in_db and in_table exists either as a regular\ntable, or as a temporary table. The returned value corresponds to the table that\nwill be used, so if there''s both a temporary and a permanent table with the given\nname, then ''TEMPORARY'' will be returned.\n\nParameters\n-----------\n\nin_db (VARCHAR(64)):\n  The database name to check for the existance of the table in.\n\nin_table (VARCHAR(64)):\n  The name of the table to check the existance of.\n\nout_exists ENUM('''', ''BASE TABLE'', ''VIEW'', ''TEMPORARY''):\n  The return value: whether the table exists. The value is one of:\n    * ''''           - the table does not exist neither as a base table, view, nor temporary table.\n    * ''BASE TABLE'' - the table name exists as a permanent base table table.\n    * ''VIEW''       - the table name exists as a view.\n    * ''TEMPORARY''  - the table name exists as a temporary table.\n\nExample\n--------\n\nmysql> CREATE DATABASE db1;\nQuery OK, 1 row affected (0.07 sec)\n\nmysql> use db1;\nDatabase changed\nmysql> CREATE TABLE t1 (id INT PRIMARY KEY);\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> CREATE TABLE t2 (id INT PRIMARY KEY);\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> CREATE view v_t1 AS SELECT * FROM t1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CREATE TEMPORARY TABLE t1 (id INT PRIMARY KEY);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL sys.table_exists(''db1'', ''t1'', @exists); SELECT @exists;\nQuery OK, 0 rows affected (0.00 sec)\n\n+------------+\n| @exists    |\n+------------+\n| TEMPORARY  |\n+------------+\n1 row in set (0.00 sec)\n\nmysql> CALL sys.table_exists(''db1'', ''t2'', @exists); SELECT @exists;\nQuery OK, 0 rows affected (0.00 sec)\n\n+------------+\n| @exists    |\n+------------+\n| BASE TABLE |\n+------------+\n1 row in set (0.01 sec)\n\nmysql> CALL sys.table_exists(''db1'', ''v_t1'', @exists); SELECT @exists;\nQuery OK, 0 rows affected (0.00 sec)\n\n+---------+\n| @exists |\n+---------+\n| VIEW    |\n+---------+\n1 row in set (0.00 sec)\n\nmysql> CALL sys.table_exists(''db1'', ''t3'', @exists); SELECT @exists;\nQuery OK, 0 rows affected (0.01 sec)\n\n+---------+\n| @exists |\n+---------+\n|         |\n+---------+\n1 row in set (0.00 sec)\n'
BEGIN
    DECLARE v_error BOOLEAN DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR 1050 SET v_error = TRUE;
    DECLARE CONTINUE HANDLER FOR 1146 SET v_error = TRUE;
    SET out_exists = '';
    -- Verify whether the table name exists as a normal table
    IF (EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table)) THEN
        -- Unfortunately the only way to determine whether there is also a temporary table is to try to create
        -- a temporary table with the same name. If it succeeds the table didn't exist as a temporary table.
        SET @sys.tmp.table_exists.SQL = CONCAT('CREATE TEMPORARY TABLE `', in_db, '`.`', in_table, '` (id INT PRIMARY KEY)');
        PREPARE stmt_create_table FROM @sys.tmp.table_exists.SQL;
        EXECUTE stmt_create_table;
        DEALLOCATE PREPARE stmt_create_table;
        IF (v_error) THEN
            SET out_exists = 'TEMPORARY';
        ELSE
            -- The temporary table was created, i.e. it didn't exist. Remove it again so we don't leave garbage around.
            SET @sys.tmp.table_exists.SQL = CONCAT('DROP TEMPORARY TABLE `', in_db, '`.`', in_table, '`');
            PREPARE stmt_drop_table FROM @sys.tmp.table_exists.SQL;
            EXECUTE stmt_drop_table;
            DEALLOCATE PREPARE stmt_drop_table;
            SET out_exists = (SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table);
        END IF;
    ELSE
        -- Check whether a temporary table exists with the same name.
        -- If it does it's possible to SELECT from the table without causing an error.
        -- If it does not exist even a PREPARE using the table will fail.
        SET @sys.tmp.table_exists.SQL = CONCAT('SELECT COUNT(*) FROM `', in_db, '`.`', in_table, '`');
        PREPARE stmt_select FROM @sys.tmp.table_exists.SQL;
        IF (NOT v_error) THEN
            DEALLOCATE PREPARE stmt_select;
            SET out_exists = 'TEMPORARY';
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,format_bytes((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,format_bytes((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,format_pico_time(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,format_bytes(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` (`total_allocated`) AS select format_bytes(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` (`Variable_name`,`Variable_value`,`Type`,`Enabled`) AS select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status` union all select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` union all select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,format_pico_time(`esc`.`LOCK_TIME`) AS `lock_latency`,format_pico_time(`esc`.`CPU_TIME`) AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,format_bytes(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',convert(format_pico_time(`ewc`.`TIMER_WAIT`) using utf8mb4)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,format_pico_time(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` (`variable_name`,`variable_value`) AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` (`table_schema`,`table_name`,`column_name`,`data_type`,`column_type`,`is_signed`,`is_unsigned`,`max_value`,`auto_increment`,`auto_increment_ratio`) AS select `information_schema`.`columns`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`columns`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`columns`.`COLUMN_NAME` AS `COLUMN_NAME`,`information_schema`.`columns`.`DATA_TYPE` AS `DATA_TYPE`,`information_schema`.`columns`.`COLUMN_TYPE` AS `COLUMN_TYPE`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`tables`.`AUTO_INCREMENT` AS `AUTO_INCREMENT`,(`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`COLUMNS` join `information_schema`.`TABLES` on(((`information_schema`.`columns`.`TABLE_SCHEMA` = `information_schema`.`tables`.`TABLE_SCHEMA`) and (`information_schema`.`columns`.`TABLE_NAME` = `information_schema`.`tables`.`TABLE_NAME`)))) where ((`information_schema`.`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`columns`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` (`db`,`object_type`,`count`) AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`ROUTINES` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`TABLES` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`STATISTICS` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`TRIGGERS` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`EVENTS` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` (`table_schema`,`table_name`,`redundant_index_name`,`redundant_index_columns`,`redundant_index_non_unique`,`dominant_index_name`,`dominant_index_columns`,`dominant_index_non_unique`,`subpart_exists`,`sql_drop_index`) AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(((0 <> `redundant_keys`.`subpart_exists`) or (0 <> `dominant_keys`.`subpart_exists`)),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`x$schema_flattened_keys` `redundant_keys` join `x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,format_pico_time(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,format_bytes(`ibp`.`allocated`) AS `innodb_buffer_allocated`,format_bytes(`ibp`.`data`) AS `innodb_buffer_data`,format_bytes((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` (`object_schema`,`object_name`,`index_name`) AS select `t`.`OBJECT_SCHEMA` AS `object_schema`,`t`.`OBJECT_NAME` AS `object_name`,`t`.`INDEX_NAME` AS `index_name` from (`performance_schema`.`table_io_waits_summary_by_index_usage` `t` join `information_schema`.`STATISTICS` `s` on(((`t`.`OBJECT_SCHEMA` = `information_schema`.`s`.`TABLE_SCHEMA`) and (`t`.`OBJECT_NAME` = `information_schema`.`s`.`TABLE_NAME`) and (`t`.`INDEX_NAME` = `information_schema`.`s`.`INDEX_NAME`)))) where ((`t`.`INDEX_NAME` is not null) and (`t`.`COUNT_STAR` = 0) and (`t`.`OBJECT_SCHEMA` <> 'mysql') and (`t`.`INDEX_NAME` <> 'PRIMARY') and (`information_schema`.`s`.`NON_UNIQUE` = 1) and (`information_schema`.`s`.`SEQ_IN_INDEX` = 1)) order by `t`.`OBJECT_SCHEMA`,`t`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`execution_engine` AS `execution_engine`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`cpu_latency` AS `cpu_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` (`thread_id`,`ssl_version`,`ssl_cipher`,`ssl_sessions_reused`) AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY`) AS `max_controlled_memory`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY`) AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` (`sys_version`,`mysql_version`) AS select '2.1.2' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` (`total_allocated`) AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`CPU_TIME` AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` (`avg_us`,`percentile`) AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`x$ps_digest_avg_latency_distribution` `s1` join `x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` (`cnt`,`avg_us`) AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` (`table_schema`,`table_name`,`count_read`,`sum_number_of_bytes_read`,`sum_timer_read`,`count_write`,`sum_number_of_bytes_write`,`sum_timer_write`,`count_misc`,`sum_timer_misc`) AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` (`table_schema`,`table_name`,`index_name`,`non_unique`,`subpart_exists`,`index_columns`) AS select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` AS `INDEX_NAME`,max(`information_schema`.`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if((`information_schema`.`statistics`.`SUB_PART` is null),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`statistics`.`COLUMN_NAME` order by `information_schema`.`statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`STATISTICS` where ((`information_schema`.`statistics`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`execution_engine` AS `execution_engine`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`cpu_latency` AS `cpu_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`exec_secondary_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_SECONDARY` AS `exec_secondary_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY` AS `max_controlled_memory`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY` AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-14 23:16:49
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: emr
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `allergies`
--

DROP TABLE IF EXISTS `allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergies` (
  `allergyid` bigint NOT NULL,
  `allergy` varchar(2000) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `indications` varchar(8000) DEFAULT NULL,
  `severity` bigint DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `allergymaster` double DEFAULT NULL,
  PRIMARY KEY (`allergyid`),
  KEY `FKd0n3eo946qr8fnlhgu846rgl4` (`severity`),
  CONSTRAINT `FKd0n3eo946qr8fnlhgu846rgl4` FOREIGN KEY (`severity`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergies`
--

LOCK TABLES `allergies` WRITE;
/*!40000 ALTER TABLE `allergies` DISABLE KEYS */;
INSERT INTO `allergies` VALUES (1,'asdasd',1,'asdasd',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'zxczxc',1,'zxczxc',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'zxczxc',1,'zxczxc',14,603,152,NULL,NULL,NULL,NULL,NULL),(53,'asd',1,'asd',15,652,152,NULL,NULL,NULL,NULL,NULL),(102,'asdasd',1,'asd',15,702,452,NULL,NULL,NULL,NULL,NULL),(103,'Allergy1',1,'sdssdf',15,752,502,NULL,NULL,NULL,NULL,NULL),(152,'Alleri',1,'',14,1102,552,1,'2024-03-25 20:46:52.500000',1,NULL,NULL),(202,'Alergy test1-edited',1,'ss',15,1202,503,NULL,'2024-05-21 13:40:16.392000',1,NULL,2),(252,'Test allergy-1',2,'ee',14,1302,503,NULL,'2024-05-21 13:36:53.304000',1,NULL,1),(302,'Test allergy-1',1,'Hand',14,1302,503,1,'2024-05-21 10:16:46.461000',1,NULL,1),(352,'Test allergy-1',1,'Test12',14,1402,53,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergies_seq`
--

DROP TABLE IF EXISTS `allergies_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergies_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergies_seq`
--

LOCK TABLES `allergies_seq` WRITE;
/*!40000 ALTER TABLE `allergies_seq` DISABLE KEYS */;
INSERT INTO `allergies_seq` VALUES (451);
/*!40000 ALTER TABLE `allergies_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergiesmaster`
--

DROP TABLE IF EXISTS `allergiesmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergiesmaster` (
  `allergyid` bigint NOT NULL,
  `allergyname` varchar(100) DEFAULT NULL,
  `allergycode` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `allergytype` bigint DEFAULT NULL,
  PRIMARY KEY (`allergyid`),
  KEY `FKg6bthoke0qcyfabftfx9e21y4` (`allergytype`),
  CONSTRAINT `FKg6bthoke0qcyfabftfx9e21y4` FOREIGN KEY (`allergytype`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergiesmaster`
--

LOCK TABLES `allergiesmaster` WRITE;
/*!40000 ALTER TABLE `allergiesmaster` DISABLE KEYS */;
INSERT INTO `allergiesmaster` VALUES (1,'Test allergy-1','A001',1,17),(2,'Alergy test1-edited','A002',1,18);
/*!40000 ALTER TABLE `allergiesmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergiesmaster_seq`
--

DROP TABLE IF EXISTS `allergiesmaster_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergiesmaster_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergiesmaster_seq`
--

LOCK TABLES `allergiesmaster_seq` WRITE;
/*!40000 ALTER TABLE `allergiesmaster_seq` DISABLE KEYS */;
INSERT INTO `allergiesmaster_seq` VALUES (101);
/*!40000 ALTER TABLE `allergiesmaster_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_sequence_generator`
--

DROP TABLE IF EXISTS `bill_sequence_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_sequence_generator` (
  `BILL_SEQ_GEN_ID` bigint NOT NULL,
  `SEQUENCE_NUMBER` bigint NOT NULL,
  PRIMARY KEY (`BILL_SEQ_GEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_sequence_generator`
--

LOCK TABLES `bill_sequence_generator` WRITE;
/*!40000 ALTER TABLE `bill_sequence_generator` DISABLE KEYS */;
INSERT INTO `bill_sequence_generator` VALUES (1,1);
/*!40000 ALTER TABLE `bill_sequence_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `cityid` bigint NOT NULL,
  `cityname` varchar(45) DEFAULT NULL,
  `citycode` varchar(45) DEFAULT NULL,
  `stateid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'City1','CT1',1,1);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_seq`
--

DROP TABLE IF EXISTS `cities_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_seq`
--

LOCK TABLES `cities_seq` WRITE;
/*!40000 ALTER TABLE `cities_seq` DISABLE KEYS */;
INSERT INTO `cities_seq` VALUES (1);
/*!40000 ALTER TABLE `cities_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `countryid` bigint NOT NULL,
  `countryname` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `countrycode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'INDIA',1,'IND');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_seq`
--

DROP TABLE IF EXISTS `countries_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_seq`
--

LOCK TABLES `countries_seq` WRITE;
/*!40000 ALTER TABLE `countries_seq` DISABLE KEYS */;
INSERT INTO `countries_seq` VALUES (1);
/*!40000 ALTER TABLE `countries_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosismaster`
--

DROP TABLE IF EXISTS `diagnosismaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosismaster` (
  `dignosisid` double NOT NULL,
  `dignosisname` varchar(150) DEFAULT NULL,
  `dignosiscode` varchar(150) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `dignosiscodeset` double DEFAULT NULL,
  PRIMARY KEY (`dignosisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosismaster`
--

LOCK TABLES `diagnosismaster` WRITE;
/*!40000 ALTER TABLE `diagnosismaster` DISABLE KEYS */;
INSERT INTO `diagnosismaster` VALUES (252,'Dia','D001',1,20),(302,NULL,NULL,1,20),(303,NULL,NULL,1,20),(304,'Do8','D006',1,20),(305,'D08','D007',1,20);
/*!40000 ALTER TABLE `diagnosismaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosismaster_seq`
--

DROP TABLE IF EXISTS `diagnosismaster_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosismaster_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosismaster_seq`
--

LOCK TABLES `diagnosismaster_seq` WRITE;
/*!40000 ALTER TABLE `diagnosismaster_seq` DISABLE KEYS */;
INSERT INTO `diagnosismaster_seq` VALUES (401);
/*!40000 ALTER TABLE `diagnosismaster_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs_list`
--

DROP TABLE IF EXISTS `drugs_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs_list` (
  `drugid` bigint NOT NULL,
  `drugname` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `drugcode` varchar(45) DEFAULT NULL,
  `drugdose` varchar(255) DEFAULT NULL,
  `drugalert` bigint DEFAULT NULL,
  `drugform` bigint DEFAULT NULL,
  `drugtype` bigint DEFAULT NULL,
  `drugunit` bigint DEFAULT NULL,
  PRIMARY KEY (`drugid`),
  UNIQUE KEY `UK_jebrmj33bf1r8yqk08s6b4wvs` (`drugalert`),
  UNIQUE KEY `UK_sfbpvwjrvss7exafhyajvsxla` (`drugform`),
  UNIQUE KEY `UK_pg3itdwulhq9sq3eq1e6uqhdw` (`drugtype`),
  UNIQUE KEY `UK_qeo7jrrq0o3dw4oc63jsfocbk` (`drugunit`),
  CONSTRAINT `FK4nt3fi885k845dsx5i1cw0ur9` FOREIGN KEY (`drugform`) REFERENCES `masterdata` (`id`),
  CONSTRAINT `FKbfjyihvshfgf162pmx6s6ps5i` FOREIGN KEY (`drugtype`) REFERENCES `masterdata` (`id`),
  CONSTRAINT `FKcc3pq9xyhgaolluy3ghuo7yut` FOREIGN KEY (`drugalert`) REFERENCES `masterdata` (`id`),
  CONSTRAINT `FKf4btclj6eskfjr8fejrhdq06y` FOREIGN KEY (`drugunit`) REFERENCES `masterdata` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs_list`
--

LOCK TABLES `drugs_list` WRITE;
/*!40000 ALTER TABLE `drugs_list` DISABLE KEYS */;
INSERT INTO `drugs_list` VALUES (1,'Druug_1',1,'D001',NULL,NULL,NULL,NULL,NULL),(2,'Druug_2',1,'D002',NULL,NULL,NULL,NULL,NULL),(3,'Druug_3',1,'D003',NULL,NULL,NULL,NULL,NULL),(4,'Dolo',1,'D12',NULL,NULL,NULL,NULL,NULL),(52,'Drug Brand test',1,'D00123',NULL,NULL,NULL,NULL,NULL),(53,'Generic Med 1',1,'G0012','11',11,18,10,NULL);
/*!40000 ALTER TABLE `drugs_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs_list_seq`
--

DROP TABLE IF EXISTS `drugs_list_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs_list_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs_list_seq`
--

LOCK TABLES `drugs_list_seq` WRITE;
/*!40000 ALTER TABLE `drugs_list_seq` DISABLE KEYS */;
INSERT INTO `drugs_list_seq` VALUES (151);
/*!40000 ALTER TABLE `drugs_list_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `id` bigint NOT NULL,
  `empid` int DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `designation` bigint DEFAULT NULL,
  `gender` bigint DEFAULT NULL,
  `title` bigint DEFAULT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `role` bigint DEFAULT NULL,
  `age` int DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `mobilenumber` varchar(45) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrjv8jc8d49tnsshk3qfha4sid` (`designation`),
  KEY `FKnu4pyxe4lbn4x257lq20du7wt` (`gender`),
  KEY `FKg0tqgh48ukndxpgify34004pf` (`role`),
  KEY `FKgup3w2insawp2p4nywkmdjbf4` (`title`),
  CONSTRAINT `FKg0tqgh48ukndxpgify34004pf` FOREIGN KEY (`role`) REFERENCES `masterdata` (`id`),
  CONSTRAINT `FKgup3w2insawp2p4nywkmdjbf4` FOREIGN KEY (`title`) REFERENCES `lookup` (`lookupid`),
  CONSTRAINT `FKnu4pyxe4lbn4x257lq20du7wt` FOREIGN KEY (`gender`) REFERENCES `lookup` (`lookupid`),
  CONSTRAINT `FKrjv8jc8d49tnsshk3qfha4sid` FOREIGN KEY (`designation`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,1,'Sandeep','Mandalapu',1,1,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Ram','Varanasi',1,1,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'testuser','lname',4,1,NULL,'$2a$10$9kYDbY2PLjp8d.R9JuwbNuyVZfMGrtqQ7x5K1MpUrvIGulbESCiZC','testuser',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,NULL,'fsfs','sjhs',4,1,NULL,'$2a$10$eAy2qRz1NXeOGCC.qw4qBuwZS2Ye3T46CoJz2N8Z1aoNkHiacMZky','testuser2',6,21,'2023-11-28 08:00:00','san@gmail.com','90321',NULL,NULL,NULL,NULL),(252,NULL,'Shiva','S',4,1,NULL,'$2a$10$MBMqFy5J58wgXw1o7DYnpe9MbG7sChkk6Zrw9/Kkj/V7NMj3JZD8G','shiva',7,27,'2024-01-01 08:00:00','sa@gmail.com','2121212121',NULL,NULL,NULL,NULL),(302,NULL,'Sandeep','Mandalapu',4,1,NULL,'$2a$10$jblrjdI7g92ul/1/xtEUxefwqd5xNRvkDYwaQH38HZp3xqqezsFcC','sandeep535',7,31,'2024-01-29 08:00:00','sa@gmail.com','9032151096',1,'2024-02-15 16:44:32.117000',1,NULL),(352,NULL,'testuser','user',4,1,NULL,'$2a$10$sk.gI0asn6iRDsFRFj8ICupQRwCsVSlESW9FmRUm4HBWE1Ei0dA56','testuser2',7,0,'2024-02-27 08:00:00','sand@gmail.com','9032151096',1,'2024-03-03 12:45:05.666000',1,NULL),(402,NULL,'Admin','Test',4,1,NULL,'$2a$10$YtT/vm8JmQLEZsymGM8rne09Vez44dncnlOm1aA6iRdrlNMY0W0K6','admintest',6,0,'2024-02-27 08:00:00','abc@gmail.com','121211',1,'2024-03-06 13:34:02.857000',1,NULL),(403,NULL,'Nurse','Test',4,1,NULL,'$2a$10$TpVaNOw.4Xqtl7OLMRrApOHYswaE5Bg85K654f/Wzq6z4.yzRERYK','nursetest',8,0,'2024-02-27 08:00:00','abc@gmail.com','21211',1,'2024-03-06 13:34:21.003000',1,NULL),(404,NULL,'Doctor','Test',4,1,NULL,'$2a$10$rn9UBa7IxkCBttsQj2vaY.LE0KNCiBIZVi9MAaTg0PkoAgRhfh5Mm','doctortest',7,0,'2024-03-01 08:00:00','ab@gmail.com','123213',1,'2024-03-06 13:35:10.381000',1,NULL);
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_details_seq`
--

DROP TABLE IF EXISTS `employee_details_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details_seq`
--

LOCK TABLES `employee_details_seq` WRITE;
/*!40000 ALTER TABLE `employee_details_seq` DISABLE KEYS */;
INSERT INTO `employee_details_seq` VALUES (501);
/*!40000 ALTER TABLE `employee_details_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_address`
--

DROP TABLE IF EXISTS `emr_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_address` (
  `addressid` bigint NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` bigint DEFAULT NULL,
  `country` bigint DEFAULT NULL,
  `state` bigint DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  PRIMARY KEY (`addressid`),
  KEY `FKnrjoviehacjp6a6si9rlkfkuc` (`city`),
  KEY `FKidnaok8ooc9ajllvp3bldg6e9` (`country`),
  KEY `FK6vnr92wv7ji9kpttwki0g5mdw` (`state`),
  CONSTRAINT `FK6vnr92wv7ji9kpttwki0g5mdw` FOREIGN KEY (`state`) REFERENCES `states` (`stateid`),
  CONSTRAINT `FKidnaok8ooc9ajllvp3bldg6e9` FOREIGN KEY (`country`) REFERENCES `countries` (`countryid`),
  CONSTRAINT `FKnrjoviehacjp6a6si9rlkfkuc` FOREIGN KEY (`city`) REFERENCES `cities` (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_address`
--

LOCK TABLES `emr_address` WRITE;
/*!40000 ALTER TABLE `emr_address` DISABLE KEYS */;
INSERT INTO `emr_address` VALUES (53,'add1','add2',1,1,1,12131),(102,'add1','add3',1,1,1,12345),(152,'add2','add3',1,1,1,1121);
/*!40000 ALTER TABLE `emr_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_address_seq`
--

DROP TABLE IF EXISTS `emr_address_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_address_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_address_seq`
--

LOCK TABLES `emr_address_seq` WRITE;
/*!40000 ALTER TABLE `emr_address_seq` DISABLE KEYS */;
INSERT INTO `emr_address_seq` VALUES (251);
/*!40000 ALTER TABLE `emr_address_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_diagnosis`
--

DROP TABLE IF EXISTS `emr_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_diagnosis` (
  `diagnosisid` bigint NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`diagnosisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_diagnosis`
--

LOCK TABLES `emr_diagnosis` WRITE;
/*!40000 ALTER TABLE `emr_diagnosis` DISABLE KEYS */;
INSERT INTO `emr_diagnosis` VALUES (1,NULL,102,302,1,NULL,NULL,NULL,NULL),(2,'dmk',53,402,1,NULL,NULL,NULL,NULL),(52,'Notes checking updated',53,452,1,NULL,NULL,NULL,NULL),(352,'Diagonis',53,502,1,NULL,NULL,NULL,NULL),(402,'Headache',53,553,1,NULL,NULL,NULL,NULL),(452,'fgdfg',53,503,1,NULL,NULL,NULL,NULL),(502,'dsvsdv',53,602,1,NULL,NULL,NULL,NULL),(503,'dfsdf',152,603,1,NULL,NULL,NULL,NULL),(552,'xcx',152,652,1,NULL,NULL,NULL,NULL),(602,'Dia notes sdsd',452,702,1,NULL,NULL,NULL,NULL),(603,'sdvsdv',502,752,1,NULL,NULL,NULL,NULL),(652,'test',552,1102,1,1,'2024-03-25 20:46:52.435000',1,NULL),(702,'ss',503,1202,1,1,'2024-05-14 18:46:15.239000',1,NULL),(752,'Updated Diagnosis',53,1402,1,NULL,'2024-06-19 15:19:43.407000',1,NULL),(802,'Test Dia',552,1452,1,NULL,'2024-06-21 19:47:52.781000',1,NULL);
/*!40000 ALTER TABLE `emr_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_diagnosis_seq`
--

DROP TABLE IF EXISTS `emr_diagnosis_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_diagnosis_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_diagnosis_seq`
--

LOCK TABLES `emr_diagnosis_seq` WRITE;
/*!40000 ALTER TABLE `emr_diagnosis_seq` DISABLE KEYS */;
INSERT INTO `emr_diagnosis_seq` VALUES (901);
/*!40000 ALTER TABLE `emr_diagnosis_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_notes`
--

DROP TABLE IF EXISTS `emr_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_notes` (
  `notesid` bigint NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_notes`
--

LOCK TABLES `emr_notes` WRITE;
/*!40000 ALTER TABLE `emr_notes` DISABLE KEYS */;
INSERT INTO `emr_notes` VALUES (1,NULL,302,102,1,NULL,NULL,NULL,NULL),(2,'kdvnv',402,53,1,NULL,NULL,NULL,NULL),(52,'General notes updated',452,53,1,NULL,NULL,NULL,NULL),(152,'General notes',502,53,1,NULL,NULL,NULL,NULL),(202,'The patient is suffering from headache',553,53,1,NULL,NULL,NULL,NULL),(252,'dfgdfg',503,53,1,NULL,NULL,NULL,NULL),(302,'sdcsdc',602,53,1,NULL,NULL,NULL,NULL),(303,'sdsds',603,152,1,NULL,NULL,NULL,NULL),(352,'sd',652,152,1,NULL,NULL,NULL,NULL),(402,'gENRAL NOTES',702,452,1,NULL,NULL,NULL,NULL),(403,'ssdfsdfsd',752,502,1,NULL,NULL,NULL,NULL),(452,'checkinh',1102,552,1,1,'2024-03-25 20:46:52.406000',1,NULL),(502,'ss',1202,503,1,1,'2024-05-14 18:46:15.226000',1,NULL),(552,'Updated General notes',1402,53,1,NULL,'2024-06-19 15:19:43.407000',1,NULL),(602,'Test Dia',1452,552,1,NULL,'2024-06-21 19:47:52.781000',1,NULL);
/*!40000 ALTER TABLE `emr_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_notes_seq`
--

DROP TABLE IF EXISTS `emr_notes_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_notes_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_notes_seq`
--

LOCK TABLES `emr_notes_seq` WRITE;
/*!40000 ALTER TABLE `emr_notes_seq` DISABLE KEYS */;
INSERT INTO `emr_notes_seq` VALUES (701);
/*!40000 ALTER TABLE `emr_notes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_prescriptions`
--

DROP TABLE IF EXISTS `emr_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_prescriptions` (
  `prescriptionid` bigint NOT NULL,
  `drugid` bigint DEFAULT NULL,
  `dose` varchar(45) DEFAULT NULL,
  `doseunit` varchar(30) DEFAULT NULL,
  `sig` varchar(100) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `instructions` varchar(8000) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `capturedby` bigint DEFAULT NULL,
  `drugname` varchar(200) DEFAULT NULL,
  `endate` datetime DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`prescriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_prescriptions`
--

LOCK TABLES `emr_prescriptions` WRITE;
/*!40000 ALTER TABLE `emr_prescriptions` DISABLE KEYS */;
INSERT INTO `emr_prescriptions` VALUES (1,1,'1','MG','sdlk','2023-12-14 00:00:00','',1,302,102,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'100','mg','Oral 2 times daily','2023-12-25 00:00:00','instructions added',1,402,53,1,NULL,'2023-12-29 00:00:00',NULL,NULL,NULL,NULL),(52,1,'20','mg','Oral daily once','2023-08-12 00:00:00','Instructions',1,452,53,1,NULL,'2023-08-12 00:00:00',NULL,NULL,NULL,NULL),(102,2,'23','mg','sass','2024-01-03 00:00:00','ss',1,452,53,1,NULL,'2024-01-13 00:00:00',NULL,NULL,NULL,NULL),(152,3,'25','mh','sdasd','2024-01-03 00:00:00','zczxczxc',1,452,53,1,NULL,'2024-01-19 00:00:00',NULL,NULL,NULL,NULL),(202,1,'100','mg','nsdjsnd','2024-01-01 00:00:00','xcxc',1,502,53,1,NULL,'2024-01-26 00:00:00',NULL,NULL,NULL,NULL),(252,1,'100','mg','Oral three times day','2024-01-06 00:00:00','take before meals',1,553,53,1,NULL,'2024-01-13 00:00:00',NULL,NULL,NULL,NULL),(302,1,'23','mg','sdfsdf','2024-01-02 00:00:00','fgdfg',1,503,53,1,NULL,'2024-01-23 00:00:00',NULL,NULL,NULL,NULL),(352,2,'231','mg','dsfs','2024-01-02 00:00:00','sdfsdfsd',1,503,53,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(402,2,'111','sd','sadasd','2024-01-15 00:00:00',NULL,1,602,53,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(403,1,'11','ng','sdsdf','2024-01-03 00:00:00','zczxc',1,603,152,1,NULL,'2024-01-05 00:00:00',NULL,NULL,NULL,NULL),(452,3,'22','ad','sad','2024-01-02 00:00:00','zxczxc',1,652,152,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(502,1,'11','f','asd','2024-01-01 00:00:00','sdas',1,702,452,1,'Druug_1','2024-01-25 00:00:00',NULL,NULL,NULL,NULL),(503,1,'11','mg','sdnd sjkdn','2024-01-02 00:00:00',NULL,1,752,502,1,'Druug_1','2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(552,1,'1','mg','morining','2024-03-17 00:00:00','ss',1,1102,552,1,'Druug_1','2024-03-29 00:00:00',1,'2024-03-25 20:46:52.468000',1,NULL),(602,1,'1',NULL,NULL,'2024-05-01 00:00:00','ss',1,1202,503,1,'Druug_1','2024-05-17 00:00:00',1,'2024-05-14 18:46:15.258000',1,NULL),(652,52,'11','11','Daily Once At Night','2024-06-11 00:00:00','After Lunch',1,1402,53,1,'Drug Brand test','2024-06-28 00:00:00',1,'2024-06-19 15:19:43.406000',1,NULL),(702,52,'1','mg','11','2024-06-18 00:00:00','sss',1,1452,552,1,'Drug Brand test','2024-06-29 00:00:00',NULL,'2024-06-21 19:47:52.781000',1,NULL),(703,1,'11','Mg','sss',NULL,NULL,1,1452,552,1,'Druug_1',NULL,1,'2024-06-21 19:47:52.781000',1,NULL),(752,3,'20','mg','Daily Night','2024-06-23 00:00:00','Test',1,1502,552,1,'Druug_3','2024-06-25 00:00:00',1,'2024-06-23 15:18:46.068000',1,NULL);
/*!40000 ALTER TABLE `emr_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_prescriptions_seq`
--

DROP TABLE IF EXISTS `emr_prescriptions_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_prescriptions_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_prescriptions_seq`
--

LOCK TABLES `emr_prescriptions_seq` WRITE;
/*!40000 ALTER TABLE `emr_prescriptions_seq` DISABLE KEYS */;
INSERT INTO `emr_prescriptions_seq` VALUES (851);
/*!40000 ALTER TABLE `emr_prescriptions_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_registration`
--

DROP TABLE IF EXISTS `emr_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_registration` (
  `seqid` bigint NOT NULL,
  `age` int DEFAULT NULL,
  `contact` varchar(25) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address` bigint DEFAULT NULL,
  `gender` bigint DEFAULT NULL,
  `title` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `EDITED_BY` bigint DEFAULT NULL,
  PRIMARY KEY (`seqid`),
  KEY `FK5mndx38q3nlgka92s8d4ahjvb` (`address`),
  KEY `FKd2mjxbhfaexa9fpg3n08kgjtq` (`gender`),
  KEY `FKbqae7pwiqpddj8d16qdweqmlw` (`title`),
  CONSTRAINT `FK5mndx38q3nlgka92s8d4ahjvb` FOREIGN KEY (`address`) REFERENCES `emr_address` (`addressid`),
  CONSTRAINT `FKbqae7pwiqpddj8d16qdweqmlw` FOREIGN KEY (`title`) REFERENCES `lookup` (`lookupid`),
  CONSTRAINT `FKd2mjxbhfaexa9fpg3n08kgjtq` FOREIGN KEY (`gender`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_registration`
--

LOCK TABLES `emr_registration` WRITE;
/*!40000 ALTER TABLE `emr_registration` DISABLE KEYS */;
INSERT INTO `emr_registration` VALUES (53,21,'9032151096','2023-11-29','sand@gmail.com','tets2','lanme2',53,1,4,NULL,NULL,NULL,NULL),(102,32,'99891121211','2023-11-26','user@gmail.com','User1','Lname1',NULL,2,4,NULL,NULL,NULL,NULL),(152,23,'1234567890','2023-11-27','man@gmail.com','test','user1',102,1,4,NULL,NULL,NULL,NULL),(202,23,'9876543210','2023-12-13','sa@gmail.com','user','name',152,1,4,NULL,NULL,NULL,NULL),(252,32,'7645678754','2024-01-03','sa@gmail.com','Patient_1','Last Name',NULL,2,5,NULL,NULL,NULL,NULL),(452,23,'8765432101','2024-01-01','sa@gmail.com','Shiva','Samala',NULL,1,4,'2024-01-09 16:49:41.954000',1,NULL,1),(502,45,'9786543427','2024-01-01','sa@gmail.com','Habeeb','test',NULL,1,4,'2024-01-09 21:14:54.464000',1,NULL,1),(503,23,'9032151096','2024-01-02','sa@gmail.com','test','User',NULL,1,4,'2024-01-11 13:45:47.510000',1,NULL,1),(552,0,'9032151096','2024-02-27','','Mar test','User',NULL,1,4,'2024-03-12 13:31:49.972000',1,NULL,1),(553,0,'9848368181','2000-02-27','ramtest@gmail.com','Ram','Test',NULL,1,4,'2024-03-12 21:50:09.081000',1,NULL,1);
/*!40000 ALTER TABLE `emr_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emr_registration_seq`
--

DROP TABLE IF EXISTS `emr_registration_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emr_registration_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emr_registration_seq`
--

LOCK TABLES `emr_registration_seq` WRITE;
/*!40000 ALTER TABLE `emr_registration_seq` DISABLE KEYS */;
INSERT INTO `emr_registration_seq` VALUES (701);
/*!40000 ALTER TABLE `emr_registration_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lookup`
--

DROP TABLE IF EXISTS `lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lookup` (
  `lookupid` bigint NOT NULL,
  `lookupcode` varchar(255) DEFAULT NULL,
  `lookuptype` varchar(255) DEFAULT NULL,
  `lookupvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup`
--

LOCK TABLES `lookup` WRITE;
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;
INSERT INTO `lookup` VALUES (1,'MALE','GENDER','Male'),(2,'FEMALE','GENDER','Female'),(3,'OTHERS','GENDER','Others'),(4,'MR','SALUTATION','Mr'),(5,'MRS','SALUTATION','Mrs'),(6,'MIS','SALUTATION','Mis'),(7,'DR','SALUTATION','DR'),(8,'BABY','SALUTATION','Baby'),(9,'GNMEDICINE','SPECILAITY','Specilaity'),(10,'DENTAIL','SPECILAITY','Dental'),(11,'PHYSCHLOGY','SPECILAITY','Physchlogy'),(12,'GENERAL','VISIT_TYPES','Genral'),(13,'EMR','VISIT_TYPES','Emergency'),(14,'LOW','ALLERGY_SEVERITY','Low'),(15,'MODERATE','ALLERGY_SEVERITY','Moderate'),(16,'LOW','ALLERGY_SEVERITY','Low'),(17,'DRUG','ALLERGY_TYPE','Drug'),(18,'ENVIRONMENT','ALLERGY_TYPE','Environment'),(19,'FOOD','ALLERGY_TYPE','Food'),(20,'ICD10','DIAGNOSISMASTERCODESET','ICD10'),(21,'SNOMED','DIAGNOSISMASTERCODESET','SNOMED');
/*!40000 ALTER TABLE `lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lookup_seq`
--

DROP TABLE IF EXISTS `lookup_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lookup_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup_seq`
--

LOCK TABLES `lookup_seq` WRITE;
/*!40000 ALTER TABLE `lookup_seq` DISABLE KEYS */;
INSERT INTO `lookup_seq` VALUES (1);
/*!40000 ALTER TABLE `lookup_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterdata`
--

DROP TABLE IF EXISTS `masterdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masterdata` (
  `id` bigint NOT NULL,
  `mastercode` varchar(25) DEFAULT NULL,
  `masterdatavalue` varchar(45) DEFAULT NULL,
  `active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterdata`
--

LOCK TABLES `masterdata` WRITE;
/*!40000 ALTER TABLE `masterdata` DISABLE KEYS */;
INSERT INTO `masterdata` VALUES (1,'VISIT_STATUS','Active',1),(2,'VISIT_STATUS','In-active',1),(3,'VISIT_STATUS','Visit Started',1),(4,'VISIT_STATUS','Visit Completed',1),(5,'VISIT_STATUS','Visit Canceled',1),(6,'ROLE','Admin',1),(7,'ROLE','Doctor',1),(8,'ROLE','Nurse',1),(9,'DRUG_TYPE','Brand',1),(10,'DRUG_TYPE','Generic',1),(11,'DRUG_ALERTS','High Alerts',1),(12,'DRUG_ALERTS','Narcotic',1),(13,'DRUG_ALERTS','Psychiatric',1),(14,'DRUG_ALERTS','Life saving',1),(15,'DRUG_ALERTS','Prescription Required',1),(16,'DRUG_ALERTS','Chronic',1),(17,'DRUG_ALERTS','Standard',1),(18,'DRUG_FORM','Tablet',1),(19,'DRUG_FORM','Injection',1),(20,'DRUG_FORM','Cream',1);
/*!40000 ALTER TABLE `masterdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterdata_seq`
--

DROP TABLE IF EXISTS `masterdata_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masterdata_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterdata_seq`
--

LOCK TABLES `masterdata_seq` WRITE;
/*!40000 ALTER TABLE `masterdata_seq` DISABLE KEYS */;
INSERT INTO `masterdata_seq` VALUES (51);
/*!40000 ALTER TABLE `masterdata_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_and_task_response_model`
--

DROP TABLE IF EXISTS `roles_and_task_response_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_and_task_response_model` (
  `taskid` bigint NOT NULL,
  `actioncode` varchar(255) DEFAULT NULL,
  `actionname` varchar(255) DEFAULT NULL,
  `ispermission` int DEFAULT NULL,
  `roleid` bigint DEFAULT NULL,
  `roletaskactionid` bigint DEFAULT NULL,
  `screencode` varchar(255) DEFAULT NULL,
  `screenname` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `defultoption` bit(1) DEFAULT NULL,
  `defaultoptionvalue` bit(1) DEFAULT NULL,
  PRIMARY KEY (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_and_task_response_model`
--

LOCK TABLES `roles_and_task_response_model` WRITE;
/*!40000 ALTER TABLE `roles_and_task_response_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_and_task_response_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolesandtasks_seq`
--

DROP TABLE IF EXISTS `rolesandtasks_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolesandtasks_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolesandtasks_seq`
--

LOCK TABLES `rolesandtasks_seq` WRITE;
/*!40000 ALTER TABLE `rolesandtasks_seq` DISABLE KEYS */;
INSERT INTO `rolesandtasks_seq` VALUES (1);
/*!40000 ALTER TABLE `rolesandtasks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roletaksactions`
--

DROP TABLE IF EXISTS `roletaksactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roletaksactions` (
  `roletaskactionid` bigint NOT NULL,
  `taskid` bigint DEFAULT NULL,
  `roleid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `ispermission` bit(1) DEFAULT NULL,
  `defaultoptionvalue` bit(1) DEFAULT NULL,
  PRIMARY KEY (`roletaskactionid`),
  KEY `FKmtmf4j1xlqyufo93gdrr15qlc` (`taskid`),
  CONSTRAINT `FKmtmf4j1xlqyufo93gdrr15qlc` FOREIGN KEY (`taskid`) REFERENCES `taskactions` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roletaksactions`
--

LOCK TABLES `roletaksactions` WRITE;
/*!40000 ALTER TABLE `roletaksactions` DISABLE KEYS */;
INSERT INTO `roletaksactions` VALUES (1,1,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(2,2,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(3,3,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(4,4,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(5,5,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '\0',NULL),(6,1,1,1,1,'2024-03-05 18:23:48.772000',1,NULL,_binary '',NULL),(7,2,1,1,1,'2024-03-05 18:23:48.773000',1,NULL,_binary '',NULL),(8,3,1,1,1,'2024-03-05 18:23:48.773000',1,NULL,NULL,NULL),(9,4,1,1,1,'2024-03-05 18:23:48.774000',1,NULL,NULL,NULL),(10,5,1,1,1,'2024-03-05 18:23:48.774000',1,NULL,NULL,NULL),(11,1,1,1,1,'2024-03-05 18:23:52.166000',1,NULL,NULL,NULL),(12,2,1,1,1,'2024-03-05 18:23:52.166000',1,NULL,NULL,NULL),(13,3,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,_binary '',NULL),(14,4,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,NULL,NULL),(15,5,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,NULL,NULL),(16,1,6,1,NULL,'2024-05-14 19:03:42.748000',1,NULL,_binary '',_binary '\0'),(17,2,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(18,3,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(19,4,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary ''),(20,5,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(21,1,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(22,2,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(23,3,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,_binary '',_binary '\0'),(24,4,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(25,5,7,1,NULL,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(26,1,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(27,2,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(28,3,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(29,4,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,_binary '',NULL),(30,5,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,_binary '',NULL),(52,6,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(53,7,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(54,8,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(55,9,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(56,10,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(57,11,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0'),(102,6,7,1,1,'2024-03-13 21:39:25.635000',1,NULL,NULL,_binary '\0'),(103,7,7,1,1,'2024-03-13 21:39:25.702000',1,NULL,NULL,_binary '\0'),(104,8,7,1,1,'2024-03-13 21:39:25.702000',1,NULL,NULL,_binary ''),(105,9,7,1,1,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(106,10,7,1,1,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(107,11,7,1,1,'2024-03-13 21:39:25.703000',1,NULL,NULL,_binary '\0'),(152,12,6,1,NULL,'2024-05-14 19:03:42.749000',1,NULL,_binary '',_binary '\0');
/*!40000 ALTER TABLE `roletaksactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roletaksactions_seq`
--

DROP TABLE IF EXISTS `roletaksactions_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roletaksactions_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roletaksactions_seq`
--

LOCK TABLES `roletaksactions_seq` WRITE;
/*!40000 ALTER TABLE `roletaksactions_seq` DISABLE KEYS */;
INSERT INTO `roletaksactions_seq` VALUES (251);
/*!40000 ALTER TABLE `roletaksactions_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_master`
--

DROP TABLE IF EXISTS `service_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_master` (
  `serviceid` bigint NOT NULL,
  `active` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `servicename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_master`
--

LOCK TABLES `service_master` WRITE;
/*!40000 ALTER TABLE `service_master` DISABLE KEYS */;
INSERT INTO `service_master` VALUES (1,1,200,'Service1'),(2,1,300,'Service2'),(3,1,400,'Service3'),(4,1,1000,'Bed Service'),(52,1,100,'Cleaning service');
/*!40000 ALTER TABLE `service_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_master_seq`
--

DROP TABLE IF EXISTS `service_master_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_master_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_master_seq`
--

LOCK TABLES `service_master_seq` WRITE;
/*!40000 ALTER TABLE `service_master_seq` DISABLE KEYS */;
INSERT INTO `service_master_seq` VALUES (151);
/*!40000 ALTER TABLE `service_master_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spaces`
--

DROP TABLE IF EXISTS `spaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spaces` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `spaces_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `spaces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spaces`
--

LOCK TABLES `spaces` WRITE;
/*!40000 ALTER TABLE `spaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `spaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specilaity_master`
--

DROP TABLE IF EXISTS `specilaity_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specilaity_master` (
  `specilaityid` bigint NOT NULL,
  `specilaityname` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`specilaityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specilaity_master`
--

LOCK TABLES `specilaity_master` WRITE;
/*!40000 ALTER TABLE `specilaity_master` DISABLE KEYS */;
INSERT INTO `specilaity_master` VALUES (52,NULL,NULL),(53,NULL,NULL),(102,NULL,NULL),(152,NULL,NULL),(153,NULL,NULL),(202,NULL,NULL),(252,NULL,NULL),(302,NULL,NULL),(352,NULL,NULL),(353,NULL,NULL),(402,NULL,NULL),(403,NULL,NULL),(452,NULL,NULL),(453,NULL,NULL),(502,NULL,NULL),(552,NULL,NULL),(602,NULL,NULL),(603,NULL,NULL),(652,NULL,NULL),(653,NULL,NULL),(702,NULL,NULL),(752,NULL,NULL),(802,NULL,NULL),(803,NULL,NULL);
/*!40000 ALTER TABLE `specilaity_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specilaity_master_seq`
--

DROP TABLE IF EXISTS `specilaity_master_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specilaity_master_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specilaity_master_seq`
--

LOCK TABLES `specilaity_master_seq` WRITE;
/*!40000 ALTER TABLE `specilaity_master_seq` DISABLE KEYS */;
INSERT INTO `specilaity_master_seq` VALUES (901);
/*!40000 ALTER TABLE `specilaity_master_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `stateid` bigint NOT NULL,
  `statename` varchar(45) DEFAULT NULL,
  `statecode` varchar(45) DEFAULT NULL,
  `countryid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Telangana','TG',1,1);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_seq`
--

DROP TABLE IF EXISTS `states_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_seq`
--

LOCK TABLES `states_seq` WRITE;
/*!40000 ALTER TABLE `states_seq` DISABLE KEYS */;
INSERT INTO `states_seq` VALUES (1);
/*!40000 ALTER TABLE `states_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskactions`
--

DROP TABLE IF EXISTS `taskactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taskactions` (
  `taskid` bigint NOT NULL,
  `screencode` varchar(45) DEFAULT NULL,
  `screenname` varchar(45) DEFAULT NULL,
  `actionname` varchar(45) DEFAULT NULL,
  `actioncode` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `defultoption` tinyint DEFAULT '0',
  PRIMARY KEY (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskactions`
--

LOCK TABLES `taskactions` WRITE;
/*!40000 ALTER TABLE `taskactions` DISABLE KEYS */;
INSERT INTO `taskactions` VALUES (1,'REGISTRATION','Registration','Screen View','REGISTRATION_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(2,'REGISTRATION','Registration','Save','REGISTRATION_SAVE',1,NULL,NULL,NULL,NULL,0),(3,'VISIT_DAHSBOARD','Visit Dashboard','Screen View','VISIT_DAHSBOARD_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(4,'VISIT_CREATION','Visit Creation','Screen View','VISIT_CREATION_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(5,'VISIT_CREATION','Visit Creation','Save','VISIT_CREATION_SAVE',1,NULL,NULL,NULL,NULL,0),(6,'EMPLOYE_MASTER','Employe Master','EMPLOYE_MASTER_SCREEN_VIEW','EMPLOYE_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(7,'EMPLOYE_MASTER','Employe Master','EMPLOYE_MASTER_SAVE','EMPLOYE_MASTER_SAVE',1,NULL,NULL,NULL,NULL,0),(8,'SERVICE_MASTER','Service Master','SERVICE_MASTER_SCREEN_VIEW','SERVICE_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(9,'ROLES_MASTER','Roles Master','ROLES_MASTER_SCREEN_VIEW','ROLES_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(10,'VITALS','Vitals','Vitals Main Screen','VITALS_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,0),(11,'PRESCRIPTIONS','Prescriptions','Prescriptions Main Screen','PRESCRIPTIONS_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,0),(12,'DRUG_MASTER','Drug Master','Drug Master screen view','DRUG_MASTER_SCREEN_VIEW',1,1,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `taskactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskactions_seq`
--

DROP TABLE IF EXISTS `taskactions_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taskactions_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskactions_seq`
--

LOCK TABLES `taskactions_seq` WRITE;
/*!40000 ALTER TABLE `taskactions_seq` DISABLE KEYS */;
INSERT INTO `taskactions_seq` VALUES (1);
/*!40000 ALTER TABLE `taskactions_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_bill`
--

DROP TABLE IF EXISTS `visit_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_bill` (
  `BILL_ID` bigint NOT NULL,
  `BILL_NUM` varchar(45) DEFAULT NULL,
  `BILL_DATE` varchar(45) DEFAULT NULL,
  `BILL_AMOUNT` double(10,2) DEFAULT NULL,
  `VISIT_ID` int DEFAULT NULL,
  `CLIENT_ID` int DEFAULT NULL,
  `VISIT_TOTAL_AMOUNT` double(10,2) DEFAULT NULL,
  `VISIT_DISCOUNT_PERCENTAGE` double(10,2) DEFAULT NULL,
  `VISIT_DISCOUNT` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_bill`
--

LOCK TABLES `visit_bill` WRITE;
/*!40000 ALTER TABLE `visit_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_bill_seq`
--

DROP TABLE IF EXISTS `visit_bill_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_bill_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_bill_seq`
--

LOCK TABLES `visit_bill_seq` WRITE;
/*!40000 ALTER TABLE `visit_bill_seq` DISABLE KEYS */;
INSERT INTO `visit_bill_seq` VALUES (1);
/*!40000 ALTER TABLE `visit_bill_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_details`
--

DROP TABLE IF EXISTS `visit_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_details` (
  `visitid` bigint NOT NULL,
  `clientid` bigint DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `visitdate` datetime(6) DEFAULT NULL,
  `visitdiscount` float DEFAULT NULL,
  `visitpercentage` float DEFAULT NULL,
  `visittotalamount` float DEFAULT NULL,
  `doctor` bigint DEFAULT NULL,
  `specilaity` bigint DEFAULT NULL,
  `visittype` bigint DEFAULT NULL,
  `token` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`visitid`),
  KEY `FKi01i24wqyg6x16f52ajd26rms` (`clientid`),
  KEY `FK56llsf1kv9rv1cjjv3e9sqgoo` (`doctor`),
  KEY `FKtjof2cc86trkjve8e6yh67u4a` (`visittype`),
  CONSTRAINT `FK56llsf1kv9rv1cjjv3e9sqgoo` FOREIGN KEY (`doctor`) REFERENCES `employee_details` (`id`),
  CONSTRAINT `FKi01i24wqyg6x16f52ajd26rms` FOREIGN KEY (`clientid`) REFERENCES `emr_registration` (`seqid`),
  CONSTRAINT `FKtjof2cc86trkjve8e6yh67u4a` FOREIGN KEY (`visittype`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_details`
--

LOCK TABLES `visit_details` WRITE;
/*!40000 ALTER TABLE `visit_details` DISABLE KEYS */;
INSERT INTO `visit_details` VALUES (252,102,'Test for user@1',3,'2023-12-16 17:26:39.439000',0,NULL,0,1,102,12,NULL,NULL,NULL,NULL,NULL),(302,102,'Reason2',3,'2023-12-16 23:18:24.436000',0,NULL,0,2,152,13,NULL,NULL,NULL,NULL,NULL),(303,53,'Reasoner',1,'2023-12-17 12:28:58.693000',0,NULL,0,1,153,12,NULL,NULL,NULL,NULL,NULL),(352,53,'Checking for test1 24-12-2023',4,'2023-12-24 17:37:01.014000',0,NULL,0,1,202,12,NULL,NULL,NULL,NULL,NULL),(402,53,'Check up 25/12',3,'2023-12-25 13:18:15.450000',0,NULL,0,1,252,12,NULL,NULL,NULL,NULL,NULL),(452,53,'check',3,'2023-12-31 15:35:42.479000',0,NULL,0,1,302,12,NULL,NULL,NULL,NULL,NULL),(502,53,'Test visit',4,'2024-01-04 20:24:52.668000',0,NULL,0,1,352,12,NULL,NULL,NULL,NULL,NULL),(503,53,'reason',3,'2024-01-05 11:07:38.245000',0,NULL,0,1,353,12,NULL,NULL,NULL,NULL,NULL),(552,252,'Tests',1,'2024-01-06 00:00:00.000000',0,NULL,0,2,402,12,13,NULL,NULL,NULL,NULL),(553,53,'Headache',4,'2024-01-06 00:00:00.000000',0,NULL,0,2,403,12,15,NULL,NULL,NULL,NULL),(602,53,'Checking allerigies',3,'2024-01-08 00:00:00.000000',0,NULL,0,1,452,12,12,NULL,NULL,NULL,NULL),(603,152,'asd',3,'2024-01-09 00:00:00.000000',0,NULL,0,1,453,12,12,NULL,NULL,NULL,NULL),(652,152,'asdasd',3,'2024-01-09 00:00:00.000000',0,NULL,0,2,502,12,12,NULL,NULL,NULL,NULL),(702,452,'asdasd',3,'2024-01-09 00:00:00.000000',0,NULL,0,3,552,12,12,NULL,NULL,NULL,NULL),(752,502,'Test',3,'2024-01-09 00:00:00.000000',0,NULL,0,2,602,12,12,NULL,NULL,NULL,NULL),(753,503,'tesr',3,'2024-01-11 00:00:00.000000',0,NULL,1000,2,603,12,12,NULL,NULL,NULL,NULL),(802,552,'ss',3,'2024-03-12 00:00:00.000000',0,NULL,1000,1,652,12,12,1,'2024-03-12 13:31:49.996000',1,NULL),(803,553,'Abdominal Pain',1,'2024-03-12 00:00:00.000000',0,NULL,470,1,653,12,10,1,'2024-03-12 21:50:09.093000',1,NULL),(852,53,'check',1,'2024-03-17 00:00:00.000000',400,NULL,400,1,702,12,12,1,'2024-03-17 12:34:50.772000',1,NULL),(902,152,'ssss',1,'2024-03-18 00:00:00.000000',23.25,5,441.75,1,752,12,11,1,'2024-03-17 12:43:16.374000',1,NULL),(952,53,'sss',3,'2024-03-20 00:00:00.000000',0,0,200,1,802,12,1,1,'2024-03-20 20:40:09.364000',1,NULL),(953,503,'Test edited reason',1,'2024-03-20 00:00:00.000000',0,0,200,1,10,12,3,NULL,'2024-03-25 14:32:10.409000',1,NULL),(1053,503,'121 edited',1,'2024-03-25 00:00:00.000000',0,0,200,1,10,12,1,NULL,'2024-03-25 14:26:30.660000',1,NULL),(1102,552,'Test edited',4,'2024-03-25 00:00:00.000000',0,0,150,1,10,12,3,NULL,'2024-03-25 20:44:42.561000',1,NULL),(1152,552,'Test',1,'2024-04-15 00:00:00.000000',0,0,1000,1,9,12,1,1,'2024-04-15 15:33:35.114000',1,NULL),(1202,503,'ss',3,'2024-05-14 00:00:00.000000',0,0,900,1,9,12,1,NULL,'2024-05-14 18:44:23.169000',1,NULL),(1203,552,'sss',1,'2024-05-14 00:00:00.000000',0,0,1000,1,9,12,2,1,'2024-05-14 18:44:00.954000',1,NULL),(1252,503,'ss',1,'2024-05-16 00:00:00.000000',0,0,1000,1,9,12,1,1,'2024-05-16 14:34:39.950000',1,NULL),(1302,503,'ss',1,'2024-05-17 00:00:00.000000',0,0,1000,1,9,12,1,1,'2024-05-17 08:39:47.678000',1,NULL),(1352,53,'sss',3,'2024-05-19 00:00:00.000000',0,0,1000,1,9,12,1,1,'2024-05-19 12:10:36.822000',1,NULL),(1402,53,'Checking',3,'2024-06-18 00:00:00.000000',0,0,1000,1,9,12,1,1,'2024-06-18 10:52:12.193000',1,NULL),(1403,552,'ss',3,'2024-06-20 00:00:00.000000',0,0,1000,1,9,12,1,1,'2024-06-20 14:31:52.516000',1,NULL),(1452,552,'Test',3,'2024-06-21 00:00:00.000000',0,0,1000,1,9,12,1,1,'2024-06-21 12:13:01.441000',1,NULL),(1502,552,'Sa',3,'2024-06-22 00:00:00.000000',0,0,1000,1,10,12,1,1,'2024-06-22 15:29:51.752000',1,NULL),(1503,552,'Check',1,'2024-06-25 00:00:00.000000',0,0,100,1,9,12,1,1,'2024-06-25 09:48:28.726000',1,NULL);
/*!40000 ALTER TABLE `visit_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_details_seq`
--

DROP TABLE IF EXISTS `visit_details_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_details_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_details_seq`
--

LOCK TABLES `visit_details_seq` WRITE;
/*!40000 ALTER TABLE `visit_details_seq` DISABLE KEYS */;
INSERT INTO `visit_details_seq` VALUES (1651);
/*!40000 ALTER TABLE `visit_details_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_services`
--

DROP TABLE IF EXISTS `visit_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_services` (
  `id` bigint NOT NULL,
  `quantity` float DEFAULT NULL,
  `servicediscount` float DEFAULT NULL,
  `servicediscountInpercentage` float DEFAULT NULL,
  `serviceid` bigint DEFAULT NULL,
  `serviceprice` float DEFAULT NULL,
  `status` int DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `servicetotalamount` float DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  `BILL_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl8hcudnxv1a7506kjnlp9bqpq` (`visitid`),
  KEY `FKb1iuk761v5dci9rcn308p7idf` (`serviceid`),
  CONSTRAINT `FKb1iuk761v5dci9rcn308p7idf` FOREIGN KEY (`serviceid`) REFERENCES `service_master` (`serviceid`),
  CONSTRAINT `FKl8hcudnxv1a7506kjnlp9bqpq` FOREIGN KEY (`visitid`) REFERENCES `visit_details` (`visitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_services`
--

LOCK TABLES `visit_services` WRITE;
/*!40000 ALTER TABLE `visit_services` DISABLE KEYS */;
INSERT INTO `visit_services` VALUES (252,1,0,NULL,2,300,NULL,252,300,NULL,NULL,NULL,NULL,NULL),(253,1,0,NULL,1,200,NULL,252,200,NULL,NULL,NULL,NULL,NULL),(302,1,0,NULL,1,200,NULL,302,200,NULL,NULL,NULL,NULL,NULL),(303,1,0,NULL,1,200,NULL,303,200,NULL,NULL,NULL,NULL,NULL),(352,1,10,NULL,1,200,NULL,352,190,NULL,NULL,NULL,NULL,NULL),(353,1,0,NULL,2,300,NULL,352,300,NULL,NULL,NULL,NULL,NULL),(402,1,10,NULL,1,200,NULL,402,190,NULL,NULL,NULL,NULL,NULL),(452,1,0,NULL,1,200,NULL,452,200,NULL,NULL,NULL,NULL,NULL),(502,1,100,NULL,4,1000,NULL,502,900,NULL,NULL,NULL,NULL,NULL),(503,1,0,NULL,4,1000,NULL,503,1000,NULL,NULL,NULL,NULL,NULL),(504,1,100,NULL,52,100,NULL,503,0,NULL,NULL,NULL,NULL,NULL),(552,1,11,NULL,1,200,NULL,552,189,NULL,NULL,NULL,NULL,NULL),(553,1,100,NULL,4,1000,NULL,553,900,NULL,NULL,NULL,NULL,NULL),(554,1,50,NULL,1,200,NULL,553,150,NULL,NULL,NULL,NULL,NULL),(602,1,111,NULL,4,1000,NULL,602,889,NULL,NULL,NULL,NULL,NULL),(603,1,11,NULL,1,200,NULL,603,189,NULL,NULL,NULL,NULL,NULL),(652,0,0,NULL,2,300,NULL,652,0,NULL,NULL,NULL,NULL,NULL),(702,0,0,NULL,4,1000,NULL,702,0,NULL,NULL,NULL,NULL,NULL),(752,1,100,NULL,4,1000,NULL,752,900,NULL,NULL,NULL,NULL,NULL),(753,1,0,NULL,4,1000,NULL,753,1000,NULL,NULL,NULL,NULL,NULL),(802,1,0,NULL,4,1000,NULL,802,1000,1,'2024-03-12 13:31:50.024000',1,NULL,NULL),(803,1,10,NULL,1,200,NULL,803,190,1,'2024-03-12 21:50:09.093000',1,NULL,NULL),(804,1,20,NULL,2,300,NULL,803,280,1,'2024-03-12 21:50:09.093000',1,NULL,NULL),(852,1,100,NULL,1,200,NULL,852,100,1,'2024-03-17 12:34:50.827000',1,NULL,NULL),(853,1,0,NULL,2,300,NULL,852,300,1,'2024-03-17 12:34:50.827000',1,NULL,NULL),(854,1,0,NULL,3,400,NULL,852,400,1,'2024-03-17 12:34:50.827000',1,NULL,NULL),(902,1,20,NULL,1,200,NULL,902,180,1,'2024-03-17 12:43:16.404000',1,NULL,NULL),(903,1,15,NULL,2,300,NULL,902,285,1,'2024-03-17 12:43:16.404000',1,NULL,NULL),(952,1,0,0,1,200,NULL,952,200,1,'2024-03-20 20:40:09.399000',1,NULL,NULL),(953,1,0,0,1,200,NULL,953,200,1,'2024-03-20 20:41:24.139000',1,NULL,NULL),(1003,1,0,0,1,200,NULL,1053,200,1,'2024-03-24 20:38:44.099000',1,NULL,NULL),(1052,1,50,25,1,200,NULL,1102,150,1,'2024-03-25 20:44:20.748000',1,NULL,NULL),(1102,1,0,0,4,1000,NULL,1152,1000,1,'2024-04-15 15:33:35.141000',1,NULL,NULL),(1152,1,100,10,4,1000,NULL,1202,900,1,'2024-05-14 18:44:23.164000',1,NULL,NULL),(1153,1,0,0,4,1000,NULL,1203,1000,1,'2024-05-14 18:44:00.954000',1,NULL,NULL),(1202,1,0,0,4,1000,NULL,1252,1000,1,'2024-05-16 14:34:39.968000',1,NULL,NULL),(1252,1,0,0,4,1000,NULL,1302,1000,1,'2024-05-17 08:39:47.708000',1,NULL,NULL),(1302,1,0,0,4,1000,NULL,1352,1000,1,'2024-05-19 12:10:36.862000',1,NULL,NULL),(1352,1,0,0,4,1000,NULL,1402,1000,1,'2024-06-18 10:52:12.212000',1,NULL,NULL),(1353,1,0,0,4,1000,NULL,1403,1000,1,'2024-06-20 14:31:52.517000',1,NULL,NULL),(1402,1,0,0,4,1000,NULL,1452,1000,1,'2024-06-21 12:13:01.482000',1,NULL,NULL),(1452,1,0,0,4,1000,NULL,1502,1000,1,'2024-06-22 15:29:51.783000',1,NULL,NULL),(1453,1,0,0,52,100,NULL,1503,100,1,'2024-06-25 09:48:28.732000',1,NULL,NULL);
/*!40000 ALTER TABLE `visit_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_services_seq`
--

DROP TABLE IF EXISTS `visit_services_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_services_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_services_seq`
--

LOCK TABLES `visit_services_seq` WRITE;
/*!40000 ALTER TABLE `visit_services_seq` DISABLE KEYS */;
INSERT INTO `visit_services_seq` VALUES (1601);
/*!40000 ALTER TABLE `visit_services_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitals`
--

DROP TABLE IF EXISTS `vitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vitals` (
  `vitalid` bigint NOT NULL,
  `visitid` bigint DEFAULT NULL,
  `clientid` bigint DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `bmi` float DEFAULT NULL,
  `systolic` float DEFAULT NULL,
  `diastolic` float DEFAULT NULL,
  `pulse` float DEFAULT NULL,
  `respiratoryrate` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `capturedby` bigint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`vitalid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitals`
--

LOCK TABLES `vitals` WRITE;
/*!40000 ALTER TABLE `vitals` DISABLE KEYS */;
INSERT INTO `vitals` VALUES (52,303,53,170,56,12,80,110,98,12,98,1,NULL,NULL,NULL,NULL),(102,302,102,112,122,12,221,221,22,22,22,1,NULL,NULL,NULL,NULL),(152,402,53,170,78,28,80,110,98,111,99,1,NULL,NULL,NULL,NULL),(202,452,53,180,67,88,80,110,98,10,98,1,NULL,NULL,NULL,NULL),(352,502,53,170,78,78,110,80,98,110,98,1,NULL,NULL,NULL,NULL),(402,553,53,183,80,NULL,110,70,60,24,36,1,NULL,NULL,NULL,NULL),(452,503,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(502,602,53,11,21,21,11,11,11,11,11,1,NULL,NULL,NULL,NULL),(503,603,152,33,33,33,33,33,33,33,33,1,NULL,NULL,NULL,NULL),(552,652,152,121,122,2,21,2,1,2,21,1,NULL,NULL,NULL,NULL),(602,702,452,178,76,87,110,110,11,12,98,1,NULL,NULL,NULL,NULL),(603,752,502,12,22,12,122,22,22,223,NULL,1,NULL,NULL,NULL,NULL),(652,1102,552,76,56,12,110,80,98,87,98,1,1,'2024-03-25 20:46:52.377000',1,NULL),(702,1202,503,176,78,98,110,98,98,NULL,NULL,1,1,'2024-05-14 18:46:15.214000',1,NULL),(752,1402,53,189,76,89,110,80,98,98,98,1,NULL,'2024-06-19 15:19:43.406000',1,NULL),(802,1452,552,11.11,11.11,11.11,11.11,11.11,11.11,11.11,11.11,1,1,'2024-06-21 15:47:01.294000',1,NULL),(803,1452,552,11.11,11.11,11.11,11.11,11.11,11.11,11.11,11.11,1,1,'2024-06-21 19:38:46.994000',1,NULL),(804,1452,552,11.11,11.11,11.11,11.11,11.11,11.11,11.11,11.11,1,1,'2024-06-21 19:47:50.058000',1,NULL),(852,NULL,552,176,75.1,11.12,110,80.1,NULL,NULL,NULL,1,1,'2024-06-22 16:56:41.890000',1,NULL);
/*!40000 ALTER TABLE `vitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitals_seq`
--

DROP TABLE IF EXISTS `vitals_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vitals_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitals_seq`
--

LOCK TABLES `vitals_seq` WRITE;
/*!40000 ALTER TABLE `vitals_seq` DISABLE KEYS */;
INSERT INTO `vitals_seq` VALUES (951);
/*!40000 ALTER TABLE `vitals_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'emr'
--

--
-- Dumping routines for database 'emr'
--
/*!50003 DROP PROCEDURE IF EXISTS `GET_ROLES_TASKS_BASED_ON_ROLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_ROLES_TASKS_BASED_ON_ROLE`(roleid bigint)
BEGIN
SELECT ta.defultoption,ta.taskid,ta.screenname,ta.screencode,ta.actionname,ta.actioncode,ta.status,ra.ispermission,ra.roleid,ra.roletaskactionid,ra.defaultoptionvalue FROM taskactions ta
left join roletaksactions  ra on ra.taskid = ta.taskid and ra.roleid = roleid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-14 23:16:51
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: tenant_admin
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `datasourceconfig`
--

DROP TABLE IF EXISTS `datasourceconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datasourceconfig` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `driverClassName` varchar(45) DEFAULT NULL,
  `initialize` tinyint DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasourceconfig`
--

LOCK TABLES `datasourceconfig` WRITE;
/*!40000 ALTER TABLE `datasourceconfig` DISABLE KEYS */;
INSERT INTO `datasourceconfig` VALUES (1,'emr','jdbc:mysql://localhost:3306/emr?','admin','com.mysql.cj.jdbc.Driver',1,'root'),(2,'emr2','jdbc:mysql://localhost:3306/emr2?','admin','com.mysql.cj.jdbc.Driver',1,'root');
/*!40000 ALTER TABLE `datasourceconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tenant_admin'
--

--
-- Dumping routines for database 'tenant_admin'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-14 23:16:51
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: myschool
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('09543f0a-1821-4b2b-b1d2-a5f3c37218e8','4bfdf8d9eef8a8e05c96f03d47fcac72c4ac703769cf2cba180cf0cc8c6aa5df','2025-07-19 09:00:19.840','20250719090019_update_student_model',NULL,NULL,'2025-07-19 09:00:19.575',1),('1d41cb74-c48b-4aaf-8fed-771c8135e385','c3573d29a3869c491999168f5acadbe06cc13af5dc97bfe62c6d6a5d7cba5383','2025-08-19 14:08:35.802','20250819140835_add_fee_payment',NULL,NULL,'2025-08-19 14:08:35.504',1),('3ea0377b-f902-4638-a2cd-c2e9ff22427e','bd92b392bc26826f5c7a299bbfd1efe90ba88d1b02955632f853bf4ca971e294','2025-07-16 16:39:58.837','20250716150233_init',NULL,NULL,'2025-07-16 16:39:57.845',1),('443fae7a-0744-4698-9572-a9628db6d8d5','b3e70bff080b80407e2d8c9627bd7a7aa088f38d63c94c48fa83115202d320c1','2025-08-19 15:48:37.701','20250819154837_studet_attendance',NULL,NULL,'2025-08-19 15:48:37.498',1),('4e334274-2c30-4f78-bc69-ca0510ad5b24','cb1e63406a84e8d8b5de96f82a92315eed73313ba6585e00b241aba73abe3452','2025-08-16 14:36:44.736','20250816143644_add_marksheet_master',NULL,NULL,'2025-08-16 14:36:44.344',1),('563cfff8-3746-4032-bf08-e9870762df12','239260663cf6e199d7483de4815ae8f6c2867ea9936308b479f7ce86353f3c58','2025-07-23 15:06:43.914','20250723150643_add_subject_model',NULL,NULL,'2025-07-23 15:06:43.679',1),('785ffcf4-33af-4406-950f-3b95c3a6c859','a1779ed5e2d16d35e6b438a7d93989b75998504b4f287545f9b26e7e1539edfd','2025-07-24 16:06:52.940','20250724160651_add_timeperiod_staff_relation',NULL,NULL,'2025-07-24 16:06:51.645',1),('9b499ff1-7924-4dee-b6c2-f0d173ceeebf','6fd5d9434563948f84189d1ed12aba586979515173ae7f9839362c34763b5dab','2025-08-15 14:31:11.190','20250815143110_add_fee_structure',NULL,NULL,'2025-08-15 14:31:10.753',1),('ab95add5-f4bc-4f24-b948-374cdcd7b5f6','cabd6fee804aa9ce9fd77a4024ba401a42efbc2639b99dd13cdadf6d541552b7','2025-08-11 15:07:13.823','20250811150713_add_subject_relation_to_timeperiod',NULL,NULL,'2025-08-11 15:07:13.216',1),('b17fdd07-a442-4025-ad53-4035deca9549','5fa1fc7706d75deb2a1715126e7ca1ba88fecfe1eba4d0ddcdf4af74d0ef4a55','2025-08-11 15:20:35.331','20250811152034_add_subject_relation_to_timeperiod',NULL,NULL,'2025-08-11 15:20:34.845',1),('c368028f-ce4e-4c10-a457-414ed559cfce','facc91a995ac57258af59048be6115ad6b6accfa24c239122ceab1e33a6298b2','2025-08-16 14:13:38.016','20250816141337_add_fee_structure',NULL,NULL,'2025-08-16 14:13:37.944',1),('d894e7b1-02a8-4818-ae5a-b5dc5ce8e57f','93248e6081b807ddd80de6650c614c55997793d22c9c13d141fddbff9eb36e07','2025-08-18 14:26:57.098','20250818142656_add_fee_terms',NULL,NULL,'2025-08-18 14:26:56.663',1),('d9c0b43e-34fe-46eb-b966-266d3c0f3990','a1fc2d396c0ac3ab6f7dafe5cb708ed34b885f83320f9c10fd94d6d2578444e5','2025-07-16 16:45:51.275','20250716164551_add_master_dropdown',NULL,NULL,'2025-07-16 16:45:51.231',1),('dc9d7257-0c0e-41eb-9499-65a5e286b8fa','c97194d277ad9e302cd8609064c84dc49cd9be41daba06f92650a20008d7f7e9','2025-08-17 06:05:05.088','20250817060504_add_fee_structure',NULL,NULL,'2025-08-17 06:05:04.222',1),('e47e05df-064b-4896-8369-999058cf1433','31a332452123eb56240e779cd9d99a521f7bd1730cf29b22f45259fb155c4197','2025-08-16 13:51:13.293','20250816135113_add_is_active_total_amount_to_fee_structure',NULL,NULL,'2025-08-16 13:51:13.249',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'LKG'),(2,'UKG'),(3,'1st'),(4,'2nd'),(5,'3rd'),(6,'4th'),(7,'5th'),(8,'6th'),(9,'7th'),(10,'8th'),(11,'9th'),(12,'10th'),(13,'11th'),(14,'12th'),(15,'check');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `examName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedetails`
--

DROP TABLE IF EXISTS `feedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `totalFee` double NOT NULL,
  `discountAmount` double NOT NULL,
  `totalTerms` int NOT NULL,
  `remainingAmount` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `FeeDetails_studentId_key` (`studentId`),
  CONSTRAINT `FeeDetails_studentId_fkey` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedetails`
--

LOCK TABLES `feedetails` WRITE;
/*!40000 ALTER TABLE `feedetails` DISABLE KEYS */;
INSERT INTO `feedetails` VALUES (1,1,50000,0,3,50000),(2,2,10000,0,3,10000),(3,3,1000,0,3,1000),(4,4,1000,5,3,995),(5,5,1000,5,3,995),(6,6,10000,0,3,10000),(7,7,10000,10,3,9000),(8,8,1111,0,3,1111);
/*!40000 ALTER TABLE `feedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeitem`
--

DROP TABLE IF EXISTS `feeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feeitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feeStructureId` int NOT NULL,
  `feeTypeId` int NOT NULL,
  `feeName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FeeItem_feeStructureId_fkey` (`feeStructureId`),
  KEY `FeeItem_feeTypeId_fkey` (`feeTypeId`),
  CONSTRAINT `FeeItem_feeStructureId_fkey` FOREIGN KEY (`feeStructureId`) REFERENCES `feestructure` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FeeItem_feeTypeId_fkey` FOREIGN KEY (`feeTypeId`) REFERENCES `masterdropdown` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeitem`
--

LOCK TABLES `feeitem` WRITE;
/*!40000 ALTER TABLE `feeitem` DISABLE KEYS */;
INSERT INTO `feeitem` VALUES (9,2,19,'Enlist',111,'desc'),(10,1,20,'School fee1',10000,'d'),(11,1,19,'sc',1000,'s');
/*!40000 ALTER TABLE `feeitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feepayment`
--

DROP TABLE IF EXISTS `feepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feepayment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `feeTermId` int NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `paidDate` datetime(3) DEFAULT NULL,
  `modeOfPaymentId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FeePayment_studentId_fkey` (`studentId`),
  KEY `FeePayment_feeTermId_fkey` (`feeTermId`),
  KEY `FeePayment_modeOfPaymentId_fkey` (`modeOfPaymentId`),
  CONSTRAINT `FeePayment_feeTermId_fkey` FOREIGN KEY (`feeTermId`) REFERENCES `feeterm` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FeePayment_modeOfPaymentId_fkey` FOREIGN KEY (`modeOfPaymentId`) REFERENCES `masterdropdown` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FeePayment_studentId_fkey` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feepayment`
--

LOCK TABLES `feepayment` WRITE;
/*!40000 ALTER TABLE `feepayment` DISABLE KEYS */;
INSERT INTO `feepayment` VALUES (3,2,2,1,'2025-08-19 14:33:11.707',23),(4,2,2,1,'2025-08-21 15:00:39.531',23),(5,2,1,1,'2025-08-21 15:01:55.915',23),(6,2,3,1,'2025-09-13 14:48:17.221',23);
/*!40000 ALTER TABLE `feepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feestructure`
--

DROP TABLE IF EXISTS `feestructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feestructure` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classId` int NOT NULL,
  `academicYear` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberOfTerms` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `totalAmount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FeeStructure_classId_fkey` (`classId`),
  CONSTRAINT `FeeStructure_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feestructure`
--

LOCK TABLES `feestructure` WRITE;
/*!40000 ALTER TABLE `feestructure` DISABLE KEYS */;
INSERT INTO `feestructure` VALUES (1,3,'2024-25',3,'2025-08-16 08:21:04.069','2025-08-18 14:27:28.865',1,11000),(2,2,'2024-25',1,'2025-08-16 14:14:14.446','2025-08-16 14:25:25.647',1,111);
/*!40000 ALTER TABLE `feestructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeterm`
--

DROP TABLE IF EXISTS `feeterm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feeterm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feeStructureId` int NOT NULL,
  `termNumber` int NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FeeTerm_feeStructureId_fkey` (`feeStructureId`),
  CONSTRAINT `FeeTerm_feeStructureId_fkey` FOREIGN KEY (`feeStructureId`) REFERENCES `feestructure` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeterm`
--

LOCK TABLES `feeterm` WRITE;
/*!40000 ALTER TABLE `feeterm` DISABLE KEYS */;
INSERT INTO `feeterm` VALUES (1,1,1,3666.666666666667),(2,1,2,3666.666666666667),(3,1,3,3666.666666666667);
/*!40000 ALTER TABLE `feeterm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markssheetmaster`
--

DROP TABLE IF EXISTS `markssheetmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markssheetmaster` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classId` int NOT NULL,
  `sectionId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MarksSheetMaster_classId_fkey` (`classId`),
  KEY `MarksSheetMaster_sectionId_fkey` (`sectionId`),
  CONSTRAINT `MarksSheetMaster_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `MarksSheetMaster_sectionId_fkey` FOREIGN KEY (`sectionId`) REFERENCES `section` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markssheetmaster`
--

LOCK TABLES `markssheetmaster` WRITE;
/*!40000 ALTER TABLE `markssheetmaster` DISABLE KEYS */;
INSERT INTO `markssheetmaster` VALUES (1,1,1,'2025-08-17 06:11:04.300','2025-08-17 06:11:04.300'),(2,1,1,'2025-08-17 06:11:33.890','2025-08-17 06:11:33.890'),(3,1,1,'2025-08-17 06:14:09.653','2025-08-17 06:14:09.653'),(4,2,3,'2025-08-17 06:14:51.106','2025-08-17 06:14:51.106'),(5,1,1,'2025-08-17 06:37:54.237','2025-08-17 06:53:07.412');
/*!40000 ALTER TABLE `markssheetmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markssubject`
--

DROP TABLE IF EXISTS `markssubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markssubject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marksheetId` int NOT NULL,
  `subjectId` int NOT NULL,
  `maxMarks` int NOT NULL,
  `passMarks` int NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `MarksSubject_marksheetId_fkey` (`marksheetId`),
  KEY `MarksSubject_subjectId_fkey` (`subjectId`),
  CONSTRAINT `MarksSubject_marksheetId_fkey` FOREIGN KEY (`marksheetId`) REFERENCES `markssheetmaster` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `MarksSubject_subjectId_fkey` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markssubject`
--

LOCK TABLES `markssubject` WRITE;
/*!40000 ALTER TABLE `markssubject` DISABLE KEYS */;
INSERT INTO `markssubject` VALUES (1,4,7,11,11,'11'),(4,5,6,100,35,'Mid Exam'),(5,5,5,100,35,'Mid exam1');
/*!40000 ALTER TABLE `markssubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterdropdown`
--

DROP TABLE IF EXISTS `masterdropdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masterdropdown` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterdropdown`
--

LOCK TABLES `masterdropdown` WRITE;
/*!40000 ALTER TABLE `masterdropdown` DISABLE KEYS */;
INSERT INTO `masterdropdown` VALUES (1,'occupation','Engineer'),(2,'occupation','Doctor'),(3,'occupation','Teacher'),(4,'occupation','Lawyer'),(5,'occupation','Artist'),(6,'gender','Male'),(7,'gender','Female'),(8,'gender','Other'),(9,'Qualification','Degree'),(10,'Qualification','MSC'),(11,'Qualification','BED'),(12,'Desgination','Teacher'),(13,'Desgination','Head-Master'),(14,'StaffType','Teacher'),(15,'StaffType','Admin'),(16,'StaffType','Driver'),(17,'Status','Acive'),(18,'Status','In-acive'),(19,'FeeType','School Fee'),(20,'FeeType','Transport Fee'),(21,'FeeType','Books Fee'),(22,'FeeType','Dress Fee'),(23,'modeOfPayment','Card'),(24,'modeOfPayment','Cash');
/*!40000 ALTER TABLE `masterdropdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Section_classId_fkey` (`classId`),
  CONSTRAINT `Section_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'A',1),(2,'B',1),(3,'A',2),(4,'B',2),(5,'A',3),(6,'B',3),(7,'A',4),(8,'B',4),(9,'A',5),(10,'B',5),(11,'A',6),(12,'B',6),(13,'A',7),(14,'B',7),(15,'A',8),(16,'B',8),(17,'A',9),(18,'B',9),(19,'A',10),(20,'B',10),(21,'A',11),(22,'B',11),(23,'A',12),(24,'B',12),(25,'A',13),(26,'B',13),(27,'A',14),(28,'B',14),(29,'Section1 check',15),(30,'Section2',15),(31,'section3',15),(32,'Sample121',15);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genderId` int DEFAULT NULL,
  `qualificationId` int DEFAULT NULL,
  `departmentId` int DEFAULT NULL,
  `designationId` int DEFAULT NULL,
  `staffTypeId` int DEFAULT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobileNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `isTransportRequired` tinyint(1) DEFAULT '0',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Staff_username_key` (`username`),
  UNIQUE KEY `Staff_email_key` (`email`),
  KEY `Staff_genderId_fkey` (`genderId`),
  KEY `Staff_qualificationId_fkey` (`qualificationId`),
  KEY `Staff_departmentId_fkey` (`departmentId`),
  KEY `Staff_designationId_fkey` (`designationId`),
  KEY `Staff_staffTypeId_fkey` (`staffTypeId`),
  CONSTRAINT `Staff_departmentId_fkey` FOREIGN KEY (`departmentId`) REFERENCES `masterdropdown` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Staff_designationId_fkey` FOREIGN KEY (`designationId`) REFERENCES `masterdropdown` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Staff_genderId_fkey` FOREIGN KEY (`genderId`) REFERENCES `masterdropdown` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Staff_qualificationId_fkey` FOREIGN KEY (`qualificationId`) REFERENCES `masterdropdown` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Staff_staffTypeId_fkey` FOREIGN KEY (`staffTypeId`) REFERENCES `masterdropdown` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Sandeep','Mandalapu',6,10,NULL,12,14,'asd','84695608','sand@gmail.com','22','22',10000,1,0,'2025-08-06 14:46:35.057','2025-08-10 07:29:54.613'),(12,'Teacher2','2',6,9,NULL,12,14,'10','9032151096','sand1@gmail.com','teacher2','User@1',120000,1,0,'2025-08-10 07:42:38.041','2025-08-10 07:44:05.630'),(18,'teacher3','3',6,9,NULL,13,15,'12','902151096','sandeep.jitthu1@gmail.com','teacher3','User@1',10000,1,0,'2025-08-10 07:45:17.807','2025-08-10 07:45:24.875');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fatherName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherOccupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherOccupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobileNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherMobileNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherEmail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isTransportRequired` tinyint(1) DEFAULT NULL,
  `classId` int NOT NULL,
  `sectionId` int NOT NULL,
  `genderId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Student_username_key` (`username`),
  KEY `Student_classId_fkey` (`classId`),
  KEY `Student_sectionId_fkey` (`sectionId`),
  KEY `Student_genderId_fkey` (`genderId`),
  CONSTRAINT `Student_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Student_genderId_fkey` FOREIGN KEY (`genderId`) REFERENCES `masterdropdown` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Student_sectionId_fkey` FOREIGN KEY (`sectionId`) REFERENCES `section` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'student1','$2b$10$ZEwbuWNcwK8Ysz3tcVQYv.LmuS6i21yE2qUPZvP4v6bQ5lHp8UEvO','John','Doe','Robert Doe','Jane Doe','1','1','1234567890','0987654321','robert@example.com','123 Main St',1,4,7,6),(2,'sandeep_mandalapu','$2b$10$PHNgyJ5gHANk6MK2it2ioeLBdIWzyxge.Nv54GjMe.aot6.x8yku6','Sandeep','Mandalapu','Sandeep','teacas','1','1','9032151096',NULL,'robert@example.com','686D CHOA CHU KANG CRESCENT',NULL,3,5,6),(3,'suhanvi_mandalapu','$2b$10$NLTfi9u59UCq7D/.Zo6gR.R3R0lf9eHGr0TexMTDpklh2Xb4AYvEy','Suhanvi','Mandalapu','Sandeep','Tejaswini','1','1','9032151096',NULL,'sample@gmail.com','686D CHOA CHU KANG CRESCENT',NULL,1,2,6),(4,'suhanvi_mandalapu1','$2b$10$PdZ07NK3st6kXhPhAsIxRuk1wAQHIDvNGTXuCW0S0cfx878VvgVf6','Suhanvi','Mandalapu','Sandeep','Tejaswini','Engineer','Doctor','9032151096',NULL,NULL,'686D CHOA CHU KANG CRESCENT',NULL,1,2,NULL),(5,'suhanvi_mandalapu2','$2b$10$xacFUbnW.jQXBOqzKxs3Bu7BNe.aW4Sg./LnLUhegad3Ap9dwW6Je','Suhanvi','Mandalapu','Sandeep','Tejaswini','Engineer','Doctor','9032151096',NULL,NULL,'686D CHOA CHU KANG CRESCENT',NULL,1,2,NULL),(6,'sa_22','$2b$10$2LroTDkzTEY3.yHRG/ssmuN/VE34sPZ5LcWruvpFVf1kYrLWF6Ge2','Sa','22','aqe3e','2323','1','1','1234567890',NULL,'robert@example.com','686D CHOA CHU KANG CRESCENT',NULL,1,1,6),(7,'sai_m','$2b$10$wyE0RQmp9gjMebkCQEYvsu0WjWAlXUVSgg/8YpQ0zcjRJ73rtDCqG','Sai','M','Sandeep','Teja','Engineer','Engineer','9032151096',NULL,NULL,'686D CHOA CHU KANG CRESCENT',NULL,1,1,NULL),(8,'student_1','$2b$10$v4gjspDdRsuKrPt8kUPLC.KA0RbQk0LyJsMw5V599unYwqz1INN6q','Student','1','Robert Doe','Jane Doe','1','1','1234567901',NULL,'sample@gmail.com','11',NULL,1,1,6);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentattendance`
--

DROP TABLE IF EXISTS `studentattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentattendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `date` datetime(3) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentAttendance_studentId_date_key` (`studentId`,`date`),
  CONSTRAINT `StudentAttendance_studentId_fkey` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentattendance`
--

LOCK TABLES `studentattendance` WRITE;
/*!40000 ALTER TABLE `studentattendance` DISABLE KEYS */;
INSERT INTO `studentattendance` VALUES (1,6,'2025-08-21 00:00:00.000','Present',NULL),(2,7,'2025-08-21 00:00:00.000','Present',NULL),(3,8,'2025-08-21 00:00:00.000','Absent',NULL),(4,6,'2025-08-22 00:00:00.000','Present',NULL),(5,7,'2025-08-22 00:00:00.000','Absent',NULL),(6,8,'2025-08-22 00:00:00.000','Absent',NULL),(7,2,'2025-08-22 00:00:00.000','Present',NULL),(8,2,'2025-08-21 00:00:00.000','Present',NULL),(9,2,'2025-08-20 00:00:00.000','Present',NULL),(10,2,'2025-08-19 00:00:00.000','Absent',NULL),(11,6,'2025-09-13 00:00:00.000','Present',NULL),(12,7,'2025-09-13 00:00:00.000','Present',NULL),(13,8,'2025-09-13 00:00:00.000','Present',NULL);
/*!40000 ALTER TABLE `studentattendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Subject_classId_fkey` (`classId`),
  CONSTRAINT `Subject_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'English',NULL,1,'2025-07-24 14:09:22.535','2025-07-24 14:09:22.535'),(2,'Telugu',NULL,2,'2025-07-24 14:16:01.327','2025-07-24 14:16:01.327'),(3,'Telugu',NULL,1,'2025-07-24 14:16:20.155','2025-07-24 14:16:20.155'),(4,'Maths',NULL,1,'2025-07-24 14:16:25.803','2025-07-24 14:16:25.803'),(5,'Games',NULL,1,'2025-07-24 14:16:29.521','2025-07-24 14:16:29.521'),(6,'Dance',NULL,1,'2025-07-24 14:16:35.911','2025-07-24 14:16:35.911'),(7,'English',NULL,2,'2025-08-08 15:29:30.497','2025-08-08 15:29:30.497');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term`
--

DROP TABLE IF EXISTS `term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `term` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feeId` int NOT NULL,
  `termNumber` int NOT NULL,
  `amount` double NOT NULL,
  `dueDate` datetime(3) NOT NULL,
  `isPaid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Term_feeId_fkey` (`feeId`),
  CONSTRAINT `Term_feeId_fkey` FOREIGN KEY (`feeId`) REFERENCES `feedetails` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term`
--

LOCK TABLES `term` WRITE;
/*!40000 ALTER TABLE `term` DISABLE KEYS */;
INSERT INTO `term` VALUES (10,4,1,332,'2024-07-01 00:00:00.000',0),(11,4,2,332,'2024-09-01 00:00:00.000',0),(12,4,3,332,'2024-11-01 00:00:00.000',0),(13,5,1,332,'2024-07-01 00:00:00.000',0),(14,5,2,332,'2024-09-01 00:00:00.000',0),(15,5,3,332,'2024-11-01 00:00:00.000',0),(19,7,1,3000,'2024-07-01 00:00:00.000',0),(20,7,2,3000,'2024-09-01 00:00:00.000',0),(21,7,3,3000,'2024-11-01 00:00:00.000',0),(43,1,1,16667,'2024-07-01 00:00:00.000',0),(44,1,2,16667,'2024-09-01 00:00:00.000',0),(45,1,3,16667,'2024-11-01 00:00:00.000',0),(52,3,1,333,'2024-07-01 00:00:00.000',0),(53,3,2,333,'2024-09-01 00:00:00.000',0),(54,3,3,333,'2024-11-01 00:00:00.000',0),(55,2,1,3333,'2024-07-01 00:00:00.000',0),(56,2,2,3333,'2024-09-01 00:00:00.000',0),(57,2,3,3333,'2024-11-01 00:00:00.000',0),(58,8,1,370,'2024-07-01 00:00:00.000',0),(59,8,2,370,'2024-09-01 00:00:00.000',0),(60,8,3,370,'2024-11-01 00:00:00.000',0),(61,6,1,3333,'2024-07-01 00:00:00.000',0),(62,6,2,3333,'2024-09-01 00:00:00.000',0),(63,6,3,3333,'2024-11-01 00:00:00.000',0);
/*!40000 ALTER TABLE `term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeperiod`
--

DROP TABLE IF EXISTS `timeperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeperiod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `periodName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startDate` datetime(3) NOT NULL,
  `endDate` datetime(3) NOT NULL,
  `startTime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endTime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacherId` int NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `subjectId` int NOT NULL,
  `classId` int NOT NULL,
  `sectionId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TimePeriod_teacherId_fkey` (`teacherId`),
  KEY `TimePeriod_subjectId_fkey` (`subjectId`),
  KEY `TimePeriod_classId_fkey` (`classId`),
  KEY `TimePeriod_sectionId_fkey` (`sectionId`),
  CONSTRAINT `TimePeriod_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `TimePeriod_sectionId_fkey` FOREIGN KEY (`sectionId`) REFERENCES `section` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `TimePeriod_subjectId_fkey` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `TimePeriod_teacherId_fkey` FOREIGN KEY (`teacherId`) REFERENCES `staff` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeperiod`
--

LOCK TABLES `timeperiod` WRITE;
/*!40000 ALTER TABLE `timeperiod` DISABLE KEYS */;
INSERT INTO `timeperiod` VALUES (1,'English','2025-08-07 00:00:00.000','2025-08-30 00:00:00.000','18:00','19:37',1,1,'2025-08-12 14:02:38.422','2025-08-15 12:09:49.340',6,1,1),(2,'Maths','2025-08-04 00:00:00.000','2025-08-30 00:00:00.000','21:55','21:01',12,1,'2025-08-12 16:25:43.782','2025-08-12 16:25:43.782',4,1,1),(3,'Telugu','2025-08-01 00:00:00.000','2025-08-30 00:00:00.000','09:00','10:00',1,1,'2025-08-15 12:13:36.881','2025-08-15 12:13:36.881',3,1,2);
/*!40000 ALTER TABLE `timeperiod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'myschool'
--

--
-- Dumping routines for database 'myschool'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-14 23:16:52
