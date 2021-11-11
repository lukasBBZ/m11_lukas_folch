-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: m411rn
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB

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
-- Table structure for table `farbe`
--

DROP TABLE IF EXISTS `farbe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `farbe` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `farbe` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `farbe_UNIQUE` (`farbe`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farbe`
--

LOCK TABLES `farbe` WRITE;
/*!40000 ALTER TABLE `farbe` DISABLE KEYS */;
INSERT INTO `farbe` VALUES (1,'blau'),(3,'gelb'),(5,'grün'),(4,'orange'),(7,'pink'),(2,'rot'),(6,'violett');
/*!40000 ALTER TABLE `farbe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `name`
--

DROP TABLE IF EXISTS `name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `name` (
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `name`
--

LOCK TABLES `name` WRITE;
/*!40000 ALTER TABLE `name` DISABLE KEYS */;
INSERT INTO `name` VALUES ('adam'),('beutler'),('daumüller'),('fischer'),('frey'),('fuchs'),('galliker'),('griesser'),('heiniger'),('jost'),('kamber'),('meier'),('tschumi'),('weder'),('zahler'),('zoller');
/*!40000 ALTER TABLE `name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personen`
--

DROP TABLE IF EXISTS `personen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personen` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `vorname` varchar(128) DEFAULT NULL,
  `fid` int(11) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `fk_personen_Farbe_idx` (`fid`),
  CONSTRAINT `fk_personen_Farbe` FOREIGN KEY (`fid`) REFERENCES `farbe` (`fid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personen`
--

LOCK TABLES `personen` WRITE;
/*!40000 ALTER TABLE `personen` DISABLE KEYS */;
/*!40000 ALTER TABLE `personen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vorname`
--

DROP TABLE IF EXISTS `vorname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vorname` (
  `vorname` varchar(128) NOT NULL,
  PRIMARY KEY (`vorname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vorname`
--

LOCK TABLES `vorname` WRITE;
/*!40000 ALTER TABLE `vorname` DISABLE KEYS */;
INSERT INTO `vorname` VALUES ('angela'),('emma'),('heidi'),('helmut'),('ida'),('karin'),('kevin'),('laura'),('peter'),('petra'),('rolf'),('sabine'),('sandra'),('thomas');
/*!40000 ALTER TABLE `vorname` ENABLE KEYS */;
UNLOCK TABLES;
