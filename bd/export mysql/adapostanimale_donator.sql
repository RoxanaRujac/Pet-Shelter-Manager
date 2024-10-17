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
-- Table structure for table `donator`
--

DROP TABLE IF EXISTS `donator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donator` (
  `id_donator` int NOT NULL AUTO_INCREMENT,
  `nume_donator` varchar(255) NOT NULL,
  `adresa_donator` varchar(255) NOT NULL,
  `telefon_donator` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_donator`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donator`
--

LOCK TABLES `donator` WRITE;
/*!40000 ALTER TABLE `donator` DISABLE KEYS */;
INSERT INTO `donator` VALUES (1,'Florin Moale','Strada Pufăneilor, Nr. 55','111000111'),(2,'Andreea Veveriță','Strada Ciufuților, Nr. 27','222000222'),(3,'Radu Cozoroc','Strada Lebedelor, Nr. 18','333000333'),(4,'Maria Mustățilă','Strada Blândă, Nr. 44','444000444'),(5,'Ionel Bufniță','Strada Moțăielor, Nr. 8','555000555'),(6,'Florin Moale','Strada Pufăneilor, Nr. 55','111000111'),(7,'Andreea Veveriță','Strada Ciufuților, Nr. 27','222000222'),(8,'Radu Cozoroc','Strada Lebedelor, Nr. 18','333000333'),(9,'Maria Mustățilă','Strada Blândă, Nr. 44','444000444'),(10,'Ionel Bufniță','Strada Moțăielor, Nr. 8','555000555'),(11,'Domnul','Bucurejti','07namcartela'),(12,'','',''),(13,'','',''),(14,'','',''),(15,'','',''),(16,'','',''),(17,'','',''),(18,'v','m','m'),(19,'','',''),(20,'Donator','NuStiu','07siceva'),(21,'Rujac Roxana','nuStiu','4837'),(22,'Donator1','strada noua','33-44-55-66'),(23,'eu','fgf','5566-99');
/*!40000 ALTER TABLE `donator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 14:08:09
