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
-- Table structure for table `loc`
--

DROP TABLE IF EXISTS `loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc` (
  `id_loc` int NOT NULL AUTO_INCREMENT,
  `nume_loc` varchar(255) NOT NULL,
  `stare` varchar(255) NOT NULL,
  `id_adapost` int DEFAULT NULL,
  PRIMARY KEY (`id_loc`),
  KEY `id_adapost` (`id_adapost`),
  CONSTRAINT `loc_ibfk_1` FOREIGN KEY (`id_adapost`) REFERENCES `adapost` (`id_adapost`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc`
--

LOCK TABLES `loc` WRITE;
/*!40000 ALTER TABLE `loc` DISABLE KEYS */;
INSERT INTO `loc` VALUES (1,'Hamaca Pufășească','Disponibil',1),(2,'Igloo Blănos','Disponibil',2),(3,'Pat Pufos','Disponibil',3),(4,'Cuibul Vesel','Disponibil',1),(5,'Casa Liniștită','Disponibil',2),(6,'Hamaca Pufășească','Disponibil',1),(7,'Igloo Blănos','Disponibil',2),(8,'Pat Pufos','Disponibil',3),(9,'Cuibul Vesel','Disponibil',1),(10,'Casa Liniștită','Disponibil',2);
/*!40000 ALTER TABLE `loc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 14:08:07
