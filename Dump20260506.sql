CREATE DATABASE  IF NOT EXISTS `eldercare_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eldercare_db`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: eldercare_db
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `type_id` bigint NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `bed` varchar(20) DEFAULT NULL,
  `emr_contact_name` varchar(150) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `room_number` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKk0bk0nkclkw9ntulbyryg8i9n` (`patient_id`),
  CONSTRAINT `FKnw6xm39vjtktr3836dq1oskbf` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission`
--

LOCK TABLES `admission` WRITE;
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` VALUES (1,'sandeep','2026-05-04 18:58:39.627656','sandeep','2026-05-04 19:06:34.476771','2026-05-08','1','902112','2122123','201','STABLE',1),(2,'sandeep','2026-05-04 19:41:33.029813',NULL,NULL,'2026-05-01','B','902112','2122123','202','STABLE',2),(3,'sandeep','2026-05-05 18:30:06.895530',NULL,NULL,'2026-05-05','C','902112','2122123','201','WARNING',3);
/*!40000 ALTER TABLE `admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alert` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `reason` text,
  `resolved` bit(1) NOT NULL,
  `type_of_screen` varchar(100) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmkv578w7sv5lq36fq7iwwwu8p` (`patient_id`),
  CONSTRAINT `FKmkv578w7sv5lq36fq7iwwwu8p` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
INSERT INTO `alert` VALUES (1,'sandeep','2026-05-05 17:43:46.152428',NULL,NULL,'Systolic BP','HIGH','Above normal (> 139)',_binary '\0','VITALS','160',2),(2,'sandeep','2026-05-05 17:43:46.159254',NULL,NULL,'Diastolic BP','HIGH','Above normal (> 89)',_binary '\0','VITALS','90',2),(3,'sandeep','2026-05-05 17:43:46.166134',NULL,NULL,'Temperature','MEDIUM','Above normal (> 99.5)',_binary '\0','VITALS','100',2),(4,'sandeep','2026-05-05 18:32:04.329861',NULL,NULL,'Systolic BP','HIGH','Above normal (> 139)',_binary '\0','VITALS','190',3),(5,'sandeep','2026-05-05 18:32:04.335433',NULL,NULL,'Diastolic BP','HIGH','Above normal (> 89)',_binary '\0','VITALS','90',3);
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_failure`
--

DROP TABLE IF EXISTS `audit_failure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_failure` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) NOT NULL,
  `data_json` longtext,
  `failure_reason` text,
  `patient_id` bigint DEFAULT NULL,
  `resolved` bit(1) DEFAULT NULL,
  `retry_count` int DEFAULT NULL,
  `type_screen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_failure`
--

LOCK TABLES `audit_failure` WRITE;
/*!40000 ALTER TABLE `audit_failure` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_failure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `data_json` longtext NOT NULL,
  `patient_id` bigint NOT NULL,
  `type_screen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
