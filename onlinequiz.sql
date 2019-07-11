-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinequiz
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `answers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` int(11) NOT NULL,
  `Answer` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Answer_Questions1_idx` (`Question`),
  CONSTRAINT `fk_Answer_Questions1` FOREIGN KEY (`Question`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Câu 1 Đúng'),(2,1,'Câu 1 Sai'),(3,1,'Câu 1 Sai'),(4,1,'Câu 1 Sai'),(5,2,'Câu 2 Đúng'),(6,2,'Câu 2 Sai'),(7,2,'Câu 2 Sai'),(8,2,'Câu 2 Sai'),(9,3,'Câu 3 Đúng'),(10,3,'Câu 3 Sai'),(11,3,'Câu 3 Sai'),(12,3,'Câu 3 Sai'),(13,4,'Câu 4 Đúng'),(14,4,'Câu 4 Sai'),(15,4,'Câu 4 Sai'),(16,4,'Câu 4 Sai'),(17,5,'Câu 5 Đúng'),(18,5,'Câu 5 Sai'),(19,5,'Câu 5 Sai'),(20,5,'Câu 5 Sai'),(21,6,'Câu 6 Đúng'),(22,6,'Câu 6 Sai'),(23,6,'Câu 6 Sai'),(24,6,'Câu 6 Sai'),(25,7,'Câu 7 Đúng'),(26,7,'Câu 7 Sai'),(27,7,'Câu 7 Sai'),(28,7,'Câu 7 Sai'),(29,8,'Câu 8 Đúng'),(30,8,'Câu 8 Sai'),(31,8,'Câu 8 Sai'),(32,8,'Câu 8 Sai'),(33,9,'Câu 9 Đúng'),(34,9,'Câu 9 Sai'),(35,9,'Câu 9 Sai'),(36,9,'Câu 9 Sai'),(37,10,'Câu 10 Đúng'),(38,10,'Câu 10 Sai'),(39,10,'Câu 10 Sai'),(40,10,'Câu 10 Sai'),(41,11,'Câu 11 Đúng'),(42,11,'Câu 11 Sai'),(43,11,'Câu 11 Sai'),(44,11,'Câu 11 Sai'),(45,12,'Câu 12 Đúng'),(46,12,'Câu 12 Sai'),(47,12,'Câu 12 Sai'),(48,12,'Câu 12 Sai'),(49,13,'Câu 13 Đúng'),(50,13,'Câu 13 Sai'),(51,13,'Câu 13 Sai'),(52,13,'Câu 13 Sai'),(53,14,'Câu 14 Đúng'),(54,14,'Câu 14 Sai'),(55,14,'Câu 14 Sai'),(56,14,'Câu 14 Sai'),(57,15,'Câu 15 Đúng'),(58,15,'Câu 15 Sai'),(59,15,'Câu 15 Sai'),(60,15,'Câu 15 Sai'),(61,16,'Câu 16 Đúng'),(62,16,'Câu 16 Sai'),(63,16,'Câu 16 Sai'),(64,16,'Câu 16 Sai'),(65,17,'Câu 17 Đúng'),(66,17,'Câu 17 Sai'),(67,17,'Câu 17 Sai'),(68,17,'Câu 17 Sai'),(69,18,'Câu 18 Đúng'),(70,18,'Câu 18 Sai'),(71,18,'Câu 18 Sai'),(72,18,'Câu 18 Sai'),(73,19,'Câu 19 Đúng'),(74,19,'Câu 19 Sai'),(75,19,'Câu 19 Sai'),(76,19,'Câu 19 Sai'),(77,20,'Câu 20 đúng'),(78,20,'Câu 20 Sai'),(79,20,'Câu 20 Sai'),(80,20,'Câu 20 Sai'),(81,21,'Câu 21 Đúng'),(82,21,'Câu 21 Sai'),(83,21,'Câu 21 Sai'),(84,21,'Câu 21 Sai'),(85,22,'Câu 22 Đúng'),(86,22,'Câu 22 Sai'),(87,22,'Câu 22 Sai'),(88,22,'Câu 22 Sai'),(89,23,'Câu 23 Đúng'),(90,23,'Câu 23 Sai'),(91,23,'Câu 23 Sai'),(92,23,'Câu 23 Sai'),(93,24,'Câu 24 Đúng'),(94,24,'Câu 24 Sai'),(95,24,'Câu 24 Sai'),(96,24,'Câu 24 Sai'),(97,25,'Câu 25 Đúng'),(98,25,'Câu 25 Sai'),(99,25,'Câu 25 Sai'),(100,25,'Câu 25 Sai'),(101,28,'Xin chÃ o 1'),(102,28,'xin chÃ o 2'),(103,28,'xin chÃ o 3'),(104,28,'xin chÃ o 4'),(105,29,'Xin chào 1'),(106,29,'xin chào 2'),(107,29,'xin chào 3'),(108,29,'xin chào 4'),(109,30,'câu hỏi khó quá'),(110,30,'câu hỏi dễ quá'),(111,2,'dữ liệu mới'),(112,2,'dữ liệu testing'),(113,2,'dữ liệu testing'),(114,2,'dữ liệu testing 2'),(123,37,'có'),(124,37,'A'),(125,37,'gió ùa về'),(126,37,'sai'),(127,38,'Partial-mesh'),(128,38,'Bus'),(129,38,'Ring'),(130,38,'Full-mesh'),(131,39,'Bus'),(132,39,'Star'),(133,39,'Mesh'),(134,39,'Ring'),(135,40,'MMF'),(136,40,'Cat 3'),(137,40,'Cat 5'),(138,40,'Cat 6'),(139,42,'Partial-mesh'),(140,42,'Bus'),(141,42,'Ring'),(142,42,'Full-mesh'),(143,43,'Bus'),(144,43,'Star'),(145,43,'Mesh'),(146,43,'Ring'),(147,44,'MMF'),(148,44,'Cat 3'),(149,44,'Cat 5'),(150,44,'Cat 6'),(151,45,'MMF'),(152,45,'Cat 3'),(153,45,'Cat 5'),(154,45,'Cat 6'),(155,46,'In packet switching, packets are synchronized according to a timing mechanism in\nthe switch.'),(156,46,'In packet switching, two communicating nodes establish a channel first, then begin\ntransmitting, thus ensuring a reliable connection and eliminating the need to\nretransmit.'),(157,46,'In packet switching, small pieces of data are sent to an intermediate node and\nreassembled before being transmitted, en masse, to the destination node.'),(158,46,'In packet switching, packets can take the quickest route between nodes and arrive\nindependently of when other packets in their data stream arrive.'),(159,47,'Circuit switching'),(160,47,'MPLS'),(161,47,'Packet switching'),(162,47,'Message switching'),(163,48,'It immediately retransmits the data.'),(164,48,' It signals to the other nodes that it is about to retransmit the data, and then\ndoes so.'),(165,48,'It waits for a random period of time before checking the network for activity, and\nthen retransmits the data.'),(166,48,'It signals to the network that its data were damaged in a collision, waits a brief\nperiod of time before checking the network for activity, and then retransmits the\ndata.'),(167,49,'Parallel backbone'),(168,49,'Collapsed backbone'),(169,49,'Distributed backbone'),(170,49,'Serial backbone'),(171,50,'Ensuring that the frame and data arrive without error'),(172,50,'Ensuring that the frame arrives in sequence'),(173,50,'Ensuring that the data portion of the frame totals at least 46 bytes'),(174,50,'Indicating the length of the frame'),(175,51,'One'),(176,51,'Two'),(177,51,'Three'),(178,51,'Four'),(179,52,'One wire pair handles data transmission, while another wire pair handles data reception.'),(180,52,'One wire in one pair handles data transmission, while the other wire in the same'),(181,52,'Three wires of two wire pairs handle both data transmission and reception, while\nthe fourth wire acts as a ground.'),(182,52,'All four wires of two wire pairs handle both data transmission and reception.'),(183,53,'All four wire pairs are used for both transmission and reception.'),(184,53,'The cable is encased in a special conduit to prevent signal degradation due to noise'),(185,53,'From each frame they receive, they extract source addresses; those frames\nwhose source addresses don\'t belong to the bridge\'s broadcast domain are\nfiltered.'),(186,53,'They hold each frame until it is requested by the destination node, at which\ntime the bridge forwards the data to the correct segment based on its MAC\naddress'),(187,54,'A server on the network contains a faulty NIC.'),(188,54,'A router on the network is mistakenly forwarding packets to the wrong segment.'),(189,54,'A switch on the network has established multiple circuits for a single path between'),(190,54,'The network attempts to use two incompatible frame types.'),(191,55,'Two computers connected to the same hub'),(192,55,'Two computers connected to the same switch'),(193,55,'Two computers connected to the same router'),(194,55,'Two computers connected to the same access server'),(195,56,'46 and 64 bytes'),(196,56,'46 and 128 bytes'),(197,56,'64 and 1518 bytes'),(198,56,'64 and 1600 bytes'),(199,57,'ATM'),(200,57,'Ethernet'),(201,57,'T1'),(202,57,'ISDN'),(203,58,'10GBase-T'),(204,58,'10GBase-ER'),(205,58,'10GBase-LR'),(206,58,'10GBase-SR'),(207,59,'10GBase-T'),(208,59,'10GBase-ER'),(209,59,'10GBase-LR'),(210,59,'10GBase-SR'),(211,60,'None, because fiber-optic cabling and connectivity devices, including multiplexers,\nare already in place.'),(212,60,'The fiber-optic cabling will need to be upgraded, but the same connectivity devices\nand multiplexers can be used.'),(213,60,'The fiber-optic cabling can be reused, but the connectivity devices and multiplexers\nmust be replaced.'),(214,60,'The fiber-optic cabling, connectivity devices, and multiplexers must be replaced.'),(215,61,'ipconfig'),(216,61,'ifconfig'),(217,61,'iftool'),(218,61,'ethtool'),(219,62,'The SFP will be capable of higher throughputs.'),(220,62,'The SFP can be added or removed without affecting operations, thus allowing for\ncustomization and future upgrades.'),(221,62,'The SFP can accept multiple types of connectors, allowing the router to connect two\ndisparate network types.'),(222,62,'The SFP promises greater security, as it can encrypt and decrypt data.'),(223,63,'Filter traffic based on IP address.'),(224,63,'Transmit data from any one of the connected computers to any other.'),(225,63,'Create a VLAN out of some of the computers to isolate their transmissions and\nprevent them from affecting other connections.'),(226,63,'Allow other connectivity devices to be added to the network in the future.'),(227,64,'Its activity LED is blinking green.'),(228,64,'Its loopback plug is improperly terminated.'),(229,64,'It has two types of receptacles—SC and RJ-45—and the wrong one is in use.'),(230,64,'None of its LEDs are lit.'),(231,65,'From each frame they receive, they extract source addresses; those frames\nwhose source addresses don\'t belong to the bridge\'s broadcast domain are\nfiltered.'),(232,65,'They hold each frame until it is requested by the destination node, at which\ntime the bridge forwards the data to the correct segment based on its MAC\naddress.'),(233,65,'They maintain a filtering database that identifies which frames can be\nfiltered and which should be forwarded, based on their destination MAC\naddress.'),(234,65,'They compare the incoming frame\'s network address with known addresses on both\nsegments and filter those that don\'t belong to either.'),(235,66,'Switches separate collision domains.'),(236,66,'Switches separate broadcast domains.'),(237,66,'Switches can alert the network administrator to high data collision rates.'),(238,66,'Switches do not examine Network layer protocol information, which makes them\nfaster than repeating devices.'),(239,67,'Partial-mesh'),(240,67,'Bus'),(241,67,'Ring'),(242,67,'Full-mesh'),(243,68,'Bus'),(244,68,'Star'),(245,68,'Mesh'),(246,68,'Ring'),(247,69,'MMF'),(248,69,'Cat 3'),(249,69,'Cat 5'),(250,69,'Cat 6'),(251,70,'MMF'),(252,70,'Cat 3'),(253,70,'Cat 5'),(254,70,'Cat 6'),(255,71,'In packet switching, packets are synchronized according to a timing mechanism in\nthe switch.'),(256,71,'In packet switching, two communicating nodes establish a channel first, then begin\ntransmitting, thus ensuring a reliable connection and eliminating the need to\nretransmit.'),(257,71,'In packet switching, small pieces of data are sent to an intermediate node and\nreassembled before being transmitted, en masse, to the destination node.'),(258,71,'In packet switching, packets can take the quickest route between nodes and arrive\nindependently of when other packets in their data stream arrive.'),(259,72,'Circuit switching'),(260,72,'MPLS'),(261,72,'Packet switching'),(262,72,'Message switching'),(263,73,'It immediately retransmits the data.'),(264,73,' It signals to the other nodes that it is about to retransmit the data, and then\ndoes so.'),(265,73,'It waits for a random period of time before checking the network for activity, and\nthen retransmits the data.'),(266,73,'It signals to the network that its data were damaged in a collision, waits a brief\nperiod of time before checking the network for activity, and then retransmits the\ndata.'),(267,74,'Parallel backbone'),(268,74,'Collapsed backbone'),(269,74,'Distributed backbone'),(270,74,'Serial backbone'),(271,75,'Ensuring that the frame and data arrive without error'),(272,75,'Ensuring that the frame arrives in sequence'),(273,75,'Ensuring that the data portion of the frame totals at least 46 bytes'),(274,75,'Indicating the length of the frame'),(275,76,'One'),(276,76,'Two'),(277,76,'Three'),(278,76,'Four'),(279,77,'One wire pair handles data transmission, while another wire pair handles data reception.'),(280,77,'One wire in one pair handles data transmission, while the other wire in the same'),(281,77,'Three wires of two wire pairs handle both data transmission and reception, while\nthe fourth wire acts as a ground.'),(282,77,'All four wires of two wire pairs handle both data transmission and reception.'),(283,78,'All four wire pairs are used for both transmission and reception.'),(284,78,'The cable is encased in a special conduit to prevent signal degradation due to noise'),(285,78,'From each frame they receive, they extract source addresses; those frames\nwhose source addresses don\'t belong to the bridge\'s broadcast domain are\nfiltered.'),(286,78,'They hold each frame until it is requested by the destination node, at which\ntime the bridge forwards the data to the correct segment based on its MAC\naddress'),(287,79,'A server on the network contains a faulty NIC.'),(288,79,'A router on the network is mistakenly forwarding packets to the wrong segment.'),(289,79,'A switch on the network has established multiple circuits for a single path between'),(290,79,'The network attempts to use two incompatible frame types.'),(291,80,'Two computers connected to the same hub'),(292,80,'Two computers connected to the same switch'),(293,80,'Two computers connected to the same router'),(294,80,'Two computers connected to the same access server'),(295,81,'46 and 64 bytes'),(296,81,'46 and 128 bytes'),(297,81,'64 and 1518 bytes'),(298,81,'64 and 1600 bytes'),(299,82,'ATM'),(300,82,'Ethernet'),(301,82,'T1'),(302,82,'ISDN'),(303,83,'10GBase-T'),(304,83,'10GBase-ER'),(305,83,'10GBase-LR'),(306,83,'10GBase-SR'),(307,84,'10GBase-T'),(308,84,'10GBase-ER'),(309,84,'10GBase-LR'),(310,84,'10GBase-SR'),(311,85,'None, because fiber-optic cabling and connectivity devices, including multiplexers,\nare already in place.'),(312,85,'The fiber-optic cabling will need to be upgraded, but the same connectivity devices\nand multiplexers can be used.'),(313,85,'The fiber-optic cabling can be reused, but the connectivity devices and multiplexers\nmust be replaced.'),(314,85,'The fiber-optic cabling, connectivity devices, and multiplexers must be replaced.'),(315,86,'ipconfig'),(316,86,'ifconfig'),(317,86,'iftool'),(318,86,'ethtool'),(319,87,'The SFP will be capable of higher throughputs.'),(320,87,'The SFP can be added or removed without affecting operations, thus allowing for\ncustomization and future upgrades.'),(321,87,'The SFP can accept multiple types of connectors, allowing the router to connect two\ndisparate network types.'),(322,87,'The SFP promises greater security, as it can encrypt and decrypt data.'),(323,88,'Filter traffic based on IP address.'),(324,88,'Transmit data from any one of the connected computers to any other.'),(325,88,'Create a VLAN out of some of the computers to isolate their transmissions and\nprevent them from affecting other connections.'),(326,88,'Allow other connectivity devices to be added to the network in the future.'),(327,89,'Its activity LED is blinking green.'),(328,89,'Its loopback plug is improperly terminated.'),(329,89,'It has two types of receptacles—SC and RJ-45—and the wrong one is in use.'),(330,89,'None of its LEDs are lit.'),(331,90,'From each frame they receive, they extract source addresses; those frames\nwhose source addresses don\'t belong to the bridge\'s broadcast domain are\nfiltered.'),(332,90,'They hold each frame until it is requested by the destination node, at which\ntime the bridge forwards the data to the correct segment based on its MAC\naddress.'),(333,90,'They maintain a filtering database that identifies which frames can be\nfiltered and which should be forwarded, based on their destination MAC\naddress.'),(334,90,'They compare the incoming frame\'s network address with known addresses on both\nsegments and filter those that don\'t belong to either.'),(335,91,'Switches separate collision domains.'),(336,91,'Switches separate broadcast domains.'),(337,91,'Switches can alert the network administrator to high data collision rates.'),(338,91,'Switches do not examine Network layer protocol information, which makes them\nfaster than repeating devices.');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `courses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Subject` int(11) DEFAULT NULL,
  `DateOfStarting` date NOT NULL,
  `DateOfEnding` date NOT NULL,
  `DateOfWeek` enum('Thứ 2','Thứ 3','Thứ 4','Thứ 5','Thứ 6','Thứ 7','Chủ nhật') NOT NULL,
  `PartOfStarting` int(11) NOT NULL,
  `PartOfEnding` int(11) NOT NULL,
  `NumOfStudents` int(11) NOT NULL,
  `Room` varchar(50) NOT NULL,
  `Activate` tinyint(4) NOT NULL,
  `Teacher` int(11) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Classes_Subjects_idx` (`Subject`),
  KEY `fk_course_teacher_idx` (`Teacher`),
  CONSTRAINT `fk_Classes_Subjects` FOREIGN KEY (`Subject`) REFERENCES `subjects` (`id`),
  CONSTRAINT `fk_course_teacher` FOREIGN KEY (`Teacher`) REFERENCES `profilemanagers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,1,'2018-08-27','2018-12-30','Thứ 4',1,5,30,'A114',1,NULL,'Học quá đã'),(2,2,'2018-08-27','2018-12-30','Thứ 3',1,5,60,'A5-302',1,NULL,'Chưa đặt tên'),(3,3,'2018-08-27','2018-12-30','Thứ 7',1,5,60,'TTTH',1,NULL,'Chưa đặt tên'),(4,4,'2018-08-27','2018-12-30','Thứ 5',1,5,60,'A5-302',1,NULL,'Chưa đặt tên'),(5,5,'2018-08-27','2018-12-30','Thứ 6',1,5,60,'A5-302',1,NULL,'Chưa đặt tên'),(9,1,'2018-11-02','2018-11-02','Thứ 7',1,5,60,'A301',1,NULL,'Chưa đặt tên'),(10,1,'2018-11-02','2018-11-02','Thứ 7',1,5,60,'A301',1,NULL,'Chưa đặt tên'),(12,1,'1970-01-01','1970-01-01','Thứ 7',1,5,60,'A301',1,NULL,'Chưa đặt tên'),(13,1,'1970-01-01','1970-01-01','Thứ 7',1,5,60,'A301',1,NULL,'Chưa đặt tên'),(14,1,'1970-01-01','1970-01-01','Thứ 7',1,5,60,'A301',1,NULL,'Chưa đặt tên'),(15,1,'1970-01-01','1970-01-01','Thứ 7',1,5,60,'A301',1,NULL,'Chưa đặt tên'),(16,1,'1970-01-01','1970-01-01','Thứ 7',1,5,60,'A301',1,NULL,'Chưa đặt tên'),(21,5,'2018-12-23','2018-12-19','Thứ 3',4,6,222,'',1,NULL,'Chưa đặt tên');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailcourseexams`
