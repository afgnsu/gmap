-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: a
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telphone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` text COLLATE utf8_unicode_ci,
  `menu` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shops_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_d9a58227f7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'斑馬騷莎美義餐廳竹北店','03-558-5118','竹北市光明一路38號','耗資百萬進口專業火山岩比薩烤窯，嚴選使用正統義大利進口麵粉． 用度高溫的騷莎魂，窯烤出完美的豹紋焦邊，讓正統義式的斑馬拿坡里比薩，熱情挑逗你的味蕾。',24.8295,121.019,'2015-12-29 07:44:10','2015-12-29 07:45:14','91757e5d336f7c5f50b9eaacc4a31a79.png','https://www.facebook.com/zebra.salsa.dining.bar','<img src=\"/uploads/image/201512/77a8d6b600aa.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/994ca70f31a2.jpg\" alt=\"\" />','<img src=\"/uploads/image/201512/c4e7473d05d5.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/e904dafd3bf0.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/697c4bc92c5e.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/4d2a7627fe61.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/6229eb0dcec2.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/bb0f399cd5c1.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/c0bbf0b7f8f3.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/a84f0f77bb8f.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/52b63bf2d268.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/0440d1f10afa.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/b09a22dc69de.jpg\" alt=\"\" />',2),(2,'鼎王麻辣鍋 竹北店','03-657-1879','竹北市光明一路93號','鼎王麻辣鍋湯底口感溫潤、層次豐富。鼎王酸菜白肉鍋酸中帶甜，鮮味十足。鼎王鴛鴦鍋兩種味覺一次享受，是最受歡迎的搭配方式。',24.8299,121.018,'2015-12-29 07:54:39','2015-12-29 07:54:39','ce230af59f2b94a2a82bac640136688f.png','http://www.tripodking.com.tw','&nbsp;營業時間：週一 ~ 週日 AM11:30 ~ AM02:00<br />\r\n&nbsp; <br />\r\n&nbsp; <br />\r\n交通資訊：<br />\r\n<br />\r\n開車<br />\r\n1. 國道1號竹北交流道下接光明六路，往新竹縣政府方向直行，於縣政二路右轉直行，於光明一路及縣政二路交叉口。<br />\r\n2.由新竹市區前往，走縱貫公路(中華路)往竹北市過頭前溪橋，右轉光明六路，並於縣政二路左轉，於光明一路及縣政二路交叉口。<br />\r\n3. 自竹北火車站往中山路直行，於縣政二路及中山路交叉口右轉直行，於光明一路左轉。<br />\r\n&nbsp;<br />\r\n火車：<br />\r\n1.自強號/莒光號：於新竹火車站下車，轉搭區間車於竹北火車站下車。可選擇搭乘計程車(5~10分，100元左右)，或步行自鼎王光明店(20~30分)。<br />\r\n2.區間車：於竹北火車站下車。可選擇搭乘計程車(5~10分)，或步行自鼎王光明店(20~30分)。<br />\r\n&nbsp;<br />\r\n高鐵：<br />\r\n1.至高鐵新竹站一樓大廳4號出口，前往3號公車月台搭乘高鐵快捷公車：高鐵新竹站→竹北火車站(約20分鐘一班車，25分鐘可到達竹北市區)。可選擇於東元醫院下車，步行直走縣政二路過光明六路口往光明一路前往，鼎王光明店於光明一路及縣政二路交接處。<br />\r\n2. 選擇搭乘計程車至鼎王光明店。(200元左右)<br />\r\n<p>\r\n</p>\r\n<p>\r\n	<img src=\"/uploads/image/201512/c1789ae15f34.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	特約停車資訊：<br />\r\n【好庭車停車場】地址：新竹縣竹北市縣政二路107號。<br />\r\n※以上皆為消費滿1000折抵一小時，2000為二小時，以此類推，並於結帳時出示停車劵！<br />\r\n</p>','<img src=\"/uploads/image/201512/d943df37c0b6.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/d6f860710163.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/c0b2d69fc1bd.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/c987016c1c62.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/3dcdf7e5d832.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/cc1268c0cae2.jpg\" alt=\"\" /><img src=\"/uploads/image/201512/fab481e3bf30.jpg\" alt=\"\" />',2),(3,'十一街麵食館','03-553-9368','竹北市光明一路275號','山不在寬，有情則廣 食不在豐，有心則滿以大中華麵食的概念深耕，並融以傳統眷村口味入菜，以「戀戀眷村南北味，巧意居家東西廚」，將南稻北麥的文化，眷村飲食經驗的情感分享，使記憶中的家鄉味充分的交流、融合，為台灣特有的眷村飲食文化保留其特色。',24.8315,121.011,'2015-12-29 07:56:39','2015-12-29 07:56:39','7656eef5deecab13582d4a1483e97cfd.jpg','http://www.11st.tw','','',2),(4,'這一鍋竹北光明殿','03-657-5151','竹北市光明一路288號','這一鍋，集結千年歷史，取自武則天時期祕傳的「榮華富貴」鍋及宜妃最愛「滋補養生」的產品概念，遍尋廚藝大師，取得老火湯的祕方，調配出「品、嚐、涮、回」的老火湯頭，加入各類現代精選食材，將皇室祕藏千年、堪稱滋補名菜的「鳳凰回巢」鍋重現於這一 鍋。',24.8307,121.014,'2015-12-30 02:25:51','2015-12-30 02:40:24','1213ea049c72bceb05a47eb2567b225f.png','http://www.toponepot.com','<img src=\"/uploads/image/201512/3a1c32e95256.jpg\" alt=\"\" />','',1);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-08 17:40:38
