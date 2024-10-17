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
-- Temporary view structure for view `vederefonduri`
--

DROP TABLE IF EXISTS `vederefonduri`;
/*!50001 DROP VIEW IF EXISTS `vederefonduri`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vederefonduri` AS SELECT 
 1 AS `id_fond`,
 1 AS `buget`,
 1 AS `intrari`,
 1 AS `iesiri`,
 1 AS `sold_ramas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `adapostlocuridisponibile`
--

DROP TABLE IF EXISTS `adapostlocuridisponibile`;
/*!50001 DROP VIEW IF EXISTS `adapostlocuridisponibile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `adapostlocuridisponibile` AS SELECT 
 1 AS `id_adapost`,
 1 AS `nume_adapost`,
 1 AS `adresa_adapost`,
 1 AS `locuri_disponibile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `donatiidonatori`
--

DROP TABLE IF EXISTS `donatiidonatori`;
/*!50001 DROP VIEW IF EXISTS `donatiidonatori`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `donatiidonatori` AS SELECT 
 1 AS `id_donatie`,
 1 AS `nume_donator`,
 1 AS `adresa_donator`,
 1 AS `telefon_donator`,
 1 AS `suma_donata`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `istoricveterinaranimal`
--

DROP TABLE IF EXISTS `istoricveterinaranimal`;
/*!50001 DROP VIEW IF EXISTS `istoricveterinaranimal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `istoricveterinaranimal` AS SELECT 
 1 AS `id_animal`,
 1 AS `nume_animal`,
 1 AS `detalii_veterinare`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `provizii_view`
--

DROP TABLE IF EXISTS `provizii_view`;
/*!50001 DROP VIEW IF EXISTS `provizii_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `provizii_view` AS SELECT 
 1 AS `id_provizie`,
 1 AS `nume_provizie`,
 1 AS `cantitate`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vederefonduri`
--

/*!50001 DROP VIEW IF EXISTS `vederefonduri`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vederefonduri` AS select `fonduri`.`id_fond` AS `id_fond`,`fonduri`.`buget` AS `buget`,`fonduri`.`intrari` AS `intrari`,`fonduri`.`iesiri` AS `iesiri`,((`fonduri`.`buget` - `fonduri`.`iesiri`) + `fonduri`.`intrari`) AS `sold_ramas` from `fonduri` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `adapostlocuridisponibile`
--

/*!50001 DROP VIEW IF EXISTS `adapostlocuridisponibile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `adapostlocuridisponibile` AS select `adapost`.`id_adapost` AS `id_adapost`,`adapost`.`nume_adapost` AS `nume_adapost`,`adapost`.`adresa_adapost` AS `adresa_adapost`,(`adapost`.`numar_locuri` - count(`loc`.`id_loc`)) AS `locuri_disponibile` from (`adapost` left join `loc` on((`adapost`.`id_adapost` = `loc`.`id_adapost`))) group by `adapost`.`id_adapost`,`adapost`.`nume_adapost`,`adapost`.`adresa_adapost`,`adapost`.`numar_locuri` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `donatiidonatori`
--

/*!50001 DROP VIEW IF EXISTS `donatiidonatori`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `donatiidonatori` AS select `donatie`.`id_donatie` AS `id_donatie`,`donator`.`nume_donator` AS `nume_donator`,`donator`.`adresa_donator` AS `adresa_donator`,`donator`.`telefon_donator` AS `telefon_donator`,`donatie`.`suma_donata` AS `suma_donata` from (`donatie` join `donator` on((`donatie`.`id_donator` = `donator`.`id_donator`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `istoricveterinaranimal`
--

/*!50001 DROP VIEW IF EXISTS `istoricveterinaranimal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `istoricveterinaranimal` AS select `animal`.`id_animal` AS `id_animal`,`animal`.`nume_animal` AS `nume_animal`,`istoricveterinar`.`detalii_veterinare` AS `detalii_veterinare` from ((`animal` left join `animal_istoric` on((`animal`.`id_animal` = `animal_istoric`.`id_animal`))) left join `istoricveterinar` on((`animal_istoric`.`id_istoric` = `istoricveterinar`.`id_istoric`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `provizii_view`
--

/*!50001 DROP VIEW IF EXISTS `provizii_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `provizii_view` AS select `provizii`.`id_provizie` AS `id_provizie`,`provizii`.`nume_provizie` AS `nume_provizie`,`provizii`.`cantitate` AS `cantitate` from `provizii` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 14:08:10
