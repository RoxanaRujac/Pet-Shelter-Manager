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
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `id_sponsor` int NOT NULL AUTO_INCREMENT,
  `nume_sponsor` varchar(255) NOT NULL,
  `adresa_sponsor` varchar(255) NOT NULL,
  `telefon_sponsor` varchar(15) DEFAULT NULL,
  `id_fond` int DEFAULT NULL,
  PRIMARY KEY (`id_sponsor`),
  KEY `id_fond` (`id_fond`),
  CONSTRAINT `sponsor_ibfk_1` FOREIGN KEY (`id_fond`) REFERENCES `fonduri` (`id_fond`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'Pet Super','Strada Lătrăturilor, Nr. 10','123123123',1),(2,'Cute Paws Co.','Strada Blănitelor, Nr. 5','456456456',2),(3,'Happy Tails Inc.','Strada Codobelcilor, Nr. 2','789789789',3),(4,'Fluffy Friends Ltd.','Strada Ghemotoacelor, Nr. 15','987987987',4),(5,'Purrfect Homes','Strada Pernuțelor, Nr. 8','654654654',5),(6,'Pet Super','Strada Lătrăturilor, Nr. 10','123123123',1),(7,'Cute Paws Co.','Strada Blănitelor, Nr. 5','456456456',2),(8,'Happy Tails Inc.','Strada Codobelcilor, Nr. 2','789789789',3),(9,'Fluffy Friends Ltd.','Strada Ghemotoacelor, Nr. 15','987987987',4),(10,'Purrfect Homes','Strada Pernuțelor, Nr. 8','654654654',5);
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
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
