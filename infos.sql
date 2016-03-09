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
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telphone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_infos_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_7286a0fc33` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'竹北火車站','03-555-2024','竹北市和平街59號','https://zh.wikipedia.org/wiki/%E7%AB%B9%E5%8C%97%E8%BB%8A%E7%AB%99','台鐵竹北站開站一百一十六年，分居東、西側的前後站始終不連通，須繞路走十五分鐘才能抵達。隨市區規模擴大，台鐵斥資一億四千四百萬打造有綠色概念的跨站站房，於2013年7月17日剪綵啟用。<br />\r\n<br />\r\n竹北站原以貨運為主，到民國九十年間，上下車的人次，每天不過各一千人次。近年隨著竹北快速發展，民眾旅運需求增加，迄今每天已有各四千五百人次進出車站，但要從後站到前站卻需繞路，約需十五分鐘。為此，台鐵兩年多前花一億四千四百萬增建跨站站房，現在只要三分鐘，後站旅客就可以到達前站搭車。<br />\r\n<br />\r\n值得一提的，跨站站房由知名綠建築師張清華操刀，大量運用綠色概念，設計植栽牆，還內藏小型的「風力發電場」。她說，透過新竹的風力運轉，每天可平均發電二點三個小時，每小時發電六十六KW，如果不算鐵軌所需電量，足以供應竹北火車站自身的用電。<br />\r\n<br />\r\n另屋頂採用「整合式太陽能板」，讓太陽光影在站內營造有趣的明暗變化，「只要有太陽的日子，站內地板就會有溫度」，形成該站的另項特色，希望藉此提高竹北站的使用率。<br />','2015-12-29 08:03:06','2015-12-29 08:03:06','0b8f576d5d61bb5bcffef5f021e03b0a.jpg',24.827,121.079,2),(2,'高鐵新竹站','04-066-0000','新竹縣竹北市高鐵七路6號','https://www.thsrc.com.tw/tw/StationInfo/Prospect/a7a04c89-900b-4798-95a3-c01c455622f4','高鐵新竹車站，依所在位置又稱高鐵六家站，位於台灣新竹縣竹北市，為台灣高速鐵路的鐵路車站，與臺灣鐵路管理局六家線的六家車站共站。<br />\r\n<br />\r\n配合台灣高鐵的高架路軌配置，新竹車站也是採用高架車站設計，站內設有側式月台兩座，站區的總樓地板面積20,360平方公尺。車站建築是由台灣建築師姚仁喜設計，曾在2002年時獲選代表台灣館參加第八屆威尼斯建築雙年展，是參賽名單中少見的公共建築案件。但高鐵新竹車站在該屆雙年展中未獲獎，而是由荷蘭榮獲最佳國家館獎項。<br />\r\n<br />\r\n營業時間： 06:30 ~ 23:45<br />\r\n當日票 售票時間：06:30~末班車發車時間<br />\r\n預售票 售票時間：06:30~末班車發車時間<br />','2015-12-29 08:07:40','2015-12-29 08:07:40','92d3aba4cc604a16fc5ddbd63a53e3c5.jpg',24.8081,121.04,2),(3,'新竹喜來登大飯店','03-620-6000','竹北市光明六路東一段265號','http://www.sheraton-hsinchu.com','新竹喜來登為全球知名連鎖飯店，提供住宿服務、飯店介紹、設施服務、促銷活動和客房介紹，可線上訂房。','2015-12-29 08:11:20','2015-12-29 08:11:20','502cb4ab251a3afddbea23f55c9d49a9.jpg',24.8203,121.028,2),(4,'新瓦屋客家文化保存區','03-551-0201','竹北市文興路一段123號','http://www.hchcc.gov.tw/newtile/','清乾隆年間，由林氏家族渡海來臺灣，於竹北開墾農田，建立客家聚落新瓦屋聚落，新瓦屋聚落的核心是紀念林家來台興建「忠孝堂」公廳，族人稱為「新瓦屋」，林氏家族在公廳左右築屋聚居，逐漸發展成為至今日所見的聚落樣貌。<br />\r\n<br />\r\n新瓦屋聚落歷經兩百餘年歲月，從泥磚屋、紅磚屋到水泥屋，期間經過許多重修和換建材，但是平面格局還是保存相當完整，清楚呈現農村的居民生活與歷史文化、風貌，然後在行政院客家委員會台灣客家文化中心推動都市計畫、文化推廣工作，將新瓦屋聚落設為全國第一處「客家文化保存區」，這是對客家聚落保存傳承相當有意義。<br />\r\n<br />\r\n珍貴文化的新瓦屋客家文化保存園區，規劃成為開放休憩活動場所，提供民眾體驗客庄生活、參觀歷史遺跡、客家農村生活、文化活動、主題展覽等等，提供給民眾體驗客庄生活與接觸客家文化，以及感受客庄歷史意義與文化價值。<br />\r\n<br />\r\n營業時間：9:00~12:00；13:00~17:00 ；逢國定假日及星期一休館<br />','2015-12-30 01:57:03','2015-12-30 02:01:06','ae5a3d44c2f3be666770ea66fe4ecd4b.jpg',24.8118,121.026,1),(5,'竹北天后宮','03-551-7963','竹北市中正東路328巷29號','http://www.chupei-temple.tw','竹北天后宮宮址舊稱豆仔埔，亦即今之竹北里、竹仁里與竹義里一帶地區，該地名稱之由來，源於此地聚落位於新庄子圳上游，引水不易，而過去荒埔地經開墾後，僅能種植豆類，因此稱為「豆仔埔」。<br />\r\n由於耕作不易，居民務漁者甚眾，渡海來台之初，先民奉請居家航海之守護神－媽祖香火，以祈求平安，護境佑民。當時清廷海禁嚴厲管制，不論偷渡或合法移民，均無法攜眷前來，以至人心至為浮動，所幸媽祖慈威顯赫，神庥廣被，先民之精神信仰皆賴以所託。<br />\r\n百餘年來，每逢元宵佳節，信眾均覓地搭棚啟建平安祈福三獻法會，以感念媽祖聖恩，此一宗教活動延續至今，蔚為天后宮之特色。<br />','2015-12-30 02:00:22','2015-12-30 02:00:22','8b01f3cf1e9fb14ab6e1f08093ef0836.jpg',24.8355,121.011,1),(6,'風.飛鳥土鳳梨觀光工廠','03-556-5501','竹北市中正西路2-1號','http://www.so-q.com.tw/page/page_show.asp?4c=5252&page_id=531&home=1','飛鳥土鳳梨觀光工廠鄰近南寮漁港，在這放眼望去綠油油的稻田中，有一處由溫室改建的甜點小工廠，白天有鳳梨香，表示師傅正在手工熬煮土鳳梨餡，夜裡有芋頭香，正表示師傅在熬煮芋頭餡，講求天然食材的堅持，費時費力的在熬煮餡料，常常會有遊客騎著腳踏車經過，維也納也提供茶水及試吃品，讓這邊成為短暫的休憩地。<br />\r\n<br />\r\n由溫室改建的玻璃窗外，可看到許多的生產機器，師傅手工製餡與塑形後，採用這些機具完美生產出來，最後用自動包裝機包裝­，美味又衛生可口,歡迎來參觀看看囉!<br />','2015-12-30 02:07:28','2015-12-30 02:07:28','837e5e460e22fdb687dcfd774970109e.jpg',24.8412,120.993,1),(7,'竹北濱海遊憩區','03-556-2713','竹北市鳳岡路5段155巷80號','','<span>竹北濱海遊憩區僅有四公里，但由於頭前溪與鳳山溪河川在此入海，竹北海岸線剛好位於河口潮間帶，因此擁有豐富的自然生態資源，內有保安林、新月沙丘、細沙海灘、紅樹林及原生林，竹北市公所還精心規劃設置了觀景台、人行步道與停車場，讓民眾可以來趟輕鬆、自由、健康的知性之旅，體驗濱海生態的樂趣。<br />\r\n</span><br />\r\n■紅樹林觀景區<br />\r\n在竹北市牛埔溪附近的河口，可看見茂密的水筆仔及黃槿，那是「紅樹林景觀區」，是竹北市公所和地方民眾花了五年的時間努力復育的成果。七十五公尺長的觀賞棧道，讓民眾可以輕易的摸到少見的水筆仔，可以非常近身的觀察紅樹林的生長狀態。由於紅樹林兼具生態保護的功用，魚蝦、蚌貝、兩棲生物都在此快樂的繁衍，鳥類也翩然在此群集。這豐富多樣的自然生態，是欣賞的美景，也是教學的題材，假日總是吸引了眾多遊客的駐足。<br />\r\n<br />\r\n■海岸原生林<br />\r\n竹北市「仙腳石海岸原生林」早在清乾隆27年（西元1762年）就已經被發現，由於這塊防風林內樹種之多為當時所罕見，所以居民稱之為「百樣林」，日據時代也被列為天然資源而加以保護。在台灣西部海岸原生植物帶隨經濟開發被破壞殆盡的情況下，竹北市的「海岸原生林」已是全國僅存的海岸生態資源，因此顯得彌足珍貴。但據學者調查，其內的樹種在民國21年有305種之多，到了民國79年竟驟降到只剩102種，可見其所受破壞的嚴重。竹北市的「海岸原生林」是一個寓教育與休閒於一體的遊憩場所，是一處值得深入探訪的地方。<br />\r\n<br />\r\n■環山步道<br />\r\n為了讓民眾體認「海岸原生林」的珍貴，也為了使原生林的原貌能夠完整的呈現，竹北市公所特就當地的地形環境及景觀資源情況，規劃了一個環山步道系統，並在步道沿途建立了休憩亭、眺望台以及植物的標示、解說設施，使遊客能夠很容易的認識台灣本土特有的原生植物。同時也設立了一些自然原木體健設施供遊客活動筋骨，以加強步道的休憩功能。<br />\r\n<br />\r\n■交通資訊<br />\r\n中山高速公路=&gt;下竹北交流道=&gt;接光明六路往竹北市區方向續行=&gt;中華路（台１線省道）右轉=&gt;至市區中正西路左轉直行=&gt;長青路（１５號縣道）右轉續行=&gt;竹北濱海遊憩區。<br />\r\n中山高速公路=&gt;下湖口交流道(往湖口)=&gt;過湖口工業區陸橋=&gt;右轉接中華路=&gt;左轉接新興路(台1線)=&gt;右轉接鳳岡路一段=&gt;左轉接鳳岡路三段=&gt;接鳳岡路五段在155巷口左轉=&gt;竹北濱海遊憩區。<br />\r\n國道三號=&gt;下香山交流道(往香山)=&gt;左轉接西濱快速道路(台61線)=&gt;左轉接鳳岡路三段=&gt;=&gt;接鳳岡路五段在155巷口左轉=&gt;竹北濱海遊憩區。<br />\r\n<br />\r\n<br />\r\n<span></span>','2015-12-30 02:32:06','2015-12-30 02:34:08','62a5d68b0170f660e22b4f5bb359972f.jpg',24.8651,120.946,1),(8,'新月沙灣','','竹北市鳳岡路五段155巷','','「新月沙灣」是最近幾年才開發的免費海水浴場，位於新竹縣竹北市坎仔腳。因沙灘形似新月般彎曲而得名，後因舉辦音樂季而廣為人知。沙灘上設備齊全，備有廁所、更衣室、沖水處和活動中心，遊客們可在此玩砂、戲水、看寄居蟹，還可體驗沙灘車、水上摩托車，更是新人拍照的熱門景點。','2015-12-30 02:45:59','2015-12-30 02:45:59','23ecc557d4ad90f7d47d4471cc69b5db.png',24.8651,120.946,1),(9,'竹北夜市','','新竹縣竹北市新光二街與環北五路交接口','','營業時間 <br />\r\n週日：	17:00 - 1:00<br />','2015-12-30 02:58:34','2015-12-30 02:58:34','633029c937e8e0a45c8bbf9a6e2848ef.jpg',24.8387,120.996,1),(10,'新竹縣立體育館','03-658-0970','竹北市光明六路東一段2號','http://stadium.hcc.edu.tw','新竹縣體育場巨蛋體育館，又稱新竹縣立體育館或竹北巨蛋，位於台灣新竹縣竹北市 ，面積一萬二千平方公尺可容納8,000人，2005年完成建造，館內設置多功能球場、游泳池、桌球室、壁球場、柔道技擊室、健身中心，韻律體操舞蹈室及重量訓練室等等。','2015-12-30 03:03:34','2015-12-30 03:03:34','379f791ce1785c3240e6882356fef9c9.png',24.8211,121.019,1);
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-08 17:40:25
