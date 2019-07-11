-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: greenmarket
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (0,'cà chua'),(1,'cam'),(2,'dưa hấu'),(3,'sầu riêng'),(4,'xoài'),(5,'thanh long'),(6,'chôm chôm'),(7,'mít'),(8,'thanh long'),(9,'ổi');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentgoods`
--

DROP TABLE IF EXISTS `commentgoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commentgoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(10000) NOT NULL,
  `createdtime` timestamp NULL DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `goods` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_goods_idx` (`goods`),
  CONSTRAINT `fk_comment_goods` FOREIGN KEY (`goods`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentgoods`
--

LOCK TABLES `commentgoods` WRITE;
/*!40000 ALTER TABLE `commentgoods` DISABLE KEYS */;
INSERT INTO `commentgoods` VALUES (0,'Mặt hàng này còn không?','2019-03-23 03:20:20','Trần Thành Đạt',1),(1,'Mặt hàng này còn không?','2019-03-23 03:20:20','Trần Thành Đạt',1),(2,'Trái cây ở đây rất ngon','2019-03-23 02:20:05','Hồ Ngọc Sơn Hà',2),(3,'Chất lượng cần được đảm bảo hơn','2019-03-23 02:00:01','Phan Văn Trí',3),(4,'Ăn quả nhớ kẻ trồng cây','2019-03-23 04:00:01','Nguyễn Thành Đồng',4),(5,'Mặt hàng này còn không?','0000-00-00 00:00:00','Trần Thành Đạt',5),(6,'Trái cây ở đây rất ngon','2019-03-23 06:00:01','Hồ Ngọc Sơn Hà',1),(7,'Chất lượng cần được đảm bảo hơn','2019-03-23 07:00:01','Phan Văn Trí',2),(8,'Ăn quả nhớ kẻ trồng cây','2019-03-23 08:00:01','Nguyễn Thành Đồng',3),(9,'Mặt hàng này còn không?','2019-03-23 09:00:01','Trần Thành Đạt',4),(10,'Trái cây ở đây rất ngon','2019-03-23 10:00:01','Hồ Ngọc Sơn Hà',5),(11,'Chất lượng cần được đảm bảo hơn','2019-03-23 11:00:01','Phan Văn Trí',1),(12,'Ăn quả nhớ kẻ trồng cây','2019-03-23 12:00:01','Nguyễn Thành Đồng',2),(13,'Mặt hàng này còn không?','2019-03-23 13:00:01','Trần Thành Đạt',3),(14,'Trái cây ở đây rất ngon','2019-03-23 14:00:01','Hồ Ngọc Sơn Hà',4),(15,'Chất lượng cần được đảm bảo hơn','2019-03-23 08:05:01','Phan Văn Trí',5),(16,'Ăn quả nhớ kẻ trồng cây','2019-03-23 09:08:01','Nguyễn Thành Đồng',1),(17,'Mặt hàng này còn không?','2019-03-23 10:20:20','Trần Thành Đạt',2),(18,'Trái cây ở đây rất ngon','2019-03-23 09:25:01','Hồ Ngọc Sơn Hà',3),(19,'Chất lượng cần được đảm bảo hơn','2019-03-23 10:03:03','Phan Văn Trí',4),(20,'Ăn quả nhớ kẻ trồng cây','2019-03-23 09:25:03','Nguyễn Thành Đồng',5);
/*!40000 ALTER TABLE `commentgoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentposts`
--

DROP TABLE IF EXISTS `commentposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commentposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(10000) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `post` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_post_idx` (`post`),
  CONSTRAINT `fk_comment_post` FOREIGN KEY (`post`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentposts`
--

LOCK TABLES `commentposts` WRITE;
/*!40000 ALTER TABLE `commentposts` DISABLE KEYS */;
INSERT INTO `commentposts` VALUES (1,'Bài viết rất đẩy đủ và chất lượng','2019-03-17 00:00:01','Trần Thành Đạt',1),(2,'Bài viết cần phải viết kĩ hơn cho người đọc biết','2019-03-23 00:00:01','Hồ Ngọc Sơn Hà',2),(3,'Chất lượng cần được đảm bảo hơn','2019-03-16 00:00:01','Phan Văn Trí',3),(4,'Bài viết rất hay và sâu sắc ','2019-03-15 00:00:01','Nguyễn Thành Đồng',4),(5,'Bài viết rất đẩy đủ và chất lượng','2019-03-14 00:00:01','Trần Thành Đạt',1),(6,'Bài viết cần phải viết kĩ hơn cho người đọc biết','2019-03-13 00:00:01','Hồ Ngọc Sơn Hà',2),(7,'Chất lượng cần được đảm bảo hơn','2019-03-12 00:00:01','Phan Văn Trí',3),(8,'Bài viết rất hay và sâu sắc ','2019-03-23 00:00:01','Nguyễn Thành Đồng',4),(9,'Bài viết rất đẩy đủ và chất lượng','2019-03-11 00:00:01','Trần Thành Đạt',2),(10,'Bài viết cần phải viết kĩ hơn cho người đọc biết','2019-03-23 00:00:01','Hồ Ngọc Sơn Hà',1),(11,'Chất lượng cần được đảm bảo hơn','2019-03-09 00:00:01','Phan Văn Trí',2),(12,'Bài viết rất hay và sâu sắc ','2019-03-08 00:00:01','Nguyễn Thành Đồng',3),(13,'Bài viết rất đẩy đủ và chất lượng','2019-03-07 00:00:01','Trần Thành Đạt',4),(14,'Bài viết cần phải viết kĩ hơn cho người đọc biết','2019-03-23 00:00:01','Hồ Ngọc Sơn Hà',1),(15,'Chất lượng cần được đảm bảo hơn','2019-03-06 00:00:01','Phan Văn Trí',2),(16,'Bài viết rất hay và sâu sắc ','2019-03-05 00:00:01','Nguyễn Thành Đồng',3),(17,'Bài viết rất đẩy đủ và chất lượng','2019-03-04 00:00:01','Trần Thành Đạt',4),(18,'Bài viết cần phải viết kĩ hơn cho người đọc biết','2019-03-03 00:00:01','Hồ Ngọc Sơn Hà',1),(19,'Chất lượng cần được đảm bảo hơn','2019-03-02 00:00:01','Phan Văn Trí',2),(20,'Bài viết rất hay và sâu sắc ','2019-03-01 00:00:01','Nguyễn Thành Đồng',3);
/*!40000 ALTER TABLE `commentposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluations`
--

DROP TABLE IF EXISTS `evaluations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `evaluations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_score_user_idx` (`user`),
  CONSTRAINT `fk_score_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluations`
--

LOCK TABLES `evaluations` WRITE;
/*!40000 ALTER TABLE `evaluations` DISABLE KEYS */;
INSERT INTO `evaluations` VALUES (0,1,1),(1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,2,2),(6,3,2),(7,4,2),(8,5,2),(9,1,3),(10,2,3),(11,3,3),(12,4,3),(13,2,4),(14,3,4),(15,4,4),(16,5,4),(17,1,5),(18,2,5),(19,3,5),(20,4,5),(21,2,6),(22,3,6),(23,4,6),(24,5,6);
/*!40000 ALTER TABLE `evaluations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farms`
--

DROP TABLE IF EXISTS `farms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `farms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(500) DEFAULT NULL,
  `locationx` double DEFAULT NULL,
  `locationy` double DEFAULT NULL,
  `images` longblob,
  `createdby` int(11) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `farmer` varchar(100) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_farm_created_idx` (`createdby`),
  KEY `fk_farm_province_idx` (`province`),
  CONSTRAINT `fk_farm_created` FOREIGN KEY (`createdby`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_farm_province` FOREIGN KEY (`province`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farms`
--

LOCK TABLES `farms` WRITE;
/*!40000 ALTER TABLE `farms` DISABLE KEYS */;
INSERT INTO `farms` VALUES (2,'Tam Kỳ',12.3123,13.2222,NULL,1,'23423423423','Farmer 1',41),(3,'Đà lạt',122.3123,113.2222,NULL,2,'23423423423','Ông Trí',31),(4,'Quận Thủ Đức',98.21,113.222,NULL,3,'23423423423','Ông Đạt',63),(5,'Đông Hà',99.3123,113.2222,NULL,4,'23423423429','Ông Hà',44),(6,'Huyện Phú Ninh',12.3123,113.2222,NULL,5,'23423423423','Ông Đồng',41),(7,'Huyện Cà Chai',12.3123,113.2222,NULL,6,'23423423423','Bà Sáu',2),(8,'Huyện Miêu Hùng',45.3123,113.2222,NULL,6,'23423423423','Bà Sáu',3),(9,'Huyện Hùng Vương',55.3123,32.2222,NULL,2,'23423423423','Cô Hà',34),(10,'Huyện Chợ Mới',67.312,11.222,NULL,4,'23423423423','Cô Liên',1),(11,'Huyện Chợ Cũ',66.23,13.22,NULL,3,'23423423453','Cô Nhung',28);
/*!40000 ALTER TABLE `farms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(100) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `images` varchar(500) DEFAULT NULL,
  `farm` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_farm_idx` (`farm`),
  KEY `fk_goods_category_idx` (`category`),
  CONSTRAINT `fk_goods_category` FOREIGN KEY (`category`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_goods_farm` FOREIGN KEY (`farm`) REFERENCES `farms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (0,'Cà chua xanh','2018-01-19 03:14:07',32000,1,NULL,2,0,12),(1,'Cam đỏ','2018-12-29 03:14:02',22000,1,NULL,3,1,6),(2,'Dưa hấu nhiều nước','2018-05-22 03:14:07',12000,1,NULL,4,2,12),(3,'Sầu riêng momo','2018-11-29 03:14:07',112000,1,NULL,4,3,122),(4,'Xoài xanh','2018-02-19 03:14:07',12444,1,NULL,5,4,6),(5,'Thanh long nhỏ','2018-03-19 03:14:07',12444,1,NULL,5,5,6);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL,
  `locationx` double DEFAULT NULL,
  `locationy` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'An Giang',10.490243,105.183518),(2,'Bà Rịa - Vũng Tàu',10.578664,107.278291),(3,'Bắc Giang',21.338041,106.475951),(4,'Bắc Kạn',22.247574,105.838708),(5,'Bạc Liêu',9.30636,105.518382),(6,'Bắc Ninh',21.168072,106.072311),(7,'Bến Tre',10.137231,106.473649),(8,'Bình Định',13.77222,109.214306),(9,'Bình Dương',11.210882,106.682583),(10,'Bình Phước',11.740738,106.911226),(11,'Bình Thuận',11.062398,108.000897),(12,'Cà Mau',9.174638,105.192319),(13,'Cao Bằng',22.747106,106.057969),(14,'Đắk Lắk',12.816043,108.198476),(15,'Đắk Nông',12.187759,107.707261),(16,'Điện Biên',21.735778,103.149384),(17,'Đồng Nai',11.052241,107.208307),(18,'Đồng Tháp',10.601118,105.620873),(19,'Gia Lai',13.958011,108.014862),(20,'Hà Giang',22.752074,104.954545),(21,'Hà Nam',20.552053,105.976895),(22,'Hà Tĩnh',18.31841,105.720943),(23,'Hải Dương',20.942089,106.326832),(24,'Hậu Giang',9.786318,105.641623),(25,'Hòa Bình',20.679158,105.380586),(26,'Hưng Yên',20.811679,106.051903),(27,'Khánh Hòa',12.34599,109.005982),(28,'Kiên Giang',10.005448,105.22015),(29,'Kon Tum',14.343789,107.979082),(30,'Lai Châu',22.31069,103.220493),(31,'Lâm Đồng',11.685672,108.137639),(32,'Lạng Sơn',21.836021,106.607942),(33,'Lào Cai',22.353162,104.104208),(34,'Long An',10.710692,106.21026),(35,'Nam Định',20.272403,106.23169),(36,'Nghệ An',19.120186,105.370541),(37,'Ninh Bình',20.211382,105.922507),(38,'Ninh Thuận',11.691371,108.897516),(39,'Phú Thọ',21.311493,105.121409),(40,'Quảng Bình',17.507304,106.362672),(41,'Quảng Nam',15.562221,108.059808),(42,'Quảng Ngãi',14.994351,108.697701),(43,'Quảng Ninh',21.191298,107.279277),(44,'Quảng Trị',16.799994,107.078546),(45,'Sóc Trăng',9.546521,105.938573),(46,'Sơn La',21.229094,104.060319),(47,'Tây Ninh',11.370898,106.128967),(48,'Thái Bình',20.507995,106.401794),(49,'Thái Nguyên',21.657097,105.826921),(50,'Thanh Hóa',19.962809,105.494333),(51,'Thừa Thiên Huế',16.35313,107.539264),(52,'Tiền Giang',10.440119,106.225397),(53,'Trà Vinh',9.775979,106.315378),(54,'Tuyên Quang',22.095508,105.228531),(55,'Vĩnh Long',10.097569,105.991664),(56,'Vĩnh Phúc',21.370902,105.569246),(57,'Yên Bái',21.777595,104.569747),(58,'Phú Yên',21.312636,105.725629),(59,'Cần Thơ',10.039246,105.754995),(60,'Đà Nẵng',16.048071,108.206277),(61,'Hải Phòng',20.84671,106.701836),(62,'Hà Nội',21.021753,105.838508),(63,'TP HCM',10.7796,106.656738);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_creator_idx` (`createdby`),
  CONSTRAINT `fk_post_creator` FOREIGN KEY (`createdby`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Tất tần tật những điều cần biết về Cà Chua Bi Socola','Cà chua bi là một loại cà chua trái nhỏ của có hình dạng quả tròn hoặc dài, màu đỏ đều rất đẹp, cà chua bi có vị chua nhưng ngọt hơn cà chua thông thường. Cà chua bi tuy quả nhỏ, nhưng dễ trồng. Hiện nay cà chua đã có thể trồng quanh năm, và cà chua đạt được chất lượng tốt nhất trong giai đoạn từ tháng 7 đến tháng 9 của năm.\nBên trong quả cà chua là phần thịt quả được chia thành nhiều múi, lõi là rất nhiều hạt trơn được bao bọc trong phần ruột mọng nước.Cà chua bi có nhiều Vitamin đặc biệt là Vitamin C và Vitamin A rất tốt cho mắt.\nLycopene trong cà chua được nhận thấy có khả năng ngăn ngừa sự phát triển của các loại ung thư, đặc biệt là khi kết hợp với những thực phẩm giàu chất béo như bơ, dầu oliu hay lạc(bởi vì carotenoid là chất béo hòa tan, có nghĩa là nó có thể hấp thu vào cơ thể theo chất béo trong thực phẩm). Các bệnh ung thư có thể ngăn ngừa bao gồm rối loạn sắc tố, ung thư tuyến tiền liệt, ung thư vú, ung thư dạ con, ung thư phổi và ung thư tuyến tụy.','2018-03-11 03:14:07',1),(2,'NHẬT KÍ TRỒNG CÀ CHUA','Mẹ chồng tôi trồng cà chua. Bà ấy bắt đầu gieo hạt vào tháng ba và sau đó trồng trong nhà kính. Bà trồng chúng vào đất và chỉ để phần mầm cây trên mặt đất. Khi cây bắt đầu phát triển, bà ngắt những nhánh cây tăng trưởng bất thường, vì bà không muốn cây của mình phát triển quá rậm rạp. Bà nói cách này sẽ làm tập trung chất dinh dưỡng cho quả lớn và ngon ngọt hơn.Mẹ chồng tôi sẽ đến Cộng hòa Séc và không trở lại vào cuối tháng. Trong thời gian đó, bà giao phó trách nhiệm trồng cây cho tôi. Khi bà đi, các cây cà chua vẫn còn rất nhỏ và non nớt.\n\nĐể biết được các kỳ tăng trưởng tuyệt vời, tôi đã ghi lại những hình ảnh trong quá trình chăm sóc cây, và đó cũng là bằng chứng cho mẹ chồng tôi rằng tôi đã chăm sóc cây khi bà đi xa.\n\nTôi sẽ chia sẻ nó với các bạn.','2018-02-11 03:14:07',2),(3,'CÂY XOÀI NHIỀU MÀU','Vườn xoài tứ quý nhà XanhShop tụi em hẳn là luôn sáng nhất khu vực . Bởi cứ đến mùa ra trái là bỗng dưng những cây xoài đủ xanh đỏ tím vàng.\n\nCứ một đợt xoài ra trái mới, cô nông dân sẽ lấy bao vải nhỏ đi bọc từng trái, đợt nào màu nấy: đợt 1 màu đỏ, thì đợt 2 màu xanh…. cứ thế trên cùng 1 cây xoài có ti tỉ màu ấy chứ. Mỗi một mùa, xoài ra rất nhiều đợt, cứ độ dăm bữa lại có đợt xoài mới ra, nhiều khi ta nhìn cây xoài sai trĩu trịt nhưng chúng sẽ không già như nhau đâu, chúng sẽ là sự kết hợp của rất nhiều đợt ra trái đấy.Cô nông dân bao trái xoài làm chi?\nĐể ngăn con ruồi con ong chích vào trái, để ngăn sương muối ngấm vào trái. Tất nhiên dùng bao vải sẽ không “an toàn” bằng bao nilon, nhưng xài bao nilon rác quá với cả không tái dùng được gì hết. Bao vải xài đến mấy mùa mới bị mục.','2018-07-29 03:14:07',5),(4,'Ổi Đông Dư - trái cây đặc sản Hà thành','Là một trong những hộ trồng ổi lớn của xã Đông Dư, đến nay, ông Nguyễn Hữu Trình (ở thôn 2) có hơn 1 mẫu sản xuất ổi. Theo ông Nguyễn Hữu Trình, với hơn 1 mẫu trồng ổi, mỗi năm gia đình ông thu được khoảng 10 tấn. \n\nNhư ông Trình, đa số người dân Đông Dư đều tham gia sản xuất ổi và làm giàu từ cây ổi. Phó Giám đốc HTX Dịch vụ nông nghiệp Đông Dư Hoàng Thị Nhinh cho biết: Trước kia, vùng bãi Đông Dư chủ yếu trồng rau, lúa, ngô, song hiệu quả kinh tế thấp. Ban đầu, cây ổi được trồng trong vườn gia đình. Nhận thấy ổi dễ trồng, dễ chăm sóc, chất lượng ngon nên các hộ mạnh dạn trồng thêm ổi. Thời điểm đó, mỗi gia đình đều có 10-15 cây ổi, vừa để ăn, vừa bán, song quy mô vẫn nhỏ lẻ. Năm 2000, thực hiện phong trào “chuyển vườn ra ruộng”, nhiều hộ đã mạnh dạn đưa cây ổi ra vùng bãi tập trung. ','2018-04-29 03:14:07',6);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roleusers`
--

DROP TABLE IF EXISTS `roleusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roleusers` (
  `id` int(11) NOT NULL,
  `rolename` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleusers`
--

LOCK TABLES `roleusers` WRITE;
/*!40000 ALTER TABLE `roleusers` DISABLE KEYS */;
INSERT INTO `roleusers` VALUES (1,'User'),(2,'Admin');
/*!40000 ALTER TABLE `roleusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tri','123','Phan Van Tri',3,'0123456789'),(2,'dat','123','Tran Thanh Dat',6,'12361276321'),(3,'dong','123','Nguyen Thanh Dong',7,'213123121'),(4,'ha','123','Ho Ngoc Son Ha',2,'997979099'),(5,'lien','123','Tran Thi Lien',6,'3426726472'),(6,'duong','123','Tran Van Duong',4,'2342323423');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'greenmarket'
--

--
-- Dumping routines for database 'greenmarket'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-11 20:15:45
