-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: gamezapkdb
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cms_ads`
--

DROP TABLE IF EXISTS `cms_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_ads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adscode` varchar(45) NOT NULL,
  `name` text,
  `slot1` text,
  `slot2` text,
  `slot3` text,
  `slot4` text,
  `slot5` text,
  `slot6` text,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `appearheader` tinyint(1) NOT NULL DEFAULT '0',
  `islazy` tinyint(1) NOT NULL DEFAULT '0',
  `offads` tinyint(1) NOT NULL DEFAULT '0',
  `isheader` tinyint(1) NOT NULL DEFAULT '0',
  `isblock` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_ads_adscode` (`adscode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_ads`
--

LOCK TABLES `cms_ads` WRITE;
/*!40000 ALTER TABLE `cms_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apkchoices`
--

DROP TABLE IF EXISTS `cms_apkchoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apkchoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pids` text,
  `langid` varchar(10) DEFAULT 'es',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apkchoices`
--

LOCK TABLES `cms_apkchoices` WRITE;
/*!40000 ALTER TABLE `cms_apkchoices` DISABLE KEYS */;
INSERT INTO `cms_apkchoices` VALUES (1,'18,17','en','2022-09-27 03:39:57','2022-09-27 03:39:57');
/*!40000 ALTER TABLE `cms_apkchoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apkfaqs`
--

DROP TABLE IF EXISTS `cms_apkfaqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apkfaqs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `numsort` int DEFAULT '0',
  `langid` varchar(10) DEFAULT 'en',
  `isblock` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `postid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `cms_apkfaqs_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `cms_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apkfaqs`
--

LOCK TABLES `cms_apkfaqs` WRITE;
/*!40000 ALTER TABLE `cms_apkfaqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apkfaqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apklinks`
--

DROP TABLE IF EXISTS `cms_apklinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apklinks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `numsort` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `modid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apklinks`
--

LOCK TABLES `cms_apklinks` WRITE;
/*!40000 ALTER TABLE `cms_apklinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apklinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apkmeta`
--

DROP TABLE IF EXISTS `cms_apkmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apkmeta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playstore_url` varchar(255) DEFAULT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT '',
  `pricetext` varchar(255) DEFAULT NULL,
  `ccy` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `apk_size` varchar(255) DEFAULT NULL,
  `developer_name` varchar(255) DEFAULT NULL,
  `developer_slug` varchar(255) DEFAULT NULL,
  `url_android` varchar(255) DEFAULT NULL,
  `url_ios` varchar(255) DEFAULT NULL,
  `url_pc` varchar(255) DEFAULT NULL,
  `video_review_url` varchar(255) DEFAULT NULL,
  `header_image` varchar(255) DEFAULT NULL,
  `recent_changed_text` text,
  `mod_text` varchar(255) DEFAULT NULL,
  `off_update_version` tinyint(1) DEFAULT '0',
  `show_slide` tinyint(1) DEFAULT '0',
  `off_mod` tinyint(1) DEFAULT '0',
  `off_apk_text` tinyint(1) DEFAULT '0',
  `off_mod_text` tinyint(1) DEFAULT '0',
  `off_ads_redirect` tinyint(1) DEFAULT '0',
  `show_ads_pagedown2` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `postid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `cms_apkmeta_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `cms_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apkmeta`
--

LOCK TABLES `cms_apkmeta` WRITE;
/*!40000 ALTER TABLE `cms_apkmeta` DISABLE KEYS */;
INSERT INTO `cms_apkmeta` VALUES (2,'https://play.google.com/store/apps/details?id=valhalla.survival.craft.z','Frostborn: Action RPG','valhalla.survival.craft.z','Free','Free','USD','5.0','1.18.14.40830','477.8 MB','KEFIR','kefir',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-09-27 02:54:21','2022-09-27 02:54:42',18),(5,'https://play.google.com/store/apps/details?id=com.picsart.studio','Picsart Photo & Video Editor','com.picsart.studio','Free','Free','USD','4.3+','20.4.2','65.7 MB','PicsArt, Inc.','picsart-inc',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-09-27 04:01:40','2022-09-27 04:01:55',21),(6,'https://play.google.com/store/apps/details?id=com.gameloft.android.ANMP.GloftA9HM','Asphalt 9: Legends','com.gameloft.android.ANMP.GloftA9HM','Free','Free','USD','7.0','','0 B','Gameloft SE','gameloft-se',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-09-28 03:41:28','2022-09-28 03:41:47',22),(7,'https://play.google.com/store/apps/details?id=com.sega.sprint','Sonic Forces - Running Battle','com.sega.sprint','Free','Free','USD','5.1','4.10.0','242.1 MB','SEGA','sega',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-09-28 03:42:51','2022-09-28 03:43:06',23),(9,'https://play.google.com/store/apps/details?id=co.tamatem.hazalhadeedtatweef','┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','co.tamatem.hazalhadeedtatweef','Free','Free','USD','4.0','1.4.2','160.5 MB','Tamatem Inc.','tamatem-inc',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-09-28 12:10:56','2022-09-28 12:11:13',25),(10,'https://play.google.com/store/apps/details?id=com.skgames.trafficrider','Traffic Rider','com.skgames.trafficrider','Free','Free','USD','5.0','1.81','126.0 MB','Soner Kara','soner-kara',NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0,0,0,'2022-09-28 12:12:23','2022-09-28 12:12:35',26),(11,'https://play.google.com/store/apps/details?id=com.ss.android.ugc.trill','TikTok','com.ss.android.ugc.trill','Free','Free','USD','4.3+','26.3.4','163.9 MB','TikTok Pte. Ltd.','tiktok-pte-ltd',NULL,NULL,NULL,NULL,NULL,NULL,'',0,1,0,0,0,0,0,'2022-09-28 12:13:44','2022-09-28 12:18:20',27),(12,'https://play.google.com/store/apps/details?id=com.imangi.templerun2','Temple Run 2','com.imangi.templerun2','Free','Free','USD','4.4','1.93.0','118.4 MB','Imangi Studios','imangi-studios',NULL,NULL,NULL,NULL,NULL,NULL,'',0,1,0,0,0,0,0,'2022-09-28 13:25:28','2022-09-28 13:26:04',28);
/*!40000 ALTER TABLE `cms_apkmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apkmods`
--

DROP TABLE IF EXISTS `cms_apkmods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_apkmods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `showinsingle` tinyint(1) DEFAULT '0',
  `isoriginal` tinyint(1) DEFAULT '0',
  `numsort` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `apkid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apkmods`
--

LOCK TABLES `cms_apkmods` WRITE;
/*!40000 ALTER TABLE `cms_apkmods` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apkmods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_authtokens`
--

DROP TABLE IF EXISTS `cms_authtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_authtokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` text NOT NULL,
  `username` varchar(45) DEFAULT '',
  `hit` int DEFAULT '0',
  `isblock` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_authtokens`
--

LOCK TABLES `cms_authtokens` WRITE;
/*!40000 ALTER TABLE `cms_authtokens` DISABLE KEYS */;
INSERT INTO `cms_authtokens` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0MjQzMjAzLCJleHAiOjE2OTU3NzkyMDN9.j_OUlJ6PUkEiuUrnNKWRxzP6oNI-OcoZ0otnOFOlT5Y','admin',0,1,'2022-09-27 01:46:43','2022-09-29 02:44:11'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0MjQzMzYyLCJleHAiOjE2OTU3NzkzNjJ9.M81qLLL0iRfZyVoErJ05fGWxmJV1GYJinHCh2ylQBMg','admin',0,1,'2022-09-27 01:49:22','2022-09-29 02:44:11'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0MjQzNTIwLCJleHAiOjE2OTU3Nzk1MjB9.MYUUGrJ7BB4z964xr4i1B7hl62ZuTLMWHDSzLNaQZBA','admin',1,1,'2022-09-27 01:52:00','2022-09-29 02:44:11'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0MjQzODcwLCJleHAiOjE2OTU3Nzk4NzB9.8XbaWwqEz6uKvUXtLBsJOjVN3C9s_q_85YGylxxEj38','admin',54,1,'2022-09-27 01:57:50','2022-09-29 02:44:11'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0Mjc1MjYwLCJleHAiOjE2OTU4MTEyNjB9._7dMOj1o3QBesKBIMTv_mzWgj6o9jgY4TTc9Fg5JngM','admin',0,1,'2022-09-27 10:41:01','2022-09-29 02:44:11'),(6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0Mjc1Mzc4LCJleHAiOjE2OTU4MTEzNzh9.jYq0WbsUILJ2QHxKMrcmg-UofnzIqnjyp_DriIQV6GQ','admin',0,1,'2022-09-27 10:42:58','2022-09-29 02:44:11'),(7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0Mjc1NTE3LCJleHAiOjE2OTU4MTE1MTd9.GLaQPol1CqUXMwSX1fkqmkEwk7UX0mz1TqaX5WEC7as','admin',0,1,'2022-09-27 10:45:17','2022-09-29 02:44:11'),(8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0Mjc1NTcwLCJleHAiOjE2OTU4MTE1NzB9.D9r7KRennHx9202d_2Zqp1FodIGVOk8oCjmFVAjL22k','admin',0,1,'2022-09-27 10:46:11','2022-09-29 02:44:11'),(9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0MzM2NDY3LCJleHAiOjE2OTU4NzI0Njd9.XWAiZOeLlwpNzdBZMayKDOdNm5kf32ZwH80yJkVCAsE','admin',9,1,'2022-09-28 03:41:07','2022-09-29 02:44:11'),(10,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0MzY2MzIwLCJleHAiOjE2OTU5MDIzMjB9.YcOHYVLHje36af4ELwH-WHoImpyNPl-oiZcfm2MppEI','admin',32,1,'2022-09-28 11:58:40','2022-09-29 02:44:11'),(11,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjY0NDE5NDUxLCJleHAiOjE2OTU5NTU0NTF9.ii4HV6PLLMTiTPTg2DWnM4e9euPCZCWk2V7DEXvfARM','admin',0,0,'2022-09-29 02:44:11','2022-09-29 02:44:11');
/*!40000 ALTER TABLE `cms_authtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_categories`
--

DROP TABLE IF EXISTS `cms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentid` int DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `fullslug` text,
  `icon` text,
  `title` text NOT NULL,
  `description` text,
  `seotitle` text NOT NULL,
  `seodescription` text NOT NULL,
  `postcount` int DEFAULT '0',
  `hirarchylevel` int DEFAULT '1',
  `catetype` varchar(45) NOT NULL,
  `catestatus` varchar(20) NOT NULL DEFAULT 'pending',
  `adsid` int DEFAULT NULL,
  `adsslot1` text,
  `adsslot2` text,
  `adsslot3` text,
  `adsslot4` text,
  `offads` tinyint(1) DEFAULT '0',
  `offadsall` tinyint(1) DEFAULT '0',
  `islikemain` tinyint(1) DEFAULT '1',
  `allowindex` tinyint(1) DEFAULT '0',
  `allowfollow` tinyint(1) DEFAULT '0',
  `ratingcount` int DEFAULT '0',
  `ratingaverage` decimal(2,1) DEFAULT '0.0',
  `likecount` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_categories_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_categories`
--

LOCK TABLES `cms_categories` WRITE;
/*!40000 ALTER TABLE `cms_categories` DISABLE KEYS */;
INSERT INTO `cms_categories` VALUES (1,NULL,'uncategorized','uncategorized','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Uncategorized','','Uncategorized','',0,1,'uncategorized','published',NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0.0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44',1),(2,NULL,'games','games','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Games','','Games','',0,1,'category-apk','published',NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0.0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44',1),(3,NULL,'apps','apps','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Apps','','apps','',0,1,'category-apk','published',NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,0,0.0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44',1),(4,2,'racing','games/racing','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Racing',NULL,'Racing','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-09-27 01:59:00','2022-09-27 01:59:00',1),(5,NULL,'tamatem-inc','tamatem-inc','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Tamatem Inc.',NULL,'Developer title Tamatem Inc.','Developer description Tamatem Inc.',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-09-27 01:59:00','2022-09-27 01:59:00',1),(6,2,'role-playing','games/role-playing','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Role Playing',NULL,'Role Playing','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-09-27 02:54:20','2022-09-27 02:54:20',1),(7,NULL,'kefir','kefir','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','KEFIR',NULL,'Developer title KEFIR','Developer description KEFIR',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-09-27 02:54:20','2022-09-27 02:54:20',1),(8,3,'video-players-editors','apps/video-players-editors','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Video Players & Editors',NULL,'Video Players & Editors','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-09-27 03:59:32','2022-09-27 03:59:32',1),(9,NULL,'tiktok-pte-ltd','tiktok-pte-ltd','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','TikTok Pte. Ltd.',NULL,'Developer title TikTok Pte. Ltd.','Developer description TikTok Pte. Ltd.',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-09-27 03:59:56','2022-09-27 03:59:56',1),(10,3,'photography','apps/photography','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Photography',NULL,'Photography','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-09-27 04:01:39','2022-09-27 04:01:39',1),(11,NULL,'picsart-inc','picsart-inc','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','PicsArt, Inc.',NULL,'Developer title PicsArt, Inc.','Developer description PicsArt, Inc.',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-09-27 04:01:39','2022-09-27 04:01:39',1),(12,NULL,'gameloft-se','gameloft-se','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Gameloft SE',NULL,'Developer title Gameloft SE','Developer description Gameloft SE',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-09-28 03:41:28','2022-09-28 03:41:28',1),(13,2,'adventure','games/adventure','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Adventure',NULL,'Adventure','',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-09-28 03:42:50','2022-09-28 03:42:50',1),(14,NULL,'sega','sega','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','SEGA',NULL,'Developer title SEGA','Developer description SEGA',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-09-28 03:42:50','2022-09-28 03:42:50',1),(15,NULL,'soner-kara','soner-kara','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Soner Kara',NULL,'Developer title Soner Kara','Developer description Soner Kara',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-09-28 03:43:56','2022-09-28 03:43:56',1),(16,2,'action','games/action','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Action',NULL,'Download Temple Run 2 Mod APK 1.93.0 Latest Version For Free','Description Download Temple Run 2 Mod APK 1.93.0 Latest Version For Free',0,2,'category-apk','published',NULL,'','','','',0,0,1,1,1,0,0.0,0,'2022-09-28 13:25:27','2022-09-28 13:25:27',1),(17,NULL,'imangi-studios','imangi-studios','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"26.93\" height=\"26.92\" viewBox=\"0 0 25 26.924\">\n            <g transform=\"translate(0 0)\">\n              <path d=\"M24.608,206.733a.871.871,0,0,0-.078-.05l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.469,206.683A.99.99,0,0,0,.1,207.97q.021.043.047.084L12.5,215.1l12.35-7.042A1,1,0,0,0,24.608,206.733Z\" transform=\"translate(0 -194.067)\" fill=\"#ff0000\"/>\n              <path d=\"M24.906,309.472a.93.93,0,0,0-.362-.389l-1.774-1.029-9.838,5.61a.837.837,0,0,1-.836,0l-9.838-5.61L.483,309.083a1,1,0,0,0-.362,1.3.93.93,0,0,0,.362.389l11.607,6.731a.837.837,0,0,0,.846,0l11.607-6.731A1,1,0,0,0,24.906,309.472Z\" transform=\"translate(-0.014 -290.697)\" fill=\"#000\"/>\n              <path d=\"M24.608,6.905a.873.873,0,0,0-.078-.05L12.923.124a.837.837,0,0,0-.846,0L.469,6.855A.99.99,0,0,0,.1,8.142q.021.043.047.084L12.5,15.268,24.85,8.226A1,1,0,0,0,24.608,6.905Z\" transform=\"translate(0 -0.009)\" fill=\"#000\"/>\n            </g>\n          </svg>','Imangi Studios',NULL,'Developer title Imangi Studios','Developer description Imangi Studios',0,1,'developer-apk','published',NULL,'','','','',0,0,1,0,0,0,0.0,0,'2022-09-28 13:25:27','2022-09-28 13:25:27',1);
/*!40000 ALTER TABLE `cms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_catelangs`
--

DROP TABLE IF EXISTS `cms_catelangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_catelangs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cateid` int NOT NULL,
  `langid` varchar(10) NOT NULL,
  `title` text NOT NULL,
  `description` text,
  `seotitle` text NOT NULL,
  `seodescription` text NOT NULL,
  `offadslang` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_catelangs_cateid_langid` (`cateid`,`langid`),
  CONSTRAINT `cms_catelangs_ibfk_1` FOREIGN KEY (`cateid`) REFERENCES `cms_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_catelangs`
--

LOCK TABLES `cms_catelangs` WRITE;
/*!40000 ALTER TABLE `cms_catelangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_catelangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comments`
--

DROP TABLE IF EXISTS `cms_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `parentid` int DEFAULT NULL,
  `postid` int NOT NULL,
  `commentstatus` varchar(20) DEFAULT 'pending',
  `ipaddress` varchar(45) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `authorid` int DEFAULT NULL,
  `countchilds` int DEFAULT '0',
  `rating` int DEFAULT '0',
  `numlike` int DEFAULT '0',
  `viewed` tinyint(1) DEFAULT '0',
  `langid` varchar(10) DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `rootid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comments`
--

LOCK TABLES `cms_comments` WRITE;
/*!40000 ALTER TABLE `cms_comments` DISABLE KEYS */;
INSERT INTO `cms_comments` VALUES (1,'Test','test@gmail.com',NULL,'hay',NULL,17,'pending','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',NULL,0,0,0,0,'en','2022-09-28 01:45:01','2022-09-28 01:45:01',NULL);
/*!40000 ALTER TABLE `cms_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comments_likes`
--

DROP TABLE IF EXISTS `cms_comments_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_comments_likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `cmtid` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comments_likes`
--

LOCK TABLES `cms_comments_likes` WRITE;
/*!40000 ALTER TABLE `cms_comments_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comments_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cron_todos`
--

DROP TABLE IF EXISTS `cms_cron_todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_cron_todos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `title` text,
  `package_name` varchar(255) DEFAULT '',
  `oldversion` varchar(255) DEFAULT '',
  `oldsize` varchar(45) DEFAULT '',
  `scheduletime` datetime NOT NULL,
  `newversion` varchar(255) DEFAULT '',
  `newsize` varchar(45) DEFAULT '',
  `isdone` tinyint(1) DEFAULT '0',
  `iscantleech` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cron_todos`
--

LOCK TABLES `cms_cron_todos` WRITE;
/*!40000 ALTER TABLE `cms_cron_todos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_cron_todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_feedbacks`
--

DROP TABLE IF EXISTS `cms_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_feedbacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT '',
  `ipaddress` varchar(45) DEFAULT NULL,
  `useragent` text,
  `fbstatus` varchar(45) DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_feedbacks`
--

LOCK TABLES `cms_feedbacks` WRITE;
/*!40000 ALTER TABLE `cms_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_interactives`
--

DROP TABLE IF EXISTS `cms_interactives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_interactives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iatype` varchar(45) NOT NULL,
  `objtype` varchar(45) NOT NULL,
  `objectid` int DEFAULT NULL,
  `point` int DEFAULT '1',
  `ipaddress` varchar(45) DEFAULT NULL,
  `useragent` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_interactives`
--

LOCK TABLES `cms_interactives` WRITE;
/*!40000 ALTER TABLE `cms_interactives` DISABLE KEYS */;
INSERT INTO `cms_interactives` VALUES (1,'view','post',17,97,'','','2022-09-27 02:45:44','2022-09-28 02:37:24'),(2,'view','post',18,2,'','','2022-09-27 04:17:21','2022-09-27 04:17:27'),(3,'view','post',17,123,'','','2022-09-28 02:53:02','2022-09-28 12:10:07'),(4,'view','post',24,2,'','','2022-09-28 12:11:44','2022-09-28 12:11:46'),(5,'view','post',22,2,'','','2022-09-28 12:11:56','2022-09-28 12:11:59'),(6,'view','post',20,2,'','','2022-09-28 12:12:50','2022-09-28 12:12:52'),(7,'view','post',27,20,'','','2022-09-28 12:14:22','2022-09-28 12:37:42'),(8,'view','post',26,2,'','','2022-09-28 12:55:52','2022-09-28 12:55:55'),(9,'view','post',28,16,'','','2022-09-28 13:34:25','2022-09-29 05:25:26'),(10,'view','post',18,2,'','','2022-09-28 13:51:07','2022-09-28 13:51:10');
/*!40000 ALTER TABLE `cms_interactives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_languages`
--

DROP TABLE IF EXISTS `cms_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_languages` (
  `id` varchar(10) NOT NULL,
  `codelang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `isblock` tinyint(1) NOT NULL DEFAULT '0',
  `ismain` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_languages`
--

LOCK TABLES `cms_languages` WRITE;
/*!40000 ALTER TABLE `cms_languages` DISABLE KEYS */;
INSERT INTO `cms_languages` VALUES ('en','en','English','en',0,1,'2022-09-26 08:46:44','2022-09-26 08:46:44');
/*!40000 ALTER TABLE `cms_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_log_apk_files`
--

DROP TABLE IF EXISTS `cms_log_apk_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_log_apk_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `apklink` text,
  `apksize` varchar(45) DEFAULT '',
  `obblink` text,
  `obbsize` varchar(45) DEFAULT '',
  `apkversion` varchar(255) DEFAULT '',
  `isloaded` tinyint(1) DEFAULT '0',
  `isnolink` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_log_apk_files`
--

LOCK TABLES `cms_log_apk_files` WRITE;
/*!40000 ALTER TABLE `cms_log_apk_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_log_apk_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_log_update_versions`
--

DROP TABLE IF EXISTS `cms_log_update_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_log_update_versions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `langid` varchar(20) DEFAULT NULL,
  `postname` varchar(255) DEFAULT '',
  `oldversion` varchar(255) DEFAULT '',
  `newversion` varchar(255) DEFAULT '',
  `oldtitle` text,
  `newtitle` text,
  `logtype` varchar(45) DEFAULT '',
  `message` varchar(255) DEFAULT '',
  `notes` varchar(255) DEFAULT '',
  `approved` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_log_update_versions`
--

LOCK TABLES `cms_log_update_versions` WRITE;
/*!40000 ALTER TABLE `cms_log_update_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_log_update_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_medias`
--

DROP TABLE IF EXISTS `cms_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_medias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `seotitle` text,
  `description` text,
  `note` text,
  `filename` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `urlicon` varchar(255) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filesize` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `imgwidth` int DEFAULT '0',
  `imgheight` int DEFAULT '0',
  `childsizes` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_medias`
--

LOCK TABLES `cms_medias` WRITE;
/*!40000 ALTER TABLE `cms_medias` DISABLE KEYS */;
INSERT INTO `cms_medias` VALUES (1,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','','','thumbnail','shake-metal-thumbnail.jpg','http://localhost:8181/uploads/2022/9/shake-metal-thumbnail.jpg','http://localhost:8181/uploads/2022/9/shake-metal-thumbnail-150.jpg','image/jpeg','66 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-27 01:59:03','2022-09-27 01:59:03',1),(2,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','','','icon','shake-metal-icon.jpg','http://localhost:8181/uploads/2022/9/shake-metal-icon.jpg','http://localhost:8181/uploads/2022/9/shake-metal-icon-150.jpg','image/jpeg','269 Bytes','icon',512,512,'300x300,512x512','2022-09-27 01:59:05','2022-09-27 01:59:05',1),(3,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 0','','','screenshoot','shake-metal-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-0-screenshoot-150.jpg','image/jpeg','74 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 01:59:07','2022-09-27 01:59:07',1),(4,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 1','','','screenshoot','shake-metal-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-1-screenshoot-150.jpg','image/jpeg','47 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 01:59:07','2022-09-27 01:59:07',1),(5,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 2','','','screenshoot','shake-metal-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-2-screenshoot-150.jpg','image/jpeg','47 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 01:59:07','2022-09-27 01:59:07',1),(6,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 3','','','screenshoot','shake-metal-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-3-screenshoot-150.jpg','image/jpeg','44 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 01:59:08','2022-09-27 01:59:08',1),(7,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 4','','','screenshoot','shake-metal-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/shake-metal-4-screenshoot-150.jpg','image/jpeg','51 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 01:59:08','2022-09-27 01:59:08',1),(8,'Frostborn: Action RPG','','','thumbnail','frostborn-action-rpg-thumbnail.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-thumbnail.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-thumbnail-150.jpg','image/jpeg','67 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-27 02:54:21','2022-09-27 02:54:21',1),(9,'Frostborn: Action RPG','','','icon','frostborn-action-rpg-icon.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-icon.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-icon-150.jpg','image/jpeg','526 Bytes','icon',512,512,'300x300,512x512','2022-09-27 02:54:22','2022-09-27 02:54:22',1),(10,'Frostborn: Action RPG 0','','','screenshoot','frostborn-action-rpg-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-0-screenshoot-150.jpg','image/jpeg','68 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 02:54:23','2022-09-27 02:54:23',1),(11,'Frostborn: Action RPG 1','','','screenshoot','frostborn-action-rpg-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-1-screenshoot-150.jpg','image/jpeg','74 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 02:54:24','2022-09-27 02:54:24',1),(12,'Frostborn: Action RPG 3','','','screenshoot','frostborn-action-rpg-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-3-screenshoot-150.jpg','image/jpeg','84 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 02:54:24','2022-09-27 02:54:24',1),(13,'Frostborn: Action RPG 4','','','screenshoot','frostborn-action-rpg-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-4-screenshoot-150.jpg','image/jpeg','73 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 02:54:24','2022-09-27 02:54:24',1),(14,'Frostborn: Action RPG 2','','','screenshoot','frostborn-action-rpg-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/frostborn-action-rpg-2-screenshoot-150.jpg','image/jpeg','80 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-27 02:54:24','2022-09-27 02:54:24',1),(15,'TikTok','','','thumbnail','tiktok-thumbnail.jpg','http://localhost:8181/uploads/2022/9/tiktok-thumbnail.jpg','http://localhost:8181/uploads/2022/9/tiktok-thumbnail-150.jpg','image/jpeg','56 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-27 03:59:58','2022-09-27 03:59:58',1),(16,'TikTok','','','icon','tiktok-icon.jpg','http://localhost:8181/uploads/2022/9/tiktok-icon.jpg','http://localhost:8181/uploads/2022/9/tiktok-icon-150.jpg','image/jpeg','54 Bytes','icon',512,512,'300x300,512x512','2022-09-27 03:59:58','2022-09-27 03:59:58',1),(17,'TikTok 3','','','screenshoot','tiktok-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-3-screenshoot-150.jpg','image/jpeg','46 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:00','2022-09-27 04:00:00',1),(18,'TikTok 5','','','screenshoot','tiktok-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-5-screenshoot-150.jpg','image/jpeg','48 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:00','2022-09-27 04:00:00',1),(19,'TikTok 1','','','screenshoot','tiktok-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-1-screenshoot-150.jpg','image/jpeg','42 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:00','2022-09-27 04:00:00',1),(20,'TikTok 2','','','screenshoot','tiktok-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-2-screenshoot-150.jpg','image/jpeg','40 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:00','2022-09-27 04:00:00',1),(21,'TikTok 4','','','screenshoot','tiktok-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-4-screenshoot-150.jpg','image/jpeg','45 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:00','2022-09-27 04:00:00',1),(22,'TikTok 6','','','screenshoot','tiktok-6-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-6-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-6-screenshoot-150.jpg','image/jpeg','53 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:00','2022-09-27 04:00:00',1),(23,'TikTok 0','','','screenshoot','tiktok-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/tiktok-0-screenshoot-150.jpg','image/jpeg','35 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:01','2022-09-27 04:00:01',1),(24,'TikTok','','','thumbnail','tiktok-thumbnail-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-thumbnail-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-thumbnail-1-150.jpg','image/jpeg','56 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-27 04:00:32','2022-09-27 04:00:32',1),(25,'TikTok','','','icon','tiktok-icon-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-icon-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-icon-1-150.jpg','image/jpeg','54 Bytes','icon',512,512,'300x300,512x512','2022-09-27 04:00:32','2022-09-27 04:00:32',1),(26,'TikTok 0','','','screenshoot','tiktok-0-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-0-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-0-screenshoot-1-150.jpg','image/jpeg','35 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:33','2022-09-27 04:00:33',1),(27,'TikTok 2','','','screenshoot','tiktok-2-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-2-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-2-screenshoot-1-150.jpg','image/jpeg','40 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:33','2022-09-27 04:00:33',1),(28,'TikTok 5','','','screenshoot','tiktok-5-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-5-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-5-screenshoot-1-150.jpg','image/jpeg','48 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:33','2022-09-27 04:00:33',1),(29,'TikTok 1','','','screenshoot','tiktok-1-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-1-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-1-screenshoot-1-150.jpg','image/jpeg','42 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:34','2022-09-27 04:00:34',1),(30,'TikTok 3','','','screenshoot','tiktok-3-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-3-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-3-screenshoot-1-150.jpg','image/jpeg','46 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:34','2022-09-27 04:00:34',1),(31,'TikTok 4','','','screenshoot','tiktok-4-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-4-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-4-screenshoot-1-150.jpg','image/jpeg','45 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:34','2022-09-27 04:00:34',1),(32,'TikTok 6','','','screenshoot','tiktok-6-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-6-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/tiktok-6-screenshoot-1-150.jpg','image/jpeg','53 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:00:34','2022-09-27 04:00:34',1),(33,'Picsart Photo & Video Editor','','','thumbnail','picsart-photo-video-editor-thumbnail.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-thumbnail.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-thumbnail-150.jpg','image/jpeg','65 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-27 04:01:40','2022-09-27 04:01:40',1),(34,'Picsart Photo & Video Editor','','','icon','picsart-photo-video-editor-icon.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-icon.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-icon-150.jpg','image/jpeg','167 Bytes','icon',512,512,'300x300,512x512','2022-09-27 04:01:41','2022-09-27 04:01:41',1),(35,'Picsart Photo & Video Editor 0','','','screenshoot','picsart-photo-video-editor-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-0-screenshoot-150.jpg','image/jpeg','97 Bytes','screenshoot',512,410,'300x241,512x410','2022-09-27 04:01:42','2022-09-27 04:01:42',1),(36,'Picsart Photo & Video Editor 7','','','screenshoot','picsart-photo-video-editor-7-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-7-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-7-screenshoot-150.jpg','image/jpeg','47 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:01:42','2022-09-27 04:01:42',1),(37,'Picsart Photo & Video Editor 1','','','screenshoot','picsart-photo-video-editor-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-1-screenshoot-150.jpg','image/jpeg','73 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:01:42','2022-09-27 04:01:42',1),(38,'Picsart Photo & Video Editor 4','','','screenshoot','picsart-photo-video-editor-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-4-screenshoot-150.jpg','image/jpeg','56 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:01:42','2022-09-27 04:01:42',1),(39,'Picsart Photo & Video Editor 3','','','screenshoot','picsart-photo-video-editor-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-3-screenshoot-150.jpg','image/jpeg','73 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:01:42','2022-09-27 04:01:42',1),(40,'Picsart Photo & Video Editor 5','','','screenshoot','picsart-photo-video-editor-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-5-screenshoot-150.jpg','image/jpeg','43 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:01:42','2022-09-27 04:01:42',1),(41,'Picsart Photo & Video Editor 2','','','screenshoot','picsart-photo-video-editor-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-2-screenshoot-150.jpg','image/jpeg','62 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:01:42','2022-09-27 04:01:42',1),(42,'Picsart Photo & Video Editor 6','','','screenshoot','picsart-photo-video-editor-6-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-6-screenshoot.jpg','http://localhost:8181/uploads/2022/9/picsart-photo-video-editor-6-screenshoot-150.jpg','image/jpeg','54 Bytes','screenshoot',288,512,'288x512','2022-09-27 04:01:43','2022-09-27 04:01:43',1),(43,'Asphalt 9: Legends','','','thumbnail','asphalt-9-legends-thumbnail.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-thumbnail.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-thumbnail-150.jpg','image/jpeg','104 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-28 03:41:29','2022-09-28 03:41:29',1),(44,'Asphalt 9: Legends','','','icon','asphalt-9-legends-icon.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-icon.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-icon-150.jpg','image/jpeg','168 Bytes','icon',512,512,'300x300,512x512','2022-09-28 03:41:31','2022-09-28 03:41:31',1),(45,'Asphalt 9: Legends 2','','','screenshoot','asphalt-9-legends-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-2-screenshoot-150.jpg','image/jpeg','83 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:41:32','2022-09-28 03:41:32',1),(46,'Asphalt 9: Legends 0','','','screenshoot','asphalt-9-legends-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-0-screenshoot-150.jpg','image/jpeg','63 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:41:32','2022-09-28 03:41:32',1),(47,'Asphalt 9: Legends 3','','','screenshoot','asphalt-9-legends-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-3-screenshoot-150.jpg','image/jpeg','66 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:41:32','2022-09-28 03:41:32',1),(48,'Asphalt 9: Legends 1','','','screenshoot','asphalt-9-legends-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-1-screenshoot-150.jpg','image/jpeg','47 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:41:32','2022-09-28 03:41:32',1),(49,'Asphalt 9: Legends 6','','','screenshoot','asphalt-9-legends-6-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-6-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-6-screenshoot-150.jpg','image/jpeg','66 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:41:32','2022-09-28 03:41:32',1),(50,'Asphalt 9: Legends 7','','','screenshoot','asphalt-9-legends-7-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-7-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-7-screenshoot-150.jpg','image/jpeg','60 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:41:32','2022-09-28 03:41:32',1),(51,'Asphalt 9: Legends 5','','','screenshoot','asphalt-9-legends-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-5-screenshoot-150.jpg','image/jpeg','70 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:41:32','2022-09-28 03:41:32',1),(52,'Asphalt 9: Legends 4','','','screenshoot','asphalt-9-legends-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/asphalt-9-legends-4-screenshoot-150.jpg','image/jpeg','81 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:41:33','2022-09-28 03:41:33',1),(53,'Sonic Forces - Running Battle','','','thumbnail','sonic-forces-running-battle-thumbnail.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-thumbnail.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-thumbnail-150.jpg','image/jpeg','61 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-28 03:42:51','2022-09-28 03:42:51',1),(54,'Sonic Forces - Running Battle','','','icon','sonic-forces-running-battle-icon.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-icon.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-icon-150.jpg','image/jpeg','343 Bytes','icon',512,512,'300x300,512x512','2022-09-28 03:42:52','2022-09-28 03:42:52',1),(55,'Sonic Forces - Running Battle 7','','','screenshoot','sonic-forces-running-battle-7-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-7-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-7-screenshoot-150.jpg','image/jpeg','82 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:42:53','2022-09-28 03:42:53',1),(56,'Sonic Forces - Running Battle 5','','','screenshoot','sonic-forces-running-battle-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-5-screenshoot-150.jpg','image/jpeg','83 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:42:53','2022-09-28 03:42:53',1),(57,'Sonic Forces - Running Battle 3','','','screenshoot','sonic-forces-running-battle-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-3-screenshoot-150.jpg','image/jpeg','195 Bytes','screenshoot',307,512,'300x501,307x512','2022-09-28 03:42:53','2022-09-28 03:42:53',1),(58,'Sonic Forces - Running Battle 2','','','screenshoot','sonic-forces-running-battle-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-2-screenshoot-150.jpg','image/jpeg','244 Bytes','screenshoot',307,512,'300x501,307x512','2022-09-28 03:42:54','2022-09-28 03:42:54',1),(59,'Sonic Forces - Running Battle 4','','','screenshoot','sonic-forces-running-battle-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-4-screenshoot-150.jpg','image/jpeg','53 Bytes','screenshoot',307,512,'300x501,307x512','2022-09-28 03:42:54','2022-09-28 03:42:54',1),(60,'Sonic Forces - Running Battle 0','','','screenshoot','sonic-forces-running-battle-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-0-screenshoot-150.jpg','image/jpeg','340 Bytes','screenshoot',307,512,'300x501,307x512','2022-09-28 03:42:54','2022-09-28 03:42:54',1),(61,'Sonic Forces - Running Battle 6','','','screenshoot','sonic-forces-running-battle-6-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-6-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-6-screenshoot-150.jpg','image/jpeg','80 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:42:54','2022-09-28 03:42:54',1),(62,'Sonic Forces - Running Battle 1','','','screenshoot','sonic-forces-running-battle-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/sonic-forces-running-battle-1-screenshoot-150.jpg','image/jpeg','311 Bytes','screenshoot',307,512,'300x501,307x512','2022-09-28 03:42:54','2022-09-28 03:42:54',1),(63,'Traffic Rider','','','thumbnail','traffic-rider-thumbnail.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-thumbnail.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-thumbnail-150.jpg','image/jpeg','217 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-28 03:43:58','2022-09-28 03:43:58',1),(64,'Traffic Rider','','','icon','traffic-rider-icon.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-icon.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-icon-150.jpg','image/jpeg','480 Bytes','icon',512,512,'300x300,512x512','2022-09-28 03:43:59','2022-09-28 03:43:59',1),(65,'Traffic Rider 0','','','screenshoot','traffic-rider-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-0-screenshoot-150.jpg','image/jpeg','54 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:44:00','2022-09-28 03:44:00',1),(66,'Traffic Rider 3','','','screenshoot','traffic-rider-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-3-screenshoot-150.jpg','image/jpeg','33 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:44:00','2022-09-28 03:44:00',1),(67,'Traffic Rider 5','','','screenshoot','traffic-rider-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-5-screenshoot-150.jpg','image/jpeg','52 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:44:00','2022-09-28 03:44:00',1),(68,'Traffic Rider 1','','','screenshoot','traffic-rider-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-1-screenshoot-150.jpg','image/jpeg','59 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:44:00','2022-09-28 03:44:00',1),(69,'Traffic Rider 4','','','screenshoot','traffic-rider-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-4-screenshoot-150.jpg','image/jpeg','53 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:44:00','2022-09-28 03:44:00',1),(70,'Traffic Rider 2','','','screenshoot','traffic-rider-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-2-screenshoot-150.jpg','image/jpeg','45 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 03:44:01','2022-09-28 03:44:01',1),(71,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','','','thumbnail','shake-metal-thumbnail-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-thumbnail-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-thumbnail-1-150.jpg','image/jpeg','66 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-28 12:10:57','2022-09-28 12:10:57',1),(72,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','','','icon','shake-metal-icon-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-icon-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-icon-1-150.jpg','image/jpeg','269 Bytes','icon',512,512,'300x300,512x512','2022-09-28 12:10:58','2022-09-28 12:10:58',1),(73,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 1','','','screenshoot','shake-metal-1-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-1-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-1-screenshoot-1-150.jpg','image/jpeg','47 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:10:59','2022-09-28 12:10:59',1),(74,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 4','','','screenshoot','shake-metal-4-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-4-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-4-screenshoot-1-150.jpg','image/jpeg','51 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:10:59','2022-09-28 12:10:59',1),(75,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 2','','','screenshoot','shake-metal-2-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-2-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-2-screenshoot-1-150.jpg','image/jpeg','47 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:10:59','2022-09-28 12:10:59',1),(76,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 3','','','screenshoot','shake-metal-3-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-3-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-3-screenshoot-1-150.jpg','image/jpeg','44 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:11:00','2022-09-28 12:11:00',1),(77,'┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 0','','','screenshoot','shake-metal-0-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-0-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/shake-metal-0-screenshoot-1-150.jpg','image/jpeg','74 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:11:00','2022-09-28 12:11:00',1),(78,'Traffic Rider','','','thumbnail','traffic-rider-thumbnail-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-thumbnail-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-thumbnail-1-150.jpg','image/jpeg','217 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-28 12:12:24','2022-09-28 12:12:24',1),(79,'Traffic Rider','','','icon','traffic-rider-icon-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-icon-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-icon-1-150.jpg','image/jpeg','480 Bytes','icon',512,512,'300x300,512x512','2022-09-28 12:12:25','2022-09-28 12:12:25',1),(80,'Traffic Rider 3','','','screenshoot','traffic-rider-3-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-3-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-3-screenshoot-1-150.jpg','image/jpeg','33 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:12:26','2022-09-28 12:12:26',1),(81,'Traffic Rider 0','','','screenshoot','traffic-rider-0-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-0-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-0-screenshoot-1-150.jpg','image/jpeg','54 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:12:26','2022-09-28 12:12:26',1),(82,'Traffic Rider 2','','','screenshoot','traffic-rider-2-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-2-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-2-screenshoot-1-150.jpg','image/jpeg','45 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:12:26','2022-09-28 12:12:26',1),(83,'Traffic Rider 4','','','screenshoot','traffic-rider-4-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-4-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-4-screenshoot-1-150.jpg','image/jpeg','53 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:12:26','2022-09-28 12:12:26',1),(84,'Traffic Rider 5','','','screenshoot','traffic-rider-5-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-5-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-5-screenshoot-1-150.jpg','image/jpeg','52 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:12:26','2022-09-28 12:12:26',1),(85,'Traffic Rider 1','','','screenshoot','traffic-rider-1-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-1-screenshoot-1.jpg','http://localhost:8181/uploads/2022/9/traffic-rider-1-screenshoot-1-150.jpg','image/jpeg','59 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 12:12:26','2022-09-28 12:12:26',1),(86,'TikTok','','','thumbnail','tiktok-thumbnail-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-thumbnail-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-thumbnail-2-150.jpg','image/jpeg','56 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-28 12:13:45','2022-09-28 12:13:45',1),(87,'TikTok','','','icon','tiktok-icon-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-icon-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-icon-2-150.jpg','image/jpeg','54 Bytes','icon',512,512,'300x300,512x512','2022-09-28 12:13:45','2022-09-28 12:13:45',1),(88,'TikTok 3','','','screenshoot','tiktok-3-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-3-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-3-screenshoot-2-150.jpg','image/jpeg','46 Bytes','screenshoot',288,512,'288x512','2022-09-28 12:13:46','2022-09-28 12:13:46',1),(89,'TikTok 5','','','screenshoot','tiktok-5-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-5-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-5-screenshoot-2-150.jpg','image/jpeg','48 Bytes','screenshoot',288,512,'288x512','2022-09-28 12:13:46','2022-09-28 12:13:46',1),(90,'TikTok 2','','','screenshoot','tiktok-2-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-2-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-2-screenshoot-2-150.jpg','image/jpeg','40 Bytes','screenshoot',288,512,'288x512','2022-09-28 12:13:46','2022-09-28 12:13:46',1),(91,'TikTok 4','','','screenshoot','tiktok-4-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-4-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-4-screenshoot-2-150.jpg','image/jpeg','45 Bytes','screenshoot',288,512,'288x512','2022-09-28 12:13:46','2022-09-28 12:13:46',1),(92,'TikTok 6','','','screenshoot','tiktok-6-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-6-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-6-screenshoot-2-150.jpg','image/jpeg','53 Bytes','screenshoot',288,512,'288x512','2022-09-28 12:13:46','2022-09-28 12:13:46',1),(93,'TikTok 1','','','screenshoot','tiktok-1-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-1-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-1-screenshoot-2-150.jpg','image/jpeg','42 Bytes','screenshoot',288,512,'288x512','2022-09-28 12:13:46','2022-09-28 12:13:46',1),(94,'TikTok 0','','','screenshoot','tiktok-0-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-0-screenshoot-2.jpg','http://localhost:8181/uploads/2022/9/tiktok-0-screenshoot-2-150.jpg','image/jpeg','35 Bytes','screenshoot',288,512,'288x512','2022-09-28 12:13:46','2022-09-28 12:13:46',1),(95,'Temple Run 2','','','thumbnail','temple-run-2-thumbnail.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-thumbnail.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-thumbnail-150.jpg','image/jpeg','225 Bytes','thumbnail',512,250,'300x147,512x250','2022-09-28 13:25:29','2022-09-28 13:25:29',1),(96,'Temple Run 2','','','icon','temple-run-2-icon.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-icon.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-icon-150.jpg','image/jpeg','344 Bytes','icon',512,512,'300x300,512x512','2022-09-28 13:25:30','2022-09-28 13:25:30',1),(97,'Temple Run 2 5','','','screenshoot','temple-run-2-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-5-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-5-screenshoot-150.jpg','image/jpeg','85 Bytes','screenshoot',512,288,'300x169,512x288','2022-09-28 13:25:31','2022-09-28 13:25:31',1),(98,'Temple Run 2 2','','','screenshoot','temple-run-2-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-2-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-2-screenshoot-150.jpg','image/jpeg','298 Bytes','screenshoot',288,512,'288x512','2022-09-28 13:25:32','2022-09-28 13:25:32',1),(99,'Temple Run 2 1','','','screenshoot','temple-run-2-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-1-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-1-screenshoot-150.jpg','image/jpeg','328 Bytes','screenshoot',288,512,'288x512','2022-09-28 13:25:32','2022-09-28 13:25:32',1),(100,'Temple Run 2 3','','','screenshoot','temple-run-2-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-3-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-3-screenshoot-150.jpg','image/jpeg','329 Bytes','screenshoot',288,512,'288x512','2022-09-28 13:25:32','2022-09-28 13:25:32',1),(101,'Temple Run 2 4','','','screenshoot','temple-run-2-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-4-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-4-screenshoot-150.jpg','image/jpeg','301 Bytes','screenshoot',288,512,'288x512','2022-09-28 13:25:32','2022-09-28 13:25:32',1),(102,'Temple Run 2 0','','','screenshoot','temple-run-2-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-0-screenshoot.jpg','http://localhost:8181/uploads/2022/9/temple-run-2-0-screenshoot-150.jpg','image/jpeg','293 Bytes','screenshoot',288,512,'288x512','2022-09-28 13:25:32','2022-09-28 13:25:32',1);
/*!40000 ALTER TABLE `cms_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menuitem_langs`
--

DROP TABLE IF EXISTS `cms_menuitem_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menuitem_langs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `langid` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mitemid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mitemid` (`mitemid`),
  CONSTRAINT `cms_menuitem_langs_ibfk_1` FOREIGN KEY (`mitemid`) REFERENCES `cms_menuitems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menuitem_langs`
--

LOCK TABLES `cms_menuitem_langs` WRITE;
/*!40000 ALTER TABLE `cms_menuitem_langs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_menuitem_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menuitems`
--

DROP TABLE IF EXISTS `cms_menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menuitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentid` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `objectid` int DEFAULT '0',
  `objectslug` text,
  `objecttitle` text,
  `alllanguage` tinyint(1) NOT NULL DEFAULT '1',
  `objectlangs` text,
  `numsort` int DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `menuid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menuid` (`menuid`),
  CONSTRAINT `cms_menuitems_ibfk_1` FOREIGN KEY (`menuid`) REFERENCES `cms_menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menuitems`
--

LOCK TABLES `cms_menuitems` WRITE;
/*!40000 ALTER TABLE `cms_menuitems` DISABLE KEYS */;
INSERT INTO `cms_menuitems` VALUES (1,NULL,'Home','home',0,NULL,'Home',1,'en',1,'2022-09-28 12:31:25','2022-09-28 12:31:25','menu-header'),(2,NULL,'About','post',13,'about','About',1,'en',2,'2022-09-28 12:31:25','2022-09-28 12:31:25','menu-header'),(3,NULL,'Privacy policy','post',14,'privacy-policy','Privacy policy',1,'en',3,'2022-09-28 12:31:25','2022-09-28 12:31:25','menu-header'),(4,NULL,'Contact','post',15,'contact','Contact',1,'en',4,'2022-09-28 12:31:25','2022-09-28 12:31:25','menu-header');
/*!40000 ALTER TABLE `cms_menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menus` (
  `id` varchar(45) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES ('menu-footer','Menu Footer','2022-09-26 08:46:44','2022-09-26 08:46:44'),('menu-header','Menu Header','2022-09-26 08:46:44','2022-09-26 08:46:44');
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_options`
--

DROP TABLE IF EXISTS `cms_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metakey` varchar(45) NOT NULL,
  `metavalue` text,
  `fieldlabel` text,
  `description` text,
  `inputtype` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_options`
--

LOCK TABLES `cms_options` WRITE;
/*!40000 ALTER TABLE `cms_options` DISABLE KEYS */;
INSERT INTO `cms_options` VALUES (1,'app_title_template','Download [appTitle] Mod APK [appVersion] Latest Version For Free|','Apk title random','Tß║úi [appTitle] miß╗àn ph├¡','textarea','2022-09-26 08:46:44','2022-09-28 12:09:56'),(2,'app_description_template','Description Download [appTitle] Mod APK [appVersion] Latest Version For Free|','Apk description random','Tß║úi [appTitle] miß╗àn ph├¡','textarea','2022-09-26 08:46:44','2022-09-28 12:09:56'),(3,'app_content_template','<h1>Tß║úi game [appTitle]</h1> <p>Nß╗Öi dung game 1</p> [screenshot]<p>Nß╗Öi dung game 2</p>|','Apk content random','<h1>T├¬n game</h1>\r<p>Nß╗Öi dung game 1</p>\r[screenshot]\r<p>Nß╗Öi dung game 2</p>','textarea','2022-09-26 08:46:44','2022-09-28 12:09:57'),(4,'cate_title_template','Category title [appCategory]|','Category title random','Category title [appCategory]','textarea','2022-09-26 08:46:44','2022-09-28 12:09:57'),(5,'cate_description_template','Category Description [appCategory]|','Category description random','Category description [appTitle]','textarea','2022-09-26 08:46:44','2022-09-28 12:09:57'),(6,'dev_title_template','Developer title [appDeveloper]|','Developer title random','Nh├á ph├ít triß╗ân [appTitle]','textarea','2022-09-26 08:46:44','2022-09-28 12:09:57'),(7,'dev_description_template','Developer description [appDeveloper]|','Developer description random','Nh├á ph├ít triß╗ân [appTitle]','textarea','2022-09-26 08:46:44','2022-09-28 12:09:57'),(8,'off_optimze_image_upload','false','Off optimize image upload',NULL,'checkbox','2022-09-26 08:46:44','2022-09-28 12:09:57'),(9,'apps_title_template','Download [appTitle] Mod APK [appVersion] Latest Version For Free|','Apps Title Random',NULL,'textarea','2022-09-28 12:07:35','2022-09-28 12:09:57'),(10,'apps_description_template','Description Download [appTitle] Mod APK [appVersion] Latest Version For Free|','Apps  Description Random',NULL,'textarea','2022-09-28 12:07:49','2022-09-28 12:09:57'),(11,'apps_content_template','<h1>Tß║úi game [appTitle]</h1> <p>Nß╗Öi dung game 1</p> [screenshot]<p>Nß╗Öi dung game 2</p>|','Apps Content Random',NULL,'textarea','2022-09-28 12:08:00','2022-09-28 12:09:57'),(12,'games_title_template','Download [appTitle] Mod APK [appVersion] Latest Version For Free|','Games Title Random',NULL,'textarea','2022-09-28 12:08:08','2022-09-28 12:09:57'),(13,'games_description_template','Description Download [appTitle] Mod APK [appVersion] Latest Version For Free|','Games Description Random',NULL,'textarea','2022-09-28 12:08:20','2022-09-28 12:09:57'),(14,'games_content_template','<h1>Tß║úi game [appTitle]</h1> <p>Nß╗Öi dung game 1</p> [screenshot]<p>Nß╗Öi dung game 2</p>|','Games Content Random',NULL,'textarea','2022-09-28 12:08:28','2022-09-28 12:09:58');
/*!40000 ALTER TABLE `cms_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_post_cate_types`
--

DROP TABLE IF EXISTS `cms_post_cate_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_post_cate_types` (
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ptypeid` varchar(45) NOT NULL,
  `ctypeid` varchar(45) NOT NULL,
  PRIMARY KEY (`ptypeid`,`ctypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_post_cate_types`
--

LOCK TABLES `cms_post_cate_types` WRITE;
/*!40000 ALTER TABLE `cms_post_cate_types` DISABLE KEYS */;
INSERT INTO `cms_post_cate_types` VALUES ('2022-09-26 08:46:45','2022-09-26 08:46:45','post-apk','category-apk'),('2022-09-26 08:46:45','2022-09-26 08:46:45','post-apk','developer-apk'),('2022-09-26 08:46:45','2022-09-26 08:46:45','post-apk','tags'),('2022-09-26 08:46:45','2022-09-26 08:46:45','post-blog','category-blog'),('2022-09-26 08:46:45','2022-09-26 08:46:45','post-blog','tags');
/*!40000 ALTER TABLE `cms_post_cate_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_post_cates`
--

DROP TABLE IF EXISTS `cms_post_cates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_post_cates` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `postid` int NOT NULL,
  `cateid` int NOT NULL,
  PRIMARY KEY (`postid`,`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_post_cates`
--

LOCK TABLES `cms_post_cates` WRITE;
/*!40000 ALTER TABLE `cms_post_cates` DISABLE KEYS */;
INSERT INTO `cms_post_cates` VALUES ('2022-09-27 01:59:08','2022-09-27 01:59:08',17,4),('2022-09-27 01:59:08','2022-09-27 01:59:08',17,5),('2022-09-27 02:54:24','2022-09-27 02:54:24',18,6),('2022-09-27 02:54:24','2022-09-27 02:54:24',18,7),('2022-09-27 04:00:01','2022-09-27 04:00:01',19,8),('2022-09-27 04:00:01','2022-09-27 04:00:01',19,9),('2022-09-27 04:00:34','2022-09-27 04:00:34',20,8),('2022-09-27 04:00:34','2022-09-27 04:00:34',20,9),('2022-09-27 04:01:43','2022-09-27 04:01:43',21,10),('2022-09-27 04:01:43','2022-09-27 04:01:43',21,11),('2022-09-28 03:41:33','2022-09-28 03:41:33',22,4),('2022-09-28 03:41:33','2022-09-28 03:41:33',22,12),('2022-09-28 03:42:55','2022-09-28 03:42:55',23,13),('2022-09-28 03:42:55','2022-09-28 03:42:55',23,14),('2022-09-28 03:44:01','2022-09-28 03:44:01',24,4),('2022-09-28 03:44:01','2022-09-28 03:44:01',24,15),('2022-09-28 12:11:00','2022-09-28 12:11:00',25,4),('2022-09-28 12:11:00','2022-09-28 12:11:00',25,5),('2022-09-28 12:12:27','2022-09-28 12:12:27',26,4),('2022-09-28 12:12:27','2022-09-28 12:12:27',26,15),('2022-09-28 12:13:47','2022-09-28 12:13:47',27,8),('2022-09-28 12:13:47','2022-09-28 12:13:47',27,9),('2022-09-28 13:25:32','2022-09-28 13:25:32',28,16),('2022-09-28 13:25:32','2022-09-28 13:25:32',28,17);
/*!40000 ALTER TABLE `cms_post_cates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_post_screenshoots`
--

DROP TABLE IF EXISTS `cms_post_screenshoots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_post_screenshoots` (
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mediaid` int NOT NULL,
  `postid` int NOT NULL,
  PRIMARY KEY (`mediaid`,`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_post_screenshoots`
--

LOCK TABLES `cms_post_screenshoots` WRITE;
/*!40000 ALTER TABLE `cms_post_screenshoots` DISABLE KEYS */;
INSERT INTO `cms_post_screenshoots` VALUES ('2022-09-27 01:59:08','2022-09-27 01:59:08',3,17),('2022-09-27 01:59:08','2022-09-27 01:59:08',4,17),('2022-09-27 01:59:08','2022-09-27 01:59:08',5,17),('2022-09-27 01:59:08','2022-09-27 01:59:08',6,17),('2022-09-27 01:59:08','2022-09-27 01:59:08',7,17),('2022-09-27 02:54:24','2022-09-27 02:54:24',10,18),('2022-09-27 02:54:24','2022-09-27 02:54:24',11,18),('2022-09-27 02:54:24','2022-09-27 02:54:24',12,18),('2022-09-27 02:54:24','2022-09-27 02:54:24',13,18),('2022-09-27 02:54:24','2022-09-27 02:54:24',14,18),('2022-09-27 04:00:01','2022-09-27 04:00:01',17,19),('2022-09-27 04:00:01','2022-09-27 04:00:01',18,19),('2022-09-27 04:00:01','2022-09-27 04:00:01',19,19),('2022-09-27 04:00:01','2022-09-27 04:00:01',20,19),('2022-09-27 04:00:01','2022-09-27 04:00:01',21,19),('2022-09-27 04:00:01','2022-09-27 04:00:01',22,19),('2022-09-27 04:00:01','2022-09-27 04:00:01',23,19),('2022-09-27 04:00:34','2022-09-27 04:00:34',26,20),('2022-09-27 04:00:34','2022-09-27 04:00:34',27,20),('2022-09-27 04:00:34','2022-09-27 04:00:34',28,20),('2022-09-27 04:00:34','2022-09-27 04:00:34',29,20),('2022-09-27 04:00:34','2022-09-27 04:00:34',30,20),('2022-09-27 04:00:34','2022-09-27 04:00:34',31,20),('2022-09-27 04:00:34','2022-09-27 04:00:34',32,20),('2022-09-27 04:01:43','2022-09-27 04:01:43',35,21),('2022-09-27 04:01:43','2022-09-27 04:01:43',36,21),('2022-09-27 04:01:43','2022-09-27 04:01:43',37,21),('2022-09-27 04:01:43','2022-09-27 04:01:43',38,21),('2022-09-27 04:01:43','2022-09-27 04:01:43',39,21),('2022-09-27 04:01:43','2022-09-27 04:01:43',40,21),('2022-09-27 04:01:43','2022-09-27 04:01:43',41,21),('2022-09-27 04:01:43','2022-09-27 04:01:43',42,21),('2022-09-28 03:41:33','2022-09-28 03:41:33',45,22),('2022-09-28 03:41:33','2022-09-28 03:41:33',46,22),('2022-09-28 03:41:33','2022-09-28 03:41:33',47,22),('2022-09-28 03:41:33','2022-09-28 03:41:33',48,22),('2022-09-28 03:41:33','2022-09-28 03:41:33',49,22),('2022-09-28 03:41:33','2022-09-28 03:41:33',50,22),('2022-09-28 03:41:33','2022-09-28 03:41:33',51,22),('2022-09-28 03:41:33','2022-09-28 03:41:33',52,22),('2022-09-28 03:42:55','2022-09-28 03:42:55',55,23),('2022-09-28 03:42:55','2022-09-28 03:42:55',56,23),('2022-09-28 03:42:55','2022-09-28 03:42:55',57,23),('2022-09-28 03:42:55','2022-09-28 03:42:55',58,23),('2022-09-28 03:42:55','2022-09-28 03:42:55',59,23),('2022-09-28 03:42:55','2022-09-28 03:42:55',60,23),('2022-09-28 03:42:55','2022-09-28 03:42:55',61,23),('2022-09-28 03:42:55','2022-09-28 03:42:55',62,23),('2022-09-28 03:44:01','2022-09-28 03:44:01',65,24),('2022-09-28 03:44:01','2022-09-28 03:44:01',66,24),('2022-09-28 03:44:01','2022-09-28 03:44:01',67,24),('2022-09-28 03:44:01','2022-09-28 03:44:01',68,24),('2022-09-28 03:44:01','2022-09-28 03:44:01',69,24),('2022-09-28 03:44:01','2022-09-28 03:44:01',70,24),('2022-09-28 12:11:00','2022-09-28 12:11:00',73,25),('2022-09-28 12:11:00','2022-09-28 12:11:00',74,25),('2022-09-28 12:11:00','2022-09-28 12:11:00',75,25),('2022-09-28 12:11:00','2022-09-28 12:11:00',76,25),('2022-09-28 12:11:00','2022-09-28 12:11:00',77,25),('2022-09-28 12:12:27','2022-09-28 12:12:27',80,26),('2022-09-28 12:12:27','2022-09-28 12:12:27',81,26),('2022-09-28 12:12:27','2022-09-28 12:12:27',82,26),('2022-09-28 12:12:27','2022-09-28 12:12:27',83,26),('2022-09-28 12:12:27','2022-09-28 12:12:27',84,26),('2022-09-28 12:12:27','2022-09-28 12:12:27',85,26),('2022-09-28 12:13:47','2022-09-28 12:13:47',88,27),('2022-09-28 12:13:47','2022-09-28 12:13:47',89,27),('2022-09-28 12:13:47','2022-09-28 12:13:47',90,27),('2022-09-28 12:13:47','2022-09-28 12:13:47',91,27),('2022-09-28 12:13:47','2022-09-28 12:13:47',92,27),('2022-09-28 12:13:47','2022-09-28 12:13:47',93,27),('2022-09-28 12:13:47','2022-09-28 12:13:47',94,27),('2022-09-28 13:25:32','2022-09-28 13:25:32',97,28),('2022-09-28 13:25:32','2022-09-28 13:25:32',98,28),('2022-09-28 13:25:32','2022-09-28 13:25:32',99,28),('2022-09-28 13:25:32','2022-09-28 13:25:32',100,28),('2022-09-28 13:25:32','2022-09-28 13:25:32',101,28),('2022-09-28 13:25:32','2022-09-28 13:25:32',102,28);
/*!40000 ALTER TABLE `cms_post_screenshoots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_postlangs`
--

DROP TABLE IF EXISTS `cms_postlangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_postlangs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `langid` varchar(10) NOT NULL,
  `title` text NOT NULL,
  `description` text,
  `content` text,
  `seotitle` text NOT NULL,
  `seodescription` text NOT NULL,
  `offadslang` tinyint(1) DEFAULT '0',
  `offadsdownload` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_postlangs_postid_langid` (`postid`,`langid`),
  CONSTRAINT `cms_postlangs_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `cms_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_postlangs`
--

LOCK TABLES `cms_postlangs` WRITE;
/*!40000 ALTER TABLE `cms_postlangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_postlangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_posts`
--

DROP TABLE IF EXISTS `cms_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentid` int DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text,
  `content` text,
  `seotitle` text NOT NULL,
  `seodescription` text NOT NULL,
  `seoschema` text,
  `posttype` varchar(45) NOT NULL,
  `poststatus` varchar(45) NOT NULL,
  `publishedat` datetime NOT NULL,
  `modifiedat` datetime NOT NULL,
  `postorder` int DEFAULT '0',
  `adsid` int DEFAULT NULL,
  `offadsall` tinyint(1) DEFAULT '0',
  `offads` tinyint(1) DEFAULT '0',
  `offadscontent` tinyint(1) DEFAULT '0',
  `offadsdownload` tinyint(1) DEFAULT '0',
  `adsslot1` text,
  `adsslot2` text,
  `adsslot3` text,
  `adsslot4` text,
  `islikemain` tinyint(1) DEFAULT '1',
  `notenglish` tinyint(1) DEFAULT '0',
  `allowcomment` tinyint(1) DEFAULT '1',
  `commentcount` int DEFAULT '0',
  `likecount` int DEFAULT '0',
  `viewcount` int DEFAULT '0',
  `viewcountday` int DEFAULT '0',
  `viewcountweek` int DEFAULT '0',
  `ratingcount` int DEFAULT '0',
  `ratingaverage` decimal(2,1) DEFAULT '0.0',
  `allowindex` tinyint(1) DEFAULT '0',
  `allowfollow` tinyint(1) DEFAULT '0',
  `showmodapk` tinyint(1) DEFAULT '1',
  `nolink` tinyint(1) DEFAULT '0',
  `off_update_version` tinyint(1) DEFAULT '0',
  `thumbnail` int DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `author` int DEFAULT NULL,
  `dcateid` int DEFAULT NULL,
  `imgicon` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_posts_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_posts`
--

LOCK TABLES `cms_posts` WRITE;
/*!40000 ALTER TABLE `cms_posts` DISABLE KEYS */;
INSERT INTO `cms_posts` VALUES (1,NULL,'home','Home','',NULL,'Home','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(2,NULL,'search','Search','',NULL,'Search','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(3,NULL,'apk-download','Apk Download','',NULL,'Apk Download','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(4,NULL,'apk-download-2','Apk download 2','',NULL,'Apk download 2','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(5,NULL,'login','Login','',NULL,'Login','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(6,NULL,'register','Register','',NULL,'Register','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(7,NULL,'profile','Profile','',NULL,'Profile','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(8,NULL,'password-recovery','Password recovery','',NULL,'Password recovery','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(9,NULL,'password','Password','',NULL,'Password','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(10,NULL,'comment','Comment','',NULL,'Comment','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(11,NULL,'ringtones','Ringtones','',NULL,'Ringtones','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(12,NULL,'terms-of-use','Terms of use','',NULL,'Terms of use','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(13,NULL,'about','About','',NULL,'About','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(14,NULL,'privacy-policy','Privacy policy','',NULL,'Privacy policy','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(15,NULL,'contact','Contact','',NULL,'Contact','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(16,NULL,'dmca','DMCA','',NULL,'DMCA','','','post-page','published','2022-09-26 08:46:11','2022-09-26 08:46:11',0,NULL,0,0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,0,0,0.0,0,0,1,0,0,NULL,NULL,'2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL,NULL),(18,NULL,'frostborn-action-rpg','Frostborn: Action RPG','','','Role Playing','','','post-apk','published','2022-09-27 02:54:20','2022-09-27 02:54:20',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,8,NULL,'2022-09-27 02:54:20','2022-09-27 02:54:42',1,6,9),(21,NULL,'picsart-photo-video-editor','Picsart Photo & Video Editor','','','Photography','','','post-apk','published','2022-09-27 04:01:39','2022-09-27 04:01:39',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,33,NULL,'2022-09-27 04:01:39','2022-09-27 04:01:55',1,10,34),(22,NULL,'asphalt-9-legends','Asphalt 9: Legends','','','Racing','','','post-apk','published','2022-09-28 03:41:28','2022-09-28 03:41:28',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,43,NULL,'2022-09-28 03:41:28','2022-09-28 03:41:47',1,4,44),(23,NULL,'sonic-forces-running-battle','Sonic Forces - Running Battle','','','Adventure','','','post-apk','published','2022-09-28 03:42:51','2022-09-28 03:42:51',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,53,NULL,'2022-09-28 03:42:51','2022-09-28 03:43:06',1,13,54),(25,NULL,'shake-metal','┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','Description Download ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal Mod APK 1.4.2 Latest Version For Free','<h1>Tß║úi game ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-77\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/9/shake-metal-0-screenshoot-1.jpg\" alt=\"┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Download ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal Mod APK 1.4.2 Latest Version For Free','Description Download ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal Mod APK 1.4.2 Latest Version For Free','','post-apk','published','2022-09-28 12:10:56','2022-09-28 12:10:56',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,71,NULL,'2022-09-28 12:10:56','2022-09-28 12:11:12',1,4,72),(26,NULL,'traffic-rider','Traffic Rider','Description Download Traffic Rider Mod APK 1.81 Latest Version For Free','<h1>Tß║úi game Traffic Rider</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-81\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/9/traffic-rider-0-screenshoot-1.jpg\" alt=\"Traffic Rider 0\" width=\"512\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Download Traffic Rider Mod APK 1.81 Latest Version For Free','Description Download Traffic Rider Mod APK 1.81 Latest Version For Free','','post-apk','published','2022-09-28 12:12:23','2022-09-28 12:12:23',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,78,NULL,'2022-09-28 12:12:23','2022-09-28 12:12:35',1,4,79),(27,NULL,'tiktok','TikTok','Description Download TikTok Mod APK 26.3.4 Latest Version For Free','<h1>Tß║úi game TikTok</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-94\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/9/tiktok-0-screenshoot-2.jpg\" alt=\"TikTok 0\" width=\"288\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Download TikTok Mod APK 26.3.4 Latest Version For Free','Description Download TikTok Mod APK 26.3.4 Latest Version For Free','','post-apk','published','2022-09-28 12:13:44','2022-09-28 12:13:44',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,86,NULL,'2022-09-28 12:13:44','2022-09-28 12:18:20',1,8,87),(28,NULL,'temple-run-2','Temple Run 2','Description Download Temple Run 2 Mod APK 1.93.0 Latest Version For Free','<h1>Tß║úi game Temple Run 2</h1>\r\n<p>Nß╗Öi dung game 1</p>\r\n<figure id=\"smsci-102\" class=\"sm-single-content-image\" style=\"display: block; margin-left: auto; margin-right: auto; text-align: center;\"><img src=\"http://localhost:8181/uploads/2022/9/temple-run-2-0-screenshoot.jpg\" alt=\"Temple Run 2 0\" width=\"288\" /></figure>\r\n<p>Nß╗Öi dung game 2</p>','Download Temple Run 2 Mod APK 1.93.0 Latest Version For Free','Description Download Temple Run 2 Mod APK 1.93.0 Latest Version For Free','','post-apk','published','2022-09-28 13:25:27','2022-09-28 13:25:27',0,NULL,0,0,0,0,'','','','',1,0,1,0,0,0,0,0,0,0.0,1,1,0,0,0,95,NULL,'2022-09-28 13:25:27','2022-09-28 13:26:04',1,16,96);
/*!40000 ALTER TABLE `cms_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_redirects`
--

DROP TABLE IF EXISTS `cms_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_redirects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `oldslug` text NOT NULL,
  `newslug` text NOT NULL,
  `type` varchar(45) DEFAULT '301',
  `objtype` varchar(45) NOT NULL,
  `isblock` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_redirects`
--

LOCK TABLES `cms_redirects` WRITE;
/*!40000 ALTER TABLE `cms_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_ringtones`
--

DROP TABLE IF EXISTS `cms_ringtones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_ringtones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int NOT NULL,
  `name` text,
  `author` int DEFAULT NULL,
  `url` text,
  `filename` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filesize` varchar(45) DEFAULT NULL,
  `numvotes` int DEFAULT '0',
  `numdownload` int DEFAULT '0',
  `numlisten` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `cms_ringtones_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `cms_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_ringtones`
--

LOCK TABLES `cms_ringtones` WRITE;
/*!40000 ALTER TABLE `cms_ringtones` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_ringtones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_role_features`
--

DROP TABLE IF EXISTS `cms_role_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_role_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sitefeatureid` int NOT NULL,
  `roleid` int NOT NULL,
  `actview` tinyint(1) DEFAULT '0',
  `actadd` tinyint(1) DEFAULT '0',
  `actedit` tinyint(1) DEFAULT '0',
  `actdel` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_role_features`
--

LOCK TABLES `cms_role_features` WRITE;
/*!40000 ALTER TABLE `cms_role_features` DISABLE KEYS */;
INSERT INTO `cms_role_features` VALUES (1,6,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(2,7,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(3,8,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(4,10,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(5,11,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(6,13,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(7,14,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(8,15,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(9,16,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(10,6,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(11,10,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(12,13,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(13,7,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(14,8,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(15,11,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(16,6,4,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(17,13,4,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(18,15,4,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(19,16,4,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(20,10,5,1,1,0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(21,13,5,1,1,0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(22,14,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(23,14,4,1,1,0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(24,6,5,1,1,0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(25,14,5,1,1,0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(26,29,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(27,29,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(28,32,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(29,32,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(30,31,2,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(31,31,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(32,15,3,1,1,1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(33,6,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(34,8,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(35,11,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(36,17,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(37,16,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(38,15,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(39,10,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(40,29,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(41,32,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(42,7,6,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(43,17,3,1,1,1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44');
/*!40000 ALTER TABLE `cms_role_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_roles`
--

DROP TABLE IF EXISTS `cms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(45) NOT NULL,
  `description` text,
  `ismaster` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_roles_rolename` (`rolename`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_roles`
--

LOCK TABLES `cms_roles` WRITE;
/*!40000 ALTER TABLE `cms_roles` DISABLE KEYS */;
INSERT INTO `cms_roles` VALUES (1,'Administrator','Full privileges',1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(2,'Manager',NULL,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(3,'Editor',NULL,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(4,'Author Content',NULL,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(5,'Author View',NULL,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(6,'Edit redirect',NULL,0,'2022-09-26 08:46:44','2022-09-26 08:46:44');
/*!40000 ALTER TABLE `cms_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site_features`
--

DROP TABLE IF EXISTS `cms_site_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_site_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentid` int DEFAULT NULL,
  `icon` varchar(45) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `description` text,
  `url` varchar(255) DEFAULT '',
  `nolink` tinyint(1) DEFAULT '0',
  `numsort` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site_features`
--

LOCK TABLES `cms_site_features` WRITE;
/*!40000 ALTER TABLE `cms_site_features` DISABLE KEYS */;
INSERT INTO `cms_site_features` VALUES (1,NULL,'<i class=\"fas fa-robot\"></i>','Apk','Apk','','',1,1,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(3,NULL,'<i class=\"fas fa-edit\"></i>','Blog','Blog','','',1,7,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(4,NULL,'<i class=\"fas fa-paste\"></i>','Page','Page','','',1,11,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(5,NULL,'<i class=\"fas fa-tools\"></i>','Setting','Setting','','',1,23,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(6,1,'<i class=\"fas fa-robot\"></i>','List Apk','Apk','','/post/post-apk',0,2,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(7,1,'<i class=\"fas fa-stream\"></i>','Categories','Category Apk','','/category/category-apk',0,3,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(8,1,'<i class=\"fas fa-user-tie\"></i>','Developer','Developer Apk','','/category/developer-apk',0,4,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(10,3,'<i class=\"fas fa-edit\"></i>','List blog','Blog','','/post/post-blog',0,8,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(11,3,'<i class=\"fas fa-stream\"></i>','Categores','Category Blog','','/category/category-blog',0,9,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(13,NULL,'<i class=\"fas fa-paste\"></i>','List page','Page','','/post/post-page',0,12,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(14,NULL,'<i class=\"fas fa-images\"></i>','Media','Media','','/media',0,13,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(15,NULL,'<i class=\"fas fa-comments\"></i>','Comment','Comment','','/comment',0,14,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(16,NULL,'<i class=\"fas fa-envelope\"></i>','Feedback','Feedback','','/feedback',0,15,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(17,NULL,'<i class=\"fas fa-map-signs\"></i>','Redirect','Redirect','','/redirect',0,17,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(19,27,'<i class=\"fas fa-users\"></i>','User','User','','/user',0,20,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(20,27,'<i class=\"fas fa-user-shield\"></i>','Role','Role','','/role',0,21,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(21,NULL,'<i class=\"fas fa-globe-americas\"></i>','Language','Language','','/language',0,18,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(22,5,'<i class=\"fas fa-ad\"></i>','Ads','Ads','','/ads',0,24,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(23,5,'<i class=\"fas fa-cubes\"></i>','Type','Type','','/type',0,26,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(24,5,'<i class=\"fas fa-cubes\"></i>','Site Feature','Site Feature','','/sitefeature',0,27,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(25,5,'<i class=\"fas fa-cogs\"></i>','Option','Option','','/option',0,25,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(26,27,'<i class=\"fas fa-tags\"></i>','Role Feature','Role Feature','','/rolefeature',0,22,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(27,NULL,'<i class=\"fas fa-users-cog\"></i>','Permission','Permission','','',1,19,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(28,5,'<i class=\"fas fa-bars\"></i>','Menu','Menu','','/menu',0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(29,1,'<i class=\"fas fa-tag\"></i>','Tags','Tags Apk','','/category/tags',0,5,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(31,1,NULL,'Log Auto Update','Log Auto Update','','/logautoupdate',0,7,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(32,3,'<i class=\"fas fa-tag\"></i>','Tags','Tag blog','','/category/tags',0,10,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(36,NULL,'<i class=\"fas fa-bell\"></i>','Notifications','Notifications','','',1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),(37,NULL,'<i class=\"fas fa-allergies\"></i>','Apk choice','Apk choice','Chß╗ìn apk hiß╗ân thß╗ï trang chß╗º','/apkchoice',0,2,'2022-09-26 08:46:44','2022-09-26 08:46:44');
/*!40000 ALTER TABLE `cms_site_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tracers`
--

DROP TABLE IF EXISTS `cms_tracers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_tracers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `agent` text,
  `objectid` int DEFAULT NULL,
  `object` varchar(45) DEFAULT '',
  `action` varchar(45) DEFAULT '',
  `notes` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tracers`
--

LOCK TABLES `cms_tracers` WRITE;
/*!40000 ALTER TABLE `cms_tracers` DISABLE KEYS */;
INSERT INTO `cms_tracers` VALUES (1,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',4,'category','add','Add Racing','2022-09-27 01:59:00','2022-09-27 01:59:00'),(2,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',5,'category','add','Add Tamatem Inc.','2022-09-27 01:59:01','2022-09-27 01:59:01'),(3,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',17,'post','add','Add ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','2022-09-27 01:59:01','2022-09-27 01:59:01'),(4,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',17,'post','edit','Edit ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','2022-09-27 01:59:47','2022-09-27 01:59:47'),(5,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',17,'post','edit','Edit ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','2022-09-27 02:32:40','2022-09-27 02:32:40'),(6,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',6,'category','add','Add Role Playing','2022-09-27 02:54:20','2022-09-27 02:54:20'),(7,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',7,'category','add','Add KEFIR','2022-09-27 02:54:20','2022-09-27 02:54:20'),(8,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',18,'post','add','Add Frostborn: Action RPG','2022-09-27 02:54:21','2022-09-27 02:54:21'),(9,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',18,'post','edit','Edit Frostborn: Action RPG','2022-09-27 02:54:42','2022-09-27 02:54:42'),(10,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',8,'category','add','Add Video Players & Editors','2022-09-27 03:59:56','2022-09-27 03:59:56'),(11,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',9,'category','add','Add TikTok Pte. Ltd.','2022-09-27 03:59:56','2022-09-27 03:59:56'),(12,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',19,'post','add','Add TikTok','2022-09-27 03:59:57','2022-09-27 03:59:57'),(13,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',20,'post','add','Add TikTok','2022-09-27 04:00:31','2022-09-27 04:00:31'),(14,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',20,'post','edit','Edit TikTok','2022-09-27 04:00:43','2022-09-27 04:00:43'),(15,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',10,'category','add','Add Photography','2022-09-27 04:01:39','2022-09-27 04:01:39'),(16,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',11,'category','add','Add PicsArt, Inc.','2022-09-27 04:01:39','2022-09-27 04:01:39'),(17,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',21,'post','add','Add Picsart Photo & Video Editor','2022-09-27 04:01:39','2022-09-27 04:01:39'),(18,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',21,'post','edit','Edit Picsart Photo & Video Editor','2022-09-27 04:01:55','2022-09-27 04:01:55'),(19,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',12,'category','add','Add Gameloft SE','2022-09-28 03:41:28','2022-09-28 03:41:28'),(20,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',22,'post','add','Add Asphalt 9: Legends','2022-09-28 03:41:28','2022-09-28 03:41:28'),(21,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',22,'post','edit','Edit Asphalt 9: Legends','2022-09-28 03:41:47','2022-09-28 03:41:47'),(22,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',13,'category','add','Add Adventure','2022-09-28 03:42:50','2022-09-28 03:42:50'),(23,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',14,'category','add','Add SEGA','2022-09-28 03:42:51','2022-09-28 03:42:51'),(24,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',23,'post','add','Add Sonic Forces - Running Battle','2022-09-28 03:42:51','2022-09-28 03:42:51'),(25,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',23,'post','edit','Edit Sonic Forces - Running Battle','2022-09-28 03:43:06','2022-09-28 03:43:06'),(26,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',15,'category','add','Add Soner Kara','2022-09-28 03:43:57','2022-09-28 03:43:57'),(27,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',24,'post','add','Add Traffic Rider','2022-09-28 03:43:57','2022-09-28 03:43:57'),(28,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',24,'post','edit','Edit Traffic Rider','2022-09-28 03:44:08','2022-09-28 03:44:08'),(29,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',25,'post','add','Add ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','2022-09-28 12:10:56','2022-09-28 12:10:56'),(30,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',25,'post','edit','Edit ┘ç╪▓ ╪º┘ä╪¡╪»┘è╪» ╪¬╪╖┘ê┘è┘ü Shake Metal','2022-09-28 12:11:12','2022-09-28 12:11:12'),(31,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',26,'post','add','Add Traffic Rider','2022-09-28 12:12:23','2022-09-28 12:12:23'),(32,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',26,'post','edit','Edit Traffic Rider','2022-09-28 12:12:35','2022-09-28 12:12:35'),(33,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',27,'post','add','Add TikTok','2022-09-28 12:13:44','2022-09-28 12:13:44'),(34,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',27,'post','edit','Edit TikTok','2022-09-28 12:13:55','2022-09-28 12:13:55'),(35,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',27,'post','edit','Edit TikTok','2022-09-28 12:18:20','2022-09-28 12:18:20'),(36,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',16,'category','add','Add Action','2022-09-28 13:25:27','2022-09-28 13:25:27'),(37,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',17,'category','add','Add Imangi Studios','2022-09-28 13:25:27','2022-09-28 13:25:27'),(38,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',28,'post','add','Add Temple Run 2','2022-09-28 13:25:28','2022-09-28 13:25:28'),(39,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',28,'post','edit','Edit Temple Run 2','2022-09-28 13:25:46','2022-09-28 13:25:46'),(40,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36',28,'post','edit','Edit Temple Run 2','2022-09-28 13:26:04','2022-09-28 13:26:04');
/*!40000 ALTER TABLE `cms_tracers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_types`
--

DROP TABLE IF EXISTS `cms_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_types` (
  `id` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT 'post',
  `allowindex` tinyint(1) DEFAULT '0',
  `allowfollow` tinyint(1) DEFAULT '0',
  `cateitemtype` varchar(45) DEFAULT NULL,
  `roottext` varchar(45) DEFAULT '',
  `exttext` varchar(45) DEFAULT '',
  `hassitemap` tinyint(1) DEFAULT '0',
  `isblock` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_types`
--

LOCK TABLES `cms_types` WRITE;
/*!40000 ALTER TABLE `cms_types` DISABLE KEYS */;
INSERT INTO `cms_types` VALUES ('category-apk','Categories','Categories of Apk','category',1,1,'hierarchy','','',1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),('category-blog','Categories','Categories of How to','category',1,1,'hierarchy','','',1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),('developer-apk','Developer','Developer of Apk','category',0,0,'single','developer','',0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),('post-apk','Apk','App and Game for Android','post',1,1,NULL,'','.html',1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),('post-blog','Blog','How to articles','post',1,1,NULL,'','.html',1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),('post-page','Page','Page single','post',0,0,NULL,'','',0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),('post-ringstone','Ringtones','Mp3 ringtones','post',0,0,NULL,'','',0,0,'2022-09-26 08:46:44','2022-09-26 08:46:44'),('tags','Tags','Tags for Apk and Post','category',1,1,'multiple','tag','',1,0,'2022-09-26 08:46:44','2022-09-26 08:46:44');
/*!40000 ALTER TABLE `cms_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT '',
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bdd` varchar(2) DEFAULT '',
  `bdm` varchar(2) DEFAULT '',
  `bdy` varchar(4) DEFAULT '',
  `gender` varchar(20) DEFAULT '',
  `isblock` tinyint(1) DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '0',
  `activecode` text,
  `recoveredcode` varchar(45) DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleid` int DEFAULT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'admin','$2a$12$6Y7mDgUcZjkXHllgM7XfPulok8nshCg3FMlPKjkGhhhcHgm506glW','','Nguyß╗àn','Truyß╗ân','truyennv888@gmail.com','0868959751',NULL,'','','','',0,1,'','','2022-09-26 08:46:44','2022-09-26 08:46:44',1,NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_useruis`
--

DROP TABLE IF EXISTS `cms_useruis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_useruis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `screenid` varchar(45) NOT NULL,
  `jsontext` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_useruis`
--

LOCK TABLES `cms_useruis` WRITE;
/*!40000 ALTER TABLE `cms_useruis` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_useruis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-29 12:56:54
