-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: our_helltrain
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `img_path` varchar(500) NOT NULL,
  `shelf_date` date NOT NULL,
  `removal_date` date NOT NULL,
  `publish` tinyint NOT NULL DEFAULT '0',
  `content` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `email` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `founding_date` date DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `buyer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `create_date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `buyer_check` tinyint NOT NULL,
  `seller_check` tinyint NOT NULL,
  `buyer_rank` float DEFAULT '0',
  `salesman_rank` float DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,35,'2026-06-02','已取消',0,0,0,0),(2,2,34,'2026-06-02','已取消',0,0,0,0),(3,3,34,'2026-06-02','完成交易',1,1,0,0),(4,5,34,'2026-06-02','已取消',0,0,0,0),(5,4,34,'2026-06-02','已取消',0,0,0,0);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int NOT NULL,
  `img_path` varchar(500) NOT NULL,
  `type` varchar(60) NOT NULL,
  `shelf_date` date DEFAULT NULL,
  `product_condition` varchar(500) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `location` varchar(45) NOT NULL,
  `dept_group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'極簡後背包','全新未使用，容量大適合上課',350,'[\"https://picsum.photos/300/200?random=1\"]','[\"日用品\",\"背包\",\"生活用品\",\"服飾配件\"]','2026-06-01','全新','販售中','[\"大一\"]','[\"高雄市\"]','[\"不拘\",\"管理學群\"]'),(2,2,'MacBook Air M1','正常使用，電池健康度良好',18000,'[\"https://picsum.photos/300/200?random=2\"]','[\"3C\",\"筆電\",\"3C電子\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"台北市\"]','[\"資訊學群\",\"工程學群\"]'),(3,3,'微積分課本','期末考必備，有少量筆記',200,'[\"https://picsum.photos/300/200?random=3\"]','[\"書籍\",\"課本\",\"教科書\"]','2026-06-01','輕度使用','販售中','[\"大一\"]','[\"台中市\"]','[\"數理化學群\"]'),(4,4,'藍芽耳機','功能正常，續航力佳',900,'[\"https://picsum.photos/300/200?random=4\"]','[\"3C\",\"耳機\",\"3C電子\"]','2026-06-01','中度使用','販售中','[\"大二\"]','[\"台南市\"]','[\"資訊學群\"]'),(5,5,'人體解剖學','醫學系指定教材',650,'[\"https://picsum.photos/300/200?random=5\"]','[\"書籍\",\"醫學\",\"教科書\",\"專業器材\"]','2026-06-01','近全新','販售中','[\"大二\"]','[\"高雄市\"]','[\"醫藥衛生學群\"]'),(6,6,'宿舍小冰箱','可正常冷藏飲料',2500,'[\"https://picsum.photos/300/200?random=6\"]','[\"家電\",\"冰箱\",\"家具家電\"]','2026-06-01','中度使用','販售中','[\"大四以上\"]','[\"新竹市\"]','[\"不拘\"]'),(7,7,'無線滑鼠','反應靈敏，電池剛換新',400,'[\"https://picsum.photos/300/200?random=7\"]','[\"3C\",\"滑鼠\",\"3C電子\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"台北市\"]','[\"資訊學群\"]'),(8,8,'統計學原文書','保存良好',300,'[\"https://picsum.photos/300/200?random=8\"]','[\"書籍\",\"統計\",\"教科書\"]','2026-06-01','輕度使用','販售中','[\"大二\"]','[\"桃園市\"]','[\"管理學群\"]'),(9,9,'電腦椅','坐感舒適，無損壞',1200,'[\"https://picsum.photos/300/200?random=9\"]','[\"家具\",\"椅子\",\"家具家電\"]','2026-06-01','中度使用','販售中','[\"大四以上\"]','[\"台中市\"]','[\"不拘\"]'),(10,10,'Arduino 開發板','專題做完出售',500,'[\"https://picsum.photos/300/200?random=10\"]','[\"3C\",\"開發板\",\"3C電子\",\"專業器材\"]','2026-06-01','輕度使用','販售中','[\"大三\"]','[\"台北市\"]','[\"工程學群\",\"資訊學群\"]'),(11,1,'TOEIC 單字書','九成新',180,'[\"https://picsum.photos/300/200?random=11\"]','[\"書籍\",\"語言\",\"教科書\"]','2026-06-01','近全新','販售中','[\"大一\"]','[\"新竹市\"]','[\"外語學群\"]'),(12,2,'藍牙喇叭','音質佳，宿舍聚會很好用',850,'[\"https://picsum.photos/300/200?random=12\"]','[\"3C\",\"音響\",\"3C電子\"]','2026-06-01','輕度使用','販售中','[\"大三\"]','[\"高雄市\"]','[\"資訊學群\"]'),(13,3,'折疊桌','租屋神器',450,'[\"https://picsum.photos/300/200?random=13\"]','[\"家具\",\"桌子\",\"家具家電\"]','2026-06-01','中度使用','販售中','[\"大二\"]','[\"台南市\"]','[\"不拘\"]'),(14,4,'攝影腳架','穩定耐用',700,'[\"https://picsum.photos/300/200?random=14\"]','[\"3C\",\"攝影\",\"3C電子\",\"專業器材\"]','2026-06-01','輕度使用','販售中','[\"大四以上\"]','[\"台北市\"]','[\"大眾傳播學群\"]'),(15,5,'瑜珈墊','厚實好收納',350,'[\"https://picsum.photos/300/200?random=15\"]','[\"運動\",\"健身\",\"戶外運動\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"高雄市\"]','[\"遊憩與運動學群\"]'),(16,1,'極簡後背包','全新未使用，容量大適合上課',350,'[\"https://picsum.photos/300/200?random=1\"]','[\"日用品\",\"背包\",\"生活用品\",\"服飾配件\"]','2026-06-01','全新','販售中','[\"大一\"]','[\"高雄市\"]','[\"不拘\",\"管理學群\"]'),(17,2,'MacBook Air M1','正常使用，電池健康度良好',18000,'[\"https://picsum.photos/300/200?random=2\"]','[\"3C\",\"筆電\",\"3C電子\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"台北市\"]','[\"資訊學群\",\"工程學群\"]'),(18,3,'微積分課本','期末考必備，有少量筆記',200,'[\"https://picsum.photos/300/200?random=3\"]','[\"書籍\",\"課本\",\"教科書\"]','2026-06-01','輕度使用','販售中','[\"大一\"]','[\"台中市\"]','[\"數理化學群\"]'),(19,4,'藍芽耳機','功能正常，續航力佳',900,'[\"https://picsum.photos/300/200?random=4\"]','[\"3C\",\"耳機\",\"3C電子\"]','2026-06-01','中度使用','販售中','[\"大二\"]','[\"台南市\"]','[\"資訊學群\"]'),(20,5,'人體解剖學','醫學系指定教材',650,'[\"https://picsum.photos/300/200?random=5\"]','[\"書籍\",\"醫學\",\"教科書\",\"專業器材\"]','2026-06-01','近全新','販售中','[\"大二\"]','[\"高雄市\"]','[\"醫藥衛生學群\"]'),(21,6,'宿舍小冰箱','可正常冷藏飲料',2500,'[\"https://picsum.photos/300/200?random=6\"]','[\"家電\",\"冰箱\",\"家具家電\"]','2026-06-01','中度使用','販售中','[\"大四以上\"]','[\"新竹市\"]','[\"不拘\"]'),(22,7,'無線滑鼠','反應靈敏，電池剛換新',400,'[\"https://picsum.photos/300/200?random=7\"]','[\"3C\",\"滑鼠\",\"3C電子\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"台北市\"]','[\"資訊學群\"]'),(23,8,'統計學原文書','保存良好',300,'[\"https://picsum.photos/300/200?random=8\"]','[\"書籍\",\"統計\",\"教科書\"]','2026-06-01','輕度使用','販售中','[\"大二\"]','[\"桃園市\"]','[\"管理學群\"]'),(24,9,'電腦椅','坐感舒適，無損壞',1200,'[\"https://picsum.photos/300/200?random=9\"]','[\"家具\",\"椅子\",\"家具家電\"]','2026-06-01','中度使用','販售中','[\"大四以上\"]','[\"台中市\"]','[\"不拘\"]'),(25,10,'Arduino 開發板','專題做完出售',500,'[\"https://picsum.photos/300/200?random=10\"]','[\"3C\",\"開發板\",\"3C電子\",\"專業器材\"]','2026-06-01','輕度使用','販售中','[\"大三\"]','[\"台北市\"]','[\"工程學群\",\"資訊學群\"]'),(26,1,'TOEIC 單字書','九成新',180,'[\"https://picsum.photos/300/200?random=11\"]','[\"書籍\",\"語言\",\"教科書\"]','2026-06-01','近全新','販售中','[\"大一\"]','[\"新竹市\"]','[\"外語學群\"]'),(27,2,'藍牙喇叭','音質佳，宿舍聚會很好用',850,'[\"https://picsum.photos/300/200?random=12\"]','[\"3C\",\"音響\",\"3C電子\"]','2026-06-01','輕度使用','販售中','[\"大三\"]','[\"高雄市\"]','[\"資訊學群\"]'),(28,3,'折疊桌','租屋神器',450,'[\"https://picsum.photos/300/200?random=13\"]','[\"家具\",\"桌子\",\"家具家電\"]','2026-06-01','中度使用','販售中','[\"大二\"]','[\"台南市\"]','[\"不拘\"]'),(29,4,'攝影腳架','穩定耐用',700,'[\"https://picsum.photos/300/200?random=14\"]','[\"3C\",\"攝影\",\"3C電子\",\"專業器材\"]','2026-06-01','輕度使用','販售中','[\"大四以上\"]','[\"台北市\"]','[\"大眾傳播學群\"]'),(30,5,'瑜珈墊','厚實好收納',350,'[\"https://picsum.photos/300/200?random=15\"]','[\"運動\",\"健身\",\"戶外運動\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"高雄市\"]','[\"遊憩與運動學群\"]'),(31,6,'機械設計學原文書','機械系必修教材，附重點筆記',450,'[\"https://picsum.photos/300/200?random=31\"]','[\"書籍\",\"課本\",\"教科書\",\"專業器材\"]','2026-06-01','輕度使用','販售中','[\"大二\"]','[\"台中市\"]','[\"工程學群\"]'),(32,8,'Nintendo Switch Lite','功能正常，附保護殼',4200,'[\"https://picsum.photos/300/200?random=32\"]','[\"3C\",\"遊戲主機\",\"3C電子\"]','2026-06-01','中度使用','販售中','[\"大四以上\"]','[\"台北市\"]','[\"不拘\"]'),(33,9,'會計學課本','保存良好，適合商管相關課程',250,'[\"https://picsum.photos/300/200?random=33\"]','[\"書籍\",\"課本\",\"教科書\"]','2026-06-01','近全新','販售中','[\"大一\"]','[\"台南市\"]','[\"管理學群\"]'),(34,1,'會跳舞的熊本熊','小時候家人硬塞給我的吉祥物，在教完他跳舞後我就不想要他了，努力一點說不定他還會幫你洗襪子',150,'[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780368579/ershougo/vzf8ukuzdzig2crfbpkj.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780368581/ershougo/hnyu1acozqseotadhdnd.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780368584/ershougo/smvnxhlx3qiymeffqw3v.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780368865/ershougo/zea689rxflgpem0gwqtd.jpg\"]','[\"生活用品\"]','2026-06-01','中度使用','已下架','[\"大一\",\"大二\"]','[\"高雄市\",\"台南市\"]','[\"不拘\"]'),(35,3,'不會洗襪子的黑熊','前陣子網購入手，但怎麼都教不會洗襪子，故賠本出售',150,'[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780333286/ershougo/h2d0rixp9omv2noiiprq.png\"]','[\"生活用品\"]','2026-06-02','輕度使用','販售中','[\"大一\",\"大二\"]','[\"高雄市\"]','[\"不拘\"]');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT '0',
  `accused_id` int DEFAULT '0',
  `complainant_id` int NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '0',
  ` file_path` varchar(500) DEFAULT NULL,
  `report_date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `violation_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `school_id` int NOT NULL AUTO_INCREMENT,
  `school` varchar(45) NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `product_id` int NOT NULL,
  `base_score` varchar(45) NOT NULL,
  `click` varchar(45) NOT NULL,
  `score` int DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(60) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(45) NOT NULL,
  `school` varchar(60) NOT NULL,
  `department` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `verified` date DEFAULT NULL,
  `good_level` float DEFAULT '0',
  `msg` varchar(200) DEFAULT NULL,
  `img_path` varchar(500) DEFAULT 'default_avatar.png',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'U10337005@o365.mcut.edu.tw','王小阿明','$2a$10$NppacbJc12mKzN39O..Nae6kQd6VeLIcvwm24AYjYSxggwEu8quTa',NULL,'高雄市,台南市','南臺科技大學','資訊工程系','正常','2026-05-31',0,NULL,'https://res.cloudinary.com/df8kviidh/image/upload/v1780370841/ershougo/arjvqmvlh8xomburxky3.png','2026-05-31 17:21:37'),(3,'U10337007@o365.mcut.edu.tw','王曉華','$2a$10$FfELtir/epYZ7NwnwFVpWegQmVMOUHokhpIEVAyG4hjAwEGMP/TWi','0922333444','台中市','台中科技大學','資訊管理系','正常',NULL,0,'測試帳號（含英文字母密碼）','default_avatar.png','2026-06-01 21:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `violation`
--

DROP TABLE IF EXISTS `violation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `violation` (
  `user_email` varchar(60) NOT NULL,
  `violation_id` int NOT NULL AUTO_INCREMENT,
  `violation_type` varchar(45) DEFAULT NULL,
  `violation_at` date NOT NULL,
  PRIMARY KEY (`violation_id`,`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `violation`
--

LOCK TABLES `violation` WRITE;
/*!40000 ALTER TABLE `violation` DISABLE KEYS */;
/*!40000 ALTER TABLE `violation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-02 19:05:18
