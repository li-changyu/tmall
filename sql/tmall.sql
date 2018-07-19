# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2017-12-20 16:23:20
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "category"
#

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,'护膝'),(2,'跑步机'),(3,'哑铃'),(4,'运动文胸'),(6,'电吹风'),(7,'化妆水'),(8,'收纳箱'),(9,'眼影'),(10,'安全座椅'),(11,'男士西服'),(12,'品牌女装'),(13,'时尚男鞋'),(14,'太阳镜'),(15,'飞行器'),(16,'鼠标'),(17,'相机');

#
# Structure for table "product"
#

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subTitle` varchar(255) DEFAULT NULL,
  `orignalPrice` float DEFAULT NULL,
  `promotePrice` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category` (`cid`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'nike','内置弹簧',39,28,2313,1,NULL),(2,'亿键','2017新款 免费安装',2999,2899,19,2,NULL),(3,'纯钢哑铃','保护地板不怕摔',179,179,99,3,NULL),(4,'nike','中强度钢圈',189,69,45,4,NULL),(5,'飞科','家用大功率',240,64.9,199,6,NULL),(6,'康夫','抗压耐摔耐高压',199,89,13445,6,NULL),(7,'飞科','小功率 静音',99.98,39.9,235,6,NULL),(8,'娥佩兰','日本销售 无色素 无香料',95,55,356,7,NULL),(9,'sk-ii','软化肤质',990,560,19,7,NULL),(10,'薇诺娜','舒适爽肤',200,188,46,7,NULL),(11,'茶花','轮滑可拆卸',81,45,99,8,NULL),(12,'妙爱','质量好 钢架支撑',53,15,34523,8,NULL),(13,'纳川','桌面化妆品收纳',55,20,124,8,NULL),(14,'玛丽黛佳','干湿两用',58,58,273,9,NULL),(15,'美宝莲','立体轮廓',169,159,62,9,NULL),(16,'卡姿兰','百变眼妆',159,99,109,9,NULL),(17,'babyfirst','高性能 百搭驾座',1200,1070,99,10,NULL),(18,'贝贝卡西','全车型',1200,667,99,10,NULL),(19,'britax','双向婴儿座椅',2480,1830,50,10,NULL),(20,'G。mons','修身v版',1860,528,156,11,NULL),(21,'培罗蒙','商务正装',1880,550,1565,11,NULL),(22,'雅戈尔','正品西服套装',3380,1880,516,11,NULL),(23,'only新宽松中长套头海军毛衣针织衫','针织面料',499,298.5,545,12,NULL),(24,'only宽松加厚长款羽绒服女','印花内衫',1799,899,256,12,NULL),(25,'89veromoda纯色v领短袖t恤女','短袖 v领 纯棉',149,89,6546,12,NULL),(26,'红蜻蜓时尚商务正装皮鞋','年终庆典只要239',648,239,568,13,NULL),(27,'skechers时尚运动休闲鞋','舒适轻质鞋底',699,389,5656,13,NULL),(28,'金利来正品商务时尚系带尖头婚鞋','正品防伪 全国包邮',1242,456,2656,13,NULL),(29,'雷朋太阳镜男女款','品牌直销',1289,889,23,14,NULL),(30,'bertha偏光镜近视夹片太阳镜','保质3年 30天包退',399,149,56,14,NULL),(31,'Calvin Klein jeans太阳镜女士潮款圆脸复古','大框修脸 正品保障 顺丰包邮',980,298,297,14,NULL),(32,'大疆悟2无人机套装','6期免息 神秘赠品',44246,44246,12,15,NULL),(33,'DJI大疆悟inspire 四轴航拍飞行器变形无人机','变形无人机 云台可拆卸',12999,12999,32,15,NULL),(34,'小米无人机4k版','双旦节直降100元',2999,2899,345,15,NULL),(35,'血手幽灵v8n绝地求生宏编程鼠标','吃鸡主播的秘密',600,298,300,16,NULL),(36,'罗技G502有线游戏鼠标','领券立减 只换不修',499,399,2323,16,NULL),(37,'罗技G300s有线电竞鼠标可宏编程','九键编程 七色光灯',289,119,536,16,NULL),(38,'佳能 EOS 5D Mark IV机身','超越传奇 开启高清新境界',23399,21599,652,17,NULL),(39,'佳能 EOS 1D X Mark LL 全画幅单反相机','官方授权 正品行货',34600,33600,56,17,NULL),(40,'徕卡SL typ601全画幅专业数码相机','敬请选购',44300,44300,38,17,NULL),(41,'尼康D4单反相机','高端 大气 上档次',33800,33800,62,17,NULL),(42,'尼康D810套机 24-120镜头','原装正品 大陆行货',21999,20999,50,17,NULL);

