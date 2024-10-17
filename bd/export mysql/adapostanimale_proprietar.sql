-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: adapostanimale
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `proprietar`
--

DROP TABLE IF EXISTS `proprietar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proprietar` (
  `id_proprietar` int NOT NULL AUTO_INCREMENT,
  `id_adapost` int DEFAULT NULL,
  `nume_proprietar` varchar(255) NOT NULL,
  `adresa_proprietar` varchar(255) NOT NULL,
  `telefon_proprietar` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_proprietar`),
  KEY `id_adapost` (`id_adapost`),
  CONSTRAINT `proprietar_ibfk_1` FOREIGN KEY (`id_adapost`) REFERENCES `adapost` (`id_adapost`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietar`
--

LOCK TABLES `proprietar` WRITE;
/*!40000 ALTER TABLE `proprietar` DISABLE KEYS */;
INSERT INTO `proprietar` VALUES (1,1,'Ileana Pufulet','Strada Florilor, Nr. 25','123456789'),(2,2,'Marian Blanosu','Strada Veverițelor, Nr. 14','987654321'),(3,1,'Elena Codobelcu','Strada Lătrătoarei, Nr. 33','555666777'),(4,3,'Victor Catel','Strada Mustăților, Nr. 9','111222333'),(5,2,'Ana Puf','Strada Pernuțelor, Nr. 11','444333222');
/*!40000 ALTER TABLE `proprietar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 14:08:08
