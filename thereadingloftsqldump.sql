-- MariaDB dump 10.19  Distrib 10.9.8-MariaDB, for Linux (x86_64)
--
-- Host: 10.200.208.126    Database: mpamias5995_db_thereadingloft
-- ------------------------------------------------------
-- Server version	10.4.33-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ANIME`
--

DROP TABLE IF EXISTS `ANIME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ANIME` (
  `BOOK_ID` int(11) NOT NULL,
  `SERIES` varchar(100) NOT NULL,
  `STUDIO` varchar(50) NOT NULL,
  PRIMARY KEY (`BOOK_ID`),
  CONSTRAINT `ANIME_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOK` (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ANIME`
--

LOCK TABLES `ANIME` WRITE;
/*!40000 ALTER TABLE `ANIME` DISABLE KEYS */;
INSERT INTO `ANIME` VALUES
(81,'One Piece','Toei Animation'),
(82,'Demon Slayer','Ufotable'),
(83,'One Punch Man','Madhouse'),
(84,'JoJo\'s Bizarre Adventure','David Production'),
(85,'My Hero Academia','Bones'),
(86,'Death Note','Madhouse'),
(87,'Attack on Titan','Wit Studio'),
(88,'Naruto','Pierrot'),
(89,'Dragon Ball','Toei Animation'),
(90,'Jujutsu Kaisen','MAPPA'),
(91,'Tokyo Ghoul','Pierrot'),
(92,'Code Geass','Sunrise'),
(93,'Bleach','Pierrot'),
(94,'Mob Psycho 100','Bones'),
(95,'Cowboy Bebop','Sunrise'),
(96,'Fairy Tail','A-1 Pictures'),
(97,'Hunter x Hunter','Madhouse'),
(98,'Black Clover','Pierrot'),
(99,'Blue Exorcist','A-1 Pictures'),
(100,'Neon Genesis Evangelion','Gainax');
/*!40000 ALTER TABLE `ANIME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOK`
--

DROP TABLE IF EXISTS `BOOK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOK` (
  `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_TITLE` varchar(100) NOT NULL,
  `BOOK_SERIALNUM` varchar(50) DEFAULT NULL,
  `BOOK_QUANTITY` int(11) NOT NULL,
  `BOOK_PRICE` decimal(10,2) NOT NULL,
  `PUBLISHER_ID` int(11) DEFAULT NULL,
  `CATEGORY_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`BOOK_ID`),
  KEY `PUBLISHER_ID` (`PUBLISHER_ID`),
  CONSTRAINT `BOOK_ibfk_1` FOREIGN KEY (`PUBLISHER_ID`) REFERENCES `PUBLISHER` (`PUBLISHER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK`
--

LOCK TABLES `BOOK` WRITE;
/*!40000 ALTER TABLE `BOOK` DISABLE KEYS */;
INSERT INTO `BOOK` VALUES
(1,'Harry Potter and the Sorcerer\'s Stone','HP001',100,19.99,1,'Fiction'),
(2,'The Hobbit','TH001',100,15.99,2,'Fiction'),
(3,'A Game of Thrones','AGOT001',100,25.99,3,'Fiction'),
(4,'Pride and Prejudice','PAP001',100,9.99,4,'Fiction'),
(5,'1984','1984001',100,14.99,5,'Fiction'),
(6,'Fourth Wing','FW1344',100,16.99,6,'Fiction'),
(7,'Irone Flame','FM2355',100,16.99,6,'Fiction'),
(8,'Onyx Storm','FM3558',100,20.99,6,'Fiction'),
(9,'The Great Gatsby','TGG001',100,13.99,9,'Fiction'),
(10,'A Tale of Two Cities','ATOTC001',100,8.99,10,'Fiction'),
(11,'To Kill a Mockingbird','TKAM001',100,14.99,1,'Fiction'),
(12,'The Catcher in the Rye','TCITR001',100,13.99,2,'Fiction'),
(13,'The Lord of the Rings','LOTR001',100,29.99,3,'Fiction'),
(14,'A Court of Thorns and Roses','ACOTAR12',100,25.99,4,'Fiction'),
(15,'A Court of Mist and Fury','ACOTAR23',100,18.99,4,'Fiction'),
(16,'A Court of Frost and Starlight','ACOTAR45',100,22.99,4,'Fiction'),
(17,'A Court of Silver Flames','ACOTAR56',100,19.99,4,'Fiction'),
(18,'A Court of Wings and Ruin','ACOTAR34',100,21.99,4,'Fiction'),
(19,'Anna Karenina','AK001',100,20.99,9,'Fiction'),
(20,'The Housemaid','TMOPW001',100,17.99,2,'Fiction'),
(21,'Brave New World','BNW001',100,15.99,2,'Fiction'),
(22,'The Kite Runner','TKR001',100,16.99,7,'Fiction'),
(23,'The Book Thief','TBT001',100,14.99,7,'Fiction'),
(24,'Caraval','CAR102',100,13.99,4,'Fiction'),
(25,'Legendary','CAR202',100,14.99,4,'Fiction'),
(26,'Finale','CR302',100,15.99,4,'Fiction'),
(27,'The Handmaid\'s Tale','THT001',100,16.99,8,'Fiction'),
(28,'The Shining','TS001',100,18.99,8,'Fiction'),
(29,'The Stand','TS001',100,19.99,9,'Fiction'),
(30,'The Wishing Game','WG5680',100,20.99,1,'Fiction'),
(31,'The Hunger Games','THG001',100,14.99,1,'Fiction'),
(32,'Catching Fire','CF001',100,15.99,1,'Fiction'),
(33,'Mockingjay','MJ001',100,16.99,1,'Fiction'),
(34,'Divergent','D001',100,14.99,3,'Fiction'),
(35,'Insurgent','I001',100,15.99,3,'Fiction'),
(36,'Allegiant','A001',100,16.99,3,'Fiction'),
(37,'The Maze Runner','TMR001',100,14.99,3,'Fiction'),
(38,'The Scorch Trials','TST001',100,15.99,3,'Fiction'),
(39,'The Death Cure','TDC001',100,16.99,3,'Fiction'),
(40,'The Giver','TG001',100,13.99,8,'Fiction'),
(41,'Fahrenheit 451','F451001',100,14.99,8,'Fiction'),
(42,'Dark Matter','DMF001',100,15.99,8,'Fiction'),
(43,'Catch-22','C22001',100,16.99,7,'Fiction'),
(44,'The Nightinggale','NGN001',100,17.99,5,'Fiction'),
(45,'Invisible Man','IM001',100,18.99,5,'Fiction'),
(46,'The Color Purple','TCP001',100,19.99,6,'Fiction'),
(47,'The Sun Also Rises','TSAR001',100,14.99,7,'Fiction'),
(48,'East of Eden','EOE001',100,15.99,8,'Fiction'),
(49,'Of Mice and Men','OMAM001',100,13.99,9,'Fiction'),
(50,'The Catcher in the Rye','TCITR002',100,13.99,5,'Fiction'),
(51,'In Order to Live','IOTL001',100,18.99,1,'Nonfiction'),
(52,'The Dragon, the Giant, and the Women','TDGW001',100,17.99,2,'Nonfiction'),
(53,'Educated','EDU001',100,19.99,3,'Nonfiction'),
(54,'Becoming','BEC001',100,20.99,4,'Nonfiction'),
(55,'The Immortal Life of Henrietta Lacks','ILHL001',100,16.99,5,'Nonfiction'),
(56,'Unbroken','UNB001',100,18.99,6,'Nonfiction'),
(57,'The Wright Brothers','TWB001',100,17.99,7,'Nonfiction'),
(58,'The Glass Castle','TGC001',100,15.99,8,'Nonfiction'),
(59,'Wild','WILD001',100,16.99,9,'Nonfiction'),
(60,'Into the Wild','ITW001',100,14.99,10,'Nonfiction'),
(61,'The Power of Habit','TPH001',100,18.99,1,'Nonfiction'),
(62,'Outliers','OUT001',100,19.99,2,'Nonfiction'),
(63,'The Tipping Point','TTP001',100,17.99,3,'Nonfiction'),
(64,'Blink','BLK001',100,16.99,4,'Nonfiction'),
(65,'David and Goliath','DAG001',100,18.99,5,'Nonfiction'),
(66,'The 7 Habits of Highly Effective People','7H001',100,20.99,6,'Nonfiction'),
(67,'Thinking, Fast and Slow','TFAS002',100,19.99,7,'Nonfiction'),
(68,'Sapiens: A Brief History of Humankind','SAPIENS002',100,21.99,8,'Nonfiction'),
(69,'Homo Deus: A Brief History of Tomorrow','HOMO001',100,22.99,9,'Nonfiction'),
(70,'The Subtle Art of Not Giving a F*ck','SAONGAF001',100,17.99,10,'Nonfiction'),
(71,'Atomic Habits','AH001',100,18.99,1,'Nonfiction'),
(72,'The Four Agreements','TFA001',100,16.99,2,'Nonfiction'),
(73,'Man\'s Search for Meaning','MSFM001',100,15.99,3,'Nonfiction'),
(74,'The Body Keeps the Score','TBKTS001',100,19.99,4,'Nonfiction'),
(75,'The Code Breaker','TCB001',100,21.99,5,'Nonfiction'),
(76,'The Warmth of Other Suns','TWOS001',100,22.99,6,'Nonfiction'),
(77,'The Soul of America','TSOA001',100,18.99,7,'Nonfiction'),
(78,'The Pioneers','TP001',100,17.99,8,'Nonfiction'),
(79,'The Splendid and the Vile','TSATV001',100,20.99,9,'Nonfiction'),
(80,'The Devil in the White City','TDWC001',100,19.99,10,'Nonfiction'),
(81,'One Piece','ONEPIECE002',100,19.99,1,'Anime'),
(82,'Demon Slayer','DS002',100,19.99,2,'Anime'),
(83,'One Punch Man','OPM002',100,19.99,3,'Anime'),
(84,'JoJo\'s Bizarre Adventure','JJBA002',100,19.99,4,'Anime'),
(85,'My Hero Academia','MHA002',100,19.99,5,'Anime'),
(86,'Death Note','DN002',100,19.99,6,'Anime'),
(87,'Attack on Titan','AOT002',100,19.99,7,'Anime'),
(88,'Naruto','NARUTO002',100,19.99,8,'Anime'),
(89,'Dragon Ball','DB002',100,19.99,9,'Anime'),
(90,'Jujutsu Kaisen','JK001',100,19.99,10,'Anime'),
(91,'Tokyo Ghoul','TG002',100,19.99,1,'Anime'),
(92,'Code Geass','CG002',100,19.99,2,'Anime'),
(93,'Bleach','BLEACH002',100,19.99,3,'Anime'),
(94,'Mob Psycho 100','MP1002',100,19.99,4,'Anime'),
(95,'Cowboy Bebop','CB002',100,19.99,5,'Anime'),
(96,'Fairy Tail','FT002',100,19.99,6,'Anime'),
(97,'Hunter x Hunter','HXH002',100,19.99,7,'Anime'),
(98,'Black Clover','BC002',100,19.99,8,'Anime'),
(99,'Blue Exorcist','BE002',100,19.99,9,'Anime'),
(100,'Neon Genesis Evangelion','NGE002',100,19.99,10,'Anime'),
(101,'The Women','AD1890',100,18.99,1,'FIC');
/*!40000 ALTER TABLE `BOOK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CUS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_LNAME` varchar(50) NOT NULL,
  `CUS_FNAME` varchar(50) NOT NULL,
  `CUS_STREET` varchar(100) DEFAULT NULL,
  `CUS_CITY` varchar(50) DEFAULT NULL,
  `CUS_STATE` varchar(50) DEFAULT NULL,
  `CUS_ZIP` varchar(10) DEFAULT NULL,
  `CUS_PHONE` varchar(15) DEFAULT NULL,
  `CUS_EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`CUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES
(1,'Smith','John','123 Maple St','Polk City','FL','33868','555-1234','john.smith@outlook.com'),
(2,'Johnson','Emily','456 Oak St','Lakeland','FL','33801','555-5678','emily.johnson@live.com'),
(3,'Williams','Michael','789 Pine St','Winter Haven','FL','33880','555-8765','michael.williams@yahoo.com'),
(4,'Brown','Sarah','101 Elm St','Auburndale','FL','33823','555-4321','sarah.brown@aol.com'),
(5,'Jones','David','202 Cedar St','Davenport','FL','33837','555-6789','david.jones@icloud.com'),
(6,'Garcia','Maria','303 Birch St','Plant City','FL','33563','555-9876','maria.garcia@outlook.com'),
(7,'Miller','James','404 Spruce St','Haines City','FL','33844','555-3456','james.miller@live.com'),
(8,'Davis','Jessica','505 Willow St','Polk City','FL','33868','555-6543','jessica.davis@yahoo.com'),
(9,'Rodriguez','Daniel','606 Ash St','Lakeland','FL','33801','555-7890','daniel.rodriguez@aol.com'),
(10,'Martinez','Laura','707 Poplar St','Winter Haven','FL','33880','555-0987','laura.martinez@icloud.com'),
(11,'Hernandez','Robert','808 Fir St','Auburndale','FL','33823','555-2345','robert.hernandez@outlook.com'),
(12,'Lopez','Linda','909 Cypress St','Davenport','FL','33837','555-5432','linda.lopez@live.com'),
(13,'Gonzalez','William','1010 Redwood St','Plant City','FL','33563','555-6781','william.gonzalez@yahoo.com'),
(14,'Wilson','Barbara','1111 Sequoia St','Haines City','FL','33844','555-8761','barbara.wilson@aol.com'),
(15,'Anderson','Richard','1212 Maple St','Polk City','FL','33868','555-4322','richard.anderson@icloud.com'),
(16,'Thomas','Susan','1313 Oak St','Lakeland','FL','33801','555-5679','susan.thomas@outlook.com'),
(17,'Taylor','Joseph','1414 Pine St','Winter Haven','FL','33880','555-8762','joseph.taylor@live.com'),
(18,'Moore','Karen','1515 Elm St','Auburndale','FL','33823','555-4323','karen.moore@yahoo.com'),
(19,'Jackson','Charles','1616 Cedar St','Davenport','FL','33837','555-6782','charles.jackson@aol.com'),
(20,'Martin','Betty','1717 Birch St','Plant City','FL','33563','555-9877','betty.martin@icloud.com'),
(21,'Lee','Christopher','1818 Spruce St','Haines City','FL','33844','555-3457','christopher.lee@outlook.com'),
(22,'Perez','Dorothy','1919 Willow St','Polk City','FL','33868','555-6544','dorothy.perez@live.com'),
(23,'Thompson','Matthew','2020 Ash St','Lakeland','FL','33801','555-7891','matthew.thompson@yahoo.com'),
(24,'White','Sandra','2121 Poplar St','Winter Haven','FL','33880','555-0988','sandra.white@aol.com'),
(25,'Harris','Anthony','2222 Fir St','Auburndale','FL','33823','555-2346','anthony.harris@icloud.com'),
(26,'Sanchez','Donna','2323 Cypress St','Davenport','FL','33837','555-5433','donna.sanchez@outlook.com'),
(27,'Clark','Mark','2424 Redwood St','Plant City','FL','33563','555-6783','mark.clark@live.com'),
(28,'Ramirez','Nancy','2525 Sequoia St','Haines City','FL','33844','555-8763','nancy.ramirez@yahoo.com'),
(29,'Lewis','Steven','2626 Maple St','Polk City','FL','33868','555-4324','steven.lewis@aol.com'),
(30,'Robinson','Karen','2727 Oak St','Lakeland','FL','33801','555-5670','karen.robinson@icloud.com'),
(31,'Walker','Paul','2828 Pine St','Winter Haven','FL','33880','555-8764','paul.walker@outlook.com'),
(32,'Young','Lisa','2929 Elm St','Auburndale','FL','33823','555-4325','lisa.young@live.com'),
(33,'Allen','Brian','3030 Cedar St','Davenport','FL','33837','555-6784','brian.allen@yahoo.com'),
(34,'King','Patricia','3131 Birch St','Plant City','FL','33563','555-9878','patricia.king@aol.com'),
(35,'Wright','Kevin','3232 Spruce St','Haines City','FL','33844','555-3458','kevin.wright@icloud.com'),
(36,'Scott','Deborah','3333 Willow St','Polk City','FL','33868','555-6545','deborah.scott@outlook.com'),
(37,'Torres','Jason','3434 Ash St','Lakeland','FL','33801','555-7892','jason.torres@live.com'),
(38,'Nguyen','Sharon','3535 Poplar St','Winter Haven','FL','33880','555-0989','sharon.nguyen@yahoo.com'),
(39,'Hill','Jeffrey','3636 Fir St','Auburndale','FL','33823','555-2347','jeffrey.hill@aol.com'),
(40,'Flores','Michelle','3737 Cypress St','Davenport','FL','33837','555-5434','michelle.flores@icloud.com'),
(41,'Green','Edward','3838 Redwood St','Plant City','FL','33563','555-6785','edward.green@outlook.com'),
(42,'Adams','Laura','3939 Sequoia St','Haines City','FL','33844','555-8765','laura.adams@live.com'),
(43,'Nelson','Joshua','4040 Maple St','Polk City','FL','33868','555-4326','joshua.nelson@yahoo.com'),
(44,'Baker','Rebecca','4141 Oak St','Lakeland','FL','33801','555-5671','rebecca.baker@aol.com'),
(45,'Hall','Jacob','4242 Pine St','Winter Haven','FL','33880','555-8766','jacob.hall@icloud.com'),
(46,'Rivera','Amy','4343 Elm St','Auburndale','FL','33823','555-4327','amy.rivera@outlook.com'),
(47,'Campbell','Gary','4444 Cedar St','Davenport','FL','33837','555-6786','gary.campbell@live.com'),
(48,'Mitchell','Angela','4545 Birch St','Plant City','FL','33563','555-9879','angela.mitchell@yahoo.com'),
(49,'Parker','Ethan','4646 Maple St','Lakeland','FL','33801','555-1235','ethan.parker@icloud.com'),
(50,'Evans','Olivia','4747 Oak St','Winter Haven','FL','33880','555-5672','olivia.evans@aol.com'),
(51,'Collins','Alexander','4848 Pine St','Auburndale','FL','33823','555-8767','alexander.collins@outlook.com'),
(52,'Stewart','Madison','4949 Elm St','Davenport','FL','33837','555-4328','madison.stewart@live.com'),
(53,'Morris','Catherine','5050 Cedar St','Plant City','FL','33563','555-6787','catherine.morris@yahoo.com'),
(54,'Rogers','Patrick','5151 Birch St','Haines City','FL','33844','555-9870','patrick.rogers@aol.com'),
(55,'Reed','Victoria','5252 Spruce St','Polk City','FL','33868','555-3459','victoria.reed@icloud.com'),
(56,'Cook','Nicholas','5353 Willow St','Lakeland','FL','33801','555-6546','nicholas.cook@outlook.com'),
(57,'Morgan','Diana','5454 Ash St','Winter Haven','FL','33880','555-7893','diana.morgan@live.com'),
(58,'Bell','Ryan','5555 Poplar St','Auburndale','FL','33823','555-0990','ryan.bell@yahoo.com'),
(59,'Murphy','Emma','5656 Fir St','Davenport','FL','33837','555-2348','emma.murphy@aol.com'),
(60,'Bailey','Aaron','5757 Cypress St','Plant City','FL','33563','555-5435','aaron.bailey@icloud.com'),
(61,'Rivera','Sophia','5858 Redwood St','Haines City','FL','33844','555-6788','sophia.rivera@outlook.com'),
(62,'Cooper','Nathan','5959 Sequoia St','Polk City','FL','33868','555-8768','nathan.cooper@live.com'),
(63,'Richardson','Lily','6060 Maple St','Lakeland','FL','33801','555-4329','lily.richardson@yahoo.com'),
(64,'Cox','Benjamin','6161 Oak St','Winter Haven','FL','33880','555-5673','benjamin.cox@aol.com'),
(65,'Ward','Grace','6262 Pine St','Auburndale','FL','33823','555-8769','grace.ward@icloud.com'),
(66,'Peterson','Isaac','6363 Elm St','Davenport','FL','33837','555-4320','isaac.peterson@outlook.com'),
(67,'Gray','Mia','6464 Cedar St','Plant City','FL','33563','555-6789','mia.gray@live.com'),
(68,'James','Gabriel','6565 Birch St','Haines City','FL','33844','555-9871','gabriel.james@yahoo.com'),
(69,'Watson','Hannah','6666 Spruce St','Polk City','FL','33868','555-3450','hannah.watson@aol.com'),
(70,'Brooks','Evan','6767 Willow St','Lakeland','FL','33801','555-6547','evan.brooks@icloud.com'),
(71,'Kelly','Ava','6868 Ash St','Winter Haven','FL','33880','555-7894','ava.kelly@outlook.com'),
(72,'Sanders','Jack','6969 Poplar St','Auburndale','FL','33823','555-0991','jack.sanders@live.com'),
(73,'Price','Natalie','7070 Fir St','Davenport','FL','33837','555-2349','natalie.price@yahoo.com'),
(74,'Bennett','Ethan','7171 Cypress St','Plant City','FL','33563','555-5436','ethan.bennett@aol.com'),
(75,'Wood','Lily','7272 Redwood St','Haines City','FL','33844','555-6790','lily.wood@icloud.com'),
(76,'Barnes','Owen','7373 Sequoia St','Polk City','FL','33868','555-8770','owen.barnes@outlook.com'),
(77,'Ross','Ella','7474 Maple St','Lakeland','FL','33801','555-4330','ella.ross@live.com'),
(78,'Henderson','Caleb','7575 Oak St','Winter Haven','FL','33880','555-5674','caleb.henderson@yahoo.com'),
(79,'Coleman','Zoe','7676 Pine St','Auburndale','FL','33823','555-8771','zoe.coleman@aol.com'),
(80,'Jenkins','Lucas','7777 Elm St','Davenport','FL','33837','555-4331','lucas.jenkins@icloud.com'),
(81,'Perry','Victoria','7878 Cedar St','Plant City','FL','33563','555-6791','victoria.perry@outlook.com'),
(82,'Powell','Caleb','7979 Birch St','Haines City','FL','33844','555-9872','caleb.powell@live.com'),
(83,'Long','Samantha','8080 Spruce St','Polk City','FL','33868','555-3451','samantha.long@yahoo.com'),
(84,'Patterson','Aiden','8181 Willow St','Lakeland','FL','33801','555-6548','aiden.patterson@aol.com'),
(85,'Hughes','Layla','8282 Ash St','Winter Haven','FL','33880','555-7895','layla.hughes@icloud.com'),
(86,'Flores','Jackson','8383 Poplar St','Auburndale','FL','33823','555-0992','jackson.flores@outlook.com'),
(87,'Washington','Savannah','8484 Fir St','Davenport','FL','33837','555-2350','savannah.washington@live.com'),
(88,'Butler','Oliver','8585 Cypress St','Plant City','FL','33563','555-5437','oliver.butler@yahoo.com'),
(89,'Simmons','Mason','8686 Redwood St','Haines City','FL','33844','555-6792','mason.simmons@aol.com'),
(90,'Foster','Stella','8787 Sequoia St','Polk City','FL','33868','555-8772','stella.foster@icloud.com'),
(91,'Gonzales','Henry','8888 Maple St','Lakeland','FL','33801','555-4332','henry.gonzales@outlook.com'),
(92,'Bryant','Ariana','8989 Oak St','Winter Haven','FL','33880','555-5675','ariana.bryant@live.com'),
(93,'Alexander','Cameron','9090 Pine St','Auburndale','FL','33823','555-8773','cameron.alexander@yahoo.com'),
(94,'Russell','Leah','9191 Elm St','Davenport','FL','33837','555-4333','leah.russell@aol.com'),
(95,'Griffin','Julian','9292 Cedar St','Plant City','FL','33563','555-6793','julian.griffin@icloud.com'),
(96,'Diaz','Emily','9393 Birch St','Haines City','FL','33844','555-9873','emily.diaz@outlook.com'),
(97,'Bennett','Alice','4848 Pine St','Lakeland','FL','33801','555-5673','alice.bennett@outlook.com'),
(98,'Carter','George','4949 Elm St','Winter Haven','FL','33880','555-8767','george.carter@live.com'),
(99,'Mitchell','Angela','5040 Birch St','Plant City','FL','33563','555-9870','angela.mitchell@yahoo.com'),
(100,'Parker','Ethan','5141 Maple St','Lakeland','FL','33801','555-1236','ethan.parker@icloud.com');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_LNAME` varchar(50) NOT NULL,
  `EMP_FNAME` varchar(50) NOT NULL,
  `EMP_CONTRACT_NUM` varchar(15) DEFAULT NULL,
  `EMP_POSITION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES
(1,'Smith','John','1234567890','Supervisor'),
(2,'Doe','Jane','0987654321','Manager'),
(3,'Brown','Charlie','1122334455','Bookstore Associate'),
(4,'Johnson','Emily','2233445566','Bookstore Salesperson'),
(5,'Williams','Michael','3344556677','Assistant Store Manager'),
(6,'Jones','Sarah','4455667788','Bookstore Associate'),
(7,'Garcia','David','5566778899','Bookstore Salesperson'),
(8,'Martinez','Laura','6677889900','Bookstore Associate'),
(9,'Rodriguez','James','7788990011','Bookstore Salesperson'),
(10,'Lee','Anna','8899001122','Bookstore Associate');
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FICTION`
--

DROP TABLE IF EXISTS `FICTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FICTION` (
  `BOOK_ID` int(11) NOT NULL,
  `GENRE_ID` int(11) DEFAULT NULL,
  `AUTHOR_LNAME` varchar(50) NOT NULL,
  `AUTHOR_FNAME` varchar(50) NOT NULL,
  PRIMARY KEY (`BOOK_ID`),
  KEY `GENRE_ID` (`GENRE_ID`),
  CONSTRAINT `FICTION_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOK` (`BOOK_ID`),
  CONSTRAINT `FICTION_ibfk_2` FOREIGN KEY (`GENRE_ID`) REFERENCES `GENRE` (`GENRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FICTION`
--

LOCK TABLES `FICTION` WRITE;
/*!40000 ALTER TABLE `FICTION` DISABLE KEYS */;
INSERT INTO `FICTION` VALUES
(1,1,'Rowling','J.K.'),
(2,2,'Tolkien','J.R.R.'),
(3,3,'Martin','George R.R.'),
(4,1,'Austen','Jane'),
(5,2,'Orwell','George'),
(6,1,'Yarros','Rebecca'),
(7,1,'Yarros','Rebecca'),
(8,1,'Yarros','Rebecca'),
(9,3,'Fitzgerald','F. Scott'),
(10,1,'Dickens','Charles'),
(11,1,'Lee','Harper'),
(12,2,'Salinger','J.D.'),
(13,3,'Tolkien','J.R.R.'),
(14,1,'Maas','Sarah J.'),
(15,1,'Maas','Sarah J.'),
(16,1,'Maas','Sarah J.'),
(17,1,'Maas','Sarah J.'),
(18,1,'Maas','Sarah J.'),
(19,3,'Tolstoy','Leo'),
(20,1,'McFadden','Freida'),
(21,2,'Huxley','Aldous'),
(22,1,'Hosseini','Khaled'),
(23,1,'Zusak','Markus'),
(24,1,'Garber','Stephanie'),
(25,1,'Garber','Stephanie'),
(26,1,'Garber','Stephanie'),
(27,1,'Atwood','Margaret'),
(28,1,'King','Stephen'),
(29,1,'King','Stephen'),
(30,1,'Faulkner','William'),
(31,1,'Collins','Suzanne'),
(32,1,'Collins','Suzanne'),
(33,1,'Collins','Suzanne'),
(34,1,'Roth','Veronica'),
(35,1,'Roth','Veronica'),
(36,1,'Roth','Veronica'),
(37,1,'Dashner','James'),
(38,1,'Dashner','James'),
(39,1,'Dashner','James'),
(40,1,'Lowry','Lois'),
(41,2,'Bradbury','Ray'),
(42,2,'Crouch','Blake'),
(43,2,'Heller','Joseph'),
(44,3,'Hannah','Kristin'),
(45,1,'Ellison','Ralph'),
(46,1,'Walker','Alice'),
(47,1,'Hemingway','Ernest'),
(48,1,'Steinbeck','John'),
(49,1,'Steinbeck','John'),
(50,2,'Salinger','J.D.'),
(101,3,'Hannah','Kristin');
/*!40000 ALTER TABLE `FICTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GENRE`
--

DROP TABLE IF EXISTS `GENRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GENRE` (
  `GENRE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROMANCE` tinyint(1) DEFAULT NULL,
  `SCIFI` tinyint(1) DEFAULT NULL,
  `HISTORICAL_FICTION` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`GENRE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GENRE`
--

LOCK TABLES `GENRE` WRITE;
/*!40000 ALTER TABLE `GENRE` DISABLE KEYS */;
INSERT INTO `GENRE` VALUES
(1,1,0,0),
(2,0,1,0),
(3,0,0,1);
/*!40000 ALTER TABLE `GENRE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY`
--

DROP TABLE IF EXISTS `INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVENTORY` (
  `INVENTORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `QUANTITY_INSTOCK` int(11) NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  PRIMARY KEY (`INVENTORY_ID`),
  KEY `BOOK_ID` (`BOOK_ID`),
  CONSTRAINT `INVENTORY_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOK` (`BOOK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY`
--

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` VALUES
(1,100,1),
(2,99,2),
(3,92,3),
(4,70,4),
(5,100,5),
(6,90,6),
(7,92,7),
(8,98,8),
(9,94,9),
(10,95,10),
(11,99,11),
(12,94,12),
(13,97,13),
(14,96,14),
(15,100,15),
(16,98,16),
(17,100,17),
(18,99,18),
(19,99,19),
(20,97,20),
(21,98,21),
(22,99,22),
(23,100,23),
(24,91,24),
(25,99,25),
(26,98,26),
(27,99,27),
(28,99,28),
(29,99,29),
(30,100,30),
(31,99,31),
(32,97,32),
(33,98,33),
(34,97,34),
(35,99,35),
(36,99,36),
(37,98,37),
(38,98,38),
(39,100,39),
(40,94,40),
(41,100,41),
(42,100,42),
(43,98,43),
(44,99,44),
(45,98,45),
(46,99,46),
(47,100,47),
(48,100,48),
(49,96,49),
(50,95,50),
(51,100,51),
(52,99,52),
(53,100,53),
(54,100,54),
(55,98,55),
(56,100,56),
(57,100,57),
(58,97,58),
(59,98,59),
(60,99,60),
(61,100,61),
(62,100,62),
(63,100,63),
(64,99,64),
(65,98,65),
(66,100,66),
(67,100,67),
(68,96,68),
(69,99,69),
(70,98,70),
(71,100,71),
(72,98,72),
(73,98,73),
(74,99,74),
(75,99,75),
(76,100,76),
(77,100,77),
(78,100,78),
(79,99,79),
(80,100,80),
(81,99,81),
(82,99,82),
(83,99,83),
(84,100,84),
(85,100,85),
(86,100,86),
(87,100,87),
(88,99,88),
(89,99,89),
(90,99,90),
(91,100,91),
(92,99,92),
(93,100,93),
(94,99,94),
(95,99,95),
(96,100,96),
(97,98,97),
(98,99,98),
(99,100,99),
(100,100,100);
/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `INV_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `INV_DATE` date NOT NULL,
  `INV_HISTORY` text DEFAULT NULL,
  `PUBLISHER_ID` int(11) DEFAULT NULL,
  `TOTAL_INV` decimal(10,2) NOT NULL,
  `CUS_ID` int(11) DEFAULT NULL,
  `INV_QUANTITY` int(11) NOT NULL,
  PRIMARY KEY (`INV_NUM`),
  KEY `PUBLISHER_ID` (`PUBLISHER_ID`),
  KEY `CUS_ID` (`CUS_ID`),
  CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`PUBLISHER_ID`) REFERENCES `PUBLISHER` (`PUBLISHER_ID`),
  CONSTRAINT `INVOICE_ibfk_2` FOREIGN KEY (`CUS_ID`) REFERENCES `CUSTOMER` (`CUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mpamias5995`@`%`*/ /*!50003 TRIGGER update_inventory_after_invoice_insert
AFTER INSERT ON INVOICE
FOR EACH ROW
BEGIN
    UPDATE INVENTORY
    SET QUANTITY_INSTOCK = QUANTITY_INSTOCK + NEW.INV_QUANTITY
    WHERE BOOK_ID = (SELECT BOOK_ID FROM BOOK WHERE PUBLISHER_ID = NEW.PUBLISHER_ID LIMIT 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `NONFICTION`
--

DROP TABLE IF EXISTS `NONFICTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NONFICTION` (
  `BOOK_ID` int(11) NOT NULL,
  `TOPIC` varchar(100) NOT NULL,
  `AUTHOR_LNAME` varchar(50) NOT NULL,
  `AUTHOR_FNAME` varchar(50) NOT NULL,
  PRIMARY KEY (`BOOK_ID`),
  CONSTRAINT `NONFICTION_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOK` (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NONFICTION`
--

LOCK TABLES `NONFICTION` WRITE;
/*!40000 ALTER TABLE `NONFICTION` DISABLE KEYS */;
INSERT INTO `NONFICTION` VALUES
(51,'Memoir','Park','Yeonmi'),
(52,'Memoir','Moore','Wayétu'),
(53,'Memoir','Westover','Tara'),
(54,'Memoir','Obama','Michelle'),
(55,'Biography','Skloot','Rebecca'),
(56,'Biography','Hillenbrand','Laura'),
(57,'Biography','McCullough','David'),
(58,'Memoir','Walls','Jeannette'),
(59,'Memoir','Strayed','Cheryl'),
(60,'Biography','Krakauer','Jon'),
(61,'Self-Help','Duhigg','Charles'),
(62,'Self-Help','Gladwell','Malcolm'),
(63,'Self-Help','Gladwell','Malcolm'),
(64,'Self-Help','Gladwell','Malcolm'),
(65,'Self-Help','Gladwell','Malcolm'),
(66,'Self-Help','Covey','Stephen R.'),
(67,'Psychology','Kahneman','Daniel'),
(68,'History','Harari','Yuval Noah'),
(69,'History','Harari','Yuval Noah'),
(70,'Self-Help','Manson','Mark'),
(71,'Self-Help','Clear','James'),
(72,'Self-Help','Ruiz','Don Miguel'),
(73,'Psychology','Frankl','Viktor E.'),
(74,'Psychology','van der Kolk','Bessel A.'),
(75,'Biography','Isaacson','Walter'),
(76,'History','Wilkerson','Isabel'),
(77,'History','Meacham','Jon'),
(78,'History','McCullough','David'),
(79,'History','Larson','Erik'),
(80,'History','Larson','Erik');
/*!40000 ALTER TABLE `NONFICTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDER`
--

DROP TABLE IF EXISTS `ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDER` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_DATE` date NOT NULL,
  `PUBLISHER_ID` int(11) DEFAULT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `ORDER_TOTAL` decimal(10,2) NOT NULL,
  `CUS_ID` int(11) NOT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `PUBLISHER_ID` (`PUBLISHER_ID`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  KEY `CUS_ID` (`CUS_ID`),
  CONSTRAINT `ORDER_ibfk_1` FOREIGN KEY (`PUBLISHER_ID`) REFERENCES `PUBLISHER` (`PUBLISHER_ID`),
  CONSTRAINT `ORDER_ibfk_2` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `EMPLOYEE` (`EMPLOYEE_ID`),
  CONSTRAINT `ORDER_ibfk_3` FOREIGN KEY (`CUS_ID`) REFERENCES `CUSTOMER` (`CUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER`
--

LOCK TABLES `ORDER` WRITE;
/*!40000 ALTER TABLE `ORDER` DISABLE KEYS */;
INSERT INTO `ORDER` VALUES
(293,'2024-01-15',1,1,39.98,1),
(294,'2024-01-16',2,2,15.99,2),
(295,'2024-01-17',3,3,77.97,3),
(296,'2024-01-18',4,4,19.98,4),
(297,'2024-01-19',5,5,14.99,5),
(298,'2024-01-20',6,6,33.98,6),
(299,'2024-01-21',7,7,50.97,7),
(300,'2024-01-22',8,8,20.99,8),
(301,'2024-01-23',9,9,13.99,9),
(302,'2024-01-24',10,10,8.99,10),
(303,'2024-01-25',1,1,27.98,11),
(304,'2024-01-26',2,2,27.98,12),
(305,'2024-01-27',3,3,29.99,13),
(306,'2024-01-28',4,4,77.97,14),
(307,'2024-01-29',5,5,37.98,15),
(308,'2024-01-30',6,6,22.99,16),
(309,'2024-01-31',7,7,19.99,17),
(310,'2024-02-01',8,8,65.97,18),
(311,'2024-02-02',9,9,20.99,19),
(312,'2024-02-03',10,10,35.98,20),
(313,'2024-02-04',1,1,47.97,21),
(314,'2024-02-05',2,2,33.98,22),
(315,'2024-02-06',3,3,14.99,23),
(316,'2024-02-07',4,4,27.98,24),
(317,'2024-02-08',5,5,14.99,25),
(318,'2024-02-09',6,6,31.98,26),
(319,'2024-02-10',7,7,31.98,27),
(320,'2024-02-11',8,8,29.97,28),
(321,'2024-02-12',9,9,15.99,29),
(322,'2024-02-13',10,10,19.99,30),
(323,'2024-02-14',1,1,23.98,31),
(324,'2024-02-15',2,2,41.97,32),
(325,'2024-02-16',3,3,50.97,33),
(326,'2024-02-17',4,4,33.98,34),
(327,'2024-02-18',5,5,25.99,35),
(328,'2024-02-19',6,6,19.98,36),
(329,'2024-02-20',7,7,27.98,37),
(330,'2024-02-21',8,8,29.99,38),
(331,'2024-02-22',9,9,35.97,39),
(332,'2024-02-23',10,10,27.99,40),
(333,'2024-02-24',1,1,17.99,41),
(334,'2024-02-25',2,2,25.98,42),
(335,'2024-02-26',3,3,19.98,43),
(336,'2024-02-27',4,4,29.97,44),
(337,'2024-02-28',5,5,31.98,45),
(338,'2024-03-01',6,6,41.97,46),
(339,'2024-03-02',7,7,49.99,47),
(340,'2024-03-03',8,8,15.99,48),
(341,'2024-03-04',9,9,19.99,49),
(342,'2024-03-05',10,10,33.98,50),
(343,'2024-03-06',1,1,29.97,51),
(344,'2024-03-07',2,2,45.98,52),
(345,'2024-03-08',3,3,25.99,53),
(346,'2024-03-09',4,4,21.99,54),
(347,'2024-03-10',5,5,35.98,55),
(348,'2024-03-11',6,6,29.97,56),
(349,'2024-03-12',7,7,19.99,57),
(350,'2024-03-13',8,8,50.97,58),
(351,'2024-03-14',9,9,27.98,59),
(352,'2024-03-15',10,10,19.99,60),
(353,'2024-03-16',1,1,25.99,61),
(354,'2024-03-17',2,2,33.98,62),
(355,'2024-03-18',3,3,41.97,63),
(356,'2024-03-19',4,4,17.99,64),
(357,'2024-03-20',5,5,27.98,65),
(358,'2024-03-21',6,6,15.98,66),
(359,'2024-03-22',7,7,29.97,67),
(360,'2024-03-23',8,8,41.98,68),
(361,'2024-03-24',9,9,19.99,69),
(362,'2024-03-25',10,10,25.99,70),
(363,'2024-03-26',1,1,49.97,71),
(364,'2024-03-27',2,2,19.99,72),
(365,'2024-03-28',3,3,19.99,73),
(366,'2024-03-29',4,4,23.98,74),
(367,'2024-03-30',5,5,29.97,75),
(368,'2024-03-31',6,6,19.99,76),
(369,'2024-04-01',7,7,15.99,77),
(370,'2024-04-02',8,8,37.98,78),
(371,'2024-04-03',9,9,25.98,79),
(372,'2024-04-04',10,10,21.99,80),
(373,'2024-04-05',1,1,41.97,81),
(374,'2024-04-06',2,2,29.97,82),
(375,'2024-04-07',3,3,17.99,83),
(376,'2024-04-08',4,4,27.98,84),
(377,'2024-04-09',5,5,33.98,85),
(378,'2024-04-10',6,6,50.97,86),
(379,'2024-04-11',7,7,19.99,87),
(380,'2024-04-12',8,8,19.99,88),
(381,'2024-04-13',9,9,15.99,89),
(382,'2024-04-14',10,10,23.98,90),
(383,'2024-04-15',1,1,41.97,91),
(384,'2024-04-16',2,2,25.99,92),
(385,'2024-04-17',3,3,29.98,93),
(386,'2024-04-18',4,4,19.99,94),
(387,'2024-04-19',5,5,35.97,95),
(388,'2024-04-20',6,6,27.98,96),
(389,'2024-04-21',7,7,25.99,97),
(390,'2024-04-22',8,8,33.98,98),
(391,'2024-04-23',9,9,41.97,99),
(392,'2024-04-24',10,10,21.99,100),
(393,'2024-08-05',1,2,18.99,3);
/*!40000 ALTER TABLE `ORDER` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mpamias5995`@`%`*/ /*!50003 TRIGGER update_invoice_total
AFTER INSERT ON `ORDER`
FOR EACH ROW
BEGIN
    IF NEW.PUBLISHER_ID IS NOT NULL THEN
        UPDATE INVOICE
        SET TOTAL_INV = (
            SELECT SUM(ORDER_TOTAL)
            FROM `ORDER`
            WHERE `ORDER`.PUBLISHER_ID = NEW.PUBLISHER_ID
        )
        WHERE INVOICE.PUBLISHER_ID = NEW.PUBLISHER_ID;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mpamias5995`@`%`*/ /*!50003 TRIGGER update_customer_order_total_after_insert
AFTER INSERT ON `ORDER`
FOR EACH ROW
BEGIN
    IF NEW.CUS_ID IS NOT NULL THEN
        UPDATE INVOICE
        SET TOTAL_INV = (
            SELECT SUM(ORDER_TOTAL)
            FROM `ORDER`
            WHERE `ORDER`.CUS_ID = NEW.CUS_ID
        )
        WHERE INVOICE.CUS_ID = NEW.CUS_ID;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ORDER_DETAIL`
--

DROP TABLE IF EXISTS `ORDER_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDER_DETAIL` (
  `ORDER_ID` int(11) NOT NULL,
  `SUBTOTAL_ORDER` decimal(10,2) NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  `ORDER_QUANTITY` int(11) NOT NULL,
  PRIMARY KEY (`ORDER_ID`,`BOOK_ID`),
  KEY `BOOK_ID` (`BOOK_ID`),
  CONSTRAINT `ORDER_DETAIL_ibfk_1` FOREIGN KEY (`ORDER_ID`) REFERENCES `ORDER` (`ORDER_ID`),
  CONSTRAINT `ORDER_DETAIL_ibfk_2` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOK` (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER_DETAIL`
--

LOCK TABLES `ORDER_DETAIL` WRITE;
/*!40000 ALTER TABLE `ORDER_DETAIL` DISABLE KEYS */;
INSERT INTO `ORDER_DETAIL` VALUES
(293,19.99,81,1),
(293,19.99,82,1),
(294,15.99,73,1),
(295,25.99,3,1),
(295,25.99,14,2),
(296,9.99,4,2),
(297,14.99,11,1),
(298,16.99,6,2),
(299,16.99,6,3),
(300,20.99,8,1),
(301,13.99,9,1),
(302,8.99,10,1),
(303,14.99,34,2),
(304,13.99,24,2),
(305,29.99,13,1),
(306,25.99,3,3),
(307,18.99,65,2),
(308,22.99,69,1),
(309,19.99,74,1),
(310,21.99,68,3),
(311,20.99,79,1),
(312,17.99,70,2),
(313,15.99,58,3),
(314,16.99,72,2),
(315,14.99,60,1),
(316,13.99,24,2),
(317,14.99,25,1),
(318,15.99,26,2),
(319,15.99,32,2),
(320,9.99,4,3),
(321,15.99,2,1),
(322,19.99,29,1),
(323,8.99,10,1),
(323,14.99,31,1),
(324,13.99,9,3),
(325,16.99,7,3),
(326,16.99,7,2),
(327,25.99,3,1),
(328,9.99,4,2),
(329,13.99,12,2),
(330,29.99,13,1),
(331,9.99,4,1),
(331,16.99,6,1),
(331,8.99,10,1),
(332,13.99,24,1),
(332,13.99,40,1),
(333,17.99,44,1),
(334,16.99,6,1),
(334,8.99,10,1),
(335,9.99,4,2),
(336,9.99,4,3),
(337,15.99,21,2),
(338,13.99,12,1),
(338,13.99,24,1),
(338,13.99,40,1),
(339,29.99,13,1),
(339,19.99,90,1),
(340,15.99,38,1),
(341,19.99,89,1),
(342,16.99,33,1),
(342,16.99,43,1),
(343,9.99,4,3),
(344,22.99,16,2),
(345,25.99,3,1),
(346,21.99,18,1),
(347,17.99,20,2),
(348,9.99,4,3),
(349,19.99,92,1),
(350,16.99,27,1),
(350,16.99,33,1),
(350,16.99,36,1),
(351,13.99,40,1),
(351,13.99,50,1),
(352,19.99,88,1),
(353,25.99,14,1),
(354,16.99,6,1),
(354,16.99,7,1),
(355,13.99,9,1),
(355,13.99,12,1),
(355,13.99,24,1),
(356,17.99,20,1),
(357,13.99,40,1),
(357,13.99,49,1),
(358,15.98,38,1),
(359,9.99,4,3),
(360,20.99,8,1),
(360,20.99,19,1),
(361,19.99,83,1),
(362,25.99,3,1),
(363,16.66,6,1),
(363,16.66,7,1),
(363,16.66,22,1),
(364,19.99,94,1),
(365,19.99,95,1),
(366,9.99,4,1),
(366,13.99,9,1),
(367,9.99,4,3),
(368,19.99,97,1),
(369,15.99,32,1),
(370,18.99,28,1),
(370,18.99,45,1),
(371,9.99,4,1),
(371,15.99,35,1),
(372,21.99,68,1),
(373,13.99,40,1),
(373,13.99,49,1),
(373,13.99,50,1),
(374,9.99,4,3),
(375,17.99,52,1),
(376,13.99,49,1),
(376,13.99,50,1),
(377,16.99,55,1),
(377,16.99,59,1),
(378,16.99,55,1),
(378,16.99,59,1),
(378,16.99,64,1),
(379,19.99,97,1),
(380,19.99,98,1),
(381,15.99,73,1),
(382,8.99,10,1),
(382,14.99,37,1),
(383,13.99,12,1),
(383,13.99,24,1),
(383,13.99,40,1),
(384,25.99,3,1),
(385,14.99,34,1),
(385,14.99,37,1),
(386,19.99,46,1),
(387,16.99,43,1),
(387,18.99,45,1),
(388,13.99,49,1),
(388,13.99,50,1),
(389,25.99,14,1),
(390,16.99,6,1),
(390,16.99,7,1),
(391,13.99,12,1),
(391,13.99,24,1),
(391,13.99,50,1),
(392,21.99,75,1),
(393,18.99,101,1);
/*!40000 ALTER TABLE `ORDER_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mpamias5995`@`%`*/ /*!50003 TRIGGER update_inventory_after_order_insert
AFTER INSERT ON ORDER_DETAIL
FOR EACH ROW
BEGIN
    UPDATE INVENTORY
    SET QUANTITY_INSTOCK = QUANTITY_INSTOCK - NEW.ORDER_QUANTITY
    WHERE BOOK_ID = NEW.BOOK_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PUBLISHER`
--

DROP TABLE IF EXISTS `PUBLISHER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PUBLISHER` (
  `PUBLISHER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PUBLISHER_LNAME` varchar(50) NOT NULL,
  `PUBLISHER_FNAME` varchar(50) NOT NULL,
  `PUBLISHER_STREET` varchar(100) DEFAULT NULL,
  `PUBLISHER_CITY` varchar(50) DEFAULT NULL,
  `PUBLISHER_STATE` varchar(50) DEFAULT NULL,
  `PUBLISHER_ZIP` varchar(10) DEFAULT NULL,
  `PUBLISHER_CONTRACT` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PUBLISHER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PUBLISHER`
--

LOCK TABLES `PUBLISHER` WRITE;
/*!40000 ALTER TABLE `PUBLISHER` DISABLE KEYS */;
INSERT INTO `PUBLISHER` VALUES
(1,'Smith','John','123 Maple St','Orlando','FL','32801','12345'),
(2,'Johnson','Emily','456 Oak St','Miami','FL','33101','67890'),
(3,'Williams','Michael','789 Pine St','Tampa','FL','33601','54321'),
(4,'Brown','Sarah','101 Elm St','Jacksonville','FL','32201','98765'),
(5,'Jones','David','202 Cedar St','Tallahassee','FL','32301','13579'),
(6,'Garcia','Maria','303 Birch St','St. Petersburg','FL','33701','24680'),
(7,'Martinez','James','404 Walnut St','Fort Lauderdale','FL','33301','11223'),
(8,'Rodriguez','Linda','505 Ash St','Hialeah','FL','33010','44556'),
(9,'Martinez','Robert','606 Cherry St','Hollywood','FL','33020','77889'),
(10,'Hernandez','Patricia','707 Spruce St','Gainesville','FL','32601','99000');
/*!40000 ALTER TABLE `PUBLISHER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-05 21:06:15