INSERT INTO `audit_log` VALUES (1,'system','2026-05-04 18:38:11.091003','{\"id\":1,\"primaryPhysicianId\":53,\"primaryPhysicianName\":\"Robert Anderson\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Allergies\",\"medicalAlerts\":\"Medical Alerts\\n\",\"currentMedication\":null,\"bloodType\":\"A_POS\",\"bloodTypeDisplay\":\"A+\",\"patientId\":1}',1,'MEDICAL'),(2,'system','2026-05-04 18:44:18.581959','{\"id\":1,\"primaryPhysicianId\":53,\"primaryPhysicianName\":\"Robert Anderson\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Allergies\",\"medicalAlerts\":\"Medical Alerts\\n\",\"currentMedication\":\"Current Medications\",\"bloodType\":\"A_POS\",\"bloodTypeDisplay\":\"A+\",\"patientId\":1}',1,'MEDICAL'),(3,'system','2026-05-04 18:44:40.487508','{\"id\":1,\"primaryPhysicianId\":53,\"primaryPhysicianName\":\"Robert Anderson\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Allergies\",\"medicalAlerts\":\"Medical Alerts\\n\",\"currentMedication\":\"Current Medications\\n\",\"bloodType\":\"A_POS\",\"bloodTypeDisplay\":\"A+\",\"patientId\":1}',1,'MEDICAL'),(4,'system','2026-05-04 18:47:16.538317','{\"id\":1,\"primaryPhysicianId\":53,\"primaryPhysicianName\":\"Robert Anderson\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Allergies\",\"medicalAlerts\":\"Medical Alerts\\n\",\"currentMedication\":\"Current Medications\\n\",\"bloodType\":\"A_POS\",\"bloodTypeDisplay\":\"A+\",\"patientId\":1}',1,'MEDICAL'),(5,'system','2026-05-04 18:58:17.012367','{\"id\":1,\"primaryPhysicianId\":53,\"primaryPhysicianName\":\"Robert Anderson\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Allergies\",\"medicalAlerts\":\"Medical Alerts\\n\",\"currentMedication\":\"Current Medications\\n\",\"bloodType\":\"A_POS\",\"bloodTypeDisplay\":\"A+\",\"patientId\":1}',1,'MEDICAL'),(6,'system','2026-05-04 18:58:39.643928','{\"id\":1,\"admissionDate\":\"2026-05-08\",\"roomNumber\":\"201\",\"bed\":\"1\",\"status\":\"STABLE\",\"statusDisplay\":\"Stable\",\"emrContactName\":\"902112\",\"phoneNumber\":\"2122123\",\"patientId\":1}',1,'ADMISSION'),(7,'system','2026-05-04 19:06:30.784718','{\"id\":1,\"primaryPhysicianId\":53,\"primaryPhysicianName\":\"Robert Anderson\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Allergies\",\"medicalAlerts\":\"Medical Alerts\\n\",\"currentMedication\":\"Current Medications\\n\",\"bloodType\":\"A_POS\",\"bloodTypeDisplay\":\"A+\",\"patientId\":1}',1,'MEDICAL'),(8,'system','2026-05-04 19:06:34.474774','{\"id\":1,\"admissionDate\":\"2026-05-08\",\"roomNumber\":\"201\",\"bed\":\"1\",\"status\":\"STABLE\",\"statusDisplay\":\"Stable\",\"emrContactName\":\"902112\",\"phoneNumber\":\"2122123\",\"patientId\":1}',1,'ADMISSION_UPDATE'),(9,'system','2026-05-04 19:18:03.410638','{\"id\":1,\"primaryPhysicianId\":53,\"primaryPhysicianName\":\"Robert Anderson\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Allergies\",\"medicalAlerts\":\"Medical Alerts\\n\",\"currentMedication\":\"Current Medications\\n\",\"bloodType\":\"A_POS\",\"bloodTypeDisplay\":\"A+\",\"patientId\":1}',1,'MEDICAL'),(10,'system','2026-05-04 19:18:04.246507','{\"id\":1,\"admissionDate\":\"2026-05-08\",\"roomNumber\":\"201\",\"bed\":\"1\",\"status\":\"STABLE\",\"statusDisplay\":\"Stable\",\"emrContactName\":\"902112\",\"phoneNumber\":\"2122123\",\"patientId\":1}',1,'ADMISSION_UPDATE'),(11,'system','2026-05-04 19:18:07.612943','{\"id\":1,\"notes\":\"Notes\",\"patientId\":1,\"createdBy\":{\"userId\":1,\"username\":\"sandeep\",\"userType\":\"NURSE\",\"firstName\":null,\"lastName\":null,\"email\":null,\"phoneNumber\":null,\"designation\":null},\"createdOn\":\"2026-05-04T19:18:07.6062297\"}',1,'NOTES'),(12,'system','2026-05-04 19:41:17.814649','{\"id\":2,\"primaryPhysicianId\":55,\"primaryPhysicianName\":\"William Thomas\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Allergies\",\"medicalAlerts\":\"Allergies\",\"currentMedication\":\"Allergies\",\"bloodType\":\"A_NEG\",\"bloodTypeDisplay\":\"A-\",\"patientId\":2}',2,'MEDICAL'),(13,'system','2026-05-04 19:41:33.034097','{\"id\":2,\"admissionDate\":\"2026-05-01\",\"roomNumber\":\"202\",\"bed\":\"B\",\"status\":\"STABLE\",\"statusDisplay\":\"Stable\",\"emrContactName\":\"902112\",\"phoneNumber\":\"2122123\",\"patientId\":2}',2,'ADMISSION'),(14,'system','2026-05-04 19:41:36.864881','{\"id\":2,\"notes\":\"asdasd\",\"patientId\":2,\"createdBy\":{\"userId\":1,\"username\":\"sandeep\",\"userType\":\"NURSE\",\"firstName\":null,\"lastName\":null,\"email\":null,\"phoneNumber\":null,\"designation\":null},\"createdOn\":\"2026-05-04T19:41:36.8566493\"}',2,'NOTES'),(15,'system','2026-05-04 21:09:59.466044','{\"id\":1,\"systolic\":150,\"diastolic\":90,\"hr\":90,\"temp\":110,\"spo2\":57,\"notes\":\"Note vitals\",\"hasAlert\":true,\"alertResolved\":false,\"patientId\":1,\"recordedAt\":\"2026-05-04T21:09:59.4519492\"}',1,'VITALS'),(16,'system','2026-05-05 13:18:03.148761','{\"id\":1,\"patientId\":1,\"diagnosisName\":\"Acne\",\"diagnosisBy\":{\"userId\":53,\"username\":\"doctor1\",\"userType\":\"DOCTOR\",\"firstName\":\"Robert\",\"lastName\":\"Anderson\",\"email\":\"robert.anderson@eldercare.com\",\"phoneNumber\":\"555-0201\",\"designation\":\"Geriatrician\"},\"diagnosisDate\":\"2026-05-05\",\"notes\":\"notes\",\"status\":\"ACTIVE\",\"statusDisplay\":\"Active\",\"diagnosisMasterId\":79,\"diagnosisMasterName\":\"Acne\",\"icdCode\":\"L70.0\"}',1,'DIAGNOSIS'),(17,'system','2026-05-05 13:19:45.826274','{\"id\":2,\"patientId\":1,\"diagnosisName\":\"Appendicitis\",\"diagnosisBy\":{\"userId\":54,\"username\":\"doctor2\",\"userType\":\"DOCTOR\",\"firstName\":\"Jennifer\",\"lastName\":\"Taylor\",\"email\":\"jennifer.taylor@eldercare.com\",\"phoneNumber\":\"555-0202\",\"designation\":\"Internal Medicine\"},\"diagnosisDate\":\"2026-05-05\",\"notes\":\"as\",\"status\":\"ACTIVE\",\"statusDisplay\":\"Active\",\"diagnosisMasterId\":40,\"diagnosisMasterName\":\"Appendicitis\",\"icdCode\":\"K37\"}',1,'DIAGNOSIS'),(18,'system','2026-05-05 14:15:50.664650','{\"id\":3,\"notes\":\"Notes\",\"noteType\":null,\"noteTypeDisplay\":null,\"patientId\":1,\"createdBy\":{\"userId\":1,\"username\":\"sandeep\",\"userType\":\"NURSE\",\"firstName\":null,\"lastName\":null,\"email\":null,\"phoneNumber\":null,\"designation\":null},\"createdOn\":\"2026-05-05T14:15:50.583358\"}',1,'NOTES'),(19,'system','2026-05-05 14:21:14.011993','{\"id\":1,\"patientId\":1,\"noteTitle\":\"Progress notes\",\"noteDate\":\"2026-05-05T14:21:00\",\"notes\":\"wd\",\"notesType\":\"PROGRESS\",\"notesTypeDisplay\":\"Progress Note\",\"priority\":\"HIGH\",\"priorityDisplay\":\"High\",\"recordedBy\":{\"userId\":2,\"username\":\"sandeep535\",\"userType\":\"NURSE\",\"firstName\":\"Sandeep\",\"lastName\":\"Mandalapu\",\"email\":\"sa@gmail.com\",\"phoneNumber\":\"90321510198\",\"designation\":\"Nurse\"},\"createdOn\":\"2026-05-05T14:21:13.9901149\"}',1,'CLINICAL_NOTE'),(20,'system','2026-05-05 16:21:19.059262','{\"id\":1,\"patientId\":1,\"surgeryName\":\"Hip Replacement\",\"surgeryDate\":\"2026-05-05\",\"surgeryType\":\"ELECTIVE\",\"surgeryTypeDisplay\":\"Elective\",\"surgeon\":\"Johan\",\"hospital\":\"General Hospital\",\"procedureCode\":\"CPT\",\"notes\":\"as\",\"createdOn\":\"2026-05-05T16:21:18.9887712\"}',1,'MEDICAL_HISTORY'),(21,'system','2026-05-05 17:43:46.154754','{\"id\":2,\"systolic\":160,\"diastolic\":90,\"hr\":90,\"temp\":100,\"spo2\":98,\"notes\":\"zxdc\",\"hasAlert\":true,\"alertResolved\":false,\"patientId\":2,\"recordedAt\":\"2026-05-05T17:43:46.0829074\"}',2,'VITALS'),(22,'system','2026-05-05 18:29:45.758883','{\"id\":3,\"primaryPhysicianId\":53,\"primaryPhysicianName\":\"Robert Anderson\",\"nurseId\":2,\"nurseName\":\"Sandeep Mandalapu\",\"allergies\":\"Aleriges\",\"medicalAlerts\":\"Medical Alerts\",\"currentMedication\":\"Current Medications\",\"bloodType\":\"AB_NEG\",\"bloodTypeDisplay\":\"AB-\",\"patientId\":3}',3,'MEDICAL'),(23,'system','2026-05-05 18:30:06.908918','{\"id\":3,\"admissionDate\":\"2026-05-05\",\"roomNumber\":\"201\",\"bed\":\"C\",\"status\":\"WARNING\",\"statusDisplay\":\"Monitor\",\"emrContactName\":\"902112\",\"phoneNumber\":\"2122123\",\"patientId\":3}',3,'ADMISSION'),(24,'system','2026-05-05 18:30:09.165841','{\"id\":4,\"notes\":\"ass\",\"noteType\":null,\"noteTypeDisplay\":null,\"patientId\":3,\"createdBy\":{\"userId\":1,\"username\":\"sandeep\",\"userType\":\"NURSE\",\"firstName\":null,\"lastName\":null,\"email\":null,\"phoneNumber\":null,\"designation\":null},\"createdOn\":\"2026-05-05T18:30:09.1447104\"}',3,'NOTES'),(25,'system','2026-05-05 18:32:04.327242','{\"id\":3,\"systolic\":190,\"diastolic\":90,\"hr\":90,\"temp\":98,\"spo2\":98,\"notes\":\"zxcsd\",\"hasAlert\":true,\"alertResolved\":false,\"patientId\":3,\"recordedAt\":\"2026-05-05T18:32:04.3189086\"}',3,'VITALS'),(26,'system','2026-05-05 18:33:17.757361','{\"id\":3,\"patientId\":3,\"diagnosisName\":\"Acute Kidney Injury\",\"diagnosisBy\":{\"userId\":55,\"username\":\"doctor3\",\"userType\":\"DOCTOR\",\"firstName\":\"William\",\"lastName\":\"Thomas\",\"email\":\"william.thomas@eldercare.com\",\"phoneNumber\":\"555-0203\",\"designation\":\"Cardiologist\"},\"diagnosisDate\":\"2026-05-05\",\"notes\":\"asas\",\"status\":\"ACTIVE\",\"statusDisplay\":\"Active\",\"diagnosisMasterId\":11,\"diagnosisMasterName\":\"Acute Kidney Injury\",\"icdCode\":\"N17\"}',3,'DIAGNOSIS'),(27,'system','2026-05-05 18:34:02.990981','{\"id\":2,\"patientId\":3,\"noteTitle\":\"Progress notes\",\"noteDate\":\"2026-05-05T18:33:00\",\"notes\":\"ass\",\"notesType\":\"PROGRESS\",\"notesTypeDisplay\":\"Progress Note\",\"priority\":\"HIGH\",\"priorityDisplay\":\"High\",\"recordedBy\":{\"userId\":2,\"username\":\"sandeep535\",\"userType\":\"NURSE\",\"firstName\":\"Sandeep\",\"lastName\":\"Mandalapu\",\"email\":\"sa@gmail.com\",\"phoneNumber\":\"90321510198\",\"designation\":\"Nurse\"},\"createdOn\":\"2026-05-05T18:34:02.9774127\"}',3,'CLINICAL_NOTE'),(28,'system','2026-05-05 18:34:36.919207','{\"id\":2,\"patientId\":3,\"surgeryName\":\"Surg\",\"surgeryDate\":\"2026-05-05\",\"surgeryType\":\"ELECTIVE\",\"surgeryTypeDisplay\":\"Elective\",\"surgeon\":\"Johan\",\"hospital\":\"General Hospital\",\"procedureCode\":\"CPT\",\"notes\":\"asasd\",\"createdOn\":\"2026-05-05T18:34:36.9108059\"}',3,'MEDICAL_HISTORY'),(29,'system','2026-05-06 22:58:55.587604','{\"id\":1,\"patientId\":1,\"medicationMasterId\":10,\"drugName\":\"Aspirin\",\"rxNorm\":\"8086\",\"orderPriority\":\"ROUTINE\",\"indication\":\"2c\",\"strengthValue\":\"75\",\"strengthUnit\":\"IU\",\"doseForm\":\"INHALER\",\"doseAmount\":\"1 tablet 10ml\",\"route\":\"PO\",\"frequency\":\"Q4H\",\"prnReason\":null,\"prnMaxDose\":null,\"ivRate\":null,\"ivRateUnit\":\"mL/hr\",\"ivVolume\":null,\"startDateTime\":\"2026-05-06T22:56:00\",\"stopDateTime\":\"2026-05-16T22:56:00\",\"duration\":\"fsdf\",\"orderingProvider\":\"wdasdas\",\"sig\":\"sdsd\",\"adminInstructions\":\"sdfs\",\"pharmacyComments\":\"sdf\",\"ackAllergiesReviewed\":true,\"ackDupeReviewed\":true,\"active\":true}',1,'MEDICATION');
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinical_note`
--

DROP TABLE IF EXISTS `clinical_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_note` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `notes` text NOT NULL,
  `notes_type` varchar(50) NOT NULL,
  `priority` varchar(50) NOT NULL,
  `patient_id` bigint NOT NULL,
  `recorded_by` bigint DEFAULT NULL,
  `note_date` datetime(6) DEFAULT NULL,
  `note_title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnrqtyehv5o1gi62mnbspafyaq` (`patient_id`),
  KEY `FKrueb3kvvx4v5fohlony3gtmm1` (`recorded_by`),
  CONSTRAINT `FKnrqtyehv5o1gi62mnbspafyaq` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKrueb3kvvx4v5fohlony3gtmm1` FOREIGN KEY (`recorded_by`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinical_note`
--

LOCK TABLES `clinical_note` WRITE;
/*!40000 ALTER TABLE `clinical_note` DISABLE KEYS */;
INSERT INTO `clinical_note` VALUES (1,'sandeep','2026-05-05 14:21:13.990115',NULL,NULL,'wd','PROGRESS','HIGH',1,2,'2026-05-05 14:21:00.000000','Progress notes'),(2,'sandeep','2026-05-05 18:34:02.977413',NULL,NULL,'ass','PROGRESS','HIGH',3,2,'2026-05-05 18:33:00.000000','Progress notes');
/*!40000 ALTER TABLE `clinical_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnoses`
--

DROP TABLE IF EXISTS `diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnoses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `diagnosis_by` varchar(150) DEFAULT NULL,
  `diagnosis_name` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `diagnosis_master_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  `diagnosis_date` date DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `FKhmo6l4i8qev69p215jcuc7jbh` (`diagnosis_master_id`),
  KEY `FKt9hvxswnvtsynx22sp8q7ponf` (`patient_id`),
  CONSTRAINT `FKhmo6l4i8qev69p215jcuc7jbh` FOREIGN KEY (`diagnosis_master_id`) REFERENCES `diagnosis_master` (`id`),
  CONSTRAINT `FKt9hvxswnvtsynx22sp8q7ponf` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnoses`
--

LOCK TABLES `diagnoses` WRITE;
/*!40000 ALTER TABLE `diagnoses` DISABLE KEYS */;
INSERT INTO `diagnoses` VALUES (1,'sandeep','2026-05-05 13:18:03.076988',NULL,NULL,'doctor1','Acne','ACTIVE',79,1,'2026-05-05','notes'),(2,'sandeep','2026-05-05 13:19:45.811202',NULL,NULL,'doctor2','Appendicitis','ACTIVE',40,1,'2026-05-05','as'),(3,'sandeep','2026-05-05 18:33:17.746550',NULL,NULL,'doctor3','Acute Kidney Injury','ACTIVE',11,3,'2026-05-05','asas');
/*!40000 ALTER TABLE `diagnoses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis_master`
--

DROP TABLE IF EXISTS `diagnosis_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `diagnosis_name` varchar(200) NOT NULL,
  `icd_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis_master`
--

LOCK TABLES `diagnosis_master` WRITE;
/*!40000 ALTER TABLE `diagnosis_master` DISABLE KEYS */;
INSERT INTO `diagnosis_master` VALUES (1,_binary '','Hypertension','I10'),(2,_binary '','Type 2 Diabetes Mellitus','E11'),(3,_binary '','Type 1 Diabetes Mellitus','E10'),(4,_binary '','Coronary Artery Disease','I25.1'),(5,_binary '','Heart Failure','I50'),(6,_binary '','Atrial Fibrillation','I48'),(7,_binary '','Chronic Obstructive Pulmonary Disease','J44'),(8,_binary '','Asthma','J45'),(9,_binary '','Pneumonia','J18'),(10,_binary '','Chronic Kidney Disease','N18'),(11,_binary '','Acute Kidney Injury','N17'),(12,_binary '','Urinary Tract Infection','N39.0'),(13,_binary '','Stroke','I63'),(14,_binary '','Transient Ischemic Attack','G45.9'),(15,_binary '','Alzheimer Disease','G30'),(16,_binary '','Dementia','F03'),(17,_binary '','Parkinson Disease','G20'),(18,_binary '','Epilepsy','G40'),(19,_binary '','Multiple Sclerosis','G35'),(20,_binary '','Peripheral Neuropathy','G62.9'),(21,_binary '','Osteoarthritis','M19.9'),(22,_binary '','Rheumatoid Arthritis','M06.9'),(23,_binary '','Osteoporosis','M81.0'),(24,_binary '','Gout','M10.9'),(25,_binary '','Anemia','D64.9'),(26,_binary '','Iron Deficiency Anemia','D50.9'),(27,_binary '','Deep Vein Thrombosis','I82.4'),(28,_binary '','Pulmonary Embolism','I26.9'),(29,_binary '','Hypothyroidism','E03.9'),(30,_binary '','Hyperthyroidism','E05.9'),(31,_binary '','Gastroesophageal Reflux Disease','K21.0'),(32,_binary '','Peptic Ulcer Disease','K27'),(33,_binary '','Irritable Bowel Syndrome','K58.9'),(34,_binary '','Crohn Disease','K50.9'),(35,_binary '','Ulcerative Colitis','K51.9'),(36,_binary '','Liver Cirrhosis','K74.6'),(37,_binary '','Non-Alcoholic Fatty Liver Disease','K76.0'),(38,_binary '','Cholecystitis','K81.9'),(39,_binary '','Pancreatitis','K85.9'),(40,_binary '','Appendicitis','K37'),(41,_binary '','Breast Cancer','C50.9'),(42,_binary '','Lung Cancer','C34.9'),(43,_binary '','Colorectal Cancer','C20'),(44,_binary '','Prostate Cancer','C61'),(45,_binary '','Cervical Cancer','C53.9'),(46,_binary '','Ovarian Cancer','C56.9'),(47,_binary '','Bladder Cancer','C67.9'),(48,_binary '','Leukemia','C95.9'),(49,_binary '','Lymphoma','C85.9'),(50,_binary '','Skin Cancer - Melanoma','C43.9'),(51,_binary '','Major Depressive Disorder','F32.9'),(52,_binary '','Generalized Anxiety Disorder','F41.1'),(53,_binary '','Bipolar Disorder','F31.9'),(54,_binary '','Schizophrenia','F20.9'),(55,_binary '','Post-Traumatic Stress Disorder','F43.1'),(56,_binary '','Obsessive Compulsive Disorder','F42.9'),(57,_binary '','Panic Disorder','F41.0'),(58,_binary '','Insomnia','G47.0'),(59,_binary '','Sleep Apnea','G47.3'),(60,_binary '','Migraine','G43.9'),(61,_binary '','Tension Headache','G44.2'),(62,_binary '','Vertigo','H81.1'),(63,_binary '','Cataracts','H26.9'),(64,_binary '','Glaucoma','H40.9'),(65,_binary '','Macular Degeneration','H35.3'),(66,_binary '','Diabetic Retinopathy','H36'),(67,_binary '','Hearing Loss','H91.9'),(68,_binary '','Otitis Media','H66.9'),(69,_binary '','Sinusitis','J32.9'),(70,_binary '','Tonsillitis','J35.0'),(71,_binary '','Bronchitis','J40'),(72,_binary '','Tuberculosis','A15.9'),(73,_binary '','COVID-19','U07.1'),(74,_binary '','Influenza','J11.1'),(75,_binary '','Sepsis','A41.9'),(76,_binary '','Cellulitis','L03.9'),(77,_binary '','Psoriasis','L40.9'),(78,_binary '','Eczema','L30.9'),(79,_binary '','Acne','L70.0'),(80,_binary '','Pressure Ulcer','L89.9'),(81,_binary '','Obesity','E66.9'),(82,_binary '','Malnutrition','E46'),(83,_binary '','Hyperlipidemia','E78.5'),(84,_binary '','Metabolic Syndrome','E88.81'),(85,_binary '','Hyperkalemia','E87.5'),(86,_binary '','Hyponatremia','E87.1'),(87,_binary '','Dehydration','E86.0'),(88,_binary '','Fracture - Hip','S72.9'),(89,_binary '','Fracture - Vertebral','S22.9'),(90,_binary '','Fracture - Wrist','S62.9'),(91,_binary '','Fall Injury','W19'),(92,_binary '','Benign Prostatic Hyperplasia','N40.0'),(93,_binary '','Kidney Stones','N20.0'),(94,_binary '','Polycystic Ovary Syndrome','E28.2'),(95,_binary '','Endometriosis','N80.9'),(96,_binary '','Erectile Dysfunction','N52.9'),(97,_binary '','Peripheral Artery Disease','I73.9'),(98,_binary '','Varicose Veins','I83.9'),(99,_binary '','Aortic Stenosis','I35.0'),(100,_binary '','Myocardial Infarction','I21.9'),(101,_binary '','Cardiac Arrest','I46.9');
/*!40000 ALTER TABLE `diagnosis_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invalidated_token`
--

DROP TABLE IF EXISTS `invalidated_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invalidated_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invalidated_at` datetime(6) NOT NULL,
  `token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invalidated_token`
--

LOCK TABLES `invalidated_token` WRITE;
/*!40000 ALTER TABLE `invalidated_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `invalidated_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_table`
--

DROP TABLE IF EXISTS `master_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `lookup_code` varchar(50) NOT NULL,
  `lookup_item` varchar(100) NOT NULL,
  `lookup_value` varchar(10) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_table`
--

LOCK TABLES `master_table` WRITE;
/*!40000 ALTER TABLE `master_table` DISABLE KEYS */;
INSERT INTO `master_table` VALUES (71,_binary '','A_POS','A+','1','BLOOD_TYPE',NULL,NULL,NULL,NULL),(72,_binary '','A_NEG','A-','2','BLOOD_TYPE',NULL,NULL,NULL,NULL),(73,_binary '','B_POS','B+','3','BLOOD_TYPE',NULL,NULL,NULL,NULL),(74,_binary '','B_NEG','B-','4','BLOOD_TYPE',NULL,NULL,NULL,NULL),(75,_binary '','AB_POS','AB+','5','BLOOD_TYPE',NULL,NULL,NULL,NULL),(76,_binary '','AB_NEG','AB-','6','BLOOD_TYPE',NULL,NULL,NULL,NULL),(77,_binary '','O_POS','O+','7','BLOOD_TYPE',NULL,NULL,NULL,NULL),(78,_binary '','O_NEG','O-','8','BLOOD_TYPE',NULL,NULL,NULL,NULL),(79,_binary '','SPOUSE','Spouse','1','RELATIONSHIP',NULL,NULL,NULL,NULL),(80,_binary '','CHILD','Child','2','RELATIONSHIP',NULL,NULL,NULL,NULL),(81,_binary '','PARENT','Parent','3','RELATIONSHIP',NULL,NULL,NULL,NULL),(82,_binary '','SIBLING','Sibling','4','RELATIONSHIP',NULL,NULL,NULL,NULL),(83,_binary '','GRANDCHILD','Grandchild','5','RELATIONSHIP',NULL,NULL,NULL,NULL),(84,_binary '','FRIEND','Friend','6','RELATIONSHIP',NULL,NULL,NULL,NULL),(85,_binary '','STABLE','Stable','1','PATIENT_STATUS',NULL,NULL,NULL,NULL),(86,_binary '','WARNING','Monitor','2','PATIENT_STATUS',NULL,NULL,NULL,NULL),(87,_binary '','CRITICAL','Critical','3','PATIENT_STATUS',NULL,NULL,NULL,NULL),(88,_binary '','OBSERVATION','Observation','4','PATIENT_STATUS',NULL,NULL,NULL,NULL),(89,_binary '','ACTIVE','Active','1','DIAGNOSIS_STATUS',NULL,NULL,NULL,NULL),(90,_binary '','RESOLVED','Resolved','2','DIAGNOSIS_STATUS',NULL,NULL,NULL,NULL),(91,_binary '','CHRONIC','Chronic','3','DIAGNOSIS_STATUS',NULL,NULL,NULL,NULL),(92,_binary '','MONITORING','Monitoring','4','DIAGNOSIS_STATUS',NULL,NULL,NULL,NULL),(93,_binary '','PROGRESS','Progress Note','1','NOTES_TYPE',NULL,NULL,NULL,NULL),(94,_binary '','ASSESSMENT','Assessment','2','NOTES_TYPE',NULL,NULL,NULL,NULL),(95,_binary '','OBSERVATION','Observation','3','NOTES_TYPE',NULL,NULL,NULL,NULL),(96,_binary '','INCIDENT','Incident Report','4','NOTES_TYPE',NULL,NULL,NULL,NULL),(97,_binary '','CARE-PLAN','Care Plan Update','5','NOTES_TYPE',NULL,NULL,NULL,NULL),(98,_binary '','HIGH','High','1','CLINICAL_NOTE_PRIORITY',NULL,NULL,NULL,NULL),(99,_binary '','MEDIUM','Medium','2','CLINICAL_NOTE_PRIORITY',NULL,NULL,NULL,NULL),(100,_binary '','LOW','Low','3','CLINICAL_NOTE_PRIORITY',NULL,NULL,NULL,NULL),(101,_binary '','ELECTIVE','Elective','1','SURGERY_TYPE',NULL,NULL,NULL,NULL),(102,_binary '','EMERGENCY','Emergency','2','SURGERY_TYPE',NULL,NULL,NULL,NULL),(103,_binary '','URGENT','Urgent','3','SURGERY_TYPE',NULL,NULL,NULL,NULL),(104,_binary '','MINOR','Minor','4','SURGERY_TYPE',NULL,NULL,NULL,NULL),(105,_binary '','MAJOR','Major','5','SURGERY_TYPE',NULL,NULL,NULL,NULL),(106,_binary '','ROUTINE','Routine','1','MED_ORDER_PRIORITY',NULL,NULL,NULL,NULL),(107,_binary '','NOW','Now (single dose)','2','MED_ORDER_PRIORITY',NULL,NULL,NULL,NULL),(108,_binary '','STAT','STAT','3','MED_ORDER_PRIORITY',NULL,NULL,NULL,NULL),(109,_binary '','MG','mg','1','STRENGTH_UNIT',NULL,NULL,NULL,NULL),(110,_binary '','MCG','mcg','2','STRENGTH_UNIT',NULL,NULL,NULL,NULL),(111,_binary '','G','g','3','STRENGTH_UNIT',NULL,NULL,NULL,NULL),(112,_binary '','MEQ','mEq','4','STRENGTH_UNIT',NULL,NULL,NULL,NULL),(113,_binary '','UNITS','Units (insulin)','5','STRENGTH_UNIT',NULL,NULL,NULL,NULL),(114,_binary '','IU','IU','6','STRENGTH_UNIT',NULL,NULL,NULL,NULL),(115,_binary '','PCT','%','7','STRENGTH_UNIT',NULL,NULL,NULL,NULL),(116,_binary '','MG_ML','mg/mL','8','STRENGTH_UNIT',NULL,NULL,NULL,NULL),(117,_binary '','TABLET','Tablet','1','DOSE_FORM',NULL,NULL,NULL,NULL),(118,_binary '','CAPSULE','Capsule','2','DOSE_FORM',NULL,NULL,NULL,NULL),(119,_binary '','ORAL_SOLUTION','Oral solution / suspension','3','DOSE_FORM',NULL,NULL,NULL,NULL),(120,_binary '','INJECTION','Injection (syringe)','4','DOSE_FORM',NULL,NULL,NULL,NULL),(121,_binary '','IV_SOLUTION','IV solution / admixture','5','DOSE_FORM',NULL,NULL,NULL,NULL),(122,_binary '','PATCH','Transdermal patch','6','DOSE_FORM',NULL,NULL,NULL,NULL),(123,_binary '','INHALER','Inhaler','7','DOSE_FORM',NULL,NULL,NULL,NULL),(124,_binary '','TOPICAL','Topical','8','DOSE_FORM',NULL,NULL,NULL,NULL),(125,_binary '','SUPPOSITORY','Suppository','9','DOSE_FORM',NULL,NULL,NULL,NULL),(126,_binary '','PO','PO (oral)','1','MED_ROUTE',NULL,NULL,NULL,NULL),(127,_binary '','NG','NG / enteral tube','2','MED_ROUTE',NULL,NULL,NULL,NULL),(128,_binary '','IV','IV push','3','MED_ROUTE',NULL,NULL,NULL,NULL),(129,_binary '','IVPB','IV piggyback / intermittent','4','MED_ROUTE',NULL,NULL,NULL,NULL),(130,_binary '','IM','IM','5','MED_ROUTE',NULL,NULL,NULL,NULL),(131,_binary '','SC','Subcutaneous','6','MED_ROUTE',NULL,NULL,NULL,NULL),(132,_binary '','SL','Sublingual','7','MED_ROUTE',NULL,NULL,NULL,NULL),(133,_binary '','TOP','Topical','8','MED_ROUTE',NULL,NULL,NULL,NULL),(134,_binary '','INH','Inhalation','9','MED_ROUTE',NULL,NULL,NULL,NULL),(135,_binary '','OPH','Ophthalmic','10','MED_ROUTE',NULL,NULL,NULL,NULL),(136,_binary '','ONCE','Once only','1','MED_FREQUENCY',NULL,NULL,NULL,NULL),(137,_binary '','DAILY','Daily','2','MED_FREQUENCY',NULL,NULL,NULL,NULL),(138,_binary '','BID','BID','3','MED_FREQUENCY',NULL,NULL,NULL,NULL),(139,_binary '','TID','TID','4','MED_FREQUENCY',NULL,NULL,NULL,NULL),(140,_binary '','QID','QID','5','MED_FREQUENCY',NULL,NULL,NULL,NULL),(141,_binary '','Q4H','Every 4 hours','6','MED_FREQUENCY',NULL,NULL,NULL,NULL),(142,_binary '','Q6H','Every 6 hours','7','MED_FREQUENCY',NULL,NULL,NULL,NULL),(143,_binary '','Q8H','Every 8 hours','8','MED_FREQUENCY',NULL,NULL,NULL,NULL),(144,_binary '','Q12H','Every 12 hours','9','MED_FREQUENCY',NULL,NULL,NULL,NULL),(145,_binary '','QHS','At bedtime','10','MED_FREQUENCY',NULL,NULL,NULL,NULL),(146,_binary '','PRN','PRN','11','MED_FREQUENCY',NULL,NULL,NULL,NULL),(147,_binary '','WKLY','Weekly','12','MED_FREQUENCY',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `master_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical`
--

DROP TABLE IF EXISTS `medical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `allergies` text,
  `blood_type` varchar(20) DEFAULT NULL,
  `current_medication` text,
  `medical_alerts` text,
  `nurse` varchar(150) DEFAULT NULL,
  `primary_physician` varchar(150) DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  `nurse_id` bigint DEFAULT NULL,
  `primary_physician_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKf724fxkerv4qix1smwk1vj68t` (`patient_id`),
  KEY `FKp0cnusammk29qfsfh80vflhax` (`nurse_id`),
  KEY `FKegp13haeb871jmtxr9rc0buv6` (`primary_physician_id`),
  CONSTRAINT `FKegp13haeb871jmtxr9rc0buv6` FOREIGN KEY (`primary_physician_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKp0cnusammk29qfsfh80vflhax` FOREIGN KEY (`nurse_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKpqyvtg9wantth55p7niltgsci` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical`
--

LOCK TABLES `medical` WRITE;
/*!40000 ALTER TABLE `medical` DISABLE KEYS */;
INSERT INTO `medical` VALUES (1,'sandeep','2026-05-04 18:38:11.025539','sandeep','2026-05-04 18:44:40.492010','Allergies','A_POS','Current Medications\n','Medical Alerts\n',NULL,NULL,1,2,53),(2,'sandeep','2026-05-04 19:41:17.806443',NULL,NULL,'Allergies','A_NEG','Allergies','Allergies',NULL,NULL,2,2,55),(3,'sandeep','2026-05-05 18:29:45.718672',NULL,NULL,'Aleriges','AB_NEG','Current Medications','Medical Alerts',NULL,NULL,3,2,53);
/*!40000 ALTER TABLE `medical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_history`
--

DROP TABLE IF EXISTS `medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `surgery_name` varchar(200) NOT NULL,
  `surgery_date` date DEFAULT NULL,
  `surgery_type` varchar(50) DEFAULT NULL,
  `surgeon` varchar(200) DEFAULT NULL,
  `hospital` varchar(200) DEFAULT NULL,
  `procedure_code` varchar(100) DEFAULT NULL,
  `notes` text,
  `patient_id` bigint NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medical_history_patient` (`patient_id`),
  CONSTRAINT `fk_medical_history_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
INSERT INTO `medical_history` VALUES (1,'Hip Replacement','2026-05-05','ELECTIVE','Johan','General Hospital','CPT','as',1,'sandeep','2026-05-05 16:21:19',NULL,NULL),(2,'Surg','2026-05-05','ELECTIVE','Johan','General Hospital','CPT','asasd',3,'sandeep','2026-05-05 18:34:37',NULL,NULL);
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication_master`
--

DROP TABLE IF EXISTS `medication_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `form` varchar(100) DEFAULT NULL,
  `generic_name` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `strength` varchar(100) DEFAULT NULL,
  `default_dose_form` varchar(100) DEFAULT NULL,
  `default_strength` varchar(100) DEFAULT NULL,
  `default_strength_unit` varchar(50) DEFAULT NULL,
  `drug_name` varchar(200) NOT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication_master`
--

LOCK TABLES `medication_master` WRITE;
/*!40000 ALTER TABLE `medication_master` DISABLE KEYS */;
INSERT INTO `medication_master` VALUES (1,_binary '',NULL,'Metformin Hydrochloride',NULL,NULL,'Tablet','500','mg','Metformin','Sun Pharma'),(2,_binary '',NULL,'Metformin Hydrochloride',NULL,NULL,'Tablet','1000','mg','Metformin','Sun Pharma'),(3,_binary '',NULL,'Amlodipine Besylate',NULL,NULL,'Tablet','5','mg','Amlodipine','Cipla'),(4,_binary '',NULL,'Amlodipine Besylate',NULL,NULL,'Tablet','10','mg','Amlodipine','Cipla'),(5,_binary '',NULL,'Atorvastatin Calcium',NULL,NULL,'Tablet','10','mg','Atorvastatin','Pfizer'),(6,_binary '',NULL,'Atorvastatin Calcium',NULL,NULL,'Tablet','20','mg','Atorvastatin','Pfizer'),(7,_binary '',NULL,'Atorvastatin Calcium',NULL,NULL,'Tablet','40','mg','Atorvastatin','Pfizer'),(8,_binary '',NULL,'Lisinopril',NULL,NULL,'Tablet','5','mg','Lisinopril','Lupin'),(9,_binary '',NULL,'Lisinopril',NULL,NULL,'Tablet','10','mg','Lisinopril','Lupin'),(10,_binary '',NULL,'Acetylsalicylic Acid',NULL,NULL,'Tablet','75','mg','Aspirin','Bayer'),(11,_binary '',NULL,'Acetylsalicylic Acid',NULL,NULL,'Tablet','150','mg','Aspirin','Bayer'),(12,_binary '',NULL,'Omeprazole',NULL,NULL,'Capsule','20','mg','Omeprazole','AstraZeneca'),(13,_binary '',NULL,'Omeprazole',NULL,NULL,'Capsule','40','mg','Omeprazole','AstraZeneca'),(14,_binary '',NULL,'Acetaminophen',NULL,NULL,'Tablet','500','mg','Paracetamol','GSK'),(15,_binary '',NULL,'Acetaminophen',NULL,NULL,'Tablet','650','mg','Paracetamol','GSK'),(16,_binary '',NULL,'Amoxicillin Trihydrate',NULL,NULL,'Capsule','250','mg','Amoxicillin','Cipla'),(17,_binary '',NULL,'Amoxicillin Trihydrate',NULL,NULL,'Capsule','500','mg','Amoxicillin','Cipla'),(18,_binary '',NULL,'Warfarin Sodium',NULL,NULL,'Tablet','2','mg','Warfarin','Bristol-Myers'),(19,_binary '',NULL,'Warfarin Sodium',NULL,NULL,'Tablet','5','mg','Warfarin','Bristol-Myers'),(20,_binary '',NULL,'Furosemide',NULL,NULL,'Tablet','20','mg','Furosemide','Sanofi'),(21,_binary '',NULL,'Furosemide',NULL,NULL,'Tablet','40','mg','Furosemide','Sanofi'),(22,_binary '',NULL,'Insulin Glargine',NULL,NULL,'Injection','100','IU','Insulin','Novo Nordisk'),(23,_binary '',NULL,'Levothyroxine Sodium',NULL,NULL,'Tablet','50','mcg','Levothyroxine','Abbott'),(24,_binary '',NULL,'Levothyroxine Sodium',NULL,NULL,'Tablet','100','mcg','Levothyroxine','Abbott'),(25,_binary '',NULL,'Pantoprazole Sodium',NULL,NULL,'Tablet','40','mg','Pantoprazole','Wyeth'),(26,_binary '',NULL,'Clopidogrel Bisulfate',NULL,NULL,'Tablet','75','mg','Clopidogrel','Sanofi'),(27,_binary '',NULL,'Metoprolol Tartrate',NULL,NULL,'Tablet','25','mg','Metoprolol','AstraZeneca'),(28,_binary '',NULL,'Metoprolol Tartrate',NULL,NULL,'Tablet','50','mg','Metoprolol','AstraZeneca'),(29,_binary '',NULL,'Gabapentin',NULL,NULL,'Capsule','300','mg','Gabapentin','Pfizer'),(30,_binary '',NULL,'Gabapentin',NULL,NULL,'Tablet','600','mg','Gabapentin','Pfizer');
/*!40000 ALTER TABLE `medication_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication_slot`
--

DROP TABLE IF EXISTS `medication_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication_slot` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `given_at` datetime(6) DEFAULT NULL,
  `notes` text,
  `scheduled_time` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `given_by` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  `patient_medication_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK33r30comt8dtsgbsmhy8gj9y4` (`given_by`),
  KEY `FK2cgh4bjwkc0juw3ojfhr3iejb` (`patient_id`),
  KEY `FK2uslck9bh6rfjvpk63a8o40hi` (`patient_medication_id`),
  CONSTRAINT `FK2cgh4bjwkc0juw3ojfhr3iejb` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK2uslck9bh6rfjvpk63a8o40hi` FOREIGN KEY (`patient_medication_id`) REFERENCES `patient_medication` (`id`),
  CONSTRAINT `FK33r30comt8dtsgbsmhy8gj9y4` FOREIGN KEY (`given_by`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication_slot`
--

LOCK TABLES `medication_slot` WRITE;
/*!40000 ALTER TABLE `medication_slot` DISABLE KEYS */;
/*!40000 ALTER TABLE `medication_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nok`
--

DROP TABLE IF EXISTS `nok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nok` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `can_make_medical` bit(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `notes` text,
  `phone_number` varchar(20) DEFAULT NULL,
  `primary_contact` bit(1) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8j7yggndvo0igawd527b3ia1o` (`patient_id`),
  CONSTRAINT `FK8j7yggndvo0igawd527b3ia1o` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nok`
--

LOCK TABLES `nok` WRITE;
/*!40000 ALTER TABLE `nok` DISABLE KEYS */;
INSERT INTO `nok` VALUES (1,'sandeep','2026-05-04 14:42:58.010444','sandeep','2026-05-04 14:53:57.752534',_binary '','2026-05-01','sa@gmail.co','NOK','male','One','asxasx','9032151096',_binary '\0','CHILD',1),(2,'sandeep','2026-05-04 19:41:01.102096',NULL,NULL,_binary '','2026-05-09','sa@gmail.com','NOK','male','Two','ssd','90321510976',_binary '\0','SPOUSE',2),(3,'sandeep','2026-05-05 18:29:21.887377',NULL,NULL,_binary '\0','2026-05-05','sa@gmail.co','Nok','male','One','as','84695608',_binary '\0','SPOUSE',3),(4,'sandeep','2026-05-05 18:30:51.473900',NULL,NULL,_binary '\0','2026-05-15','sa@gmail.co','asd','male','as','as','122322',_binary '\0','FRIEND',4);
/*!40000 ALTER TABLE `nok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `notes` text NOT NULL,
  `patient_id` bigint NOT NULL,
  `note_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5g0dgvn1h30abysm9yx0al7sd` (`patient_id`),
  CONSTRAINT `FK5g0dgvn1h30abysm9yx0al7sd` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'sandeep','2026-05-04 19:18:07.606230',NULL,NULL,'Notes',1,NULL),(2,'sandeep','2026-05-04 19:41:36.856649',NULL,NULL,'asdasd',2,NULL),(3,'sandeep','2026-05-05 14:15:50.583358',NULL,NULL,'Notes',1,NULL),(4,'sandeep','2026-05-05 18:30:09.144710',NULL,NULL,'ass',3,NULL);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK5k7l7wk9ogyt1ag6vku4a4lwo` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'sandeep','2026-05-04 14:20:50.856568','sandeep','2026-05-04 14:42:57.876855','2026-05-01','Patient','male','One','EC-2026-0001'),(2,'sandeep','2026-05-04 19:41:01.061871',NULL,'2026-05-04 19:41:01.068269','2026-05-01','Patient','male','Two','EC-2026-0002'),(3,'sandeep','2026-05-05 18:29:21.610267',NULL,'2026-05-05 18:29:21.712815','2026-01-28','Patient','male','Three','EC-2026-0003'),(4,'sandeep','2026-05-05 18:30:51.424788',NULL,'2026-05-05 18:30:51.434355','2026-01-09','Patient','male','Four','EC-2026-0004');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_journey`
--

DROP TABLE IF EXISTS `patient_journey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_journey` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `is_admission` bit(1) DEFAULT NULL,
  `basic_details` bit(1) DEFAULT NULL,
  `is_medical` bit(1) DEFAULT NULL,
  `is_note` bit(1) DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKea9d0yea7fi8p3sorewojjpc5` (`patient_id`),
  CONSTRAINT `FKpt2nbm8et1lwxddl9015hqi67` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_journey`
--

LOCK TABLES `patient_journey` WRITE;
/*!40000 ALTER TABLE `patient_journey` DISABLE KEYS */;
INSERT INTO `patient_journey` VALUES (1,'sandeep','2026-05-04 14:20:51.012204','sandeep','2026-05-04 19:18:07.612943',_binary '',_binary '',_binary '',_binary '',1),(2,'sandeep','2026-05-04 19:41:01.065769','sandeep','2026-05-04 19:41:36.865422',_binary '',_binary '',_binary '',_binary '',2),(3,'sandeep','2026-05-05 18:29:21.699580','sandeep','2026-05-05 18:30:09.168946',_binary '',_binary '',_binary '',_binary '',3),(4,'sandeep','2026-05-05 18:30:51.429308',NULL,NULL,_binary '\0',_binary '',_binary '\0',_binary '\0',4);
/*!40000 ALTER TABLE `patient_journey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_medication`
--

DROP TABLE IF EXISTS `patient_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_medication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `dose` varchar(100) DEFAULT NULL,
  `duration_days` int DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `instructions` text,
  `start_date` date DEFAULT NULL,
  `medication_id` bigint NOT NULL,
  `patient_id` bigint NOT NULL,
  `ack_allergies_reviewed` bit(1) DEFAULT NULL,
  `ack_dupe_reviewed` bit(1) DEFAULT NULL,
  `admin_instructions` text,
  `dose_amount` varchar(100) DEFAULT NULL,
  `dose_form` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `indication` varchar(300) DEFAULT NULL,
  `iv_rate` varchar(50) DEFAULT NULL,
  `iv_rate_unit` varchar(50) DEFAULT NULL,
  `iv_volume` varchar(50) DEFAULT NULL,
  `order_priority` varchar(50) DEFAULT NULL,
  `ordering_provider` varchar(200) DEFAULT NULL,
  `pharmacy_comments` text,
  `prn_max_dose` varchar(100) DEFAULT NULL,
  `prn_reason` varchar(300) DEFAULT NULL,
  `route` varchar(50) DEFAULT NULL,
  `rx_norm` varchar(50) DEFAULT NULL,
  `sig` text,
  `start_date_time` datetime(6) DEFAULT NULL,
  `stop_date_time` datetime(6) DEFAULT NULL,
  `strength_unit` varchar(50) DEFAULT NULL,
  `strength_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2kur0kh73x7ed2hx8np6qv22m` (`medication_id`),
  KEY `FK83k4tj1rycnwe4qhifuxm44c7` (`patient_id`),
  CONSTRAINT `FK2kur0kh73x7ed2hx8np6qv22m` FOREIGN KEY (`medication_id`) REFERENCES `medication_master` (`id`),
  CONSTRAINT `FK83k4tj1rycnwe4qhifuxm44c7` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_medication`
--

LOCK TABLES `patient_medication` WRITE;
/*!40000 ALTER TABLE `patient_medication` DISABLE KEYS */;
INSERT INTO `patient_medication` VALUES (1,'sandeep','2026-05-06 22:58:55.533166',NULL,NULL,_binary '',NULL,NULL,NULL,'Q4H',NULL,NULL,10,1,_binary '',_binary '','sdfs','1 tablet 10ml','INHALER','fsdf','2c',NULL,'mL/hr',NULL,'ROUTINE','wdasdas','sdf',NULL,NULL,'PO','8086','sdsd','2026-05-06 22:56:00.000000','2026-05-16 22:56:00.000000','IU','75');
/*!40000 ALTER TABLE `patient_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `role_id` varchar(50) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `parent_role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKnvt31tls2ym5so7gx2s6gopi0` (`role_id`),
  KEY `FKap43fjxyarn6d7ahj648wd1vg` (`parent_role_id`),
  CONSTRAINT `FKap43fjxyarn6d7ahj648wd1vg` FOREIGN KEY (`parent_role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'seed','2026-05-04 12:37:06.000000',NULL,NULL,'ROLE_SUPER_ADMIN','Super Admin',NULL),(2,'seed','2026-05-04 12:37:06.000000',NULL,NULL,'ROLE_ADMIN','Admin',1),(3,'seed','2026-05-04 12:37:06.000000',NULL,NULL,'ROLE_NURSE','Nurse',2),(4,'seed','2026-05-04 12:37:06.000000',NULL,NULL,'ROLE_DOCTOR','Doctor',2),(5,'seed','2026-05-04 12:37:06.000000',NULL,NULL,'ROLE_RECEPTIONIST','Receptionist',2);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_access`
--

DROP TABLE IF EXISTS `role_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_access` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `role_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtieafqolqa48hq93xuaj7wp7q` (`role_id`),
  KEY `FKfh181a1wgek5w1tg6i1bm0fao` (`user_id`),
  CONSTRAINT `FKfh181a1wgek5w1tg6i1bm0fao` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKtieafqolqa48hq93xuaj7wp7q` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_access`
--

LOCK TABLES `role_access` WRITE;
/*!40000 ALTER TABLE `role_access` DISABLE KEYS */;
INSERT INTO `role_access` VALUES (1,'signup','2026-05-04 12:38:28.001188',NULL,NULL,3,1),(2,'signup','2026-05-04 16:34:20.001201',NULL,NULL,3,2),(33,'seed','2026-05-04 18:34:13.000000',NULL,NULL,2,48),(34,'seed','2026-05-04 18:34:13.000000',NULL,NULL,2,49),(35,'seed','2026-05-04 18:34:13.000000',NULL,NULL,2,50),(36,'seed','2026-05-04 18:34:13.000000',NULL,NULL,2,51),(37,'seed','2026-05-04 18:34:13.000000',NULL,NULL,2,52),(38,'seed','2026-05-04 18:34:13.000000',NULL,NULL,3,53),(39,'seed','2026-05-04 18:34:13.000000',NULL,NULL,3,54),(40,'seed','2026-05-04 18:34:13.000000',NULL,NULL,3,55),(41,'seed','2026-05-04 18:34:13.000000',NULL,NULL,3,56),(42,'seed','2026-05-04 18:34:13.000000',NULL,NULL,3,57);
/*!40000 ALTER TABLE `role_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKsb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'signup','2026-05-04 12:38:27.902822',NULL,NULL,_binary '','$2a$10$FmbzkKK5SVg/SyXjIBKPXeRcAWuj.MBI6cRMGsidIL4Hq9wpZbNcC','NURSE','sandeep'),(2,'signup','2026-05-04 16:34:19.907001',NULL,NULL,_binary '','$2a$10$jqQkJxBNq0StDNR7c9lKFu5WPfRukU1MhuQfEjodM0Mc6Z3iruBEK','NURSE','sandeep535'),(48,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','NURSE','nurse1'),(49,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','NURSE','nurse2'),(50,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','NURSE','nurse3'),(51,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','NURSE','nurse4'),(52,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','NURSE','nurse5'),(53,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','DOCTOR','doctor1'),(54,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','DOCTOR','doctor2'),(55,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','DOCTOR','doctor3'),(56,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','DOCTOR','doctor4'),(57,'seed','2026-05-04 18:34:13.000000',NULL,NULL,_binary '','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','DOCTOR','doctor5');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `qualification` varchar(200) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKf4pdcamta635qqbhgcyqvrg7f` (`user_id`),
  CONSTRAINT `FKloyyp7tdlkchecrf8bjlqsftt` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'signup','2026-05-04 16:34:19.975710',NULL,NULL,'Nurse','2026-05-04','sa@gmail.com','Sandeep','1','Mandalapu','90321510198','Nurseing',2),(32,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Senior Nurse','1990-03-15','emily.johnson@eldercare.com','Emily','FEMALE','Johnson','555-0101','BSN, RN',48),(33,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Staff Nurse','1992-07-22','sarah.williams@eldercare.com','Sarah','FEMALE','Williams','555-0102','BSN, RN',49),(34,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Charge Nurse','1988-11-10','michael.brown@eldercare.com','Michael','MALE','Brown','555-0103','MSN, RN',50),(35,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Staff Nurse','1995-05-18','jessica.davis@eldercare.com','Jessica','FEMALE','Davis','555-0104','BSN, RN',51),(36,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Senior Nurse','1991-09-25','david.miller@eldercare.com','David','MALE','Miller','555-0105','BSN, RN, CCRN',52),(37,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Geriatrician','1975-02-14','robert.anderson@eldercare.com','Robert','MALE','Anderson','555-0201','MD, Board Certified Geriatrics',53),(38,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Internal Medicine','1980-06-08','jennifer.taylor@eldercare.com','Jennifer','FEMALE','Taylor','555-0202','MD, FACP',54),(39,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Cardiologist','1978-12-20','william.thomas@eldercare.com','William','MALE','Thomas','555-0203','MD, FACC',55),(40,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Neurologist','1982-04-30','linda.martinez@eldercare.com','Linda','FEMALE','Martinez','555-0204','MD, PhD',56),(41,'seed','2026-05-04 18:34:13.000000',NULL,NULL,'Geriatrician','1976-08-12','james.garcia@eldercare.com','James','MALE','Garcia','555-0205','MD, CMD',57);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vital`
--

DROP TABLE IF EXISTS `vital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vital` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `alert_resolved` bit(1) DEFAULT NULL,
  `diastolic` int DEFAULT NULL,
  `has_alert` bit(1) DEFAULT NULL,
  `hr` int DEFAULT NULL,
  `notes` text,
  `spo2` int DEFAULT NULL,
  `systolic` int DEFAULT NULL,
  `temp` decimal(4,1) DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg9o0jec72uld8eb61own52udy` (`patient_id`),
  CONSTRAINT `FKg9o0jec72uld8eb61own52udy` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vital`
--

LOCK TABLES `vital` WRITE;
/*!40000 ALTER TABLE `vital` DISABLE KEYS */;
INSERT INTO `vital` VALUES (1,'sandeep','2026-05-04 21:09:59.451949',NULL,NULL,_binary '\0',90,_binary '',90,'Note vitals',57,150,110.0,1),(2,'sandeep','2026-05-05 17:43:46.082907',NULL,NULL,_binary '\0',90,_binary '',90,'zxdc',98,160,100.0,2),(3,'sandeep','2026-05-05 18:32:04.318909',NULL,NULL,_binary '\0',90,_binary '',90,'zxcsd',98,190,98.0,3);
/*!40000 ALTER TABLE `vital` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 23:03:35
