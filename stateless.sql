CREATE DATABASE  IF NOT EXISTS `stateless` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `stateless`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: stateless
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `ID_ADMIN` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ADMIN` varchar(32) DEFAULT NULL,
  `PASSWORD_ADMIN` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_ADMIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignatura` (
  `ID_ASIGNATURA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PLAN` int(11) DEFAULT NULL,
  `NOMBRE_ASIGNATURA` varchar(128) DEFAULT NULL,
  `SCT_ASIGNATURA` int(11) DEFAULT NULL,
  `NIVEL_ASIGNATURA` int(11) DEFAULT NULL,
  `CODIGO_ASIGNATURA` varchar(16) DEFAULT NULL,
  `HORAS_TEORIA` int(11) DEFAULT NULL,
  `HORAS_EJERCICIO` int(11) DEFAULT NULL,
  `HORAS_LABORATORIO` int(11) DEFAULT NULL,
  `RESUMEN_ASIGNATURA` varchar(1024) DEFAULT NULL,
  `ES_ANUAL` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID_ASIGNATURA`),
  KEY `FK_RELATIONSHIP_4` (`ID_PLAN`),
  CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_PLAN`) REFERENCES `plan` (`ID_PLAN`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (3,2,'CÁLCULO I PARA INGENIERÍA',7,1,'10101',6,2,0,NULL,0),(4,2,'ÁLGEBRA I PARA INGENIERÍA',7,1,'10102',6,2,0,NULL,0),(5,2,'FISICA I PARA INGENIERÍA',7,1,'10103',4,2,1,NULL,0),(6,2,'TALLER DE DESARROLLO PERSONAL E INTERGRAL',3,1,'10104',2,0,2,NULL,0),(7,2,'INTRODUCCIÓN A LA INGENIERÍA',2,1,'10125',0,0,2,NULL,0),(8,2,'MÉTODOS DE ESTUDIO',2,1,'10126',0,0,2,NULL,0),(9,2,'CALCULO II PARA INGENIERÍA',7,2,'10107',6,2,0,NULL,0),(10,2,'ALGEBRA II PARA INGENIERÍA',6,2,'10108',4,2,0,NULL,0),(11,2,'FÍSICA II PARA INGENIERÍA',7,2,'10109',4,2,1,NULL,0),(12,2,'FUNDAMENTOS DE COMPUTACIÓN Y PROGRAMACIÓN',5,2,'10110',4,0,2,NULL,0),(13,2,'QUIMICA GENERAL',5,2,'10111',4,2,0,NULL,0),(14,2,'ELECTRICIDAD Y MAGNETISMO PARA INGENIERÍA',7,3,'10127',4,2,1,NULL,0),(15,2,'COMUNICACIÓN EFECTIVA',2,3,'10128',0,0,2,NULL,0),(16,2,'INGLÉS I',3,3,'10130',0,0,2,NULL,0),(17,2,'ECUACIONES DIFERENCIALES PARA INGENIERÍA',6,3,'10122',4,2,0,NULL,0),(18,2,'MÉTODOS DE PROGRAMACIÓN',8,3,'13201',4,2,2,NULL,0),(19,2,'FUNDAMENTOS DE ECONOMÍA',5,3,'10116',4,2,0,NULL,0),(20,2,'CALCULO III PARA INGENIERIA',6,4,'10129',4,2,0,NULL,0),(21,2,'ANÁLISIS ESTADÍSTICO PARA INGENIERÍA',5,4,'10115',4,2,0,NULL,0),(22,2,'ESTRUCTURA DE COMPUTADORES ',6,4,'13203',4,0,2,NULL,0),(23,2,'PARADIGMAS DE PROGRAMACIÓN',6,4,'13204',4,0,2,NULL,0),(24,2,'ANÁLISIS DE ALGORITMOS Y ESTRUCTURA DE DATOS',5,4,'13205',4,0,2,NULL,0),(25,2,'INGLÉS II',3,4,'10131',0,0,2,NULL,0),(26,2,'INGENIERÍA DE SISTEMAS',5,5,'13252',4,2,0,NULL,0),(27,2,'DISEÑO DE BASES DE DATOS',5,5,'13280',4,1,1,NULL,0),(28,2,'ORGANIZACIÓN DE COMPUTADORES',6,5,'13281',4,1,1,NULL,0),(29,2,'FUNDAMENTOS DE INGENIERÍA DE SOFTWARE',5,5,'13209',4,2,0,NULL,0),(30,2,'ALGORITMOS AVANZADOS',6,5,'13210',4,2,2,NULL,0),(31,2,'INGLÉS III',3,5,'10132',0,0,2,NULL,0),(32,2,'ALGORITMOS NUMÉRICOS',6,6,'13282',4,2,2,NULL,0),(33,2,'SISTEMAS OPERATIVOS',7,6,'13212',4,2,2,NULL,0),(34,2,'PROCESAMIENTO DE LENGUAJES FORMALES',6,6,'13213',4,2,2,NULL,0),(35,2,'ANTROPOLOGÍA E INGENIERÍA',3,6,'13214',4,0,0,NULL,0),(36,2,'TALLER DE BASE DE DATOS',6,6,'13215',2,0,4,NULL,0),(37,2,'INGLÉS IV',3,6,'10135',0,0,2,NULL,0),(38,2,'INFERENCIA Y MODELOS ESTADÍSTICOS',6,7,'13283',4,2,0,NULL,0),(39,2,'REDES DE COMPUTADORES',7,7,'13217',4,2,2,NULL,0),(40,2,'LÓGICA Y TEORÍA DE LA COMPUTACIÓN',6,7,'13128',4,2,0,NULL,0),(41,2,'MACROECONOMÍA Y GLOBALIZACIÓN',4,7,'13219',4,0,0,NULL,0),(42,2,'MÉTODOS DE INGENIERÍA DE SOFTWARE',6,7,'13220',4,2,0,NULL,0),(43,2,'MÉTODOS DE OPTIMIZACIÓN',5,8,'13221',4,0,2,NULL,0),(44,2,'ANÁLISIS DE DATOS',6,8,'13222',4,0,2,NULL,0),(45,2,'SISTEMAS DE COMUNICACIÓN',6,8,'13223',4,0,2,NULL,0),(46,2,'FINANZAS Y CONTABILIDAD',5,8,'13224',4,0,2,NULL,0),(47,2,'ADMINISTRADOR DE PROYECTO DE SOFTWARE',8,8,'13225',4,2,2,NULL,0),(48,2,'INGENIERÍA Y SOCIEDAD',4,9,'13226',4,0,2,NULL,0),(49,2,'MODELACIÓN Y SIMULACIÓN',8,9,'13227',4,2,2,NULL,0),(50,2,'SISTEMAS DISTRIBUÍDOS',6,9,'13228',4,0,2,NULL,0),(51,2,'EVALUACIÓN DE PROYECTOS',6,9,'13229',2,0,4,NULL,0),(52,2,'TALLER DE INGENIERÍA DE SOFTWARE',6,9,'13030',2,0,4,NULL,0),(53,2,'TÓPICOS DE ESPECIALIDAD I',6,10,'13231',4,0,2,NULL,0),(54,2,'TÓPICOS DE ESPECIALIDAD II',6,10,'13232',4,0,2,NULL,0),(55,2,'TÓPICOS DE ESPECIALIDAD III',6,10,'13233',4,0,2,NULL,0),(56,2,'SEGURIDAD Y AUDITORÍA INFORMÁTICA',5,10,'13234',4,0,2,NULL,0),(57,2,'PROYECTO DE INGENIERÍA INFORMÁTICA',7,10,'13235',0,0,8,NULL,0),(58,2,'TÓPICOS DE ESPECIALIDAD IV',6,11,'10136',4,0,2,NULL,0),(59,2,'TÓPICOS DE ESPECIALIDAD V',6,11,'10137',4,0,2,NULL,0),(60,2,'TÓPICOS DE ESPECIALIDAD VI',6,11,'10138',4,0,2,NULL,0),(61,2,'DIRECCIÓN Y GESTIÓN DE EMPRESAS',6,11,'10139',2,0,4,NULL,0),(62,2,'SEMINARIO DE INFORMÁTICA',6,11,'10140',2,0,4,NULL,0),(63,2,'TRABAJO DE TITULACIÓN',30,12,'10141',0,0,2,NULL,0),(64,1,'CALCULO',NULL,1,'10001',4,4,0,NULL,1),(65,1,'ALGEBRA',NULL,1,'10002',6,2,0,NULL,1),(66,1,'FISICA',NULL,1,'10003',4,2,2,NULL,1),(67,1,'INTRODUCCION A LA QUIMICA',NULL,1,'10004',6,0,0,NULL,0),(68,1,'FUNDAMENTOS DE PROGRAMACION',NULL,2,'13006',4,2,2,NULL,0),(69,1,'CALCULO AVANZADO',NULL,3,'10007',4,4,0,NULL,0),(70,1,'ECUACIONES DIFERENCIALES',NULL,3,'10008',4,4,0,NULL,0),(71,1,'ELECTROMAGNETISMO Y FISICA MODERNA',NULL,3,'10010',4,2,2,NULL,0),(72,1,'LENGUAJES Y PARADIGMAS DE PROGRAMACION',NULL,3,'13007',4,2,2,NULL,0),(73,1,'PROBABILIDAD Y ESTADISTICA',NULL,4,'10009',4,2,0,NULL,0),(74,1,'MICROECONOMIA',NULL,4,'10013',4,0,0,NULL,0),(75,1,'TOPICOS DE MATEMATICAS I - INFORMATICA',NULL,4,'13008',4,2,0,NULL,0),(76,1,'ESTRUCTURA DE DATOS Y ALGORITMOS',NULL,4,'13009',4,2,2,NULL,0),(77,1,'ESTRUCTURAS DISCRETAS',NULL,4,'13010',4,2,0,NULL,0),(78,1,'MACROECONOMIA',NULL,5,'10014',4,0,0,NULL,0),(79,1,'AUTOMATAS Y LENGUAJES FORMALES',NULL,5,'13011',4,2,0,NULL,0),(80,1,'FUNDAMENTOS DE PROCESOS PRODUCTIVOS',NULL,5,'13012',4,2,0,NULL,0),(81,1,'ALGORITMOS AVANZADOS',NULL,5,'13013',4,2,2,NULL,0),(82,1,'ORGANIZACION DE COMPUTADORES',NULL,5,'13014',4,2,2,NULL,0),(83,1,'FINANZAS',NULL,6,'10012',4,0,2,NULL,0),(84,1,'LOGICA Y TEORIA DE COMPUTACION',NULL,6,'13015',4,2,0,NULL,0),(85,1,'COMPILADORES',NULL,6,'13016',4,2,2,NULL,0),(86,1,'COMUNICACION DE DATOS',NULL,6,'13017',4,2,2,NULL,0),(87,1,'SISTEMAS OPERATIVOS',NULL,6,'13018',4,2,2,NULL,0),(88,1,'METODOS DE OPTIMIZACION',NULL,7,'13019',4,0,2,NULL,0),(89,1,'COMPUTACION PARALELA',NULL,7,'13020',4,0,2,NULL,0),(90,1,'INGENIERIA DE SISTEMAS',NULL,7,'13021',4,2,2,NULL,0),(91,1,'REDES DE COMUNICACION',NULL,7,'13022',4,2,2,NULL,0),(92,1,'FUNDAMENTOS DE BASE DE DATOS',NULL,7,'13023',4,2,0,NULL,0),(93,1,'ANTROPOLOGIA E INGENIERIA',NULL,8,'10015',4,0,0,NULL,0),(94,1,'FUNDAMENTOS DE INGENIERIA DE SOFTWARE',NULL,8,'13024',4,2,0,NULL,0),(95,1,'CONTROL Y SIMULACION',NULL,8,'13025',4,2,2,NULL,0),(96,1,'SISTEMAS DISTRIBUIDOS',NULL,8,'13026',4,0,2,NULL,0),(97,1,'PROYECTOS DE BASE DE DATOS',NULL,8,'13027',2,0,4,NULL,0),(98,1,'EVALUACION DE PROYECTOS',NULL,9,'10017',2,0,4,NULL,0),(99,1,'PROYECTOS DE INGENIERIA DE SOFTWARE',NULL,9,'13028',2,0,4,NULL,0),(100,1,'COMPORTAMIENTO HUMANO EN EL TRABAJO - INFORMATICO',NULL,9,'13029',6,0,0,NULL,0),(101,1,'INTERFAZ HUMANO COMPUTADOR',NULL,9,'13030',4,0,2,NULL,0),(102,1,'ELECTIVO PROFESIONAL I',NULL,9,'13031',4,0,2,NULL,0),(103,1,'ADMINISTRACION DE EMPRESAS',NULL,10,'10018',4,0,0,NULL,0),(104,1,'PROYECTO DE INGENIERIA INFORMATICA',NULL,10,'13032',0,0,8,NULL,0),(105,1,'ELECTIVO PROFESIONAL II',NULL,10,'13033',4,0,2,NULL,0),(106,1,'ELECTIVO PROFESIONAL III',NULL,10,'13034',4,0,2,NULL,0),(107,1,'ELECTIVO PROFESIONAL IV',NULL,10,'13035',4,0,2,NULL,0),(108,1,'DIRECCION Y GESTION DE EMPRESAS',NULL,11,'13036',2,0,4,NULL,0),(109,1,'ELECTIVO PROFESIONAL V',NULL,11,'13037',4,0,2,NULL,0),(110,1,'ELECTIVO PROFESIONAL VI',NULL,11,'13038',4,0,2,NULL,0),(111,1,'SEMINARIO DE TITULACION',NULL,11,'13039',0,0,4,NULL,0),(112,1,'TRABAJO DE TITULACION',NULL,12,'13040',0,0,16,NULL,0),(113,3,'CÁLCULO APLICADO',NULL,1,'10051',6,2,0,NULL,0),(114,3,'MATEMÁTICAS GENERAL',NULL,1,'10052',6,2,0,NULL,0),(115,3,'INTRODUCCIÓN A LA QUÍMICA',NULL,1,'10054',6,0,0,NULL,0),(116,3,'FISICA GENERAL - INFORMÁTICA',NULL,1,'13052',6,2,2,NULL,0),(117,3,'INTRODUCCION A LA PROGRAMACIÓN',NULL,2,'13051',4,2,2,NULL,0),(118,3,'MATEMÁTICAS APLICADAS',NULL,3,'10057',4,2,0,NULL,0),(119,3,'MÉTODOS GRÁFICOS COMPUTACIONALES',NULL,3,'10058',2,0,4,NULL,0),(120,3,'INTRODUCCIÓN A LA ECONOMÍA',NULL,3,'10060',4,2,0,NULL,0),(121,3,'LENGUAJES DE PROGRAMACIÓN',NULL,3,'13053',4,0,2,NULL,0),(122,3,'TALLER DE DESARROLLO PERSONAL',NULL,4,'10061',4,0,0,NULL,0),(123,3,'ADMINISTRACION',NULL,4,'10062',4,0,0,NULL,0),(124,3,'TEORÍA DE SISTEMAS',NULL,4,'13054',4,2,0,NULL,0),(125,3,'ALGORITMOS Y ESTRUCTURAS DE DATOS I',NULL,4,'13055',4,0,2,NULL,0),(126,3,'SISTEMAS DIGITALES',NULL,4,'13056',4,0,2,NULL,0),(127,3,'ESTRUCTURA DE COMPUTADORES',NULL,5,'13057',4,0,2,NULL,0),(128,3,'BASES DE DATOS',NULL,5,'13059',4,0,2,NULL,0),(129,3,'PROCESAMIENTO DE LENGUAJES FORMALES',NULL,5,'13060',4,0,2,NULL,0),(130,3,'ALGORITMOS Y ESTRUCTURAS DE DATOS II',NULL,5,'13061',4,0,2,NULL,0),(131,3,'CONTABILIDAD Y COSTO',NULL,5,'13071',4,2,0,NULL,0),(132,3,'EPISTEMOLOGÍA',NULL,6,'10067',4,0,0,NULL,0),(133,3,'INGENIERÍA DE SOFTWARE',NULL,6,'13062',4,0,2,NULL,0),(134,3,'SISTEMAS OPERATIVOS',NULL,6,'13063',4,0,2,NULL,0),(135,3,'REDES COMPUTACIONALES',NULL,6,'13064',4,0,2,NULL,0),(136,3,'ELECTIVO PROFESIONAL I',NULL,6,'13065',4,0,2,NULL,0),(137,3,'TALLER DE SISTEMAS DISTRIBUIDOS',NULL,7,'13066',2,0,4,NULL,0),(138,3,'ELECTIVO PROFESIONAL II',NULL,7,'13067',4,0,2,NULL,0),(139,3,'ELECTIVO PROFESIONAL III',NULL,7,'13068',4,0,2,NULL,0),(140,3,'SEMINARIO DE PROYECTO DE TÍTULO',NULL,7,'13069',2,0,2,NULL,0),(141,3,'TALLER DE MANEJO DE DESARROLLO DE RELACIONES INTERPERSONALES',NULL,8,'10064',4,0,0,NULL,0),(142,3,'PROYECTO DE TÍTULO',NULL,8,'13070',0,0,16,NULL,0),(143,4,'CÁLCULO I PARA INGENIERÍA',7,1,'10101',6,2,0,NULL,0),(144,4,'ÁLGEBRA I PARA INGENIERÍA',7,1,'10102',6,2,0,NULL,0),(145,4,'FÍSICA I PARA INGENIERÍA',7,1,'10103',4,2,1,NULL,0),(146,4,'TALLER DE DESARROLLO PERSONAL E INTEGRAL',3,1,'10104',2,0,2,NULL,0),(147,4,'INTRODUCCIÓN A LA INGENIERÍA',2,1,'10125',0,0,2,NULL,0),(148,4,'MÉTODOS DE ESTUDIO',2,1,'10126',0,0,2,NULL,0),(149,4,'CÁLCULO II PARA INGENIERÍA',7,2,'10107',6,2,0,NULL,0),(150,4,'ÁLGEBRA II PARA INGENIERÍA',6,2,'10108',4,2,0,NULL,0),(151,4,'FÍSICA II PARA INGENIERÍA',7,2,'10109',4,2,1,NULL,0),(152,4,'FUNDAMENTOS DE COMPUTACIÓN Y PROGRAMACIÓN',5,2,'10110',4,0,2,NULL,0),(153,4,'QUÍMICA GENERAL',5,2,'10111',4,2,0,NULL,0),(154,4,'ELECTRICIDAD Y MAGNETISMO PARA INGENIERÍA',7,3,'10127',4,2,1,NULL,0),(155,4,'COMUNICACIÓN EFECTIVA',2,3,'10128',0,0,2,NULL,0),(156,4,'INGLÉS I',3,3,'10130',0,0,2,NULL,0),(157,4,'ECUACIONES DIFERENCIALES Y MÉTODOS NUMÉRICOS PARA INGENIERÍA',6,3,'10123',4,2,0,NULL,0),(158,4,'MÉTODOS DE PROGRAMACIÓN',8,3,'13201',4,2,2,NULL,0),(159,4,'ANÁLISIS ESTADÍSTICO PARA INGENIERÍA',5,3,'10115',4,2,0,NULL,0),(160,4,'INGENIERÍA DE SISTEMAS',5,4,'13252',4,2,0,NULL,0),(161,4,'FUNDAMENTOS DE ECONOMÍA',5,4,'10116',4,2,0,NULL,0),(162,4,'ESTRUCTURA DE COMPUTADORES',6,4,'13273',4,2,1,NULL,0),(163,4,'PARADIGMAS DE PROGRAMACIÓN',6,4,'13204',4,0,2,NULL,0),(164,4,'ANÁLISIS DE ALGORITMOS Y ESTRUCTURA DE DATOS',5,4,'13205',4,0,2,NULL,0),(165,4,'INGLÉS II',3,4,'10131',0,0,2,NULL,0),(166,4,'EVALUACIÓN Y GESTIÓN DE PROYECTOS',5,5,'13256',4,0,2,NULL,0),(167,4,'DISEÑO DE BASE DE DATOS',5,5,'13274',4,1,1,NULL,0),(168,4,'ORGANIZACIÓN DE COMPUTADORES',6,5,'13275',4,1,1,NULL,0),(169,4,'FUNDAMENTOS DE INGENIERÍA DE SOFTWARE',5,5,'13209',4,2,0,NULL,0),(170,4,'INFORMÁTICA Y SOCIEDAD',4,5,'13260',4,0,2,NULL,0),(171,4,'SISTEMA DE INFORMACIÓN',4,5,'13261',4,0,2,NULL,0),(172,4,'INGLÉS III',3,5,'10132',0,0,2,NULL,0),(173,4,'SISTEMAS OPERATIVOS',7,6,'13212',4,2,2,NULL,0),(174,4,'TALLER DE BASES DE DATOS',6,6,'13215',2,0,4,NULL,0),(175,4,'ADMINISTRACIÓN Y GESTIÓN INFORMÁTICA',5,6,'13262',4,0,2,NULL,0),(176,4,'TÉCNICAS DE INGENIERÍA DE SOFTWARE',5,6,'13265',4,0,2,NULL,0),(177,4,'REDES COMPUTACIONALES',6,6,'13266',4,2,2,NULL,0),(178,4,'INGLÉS IV',3,6,'10233',0,0,2,NULL,0),(179,4,'PROYECTO DE INGENIERÍA DE SOFTWARE',7,7,'13267',2,0,6,NULL,0),(180,4,'TÓPICOS DE ESPECIALIDAD I',6,7,'13268',4,0,2,NULL,0),(181,4,'TÓPICOS DE ESPECIALIDAD II',6,7,'13269',4,0,2,NULL,0),(182,4,'TÓPICOS DE ESPECIALIDAD III',6,7,'13270',4,0,2,NULL,0),(183,4,'SEMINARIO DE COMPUTACIÓN E INFORMÁTICA',2,7,'13276',2,0,4,NULL,0),(184,4,'TRABAJO DE TITULACIÓN',30,8,'13277',0,0,2,NULL,0);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura_habilidad`
--

DROP TABLE IF EXISTS `asignatura_habilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignatura_habilidad` (
  `ID_ASIGNATURA` int(11) DEFAULT NULL,
  `ID_HABILIDAD` int(11) DEFAULT NULL,
  KEY `FK_RELATIONSHIP_10` (`ID_HABILIDAD`),
  KEY `FK_RELATIONSHIP_11` (`ID_ASIGNATURA`),
  CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`ID_HABILIDAD`) REFERENCES `habilidad` (`ID_HABILIDAD`),
  CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura_habilidad`
--

LOCK TABLES `asignatura_habilidad` WRITE;
/*!40000 ALTER TABLE `asignatura_habilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignatura_habilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura_intermedia`
--

DROP TABLE IF EXISTS `asignatura_intermedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignatura_intermedia` (
  `ID_ASIGNATURA` int(11) DEFAULT NULL,
  `ASI_ID_ASIGNATURA` int(11) DEFAULT NULL,
  KEY `FK_RELATIONSHIP_6` (`ID_ASIGNATURA`),
  KEY `FK_RELATIONSHIP_7` (`ASI_ID_ASIGNATURA`),
  CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`),
  CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ASI_ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura_intermedia`
--

LOCK TABLES `asignatura_intermedia` WRITE;
/*!40000 ALTER TABLE `asignatura_intermedia` DISABLE KEYS */;
INSERT INTO `asignatura_intermedia` VALUES (3,NULL),(4,NULL),(5,NULL),(6,NULL),(7,NULL),(8,NULL),(9,3),(10,4),(11,5),(12,4),(13,NULL),(14,11),(14,9),(15,6),(16,8),(17,9),(17,10),(18,12),(19,3),(20,9),(21,9),(22,10),(22,14),(23,18),(24,18),(25,16),(26,7),(26,21),(27,23),(28,22),(29,23),(30,23),(30,24),(31,25),(32,17),(32,20),(33,28),(34,24),(35,26),(35,15),(36,27),(36,29),(37,31),(38,21),(39,28),(40,34),(41,19),(41,35),(42,29),(43,20),(43,30),(44,38),(45,39),(46,19),(47,42),(48,41),(49,32),(50,45),(51,46),(52,36),(52,47),(53,NULL),(54,NULL),(55,NULL),(56,45),(57,51),(57,52),(58,NULL),(59,NULL),(60,NULL),(61,46),(61,48),(62,57),(63,62),(64,NULL),(65,NULL),(66,NULL),(67,NULL),(68,NULL),(69,64),(70,64),(70,65),(71,64),(71,66),(72,68),(73,64),(74,64),(75,70),(75,68),(76,72),(77,70),(78,74),(79,72),(80,67),(80,71),(81,76),(82,71),(82,77),(83,78),(84,79),(85,79),(86,73),(86,82),(87,81),(87,82),(88,81),(89,81),(89,82),(90,78),(90,80),(91,86),(92,84),(93,84),(93,85),(93,86),(93,87),(94,90),(94,92),(95,90),(96,87),(96,91),(97,92),(98,83),(99,94),(99,97),(100,93),(101,93),(101,94),(102,94),(102,95),(102,96),(102,97),(103,83),(104,98),(104,99),(104,101),(105,102),(106,102),(107,102),(108,103),(109,89),(109,96),(110,89),(110,96),(111,102),(112,111),(113,NULL),(114,NULL),(115,NULL),(116,NULL),(117,NULL),(118,113),(119,117),(120,113),(121,117),(122,113),(122,114),(122,115),(122,116),(122,117),(123,120),(124,120),(124,117),(125,121),(126,114),(127,126),(128,125),(129,121),(130,125),(131,120),(132,118),(132,119),(132,120),(132,121),(133,128),(134,127),(135,127),(136,128),(137,133),(137,135),(138,133),(139,124),(139,135),(140,127),(140,128),(140,129),(140,130),(141,122),(142,140),(143,NULL),(144,NULL),(145,NULL),(146,NULL),(147,NULL),(148,NULL),(149,143),(150,144),(151,145),(152,144),(153,NULL),(154,149),(154,1),(155,146),(156,148),(157,149),(157,152),(158,152),(159,149),(160,147),(160,159),(161,143),(162,150),(162,154),(163,158),(164,158),(165,156),(166,161),(167,163),(168,162),(169,163),(170,155),(171,160),(172,165),(173,168),(174,167),(174,169),(175,166),(176,169),(177,168),(178,172),(179,175),(179,174),(179,176),(180,NULL),(181,NULL),(182,NULL),(183,173),(183,174),(184,183);
/*!40000 ALTER TABLE `asignatura_intermedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `ID_CARRERA` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_CARRERA` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_CARRERA`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingeniería civil informática'),(2,'Ingeniería de ejecución en computación e informática');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilidad`
--

DROP TABLE IF EXISTS `habilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habilidad` (
  `ID_HABILIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION_HABILIDAD` varchar(1024) DEFAULT NULL,
  `GRADO_HABILIDAD` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_HABILIDAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidad`
--

LOCK TABLES `habilidad` WRITE;
/*!40000 ALTER TABLE `habilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombres`
--

DROP TABLE IF EXISTS `nombres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nombres` (
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombres`
--

LOCK TABLES `nombres` WRITE;
/*!40000 ALTER TABLE `nombres` DISABLE KEYS */;
INSERT INTO `nombres` VALUES ('Celso'),('Giovanni'),('Luis'),('Matias'),('Miguel');
/*!40000 ALTER TABLE `nombres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `ID_PLAN` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CARRERA` int(11) DEFAULT NULL,
  `NOMBRE_PLAN` varchar(128) DEFAULT NULL,
  `ANIO_PLAN` int(11) DEFAULT NULL,
  `CODIGO_PLAN` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_PLAN`),
  KEY `FK_RELATIONSHIP_9` (`ID_CARRERA`),
  CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`ID_CARRERA`) REFERENCES `carrera` (`ID_CARRERA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,1,'Civil plan 2001',2001,'1863'),(2,1,'Civil plan 2012',2012,'1363'),(3,2,'Ejecucion plan 2001',2001,'1853'),(4,2,'Ejecucion plan 2012',2012,'1353');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `ID_PROFESOR` int(11) NOT NULL AUTO_INCREMENT,
  `USUARIO_PROFESOR` varchar(32) DEFAULT NULL,
  `NOMBRE_PROFESOR` varchar(32) DEFAULT NULL,
  `APELLIDO_PROFESOR` varchar(32) DEFAULT NULL,
  `CONTRASENA_PROFESOR` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_PROFESOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'Consuelo.Ramirez','Consuelo','Ramírez Santibáñez','123'),(2,'Maria.Parodi','María Carolina','Parodi Davila','123'),(3,'Monica.Villanueva','Mónica','Villanueva Ilufi','123'),(4,'Erika.Rosas','Erika','Rosas Olivo','123'),(5,'Rodrigo.Pizarro','Rodrigo','Pizarro Guzmán','123'),(6,'Jacqueline.Kohler','Jacqueline','Kohler Casasempere','123'),(7,'Max.Chacon','Max','Chacón Pacheco','123'),(8,'Miguel.Fuentes','Miguel','Fuente Villalobos','123'),(9,'Fernando.Rannou','Fernando','Rannou Fuentes','123'),(10,'Mauricio.Marin','Mauricio','Marín Caihuan','123'),(11,'Manuel.Manriquez','Manuel','Manriquez López','123'),(12,'Bruno.Jerardino','Bruno','Jerardino Wiesenborn','123'),(13,'Rosa.Muñoz','Rosa','Muñoz Calanchie','123');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_asignatura`
--

DROP TABLE IF EXISTS `profesor_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor_asignatura` (
  `ID_PROFESOR` int(11) DEFAULT NULL,
  `ID_ASIGNATURA` int(11) DEFAULT NULL,
  KEY `FK_RELATIONSHIP_12` (`ID_PROFESOR`),
  KEY `FK_RELATIONSHIP_15` (`ID_ASIGNATURA`),
  CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`ID_PROFESOR`) REFERENCES `profesor` (`ID_PROFESOR`),
  CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_asignatura`
--

LOCK TABLES `profesor_asignatura` WRITE;
/*!40000 ALTER TABLE `profesor_asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa_asignatura`
--

DROP TABLE IF EXISTS `programa_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programa_asignatura` (
  `ID_PROGRAMA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_ASIGNATURA` int(11) DEFAULT NULL,
  `ANIO_PROGRAMA` int(11) DEFAULT NULL,
  `SEMESTRE_PROGRAMA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PROGRAMA`),
  KEY `FK_RELATIONSHIP_16` (`ID_ASIGNATURA`),
  CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID_ASIGNATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa_asignatura`
--

LOCK TABLES `programa_asignatura` WRITE;
/*!40000 ALTER TABLE `programa_asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `programa_asignatura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-12 15:09:53