--

DROP TABLE IF EXISTS `detailcourseexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detailcourseexams` (
  `Course` int(11) NOT NULL,
  `Exam` int(11) NOT NULL,
  PRIMARY KEY (`Course`,`Exam`),
  KEY `fk_detail_exam_idx` (`Exam`),
  CONSTRAINT `fk_detail_a_course` FOREIGN KEY (`Course`) REFERENCES `courses` (`id`),
  CONSTRAINT `fk_detail_a_exam` FOREIGN KEY (`Exam`) REFERENCES `exams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailcourseexams`
--

LOCK TABLES `detailcourseexams` WRITE;
/*!40000 ALTER TABLE `detailcourseexams` DISABLE KEYS */;
INSERT INTO `detailcourseexams` VALUES (1,1);
/*!40000 ALTER TABLE `detailcourseexams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailcourses`
--

DROP TABLE IF EXISTS `detailcourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detailcourses` (
  `Course` int(11) NOT NULL,
  `Student` int(11) NOT NULL,
  PRIMARY KEY (`Course`,`Student`),
  KEY `fk_detail_student_idx` (`Student`),
  CONSTRAINT `fk_detail_course` FOREIGN KEY (`Course`) REFERENCES `courses` (`id`),
  CONSTRAINT `fk_detail_student` FOREIGN KEY (`Student`) REFERENCES `profilestudents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailcourses`
--

LOCK TABLES `detailcourses` WRITE;
/*!40000 ALTER TABLE `detailcourses` DISABLE KEYS */;
INSERT INTO `detailcourses` VALUES (1,1),(1,2),(2,2),(2,3),(2,4);
/*!40000 ALTER TABLE `detailcourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailexams`
--

DROP TABLE IF EXISTS `detailexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detailexams` (
  `Exam` int(11) NOT NULL,
  `Question` int(11) NOT NULL,
  PRIMARY KEY (`Exam`,`Question`),
  KEY `fk_DetailExams_Exams1_idx` (`Exam`),
  KEY `fk_DetailExams_Questions1_idx` (`Question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailexams`
--

LOCK TABLES `detailexams` WRITE;
/*!40000 ALTER TABLE `detailexams` DISABLE KEYS */;
INSERT INTO `detailexams` VALUES (1,1),(1,2),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,33),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,21),(2,22),(2,23),(2,24),(2,25),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24),(3,25),(4,1),(4,2),(4,3),(4,4),(4,5),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(4,22),(4,23),(4,24),(4,25),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(5,19),(5,20),(5,21),(5,22),(5,23),(5,24),(5,25),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(6,19),(6,20),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,15),(7,21),(7,22),(7,23),(7,24),(7,25),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,16),(8,17),(8,18),(8,19),(8,20),(8,21),(8,22),(8,23),(8,24),(8,25),(9,1),(9,2),(9,3),(9,4),(9,5),(9,11),(9,12),(9,13),(9,14),(9,16),(9,17),(9,18),(9,19),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(10,6),(10,7),(10,8),(10,9),(10,10),(10,11),(10,12),(10,13),(10,14),(10,15),(10,16),(10,17),(10,18),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(10,25),(11,22),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(13,10),(13,11),(13,12),(13,15),(14,22),(14,24),(14,25),(15,15),(16,10),(16,15),(16,28),(16,31),(16,36),(17,38),(17,39),(17,40),(17,68),(17,69),(17,70),(17,74),(17,75),(17,76),(17,78),(17,79),(17,80),(17,81),(17,83),(17,84),(17,85),(17,86),(17,87),(17,89),(17,91),(18,69),(18,70),(18,72),(18,74),(18,75),(18,76),(18,77),(18,81),(18,84),(18,90),(31,15),(36,15);
/*!40000 ALTER TABLE `detailexams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailresult`
--

DROP TABLE IF EXISTS `detailresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detailresult` (
  `Result` int(11) NOT NULL,
  `Answer` int(11) NOT NULL,
  PRIMARY KEY (`Result`,`Answer`),
  KEY `fk_detail_answer_idx` (`Answer`),
  CONSTRAINT `fk_detail_answer` FOREIGN KEY (`Answer`) REFERENCES `answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_detail_result` FOREIGN KEY (`Result`) REFERENCES `resulttests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailresult`
--

LOCK TABLES `detailresult` WRITE;
/*!40000 ALTER TABLE `detailresult` DISABLE KEYS */;
INSERT INTO `detailresult` VALUES (16,1),(1,2),(27,4),(27,5),(1,6),(16,6),(1,10),(27,13),(1,14),(1,18),(27,19),(1,22),(1,26),(1,37),(1,41),(27,41),(1,49);
/*!40000 ALTER TABLE `detailresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exams` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `TimeStarting` datetime NOT NULL,
  `NumQuestions` int(11) DEFAULT NULL,
  `TimeFinishing` datetime NOT NULL,
  `Activate` tinyint(4) DEFAULT NULL,
  `Creator` int(11) DEFAULT NULL,
  `NumDiffi` int(11) DEFAULT NULL,
  `NumNormal` int(11) DEFAULT NULL,
  `NumEasy` int(11) DEFAULT NULL,
  `LimitTime` int(11) DEFAULT NULL,
  `Subject` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_exam_creator_idx` (`Creator`),
  KEY `fk_exam_subject_idx` (`Subject`),
  CONSTRAINT `fk_exam_creator` FOREIGN KEY (`Creator`) REFERENCES `profilemanagers` (`id`),
  CONSTRAINT `fk_exam_subject` FOREIGN KEY (`Subject`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'Bai Thi Cuối Kỳ','2019-03-16 10:20:00',30,'2019-03-19 10:20:00',1,NULL,10,10,10,30,1),(2,'Bai Thi So 2','2018-12-15 08:30:00',0,'2018-12-18 08:30:00',1,NULL,0,0,0,1,1),(3,'Bai Thi So 3','2018-11-03 02:00:00',20,'2018-11-04 02:00:00',1,NULL,NULL,NULL,NULL,60,1),(4,'Bai Thi So 4','2018-11-03 03:00:00',20,'2018-11-04 03:00:00',1,NULL,NULL,NULL,NULL,60,1),(5,'Bai Thi So 5','2018-11-03 04:00:00',20,'2018-11-04 04:00:00',1,NULL,NULL,NULL,NULL,60,1),(6,'Bai Thi So 6','2018-11-03 05:00:00',20,'2018-11-04 05:00:00',1,NULL,NULL,NULL,NULL,60,1),(7,'Bai Thi So 7','2018-11-03 06:00:00',20,'2018-11-04 06:00:00',1,NULL,NULL,NULL,NULL,60,1),(8,'Bai Thi So 8','2018-11-03 07:00:00',20,'2018-11-04 07:00:00',1,NULL,NULL,NULL,NULL,60,1),(9,'Bai Thi So 9','2018-11-03 08:00:00',20,'2018-11-04 08:00:00',1,NULL,NULL,NULL,NULL,60,1),(10,'Bai Thi So 10','2018-11-03 09:00:00',20,'2018-11-04 09:00:00',1,NULL,NULL,NULL,NULL,60,1),(11,'BÃ i thi testin','2006-03-03 14:02:00',5,'0003-03-02 04:04:00',1,NULL,0,3,2,60,1),(13,'BÃ i thi testin','2017-02-03 15:03:00',5,'2018-03-02 03:03:00',1,NULL,2,0,3,32,1),(14,'BÃ i thi testin','0012-02-03 03:03:00',5,'0013-03-13 01:13:00',1,NULL,2,0,3,223,1),(15,'Bài tập ở lớp','0002-02-02 03:32:00',6,'2009-03-02 14:03:00',1,NULL,1,2,3,70,1),(16,'Bài tập về nhà','2018-02-02 14:03:00',5,'2018-04-04 14:02:00',1,NULL,0,3,2,10,1),(17,'Bai Thi Cuối Kỳ','2018-12-08 08:30:00',20,'2018-12-10 08:30:00',1,NULL,0,0,20,1,8),(18,'Bai Thi Cuối Kỳ MMT','2018-12-14 08:30:00',10,'2018-12-15 14:30:00',1,NULL,0,0,10,60,8);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profilemanagers`
--

DROP TABLE IF EXISTS `profilemanagers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profilemanagers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` enum('Nam','Nữ','Khác') DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `Image` varchar(45) DEFAULT NULL,
  `ShowProfile` tinyint(4) NOT NULL DEFAULT '1',
  `User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `User_UNIQUE` (`User`),
  KEY `fk_manager_user_idx` (`User`),
  CONSTRAINT `fk_manager_user` FOREIGN KEY (`User`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profilemanagers`
--

LOCK TABLES `profilemanagers` WRITE;
/*!40000 ALTER TABLE `profilemanagers` DISABLE KEYS */;
INSERT INTO `profilemanagers` VALUES (1,'Chien','1998-11-11','Nam','090123456','',1,3),(2,'Son','1998-12-12','Nam','090124567','',1,4);
/*!40000 ALTER TABLE `profilemanagers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profilestudents`
--

DROP TABLE IF EXISTS `profilestudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profilestudents` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `IdentityCardNumber` int(11) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` enum('Nam','Nữ','Khác') NOT NULL,
  `PhoneNumber` varchar(50) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Religion` enum('Phật Giáo','Thiên Chúa','Khác') DEFAULT NULL,
  `YearOfAdmission` year(4) NOT NULL,
  `YearOfGraduation` year(4) NOT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `ShowProfile` tinyint(4) NOT NULL DEFAULT '1',
  `User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `User_UNIQUE` (`User`),
  CONSTRAINT `fk_student_user` FOREIGN KEY (`User`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profilestudents`
--

LOCK TABLES `profilestudents` WRITE;
/*!40000 ALTER TABLE `profilestudents` DISABLE KEYS */;
INSERT INTO `profilestudents` VALUES (1,'Ha',16110533,'1998-08-04','Nam','90312415','Viet Nam','Quang Tri','Phật Giáo',2016,2020,'',1,5),(2,'Dong',16110311,'1998-11-03','Nữ','91423843','Viet Nam','Gia Lai','Phật Giáo',2016,2020,'',1,6),(3,'Tri',16110496,'1998-05-21','Nam','917371942','Viet Nam','Quang Nam','Phật Giáo',2016,2020,NULL,1,3),(4,'Datt',16110308,'1998-03-06','Nữ','954637284','Viet Nam','Lam Dong','Phật Giáo',2016,2020,NULL,1,4);
/*!40000 ALTER TABLE `profilestudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` varchar(500) NOT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Level` enum('Khó','Trung bình','Dễ') NOT NULL,
  `Subject` int(11) DEFAULT NULL,
  `CorrectAnswer` int(11) DEFAULT NULL,
  `Creator` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_question_answser_idx` (`CorrectAnswer`),
  KEY `fk_question_subject_idx` (`Subject`),
  KEY `fk_question_creator_idx` (`Creator`),
  CONSTRAINT `fk_question_answser` FOREIGN KEY (`CorrectAnswer`) REFERENCES `answers` (`id`),
  CONSTRAINT `fk_question_creator` FOREIGN KEY (`Creator`) REFERENCES `profilemanagers` (`id`),
  CONSTRAINT `fk_question_subject` FOREIGN KEY (`Subject`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Đệ Quy Là Gì?',NULL,'Dễ',3,1,NULL),(2,'Quay Lui Là Gì?',NULL,'Dễ',3,5,NULL),(3,'Vét Cạn Là Gì?',NULL,'Dễ',3,9,NULL),(4,'Đâu Là Thuật Toán Selection Sort?',NULL,'Dễ',2,13,NULL),(5,'Đâu Là Thuật Toán Bubble Sort?',NULL,'Dễ',2,17,NULL),(6,'Đâu Là Thuật Toán Quick Sort?',NULL,'Trung bình',2,21,NULL),(7,'Đâu Là Thuật Toán Binary Search?',NULL,'Trung bình',2,25,NULL),(8,'Ứng Dụng Nào Sử Dụng Bảng Băm?',NULL,'Khó',6,29,NULL),(9,'Giao Diện Sau Đây Sử Dụng Những Ngôn Ngữ Gì?',NULL,'Khó',4,33,NULL),(10,'Mô Hình Sau Đây Sử Dụng Công Nghệ Gì?',NULL,'Trung bình',1,37,NULL),(11,'Xử Lí Back-end này sử dụng ngôn ngữ gì ?',NULL,'Khó',5,41,NULL),(12,'Servlet là gì ?',NULL,'Dễ',3,45,NULL),(13,'JSP là gì ?',NULL,'Dễ',3,49,NULL),(14,'Boottrap là gì ?',NULL,'Dễ',3,53,NULL),(15,'Mô Hình MVC là gì?',NULL,'Trung bình',1,57,NULL),(16,'Ứng dụng của mô hình MVC là cái nào sau đây?',NULL,'Trung bình',6,61,NULL),(17,'Database là gì?',NULL,'Dễ',3,65,NULL),(18,'Lệnh Select dùng để làm gì ?',NULL,'Dễ',3,69,NULL),(19,'Lệnh Delete dùng để làm gì ?',NULL,'Dễ',3,73,NULL),(20,'Lệnh Insert dùng để làm gì ?',NULL,'Dễ',3,77,NULL),(21,'Lệnh Alter dùng để làm gì ?',NULL,'Dễ',3,81,NULL),(22,'Lệnh Mov là gì?',NULL,'Khó',3,85,NULL),(23,'Lệnh Add là gì?',NULL,'Khó',3,89,NULL),(24,'Lệnh Sub là gì?',NULL,'Khó',3,93,NULL),(25,'Lệnh Xlat là gì?',NULL,'Khó',3,97,NULL),(27,'Có câu hỏi nào',NULL,'Khó',4,3,NULL),(28,'Có câu hỏi nào à',NULL,'Trung bình',1,2,NULL),(29,'Abc Ccc Đồng',NULL,'Khó',4,1,NULL),(30,'Câu hỏi này như thế nào?',NULL,'Dễ',3,NULL,NULL),(31,'Câu hỏi testing',NULL,'Khó',1,2,NULL),(36,'Câu hỏi testing 2',NULL,'Khó',1,2,NULL),(37,'A đúng chọn A đi',NULL,'Khó',2,125,NULL),(38,'Which of the following topologies is susceptible to signal bounce?',NULL,'Khó',8,127,2),(39,'What type of topology is required for use with a 100Base-TX network?',NULL,'Khó',8,132,2),(40,'What is the minimum cabling standard required for 10GBase-T Ethernet?',NULL,'Khó',8,136,2),(42,'Which of the following topologies is susceptible to signal bounce?',NULL,'Khó',1,139,2),(43,'What type of topology is required for use with a 100Base-TX network?',NULL,'Khó',1,144,2),(44,'What is the minimum cabling standard required for 10GBase-T Ethernet?',NULL,'Khó',1,148,2),(45,'What is the minimum cabling standard required for 10GBase-T Ethernet?',NULL,'Khó',1,153,2),(46,'Why is packet switching more efficient than circuit switching?',NULL,'Khó',1,158,2),(47,'You are part of a team of engineers who work for an ISP that connects large data\ncenters, telephone companies, and their customers throughout California and Oregon.\nManagement has decided that the company can make large profits by promising the\nutmost QoS to certain high-profile customers. Which of the following switching\nmethods will best guarantee the promised QoS?',NULL,'Khó',1,161,2),(48,'What happens in CSMA/CD when a node detects that its data have suffered a\ncollision?',NULL,'Khó',1,166,2),(49,'Which of the following backbone types is the most fault tolerant?',NULL,'Khó',1,170,2),(50,'What is the purpose of padding in an Ethernet frame?',NULL,'Khó',1,171,2),(51,'You are designing a 100Base-T network to connect groups of workstations in two\ndifferent offices in your building. The offices are approximately 250 meters apart. If you\nonly use repeating devices to connect the workstation groups, how many hubs will you\nneed?',NULL,'Khó',1,175,2),(52,'On a 10Base-T network, which of the following best describes how the wires of a UTP\ncable are used to transmit and receive information?',NULL,'Khó',1,179,2),(53,'What technique is used to achieve 1-Gbps throughput over a Cat 5 cable?',NULL,'Khó',1,183,2),(54,'Which two of the following might cause excessive data collisions on an Ethernet network?',NULL,'Khó',1,187,2),(55,'In which of the following examples do the workstations necessarily share a collision domain?',NULL,'Khó',1,191,2),(56,'What are the minimum and maximum sizes for an Ethernet frame?',NULL,'Khó',1,197,2),(57,'Which of the following network technologies does not use circuit switching?',NULL,'Khó',1,200,2),(58,'Which of the following is the type of 10-gigabit Ethernet that can carry signals the\nfarthest, nearly 25 miles?',NULL,'Khó',1,204,2),(59,'Which of the following is the type of 10-gigabit Ethernet that can carry signals the farthest, nearly 25 miles?',NULL,'Khó',1,208,2),(60,'The data services company you work for has decided to become an ISP and supply\nhigh-capacity Internet connections from its data center. Currently, the data center relies\non a 100Base-FX backbone, but your boss demands that the backbone be upgraded to\n10GBase-LR. What kind of infrastructure changes would this require?',NULL,'Khó',1,211,2),(61,'Which of the following utilities could you use to force the NIC on your Linux server to\nuse full-duplex transmission?',NULL,'Khó',1,218,2),(62,'Which of the following is a significant advantage to using an SFP interface on a router\r\nrather than an on-board NIC?1\r\n                    \r\n                    ','','Dễ',3,220,1),(63,'You and a friend decide to set up Fast Ethernet networks in your respective houses to\nconnect a half-dozen computers at each location. Both of you will connect your\nnetworks to high-speed Internet connections. As the connectivity device for end nodes,\nyou purchase a router, whereas your friend uses an old, but functional, 12-port hub he\nfound at a garage sale. Which of the following will your network do that your friend\'s\nnetwork won\'t do?',NULL,'Khó',1,223,2),(64,'You are a network technician working on a 100Base-T network. A coworker has\nbeen having trouble logging on to the server and asks whether you can quickly tell\nher if her workstation\'s NIC is operating properly. You do not have the NIC\'s\nutility disk on hand, but you look at the back of her workstation and learn that\nalthough the NIC is properly installed and connected to the network, something\'s\nwrong with it. What might you have seen that causes you to come to this\nconclusion?',NULL,'Khó',1,230,2),(65,'How do bridges keep track of whether they should forward or filter frames?',NULL,'Khó',1,233,2),(66,'Which of the following distinguishes switches from repeating devices, such as hubs?',NULL,'Khó',1,235,2),(67,'Which of the following topologies is susceptible to signal bounce?',NULL,'Khó',8,239,2),(68,'What type of topology is required for use with a 100Base-TX network?',NULL,'Khó',8,244,2),(69,'What is the minimum cabling standard required for 10GBase-T Ethernet?',NULL,'Khó',8,248,2),(70,'What is the minimum cabling standard required for 10GBase-T Ethernet?',NULL,'Khó',8,253,2),(71,'Why is packet switching more efficient than circuit switching?',NULL,'Khó',8,258,2),(72,'You are part of a team of engineers who work for an ISP that connects large data\ncenters, telephone companies, and their customers throughout California and Oregon.\nManagement has decided that the company can make large profits by promising the\nutmost QoS to certain high-profile customers. Which of the following switching\nmethods will best guarantee the promised QoS?',NULL,'Khó',8,261,2),(73,'What happens in CSMA/CD when a node detects that its data have suffered a\ncollision?',NULL,'Khó',8,266,2),(74,'Which of the following backbone types is the most fault tolerant?',NULL,'Khó',8,270,2),(75,'What is the purpose of padding in an Ethernet frame?',NULL,'Khó',8,271,2),(76,'You are designing a 100Base-T network to connect groups of workstations in two\ndifferent offices in your building. The offices are approximately 250 meters apart. If you\nonly use repeating devices to connect the workstation groups, how many hubs will you\nneed?',NULL,'Khó',8,275,2),(77,'On a 10Base-T network, which of the following best describes how the wires of a UTP\ncable are used to transmit and receive information?',NULL,'Khó',8,279,2),(78,'What technique is used to achieve 1-Gbps throughput over a Cat 5 cable?',NULL,'Khó',8,283,2),(79,'Which two of the following might cause excessive data collisions on an Ethernet network?',NULL,'Khó',8,287,2),(80,'In which of the following examples do the workstations necessarily share a collision domain?',NULL,'Khó',8,291,2),(81,'What are the minimum and maximum sizes for an Ethernet frame?',NULL,'Khó',8,297,2),(82,'Which of the following network technologies does not use circuit switching?',NULL,'Khó',8,300,2),(83,'Which of the following is the type of 10-gigabit Ethernet that can carry signals the\nfarthest, nearly 25 miles?',NULL,'Khó',8,304,2),(84,'Which of the following is the type of 10-gigabit Ethernet that can carry signals the farthest, nearly 25 miles?',NULL,'Khó',8,308,2),(85,'The data services company you work for has decided to become an ISP and supply\nhigh-capacity Internet connections from its data center. Currently, the data center relies\non a 100Base-FX backbone, but your boss demands that the backbone be upgraded to\n10GBase-LR. What kind of infrastructure changes would this require?',NULL,'Khó',8,311,2),(86,'Which of the following utilities could you use to force the NIC on your Linux server to\nuse full-duplex transmission?',NULL,'Khó',8,318,2),(87,'Which of the following is a significant advantage to using an SFP interface on a router\nrather than an on-board NIC?',NULL,'Khó',8,320,2),(88,'You and a friend decide to set up Fast Ethernet networks in your respective houses to\nconnect a half-dozen computers at each location. Both of you will connect your\nnetworks to high-speed Internet connections. As the connectivity device for end nodes,\nyou purchase a router, whereas your friend uses an old, but functional, 12-port hub he\nfound at a garage sale. Which of the following will your network do that your friend\'s\nnetwork won\'t do?',NULL,'Khó',8,323,2),(89,'You are a network technician working on a 100Base-T network. A coworker has\nbeen having trouble logging on to the server and asks whether you can quickly tell\nher if her workstation\'s NIC is operating properly. You do not have the NIC\'s\nutility disk on hand, but you look at the back of her workstation and learn that\nalthough the NIC is properly installed and connected to the network, something\'s\nwrong with it. What might you have seen that causes you to come to this\nconclusion?',NULL,'Khó',8,330,2),(90,'How do bridges keep track of whether they should forward or filter frames?',NULL,'Khó',8,333,2),(91,'Which of the following distinguishes switches from repeating devices, such as hubs?',NULL,'Khó',8,335,2);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resulttests`
--

DROP TABLE IF EXISTS `resulttests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resulttests` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Score` int(11) DEFAULT NULL,
  `Exam` int(11) DEFAULT NULL,
  `Student` int(11) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `FinishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_result_exam_idx` (`Exam`),
  KEY `fk_result_student_idx` (`Student`),
  CONSTRAINT `fk_result_exam` FOREIGN KEY (`Exam`) REFERENCES `exams` (`id`),
  CONSTRAINT `fk_result_student` FOREIGN KEY (`Student`) REFERENCES `profilestudents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resulttests`
--

LOCK TABLES `resulttests` WRITE;
/*!40000 ALTER TABLE `resulttests` DISABLE KEYS */;
INSERT INTO `resulttests` VALUES (27,2,1,2,'2019-03-17 01:36:55','2019-03-17 01:37:26');
/*!40000 ALTER TABLE `resulttests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roleusers`
--

DROP TABLE IF EXISTS `roleusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roleusers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleusers`
--

LOCK TABLES `roleusers` WRITE;
/*!40000 ALTER TABLE `roleusers` DISABLE KEYS */;
INSERT INTO `roleusers` VALUES (1,'asma'),(2,'stu'),(3,'exma'),(4,'stuma'),(5,'ad');
/*!40000 ALTER TABLE `roleusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subjects` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Credit` int(11) NOT NULL,
  `Type` enum('Bắt buộc','Tự chọn') NOT NULL,
  `Activate` tinyint(4) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Ky Thuat Lap Trinh','CNTT',4,'Bắt buộc',0),(2,'Cau Truc Du Lieu Va Giai Thuat','CNTT',4,'Bắt buộc',1),(3,'Lap Trinh Web','CNTT',4,'Bắt buộc',1),(4,'Co So Du Lieu','CNTT',4,'Bắt buộc',1),(5,'Kien Truc May Tinh Va Hop Ngu','CNTT',4,'Tự chọn',1),(6,'Môn học mới','Công nghệ tinh thông',3,'Tự chọn',1),(8,'Mang May Tinh','Khoa CNTT',4,'Bắt buộc',0);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `RoleUser` int(11) NOT NULL,
  `Activate` tinyint(4) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`),
  KEY `fk_Users_RoleUsers1_idx` (`RoleUser`),
  CONSTRAINT `fk_Users_RoleUsers1` FOREIGN KEY (`RoleUser`) REFERENCES `roleusers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hongocsonha','hongocsonha@gmail.com','123456',1,1),(2,'honguyenhoangquan','honguyenhoangquan@gmail.com','123456',2,1),(3,'thanhdong','huynhcongchien@gmail.com','123456',1,1),(4,'thanhdat','ngotuanlinh@gmail.com','123456',1,1),(5,'thidat','nguyenthanhdong@gmail.com','123456',1,1),(6,'datthi','phanvantri@gmail.com','123456',1,1),(7,'vantri','trankhuongduy@gmail.com','123456',5,1),(8,'thitri','tranthanhdat@gmail.com','123456',1,1),(9,'trivan','vohongphuc@gmail.com','123456',2,1),(10,'datthanh','vothanhson@gmail.com','123456',4,1),(14,'usename','hello@gmail.com','123456',1,1),(19,'usernametest','xinchao@gmail.com','123456',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'onlinequiz'
--

--
-- Dumping routines for database 'onlinequiz'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-11 20:15:25
