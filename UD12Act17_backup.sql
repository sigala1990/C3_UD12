CREATE DATABASE  IF NOT EXISTS `UD12Act17` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `UD12Act17`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.88.123    Database: UD12Act17
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
-- Table structure for table `ASIGNATURA`
--

DROP TABLE IF EXISTS `ASIGNATURA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASIGNATURA` (
  `asignaturaID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `codigoEuropeo` int DEFAULT NULL,
  `tieneAcceso` tinyint(1) DEFAULT NULL,
  `asignaturaFKID` int DEFAULT NULL,
  `cursoID` int DEFAULT NULL,
  `profesorID` int DEFAULT NULL,
  PRIMARY KEY (`asignaturaID`),
  KEY `asignaturaFKID` (`asignaturaFKID`),
  KEY `cursoID` (`cursoID`),
  KEY `profesorID` (`profesorID`),
  CONSTRAINT `ASIGNATURA_ibfk_1` FOREIGN KEY (`asignaturaFKID`) REFERENCES `ASIGNATURA` (`asignaturaID`),
  CONSTRAINT `ASIGNATURA_ibfk_2` FOREIGN KEY (`cursoID`) REFERENCES `CURSO` (`cursoID`),
  CONSTRAINT `ASIGNATURA_ibfk_3` FOREIGN KEY (`profesorID`) REFERENCES `PROFESOR` (`profesorID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASIGNATURA`
--

LOCK TABLES `ASIGNATURA` WRITE;
/*!40000 ALTER TABLE `ASIGNATURA` DISABLE KEYS */;
INSERT INTO `ASIGNATURA` VALUES (1,'Sistemas',533,1,NULL,6,459),(2,'Sistemas2',633,0,1,6,460),(3,'Programacion',222,1,NULL,7,460);
/*!40000 ALTER TABLE `ASIGNATURA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AULA`
--

DROP TABLE IF EXISTS `AULA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AULA` (
  `numeroaulaID` int NOT NULL AUTO_INCREMENT,
  `aulaID` int NOT NULL,
  `metros` int DEFAULT NULL,
  PRIMARY KEY (`numeroaulaID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AULA`
--

LOCK TABLES `AULA` WRITE;
/*!40000 ALTER TABLE `AULA` DISABLE KEYS */;
INSERT INTO `AULA` VALUES (1,22,2000),(2,33,3333),(3,44,4444);
/*!40000 ALTER TABLE `AULA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AULAOCUPADA`
--

DROP TABLE IF EXISTS `AULAOCUPADA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AULAOCUPADA` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asignaturaID` int DEFAULT NULL,
  `numeroaulaID` int DEFAULT NULL,
  `fechaid` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asignaturaID` (`asignaturaID`),
  KEY `numeroaulaID` (`numeroaulaID`),
  KEY `fechaid` (`fechaid`),
  CONSTRAINT `AULAOCUPADA_ibfk_1` FOREIGN KEY (`asignaturaID`) REFERENCES `ASIGNATURA` (`asignaturaID`),
  CONSTRAINT `AULAOCUPADA_ibfk_2` FOREIGN KEY (`numeroaulaID`) REFERENCES `AULA` (`numeroaulaID`),
  CONSTRAINT `AULAOCUPADA_ibfk_3` FOREIGN KEY (`fechaid`) REFERENCES `HORARIO` (`fechaid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AULAOCUPADA`
--

LOCK TABLES `AULAOCUPADA` WRITE;
/*!40000 ALTER TABLE `AULAOCUPADA` DISABLE KEYS */;
INSERT INTO `AULAOCUPADA` VALUES (1,1,2,'2022-04-21 19:06:45'),(2,2,1,'2022-04-21 19:06:45'),(3,1,2,'2022-04-21 19:06:45');
/*!40000 ALTER TABLE `AULAOCUPADA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CICLOSFORMATIVOS`
--

DROP TABLE IF EXISTS `CICLOSFORMATIVOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CICLOSFORMATIVOS` (
  `ciclosformativosID` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`ciclosformativosID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CICLOSFORMATIVOS`
--

LOCK TABLES `CICLOSFORMATIVOS` WRITE;
/*!40000 ALTER TABLE `CICLOSFORMATIVOS` DISABLE KEYS */;
INSERT INTO `CICLOSFORMATIVOS` VALUES (6,'INFORMATICA','CICLO SUPERIOR INFO'),(7,'ADMINISTRATIVO','CICLO SUPERIOR ADMINISTRATIVO');
/*!40000 ALTER TABLE `CICLOSFORMATIVOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CURSO`
--

DROP TABLE IF EXISTS `CURSO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CURSO` (
  `cursoID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `profesorID` int DEFAULT NULL,
  `ciclosformativosID` int DEFAULT NULL,
  PRIMARY KEY (`cursoID`),
  KEY `profesorID` (`profesorID`),
  KEY `ciclosformativosID` (`ciclosformativosID`),
  CONSTRAINT `CURSO_ibfk_1` FOREIGN KEY (`profesorID`) REFERENCES `PROFESOR` (`profesorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CURSO_ibfk_2` FOREIGN KEY (`ciclosformativosID`) REFERENCES `CICLOSFORMATIVOS` (`ciclosformativosID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CURSO`
--

LOCK TABLES `CURSO` WRITE;
/*!40000 ALTER TABLE `CURSO` DISABLE KEYS */;
INSERT INTO `CURSO` VALUES (6,'DAM',459,6),(7,'DAW',460,6),(8,'BUR',457,7);
/*!40000 ALTER TABLE `CURSO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HORARIO`
--

DROP TABLE IF EXISTS `HORARIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HORARIO` (
  `fechaid` datetime NOT NULL,
  PRIMARY KEY (`fechaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HORARIO`
--

LOCK TABLES `HORARIO` WRITE;
/*!40000 ALTER TABLE `HORARIO` DISABLE KEYS */;
INSERT INTO `HORARIO` VALUES ('2022-04-21 19:06:45'),('2022-04-22 09:33:45');
/*!40000 ALTER TABLE `HORARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROFESOR`
--

DROP TABLE IF EXISTS `PROFESOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROFESOR` (
  `profesorID` int NOT NULL AUTO_INCREMENT,
  `DNI` varchar(9) NOT NULL,
  `SS` varchar(12) DEFAULT '',
  `Genero` enum('hombre','mujer') DEFAULT 'hombre',
  `tiempoMeses` int DEFAULT NULL,
  `telf` int DEFAULT NULL,
  `AñosAntiguedad` int DEFAULT NULL,
  PRIMARY KEY (`profesorID`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROFESOR`
--

LOCK TABLES `PROFESOR` WRITE;
/*!40000 ALTER TABLE `PROFESOR` DISABLE KEYS */;
INSERT INTO `PROFESOR` VALUES (457,'1111','','hombre',3,977222,1),(458,'2222','','hombre',9,977142,1),(459,'3333','','mujer',2,97726,5),(460,'1111','','hombre',3,977222,1),(461,'2222','','hombre',9,977142,1),(462,'3333','','mujer',2,97726,5),(463,'1111','','hombre',3,977222,1),(464,'2222','','hombre',9,977142,1),(465,'3333','','mujer',2,97726,5);
/*!40000 ALTER TABLE `PROFESOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 12:04:22
