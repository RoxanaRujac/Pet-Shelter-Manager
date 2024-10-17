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
-- Table structure for table `cabinetveterinar`
--

DROP TABLE IF EXISTS `cabinetveterinar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinetveterinar` (
  `id_cabinet` int NOT NULL AUTO_INCREMENT,
  `nume_cabinet` varchar(255) NOT NULL,
  `adresa_cabinet` varchar(255) NOT NULL,
  `telefon_cabinet` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cabinet`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinetveterinar`
--

LOCK TABLES `cabinetveterinar` WRITE;
/*!40000 ALTER TABLE `cabinetveterinar` DISABLE KEYS */;
INSERT INTO `cabinetveterinar` VALUES (1,'Paws and Claws Vet Clinic','Strada Veterinarii, Nr. 3','123456789'),(2,'Furry Friends Veterinary Care','Strada Patrupede, Nr. 8','987654321'),(3,'Happy Paws Animal Hospital','Strada Sănătății, Nr. 12','555666777'),(4,'Paws and Claws Vet Clinic','Strada Veterinarii, Nr. 3','123456789'),(5,'Furry Friends Veterinary Care','Strada Patrupede, Nr. 8','987654321'),(6,'Happy Paws Animal Hospital','Strada Sănătății, Nr. 12','555666777');
/*!40000 ALTER TABLE `cabinetveterinar` ENABLE KEYS */;
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
