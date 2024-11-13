-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pwhl-fantasy
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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `team` varchar(50) NOT NULL,
  `position` enum('F','D','G') NOT NULL,
  `status` enum('active','injured','benched') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Natalie Spooner','TOR','F','active'),(2,'Sarah Nurse','TOR','F','active'),(3,'Marie-Philip Poulin','MTL','F','active'),(4,'Alex Carpenter','NY','F','active'),(5,'Ella Shelton','NY','D','active'),(6,'Brianne Jenner','OTT','F','active'),(7,'Grace Zumwinkle','MIN','F','active'),(8,'Emma Maltais','TOR','F','active'),(9,'Laura Stacey','MTL','F','active'),(10,'Kateřina Mrázová','OTT','F','active'),(11,'Erin Ambrose','MTL','D','active'),(12,'Daryl Watts','OTT','F','active'),(13,'Kendall Coyne Schofield','MIN','F','active'),(14,'Alina Müller','BOS','F','active'),(15,'Maureen Murphy','MTL','F','active'),(16,'Kelly Pannek','MIN','F','active'),(17,'Emily Clark','OTT','F','active'),(18,'Megan Keller','BOS','D','active'),(19,'Hannah Miller','TOR','F','active'),(20,'Jessie Eldridge','NY','F','active'),(21,'Jade Downie-Landry','NY','F','active'),(22,'Abby Roque','NY','F','active'),(23,'Jaime Bourbonnais','NY','D','active'),(24,'Taylor Heise','MIN','F','active'),(25,'Susanna Tapani','BOS','F','active'),(26,'Renata Fast','TOR','D','active'),(27,'Gabbie Hughes','OTT','F','active'),(28,'Savannah Harmon','OTT','D','active'),(29,'Tereza Vanišová','OTT','F','active'),(30,'Lexie Adzija','BOS','F','active'),(31,'Hilary Knight','BOS','F','active'),(32,'Jamie Lee Rattray','BOS','F','active'),(33,'Hannah Brandt','BOS','F','active'),(34,'Hayley Scamurra','OTT','F','active'),(35,'Sophie Jaques','MIN','D','active'),(36,'Jocelyne Larocque','TOR','D','active'),(37,'Claire Dalton','MTL','F','active'),(38,'Kristin O\'Neill','MTL','F','active'),(39,'Blayre Turnbull','TOR','F','active'),(40,'Rebecca Leslie','TOR','F','active'),(41,'Amanda Boulier','MTL','D','active'),(42,'Michela Cava','MIN','F','active'),(43,'Brittany Howard','TOR','F','active'),(44,'Aneta Tejralová','OTT','D','active'),(45,'Lee Stecklein','MIN','D','active'),(46,'Chloe Aurard','NY','F','active'),(47,'Loren Gabel','BOS','F','active'),(48,'Ashton Bell','OTT','D','active'),(49,'Taylor Girard','BOS','F','active'),(50,'Theresa Schafzahl','BOS','F','active'),(51,'Maggie Connors','TOR','F','active'),(52,'Kali Flanagan','TOR','D','active'),(53,'Denisa Křížová','MIN','F','active'),(54,'Catherine Dubois','MTL','F','active'),(55,'Gabrielle David','MTL','F','active'),(56,'Natalie Buchbinder','MIN','D','active'),(57,'Natalie Snodgrass','OTT','F','active'),(58,'Maggie Flaherty','MIN','D','active'),(59,'Allie Munroe','TOR','D','active'),(60,'Kati Tabin','MTL','D','active'),(61,'Abby Boreen','MIN','F','active'),(62,'Mélodie Daoust','MTL','F','active'),(63,'Sophie Shirley','BOS','F','active'),(64,'Mikyla Grant-Mentis','MTL','F','active'),(65,'Ann-Sophie Bettez','MTL','F','active'),(66,'Victoria Bach','TOR','F','active'),(67,'Emma Woods','NY','F','active'),(68,'Jesse Compher','TOR','F','active'),(69,'Brooke Hobson','NY','D','active'),(70,'Sarah Lefort','MTL','F','active'),(71,'Jincy Roese','OTT','D','active'),(72,'Sarah Bujold','MTL','F','active'),(73,'Elizabeth Giguère','NY','F','active'),(74,'Leah Lum','MTL','F','active'),(75,'Emily Brown','BOS','D','active'),(76,'Jillian Dempsey','MTL','F','active'),(77,'Gigi Marvin','BOS','F','active'),(78,'Sidney Morin','BOS','D','active'),(79,'Kayla Vespa','NY','F','active'),(80,'Kaleigh Fratkin','BOS','D','active'),(81,'Sophia Kunin','MIN','F','active'),(82,'Nicole Kosta','BOS','F','active'),(83,'Claire Butorac','MIN','F','active'),(84,'Jess Healey','BOS','D','active'),(85,'Alexandra Labelle','NY','F','active'),(86,'Zoe Boyd','OTT','D','active'),(87,'Liz Schepers','MIN','F','active'),(88,'Micah Zandee-Hart','NY','D','active'),(89,'Becca Gilmore','OTT','F','active'),(90,'Paetyn Levis','NY','F','active'),(91,'Jessica Digirolamo','BOS','D','active'),(92,'Mariah Keopple','MTL','D','active'),(93,'Abby Cook ','BOS','D','active'),(94,'Samantha Cogan','TOR','F','active'),(95,'Akane Shiga','OTT','F','active'),(96,'Alexa Vasko','TOR','F','active'),(97,'Kennedy Marchment','MTL','F','active'),(98,'Jill Saulnier','NY','F','active'),(99,'Brittyn Fleming','MIN','F','active'),(100,'Amanda Pelkey','BOS','F','active'),(101,'Catherine Daoust','MTL','D','active'),(102,'Madison Bizal','MTL','D','active'),(103,'Mellissa Channell-Watkins','MIN','D','active'),(104,'Kristin Della Rovere','OTT','F','active'),(105,'Fanni Garát-Gasparics','OTT','F','active'),(106,'Brooke Bryant','MIN','F','active'),(107,'Kelly Babstock','BOS','F','active'),(108,'Sydney Brodt','MIN','F','active'),(109,'Olivia Zafuto','NY','D','active'),(110,'Nicole Hensley','MIN','G','active'),(111,'Brigitte Laganière','MTL','D','active'),(112,'Olivia Knowles','TOR','D','active'),(113,'Savannah Norcross','NY','F','active'),(114,'Kristen Campbell','TOR','G','active'),(115,'Clair DeGeorge','MIN','F','active'),(116,'Emerance Maschmeyer','OTT','G','active'),(117,'Madison Packer','NY','F','active'),(118,'Kaitlin Willoughby','TOR','F','active'),(119,'Shiann Darkangelo','OTT','F','active'),(120,'Lauriane Rougeau','TOR','D','active'),(121,'Victoria Howran','OTT','D','active'),(122,'Carley Olivier','NY','D','active'),(123,'Lindsey Post','NY','G','active'),(124,'Malia Schneider','OTT','F','active'),(125,'Sandra Abstreiter','OTT','G','active'),(126,'Erica Howe','TOR','G','active'),(127,'Alexa Gruschow','NY','F','active'),(128,'Jess Jones','TOR','F','active'),(129,'Dominika Lásková','MTL','D','active'),(130,'Elaine Chuli','MTL','G','active'),(131,'Abigail Levy','NY','G','active'),(132,'Alexandra Poznikoff','MTL','F','active'),(133,'Emma Söderberg','BOS','G','active'),(134,'Sammy Davis','OTT','F','active'),(135,'Samantha Isbell','OTT','F','active'),(136,'Maddie Rooney','MIN','G','active'),(137,'Maude Poulin-Labelle','TOR','D','active'),(138,'Dominique Kremer','MIN','D','active'),(139,'Rosalie Demers','OTT','F','active'),(140,'Emma Buckles','OTT','D','active'),(141,'Corinne Schroeder','NY','G','active'),(142,'Ann-Renée Desbiens','MTL','G','active'),(143,'Taylor Wenczkowski','BOS','F','active'),(144,'Aerin Frankel','BOS','G','active'),(145,'Johanna Fällman','NY','D','active'),(146,'Taylor Baker','NY','D','active'),(147,'Emma Greco','MIN','D','active');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-13 17:59:06
