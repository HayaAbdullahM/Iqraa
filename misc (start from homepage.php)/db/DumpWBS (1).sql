CREATE DATABASE  IF NOT EXISTS `iqraa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `iqraa`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: iqraa
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` int NOT NULL,
  `Fname` varchar(45) DEFAULT NULL,
  `Lname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `pfp` blob,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Deema','Bashamakh','deema','deema123',NULL),(2,'Bashayer','Almashaan','bashayer','bashayer123',NULL),(3,'Haifa','Althonayan','haifa','haifa123',NULL),(4,'Felwa','Albinali','felwa','felwa123',NULL),(5,'Haya','Almossaeed','haya','haya123',NULL),(6,'Roaa','Ainaddin','roaa','roaa123',NULL),(7,'Maryam','Aljaafari','maryam','maryam123',NULL),(8,'Maitha','Alqahtani','maitha','maitha123',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prodid` int NOT NULL AUTO_INCREMENT,
  `Pname` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `description` varchar(700) DEFAULT NULL,
  `img1` varchar(150) DEFAULT NULL,
  `img2` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `noOfPages` int DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prodid`),
  UNIQUE KEY `Pname` (`Pname`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'The Rules of Work','Richard Templar',35,'Some people are simply great at their job; they always seem to say or do the right thing. They are mentioned in every conversation. Everybody likes them. They get promoted. They get pay raises. They get along with the boss. And somehow, they do all these things without being unpleasant, breaking much of a sweat or seeming to put in excess effort. And when they are offered another step up the corporate ladder or a fabulous new job, no one is surprised. ','images/the rules of work.png',NULL,9,256,'Self-Help'),(2,'Atomic Habits','James Clear',40,'No matter your goals, Atomic Habits offers a proven framework for improving--every day. James Clear, one of the worlds leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results.','images/atomichabits.png',NULL,56,345,'Self-Help'),(3,'Solito: A Memoir','Javier Zamora',45,'A young poet tells the inspiring story of his migration from El Salvador to the United States at the age of nine in this “gripping memoir” (NPR) of bravery, hope, and finding family.  \r\nLONGLISTED: PEN/Open Book Award, PEN/John Kenneth Galbraith Award • “I read Solito with my heart in my throat and did not burst into tears until the last sentence. What a person, what a writer, what a book.”—Emma Straub','images/solito.png',NULL,0,386,'Memoir'),(4,'Stolen Focus','Johann Hari ',40,'Our ability to pay attention is collapsing. From the New York Times bestselling author of Chasing the Scream and Lost Connections comes a groundbreaking examination of why this is happening—and how to get our attention back.','images/stolenfocus.png',NULL,10,348,'Self-Help'),(5,'Visual Thinking','Temple Grandin',50,'A quarter of a century after her memoir, Thinking in Pictures, forever changed how the world understood autism, Temple Grandin—the “anthropologist on Mars,” as Oliver Sacks dubbed her—transforms our awareness of the different ways our brains are wired. Do you have a keen sense of direction, a love of puzzles, the ability to assemble furniture without crying? You are likely a visual thinker.','images/visualthinking.png',NULL,16,352,'Social Sciences'),(6,'The Creative Act','Rick Rubin',70,'Many famed music producers are known for a particular sound that has its day and then ages out. Rick Rubin is known for something else: creating a space where artists of all different genres and traditions can home in on who they really are and what they really offer. He has made a practice of helping people transcend their self-imposed expectations in order to reconnect with a state of innocence from which the surprising becomes inevitable.','images/creativeact.png',NULL,59,432,'Self-Help');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 14:23:52
