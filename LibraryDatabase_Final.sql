-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `audiobook`
--

DROP TABLE IF EXISTS `audiobook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audiobook` (
  `Item_ITEM_ID` int NOT NULL,
  `AUDIO_NAME` longtext,
  `AUDIO_PAGE_LENGTH` int DEFAULT NULL,
  `AUDIO_GENRE` longtext,
  `Location_LOC_ID` int NOT NULL,
  PRIMARY KEY (`Item_ITEM_ID`,`Location_LOC_ID`),
  KEY `fk_Audiobook_Location1_idx` (`Location_LOC_ID`),
  KEY `fk_Audiobook_Item1_idx` (`Item_ITEM_ID`),
  CONSTRAINT `fk_Audiobook_Item1` FOREIGN KEY (`Item_ITEM_ID`) REFERENCES `item` (`ITEM_ID`),
  CONSTRAINT `fk_Audiobook_Location1` FOREIGN KEY (`Location_LOC_ID`) REFERENCES `location` (`LOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audiobook`
--

LOCK TABLES `audiobook` WRITE;
/*!40000 ALTER TABLE `audiobook` DISABLE KEYS */;
INSERT INTO `audiobook` VALUES (65,'A Thousand Splendid Suns',NULL,'Afghanistan',1),(66,'The Wolf and the Dove',508,'Audiobook',1),(67,'Farms',NULL,'Farms',3),(68,'The Broker',0,'Fiction',1),(69,'If You Give a Mouse a Cookie',NULL,'Audiobooks',1),(70,'Otherwise Known as Sheila the Great',0,'Juvenile Fiction',1),(71,'The River of Doubt',0,'Biography & Autobiography',5),(72,'The Rule of Four',NULL,'Audiobook',3),(73,'Agincourt',5,'Agincourt, Battle of, Agincourt, France, 1415',3),(74,'Fudge-a-mania',0,'Juvenile Fiction',1),(75,'Curious George Gets a Medal',48,'Juvenile Fiction',1),(76,'Flanagan\'s Run',0,'Audiobook',1),(77,'Soupy Saturdays with the Pain and the Great One',0,'Juvenile Fiction',1),(78,'Disney\'s the Little Mermaid',24,'Juvenile Fiction',1),(79,'Wet Dog!',36,'Audiobook',1),(80,'Birds',36,'Juvenile Nonfiction',3),(81,'Magnets',34,'Audiobook',3),(82,'Italian Fever',NULL,'Audiobook',1),(83,'A Velvet Scream',NULL,NULL,10),(84,'Caos calmo',NULL,'Fiction',1),(85,'Kao and the Golden Fish',32,'Audiobook',1),(86,'Edmund Unravels',NULL,'Adventure stories',1),(87,'The Lion, the Witch and the Wardrobe Unabridged',NULL,'Juvenile Fiction',1),(88,'What Santa Can\'t Do',32,'Audiobook',1),(89,'The Winter Pony',NULL,'Audiobook',1),(90,'Caesar',32,'Juvenile Nonfiction',3),(91,'Living Language Greek, Essential Edition',208,NULL,10),(92,'The Mercy Watson Collection',0,'Juvenile Fiction',1),(93,'Living Language Russian',272,'Foreign Language Study',3),(94,'Barry',3,'Audiobook',1),(95,'Out of Season',NULL,'Audiobook',1),(96,'Bentley and Blueberry',36,'Audiobook',1),(97,'Jasmine',32,'Juvenile Nonfiction',3),(98,'Antonio Vivaldi',28,'Juvenile Nonfiction',3);
/*!40000 ALTER TABLE `audiobook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `Item_ITEM_ID` int NOT NULL,
  `BOOK_NAME` longtext,
  `BOOK_TYPE` longtext,
  `BOOK_PAGE_NUM` int DEFAULT NULL,
  `BOOK_GENRE` longtext,
  `Location_LOC_ID` int NOT NULL,
  PRIMARY KEY (`Item_ITEM_ID`,`Location_LOC_ID`),
  KEY `fk_Book_Location1_idx` (`Location_LOC_ID`),
  KEY `fk_Book_Item1_idx` (`Item_ITEM_ID`),
  CONSTRAINT `fk_Book_Item1` FOREIGN KEY (`Item_ITEM_ID`) REFERENCES `item` (`ITEM_ID`),
  CONSTRAINT `fk_Book_Location1` FOREIGN KEY (`Location_LOC_ID`) REFERENCES `location` (`LOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (25,'Learn Python Programming the Easy and Fun Way','BOOK',NULL,'Computers',9),(26,'Programming Python, 3/E','BOOK',1552,NULL,10),(27,'Murach\'s Python Programming (2nd Edition)','BOOK',564,NULL,10),(28,'Beginning Programming with Python For Dummies','BOOK',422,'Computers',9),(29,'Automate the Boring Stuff with Python, 2nd Edition','BOOK',592,'Computers',9),(30,'Python Programming in Context','BOOK',516,'Computers',9),(31,'Learning Python','BOOK',1600,NULL,10),(32,'Learn Python Programming','BOOK',508,'Computers',9),(33,'Programming in Python 3','BOOK',648,'Object-oriented programming (Computer science).',9),(34,'Python for Kids','BOOK',348,'Computers',9),(35,'Black Hat Python','BOOK',195,'Computers',9),(36,'Python Projects for Beginners','BOOK',351,'Computers',9),(37,'Python Programming Fundamentals','BOOK',239,'Computers',9),(38,'Python Programming On Win32','BOOK',672,'Computers',9),(39,'Teach Your Kids to Code','BOOK',336,'Computers',9),(40,'Python Programming Language','BOOK',0,NULL,10),(41,'Python Programming in Context','BOOK',519,'Computers',9),(42,'Introduction to Computation and Programming Using Python, third edition','BOOK',496,'Computers',9),(43,'Expert Python Programming','BOOK',646,'Computers',9),(44,'Basics of Python Programming','BOOK',94,'Computers',9),(45,'Expert Python Programming','BOOK',630,'Computers',9),(46,'Python for Beginners','BOOK',NULL,'Computers',9),(47,'Invent Your Own Computer Games with Python, 4th Edition','BOOK',377,'Computers',9),(48,'Python Programming','BOOK',NULL,NULL,10),(49,'Python Programming from Beginner to Paid Professional Part 1','BOOK',NULL,'Computers',9),(50,'An Introduction to Python Programming for Scientists and Engineers','BOOK',768,'Science',9),(51,'Coding for Kids in Python: Python Programming Projects for Kids and Beginners to Get Started Programming Fun Games','BOOK',171,'Young Adult Nonfiction',9),(52,'Bite-Size Python','BOOK',245,'Computers',9),(53,'Computing for Biologists','BOOK',219,'Science',9),(54,'Programming With Python','BOOK',321,'Computers',9),(55,'Creative Coding in Python','BOOK',147,'Juvenile Nonfiction',9),(56,'Cambridge IGCSE® and O Level Computer Science Programming Book for Python','BOOK',209,'Education',9),(57,'Core Python Programming','BOOK',1077,'Computers',9),(58,'Python','BOOK',0,'Python (Computer program language)',9),(59,'Introduction to Python Programming for Business and Social Science Applications','BOOK',392,'Business & Economics',9),(60,'Learn Python','BOOK',141,'Computers',9),(61,'Gray Hat Python','BOOK',220,'Computers',9),(62,'Learn to Code by Solving Problems','BOOK',0,'Computers',9),(63,'Beginning Python','BOOK',667,'Computers',9),(64,'Learn Python Programming the Easy and Fun Way','BOOK',NULL,'Computers',9);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `Item_ITEM_ID` int NOT NULL,
  `FILM_NAME` longtext,
  `FILM_TYPE` longtext,
  `FILM_LENGTH` int DEFAULT NULL,
  `FILM_GENRE` longtext,
  `Location_LOC_ID` int NOT NULL,
  PRIMARY KEY (`Item_ITEM_ID`,`Location_LOC_ID`),
  KEY `fk_Film_Location1_idx` (`Location_LOC_ID`),
  KEY `fk_Film_Item1_idx` (`Item_ITEM_ID`),
  CONSTRAINT `fk_Film_Item1` FOREIGN KEY (`Item_ITEM_ID`) REFERENCES `item` (`ITEM_ID`),
  CONSTRAINT `fk_Film_Location1` FOREIGN KEY (`Location_LOC_ID`) REFERENCES `location` (`LOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (0,'Afro Samurai: Resurrection','DVD',100,'Fantasy',19),(1,'Baby Driver','Blu-ray',112,'Fiction',1),(2,'Birds of Prey','Blu-ray',109,'Fiction',1),(3,'Get Out','Blu-ray',104,'Mystery',15),(4,'The Great Debaters','DVD',126,'Biographies',5),(5,'Her','Blu-ray',126,'Science',11),(6,'Hot Fuzz','DVD',120,'Mystery',16),(7,'I, Robot','DVD',114,'Science',12),(8,'Knives Out','Blu-ray',130,'Mystery',15),(9,'Leroy & Stich','DVD',72,'Children',7),(10,'Moana','Blu-ray',107,'Children',8),(11,'Night at the Museum','DVD',104,'Children',8),(12,'The X-Files','DVD',122,'Mystery',16),(13,'The Dark Knight','Blu-ray',152,'Fiction',1),(14,'Inception','Blu-ray',148,'Fiction',1),(15,'The Godfather','DVD',175,'Drama',3),(16,'The Shawshank Redemption','DVD',142,'Drama',3),(17,'Pulp Fiction','DVD',154,'Fiction',1),(18,'The Matrix','Blu-ray',136,'Science',11),(19,'The Lion King','Blu-ray',88,'Children',7),(20,'Toy Story','DVD',81,'Children',7),(21,'Forrest Gump','DVD',142,'Drama',3),(22,'Jurassic Park','DVD',127,'Science',11),(23,'Back to the Future','Blu-ray',116,'Science',11),(24,'The Lord of the Rings: The Fellowship of the Ring','DVD',178,'Fantasy',19);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ITEM_ID` int NOT NULL,
  `ITEM_TYPE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (0,'Film'),(1,'Film'),(2,'Film'),(3,'Film'),(4,'Film'),(5,'Film'),(6,'Film'),(7,'Film'),(8,'Film'),(9,'Film'),(10,'Film'),(11,'Film'),(12,'Film'),(13,'Film'),(14,'Film'),(15,'Film'),(16,'Film'),(17,'Film'),(18,'Film'),(19,'Film'),(20,'Film'),(21,'Film'),(22,'Film'),(23,'Film'),(24,'Film'),(25,'Book'),(26,'Book'),(27,'Book'),(28,'Book'),(29,'Book'),(30,'Book'),(31,'Book'),(32,'Book'),(33,'Book'),(34,'Book'),(35,'Book'),(36,'Book'),(37,'Book'),(38,'Book'),(39,'Book'),(40,'Book'),(41,'Book'),(42,'Book'),(43,'Book'),(44,'Book'),(45,'Book'),(46,'Book'),(47,'Book'),(48,'Book'),(49,'Book'),(50,'Book'),(51,'Book'),(52,'Book'),(53,'Book'),(54,'Book'),(55,'Book'),(56,'Book'),(57,'Book'),(58,'Book'),(59,'Book'),(60,'Book'),(61,'Book'),(62,'Book'),(63,'Book'),(64,'Book'),(65,'Audiobook'),(66,'Audiobook'),(67,'Audiobook'),(68,'Audiobook'),(69,'Audiobook'),(70,'Audiobook'),(71,'Audiobook'),(72,'Audiobook'),(73,'Audiobook'),(74,'Audiobook'),(75,'Audiobook'),(76,'Audiobook'),(77,'Audiobook'),(78,'Audiobook'),(79,'Audiobook'),(80,'Audiobook'),(81,'Audiobook'),(82,'Audiobook'),(83,'Audiobook'),(84,'Audiobook'),(85,'Audiobook'),(86,'Audiobook'),(87,'Audiobook'),(88,'Audiobook'),(89,'Audiobook'),(90,'Audiobook'),(91,'Audiobook'),(92,'Audiobook'),(93,'Audiobook'),(94,'Audiobook'),(95,'Audiobook'),(96,'Audiobook'),(97,'Audiobook'),(98,'Audiobook');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LOC_ID` int NOT NULL AUTO_INCREMENT,
  `LOCATION_SECTION` longtext,
  `LOCATION_SHELF` longtext,
  PRIMARY KEY (`LOC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Fiction','A1'),(2,'Fiction','A2'),(3,'Non-Fiction','B1'),(4,'Non-Fiction','B2'),(5,'Biographies','C1'),(6,'Biographies','C2'),(7,'Children','D1'),(8,'Children','D2'),(9,'Reference','E1'),(10,'Reference','E2'),(11,'Science','F1'),(12,'Science','F2'),(13,'History','G1'),(14,'History','G2'),(15,'Mystery','H1'),(16,'Mystery','H2'),(17,'Romance','I1'),(18,'Romance','I2'),(19,'Fantasy','J1'),(20,'Fantasy','J2'),(21,'Self-Help','K1'),(22,'Self-Help','K2'),(23,'Graphic Novels','L1'),(24,'Graphic Novels','L2');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `MEM_ID` int NOT NULL AUTO_INCREMENT,
  `MEM_NAME` longtext,
  `MEM_PHONE_NUMBER` varchar(15) DEFAULT NULL,
  `MEM_EMAIL` longtext,
  PRIMARY KEY (`MEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Harry','2105553303','HarryK@email.com'),(2,'Connor','3552456021','ConnorC@email.com'),(3,'Emilio','4226517256','EmilioR@email.com'),(4,'Carl','6895876652','CarlF@email.com'),(5,'Harold','4458752465','HaroldN@email.com'),(6,'Gerard','2465484454','GerardA@email.com'),(7,'Newt','3559842654','NewtG@email.com'),(8,'Caroline','7554873201','CarolineM@email.com'),(9,'Jennifer','7854725564','JenniferG@email.com'),(10,'Holly','4445642541','HollyH@email.com'),(11,'Baron','8354875249','BaronH@email.com'),(12,'Susan','2254876802','SusanM@email.com'),(13,'David','3506845587','DavidM@email.com'),(14,'Lucy','4821145765','LucyM@email.com'),(15,'Sean','6654875215','SeanM@email.com'),(16,'Austin','8974541428','AustinJ@email.com'),(17,'Dustin','1254869844','DustinQ@email.com'),(18,'Adam','3984875421','AdamR@email.com'),(19,'Melody','7778885555','MelodyM@email.com'),(20,'Uriel','3258845648','UrielC@email.com'),(21,'Dempsey','4785989945','DempseyT@email.com'),(22,'Takeo','5547241865','TakeoM@email.com'),(23,'Richtofen','1586544532','RichtofenE@email.com'),(24,'Nikolai','2147483647','NikolaiB@email.com');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `overdue_reservations`
--

DROP TABLE IF EXISTS `overdue_reservations`;
/*!50001 DROP VIEW IF EXISTS `overdue_reservations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `overdue_reservations` AS SELECT 
 1 AS `RESERVE_ID`,
 1 AS `MEM_NAME`,
 1 AS `RESERVE_DUE_DATE`,
 1 AS `RESERVE_FINE`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `RESERVE_ID` int NOT NULL AUTO_INCREMENT,
  `RESERVE_RETURN_DATE` date DEFAULT NULL,
  `RESERVE_DUE_DATE` date DEFAULT NULL,
  `RESERVE_DATE` date DEFAULT NULL,
  `RESERVE_FINE` decimal(10,0) DEFAULT NULL,
  `Item_ITEM_ID` int NOT NULL,
  `Member_MEM_ID` int NOT NULL,
  `Staff_STAFF_ID` int NOT NULL,
  PRIMARY KEY (`RESERVE_ID`,`Item_ITEM_ID`,`Member_MEM_ID`,`Staff_STAFF_ID`),
  KEY `fk_Hold_Member1_idx` (`Member_MEM_ID`),
  KEY `fk_CheckedOut_Staff1_idx` (`Staff_STAFF_ID`),
  KEY `fk_Reservation_Item1_idx` (`Item_ITEM_ID`),
  CONSTRAINT `fk_CheckedOut_Staff1` FOREIGN KEY (`Staff_STAFF_ID`) REFERENCES `staff` (`STAFF_ID`),
  CONSTRAINT `fk_Hold_Member1` FOREIGN KEY (`Member_MEM_ID`) REFERENCES `member` (`MEM_ID`),
  CONSTRAINT `fk_Reservation_Item1` FOREIGN KEY (`Item_ITEM_ID`) REFERENCES `item` (`ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2023-04-15','2023-04-10','2023-04-01',5,4,1,1),(2,'2023-04-20','2023-04-15','2023-04-05',5,11,2,4),(3,NULL,'2023-04-28','2023-04-18',NULL,0,7,3),(4,NULL,'2023-04-29','2023-04-19',NULL,1,8,2),(5,NULL,'2023-04-30','2023-04-20',NULL,2,9,6),(6,NULL,'2023-05-01','2023-04-21',NULL,3,1,8),(7,NULL,'2023-05-02','2023-04-22',NULL,5,2,12),(8,NULL,'2023-05-03','2023-04-23',NULL,6,3,16),(9,NULL,'2023-05-04','2023-04-24',NULL,7,4,14),(10,NULL,'2023-05-05','2023-04-25',NULL,8,5,9),(11,NULL,'2023-05-06','2023-04-26',NULL,9,6,9),(12,NULL,'2023-05-07','2023-04-27',NULL,10,7,18),(13,NULL,'2023-05-08','2023-04-28',NULL,12,8,7),(14,'2023-04-22','2023-04-18','2023-04-08',4,13,3,2),(15,'2023-04-28','2023-04-20','2023-04-10',8,14,4,4),(16,NULL,'2023-05-02','2023-04-22',NULL,15,5,6),(17,NULL,'2023-05-05','2023-04-25',NULL,16,6,8),(18,'2023-05-01','2023-04-28','2023-04-18',3,17,7,10),(19,NULL,'2023-05-08','2023-04-28',NULL,18,1,12),(20,'2023-05-03','2023-04-30','2023-04-20',3,19,2,3),(21,NULL,'2023-05-10','2023-04-30',NULL,20,3,5),(22,'2023-05-08','2023-05-01','2023-04-21',7,21,4,7),(23,NULL,'2023-05-12','2023-05-02',NULL,22,5,9),(24,'2023-05-10','2023-05-03','2023-04-23',7,23,6,11);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_fine_before_return` BEFORE UPDATE ON `reservation` FOR EACH ROW BEGIN
  IF NEW.RESERVE_RETURN_DATE IS NOT NULL AND NEW.RESERVE_RETURN_DATE > NEW.RESERVE_DUE_DATE THEN
    SET NEW.RESERVE_FINE = DATEDIFF(NEW.RESERVE_RETURN_DATE, NEW.RESERVE_DUE_DATE) * 1;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `STAFF_ID` int NOT NULL AUTO_INCREMENT,
  `STAFF_NAME` longtext,
  `STAFF_PHONE_NUMBER` varchar(15) DEFAULT NULL,
  `STAFF_EMAIL` longtext,
  PRIMARY KEY (`STAFF_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Alfred','2105551564','Volunteer1@Library.com'),(2,'Kane','2105554562','Volunteer2@Library.com'),(3,'Robert','2105558751','Volunteer3@Library.com'),(4,'Suzy','2105559862','Volunteer4@Library.com'),(5,'Mary','2105553541','Volunteer5@Library.com'),(6,'Christina','2105550258','Volunteer6@Library.com'),(7,'Gale','2105553548','Volunteer7@Library.com'),(8,'Bennet','2105557845','Volunteer8@Library.com'),(9,'Bill','2105551552','Volunteer9@Library.com'),(10,'Casey','2105552210','Volunteer10@Library.com'),(11,'Desmond','2105553501','Volunteer11@Library.com'),(12,'Edward','2105553865','Volunteer12@Library.com'),(13,'Kassandra','2105556581','Volunteer13@Library.com'),(14,'Jacob','2105557410','Volunteer14@Library.com'),(15,'Rebecca','2105557452','Volunteer15@Library.com'),(16,'Trevor','2105553542','Volunteer16@Library.com'),(17,'Simon','2105558641','Volunteer17@Library.com'),(18,'Isaac','2105553846','Volunteer18@Library.com'),(19,'Lisa','2105553586','Employee1@Library.com'),(20,'Hector','2105551746','Employee2@Library.com'),(21,'Charlette','2105557741','Employee3@Library.com'),(22,'Nathan','2105558854','Employee4@Library.com'),(23,'Christopher','2105559662','Employee5@Library.com'),(24,'Maria','2105553544','Employee6@Library.com');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'library'
--
/*!50003 DROP PROCEDURE IF EXISTS `ExtendDueDatesByOneWeek` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ExtendDueDatesByOneWeek`()
BEGIN
  DECLARE done INT DEFAULT 0;
  DECLARE reserveID INT;
  DECLARE dueDate DATE;
  
  DECLARE cur CURSOR FOR
    SELECT RESERVE_ID, RESERVE_DUE_DATE
    FROM reservation;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  OPEN cur;

  read_loop: LOOP
    FETCH cur INTO reserveID, dueDate;
    IF done THEN
      LEAVE read_loop;
    END IF;

    UPDATE reservation
    SET RESERVE_DUE_DATE = DATE_ADD(dueDate, INTERVAL 1 WEEK)
    WHERE RESERVE_ID = reserveID;

  END LOOP;

  CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetOverdueItemsForMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GetOverdueItemsForMember`(IN memberId INT)
BEGIN
  SELECT Item_ITEM_ID
  FROM reservation
  WHERE Member_MEM_ID = memberId
    AND RESERVE_DUE_DATE < CURDATE()
    AND RESERVE_RETURN_DATE IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTotalReservationsForMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `GetTotalReservationsForMember`(IN memberId INT, OUT totalReservations INT)
BEGIN
  SELECT COUNT(*)
  INTO totalReservations
  FROM Reservation
  WHERE Member_MEM_ID = memberId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `overdue_reservations`
--

/*!50001 DROP VIEW IF EXISTS `overdue_reservations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `overdue_reservations` AS select `r`.`RESERVE_ID` AS `RESERVE_ID`,`m`.`MEM_NAME` AS `MEM_NAME`,`r`.`RESERVE_DUE_DATE` AS `RESERVE_DUE_DATE`,`r`.`RESERVE_FINE` AS `RESERVE_FINE` from (`reservation` `r` join `member` `m` on((`r`.`Member_MEM_ID` = `m`.`MEM_ID`))) where (`r`.`RESERVE_RETURN_DATE` > `r`.`RESERVE_DUE_DATE`) */;
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

-- Dump completed on 2023-04-30 19:31:37
