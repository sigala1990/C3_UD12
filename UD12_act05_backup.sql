CREATE DATABASE  IF NOT EXISTS `actividad5` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `actividad5`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.0.14    Database: actividad5
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
-- Table structure for table `almacenes`
--

DROP TABLE IF EXISTS `almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacenes` (
  `Idalmacen` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(60) DEFAULT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  `nombre_estanteria` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Idalmacen`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
INSERT INTO `almacenes` VALUES (1,'Tarragona','central','100A'),(2,'Reus','sede1','100B'),(3,'Vendrell','sede2','100C'),(4,'Tarragona','central','100A'),(5,'Reus','sede1','100B'),(6,'Vendrell','sede2','100C');
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estanterias`
--

DROP TABLE IF EXISTS `estanterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estanterias` (
  `Idestanteria` int NOT NULL AUTO_INCREMENT,
  `FK_Idalmacen` int DEFAULT NULL,
  PRIMARY KEY (`Idestanteria`),
  KEY `FK_Idalmacen` (`FK_Idalmacen`),
  CONSTRAINT `estanterias_ibfk_1` FOREIGN KEY (`FK_Idalmacen`) REFERENCES `almacenes` (`Idalmacen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estanterias`
--

LOCK TABLES `estanterias` WRITE;
/*!40000 ALTER TABLE `estanterias` DISABLE KEYS */;
INSERT INTO `estanterias` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `estanterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piezas`
--

DROP TABLE IF EXISTS `piezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `piezas` (
  `Idpieza` int NOT NULL AUTO_INCREMENT,
  `precio` int DEFAULT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  `tipo` varchar(60) DEFAULT NULL,
  `FK_Idestanteria` int DEFAULT NULL,
  `FK_Idpieza` int DEFAULT NULL,
  PRIMARY KEY (`Idpieza`),
  KEY `FK_Idestanteria` (`FK_Idestanteria`),
  KEY `FK_Idpieza` (`FK_Idpieza`),
  CONSTRAINT `piezas_ibfk_1` FOREIGN KEY (`FK_Idestanteria`) REFERENCES `estanterias` (`Idestanteria`),
  CONSTRAINT `piezas_ibfk_2` FOREIGN KEY (`FK_Idpieza`) REFERENCES `piezas` (`Idpieza`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piezas`
--

LOCK TABLES `piezas` WRITE;
/*!40000 ALTER TABLE `piezas` DISABLE KEYS */;
INSERT INTO `piezas` VALUES (1,10,'tornillo','A',NULL,NULL),(2,5,'arandela','B',NULL,NULL),(3,7,'tuerca','C',NULL,NULL),(4,10,'tornillo','A',1,1),(5,5,'arandela','B',2,2),(6,7,'tuerca','C',3,3),(7,10,'tornillo','A',1,1),(8,5,'arandela','B',2,2),(9,7,'tuerca','C',3,3);
/*!40000 ALTER TABLE `piezas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 10:57:37
