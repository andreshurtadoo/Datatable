-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: proyecto3
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

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
-- Table structure for table `arbitros`
--

DROP TABLE IF EXISTS `arbitros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arbitros` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Tarjeta_amarilla` int(11) DEFAULT NULL,
  `Tarjeta_roja` int(11) DEFAULT NULL,
  `Penaltis` int(11) DEFAULT NULL,
  `ID_liga` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_liga7_idx` (`ID_liga`),
  CONSTRAINT `id_liga7` FOREIGN KEY (`ID_liga`) REFERENCES `ligas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitros`
--

LOCK TABLES `arbitros` WRITE;
/*!40000 ALTER TABLE `arbitros` DISABLE KEYS */;
INSERT INTO `arbitros` VALUES (1,'Estrada Fernandez',70,1,10,1),(2,'Carlos del Cerro',85,1,6,1),(3,'Pablo Gonzales',87,0,2,1),(4,'Javier Arberola',84,0,1,1),(5,'Isidro Diaz',72,2,10,1),(6,'Cesar Soto',67,1,7,1),(7,'Jose Luis',45,2,2,1),(8,'Guillermo Cuadra',63,1,6,1),(9,'Mateu Lahoz',62,1,2,1),(10,'Alejandro Hernandez',77,0,2,1);
/*!40000 ALTER TABLE `arbitros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campeonatos`
--

DROP TABLE IF EXISTS `campeonatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campeonatos` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Tipo_de_competicion` varchar(45) DEFAULT NULL,
  `Campeon_actual` varchar(45) DEFAULT NULL,
  `Mas_titulos` varchar(45) DEFAULT NULL,
  `Participantes` varchar(45) DEFAULT NULL,
  `Fundacion` varchar(45) DEFAULT NULL,
  `Nro_de_ediciones` varchar(45) DEFAULT NULL,
  `ID_Liga` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Liga_idx` (`ID_Liga`),
  CONSTRAINT `id_de_la_liga` FOREIGN KEY (`ID_Liga`) REFERENCES `ligas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonatos`
--

LOCK TABLES `campeonatos` WRITE;
/*!40000 ALTER TABLE `campeonatos` DISABLE KEYS */;
INSERT INTO `campeonatos` VALUES (1,'Copa del Rey','Campeonato Nacional','Real Sociedad','FC Barcelona(30)','108 Equipos','1903','117',1),(2,'Supercopa de España','Eliminatoria','Athletic Club','FC Barcelona (13)','4 Equipos','1982','36',1);
/*!40000 ALTER TABLE `campeonatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directores_ejecutivos`
--

DROP TABLE IF EXISTS `directores_ejecutivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directores_ejecutivos` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Edad` varchar(45) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `COD_Equipo` int(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directores_ejecutivos`
--

LOCK TABLES `directores_ejecutivos` WRITE;
/*!40000 ALTER TABLE `directores_ejecutivos` DISABLE KEYS */;
INSERT INTO `directores_ejecutivos` VALUES (1,'Miguel Angel Gil','58','España',1),(2,'Oscar Grau','56','España',2),(3,'Jose Angel Sanchez','59','España',3),(4,'Miguel Perez','60','España',4),(5,'Jose Alfredo','57','España',5),(6,'Arturo Garcia','56','España',6),(7,'Saul Sanchez','57','España',7),(8,'Carlos Alba','61','España',8),(9,'Pedro Gonzales','59','España',9),(10,'Carlos Gonzales','64','España',10),(11,'Antonio Cordon','54','España',11),(12,'Andres Perez','58','España',12),(13,'Sergio Carlos','54','España',13),(14,'Abraham Jose','59','España',14),(15,'Alfonso Pereira','60','España',15),(16,'Ezequiel Mora','57','España',16),(17,'Luca Garcia','60','España',17),(18,'Jesus Garcia','62','España',18),(19,'Nacho Hernandez','59','España',19),(20,'Jordi Faja','54','España',20);
/*!40000 ALTER TABLE `directores_ejecutivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenadores`
--

DROP TABLE IF EXISTS `entrenadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrenadores` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `COD_Equipo` int(20) DEFAULT NULL,
  `Edad` varchar(45) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenadores`
--

LOCK TABLES `entrenadores` WRITE;
/*!40000 ALTER TABLE `entrenadores` DISABLE KEYS */;
INSERT INTO `entrenadores` VALUES (1,'Diego Simeone',1,'50','Argentina'),(2,'Ronald Koeman',2,'58','Holanda'),(3,'Zinedine Zidane',3,'48','Francia'),(4,'Julen lopetegui',4,'54','España'),(5,'Immanol Pelegrini',7,'67','Espña'),(6,'Unai Emery',6,'48','España'),(7,'Eduardo Coudet',8,'46','España'),(8,'Marcelino',10,'46','España'),(9,'Diego Martinez',9,'40','España'),(10,'Paco Lopez',11,'53','España'),(11,'Javi Garcia',12,'50','España'),(12,'Alvaro Cervera',13,'55','España'),(13,'Pacheta',18,'53','España'),(14,'Jagoba Arrasate',14,'42','España'),(15,'Pepe Bordalias',15,'57','España'),(16,'Fran Escriba',17,'55','España'),(17,'Segio',16,'44','España'),(18,'Jose Luis',19,'60','España'),(19,'Javier Calleja',20,'12','España'),(20,'Manuel Pellegrini',5,'67','Chile');
/*!40000 ALTER TABLE `entrenadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenadores_exitosos`
--

DROP TABLE IF EXISTS `entrenadores_exitosos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrenadores_exitosos` (
  `Nro` int(20) NOT NULL,
  `Entrenador` varchar(45) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `Equipo` varchar(45) DEFAULT NULL,
  `Temporada` varchar(45) DEFAULT NULL,
  `Partidos` int(11) DEFAULT NULL,
  `Nro_Temporadas` int(11) DEFAULT NULL,
  `Puntos` int(11) DEFAULT NULL,
  `ID_Liga` int(10) DEFAULT NULL,
  PRIMARY KEY (`Nro`),
  KEY `COD_Equipo_idx` (`Equipo`),
  KEY `ud_liga11_idx` (`ID_Liga`),
  CONSTRAINT `ud_liga11` FOREIGN KEY (`ID_Liga`) REFERENCES `ligas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenadores_exitosos`
--

LOCK TABLES `entrenadores_exitosos` WRITE;
/*!40000 ALTER TABLE `entrenadores_exitosos` DISABLE KEYS */;
INSERT INTO `entrenadores_exitosos` VALUES (1,'Pep Guardiola','España','Barcelona','2008-2012',125,4,373,1),(2,'Jose Mourinho','Portugal','Real Madrid','2010-2013',114,3,277,1),(3,'Carlos Ancelotti','Italia','Real Madrid','2008-2010',76,2,179,1),(4,'Zinedine Zidane','Francia','Real Madrid','2016-2018',174,6,389,1),(5,'Luis Enrique','España','Barcelona','2014-2015',152,4,324,1),(6,'Luis Carniglia','Argentina','Real Madrid','2008-2012',57,3,120,1),(7,'Fabio Capello','Italia','Real Madrid','2016-2017',80,2,168,1),(8,'Diego Simeone','Argentina','Atletico Madrid','2011-2021',355,10,738,1),(9,'Johan Cruyff','Holanda','Barcelona','1988-1995',300,8,605,1),(10,'Jose Villalonga','España','Real Madrid','2006-2012',113,5,227,1);
/*!40000 ALTER TABLE `entrenadores_exitosos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `COD_Equipo` int(40) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `ID_Entrenador` int(20) DEFAULT NULL,
  `COD_Estadio` int(40) DEFAULT NULL,
  `ID_Director_ejecutivo` int(20) DEFAULT NULL,
  `ID_Presidente` int(20) DEFAULT NULL,
  `Fundacion` date DEFAULT NULL,
  `Valor_actual` varchar(45) DEFAULT NULL,
  `Titulos` int(11) DEFAULT NULL,
  `ID_Liga` int(10) DEFAULT NULL,
  PRIMARY KEY (`COD_Equipo`),
  KEY `id_liga_idx` (`ID_Liga`),
  KEY `id_entrenador_idx` (`ID_Entrenador`),
  KEY `cod_estadio_idx` (`COD_Estadio`),
  KEY `ID_Director_ejecutivo_idx` (`ID_Director_ejecutivo`),
  KEY `ID_Presidente_idx` (`ID_Presidente`),
  CONSTRAINT `ID_Director_ejecutivo` FOREIGN KEY (`ID_Director_ejecutivo`) REFERENCES `directores_ejecutivos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_Presidente` FOREIGN KEY (`ID_Presidente`) REFERENCES `presidentes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cod_estadio` FOREIGN KEY (`COD_Estadio`) REFERENCES `estadios` (`COD`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_entrenador` FOREIGN KEY (`ID_Entrenador`) REFERENCES `entrenadores` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_liga` FOREIGN KEY (`ID_Liga`) REFERENCES `ligas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Atletico Madrid',1,1,1,4,'1903-03-05','823 M €',10,1),(2,'Barcelona',2,2,2,17,'1903-02-01','748 M €',26,1),(3,'Real Madrid',3,19,3,5,'1900-05-12','745 M €',34,1),(4,'Sevilla',4,3,4,1,'1900-12-25','364 M €',8,1),(5,'Betis',20,4,5,2,'1901-06-14','345 M €',6,1),(6,'Villareal',5,5,6,3,'1901-05-26','247 M €',2,1),(7,'Real Sociedad',6,6,7,6,'1903-07-06','246 M €',1,1),(8,'Celta de Vigo',7,7,8,7,'1900-12-25','219 M €',0,1),(9,'Granada',8,8,9,8,'1903-03-05','199 M €',0,1),(10,'Ath. Bilbado',9,9,10,9,'1900-05-12','129 M €',1,1),(11,'Levante',10,10,11,10,'1900-12-25','115 M €',0,1),(12,'Valencia',11,11,12,11,'1900-05-12','107 M €',0,1),(13,'Cadiz',12,12,13,12,'1901-06-14','83 M €',0,1),(14,'Osasua',13,13,14,13,'1903-03-05','75 M €',0,1),(15,'Getafe',14,14,15,14,'1900-05-12','74 M €',0,1),(16,'Valladolid',15,15,16,15,'1901-05-26','74 M €',0,1),(17,'Elche',16,16,17,16,'1908-06-18','54 M €',0,1),(18,'Huesca',17,17,18,18,'1901-06-14','41 M €',0,1),(19,'Eibar',18,18,19,19,'1901-05-26','38 M €',0,1),(20,'Alavez',19,20,20,20,'1901-05-26','35 M €',0,1);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadios`
--

DROP TABLE IF EXISTS `estadios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadios` (
  `COD` int(40) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Equipo` varchar(45) DEFAULT NULL,
  `Capacidad` int(11) DEFAULT NULL,
  `Cesped` varchar(45) DEFAULT NULL,
  `ID_Liga` int(10) DEFAULT NULL,
  PRIMARY KEY (`COD`),
  KEY `cod_equipo5_idx` (`Equipo`),
  KEY `id_liga11_idx` (`ID_Liga`),
  CONSTRAINT `id_liga11` FOREIGN KEY (`ID_Liga`) REFERENCES `ligas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadios`
--

LOCK TABLES `estadios` WRITE;
/*!40000 ALTER TABLE `estadios` DISABLE KEYS */;
INSERT INTO `estadios` VALUES (1,'Camp Nou','Barcelona',99358,'Si',1),(2,'Wanda Metropolitano','Atletico Madrid',68456,'Si',1),(3,'Santiago Bernabeu','Real Madrid',81044,'Si',1),(4,'San Mames','Sevilla',53289,'No',1),(5,'Mestalla','Real Sociedad',48600,'No',1),(6,'Ramon Sanchez','Betis',43883,'No',1),(7,'Reale Arena','Villareal',39500,'Si',1),(8,'Manuel Martinez','Grandada',33732,'No',1),(9,'Balaidos','Levante',29000,'No',1),(10,'Jose Zorrilla','Celta de Vigo',27619,'No',1),(11,'Ciutat de Valencia','Ath. Bilbao',25354,'No',1),(12,'La Ceramica','Cadiz',23500,'No',1),(13,'Ramon de Carraza','Valencia',21094,'No',1),(14,'Mendizorrotza','Osasuna',19840,'No',1),(15,'Los Carmenes','Getafe',19336,'No',1),(16,'El Sadar','Huesca',18761,'No',1),(17,'Alfonso Perez','Valladolid',16800,'No',1),(18,'Benito Villamarin','Elche',59606,'No',1),(19,'Ipurua','Alaves',8160,'No',1),(20,'El Alcoraz','Eibar',7800,'No',1);
/*!40000 ALTER TABLE `estadios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichajes_mas_caros`
--

DROP TABLE IF EXISTS `fichajes_mas_caros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichajes_mas_caros` (
  `Nro` int(11) NOT NULL AUTO_INCREMENT,
  `Jugador` varchar(45) DEFAULT NULL,
  `Anterior_Equipo` varchar(45) DEFAULT NULL,
  `Nuevo_Equipo` varchar(45) DEFAULT NULL,
  `Coste` varchar(45) DEFAULT NULL,
  `ID_Liga` int(10) DEFAULT NULL,
  PRIMARY KEY (`Nro`),
  KEY `id_liga10_idx` (`ID_Liga`),
  CONSTRAINT `id_liga10` FOREIGN KEY (`ID_Liga`) REFERENCES `ligas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichajes_mas_caros`
--

LOCK TABLES `fichajes_mas_caros` WRITE;
/*!40000 ALTER TABLE `fichajes_mas_caros` DISABLE KEYS */;
INSERT INTO `fichajes_mas_caros` VALUES (1,'Neymar','Barcelona','Paris SG','222 M €',1),(2,'Philippe Coutinho','Bayern Munich','FC Barcelona','135 M €',1),(3,'Ousmane Dembele','Borussia Dortmund','FC Barcelona','135 M €',1),(4,'Joao Feliz','Benfica','Atletico Madrid','127 M €',1),(5,'Antoine Griezmann','Atletico Madrid','FC Barcelona','120 M €',1),(6,'Cristiano Ronaldo','Real Madrid','Juventus','117 M €',1),(7,'Eden Hazar','Cheale','Real Madrid','115 M €',1),(8,'Gareth Bale','tottenham hotspur','Real Madrid','101 M €',1),(9,'Cristiano Ronaldo','Manchester United','Real Madrid','94 M €',1),(10,'Neymar','Santos','Barcelona','88 M €',1);
/*!40000 ALTER TABLE `fichajes_mas_caros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jugadores` (
  `ID` int(250) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `Posicion` varchar(45) DEFAULT NULL,
  `COD_Equipo` int(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Cod_equipo_idx` (`COD_Equipo`),
  CONSTRAINT `cod_equipo5` FOREIGN KEY (`COD_Equipo`) REFERENCES `equipos` (`COD_Equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'Luis Suarez',33,'Uruguay','Delantero',1),(2,'Joao Feliz',21,'Portugal','Delantero',1),(3,'Moussa Dembele',26,'Francia','Delantero',1),(4,'Marcos Llorente',29,'España','Mediocampo',1),(5,'Yannick Carrasco',30,'España','Mediocampo',1),(6,'Hector Herrera',28,'Mexico','Defensa',1),(7,'Kieran Trippier',30,'Inglaterra','Arquero',1),(8,'Jan Oblak',30,'España','Mediocampo',1),(9,'Lucas Torreira',27,'España','Mediocampo',1),(10,'Geoffrey Kon',28,'Francia','Mediocampo',1),(11,'Lionel Messi',33,'Argentina','Delantero',2),(12,'Ousmane Dembele',25,'Francia','Delantero',2),(13,'Atoine Griezma',27,'Francia','Delantero',2),(14,'Ansu Fati',19,'España','Delantero',2),(15,'Pedri',18,'España','Delantero',2),(16,'Philippe Coutinho',27,'Brasil','Mediocampo',2),(17,'Gerard Pique',31,'España','Defensa',2),(18,'Frenkie de Jong',19,'Holanda','Mediocampo',2),(19,'Marc ter Stegen',28,'Alemania','Arquero',2),(20,'Jordi Alba',30,'España','Defensa',2),(21,'Sergio Ramos',32,'España','Defensa',3),(22,'Karim Benzema',31,'Francia','Delantero',3),(23,'Eden Hazar',28,'Belgica','Delantero',3),(24,'Vinicius Jr',19,'Brasil','Delantero',3),(25,'Marcelo Vieira',32,'Brasil','Defensa',3),(26,'Luka Modric',30,'Croacia','Mediocampo',3),(27,'Rodrigo',19,'Brasil','Delantero',3),(28,'Alejandro Gomez',28,'Argentina','Mediocampo',4),(29,'Youssef Nesyri',27,'Marrueco','Delantero',4),(30,'Yassine Bounou',27,'Francia','Arquero',4),(31,'Ivan Rakitic',29,'Croacia','Mediocampo',4),(32,'Jules Krounde',24,'España','Defensa',4),(33,'Lucas Ocampo',25,'España','Mediocampo',4),(34,'Ciro Immobile',27,'Italia','Delantero',4),(35,'Diego Lainez',25,'España','Delantero',5),(36,'Nabil Fekir',28,'Francia','Delantero',5),(37,'Claudio Bravo',32,'Chile','Arquero',5),(38,'Joaquin Sanchez',32,'Italia','Mediocampo',5),(39,'Borja Iglesia',30,'España','Delantero',5),(40,'Gerard Moreno',25,'España','Delantero',6),(41,'Paco Alcacer',29,'España','Delantero',6),(42,'Pau Torres',26,'España','Defensa',6),(43,'Carlos Bacca',32,'Colobia','Delantero',6),(44,'Etienne Capoue',24,'Francia','Mediocampo',6),(45,'David Silva',30,'España','Mediocampo',7),(46,'Alexander Isak',19,'Francia','Delantero',7),(47,'Mikel Oyarzabal',29,'España','Delantero',7),(48,'Adnan Januzaj',25,'Inglaterra','Mediocampo',7),(49,'Cristian Portugues',28,'España','Delantero',7),(50,'Renato Tapia',26,'Colombia','Mediocampo',8),(51,'Emre Mor',22,'Marrueco','Mediocampo',8),(52,'Iago Aspas',28,'España','Delantero',8),(53,'Nestor Araujo',30,'Portugal','Defensa',8),(54,'Denis Suarez',25,'España','Mediocampo',8),(55,'Luis Javier',28,'Colombia','Delantero',9),(56,'Kenedy',26,'Brasil','Mediocampo',9),(57,'Roberto soldado',24,'España','Delantero',9),(58,'Darwin Machis',21,'Venezuela','Delantero',9),(59,'Yangel Herrera',26,'Venezuela','Mediocampo',9),(60,'Iñaki Williams',27,'España','Delantero',10),(61,'Asier Villalibre',26,'España','Delantero',10),(62,'Yuri Berchiche',25,'España','Mediocampo',10),(63,'Iker Munian',25,'España','Mediocampo',10),(64,'Raul Garcia',30,'España','Mediocampo',10),(65,'Jose Luis',28,'Portugal','Delantero',11),(66,'Jose Gomez',24,'España','Delantero',11),(67,'Roger Marti',26,'Francia','Mediocampo',11),(68,'Enis Bardhi',25,'Peru','Delantero',11),(69,'Jorge de Frutos',29,'España','Mediocampo',11),(70,'Lee Kang',30,'Grecia','Delantero',12),(71,'Mouctar Diakhaby',33,'Italia','Defensa',12),(72,'Maximiiano Gomez',25,'Francia','Mediocampo',12),(73,'Yanus Musah',29,'Italia','Mediocampo',12),(74,'Patrick Cutrone',23,'España','Arquero',12),(75,'Juan Cala',19,'España','Mediocampo',13),(76,'Alvaro Negredo',58,'España','Delantero',13),(77,'Antony Lozano',26,'Francia','Arquero',13),(78,'Rafael Gimenez',34,'Alemania','Defensa',13),(79,'Alex Fernandez',32,'Portugal','Mediocampo',13),(80,'Ezequiel Avila',18,'Alemania','Arquero',14),(81,'Jonathan Calleri',25,'Francia','Defensa',14),(82,'Jony Rodriguez',30,'España','Mediocampo',14),(83,'Nacho Vidal',32,'España','Mediocampo',14),(84,'Ruben Garcia',26,'España','Delantero',14),(85,'Tekefusa Kubo',29,'Japon','Arquero',15),(86,'Juan Camilo',24,'Colombia','Defensa',15),(87,'Marc Cucurella',26,'España','Mediocampo',15),(88,'Carles Aleña',25,'España','Mediocampo',15),(89,'Enes Unal',30,'España','Delantero',15),(90,'Shon Weissan',24,'España','Arquero',16),(91,'Kena Kodro',29,'Francia','Defensa',16),(92,'Lucas Ozala',25,'España','Mediocampo',16),(93,'Sergio Guardiola',26,'España','Mediocampo',16),(94,'Jordi Masip',20,'España','Delantero',16),(95,' Ivan Marcone',20,'España','Arquero',17),(96,'Edgar Badia',19,'España','Defensa',17),(97,'Fidel Chavez',24,'España','Mediocampo',17),(98,'Paulo Gazzaniga',26,'España','Mediocampo',17),(99,'Johan Mojica',25,'España','Delantero',17),(100,'Shinji Okazaki',30,'Japon','Arquero',18),(101,'Rafa Mir',26,'España','Defesa',18),(102,'Sandro Ramirez',24,'España','Mediocampo',18),(103,'Damian Musto',26,'España','Mediocampo',18),(104,'Pablo Maffeo',25,'España','Delantero',18),(105,'Bryan Gil',31,'España','Arquero',19),(106,'Takashi Inui',30,'Japon','Defensa',19),(107,'Marko Dmitrovic',25,'Rusia','Mediocampo',19),(108,'Yoshinori Moto',29,'Japon','Mediocampo',19),(109,'Kike Garcia',30,'España','Delantero',19),(110,'Facundo Pelistri',27,'España','Arquero',20),(111,'Lucas Perez',26,'España','Defensa',20),(112,'Deyverson',28,'Venezuela','Mediocampo',20),(113,'John Guidetti',26,'Suecia','Mediocampo',20),(114,'Joselo',28,'España','Delantero',20);
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligas`
--

DROP TABLE IF EXISTS `ligas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligas` (
  `ID` int(10) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Sede` varchar(45) DEFAULT NULL,
  `Asociacion` varchar(45) DEFAULT NULL,
  `Fundacion` varchar(45) DEFAULT NULL,
  `Nro_de_ediciones` int(200) DEFAULT NULL,
  `Organizacion` varchar(45) DEFAULT NULL,
  `Campeon` varchar(45) DEFAULT NULL,
  `SubCampeon` varchar(45) DEFAULT NULL,
  `Tercero` varchar(45) DEFAULT NULL,
  `Nro_de_equipos` int(50) DEFAULT NULL,
  `Partidos` int(11) DEFAULT NULL,
  `Mas _laureado` varchar(45) DEFAULT NULL,
  `Descenso` varchar(45) DEFAULT NULL,
  `Division` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligas`
--

LOCK TABLES `ligas` WRITE;
/*!40000 ALTER TABLE `ligas` DISABLE KEYS */;
INSERT INTO `ligas` VALUES (1,'laLiga Santader','España','Real Federacion Española','10 de febrero de 1929',90,'Liga de futbol profesional','Real madrid','Barcelona','Atletico de madrid',20,380,'Real madrid','Segunda Division','Primera');
/*!40000 ALTER TABLE `ligas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrocinadores`
--

DROP TABLE IF EXISTS `patrocinadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patrocinadores` (
  `Patrocinador` varchar(45) NOT NULL,
  `Contrato` int(11) DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  `COD_Equipo` int(40) DEFAULT NULL,
  PRIMARY KEY (`Patrocinador`),
  KEY `COD_Equipo_idx` (`COD_Equipo`),
  CONSTRAINT `el_codigo` FOREIGN KEY (`COD_Equipo`) REFERENCES `equipos` (`COD_Equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrocinadores`
--

LOCK TABLES `patrocinadores` WRITE;
/*!40000 ALTER TABLE `patrocinadores` DISABLE KEYS */;
INSERT INTO `patrocinadores` VALUES ('Adidas',2029,'Main Partner',1),('AliEpress',2026,'Gobal Partner',1),('ARGENTA',2026,'Main Partner',2),('Audi',2032,'Main Partner',2),('Beko',2021,'Main Partner',3),('bwin',2029,'Main Partner',3),('Coca-cola',2030,'Main Partner',1),('Emirates',2030,'Main Partner',2),('FERRO',2022,'Main Partner',3),('Gatorade',2030,'Main Partner',4),('Halcon',2026,'Main Partner',4),('Hyundai',2034,'Main Partner',5),('Kappa',2031,'Main Partner',6),('Konami',2023,'Gobal Partner',7),('LG',2030,'Gobal Partner',8),('Libertex',2027,'Main Partner',8),('Movistar',2032,'Main Partner',10),('new balance',2022,'Main Partner',11),('Nike',2028,'Main Partner',12),('Petronor',2025,'Main Partner',12),('PUMA',2028,'Main Partner',13),('Rakuten',2022,'Main Partner',2),('renfe',2030,'Main Partner',14),('SanMiguel',2030,'Main Partner',14),('TAU',2027,'Main Partner',15),('Valvoline',2024,'Gobal Partner',15);
/*!40000 ALTER TABLE `patrocinadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presidentes`
--

DROP TABLE IF EXISTS `presidentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presidentes` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Años_en_el_puesto` int(30) DEFAULT NULL,
  `COD_Equipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presidentes`
--

LOCK TABLES `presidentes` WRITE;
/*!40000 ALTER TABLE `presidentes` DISABLE KEYS */;
INSERT INTO `presidentes` VALUES (1,'Fernando Roig',22,'5'),(2,'Angel Torres',17,'9'),(3,'Carlos Suarez',17,'4'),(4,'Enrique Cerezo',16,'1'),(5,'Florentino Perez',16,'3'),(6,'Jesus Gil',16,'6'),(7,'Juan Luis',14,'8'),(8,'Carlos Mouriño',13,'7'),(9,'Jokin Aperribay',11,'11'),(10,'Jose Maria del Nido',10,'13'),(11,'Manuel Ruiz',10,'12'),(12,'Francisco Catalan',9,'14'),(13,'Luis Uranga',9,'16'),(14,'Pedro Villarroel',9,'17'),(15,'Jesus Viñuales',8,'20'),(16,'Alez Aranzabal',7,'18'),(17,'Joan Laporta',7,'2'),(18,'Jose Maria Arrate',7,'15'),(19,'Jose Castro',6,'10'),(20,'Jose Leon',4,'19');
/*!40000 ALTER TABLE `presidentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_de_goles`
--

DROP TABLE IF EXISTS `record_de_goles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_de_goles` (
  `Nro` int(11) NOT NULL AUTO_INCREMENT,
  `Jugador` varchar(45) DEFAULT NULL,
  `Goles` varchar(45) DEFAULT NULL,
  `Partidos` varchar(45) DEFAULT NULL,
  `Debut` int(11) DEFAULT NULL,
  `Presencia` varchar(45) DEFAULT NULL,
  `Equipo_Debut` varchar(45) DEFAULT NULL,
  `ID_Liga` int(10) DEFAULT NULL,
  PRIMARY KEY (`Nro`),
  KEY `id_liga8_idx` (`ID_Liga`),
  CONSTRAINT `id_liga8` FOREIGN KEY (`ID_Liga`) REFERENCES `ligas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_de_goles`
--

LOCK TABLES `record_de_goles` WRITE;
/*!40000 ALTER TABLE `record_de_goles` DISABLE KEYS */;
INSERT INTO `record_de_goles` VALUES (1,'Lionel Messi','467','512',2004,'Activo','Barcelona',1),(2,'Cristiando Ronaldo','311','292',2009,'No-Activo','Real Madrid',1),(3,'Telmo Zarra','251','277',1940,'No-Activo','Ath club',1),(4,'Hugo Sanchez','234','347',1981,'No-Activo','Atletico Madrid',1),(5,'Raul Gonzales','228','550',1994,'No-Activo','Real Madrid',1),(6,'Alfredo di Stefano','227','329',1953,'No-Activo','Real Madrid',1),(7,'Cesar Rodriguez','221','353',1941,'No-Activo','Granda',1),(8,'Enrique Castro','219','448',1970,'No-Activo','Real Sporting',1),(9,'Manuel Fernandez','211','278',1943,'No-Activo','Celta de Vigo',1),(10,'Edmundo Suarez','195','231',1935,'No-Activo','Ath Club',1),(11,'Karim Benzema','187','374',2009,'Activo','Real Madrid',1),(12,'Carlos Alfonso','186','374',2009,'No-Activo','Real Madrid',1),(13,'David Villa','185','352',2003,'No-Activo','Real Zaragoza',1),(14,'Juan Arza','182','349',1943,'No-Activo','Sevilla',1),(15,'Guillermo Gorostiza','178','256',1929,'No-Activo','Ath Club',1);
/*!40000 ALTER TABLE `record_de_goles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_de_partidos`
--

DROP TABLE IF EXISTS `record_de_partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_de_partidos` (
  `Nro` int(20) NOT NULL AUTO_INCREMENT,
  `Jugador` varchar(45) DEFAULT NULL,
  `Partidos_jugados` int(11) DEFAULT NULL,
  `Actividad` varchar(45) DEFAULT NULL,
  `Posicion` varchar(45) DEFAULT NULL,
  `Equipos` varchar(45) DEFAULT NULL,
  `ID_Liga` int(10) DEFAULT NULL,
  PRIMARY KEY (`Nro`),
  KEY `id_liga2_idx` (`ID_Liga`),
  CONSTRAINT `id_liga2` FOREIGN KEY (`ID_Liga`) REFERENCES `ligas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_de_partidos`
--

LOCK TABLES `record_de_partidos` WRITE;
/*!40000 ALTER TABLE `record_de_partidos` DISABLE KEYS */;
INSERT INTO `record_de_partidos` VALUES (1,'Andoni Zubirzareta',622,'Retirado','Portero','Barcelona, Ath Club',1),(2,'Joaquin Sanchez',573,'Activo','Extremo','Betis',1),(3,'Raul Gonzales',550,'Retirado','Media Punta','Real Madrid',1),(4,'Eusebio Sacristan',543,'Retirado','Pivote','Celta de Vigo',1),(5,'Paco Buyo',542,'Retirado','Portero','Sevilla, Real Madrid',1),(6,'Manolo Sanchis',523,'Retirado','Defensa','Real Madrid',1),(7,'Lionel Messi',512,'Activo','Extremo','Barcelona',1),(8,'Raul Garcia',512,'Activo','Delantero','Osasuna, Athletic Club ',1),(9,'Iker Casilla',510,'Retirado','Portero','Real Madrid',1),(10,'Sergio Ramos',508,'Activo','Defensa','Sevilla, Real Madrid',1),(11,'Xavi Hernandez',505,'Retirado','Mediocentro','Barcelona',1),(12,'Miquel Soler',504,'Retirado','Lateral','Mallorca, Barcelona',1),(13,'Fernando Hierro',497,'Retirado','Defensa','Real Valladolid, Real Madrid',1),(14,'Jose Mari Bakero',484,'Retirado','Mediocentro','Cadiz, Sevilla',1),(15,'Santillana',461,'Retirado','Delantero','Celta de Vigo, Betis',1),(16,'Alberto Gorriz',560,'Retirado','Defensa','Real Madrid, Osasuna',1),(17,'Jon Andoni',459,'Retirado','Libero','Sevilla, Real Madrid',1),(18,'Donato',458,'Retirado','Pivote','Barcelona, Ath Club',1),(19,'Jesus Mari',453,'Retirado','Mediocentro','Mallorca, Barcelona',1),(20,'Tixiki Begiristain',452,'Retirado','Extremo','Valencia, Valladolid',1),(21,'Pedro Munitis',448,'Retirado','Mediapunta','Barcelona',1),(22,'Quini',448,'Retirado','Delantero','Osasuna, Athletic Club ',1);
/*!40000 ALTER TABLE `record_de_partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valores_del_mercado`
--

DROP TABLE IF EXISTS `valores_del_mercado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valores_del_mercado` (
  `Nro` int(30) NOT NULL AUTO_INCREMENT,
  `ID_Jugador` int(250) DEFAULT NULL,
  `COD_Equipo` int(20) DEFAULT NULL,
  `Valor_de_mercado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Nro`),
  KEY `id_jugador2_idx` (`ID_Jugador`),
  KEY `cod_equipo4_idx` (`COD_Equipo`),
  CONSTRAINT `cod_equipo4` FOREIGN KEY (`COD_Equipo`) REFERENCES `equipos` (`COD_Equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_jugador2` FOREIGN KEY (`ID_Jugador`) REFERENCES `jugadores` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valores_del_mercado`
--

LOCK TABLES `valores_del_mercado` WRITE;
/*!40000 ALTER TABLE `valores_del_mercado` DISABLE KEYS */;
INSERT INTO `valores_del_mercado` VALUES (1,8,1,'90 M €'),(2,2,1,'80 M €'),(3,14,2,'80 M €'),(4,11,2,'80 M €'),(5,18,2,'80 M €'),(6,19,2,'75 M €'),(7,20,1,'75 M €'),(8,21,3,'70 M €'),(9,22,3,'70 M €'),(10,23,3,'70 M €'),(11,15,2,'70 M €'),(12,45,5,'70 M €'),(13,4,1,'70 M €'),(14,43,4,'60 M €'),(15,13,2,'60 M €'),(16,5,1,'60 M €'),(17,6,1,'55 M €'),(18,40,4,'50 M €'),(19,24,3,'50 M €'),(20,12,2,'50 M €'),(21,25,3,'50 M €'),(22,26,3,'45 M €'),(23,27,3,'40 M €');
/*!40000 ALTER TABLE `valores_del_mercado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xi_mas_valioso`
--

DROP TABLE IF EXISTS `xi_mas_valioso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xi_mas_valioso` (
  `Nro` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Jugador` int(250) DEFAULT NULL,
  `COD_Equipo` int(11) DEFAULT NULL,
  `Posicion_principal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nro`),
  KEY `cod_equipo3_idx` (`COD_Equipo`),
  KEY `id_jugador_idx` (`ID_Jugador`),
  CONSTRAINT `cod_equipo3` FOREIGN KEY (`COD_Equipo`) REFERENCES `equipos` (`COD_Equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_jugador` FOREIGN KEY (`ID_Jugador`) REFERENCES `jugadores` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xi_mas_valioso`
--

LOCK TABLES `xi_mas_valioso` WRITE;
/*!40000 ALTER TABLE `xi_mas_valioso` DISABLE KEYS */;
INSERT INTO `xi_mas_valioso` VALUES (1,8,1,'Portero'),(2,21,3,'Defensa Central'),(3,10,1,'Defensa Central'),(4,23,3,'Lateral Izquierdo'),(5,24,3,'Lateral Derecho'),(6,20,2,'Mediocentro'),(7,22,3,'Mediocentro'),(8,14,2,'Extremo Izquierdo'),(9,2,1,'Mediapunta'),(10,11,2,'Extremo Derecho'),(11,40,6,'Delantero Centro');
/*!40000 ALTER TABLE `xi_mas_valioso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-13 21:41:11