#
# Structure for table "productimage"
#

CREATE TABLE `productimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productimage_product` (`pid`),
  CONSTRAINT `fk_productimage_product` FOREIGN KEY (`pid`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8;

#
# Data for table "productimage"
#

INSERT INTO `productimage` VALUES (1,1,'type_single'),(2,1,'type_single'),(3,1,'type_single'),(4,1,'type_single'),(5,1,'type_single'),(6,1,'type_detail'),(7,1,'type_detail'),(8,1,'type_detail'),(10,1,'type_detail'),(11,1,'type_detail'),(12,2,'type_single'),(13,2,'type_single'),(14,2,'type_single'),(15,2,'type_single'),(16,2,'type_single'),(17,2,'type_detail'),(18,2,'type_detail'),(19,2,'type_detail'),(20,2,'type_detail'),(21,2,'type_detail'),(22,3,'type_single'),(23,3,'type_single'),(24,3,'type_single'),(25,3,'type_single'),(26,3,'type_single'),(27,3,'type_detail'),(28,3,'type_detail'),(29,3,'type_detail'),(30,3,'type_detail'),(31,3,'type_detail'),(32,4,'type_single'),(33,4,'type_single'),(34,4,'type_single'),(35,4,'type_single'),(36,4,'type_single'),(37,4,'type_detail'),(38,4,'type_detail'),(39,4,'type_detail'),(40,4,'type_detail'),(41,4,'type_detail'),(42,5,'type_single'),(43,5,'type_single'),(44,5,'type_single'),(45,5,'type_single'),(46,5,'type_single'),(47,5,'type_detail'),(48,5,'type_detail'),(49,5,'type_detail'),(50,5,'type_detail'),(51,5,'type_detail'),(52,6,'type_single'),(53,6,'type_single'),(54,6,'type_single'),(55,6,'type_single'),(56,6,'type_single'),(57,6,'type_detail'),(58,6,'type_detail'),(59,6,'type_detail'),(60,6,'type_detail'),(61,6,'type_detail'),(62,7,'type_single'),(63,7,'type_single'),(64,7,'type_single'),(65,7,'type_single'),(66,7,'type_single'),(67,7,'type_detail'),(68,7,'type_detail'),(69,7,'type_detail'),(70,7,'type_detail'),(71,7,'type_detail'),(72,8,'type_single'),(73,8,'type_single'),(74,8,'type_single'),(75,8,'type_single'),(76,8,'type_single'),(78,8,'type_detail'),(79,8,'type_detail'),(80,8,'type_detail'),(81,8,'type_detail'),(82,8,'type_detail'),(83,9,'type_single'),(84,9,'type_single'),(85,9,'type_single'),(86,9,'type_single'),(87,9,'type_single'),(89,9,'type_detail'),(90,9,'type_detail'),(91,9,'type_detail'),(92,9,'type_detail'),(93,9,'type_detail'),(94,10,'type_single'),(95,10,'type_single'),(96,10,'type_single'),(97,10,'type_single'),(98,10,'type_single'),(99,10,'type_detail'),(100,10,'type_detail'),(101,10,'type_detail'),(102,10,'type_detail'),(103,10,'type_detail'),(104,11,'type_single'),(105,11,'type_single'),(106,11,'type_single'),(107,11,'type_single'),(108,11,'type_single'),(109,11,'type_detail'),(110,11,'type_detail'),(111,11,'type_detail'),(112,11,'type_detail'),(113,11,'type_detail'),(114,12,'type_single'),(115,12,'type_single'),(116,12,'type_single'),(117,12,'type_single'),(118,12,'type_single'),(119,12,'type_detail'),(120,12,'type_detail'),(121,12,'type_detail'),(122,12,'type_detail'),(123,12,'type_detail'),(124,13,'type_single'),(125,13,'type_single'),(126,13,'type_single'),(127,13,'type_single'),(128,13,'type_single'),(129,13,'type_detail'),(130,13,'type_detail'),(131,13,'type_detail'),(132,13,'type_detail'),(133,13,'type_detail'),(134,14,'type_single'),(135,14,'type_single'),(136,14,'type_single'),(137,14,'type_single'),(138,14,'type_single'),(139,14,'type_detail'),(140,14,'type_detail'),(141,14,'type_detail'),(142,14,'type_detail'),(143,14,'type_detail'),(144,15,'type_single'),(145,15,'type_single'),(146,15,'type_single'),(147,15,'type_single'),(148,15,'type_single'),(149,15,'type_detail'),(150,15,'type_detail'),(151,15,'type_detail'),(152,15,'type_detail'),(153,15,'type_detail'),(154,16,'type_single'),(155,16,'type_single'),(156,16,'type_single'),(157,16,'type_single'),(158,16,'type_single'),(159,16,'type_detail'),(160,16,'type_detail'),(161,16,'type_detail'),(162,16,'type_detail'),(163,16,'type_detail'),(164,17,'type_single'),(165,17,'type_single'),(166,17,'type_single'),(167,17,'type_single'),(168,17,'type_single'),(169,17,'type_detail'),(170,17,'type_detail'),(171,17,'type_detail'),(172,17,'type_detail'),(173,17,'type_detail'),(174,18,'type_single'),(175,18,'type_single'),(176,18,'type_single'),(177,18,'type_single'),(178,18,'type_single'),(179,18,'type_detail'),(180,18,'type_detail'),(181,18,'type_detail'),(182,18,'type_detail'),(183,18,'type_detail'),(184,19,'type_single'),(185,19,'type_single'),(186,19,'type_single'),(187,19,'type_single'),(188,19,'type_single'),(189,19,'type_detail'),(190,19,'type_detail'),(191,19,'type_detail'),(192,19,'type_detail'),(193,19,'type_detail'),(194,20,'type_single'),(195,20,'type_single'),(196,20,'type_single'),(197,20,'type_single'),(198,20,'type_single'),(199,20,'type_detail'),(200,20,'type_detail'),(201,20,'type_detail'),(202,20,'type_detail'),(203,20,'type_detail'),(204,21,'type_single'),(205,21,'type_single'),(206,21,'type_single'),(207,21,'type_single'),(208,21,'type_single'),(209,21,'type_detail'),(210,21,'type_detail'),(211,21,'type_detail'),(212,21,'type_detail'),(213,21,'type_detail'),(214,21,'type_detail'),(215,22,'type_single'),(216,22,'type_single'),(217,22,'type_single'),(218,22,'type_single'),(219,22,'type_single'),(220,22,'type_detail'),(221,22,'type_detail'),(222,22,'type_detail'),(223,22,'type_detail'),(224,22,'type_detail'),(225,23,'type_single'),(226,23,'type_single'),(227,23,'type_single'),(229,23,'type_single'),(233,23,'type_detail'),(234,23,'type_detail'),(235,23,'type_detail'),(236,23,'type_detail'),(237,23,'type_detail'),(238,24,'type_single'),(239,24,'type_single'),(240,24,'type_single'),(241,24,'type_single'),(242,24,'type_single'),(243,24,'type_detail'),(244,24,'type_detail'),(245,24,'type_detail'),(246,24,'type_detail'),(247,24,'type_detail'),(248,25,'type_single'),(249,25,'type_single'),(250,25,'type_single'),(251,25,'type_single'),(252,25,'type_single'),(253,25,'type_detail'),(254,25,'type_detail'),(255,25,'type_detail'),(256,25,'type_detail'),(257,25,'type_detail'),(258,26,'type_single'),(259,26,'type_single'),(260,26,'type_single'),(261,26,'type_single'),(262,26,'type_single'),(263,26,'type_detail'),(264,26,'type_detail'),(265,26,'type_detail'),(266,26,'type_detail'),(267,26,'type_detail'),(268,27,'type_single'),(269,27,'type_single'),(270,27,'type_single'),(271,27,'type_single'),(272,27,'type_single'),(273,27,'type_detail'),(274,27,'type_detail'),(275,27,'type_detail'),(276,27,'type_detail'),(277,27,'type_detail'),(278,28,'type_single'),(279,28,'type_single'),(280,28,'type_single'),(281,28,'type_single'),(282,28,'type_single'),(283,28,'type_detail'),(284,28,'type_detail'),(285,28,'type_detail'),(286,28,'type_detail'),(287,28,'type_detail'),(288,29,'type_single'),(289,29,'type_single'),(290,29,'type_single'),(291,29,'type_single'),(292,29,'type_single'),(293,29,'type_detail'),(294,29,'type_detail'),(295,29,'type_detail'),(296,29,'type_detail'),(297,29,'type_detail'),(298,30,'type_single'),(299,30,'type_single'),(300,30,'type_single'),(301,30,'type_single'),(302,30,'type_single'),(303,30,'type_detail'),(304,30,'type_detail'),(305,30,'type_detail'),(306,30,'type_detail'),(307,30,'type_detail'),(308,31,'type_single'),(309,31,'type_single'),(310,31,'type_single'),(311,31,'type_single'),(312,31,'type_single'),(313,31,'type_detail'),(314,31,'type_detail'),(315,31,'type_detail'),(316,31,'type_detail'),(317,31,'type_detail'),(318,32,'type_single'),(319,32,'type_single'),(320,32,'type_single'),(321,32,'type_single'),(322,32,'type_single'),(323,32,'type_detail'),(324,32,'type_detail'),(325,32,'type_detail'),(326,32,'type_detail'),(327,33,'type_single'),(328,33,'type_single'),(329,33,'type_single'),(330,33,'type_single'),(331,33,'type_detail'),(332,33,'type_detail'),(333,33,'type_detail'),(334,33,'type_detail'),(335,33,'type_single'),(336,34,'type_single'),(337,34,'type_single'),(338,34,'type_single'),(339,34,'type_single'),(340,34,'type_single'),(341,34,'type_detail'),(342,34,'type_detail'),(343,34,'type_detail'),(344,34,'type_detail'),(345,35,'type_single'),(346,35,'type_single'),(347,35,'type_single'),(348,35,'type_single'),(349,35,'type_single'),(350,35,'type_detail'),(351,35,'type_detail'),(352,35,'type_detail'),(353,35,'type_detail'),(354,35,'type_detail'),(355,36,'type_single'),(356,36,'type_single'),(357,36,'type_single'),(358,36,'type_single'),(359,36,'type_single'),(360,36,'type_detail'),(361,36,'type_detail'),(362,36,'type_detail'),(363,36,'type_detail'),(364,36,'type_detail'),(365,37,'type_single'),(366,37,'type_single'),(367,37,'type_single'),(368,37,'type_single'),(369,37,'type_single'),(370,37,'type_detail'),(371,37,'type_detail'),(372,37,'type_detail'),(373,37,'type_detail'),(374,37,'type_detail'),(375,38,'type_single'),(376,38,'type_single'),(377,38,'type_single'),(378,38,'type_single'),(379,38,'type_single'),(380,38,'type_detail'),(381,38,'type_detail'),(382,38,'type_detail'),(383,38,'type_detail'),(384,39,'type_single'),(385,39,'type_single'),(386,39,'type_single'),(387,39,'type_single'),(388,39,'type_detail'),(389,39,'type_detail'),(390,39,'type_detail'),(391,39,'type_detail'),(392,39,'type_detail'),(393,40,'type_single'),(394,40,'type_single'),(395,40,'type_single'),(396,40,'type_single'),(397,40,'type_single'),(398,40,'type_detail'),(399,40,'type_detail'),(400,40,'type_detail'),(401,40,'type_detail'),(402,40,'type_detail'),(403,41,'type_single'),(404,41,'type_single'),(405,41,'type_single'),(406,41,'type_single'),(407,41,'type_single'),(408,41,'type_detail'),(409,41,'type_detail'),(410,41,'type_detail'),(411,41,'type_detail'),(412,41,'type_detail'),(413,42,'type_single'),(414,42,'type_single'),(415,42,'type_single'),(416,42,'type_single'),(417,42,'type_single'),(418,42,'type_detail'),(419,42,'type_detail'),(420,42,'type_detail'),(421,42,'type_detail'),(422,42,'type_detail');

#
# Structure for table "property"
#

CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_property_category` (`cid`),
  CONSTRAINT `fk_property_category` FOREIGN KEY (`cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Data for table "property"
#

INSERT INTO `property` VALUES (1,2,'跑步机宽度'),(2,3,'重量'),(3,3,'材质'),(4,4,'型号'),(5,6,'功率'),(6,7,'容量'),(7,8,'材质'),(8,9,'颜色种类'),(9,10,'尺寸'),(10,10,'适应车型'),(11,11,'尺寸'),(12,11,'颜色'),(13,12,'尺寸'),(14,12,'颜色'),(15,13,'尺寸'),(16,13,'颜色'),(17,14,'颜色'),(18,15,'颜色'),(19,16,'颜色'),(20,17,'颜色'),(21,17,'套餐类型'),(22,1,'尺寸');

#
# Structure for table "propertyvalue"
#

CREATE TABLE `propertyvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `ptid` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_propertyvalue_property` (`ptid`),
  CONSTRAINT `fk_propertyvalue_property` FOREIGN KEY (`ptid`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

#
# Data for table "propertyvalue"
#

INSERT INTO `propertyvalue` VALUES (1,2,1,'55cm'),(2,3,3,'纯钢'),(3,3,2,'155'),(4,4,4,'s  m  l  xl  '),(5,5,5,'2000'),(6,6,5,'2200w'),(7,7,5,'1200'),(8,8,6,'500ml'),(9,9,6,'130'),(10,10,6,'120'),(11,11,7,'塑料'),(12,12,7,'牛津布 钢架'),(13,13,7,'磨砂塑料'),(14,14,8,'四色'),(15,15,8,'12色'),(16,16,8,'8色'),(17,19,10,'各类轿车'),(18,19,9,'s  m  '),(19,18,10,'全车型'),(20,18,9,'s  m  '),(21,17,10,'各类轿车'),(22,17,9,'s  m  l '),(23,20,12,'黑'),(24,20,11,'s  m  '),(25,21,12,'黑  蓝  灰'),(26,21,11,'s  m  l  xl  '),(27,22,12,'黑  蓝'),(28,22,11,' s  m  l  xl  xxl  '),(29,23,14,'白  蓝'),(30,23,13,'s  m  l  xl'),(31,24,14,'橙  白  黑'),(32,24,13,'s  m  l  xl  xxl  '),(33,25,14,'白  黑'),(34,25,13,'s  m  l  '),(35,26,16,'黑'),(36,26,15,'38  39  40  41  42  43'),(37,27,16,'灰  黑'),(38,27,15,'37   38  39  40  41  42'),(39,28,16,'棕  黑'),(40,28,15,'36  37  38  39  40  41  42'),(41,29,17,'黑'),(42,30,17,'黑'),(43,31,17,'蓝  紫  黑'),(44,34,18,'白'),(45,33,18,'白   灰'),(46,32,18,'白   灰'),(47,35,19,'黑  灰'),(48,37,19,'黑   蓝'),(49,36,19,'黑 灰  白'),(50,38,21,'官方标配'),(51,38,20,'黑'),(52,39,21,'官方标配'),(53,39,20,'黑'),(54,40,21,'官方标配'),(55,40,20,'黑   白'),(56,41,21,'官方标配'),(57,41,20,'黑'),(58,42,21,'官方标配'),(59,42,20,'黑'),(60,1,22,'S/M/L');

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'qch','qch');

#
# Structure for table "review"
#

CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(4000) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_review_product` (`pid`),
  KEY `fk_review_user` (`uid`),
  CONSTRAINT `fk_review_product` FOREIGN KEY (`pid`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_review_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "review"
#

INSERT INTO `review` VALUES (1,'很棒哦！',1,42,'2017-12-20 11:01:42');

#
# Structure for table "orderitem"
#

CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orderitem_user` (`uid`),
  KEY `fk_orderitem_product` (`pid`),
  CONSTRAINT `fk_orderitem_product` FOREIGN KEY (`pid`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_orderitem_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "orderitem"
#

INSERT INTO `orderitem` VALUES (1,42,2,1,1),(3,37,1,1,2),(4,37,3,1,1);

#
# Structure for table "order_"
#

CREATE TABLE `order_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderCode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `userMessage` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  `deliveryDate` datetime DEFAULT NULL,
  `confirmDate` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_user` (`uid`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "order_"
#

INSERT INTO `order_` VALUES (1,'20171219212218065699','','','','','','2017-12-19 21:22:18','2017-12-19 21:22:20',NULL,NULL,1,'delete'),(2,'201712201031076503677','四川大学江安校区','610000','秦川皓','123456789101','','2017-12-20 10:31:07','2017-12-20 10:31:09','2017-12-20 11:01:02','2017-12-20 11:01:20',1,'finish'),(3,'201712201241227504755','','','','','','2017-12-20 12:41:22','2017-12-20 12:41:40',NULL,NULL,1,'waitDelivery');
