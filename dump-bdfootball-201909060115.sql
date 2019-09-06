-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: bdfootball
-- ------------------------------------------------------
-- Server version	8.0.15


-- Table structure for table `competition`
--

CREATE DATABASE IF NOT EXISTS bdfootball;

use bdfootball;

DROP TABLE IF EXISTS `competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competition` (
  `id` int(11) NOT NULL,
  `name` varchar(100)  DEFAULT NULL,
  `code` varchar(20)  DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competition`
--

LOCK TABLES `competition` WRITE;
/*!40000 ALTER TABLE `competition` DISABLE KEYS */;
/*!40000 ALTER TABLE `competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `name` varchar(100)  DEFAULT NULL,
  `shirtnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (96,'Federico Valverde',NULL),(111,'Diego Godín',NULL),(115,'José Maria Giménez',NULL),(1244,'Giorgian De Arrascaeta',NULL),(1461,'Martín Silva',NULL),(1973,'Diego Laxalt',NULL),(2009,'Matías Vecino',NULL),(2041,'Rodrigo Bentancur',NULL),(2059,'Martín Cáceres',NULL),(2260,'Lucas Torreira',NULL),(3160,'Fernando Muslera',NULL),(3161,'Martín Campaña',25),(3162,'Sebastián Coates',NULL),(3168,'Nahitan Nández',NULL),(3169,'Luis Suárez',NULL),(3170,'Edinson Cavani',NULL),(3171,'Cristhian Stuani',NULL),(3172,'Maxi Gómez',NULL),(7444,'Gastón Pereiro',NULL),(11666,'Marcelo Saracchi',NULL),(28585,'Giovanni González',20),(33611,'Celso Otero',NULL),(33613,'Óscar Tabárez',NULL),(39564,'Jonathan Rodríguez',21),(77022,'Nicolás Lodeiro',10);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `shortname` varchar(20)  DEFAULT NULL,
  `tla` varchar(10)  DEFAULT NULL,
  `address` varchar(100)  DEFAULT NULL,
  `phone` varchar(100)  DEFAULT NULL,
  `website` varchar(100)  DEFAULT NULL,
  `email` varchar(100)  DEFAULT NULL,
  `founded` varchar(100)  DEFAULT NULL,
  `clubcolors` varchar(100)  DEFAULT NULL,
  `venue` varchar(100)  DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (758,'Uruguay','Uruguay','URU','Guayaybo 1531 Montevideo 11200','+59 (82) 4004814','http://www.auf.org.uy','auf@auf.org.uy','1900','Sky Blue / White / Black','Estádio Governador Magalhães Pinto'),(759,'Germany','Germany','GER','Otto-Fleck-Schneise 6 / Postfach 710265 Frankfurt am Main 60492','+49 (69) 67880','http://www.dfb.de','info@dfb.de','1900','White / Black','Wirsol Rhein-Neckar-Arena'),(760,'Spain','Spain','ESP','Ramón y Cajal, s/n Las Rozas 28230','+34 (91) 4959800','http://www.rfef.es','rfef@rfef.es','1909','Red / Blue / Yellow','Estadio Manuel Martínez Valero'),(762,'Argentina','Argentina','ARG','Viamonte 1366/76 Buenos Aires 1053','+54 (11) 43719400','http://www.afa.org.ar','gerencia@afa.org.ar','1893','Sky Blue / White / Black','Arena Corinthians'),(764,'Brazil','Brazil','BRA','Rua Victor Civita 66 Bloco 1, Edifico 5 Rio de Janeiro, RJ 22775-044','+55 (21) 35721900','http://www.cbf.com.br/','cbf@cbf.com.br','1914','Yellow / Green / Blue','Estádio Nacional de Brasília'),(765,'Portugal','Portugal','POR','Rua Alexandre Herculano, 58 Lisboa 1250-012','+351 (213) 252700','http://www.fpf.pt','info@fpf.pt','1914','Red / Green','Estádio do Sport Lisboa e Benfica'),(766,'Japan','Japan','JPN','JFA House Football Avenue, Bunkyo-ku Tōkyō 113-8311','+81 (3) 38302004','http://www.jfa.or.jp','mary@jfa.or.jp','1921','Blue / White','Toyota Stadium'),(769,'Mexico','Mexico','MEX','Colima #373, Colonia Roma Norte, Del. Cuauhtémoc Ciudad de México 6700','+52 (55) 52410100','http://www.femexfut.org.mx','femexfut@mpsnet.com.mx','1927','Green / White / Red','Levi\'s Stadium'),(770,'England','England','ENG','Wembley Stadium, PO Box 1966 London SW1P 9EQ','+44 (844) 9808200','http://www.thefa.com','info@thefa.com','1863','White / Red / Navy Blue','King Power Stadium'),(772,'Korea Republic','Korea Republic','KOR','1-131 Sinmunno, 2-ga Jongno-Gu Seoul 110-062','+82 (2) 7377538','http://www.kfa.or.kr','kfainfo@kfa.or.kr','1928','Red / White / Blue','Seoul World Cup Stadium'),(773,'France','France','FRA','87 Boulevard de Grenelle Paris 75738','+33 (1) 44317300','http://www.fff.fr','webmaster@fff.fr','1919','Blue / White / Red','Kazan Arena'),(776,'Nigeria','Nigeria','NGA','Olusegun Obasanjo Way Abuja null','+234 (9) 5237326','http://www.thenff.com','null','1945','Green / White','Krestovsky Stadium'),(779,'Australia','Australia','AUS','Locked Bag A 4071 Sydney, NSW NSW 1235','+61 (2) 80204000','http://www.footballaustralia.com.au','info@footballaustralia.com.au','1961','Gold / Green','null'),(780,'Serbia','Serbia','SRB','Terazije 35 / CP 263 Beograd 11000','+381 (11) 3234253','http://www.fss.rs','office@fss.rs','1919','Red / Blue / White','Stadion FK Partizan'),(782,'Denmark','Denmark','DEN','House of Football, DBU Allé 1 Brøndby 2605','+45 (43) 262222','http://www.dbu.dk','dbu@dbu.dk','1889','Red / White','Ceres Park'),(788,'Switzerland','Switzerland','SUI','Worbstrasse 48 Bern 3000','+41 (31) 9508111','http://www.football.ch','sfv.asf@football.ch','1895','Red / White','Kybunpark'),(792,'Sweden','Sweden','SWE','Evenemangsgatan 31 / Box 1216 Solna 17123','+46 (8) 7350900','http://www.svenskfotboll.se','svff@svenskfotboll.se','1904','Yellow / Blue','Friends Arena'),(793,'Costa Rica','Costa Rica','CRC','Radial Santa Ana Belén San José 670-1000','+506 2589 1450','http://www.fedefutbol.com','ejecutivo@fedefutbol.com','1921','Red / Blue / White','Cosmos Arena'),(794,'Poland','Poland','POL','Bitwy Warszawskiej 1920 r., 7 Warszawa 02366','+48 (22) 5512300','http://www.pzpn.pl','pzpn@pzpn.pl','1919','White / Red','Stadion Śląski'),(799,'Croatia','Croatia','CRO','Ulica grada Vukovara, 269 A Zagreb 10000','+385 (1) 2361555','http://www.hns-cff.hr','info@hns-cff.hr','1912','Red / White / Blue','Stadion HNK Rijeka'),(801,'Saudi Arabia','Saudi Arabia','KSA','Al Mather Quarter, Prince Faisal bin Fahad Street, P.O. Box 5844 ar-Riyāḍ 11432','+966 (11) 4822240','http://www.thesaff.com.sa','info@football-saudi.com','1956','White / Green','Franso Hariri Stadium'),(802,'Tunisia','Tunisia','TUN','Stade Annexe d\'El Menzah Tunis 1003','+216 (71) 793760','http://www.ftf.org.tn','directeur@ftf.org.tn','1957','White / Red','Stade Olympique de Radès'),(804,'Senegal','Senegal','SEN','VDN-Ouest-Foire en face du CICES, Boite postale 13021 Dakar null','+221 (33) 8692828','http://www.fsfoot.sn','fsf@senegalfoot.sn','1960','White / Green','Cosmos Arena'),(805,'Belgium','Belgium','BEL','145, avenue Houba de Strooper Brussels 1020','+32 (2) 4771211','http://www.belgianfootball.be','urbsfa.kbvb@footbel.com','1895','Red / Black / Yellow','Olimpiyskiy Stadion Fisht'),(808,'Russia','Russia','RUS','Ulitsa Narodnaya, 7 Moskva 115172','+7 (495) 9261300','http://www.rfs.ru','info@rfs.ru','1912','Red / White / Blue','Olimpiyskiy Stadion Fisht'),(815,'Morocco','Morocco','MAR','51 bis, Avenue Ibn Sina Rabat 10000','+212 (537) 672706','http://www.frmf.ma','contact@frmf.ma','1955','Red / Green','Stade Mohamed V'),(818,'Colombia','Colombia','COL','Avenida 32 no. 16-22 Bogotá null','+57 (1) 2889838','http://www.fcf.com.co','info@colfutbol.org','1924','Yellow / Red / Blue','Estadio Nemesio Camacho El Campín'),(825,'Egypt','Egypt','EGY','5, Gabalaya Street, El Gezira Cairo null','+202 (27) 351793','http://www.efa.com.eg','efa_football@hotmail.com','1921','Red / White / Black','Al Salam Stadium'),(832,'Peru','Peru','PER','Avenida Aviación 2085 Lima null','+51 (1) 2258236','http://www.fpf.org.pe','fepefutbol@fpf.org.pe','1922','White / Red','Estadio Monumental'),(840,'Iran','Iran','IRN','No. 2/2 Third St. Seoul Avenue Tehrān 19958-7359','+98 (21) 88213308','http://www.ffiri.ir','international@ffiri.ir','1920','White / Green / Red','Azadi Stadium'),(1066,'Iceland','Iceland','ISL','Laugardal Reykjavík 104','+354 (5) 102900','http://www.ksi.is','ksi@ksi.is','1947','Blue / White','Laugardalsvöllur'),(1836,'Panama','Panama','PAN','Ciudad Deportiva Irving Saladino - Zona 8 Ciudad de Panamá null','+507 2333896','http://www.fepafut.com','info@fepafut.com','1937','Red / White / Navy Blue','Estadio Rommel Fernández Gutiérrez');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `playerxteam`
--

DROP TABLE IF EXISTS `playerxteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `playerxteam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idplayer` int(11) DEFAULT NULL,
  `idteam` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `playerxteam_fk` (`idplayer`),
  KEY `playerxteam_fk_1` (`idteam`),
  CONSTRAINT `playerxteam_fk` FOREIGN KEY (`idplayer`) REFERENCES `player` (`id`),
  CONSTRAINT `playerxteam_fk_1` FOREIGN KEY (`idteam`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerxteam`
--

LOCK TABLES `playerxteam` WRITE;
/*!40000 ALTER TABLE `playerxteam` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerxteam` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `teamxcomp`
--

DROP TABLE IF EXISTS `teamxcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teamxcomp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idteam` int(11) DEFAULT NULL,
  `idcompetition` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teamxcomp_fk` (`idteam`),
  KEY `teamxcomp_fk_1` (`idcompetition`),
  CONSTRAINT `teamxcomp_fk` FOREIGN KEY (`idteam`) REFERENCES `team` (`id`),
  CONSTRAINT `teamxcomp_fk_1` FOREIGN KEY (`idcompetition`) REFERENCES `competition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamxcomp`
--

LOCK TABLES `teamxcomp` WRITE;
/*!40000 ALTER TABLE `teamxcomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `teamxcomp` ENABLE KEYS */;
UNLOCK TABLES;