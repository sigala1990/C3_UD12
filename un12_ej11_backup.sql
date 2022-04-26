CREATE DATABASE  IF NOT EXISTS `ud12_ej11` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ud12_ej11`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 192.168.111.236    Database: ud12_ej11
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
-- Table structure for table `accidente`
--

DROP TABLE IF EXISTS `accidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accidente` (
  `idAccidente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `posicionV` double DEFAULT NULL,
  `posicionH` double DEFAULT NULL,
  PRIMARY KEY (`idAccidente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accidente`
--

LOCK TABLES `accidente` WRITE;
/*!40000 ALTER TABLE `accidente` DISABLE KEYS */;
INSERT INTO `accidente` VALUES (1,'lago Synevyr ',11.11,22.22),(2,'montaña Goverla',33.33,44.44),(3,'rio Dnipro',55.55,66.66);
/*!40000 ALTER TABLE `accidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accidenteOcurrido`
--

DROP TABLE IF EXISTS `accidenteOcurrido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accidenteOcurrido` (
  `idAccidenteOcurrido` int NOT NULL AUTO_INCREMENT,
  `idAccidente` int DEFAULT NULL,
  `idPais` int DEFAULT NULL,
  PRIMARY KEY (`idAccidenteOcurrido`),
  KEY `idAccidente` (`idAccidente`),
  KEY `idPais` (`idPais`),
  CONSTRAINT `accidenteOcurrido_ibfk_1` FOREIGN KEY (`idAccidente`) REFERENCES `accidente` (`idAccidente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accidenteOcurrido_ibfk_2` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accidenteOcurrido`
--

LOCK TABLES `accidenteOcurrido` WRITE;
/*!40000 ALTER TABLE `accidenteOcurrido` DISABLE KEYS */;
INSERT INTO `accidenteOcurrido` VALUES (1,3,1);
/*!40000 ALTER TABLE `accidenteOcurrido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lago`
--

DROP TABLE IF EXISTS `lago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lago` (
  `idLago` int NOT NULL AUTO_INCREMENT,
  `extension` double DEFAULT NULL,
  `idAccidente` int DEFAULT NULL,
  PRIMARY KEY (`idLago`),
  KEY `idAccidente` (`idAccidente`),
  CONSTRAINT `lago_ibfk_1` FOREIGN KEY (`idAccidente`) REFERENCES `accidente` (`idAccidente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lago`
--

LOCK TABLES `lago` WRITE;
/*!40000 ALTER TABLE `lago` DISABLE KEYS */;
INSERT INTO `lago` VALUES (1,0.99,1);
/*!40000 ALTER TABLE `lago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidad` (
  `idLocalidad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `idPais` int DEFAULT NULL,
  PRIMARY KEY (`idLocalidad`),
  KEY `idPais` (`idPais`),
  CONSTRAINT `localidad_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES (1,'Kyiv',1);
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `montanya`
--

DROP TABLE IF EXISTS `montanya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `montanya` (
  `idMontanya` int NOT NULL AUTO_INCREMENT,
  `altura` double DEFAULT NULL,
  `idAccidente` int DEFAULT NULL,
  PRIMARY KEY (`idMontanya`),
  KEY `idAccidente` (`idAccidente`),
  CONSTRAINT `montanya_ibfk_1` FOREIGN KEY (`idAccidente`) REFERENCES `accidente` (`idAccidente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `montanya`
--

LOCK TABLES `montanya` WRITE;
/*!40000 ALTER TABLE `montanya` DISABLE KEYS */;
INSERT INTO `montanya` VALUES (1,2.061,2);
/*!40000 ALTER TABLE `montanya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idPais` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `extension` double DEFAULT NULL,
  `poblacion` double DEFAULT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Ucrania',603.548,44.13),(2,'España',505.99,47.35);
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rio`
--

DROP TABLE IF EXISTS `rio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rio` (
  `idRio` int NOT NULL AUTO_INCREMENT,
  `longitud` double DEFAULT NULL,
  `idAccidente` int DEFAULT NULL,
  PRIMARY KEY (`idRio`),
  KEY `idAccidente` (`idAccidente`),
  CONSTRAINT `rio_ibfk_1` FOREIGN KEY (`idAccidente`) REFERENCES `accidente` (`idAccidente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rio`
--

LOCK TABLES `rio` WRITE;
/*!40000 ALTER TABLE `rio` DISABLE KEYS */;
INSERT INTO `rio` VALUES (1,2287,3);
/*!40000 ALTER TABLE `rio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rioLocalidad`
--

DROP TABLE IF EXISTS `rioLocalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rioLocalidad` (
  `idRioLocalidad` int NOT NULL AUTO_INCREMENT,
  `idRio` int DEFAULT NULL,
  `idLocalidad` int DEFAULT NULL,
  PRIMARY KEY (`idRioLocalidad`),
  KEY `idRio` (`idRio`),
  KEY `idLocalidad` (`idLocalidad`),
  CONSTRAINT `rioLocalidad_ibfk_1` FOREIGN KEY (`idRio`) REFERENCES `rio` (`idRio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rioLocalidad_ibfk_2` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`idLocalidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rioLocalidad`
--

LOCK TABLES `rioLocalidad` WRITE;
/*!40000 ALTER TABLE `rioLocalidad` DISABLE KEYS */;
INSERT INTO `rioLocalidad` VALUES (1,1,1);
/*!40000 ALTER TABLE `rioLocalidad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 15:43:09
