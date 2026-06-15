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
-- Table structure for table `chat_message`
--

DROP TABLE IF EXISTS `chat_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `message_content` varchar(1000) NOT NULL,
  `is_read` tinyint NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_message`
--

LOCK TABLES `chat_message` WRITE;
/*!40000 ALTER TABLE `chat_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_room`
--

DROP TABLE IF EXISTS `chat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_room` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `initiator_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room`
--

LOCK TABLES `chat_room` WRITE;
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collect` (
  `user_id` int NOT NULL,
  `collect_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`collect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
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
INSERT INTO `manager` VALUES ('ks8930818@yahoo.edu.tw','管理員A','$2a$10$u.OMavdTY8vVaq1lvckjV.YHed/IR5LkViDD/qPJu6WRC9bN9C3Le',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,35,'2026-06-02','已取消',0,0,0,0),(2,2,34,'2026-06-02','已取消',0,0,0,0),(3,3,34,'2026-06-02','完成交易',1,1,0,0),(4,5,34,'2026-06-02','已取消',0,0,0,0),(5,4,34,'2026-06-02','已取消',0,0,0,0),(6,4,35,'2026-06-03','請求回應中',0,0,0,0),(7,6,36,'2026-06-03','請求回應中',0,0,0,0),(8,10,36,'2026-06-03','請求回應中',0,0,0,0),(9,8,62,'2026-06-03','訂單成立',0,0,0,0),(10,9,81,'2026-06-03','訂單成立',0,0,0,0);
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
  `img_path` varchar(2000) DEFAULT NULL,
  `type` varchar(2000) DEFAULT NULL,
  `shelf_date` date DEFAULT NULL,
  `product_condition` varchar(500) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `dept_group` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'極簡後背包','全新未使用，容量大適合上課',350,'[\"https://picsum.photos/300/200?random=1\"]','[\"日用品\",\"背包\",\"生活用品\",\"服飾配件\"]','2026-06-01','全新','販售中','[\"大一\"]','[\"高雄市\"]','[\"不拘\",\"管理學群\"]'),(2,2,'MacBook Air M1','正常使用，電池健康度良好',18000,'[\"https://picsum.photos/300/200?random=2\"]','[\"3C\",\"筆電\",\"3C電子\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"台北市\"]','[\"資訊學群\",\"工程學群\"]'),(3,3,'微積分課本','期末考必備，有少量筆記',200,'[\"https://picsum.photos/300/200?random=3\"]','[\"書籍\",\"課本\",\"教科書\"]','2026-06-01','輕度使用','已下架','[\"大一\"]','[\"台中市\"]','[\"數理化學群\"]'),(4,4,'藍芽耳機','功能正常，續航力佳',900,'[\"https://picsum.photos/300/200?random=4\"]','[\"3C\",\"耳機\",\"3C電子\"]','2026-06-01','中度使用','販售中','[\"大二\"]','[\"台南市\"]','[\"資訊學群\"]'),(5,5,'人體解剖學','醫學系指定教材',650,'[\"https://picsum.photos/300/200?random=5\"]','[\"書籍\",\"醫學\",\"教科書\",\"專業器材\"]','2026-06-01','近全新','販售中','[\"大二\"]','[\"高雄市\"]','[\"醫藥衛生學群\"]'),(6,6,'宿舍小冰箱','可正常冷藏飲料',2500,'[\"https://picsum.photos/300/200?random=6\"]','[\"家電\",\"冰箱\",\"家具家電\"]','2026-06-01','專題完成後出售','販售中','[\"大四以上\"]','[\"新竹市\"]','[\"不拘\"]'),(7,7,'無線滑鼠','反應靈敏，電池剛換新',400,'[\"https://picsum.photos/300/200?random=7\"]','[\"3C\",\"滑鼠\",\"3C電子\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"台北市\"]','[\"資訊學群\"]'),(8,8,'統計學原文書','保存良好',300,'[\"https://picsum.photos/300/200?random=8\"]','[\"書籍\",\"統計\",\"教科書\"]','2026-06-01','輕度使用','販售中','[\"大二\"]','[\"桃園市\"]','[\"管理學群\"]'),(9,9,'電腦椅','坐感舒適，無損壞',1200,'[\"https://picsum.photos/300/200?random=9\"]','[\"家具\",\"椅子\",\"家具家電\"]','2026-06-01','中度使用','販售中','[\"大四以上\"]','[\"台中市\"]','[\"不拘\"]'),(10,10,'Arduino 開發板','專題做完出售',500,'[\"https://picsum.photos/300/200?random=10\"]','[\"3C\",\"開發板\",\"3C電子\",\"專業器材\"]','2026-06-01','輕度使用','販售中','[\"大三\"]','[\"台北市\"]','[\"工程學群\",\"資訊學群\"]'),(11,1,'TOEIC 單字書','九成新',180,'[\"https://picsum.photos/300/200?random=11\"]','[\"書籍\",\"語言\",\"教科書\"]','2026-06-01','近全新','販售中','[\"大一\"]','[\"新竹市\"]','[\"外語學群\"]'),(12,2,'藍牙喇叭','音質佳，宿舍聚會很好用',850,'[\"https://picsum.photos/300/200?random=12\"]','[\"3C\",\"音響\",\"3C電子\"]','2026-06-01','輕度使用','販售中','[\"大三\"]','[\"高雄市\"]','[\"資訊學群\"]'),(13,3,'折疊桌','租屋神器',450,'[\"https://picsum.photos/300/200?random=13\"]','[\"家具\",\"桌子\",\"家具家電\"]','2026-06-01','中度使用','販售中','[\"大二\"]','[\"台南市\"]','[\"不拘\"]'),(14,4,'攝影腳架','穩定耐用',700,'[\"https://picsum.photos/300/200?random=14\"]','[\"3C\",\"攝影\",\"3C電子\",\"專業器材\"]','2026-06-01','輕度使用','販售中','[\"大四以上\"]','[\"台北市\"]','[\"大眾傳播學群\"]'),(15,5,'瑜珈墊','厚實好收納',350,'[\"https://picsum.photos/300/200?random=15\"]','[\"運動\",\"健身\",\"戶外運動\"]','2026-06-01','近全新','販售中','[\"大三\"]','[\"高雄市\"]','[\"遊憩與運動學群\"]'),(22,1,'資料結構課本','附重點筆記與考古題，期中期末都很有幫助',280,'[\"https://picsum.photos/300/200?random=101\"]','[\"資訊學群\"]','2026-06-04','輕度使用','販售中','[\"大二\"]','[\"台北市\"]','[\"教科書\",\"課本\"]'),(31,6,'機械設計學原文書','機械系必修教材，附重點筆記',450,'[\"https://picsum.photos/300/200?random=31\"]','[\"書籍\",\"課本\",\"教科書\",\"專業器材\"]','2026-06-01','輕度使用','販售中','[\"大二\"]','[\"台中市\"]','[\"工程學群\"]'),(32,8,'Nintendo Switch Lite','功能正常，附保護殼',4200,'[\"https://picsum.photos/300/200?random=32\"]','[\"3C\",\"遊戲主機\",\"3C電子\"]','2026-06-01','中度使用','販售中','[\"大四以上\"]','[\"台北市\"]','[\"不拘\"]'),(33,9,'會計學課本','保存良好，適合商管相關課程',250,'[\"https://picsum.photos/300/200?random=33\"]','[\"書籍\",\"課本\",\"教科書\"]','2026-06-01','近全新','已下架','[\"大一\"]','[\"台南市\"]','[\"管理學群\"]'),(34,1,'會跳舞的熊本熊','小時候家人硬塞給我的吉祥物，在教完他跳舞後我就不想要他了，努力一點說不定他還會幫你洗襪子',150,'[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780368579/ershougo/vzf8ukuzdzig2crfbpkj.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780368581/ershougo/hnyu1acozqseotadhdnd.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780368584/ershougo/smvnxhlx3qiymeffqw3v.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780368865/ershougo/zea689rxflgpem0gwqtd.jpg\"]','[\"生活用品\"]','2026-06-01','中度使用','已下架','[\"大一\",\"大二\"]','[\"高雄市\",\"台南市\"]','[\"不拘\"]'),(35,3,'不會洗襪子的黑熊','前陣子網購入手，但怎麼都教不會洗襪子，故賠本出售',150,'[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780333286/ershougo/h2d0rixp9omv2noiiprq.png\"]','[\"生活用品\"]','2026-06-02','輕度使用','販售中','[\"大一\",\"大二\"]','[\"高雄市\"]','[\"不拘\"]'),(36,1,'野生的宇宙人','圓圓的頭大大的眼睛還有細細的手腳，從51區捕捉到的，因為家人不准我養所以只能賣掉了，希望有好心人士願意帶走他',82000,'[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780471840/ershougo/s9jqzujxjncqnpy4d4ge.png\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780471841/x72w6fqxrm1ocqzt6ns3.png\"]','[\"專業器材\",\"醫學\"]','2026-06-03','近全新','販售中','[\"大一\",\"大二\",\"大三\",\"大四以上\"]','[\"桃園市\",\"台南市\"]','[\"生物資源學群\"]'),(37,2,'Logitech MX Master 3','功能正常，附原廠接收器',2200,'[\"https://picsum.photos/300/200?random=102\"]','[\"3C電子\"]','2026-06-04','近全新','販售中','[\"大四\"]','[\"新竹市\"]','[\"工程學群\",\"資訊學群\"]'),(38,3,'高等微積分','數學系指定教材',380,'[\"https://picsum.photos/300/200?random=103\"]','[\"教科書\"]','2026-06-04','中度使用','販售中','[\"大三\"]','[\"台中市\"]','[\"數理化學群\"]'),(39,4,'電競螢幕 24吋','144Hz，無亮點',3500,'[\"https://picsum.photos/300/200?random=104\"]','[\"3C電子\"]','2026-06-04','輕度使用','販售中','[\"大四\"]','[\"高雄市\"]','[\"不分年級\"]'),(40,5,'護理學原文書','內容完整無缺頁',550,'[\"https://picsum.photos/300/200?random=105\"]','[\"教科書\"]','2026-06-04','近全新','販售中','[\"大二\"]','[\"台南市\"]','[\"醫藥衛生學群\"]'),(41,6,'折疊腳踏車','代步方便，可直接騎走',2800,'[\"https://picsum.photos/300/200?random=106\"]','[\"戶外運動\"]','2026-06-04','低度使用','販售中','[\"大三\"]','[\"桃園市\"]','[\"不分年級\"]'),(42,7,'單眼相機 Canon 800D','快門數低，保存良好',12000,'[\"https://picsum.photos/300/200?random=107\"]','[\"3C電子\",\"專業器材\"]','2026-06-04','輕度使用','販售中','[\"大四\"]','[\"台北市\"]','[\"大眾傳播學群\"]'),(43,8,'行銷管理學','商管必修教材',320,'[\"https://picsum.photos/300/200?random=108\"]','[\"教科書\"]','2026-06-04','近全新','販售中','[\"大二\"]','[\"台中市\"]','[\"管理學群\"]'),(52,1,'Python程式設計課本','資訊系常用教材，附重點標記',320,'[\"https://picsum.photos/300/200?random=201\"]','[\"教科書\"]','2026-06-06','輕度使用','販售中','[\"大一\"]','[\"台北市\"]','[\"資訊學群\"]'),(53,2,'工程力學講義','整理完整，含歷屆考題',180,'[\"https://picsum.photos/300/200?random=202\"]','[\"筆記考古\"]','2026-06-06','近全新','販售中','[\"大二\"]','[\"新竹市\"]','[\"工程學群\"]'),(54,3,'實驗用數位三用電表','功能正常，附電池',650,'[\"https://picsum.photos/300/200?random=203\"]','[\"專業器材\"]','2026-06-06','中度使用','販售中','[\"大三\"]','[\"台中市\"]','[\"工程學群\"]'),(55,4,'宿舍曬衣架','可折疊收納，不占空間',220,'[\"https://picsum.photos/300/200?random=204\"]','[\"生活用品\"]','2026-06-06','輕度使用','販售中','[\"大一\"]','[\"高雄市\"]','[\"不拘\"]'),(56,5,'Logitech無線鍵盤','藍牙連線正常',750,'[\"https://picsum.photos/300/200?random=205\"]','[\"3C電子\"]','2026-06-06','近全新','販售中','[\"大二\"]','[\"台南市\"]','[\"資訊學群\"]'),(57,6,'雙層書櫃','租屋搬家出售',1200,'[\"https://picsum.photos/300/200?random=206\"]','[\"家具家電\"]','2026-06-06','中度使用','販售中','[\"大四以上\"]','[\"台中市\"]','[\"不拘\"]'),(58,7,'棒球隊紀念外套','尺寸XL，保暖舒適',450,'[\"https://picsum.photos/300/200?random=207\"]','[\"服飾配件\"]','2026-06-06','輕度使用','販售中','[\"大三\"]','[\"高雄市\"]','[\"不拘\"]'),(59,8,'露營折疊椅','攜帶方便，承重佳',380,'[\"https://picsum.photos/300/200?random=208\"]','[\"戶外運動\"]','2026-06-06','近全新','販售中','[\"大二\"]','[\"花蓮縣\"]','[\"不拘\"]'),(60,9,'學士服出租後出售','畢業典禮穿過一次',600,'[\"https://picsum.photos/300/200?random=209\"]','[\"畢業季\"]','2026-06-06','近全新','販售中','[\"大四以上\"]','[\"台北市\"]','[\"不拘\"]'),(61,10,'資料庫系統原文書','內容完整無劃記',420,'[\"https://picsum.photos/300/200?random=210\"]','[\"教科書\",\"筆記考古\"]','2026-06-06','輕度使用','販售中','[\"大二\"]','[\"桃園市\"]','[\"資訊學群\"]'),(62,1,'樹莓派開發板套組','专題完成後出售',1800,'[\"https://picsum.photos/300/200?random=211\"]','[\"專業器材\",\"3C電子\"]','2026-06-06','近全新','販售中','[\"大三\"]','[\"新竹市\"]','[\"工程學群\",\"資訊學群\"]'),(63,2,'小型電風扇','宿舍必備，可調整風速',280,'[\"https://picsum.photos/300/200?random=212\"]','[\"生活用品\",\"家具家電\"]','2026-06-06','中度使用','販售中','[\"大一\"]','[\"嘉義市\"]','[\"不拘\"]'),(64,3,'單眼相機背帶','加厚減壓設計',250,'[\"https://picsum.photos/300/200?random=213\"]','[\"服飾配件\"]','2026-06-06','近全新','販售中','[\"大三\"]','[\"台南市\"]','[\"大眾傳播學群\"]'),(65,4,'羽毛球拍','附拍套，拍框無損傷',580,'[\"https://picsum.photos/300/200?random=214\"]','[\"戶外運動\"]','2026-06-06','輕度使用','販售中','[\"大二\"]','[\"高雄市\"]','[\"遊憩與運動學群\"]'),(66,5,'面試西裝外套','畢業求職穿過兩次',900,'[\"https://picsum.photos/300/200?random=215\"]','[\"畢業季\",\"服飾配件\"]','2026-06-06','近全新','販售中','[\"大四以上\"]','[\"台中市\"]','[\"不拘\"]'),(67,6,'線性代數原文書','內容完整，附部分重點標記',350,'[\"https://picsum.photos/300/200?random=301\"]','[\"教科書\"]','2026-06-06','輕度使用','販售中','[\"大一\",\"大二\"]','[\"台北市\",\"新北市\"]','[\"資訊學群\",\"工程學群\"]'),(68,7,'醫學解剖模型','醫學相關課程使用',1800,'[\"https://picsum.photos/300/200?random=302\"]','[\"專業器材\"]','2026-06-06','近全新','販售中','[\"大三\",\"大四以上\"]','[\"高雄市\"]','[\"醫藥衛生學群\",\"生命科學學群\"]'),(69,8,'宿舍懶人桌','床上讀書追劇都方便',250,'[\"https://picsum.photos/300/200?random=303\"]','[\"生活用品\"]','2026-06-06','中度使用','販售中','[\"不分年級\"]','[\"台中市\",\"彰化縣\"]','[\"不拘\"]'),(70,9,'Galaxy Tab S8','功能正常，附保護套',9800,'[\"https://picsum.photos/300/200?random=304\"]','[\"3C電子\"]','2026-06-06','近全新','販售中','[\"大二\",\"大三\",\"碩士\"]','[\"桃園縣\",\"新竹市\"]','[\"資訊學群\",\"管理學群\"]'),(71,10,'小型除濕機','租屋族必備',1300,'[\"https://picsum.photos/300/200?random=305\"]','[\"家具家電\",\"生活用品\"]','2026-06-06','輕度使用','販售中','[\"不分年級\"]','[\"宜蘭縣\",\"花蓮縣\"]','[\"不拘\"]'),(72,1,'歷屆考古題總整理','收錄近五年考題與解析',200,'[\"https://picsum.photos/300/200?random=306\"]','[\"筆記考古\"]','2026-06-06','近全新','販售中','[\"大一\",\"大二\",\"大三\"]','[\"台南市\",\"高雄市\"]','[\"管理學群\",\"財經學群\"]'),(73,2,'校隊運動外套','防風保暖，尺寸M',480,'[\"https://picsum.photos/300/200?random=307\"]','[\"服飾配件\"]','2026-06-06','輕度使用','販售中','[\"大一\",\"大二\"]','[\"嘉義市\",\"嘉義縣\"]','[\"遊憩與運動學群\"]'),(74,3,'登山杖一對','鋁合金材質，重量輕',700,'[\"https://picsum.photos/300/200?random=308\"]','[\"戶外運動\"]','2026-06-06','中度使用','販售中','[\"不分年級\"]','[\"花蓮縣\",\"台東縣\"]','[\"不拘\"]'),(75,4,'畢業紀念學士帽','保存良好，可收藏',180,'[\"https://picsum.photos/300/200?random=309\"]','[\"畢業季\"]','2026-06-06','近全新','販售中','[\"大四以上\"]','[\"台北市\",\"新北市\",\"桃園縣\"]','[\"不拘\"]'),(76,5,'3D列印機套件','專題製作完成後出售',5500,'[\"https://picsum.photos/300/200?random=310\"]','[\"專業器材\",\"3C電子\"]','2026-06-06','中度使用','販售中','[\"大三\",\"大four以上\",\"碩士\"]','[\"新竹市\",\"台中市\"]','[\"工程學群\",\"建築與設計學群\"]'),(80,11,'男哥的筆記♥','陳建男老師親編筆記 後端轉職必讀 ! 幫助你 once again, 事業亨通 ! ',100000,'[\"https://picsum.photos/300/200?random=666\"]','[\"教科書\",\"課本\",\"筆記考古\"]','2026-06-04','重度使用','販售中','[\"大四\"]','[\"高雄市\",\"台南市\"]','[\"資訊學群\"]'),(81,1,'男哥的筆記第二集','因為太認真了所以是重度使用，轉職必備 萬十祝你成功 once again, 200 successfully !',100000,'[\"https://picsum.photos/300/200?random=667\"]','[\"筆記考古\",\"生活用品\"]','2026-06-08','重度使用','販售中','[\"大一\"]','[\"高雄市\"]','[\"不拘\",\"管理學群\"]');
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
  `file_path` varchar(500) NOT NULL,
  `report_date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `violation_type` varchar(45) DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,3,0,1,'ㄊㄇ的這隻熊根本不會跳舞，每天還都限定要吃K壽司的鮭魚X的咧有這個錢我不如去養一隻真的黑熊，這根本就是詐欺！！！','[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780442495/ershougo/tnprmrxhkt2w7ae63gcu.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780442497/ershougo/idbsuckp8mghk4ekqrfe.jpg\"]','2026-06-03','已處裡','商品','物品與描述不同',NULL),(2,0,4,1,'長得太像肥宅，還賣健身器材，怎麼不自己先用','[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780442495/ershougo/tnprmrxhkt2w7ae63gcu.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780442497/ershougo/idbsuckp8mghk4ekqrfe.jpg\"]','2026-06-03','已處裡','使用者','其他',NULL),(3,0,4,1,'長得太像肥宅，還賣健身器材，怎麼不自己先用','[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780466069/ershougo/mtpdy4wi4a4jfmsyvfns.jpg\"]','2026-06-03','已處裡','使用者','其他',NULL),(4,33,0,1,'幹吉掰，我打錯商品編號了。ㄊㄇ的這隻熊根本不會跳舞，每天還都限定要吃K壽司的鮭魚X的咧有這個錢我不如去養一隻真的黑熊，這根本就是詐欺！！！','[\"https://res.cloudinary.com/df8kviidh/image/upload/v1780442495/ershougo/tnprmrxhkt2w7ae63gcu.jpg\",\"https://res.cloudinary.com/df8kviidh/image/upload/v1780442497/ershougo/idbsuckp8mghk4ekqrfe.jpg\"]','2026-06-03','已處裡','商品','物品與描述不同',NULL);
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
  `user_id` int NOT NULL,
  `base_score` varchar(45) NOT NULL,
  `click` varchar(45) NOT NULL,
  `score` int DEFAULT '0',
  PRIMARY KEY (`user_id`)
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
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(45) NOT NULL,
  `school` varchar(60) NOT NULL,
  `department` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `verified` date DEFAULT NULL,
  `good_level` float DEFAULT '0',
  `msg` varchar(200) DEFAULT NULL,
  `img_path` varchar(500) DEFAULT 'https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'U10337005@o365.mcut.edu.tw','王小阿明','$2a$10$NppacbJc12mKzN39O..Nae6kQd6VeLIcvwm24AYjYSxggwEu8quTa',NULL,'[\"高雄市\",\"臺南市\"]','南臺科技大學',NULL,'正常','2026-05-31',0,NULL,'https://res.cloudinary.com/df8kviidh/image/upload/v1780370841/ershougo/arjvqmvlh8xomburxky3.png','2026-05-31 17:21:37',NULL),(2,'u11233001@stust.edu.tw','林柏宇','$2a$10$7fHb.RcxD/rnm8hqbVixEu3DRDb1jemLzbzOVyZnY7Hnl3ovQuR0C','0911222333','[\"臺南市\"]','南臺科技大學','資訊工程系','正常','2026-06-01',4.8,'喜歡面交','https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-01 09:15:22',NULL),(3,'u11233002@stust.edu.tw','陳語涵','$2a$10$A31Sp4CTZmc1oxjB1vbIyOAJ5RhLVDndQ3av0i2jHZ5PFzZwFNGqa','0922333444','[\"臺中市\"]','逢甲大學','企業管理學系','正常','2026-06-01',4.6,NULL,'https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-01 10:22:31',NULL),(4,'4A50006@stust.edu.tw','宇宙人','$2a$10$F2C2IdoAFNzovWsLThjEnuLoaZFbVZtk/9OLbc3O4XIoxsuxSiDhG',NULL,'[\"臺南市\"]','南臺科技大學',NULL,'正常','2026-06-03',0,NULL,'https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-03 08:29:04',NULL),(5,'123456@nthu.gapp.edu.tw','李吉娃娃','$2a$10$oH0Kpfx0wbut2RpGKxsIK.OJUBinrwFS9pPs3muj5vYAarcwUpIZ6',NULL,'[\"高雄市\",\"新竹市\"]','國立清華大學','生命科學系','正常','2026-06-03',1,'吉娃娃 吉娃娃','https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-06 13:29:20',NULL),(6,'u11233003@ncku.edu.tw','張家豪','$2a$10$mzS75hmkk97WAFCPUlx6p.xFG70vqseTrkJA8pyUffmYW3NR7mFCW','0933444555','[\"臺南市\"]','國立成功大學','電機工程學系','正常','2026-06-02',4.9,'回覆速度快','https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-02 14:01:33',NULL),(7,'u11233004@nccu.edu.tw','李吉利壞寶寶','$2a$10$6eEfn3XY5kiBZ3qO/QR93.nPTfCRetktSvu2QjeuzI4.z4pRZUMrC','09-44567890','[\"高雄市\"]','國立清華大學','生命科學系','正常','2026-06-02',4.5,'汪 汪汪汪','https://res.cloudinary.com/df8kviidh/image/upload/v1781357774/ershougo/kgntrxfnbmgirakg7dfu.jpg','2026-06-02 18:45:20',NULL),(8,'u11233005@mail.nsysu.edu.tw','吳承恩','$2a$10$IpzDL3Q7D07De346DibEg.LwWSPxKLKk4/J6G/zfYqC2J71Or50yW','0955666777','[\"高雄市\"]','國立中山大學','資訊管理學系','正常','2026-06-03',4.7,'假日可面交','https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-03 11:20:08',NULL),(9,'u11233006@mail.ncku.edu.tw','蔡依庭','$2a$10$hHqQ.1mXphdkTjC20g3RAeQBNTk3YNM9U/k0IvIpCWdfIrUDCUYGK','0966777888','[\"臺南市\"]','國立成功大學','建築學系','正常','2026-06-03',4.3,NULL,'https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-03 16:05:12',NULL),(10,'u11233007@gm.ttu.edu.tw','楊博鈞','$2a$10$BFKpLwJuhXWcEad2koHQOOk8DB6Teta0rbAZdMropeonbKGvYPKem','0977888999','[\"臺北市\"]','大同大學','機械工程學系','正常','2026-06-04',4.4,NULL,'https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-04 08:30:45',NULL),(11,'u11233008@mail.nptu.edu.tw','蘇東坡','$2a$10$R9rNUbbqGxP6xOLC1xp8o.ESC95zj7ijKMQkCG88HW8ZdfSnfkSHC','09-87878787','[\"新竹市\"]','國立清華大學','中國語文學系語文教師碩士在職專班','正常','2026-06-04',4.6,'明月幾時有？把酒問青天。\n不知天上宮闕，今夕是何年。\n我欲乘風歸去，又恐瓊樓玉宇，\n高處不勝寒。\n起舞弄清影，何似在人間！\n\n轉朱閣，低綺戶，照無眠。\n不應有恨，何事長向別時圓！\n人有悲歡離合，月有陰晴圓缺，此事古難全。\n但願人長久，千里共嬋娟。\n\n豬肉超好吃','https://res.cloudinary.com/df8kviidh/image/upload/v1781359022/ershougo/jltzpasl3i5hnh6b8gk2.png','2026-06-04 13:17:52',NULL),(12,'u11233009@mail.ncu.edu.tw','鄭凱文','$2a$10$6td/84qriHjWC.2kyvzztenVb84E8u7AnPRS4Fliy5UuU7JZ2Sh4O','0912345678','[\"桃園市\"]','國立中央大學','資訊工程學系','正常','2026-06-05',4.8,NULL,'https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-05 09:48:26',NULL),(13,'u11233010@ntu.edu.tw','劉怡君','$2a$10$x21IL50U1/LhF4tGA5eHLeBfu22VNkWATPE8qw1.6.7paxOg5RGCy','0923456789','[\"臺北市\"]','國立臺灣大學','法律學系','正常','2026-06-05',4.9,'誠信交易','https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-05 15:26:11',NULL),(14,'u11233011@mail.cycu.edu.tw','周冠廷','$2a$10$SSQ9wI3GJgvJk7icZuJFfO9ItG9EiOk/xxbs16pTmSArVyEsO6arW','0934567890','[\"桃園市\"]','中原大學','電子工程學系','正常','2026-06-06',4.2,NULL,'https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-06 10:12:38',NULL),(15,'u11233012@mail.fcu.edu.tw','何欣穎','$2a$10$dajQf44x0bMIa6Z0IQiWXOUvzu6Bo/cBG.yYcvyp08p35vz0wx/IS','0945678901','[\"臺中市\"]','國立清華大學','資訊工程學系','正常','2026-06-06',4.7,'晚上較常上線','https://res.cloudinary.com/df8kviidh/image/upload/v1780243053/default_avatar_lvgh1a.png','2026-06-06 21:03:57',NULL);
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

INSERT INTO product (product_id, user_id, product_name, description, price, img_path, type, shelf_date, product_condition, status, grade, location, dept_group) VALUES
(82,1,'iPad Air 4 附原廠手寫筆','【全套出清 • 筆記繪圖神隊友】\n這台 iPad Air 4 是大二時為了全面數位化、無紙化筆記而買的。配合 Apple Pencil 2，不論是在 GoodNotes 上寫微積分微縮筆記、畫解剖圖，還是在課堂上直接在教授的簡報 PDF 上做註記，效率都高到不行！\n\n■ 規格與附贈配件：\n1. 容量為 64GB，WiFi 版本，日常看影片、查資料、寫筆記絕對夠用。\n2. ★超值全包：附贈 Apple Pencil 2 代原廠手寫筆（單買就要四千多），以及一個剛換新不久的類紙膜保護貼與磁吸保護殼。\n\n■ 物況說明：\n外觀有正常的輕微使用痕跡，但無任何大摔傷或撞擊凹痕。螢幕發色完美無亮點，觸控與 Apple Pencil 感應皆非常靈敏。電量健康度良好，上課一整天不帶充電器也完全撐得住。\n\n■ 轉讓原因：\n最近大四畢業專題結束，家人送了新筆電，平板的使用率變低，決定便宜讓給想要嘗試數位筆記的學弟妹。高雄地區皆可面交檢查機況，歡迎現場試寫！',900,'["https://picsum.photos/300/200?random=821","https://picsum.photos/300/200?random=822","https://picsum.photos/300/200?random=823","https://picsum.photos/300/200?random=824"]','["3C電子","專業器材"]','2026-06-06','近全新','販售中','["大四以上"]','["高雄市"]','["不拘"]'),
(83,2,'Sony 藍牙主動降噪耳機','【期末考K書神器 • 降噪藍牙耳機】\n這款 Sony 旗艦級耳機是專門為了在吵雜的環境中專心讀書而買的。當宿舍室友在大聲打遊戲、或者圖書館期末考人滿為患非常浮躁時，只要戴上它開啟主動降噪，瞬間整個世界都安靜了，直接進入深度心流狀態，是絕對的歐趴神器！\n\n■ 優勢功能介紹：\n- 頂級主動降噪：能完美隔絕冷氣運轉聲、鍵盤敲擊聲與人聲密集的雜音。\n- 音質極佳，低音渾厚，且耳罩非常柔軟包覆，長時間配戴眼鏡也不會覺得壓耳。\n- 續航力驚人，充電一次可以用三十小時，還支援藍牙多點連接。\n\n■ 現況狀況：\n保存得非常乾淨，平時沒有流汗時配戴，使用後都會用酒精濕紙巾輕輕擦拭。耳罩皮革完整無脫皮、無異味。功能完全正常，附原廠精緻收納盒、Type-C 充電線與 3.5mm 音源線。\n\n■ 售出原因：\n畢業即將搬回台北，行李減量清空物品，所以賠本出清。台北市市中心或特定捷運站皆可約面交當場試聽。',3500,'["https://picsum.photos/300/200?random=831","https://picsum.photos/300/200?random=832","https://picsum.photos/300/200?random=833","https://picsum.photos/300/200?random=834","https://picsum.photos/300/200?random=835"]','["3C電子"]','2026-06-04','輕度使用','販售中','["大四"]','["台北市"]','["資訊學群","工程學群"]'),
(84,3,'經濟學原理（上+下）套書','【商管學群必備 • 經濟學聖經套書】\n這套《經濟學原理》是大一商管學群（企管、財金、會計、行銷）所有科系必修的核心教科書。書中內容由淺入深，圖表清晰，是打好資料分析與計量經濟基礎的骨幹書籍。期中期末考許多題目都是從書中的習題直接演變而來！\n\n■ 書籍狀況與內容：\n1. 包含上冊（微觀經濟）與下冊（總體經濟）整套不拆賣。\n2. 書本內部保存大約八九成新，只有期中考前用螢光筆劃記過少數重點，完全沒有缺頁、水漬或嚴重破損，封面有包透明書套。\n3. ★額外福利：買書直接打包贈送我自己整理的各章節期中期末考重點心智圖電子檔，以及近年歷屆助教課的小考考古題！\n\n■ 傳承寄語：\n當初靠這套書跟精華筆記順利拿到了 A+ 高分。現在大三必修課比較多，課本放著用不到，決定便宜傳承給大一、大二正在跟經濟學苦戰的學弟妹。台中各大校區或周邊皆可約面交，這本很重強烈建議面交！',300,'["https://picsum.photos/300/200?random=841","https://picsum.photos/300/200?random=842","https://picsum.photos/300/200?random=843","https://picsum.photos/300/200?random=844","https://picsum.photos/300/200?random=845","https://picsum.photos/300/200?random=846"]','["書籍","統計","教科書"]','2026-06-01','輕度使用','販售中','["大二"]','["台中市"]','["管理學群"]'),
(85,4,'米家 LED 智慧護眼檯燈','【宿舍熬夜K書必備 • 智慧護眼檯燈】\n這台米家智慧檯燈 1S 是租屋開學時必買的宿舍好物。宿舍自帶的日光燈通常不夠亮或是有死角，這台檯燈能提供非常均勻且寬廣的照明，並且通過了專業防頻閃與無藍光危害認證。半夜在宿舍熬夜趕專題、寫程式、讀原文書時，眼睛完全不會感到乾澀或疲勞！\n\n■ 產品特色與亮點：\n- 支援多種模式：有專門的電腦模式、讀書模式與番茄鐘工作模式，能自動調節到最舒適的色溫。\n- 智慧連網：可以用手機 App 遠端開關或調整亮度，設計極簡高顏值，擺在書桌上質感瞬間升級。\n\n■ 物品狀況：\n外觀乾淨無瑕疵，底座和支架都保養得很好，旋鈕功能靈敏，燈管發光完全正常，無任何衰減。附原廠電源線與原廠完整盒裝。\n\n■ 出售原因：\n大四即將畢業搬遷，租屋處物件大出清，帶不走只好便宜賣。台南校區附近皆可約時間面交，機車非常好載，有需要的學弟妹歡迎點擊發送購買請求。',1800,'["https://picsum.photos/300/200?random=851","https://picsum.photos/300/200?random=852","https://picsum.photos/300/200?random=853","https://picsum.photos/300/200?random=854"]','["家電","家具家電","生活用品"]','2026-06-06','近全新','販售中','["大三"]','["台南市"]','["資訊學群"]'),
(86,5,'智慧空氣淨化器','【租屋小套房神機 • 智慧空氣淨化器】\n這台空氣淨化器是外宿租屋族、過敏體質同學的救星！很多學校周邊的租屋小套房通風不好，很容易有霉味、灰塵，或是室友抽菸累積的異味。這台機器體積小巧，但淨化速度極快，開機十分鐘就能讓房間的空氣變得像森林一樣清新，呼吸空間感直接拉滿！\n\n■ 功能亮點：\n1. 搭載高效三合一濾網，能強力過濾 PM2.5、塵蟎、寵物毛髮與過敏原。\n2. 靜音睡眠模式超有感：晚上睡覺開啟完全聽不到聲音，完全不影響睡眠品質。\n3. 支援 App 連線，在學校上完課回宿舍前，可以先用手機遠端開啟淨化房間。\n\n■ 現況說明：\n輕度使用痕跡，外觀固定擦拭無髒污，機器運轉完全順暢。目前裡面的濾網壽命還剩餘大約 65%，拿回去可以直接使用不需要馬上更換新濾網。\n\n■ 轉讓因由：\n研究所考回南部老家，南部家裡已經有大台的淨化器，這台帶回去太佔行李空間，因此折價割愛。宜蘭或花蓮地區皆可面交，附原廠紙箱，搬運載送方便。',1300,'["https://picsum.photos/300/200?random=861","https://picsum.photos/300/200?random=862","https://picsum.photos/300/200?random=863","https://picsum.photos/300/200?random=864","https://picsum.photos/300/200?random=865","https://picsum.photos/300/200?random=866","https://picsum.photos/300/200?random=867"]','["家具家電","生活用品"]','2026-06-06','輕度使用','販售中','["不分年級"]','["宜蘭縣","花蓮縣"]','["不拘"]');
-- Dump completed on 2026-06-13 17:46:14

