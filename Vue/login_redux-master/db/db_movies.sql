-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_arating`
--

LOCK TABLES `tbl_arating` WRITE;
/*!40000 ALTER TABLE `tbl_arating` DISABLE KEYS */;
INSERT INTO `tbl_arating` VALUES (1,'G','G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),(2,'PG','PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),(3,'PG-13','PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),(4,'R','R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),(5,'NC-17','NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');
/*!40000 ALTER TABLE `tbl_arating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cast` (
  `cast_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cast`
--

LOCK TABLES `tbl_cast` WRITE;
/*!40000 ALTER TABLE `tbl_cast` DISABLE KEYS */;
INSERT INTO `tbl_cast` VALUES (36,'Amy Adams'),(26,'Andrew Garfield'),(8,'Aneurin Barnard'),(42,'Anna Kendrick'),(14,'Boyd Holbrook'),(5,'Bradley Cooper'),(1,'Chris Pratt'),(19,'Colm Hill'),(13,'Dafne Keen'),(7,'Damien Bonnard'),(22,'Dan Stevens'),(30,'Darcy Bryce'),(3,'Dave Bautista'),(33,'Ed Skrein'),(21,'Emma Watson'),(6,'Fionn Whitehead'),(38,'Forest Whitaker'),(46,'Harrison Ford'),(11,'Hugh Jackman'),(28,'Jacob Warner'),(10,'James Bloor'),(37,'Jeremy Renner'),(45,'Joseph Gordon-Levitt'),(24,'Josh Gad'),(32,'Karan Soni'),(20,'Kathryn Kirkpatrick'),(25,'Kevin Kline'),(9,'Lee Armstrong'),(43,'Leonardo DiCaprio'),(23,'Luke Evans'),(40,'Mark OBrien'),(34,'Michael Benyaer'),(18,'Michael Mitton'),(39,'Michael Stuhlbarg'),(47,'Miles Teller'),(29,'Milo Gibson'),(12,'Patrick Stewart'),(27,'Richard Pyros'),(31,'Ryan Reynolds'),(52,'Sandra Bullock'),(44,'Saoirse Ronan'),(17,'Sheena Kamal'),(35,'Stefan Kapicic'),(15,'Stephen Merchant'),(53,'Suraj Sharma'),(16,'Tilda Swinton'),(41,'Tom Costello'),(4,'Vin Diesel'),(2,'Zoe Saldana');
/*!40000 ALTER TABLE `tbl_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comments`
--

LOCK TABLES `tbl_comments` WRITE;
/*!40000 ALTER TABLE `tbl_comments` DISABLE KEYS */;
INSERT INTO `tbl_comments` VALUES (1,NULL,'Loved it. Chris Pratt is my hero! I LOVE YOU STAR LORD!!','2018-03-26 19:08:41',1,5),(2,NULL,'Not quite as good as the first Guardians, but still WAY better that any DC movie... ','2018-03-26 19:09:57',1,4),(3,NULL,'It sucked.','2018-04-01 14:54:32',1,1),(4,NULL,'It was amazing. I really liked this way better than any DC movie that\'s ever been made, EVER.\n\nCuz DC movies are garbage.','2018-04-01 14:55:29',1,3),(5,NULL,'I thought Logan was great.THIS is the way you do comic book dystopia.','2018-04-01 14:56:55',3,4),(6,NULL,'Way too violent. I thought Hugh Jackman would at least do a song and dance, but was VERY disappointed.','2018-04-01 14:57:35',3,1),(7,NULL,'OMG i can\'t get enough Deadpool.. what a great movie','2018-04-01 15:11:30',7,5),(8,NULL,'I really liked this. Prof X made me sad tho. What a way to go...','2018-04-01 15:51:58',3,4),(9,NULL,'afsdfsdfa','2018-04-02 20:59:20',3,3),(10,NULL,'the most amazingest movie ever to amaze!','2018-04-07 23:24:41',1,3),(11,NULL,'best movie ever','2018-04-07 23:25:17',1,5),(12,NULL,'undefined','2018-04-08 17:58:27',9,5),(13,NULL,'undefined','2018-04-08 18:01:58',9,1),(14,NULL,'undefined','2018-04-08 18:05:54',1,4),(15,NULL,'undefined','2018-04-08 18:07:54',1,5),(16,NULL,'Deadpool smashed quite a few boundaries','2018-04-08 18:08:45',7,5),(17,NULL,'last test to see if this works','2018-04-08 18:09:23',7,3),(18,NULL,'this looked interesting and then was a bit of a letdown','2018-04-08 19:03:13',4,3),(19,NULL,'i like pigs so I didn\'t really like this movie.','2018-04-08 19:10:07',4,1),(20,NULL,'pigs are delicious so i think this movie was fantastic. and made me hungry.','2018-04-08 19:13:06',4,3),(21,NULL,'i like pork so hooray for super pigs.','2018-04-08 19:23:53',4,3),(22,NULL,'I DON\'T like pork so super pigs = boooo!','2018-04-08 19:25:19',4,0),(23,NULL,'I ALSO don\'t like super pigs.','2018-04-08 19:27:19',4,1),(24,NULL,'I hate super pigs. AND this movie.','2018-04-08 19:30:01',4,0),(25,NULL,'I hate super pigs. AND this movie.','2018-04-08 19:30:32',4,1),(26,NULL,'I kind of like it. but mostly hated it.','2018-04-08 19:32:31',4,1),(27,NULL,'fantabolous','2018-04-09 15:18:16',1,4),(28,NULL,'asdfa','2018-04-27 14:28:12',5,3),(29,NULL,'afasd','2018-04-27 15:30:23',5,0),(30,NULL,'asdfasd','2018-04-27 16:18:01',3,0),(31,NULL,'ddddd','2018-04-27 16:18:11',3,0),(32,NULL,'vzxvc','2018-04-27 16:27:32',5,0),(33,NULL,'dfasdf','2018-04-27 16:38:46',2,0),(34,NULL,'sfasdf','2018-04-27 16:38:49',2,0),(35,NULL,'aasd','2018-04-27 16:45:21',9,0),(36,'','sadfadsfasdfasdf','2018-04-27 16:51:40',5,3),(37,NULL,'adfasdf','2018-04-27 16:56:50',5,0);
/*!40000 ALTER TABLE `tbl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_country`
--

LOCK TABLES `tbl_country` WRITE;
/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */;
INSERT INTO `tbl_country` VALUES (1,'Albania'),(2,'Algeria'),(3,'Andorra'),(4,'Angola'),(5,'Anguilla'),(6,'Antarctica'),(7,'Antigua'),(8,'Antilles'),(9,'Argentina'),(10,'Armenia'),(11,'Aruba'),(12,'Australia'),(13,'Austria'),(14,'Azerbaijan'),(15,'Bahamas'),(16,'Bangladesh'),(17,'Barbados'),(18,'Belarus'),(19,'Belgium'),(20,'Belize'),(21,'Benin'),(22,'Bermuda'),(23,'Bhutan'),(24,'Bolivia'),(25,'Bosnia'),(26,'Botswana'),(27,'Brazil'),(28,'Brunei'),(29,'Bulgaria'),(30,'Burkina Faso'),(31,'Burundi'),(32,'Cambodia'),(33,'Cameroon'),(34,'Canada'),(35,'Cape Verde'),(36,'Cayman Islands'),(37,'Central Africa'),(38,'Chad'),(39,'Chile'),(40,'China'),(41,'Colombia'),(42,'Comoros'),(43,'Congo'),(44,'Cook Islands'),(45,'Costa Rica'),(46,'Cote D\'Ivoire'),(47,'Croatia'),(48,'Cuba'),(49,'Cyprus'),(50,'Czech Republic'),(51,'Denmark'),(52,'Djibouti'),(53,'Dominica'),(54,'Dominican Rep.'),(55,'Ecuador'),(56,'Egypt'),(57,'El Salvador'),(58,'Eritrea'),(59,'Estonia'),(60,'Ethiopia'),(61,'Fiji'),(62,'Finland'),(63,'Falkland Islands'),(64,'France'),(65,'Gabon'),(66,'Gambia'),(67,'Georgia'),(68,'Germany'),(69,'Ghana'),(70,'Gibraltar'),(71,'Greece'),(72,'Greenland'),(73,'Grenada'),(74,'Guam'),(75,'Guatemala'),(76,'Guiana'),(77,'Guinea'),(78,'Guyana'),(79,'Haiti'),(80,'Hondoras'),(81,'Hong Kong'),(82,'Hungary'),(83,'Iceland'),(84,'India'),(85,'Indonesia'),(86,'Iran'),(87,'Iraq'),(88,'Ireland'),(89,'Israel'),(90,'Italy'),(91,'Jamaica'),(92,'Japan'),(93,'Jordan'),(94,'Kazakhstan'),(95,'Kenya'),(96,'Kiribati'),(97,'Korea'),(98,'Kyrgyzstan'),(99,'Lao'),(100,'Latvia'),(101,'Lesotho'),(102,'Liberia'),(103,'Liechtenstein'),(104,'Lithuania'),(105,'Luxembourg'),(106,'Macau'),(107,'Macedonia'),(108,'Madagascar'),(109,'Malawi'),(110,'Malaysia'),(111,'Maldives'),(112,'Mali'),(113,'Malta'),(114,'Marshal Islands'),(115,'Martinique'),(116,'Mauritania'),(117,'Mauritius'),(118,'Mayotte'),(119,'Mexico'),(120,'Micronesia'),(121,'Moldova'),(122,'Monaco'),(123,'Mongolia'),(124,'Montserrat'),(125,'Morocco'),(126,'Mozambique'),(127,'Myanmar'),(128,'Namibia'),(129,'Nauru'),(130,'Nepal'),(131,'Netherlands'),(132,'New Caledonia'),(133,'New Guinea'),(134,'New Zealand'),(135,'Nicaragua'),(136,'Nigeria'),(137,'Niue'),(138,'Norfolk Island'),(139,'Norway'),(140,'Palau'),(141,'Panama'),(142,'Paraguay'),(143,'Peru'),(144,'Puerto'),(145,'Philippines'),(146,'Poland'),(147,'Polynesia'),(148,'Portugal'),(149,'Romania'),(150,'Russia'),(151,'Rwanda'),(152,'Saint Lucia'),(153,'Samoa'),(154,'San Marino'),(155,'Senegal'),(156,'Seychelles'),(157,'Sierra Leone'),(158,'Singapore'),(159,'Slovakia'),(160,'Slovenia'),(161,'Somalia'),(162,'South Africa'),(163,'Spain'),(164,'Sri Lanka'),(165,'St. Helena'),(166,'Sudan'),(167,'Suriname'),(168,'Swaziland'),(169,'Sweden'),(170,'Switzerland'),(171,'Taiwan'),(172,'Tajikistan'),(173,'Tanzania'),(174,'Thailand'),(175,'Togo'),(176,'Tokelau'),(177,'Tonga'),(178,'Trinidad'),(179,'Tunisia'),(180,'Turkey'),(181,'Uganda'),(182,'Ukraine'),(183,'United Kingdom'),(184,'United States'),(185,'Uruguay'),(186,'Uzbekistan'),(187,'Vanuatu'),(188,'Venezuela'),(189,'Vietnam'),(190,'Virgin Islands'),(191,'Yugoslavia'),(192,'Zaire'),(193,'Zambia'),(194,'Zimbabwe');
/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_director` (
  `director_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_director`
--

LOCK TABLES `tbl_director` WRITE;
/*!40000 ALTER TABLE `tbl_director` DISABLE KEYS */;
INSERT INTO `tbl_director` VALUES (1,'James Gunn'),(2,'Christopher Nolan'),(3,'James Mangold'),(4,'Joon-ho Bong'),(5,'Bill Condon'),(6,'Mel Gibson'),(7,'Tim Miller'),(8,'Denis Villeneuve '),(9,'Dexter Fletcher'),(10,'Mike Mitchell'),(11,'Walt Dohrn'),(12,'Alejandro Gonzalez Inarritu'),(13,'John Crowley '),(14,'Robert Zemeckis'),(15,'Florian Gallenberger '),(16,'J.J. Abrams'),(17,'Damien Chazelle'),(18,'Joseph Gordon-Levitt '),(19,'Alfonso Cuaron'),(20,'Ang Lee'),(21,'David O. Russell');
/*!40000 ALTER TABLE `tbl_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genre`
--

LOCK TABLES `tbl_genre` WRITE;
/*!40000 ALTER TABLE `tbl_genre` DISABLE KEYS */;
INSERT INTO `tbl_genre` VALUES (1,'Action'),(2,'Adventure'),(3,'Comedy'),(4,'Crime'),(5,'Drama'),(6,'Historical'),(7,'Horror'),(8,'Musical'),(9,'Science Fiction'),(10,'War'),(11,'Western'),(12,'Animation'),(13,'Family'),(14,'Fantasy'),(15,'Romance'),(16,'Sport');
/*!40000 ALTER TABLE `tbl_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_language` (
  `lang_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_language`
--

LOCK TABLES `tbl_language` WRITE;
/*!40000 ALTER TABLE `tbl_language` DISABLE KEYS */;
INSERT INTO `tbl_language` VALUES (1,'Abkhaz'),(2,'Afar'),(3,'Afrikaans'),(4,'Akan'),(5,'Albanian'),(6,'Amharic'),(7,'Arabic'),(8,'Aragonese'),(9,'Armenian'),(10,'Assamese'),(11,'Avaric'),(12,'Avestan'),(13,'Aymara'),(14,'Azerbaijani'),(15,'Bambara'),(16,'Bashkir'),(17,'Basque'),(18,'Belarusian'),(19,'Bengali'),(20,'Bihari'),(21,'Bislama'),(22,'Bosnian'),(23,'Breton'),(24,'Bulgarian'),(25,'Burmese'),(26,'Catalan'),(27,'Valencian'),(28,'Chamorro'),(29,'Chechen'),(30,'Chichewa'),(31,'Chewa'),(32,'Nyanja'),(33,'Chinese'),(34,'Chuvash'),(35,'Cornish'),(36,'Corsican'),(37,'Cree'),(38,'Croatian'),(39,'Czech'),(40,'Danish'),(41,'Divehi'),(42,'Dhivehi'),(43,'Maldivian'),(44,'Dutch'),(45,'English'),(46,'Esperanto'),(47,'Estonian'),(48,'Ewe'),(49,'Faroese'),(50,'Fijian'),(51,'Finnish'),(52,'French'),(53,'Fula'),(54,'Fulah'),(55,'Pulaar'),(56,'Pular'),(57,'Galician'),(58,'Georgian'),(59,'German'),(60,'Greek'),(61,'Guaraní'),(62,'Gujarati'),(63,'Haitian'),(64,'Haitian Creole'),(65,'Hausa'),(66,'Hebrew'),(67,'Herero'),(68,'Hindi'),(69,'Hiri Motu'),(70,'Hungarian'),(71,'Interlingua'),(72,'Indonesian'),(73,'Interlingue'),(74,'Irish'),(75,'Igbo'),(76,'Inupiaq'),(77,'Ido'),(78,'Icelandic'),(79,'Italian'),(80,'Inuktitut'),(81,'Japanese'),(82,'Javanese'),(83,'Kalaallisut'),(84,'Greenlandic'),(85,'Kannada'),(86,'Kanuri'),(87,'Kashmiri'),(88,'Kazakh'),(89,'Khmer'),(90,'Kikuyu'),(91,'Gikuyu'),(92,'Kinyarwanda'),(93,'Kirghiz'),(94,'Kyrgyz'),(95,'Komi'),(96,'Kongo'),(97,'Korean'),(98,'Kurdish'),(99,'Kwanyama'),(100,'Kuanyama'),(101,'Latin'),(102,'Luxembourgish'),(103,'Letzeburgesch'),(104,'Luganda'),(105,'Limburgish'),(106,'Limburgan'),(107,'Limburger'),(108,'Lingala'),(109,'Lao'),(110,'Lithuanian'),(111,'Luba-Katanga'),(112,'Latvian'),(113,'Manx'),(114,'Macedonian'),(115,'Malagasy'),(116,'Malay'),(117,'Malayalam'),(118,'Maltese'),(119,'Maori'),(120,'Marathi'),(121,'Marshallese'),(122,'Mongolian'),(123,'Nauru'),(124,'Navajo'),(125,'Navaho'),(126,'Norwegian Bokmal'),(127,'North Ndebele'),(128,'Nepali'),(129,'Ndonga'),(130,'Norwegian Nynorsk'),(131,'Norwegian'),(132,'Nuosu'),(133,'South Ndebele'),(134,'Occitan'),(135,'Ojibwe'),(136,'Ojibwa'),(137,'Old Church Slavonic'),(138,'Church Slavic'),(139,'Church Slavonic'),(140,'Old Bulgarian'),(141,'Old Slavonic'),(142,'Oromo'),(143,'Oriya'),(144,'Ossetian'),(145,'Ossetic'),(146,'Panjabi'),(147,'Punjabi'),(148,'Pali'),(149,'Persian'),(150,'Polish'),(151,'Pashto'),(152,'Pushto'),(153,'Portuguese'),(154,'Quechua'),(155,'Romansh'),(156,'Kirundi'),(157,'Romanian'),(158,'Moldavian'),(159,'Moldovan'),(160,'Russian'),(161,'Sanskrit'),(162,'Sardinian'),(163,'Sindhi'),(164,'Northern Sami'),(165,'Samoan'),(166,'Sango'),(167,'Serbian'),(168,'Scottish Gaelic'),(169,'Gaelic'),(170,'Shona'),(171,'Sinhala'),(172,'Sinhalese'),(173,'Slovak'),(174,'Slovene'),(175,'Somali'),(176,'Southern Sotho'),(177,'Spanish'),(178,'Castilian'),(179,'Sundanese'),(180,'Swahili'),(181,'Swati'),(182,'Swedish'),(183,'Tamil'),(184,'Telugu'),(185,'Tajik'),(186,'Thai'),(187,'Tigrinya'),(188,'Tibetan Standard'),(189,'Tibetan'),(190,'Turkmen'),(191,'Tagalog'),(192,'Tswana'),(193,'Tonga'),(194,'Turkish'),(195,'Tsonga'),(196,'Tatar'),(197,'Twi'),(198,'Tahitian'),(199,'Uighur'),(200,'Uyghur'),(201,'Ukrainian'),(202,'Urdu'),(203,'Uzbek'),(204,'Venda'),(205,'Vietnamese'),(206,'Volapuk'),(207,'Walloon'),(208,'Welsh'),(209,'Wolof'),(210,'Western Frisian'),(211,'Xhosa'),(212,'Yiddish'),(213,'Yoruba'),(214,'Zhuang'),(215,'Chuang');
/*!40000 ALTER TABLE `tbl_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_cast`
--

LOCK TABLES `tbl_mov_cast` WRITE;
/*!40000 ALTER TABLE `tbl_mov_cast` DISABLE KEYS */;
INSERT INTO `tbl_mov_cast` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,4,16),(17,4,17),(18,4,18),(19,4,19),(20,4,20),(21,5,21),(22,5,22),(23,5,23),(24,5,24),(25,5,25),(26,6,26),(27,6,27),(28,6,28),(29,6,29),(30,6,30),(31,7,31),(32,7,32),(33,7,33),(34,7,34),(35,7,35),(36,8,36),(37,8,37),(38,8,38),(39,8,39),(40,8,40),(41,9,41),(42,10,42),(43,11,43),(44,12,44),(45,13,45),(46,14,21),(47,15,46),(48,16,47),(49,17,1),(50,18,45),(51,19,52),(52,20,53),(53,21,5);
/*!40000 ALTER TABLE `tbl_mov_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_country` (
  `mov_country_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_country`
--

LOCK TABLES `tbl_mov_country` WRITE;
/*!40000 ALTER TABLE `tbl_mov_country` DISABLE KEYS */;
INSERT INTO `tbl_mov_country` VALUES (1,1,34),(2,1,134),(3,1,184),(4,2,184),(5,2,183),(6,2,131),(7,2,64),(8,3,12),(9,3,34),(10,3,184),(11,4,184),(12,4,97),(13,5,183),(14,5,184),(15,6,184),(16,6,12),(17,7,184),(18,8,184),(19,9,183),(20,9,184),(21,9,68),(22,10,184),(23,11,184),(24,11,81),(25,11,171);
/*!40000 ALTER TABLE `tbl_mov_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_director` (
  `mov_director_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_director`
--

LOCK TABLES `tbl_mov_director` WRITE;
/*!40000 ALTER TABLE `tbl_mov_director` DISABLE KEYS */;
INSERT INTO `tbl_mov_director` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,10,11),(12,11,12),(13,12,13),(14,13,14),(15,14,15),(16,15,16),(17,16,17),(18,17,1),(19,18,19),(20,19,20),(21,20,21);
/*!40000 ALTER TABLE `tbl_mov_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_genre`
--

LOCK TABLES `tbl_mov_genre` WRITE;
/*!40000 ALTER TABLE `tbl_mov_genre` DISABLE KEYS */;
INSERT INTO `tbl_mov_genre` VALUES (1,1,1),(2,1,2),(3,1,9),(4,2,1),(5,2,5),(6,2,6),(7,2,10),(8,3,1),(9,3,5),(10,3,9),(11,4,1),(12,4,2),(13,4,5),(14,4,9),(15,5,8),(16,5,13),(17,5,14),(18,6,5),(19,6,6),(20,6,10),(21,7,1),(22,7,2),(23,7,3),(24,7,15),(25,8,5),(26,8,9),(27,9,3),(28,9,5),(29,9,16),(30,10,14),(31,10,2),(32,10,3),(33,10,8),(34,10,13),(35,11,2),(36,11,5);
/*!40000 ALTER TABLE `tbl_mov_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_lang` (
  `mov_lang_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_lang`
--

LOCK TABLES `tbl_mov_lang` WRITE;
/*!40000 ALTER TABLE `tbl_mov_lang` DISABLE KEYS */;
INSERT INTO `tbl_mov_lang` VALUES (1,1,45),(2,2,45),(3,2,52),(4,2,59),(5,3,45),(6,3,177),(7,4,45),(8,4,177),(9,4,97),(10,5,45),(11,6,45),(12,6,81),(13,7,45),(14,8,45),(15,8,33),(16,8,160),(17,9,45),(18,9,126),(19,9,59),(20,10,45),(21,11,45),(22,11,52);
/*!40000 ALTER TABLE `tbl_mov_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mov_studio`
--

LOCK TABLES `tbl_mov_studio` WRITE;
/*!40000 ALTER TABLE `tbl_mov_studio` DISABLE KEYS */;
INSERT INTO `tbl_mov_studio` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,1),(18,18,17),(19,19,18),(20,20,19),(21,21,20);
/*!40000 ALTER TABLE `tbl_mov_studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movies`
--

LOCK TABLES `tbl_movies` WRITE;
/*!40000 ALTER TABLE `tbl_movies` DISABLE KEYS */;
INSERT INTO `tbl_movies` VALUES (1,'guardians2.jpg','Guardians of the Galaxy Vol. 2','2017','2h 16m','The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill&rsquo;s true parentage.','Guardians2.mp4','May 5, 2017'),(2,'dunkirk.jpg','Dunkirk','2017','1h 46m','Allied soldiers from Belgium, the British Empire and France are surrounded by the German army and evacuated during a fierce battle in World War II.','Dunkirk.mp4','July 21, 2017'),(3,'logan.jpg','Logan','2017','2h 17m','In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan&rsquo;s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces.','Logan.mp4','March 3,2017'),(4,'okja.jpg','Okja','2017','2h',' Meet Mija, a young girl who risks everything to prevent a powerful, multi-national company from kidnapping her best friend - a fascinating animal named Okja. ','Okja.mp4','June 28,2017'),(5,'beauty.jpg','Beauty and the Beast','2017','2h 9min','An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love. ','Beauty.mp4','March 17, 2017'),(6,'hacksaw.jpg','Hacksaw Ridge','2016','2h 19m','WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.','Hacksaw.mp4','November 4, 2016'),(7,'deadpool.jpg','Deadpool','2016','1h 48m','A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.','Deadpool.mp4','Febuary 12, 2016'),(8,'arrival.jpg','Arrival','2016','1h 56m','When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.','Arrival.mp4','November 11, 2016'),(9,'eddie.jpg','Eddie the Eagle','2016','1h 46m','The story of Eddie Edwards, the notoriously tenacious British underdog ski jumper who charmed the world at the 1988 Winter Olympics.','Eddie.mp4','Febuary 26, 2016'),(10,'trolls.jpg','Trolls','2016','1h 32m','After the Bergens invade Troll Village, Poppy, the happiest Troll ever born, and the curmudgeonly Branch set off on a journey to rescue her friends.','Trolls.mp4','November 4, 2016'),(11,'revenant.jpg','The Revenant','2015','2h 36m','A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.','Revenant.mp4','January 8, 2015'),(12,'brooklyn.jpg','Brooklyn','2015','1h 57m','An Irish immigrant lands in 1950s Brooklyn, where she quickly falls into a romance with a local. When her past catches up with her, however, she must choose between two countries and the lives that exist within.','Brooklyn.mp4','November 25, 2015'),(13,'walk.jpg','The Walk','2015','2h 3m','In 1974, high-wire artist Philippe Petit recruits a team of people to help him realize his dream: to walk the immense void between the World Trade Center towers.','Walk.mp4','October 9, 2015'),(14,'colonia.jpg','Colonia','2015','1h 46m','A young woman&rsquo;s desperate search for her abducted boyfriend that draws her into the infamous Colonia Dignidad, a sect nobody has ever escaped from.','Colonia.mp4','April 15, 2015'),(15,'force.jpg','Star Wars: The Force Awakens','2015','2h 16m','Three decades after the Empire&rsquo;s defeat, a new threat arises in the militant First Order. Stormtrooper defector Finn and spare parts scavenger Rey are caught up in the Resistance&rsquo;s search for the missing Luke Skywalker.','Force.mp4','December 18, 2015'),(16,'whiplash.jpg','Whiplash','2014','1h 47m','A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.','Whiplash.mp4','October 15, 2014'),(17,'guardians.jpg','Guardians of the Galaxy','2014','2h 1m','A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.','Guardians.mp4','August 1, 2014'),(18,'donjon.jpg','Don Jon','2013','1h 30m','A New Jersey guy dedicated to his family, friends, and church, develops unrealistic expectations from watching porn and works to find happiness and intimacy with his potential true love.','donjon.mp4','September 27, 2013'),(19,'gravity.jpg','Gravity','2013','1h 31m','Two astronauts work together to survive after an accident which leaves them alone in space.','Gravity.mp4','October 4, 2013'),(20,'pi.jpg','Life of Pi','2012','2h 7m','A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.','Pi.jpg','November 21, 2012'),(21,'silver.jpg','Silver Linings Playbook','2012','2h 2m','After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.','Silver.jpg','December 25, 2012');
/*!40000 ALTER TABLE `tbl_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_studio` (
  `studio_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_studio`
--

LOCK TABLES `tbl_studio` WRITE;
/*!40000 ALTER TABLE `tbl_studio` DISABLE KEYS */;
INSERT INTO `tbl_studio` VALUES (1,'Marvel Studios'),(2,'Syncopy'),(3,'Donners Company'),(4,'Kate Street Picture Company'),(5,'Mandeville Films'),(6,'Cross Creek Pictures'),(7,'Twentieth Century Fox Film Corporation'),(8,'Lava Bear Films'),(9,'Hurwitz Creative'),(10,'DreamWorks Animation'),(11,'Regency Enterprises'),(12,'Wildgaze Films'),(13,'Sony Pictures Entertainment (SPE)'),(14,'Majestic Filmproduktion'),(15,'Lucasfilm'),(16,'Bold Films'),(17,'Voltage Pictures'),(18,'Warner Bros.'),(19,'Fox 2000 Pictures'),(20,'Weinstein Company');
/*!40000 ALTER TABLE `tbl_studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_urating` (
  `rating_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_urating`
--

LOCK TABLES `tbl_urating` WRITE;
/*!40000 ALTER TABLE `tbl_urating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_urating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) DEFAULT NULL,
  `user_access` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'trevor','theMightyT','hopalong','t@t.com','2019-02-01 19:07:35','::1',1,5),(2,'kate','onTheVerge','hopalong','t@t.com','2019-02-01 20:11:28','127.0.0.1:8000',1,5),(3,'mad','numberOne','hopalong','t@t.com','2019-02-01 20:12:40','127.0.0.1:8000',0,3);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'movies'
--

--
-- Dumping routines for database 'movies'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11  9:55:21
