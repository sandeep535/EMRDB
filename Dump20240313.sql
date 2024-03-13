-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: emr
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
INSERT INTO `allergies` VALUES (1,'asdasd',1,'asdasd',14,NULL,NULL,NULL,NULL,NULL,NULL),(2,'zxczxc',1,'zxczxc',14,NULL,NULL,NULL,NULL,NULL,NULL),(52,'zxczxc',1,'zxczxc',14,603,152,NULL,NULL,NULL,NULL),(53,'asd',1,'asd',15,652,152,NULL,NULL,NULL,NULL),(102,'asdasd',1,'asd',15,702,452,NULL,NULL,NULL,NULL),(103,'Allergy1',1,'sdssdf',15,752,502,NULL,NULL,NULL,NULL);
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
INSERT INTO `allergies_seq` VALUES (201);
/*!40000 ALTER TABLE `allergies_seq` ENABLE KEYS */;
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
  PRIMARY KEY (`drugid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs_list`
--

LOCK TABLES `drugs_list` WRITE;
/*!40000 ALTER TABLE `drugs_list` DISABLE KEYS */;
INSERT INTO `drugs_list` VALUES (1,'Druug_1',1,'D001'),(2,'Druug_2',1,'D002'),(3,'Druug_3',1,'D003');
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
INSERT INTO `drugs_list_seq` VALUES (1);
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
INSERT INTO `emr_diagnosis` VALUES (1,NULL,102,302,1,NULL,NULL,NULL,NULL),(2,'dmk',53,402,1,NULL,NULL,NULL,NULL),(52,'Notes checking updated',53,452,1,NULL,NULL,NULL,NULL),(352,'Diagonis',53,502,1,NULL,NULL,NULL,NULL),(402,'Headache',53,553,1,NULL,NULL,NULL,NULL),(452,'fgdfg',53,503,1,NULL,NULL,NULL,NULL),(502,'dsvsdv',53,602,1,NULL,NULL,NULL,NULL),(503,'dfsdf',152,603,1,NULL,NULL,NULL,NULL),(552,'xcx',152,652,1,NULL,NULL,NULL,NULL),(602,'Dia notes sdsd',452,702,1,NULL,NULL,NULL,NULL),(603,'sdvsdv',502,752,1,NULL,NULL,NULL,NULL);
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
INSERT INTO `emr_diagnosis_seq` VALUES (701);
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
INSERT INTO `emr_notes` VALUES (1,NULL,302,102,1,NULL,NULL,NULL,NULL),(2,'kdvnv',402,53,1,NULL,NULL,NULL,NULL),(52,'General notes updated',452,53,1,NULL,NULL,NULL,NULL),(152,'General notes',502,53,1,NULL,NULL,NULL,NULL),(202,'The patient is suffering from headache',553,53,1,NULL,NULL,NULL,NULL),(252,'dfgdfg',503,53,1,NULL,NULL,NULL,NULL),(302,'sdcsdc',602,53,1,NULL,NULL,NULL,NULL),(303,'sdsds',603,152,1,NULL,NULL,NULL,NULL),(352,'sd',652,152,1,NULL,NULL,NULL,NULL),(402,'gENRAL NOTES',702,452,1,NULL,NULL,NULL,NULL),(403,'ssdfsdfsd',752,502,1,NULL,NULL,NULL,NULL);
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
INSERT INTO `emr_notes_seq` VALUES (501);
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
INSERT INTO `emr_prescriptions` VALUES (1,1,'1','MG','sdlk','2023-12-14 00:00:00','',1,302,102,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'100','mg','Oral 2 times daily','2023-12-25 00:00:00','instructions added',1,402,53,1,NULL,'2023-12-29 00:00:00',NULL,NULL,NULL,NULL),(52,1,'20','mg','Oral daily once','2023-08-12 00:00:00','Instructions',1,452,53,1,NULL,'2023-08-12 00:00:00',NULL,NULL,NULL,NULL),(102,2,'23','mg','sass','2024-01-03 00:00:00','ss',1,452,53,1,NULL,'2024-01-13 00:00:00',NULL,NULL,NULL,NULL),(152,3,'25','mh','sdasd','2024-01-03 00:00:00','zczxczxc',1,452,53,1,NULL,'2024-01-19 00:00:00',NULL,NULL,NULL,NULL),(202,1,'100','mg','nsdjsnd','2024-01-01 00:00:00','xcxc',1,502,53,1,NULL,'2024-01-26 00:00:00',NULL,NULL,NULL,NULL),(252,1,'100','mg','Oral three times day','2024-01-06 00:00:00','take before meals',1,553,53,1,NULL,'2024-01-13 00:00:00',NULL,NULL,NULL,NULL),(302,1,'23','mg','sdfsdf','2024-01-02 00:00:00','fgdfg',1,503,53,1,NULL,'2024-01-23 00:00:00',NULL,NULL,NULL,NULL),(352,2,'231','mg','dsfs','2024-01-02 00:00:00','sdfsdfsd',1,503,53,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(402,2,'111','sd','sadasd','2024-01-15 00:00:00',NULL,1,602,53,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(403,1,'11','ng','sdsdf','2024-01-03 00:00:00','zczxc',1,603,152,1,NULL,'2024-01-05 00:00:00',NULL,NULL,NULL,NULL),(452,3,'22','ad','sad','2024-01-02 00:00:00','zxczxc',1,652,152,1,NULL,'2024-01-24 00:00:00',NULL,NULL,NULL,NULL),(502,1,'11','f','asd','2024-01-01 00:00:00','sdas',1,702,452,1,'Druug_1','2024-01-25 00:00:00',NULL,NULL,NULL,NULL),(503,1,'11','mg','sdnd sjkdn','2024-01-02 00:00:00',NULL,1,752,502,1,'Druug_1','2024-01-24 00:00:00',NULL,NULL,NULL,NULL);
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
INSERT INTO `emr_prescriptions_seq` VALUES (601);
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
INSERT INTO `emr_registration_seq` VALUES (651);
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
INSERT INTO `lookup` VALUES (1,'MALE','GENDER','Male'),(2,'FEMALE','GENDER','Female'),(3,'OTHERS','GENDER','Others'),(4,'MR','SALUTATION','Mr'),(5,'MRS','SALUTATION','Mrs'),(6,'MIS','SALUTATION','Mis'),(7,'DR','SALUTATION','DR'),(8,'BABY','SALUTATION','Baby'),(9,'GNMEDICINE','SPECILAITY','Specilaity'),(10,'DENTAIL','SPECILAITY','Dental'),(11,'PHYSCHLOGY','SPECILAITY','Physchlogy'),(12,'GENERAL','VISIT_TYPES','Genral'),(13,'EMR','VISIT_TYPES','Emergency'),(14,'LOW','ALLERGY_SEVERITY','Low'),(15,'MODERATE','ALLERGY_SEVERITY','Moderate'),(16,'LOW','ALLERGY_SEVERITY','Low');
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
INSERT INTO `masterdata` VALUES (1,'VISIT_STATUS','Active',1),(2,'VISIT_STATUS','In-active',1),(3,'VISIT_STATUS','Visit Started',1),(4,'VISIT_STATUS','Visit Completed',1),(5,'VISIT_STATUS','Visit Canceled',1),(6,'ROLE','Admin',1),(7,'ROLE','Doctor',1),(8,'ROLE','Nurse',1);
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
INSERT INTO `roletaksactions` VALUES (1,1,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(2,2,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(3,3,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(4,4,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '',NULL),(5,5,1,1,NULL,'2024-03-05 18:09:07.119000',1,NULL,_binary '\0',NULL),(6,1,1,1,1,'2024-03-05 18:23:48.772000',1,NULL,_binary '',NULL),(7,2,1,1,1,'2024-03-05 18:23:48.773000',1,NULL,_binary '',NULL),(8,3,1,1,1,'2024-03-05 18:23:48.773000',1,NULL,NULL,NULL),(9,4,1,1,1,'2024-03-05 18:23:48.774000',1,NULL,NULL,NULL),(10,5,1,1,1,'2024-03-05 18:23:48.774000',1,NULL,NULL,NULL),(11,1,1,1,1,'2024-03-05 18:23:52.166000',1,NULL,NULL,NULL),(12,2,1,1,1,'2024-03-05 18:23:52.166000',1,NULL,NULL,NULL),(13,3,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,_binary '',NULL),(14,4,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,NULL,NULL),(15,5,1,1,1,'2024-03-05 18:23:52.172000',1,NULL,NULL,NULL),(16,1,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(17,2,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(18,3,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(19,4,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(20,5,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(21,1,7,1,1,'2024-03-05 18:26:23.613000',1,NULL,NULL,NULL),(22,2,7,1,1,'2024-03-05 18:26:23.613000',1,NULL,NULL,NULL),(23,3,7,1,1,'2024-03-05 18:26:23.613000',1,NULL,_binary '',NULL),(24,4,7,1,1,'2024-03-05 18:26:23.613000',1,NULL,NULL,NULL),(25,5,7,1,1,'2024-03-05 18:26:23.613000',1,NULL,NULL,NULL),(26,1,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(27,2,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(28,3,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,NULL,NULL),(29,4,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,_binary '',NULL),(30,5,8,1,1,'2024-03-05 18:26:27.895000',1,NULL,_binary '',NULL),(52,6,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(53,7,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(54,8,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(55,9,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary ''),(56,10,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0'),(57,11,6,1,NULL,'2024-03-13 19:45:03.474000',1,NULL,_binary '',_binary '\0');
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
INSERT INTO `roletaksactions_seq` VALUES (151);
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
INSERT INTO `specilaity_master` VALUES (52,NULL,NULL),(53,NULL,NULL),(102,NULL,NULL),(152,NULL,NULL),(153,NULL,NULL),(202,NULL,NULL),(252,NULL,NULL),(302,NULL,NULL),(352,NULL,NULL),(353,NULL,NULL),(402,NULL,NULL),(403,NULL,NULL),(452,NULL,NULL),(453,NULL,NULL),(502,NULL,NULL),(552,NULL,NULL),(602,NULL,NULL),(603,NULL,NULL),(652,NULL,NULL),(653,NULL,NULL);
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
INSERT INTO `specilaity_master_seq` VALUES (751);
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
INSERT INTO `taskactions` VALUES (1,'REGISTRATION','Registration','Screen View','REGISTRATION_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(2,'REGISTRATION','Registration','Save','REGISTRATION_SAVE',1,NULL,NULL,NULL,NULL,0),(3,'VISIT_DAHSBOARD','Visit Dashboard','Screen View','VISIT_DAHSBOARD_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(4,'VISIT_CREATION','Visit Creation','Screen View','VISIT_CREATION_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(5,'VISIT_CREATION','Visit Creation','Save','VISIT_CREATION_SAVE',1,NULL,NULL,NULL,NULL,0),(6,'EMPLOYE_MASTER','Employe Master','EMPLOYE_MASTER_SCREEN_VIEW','EMPLOYE_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(7,'EMPLOYE_MASTER','Employe Master','EMPLOYE_MASTER_SAVE','EMPLOYE_MASTER_SAVE',1,NULL,NULL,NULL,NULL,0),(8,'SERVICE_MASTER','Service Master','SERVICE_MASTER_SCREEN_VIEW','SERVICE_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(9,'ROLES_MASTER','Roles Master','ROLES_MASTER_SCREEN_VIEW','ROLES_MASTER_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,1),(10,'VITALS','Vitals','Vitals Main Screen','VITALS_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,0),(11,'PRESCRIPTIONS','Prescriptions','Prescriptions Main Screen','PRESCRIPTIONS_SCREEN_VIEW',1,NULL,NULL,NULL,NULL,0);
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
  KEY `FKk3wnrbdnfm0634wc157n0mn3t` (`specilaity`),
  KEY `FKtjof2cc86trkjve8e6yh67u4a` (`visittype`),
  CONSTRAINT `FK56llsf1kv9rv1cjjv3e9sqgoo` FOREIGN KEY (`doctor`) REFERENCES `employee_details` (`id`),
  CONSTRAINT `FKi01i24wqyg6x16f52ajd26rms` FOREIGN KEY (`clientid`) REFERENCES `emr_registration` (`seqid`),
  CONSTRAINT `FKk3wnrbdnfm0634wc157n0mn3t` FOREIGN KEY (`specilaity`) REFERENCES `specilaity_master` (`specilaityid`),
  CONSTRAINT `FKtjof2cc86trkjve8e6yh67u4a` FOREIGN KEY (`visittype`) REFERENCES `lookup` (`lookupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_details`
--

LOCK TABLES `visit_details` WRITE;
/*!40000 ALTER TABLE `visit_details` DISABLE KEYS */;
INSERT INTO `visit_details` VALUES (252,102,'Test for user@1',3,'2023-12-16 17:26:39.439000',0,0,1,102,12,NULL,NULL,NULL,NULL,NULL),(302,102,'Reason2',3,'2023-12-16 23:18:24.436000',0,0,2,152,13,NULL,NULL,NULL,NULL,NULL),(303,53,'Reasoner',1,'2023-12-17 12:28:58.693000',0,0,1,153,12,NULL,NULL,NULL,NULL,NULL),(352,53,'Checking for test1 24-12-2023',4,'2023-12-24 17:37:01.014000',0,0,1,202,12,NULL,NULL,NULL,NULL,NULL),(402,53,'Check up 25/12',3,'2023-12-25 13:18:15.450000',0,0,1,252,12,NULL,NULL,NULL,NULL,NULL),(452,53,'check',3,'2023-12-31 15:35:42.479000',0,0,1,302,12,NULL,NULL,NULL,NULL,NULL),(502,53,'Test visit',4,'2024-01-04 20:24:52.668000',0,0,1,352,12,NULL,NULL,NULL,NULL,NULL),(503,53,'reason',3,'2024-01-05 11:07:38.245000',0,0,1,353,12,NULL,NULL,NULL,NULL,NULL),(552,252,'Tests',1,'2024-01-06 00:00:00.000000',0,0,2,402,12,13,NULL,NULL,NULL,NULL),(553,53,'Headache',4,'2024-01-06 00:00:00.000000',0,0,2,403,12,15,NULL,NULL,NULL,NULL),(602,53,'Checking allerigies',3,'2024-01-08 00:00:00.000000',0,0,1,452,12,12,NULL,NULL,NULL,NULL),(603,152,'asd',3,'2024-01-09 00:00:00.000000',0,0,1,453,12,12,NULL,NULL,NULL,NULL),(652,152,'asdasd',3,'2024-01-09 00:00:00.000000',0,0,2,502,12,12,NULL,NULL,NULL,NULL),(702,452,'asdasd',3,'2024-01-09 00:00:00.000000',0,0,3,552,12,12,NULL,NULL,NULL,NULL),(752,502,'Test',3,'2024-01-09 00:00:00.000000',0,0,2,602,12,12,NULL,NULL,NULL,NULL),(753,503,'tesr',3,'2024-01-11 00:00:00.000000',0,1000,2,603,12,12,NULL,NULL,NULL,NULL),(802,552,'ss',1,'2024-03-12 00:00:00.000000',0,1000,1,652,12,12,1,'2024-03-12 13:31:49.996000',1,NULL),(803,553,'Abdominal Pain',1,'2024-03-12 00:00:00.000000',0,470,1,653,12,10,1,'2024-03-12 21:50:09.093000',1,NULL);
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
INSERT INTO `visit_details_seq` VALUES (901);
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
  `serviceid` bigint DEFAULT NULL,
  `serviceprice` float DEFAULT NULL,
  `status` int DEFAULT NULL,
  `visitid` bigint DEFAULT NULL,
  `servicetotalamount` float DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `edited_by` bigint DEFAULT NULL,
  `edited_on` datetime(6) DEFAULT NULL,
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
INSERT INTO `visit_services` VALUES (252,1,0,2,300,NULL,252,300,NULL,NULL,NULL,NULL),(253,1,0,1,200,NULL,252,200,NULL,NULL,NULL,NULL),(302,1,0,1,200,NULL,302,200,NULL,NULL,NULL,NULL),(303,1,0,1,200,NULL,303,200,NULL,NULL,NULL,NULL),(352,1,10,1,200,NULL,352,190,NULL,NULL,NULL,NULL),(353,1,0,2,300,NULL,352,300,NULL,NULL,NULL,NULL),(402,1,10,1,200,NULL,402,190,NULL,NULL,NULL,NULL),(452,1,0,1,200,NULL,452,200,NULL,NULL,NULL,NULL),(502,1,100,4,1000,NULL,502,900,NULL,NULL,NULL,NULL),(503,1,0,4,1000,NULL,503,1000,NULL,NULL,NULL,NULL),(504,1,100,52,100,NULL,503,0,NULL,NULL,NULL,NULL),(552,1,11,1,200,NULL,552,189,NULL,NULL,NULL,NULL),(553,1,100,4,1000,NULL,553,900,NULL,NULL,NULL,NULL),(554,1,50,1,200,NULL,553,150,NULL,NULL,NULL,NULL),(602,1,111,4,1000,NULL,602,889,NULL,NULL,NULL,NULL),(603,1,11,1,200,NULL,603,189,NULL,NULL,NULL,NULL),(652,0,0,2,300,NULL,652,0,NULL,NULL,NULL,NULL),(702,0,0,4,1000,NULL,702,0,NULL,NULL,NULL,NULL),(752,1,100,4,1000,NULL,752,900,NULL,NULL,NULL,NULL),(753,1,0,4,1000,NULL,753,1000,NULL,NULL,NULL,NULL),(802,1,0,4,1000,NULL,802,1000,1,'2024-03-12 13:31:50.024000',1,NULL),(803,1,10,1,200,NULL,803,190,1,'2024-03-12 21:50:09.093000',1,NULL),(804,1,20,2,300,NULL,803,280,1,'2024-03-12 21:50:09.093000',1,NULL);
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
INSERT INTO `visit_services_seq` VALUES (901);
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
INSERT INTO `vitals` VALUES (52,303,53,170,56,12,80,110,98,12,98,1,NULL,NULL,NULL,NULL),(102,302,102,112,122,12,221,221,22,22,22,1,NULL,NULL,NULL,NULL),(152,402,53,170,78,28,80,110,98,111,99,1,NULL,NULL,NULL,NULL),(202,452,53,180,67,88,80,110,98,10,98,1,NULL,NULL,NULL,NULL),(352,502,53,170,78,78,110,80,98,110,98,1,NULL,NULL,NULL,NULL),(402,553,53,183,80,NULL,110,70,60,24,36,1,NULL,NULL,NULL,NULL),(452,503,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(502,602,53,11,21,21,11,11,11,11,11,1,NULL,NULL,NULL,NULL),(503,603,152,33,33,33,33,33,33,33,33,1,NULL,NULL,NULL,NULL),(552,652,152,121,122,2,21,2,1,2,21,1,NULL,NULL,NULL,NULL),(602,702,452,178,76,87,110,110,11,12,98,1,NULL,NULL,NULL,NULL),(603,752,502,12,22,12,122,22,22,223,NULL,1,NULL,NULL,NULL,NULL);
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
INSERT INTO `vitals_seq` VALUES (701);
/*!40000 ALTER TABLE `vitals_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-13 21:19:31
