-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: productmanagement
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
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_comment` (
  `idProduct` int(11) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `vote` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProduct`),
  CONSTRAINT `fk_lk_comment` FOREIGN KEY (`idProduct`) REFERENCES `tblproduct` (`idproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comment`
--

LOCK TABLES `tbl_comment` WRITE;
/*!40000 ALTER TABLE `tbl_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblcategory` (
  `idCategory` int(11) NOT NULL AUTO_INCREMENT,
  `nameCategory` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategory`
--

LOCK TABLES `tblcategory` WRITE;
/*!40000 ALTER TABLE `tblcategory` DISABLE KEYS */;
INSERT INTO `tblcategory` VALUES (1,'Điện thoại di động','https://images.pexels.com/photos/341523/pexels-photo-341523.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260'),(2,'Thú Cưng','https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260'),(5,'Đồ án','https://images.pexels.com/photos/2099266/pexels-photo-2099266.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260'),(6,'Thời trang','https://images.pexels.com/photos/985635/pexels-photo-985635.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260'),(7,'Thực phẩm','https://images.pexels.com/photos/1171520/pexels-photo-1171520.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260');
/*!40000 ALTER TABLE `tblcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoicedetails`
--

DROP TABLE IF EXISTS `tblinvoicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblinvoicedetails` (
  `idInvoice` int(11) NOT NULL AUTO_INCREMENT,
  `nameInvoice` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL,
  PRIMARY KEY (`idInvoice`),
  KEY `fk_lk_productss_idx` (`idProduct`),
  CONSTRAINT `fk_lk_productss` FOREIGN KEY (`idProduct`) REFERENCES `tblproduct` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoicedetails`
--

LOCK TABLES `tblinvoicedetails` WRITE;
/*!40000 ALTER TABLE `tblinvoicedetails` DISABLE KEYS */;
INSERT INTO `tblinvoicedetails` VALUES (3,NULL,'admin','a',123,16),(10,NULL,'user ','Quảng Nam',546464,18),(11,NULL,'user ','Quảng Nam',546464,1),(15,NULL,'jack','tam kỳ, quảng nam',385053517,16);
/*!40000 ALTER TABLE `tblinvoicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblproduct` (
  `idProduct` int(11) NOT NULL AUTO_INCREMENT,
  `nameProduct` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `usedTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `fk_lk_category_idx` (`idCategory`),
  KEY `fk_lk_userP_idx` (`username`),
  CONSTRAINT `fk_lk_category` FOREIGN KEY (`idCategory`) REFERENCES `tblcategory` (`idcategory`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lk_userP` FOREIGN KEY (`username`) REFERENCES `tbluser` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct`
--

LOCK TABLES `tblproduct` WRITE;
/*!40000 ALTER TABLE `tblproduct` DISABLE KEYS */;
INSERT INTO `tblproduct` VALUES (1,'Iphone 5s',1,'2018-11-21 17:01:10',33,'Điện thoại Iphone 5S chính hãng','https://images.pexels.com/photos/270686/pexels-photo-270686.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',550000,NULL,NULL,'admin'),(2,'Chó Husky',2,'2018-11-21 17:00:10',1,'Chó Husky đẹp, chính hãng giá tốt','https://images.pexels.com/photos/220974/pexels-photo-220974.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',1000,NULL,NULL,'admin'),(8,'Iphone 7 Plus',1,'2018-06-21 17:02:10',1,'Điện thoại Iphone 7 Plus giá rẻ và chính hãng','https://images.pexels.com/photos/1202575/pexels-photo-1202575.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',7000000,NULL,NULL,'admin'),(13,'Chó Corgi',2,'2018-11-21 17:03:10',3,'Chó Corgi siêu rẽ','https://images.pexels.com/photos/58997/pexels-photo-58997.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',120000,NULL,NULL,'admin'),(14,'Áo hodiee',1,NULL,2,'Áo hodie cổ rộng','https://images.pexels.com/photos/2146781/pexels-photo-2146781.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',16000,NULL,NULL,'user'),(15,'Đồ án Lập Trình Web',5,'2018-11-21 17:03:10',3,'Đồ án lập Trình Web của tui','https://images.pexels.com/photos/159866/books-book-pages-read-literature-159866.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',12000,NULL,NULL,'user'),(16,'IPhone X',1,'2019-11-21 17:01:10',2,'Điện thoại Iphone X nè mọi người','https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',9000000,NULL,NULL,'user'),(17,'Cho Pitbull',2,'2019-04-27 09:09:19',3,'Chó Pitbull rẻ nè','https://images.pexels.com/photos/137020/pexels-photo-137020.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',123123,NULL,NULL,'user'),(18,'Dâu tây',7,NULL,3,'Dâu tây rẻ nè mọi người','https://images.pexels.com/photos/1231023/pexels-photo-1231023.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260',10000,NULL,NULL,'user');
/*!40000 ALTER TABLE `tblproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblroleuser`
--

DROP TABLE IF EXISTS `tblroleuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblroleuser` (
  `idRole` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `nameRole` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRole`),
  KEY `fk_lk_User_idx` (`username`),
  CONSTRAINT `fk_lk_user` FOREIGN KEY (`username`) REFERENCES `tbluser` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblroleuser`
--

LOCK TABLES `tblroleuser` WRITE;
/*!40000 ALTER TABLE `tblroleuser` DISABLE KEYS */;
INSERT INTO `tblroleuser` VALUES (1,'admin','ADMIN'),(2,'user','USER'),(10,'jack','USER');
/*!40000 ALTER TABLE `tblroleuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbluser` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `nameUser` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identityCardNumber` int(11) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `genDer` enum('Nam','Nữ') DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phoneNumber` int(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES ('admin','21051998@','Phan Văn Trí',123456789,'1998-05-21','Nam','vantriphan2105@gmail.com',385053517,'Việt Nam','Quảng Nam','https://images.pexels.com/photos/207353/pexels-photo-207353.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260'),('jack','21051998@','Jack',123123123,NULL,'Nam','jack@gmail.com',385053517,'Việt Nam','tam kỳ, quảng nam','https://images.pexels.com/photos/207353/pexels-photo-207353.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260'),('user','21051998@','User Đây',123131232,NULL,'Nữ','user@gmail.com',546464,NULL,'Quảng Nam','https://images.pexels.com/photos/2120114/pexels-photo-2120114.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=750&amp;w=1260');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'productmanagement'
--

--
-- Dumping routines for database 'productmanagement'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-11 20:13:09
