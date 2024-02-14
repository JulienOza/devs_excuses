CREATE DATABASE  IF NOT EXISTS `devs_excuses` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `devs_excuses`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: devs_excuses
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `excuses`
--

DROP TABLE IF EXISTS `excuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `http_code` int NOT NULL,
  `tag` varchar(45) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excuses`
--

LOCK TABLES `excuses` WRITE;
/*!40000 ALTER TABLE `excuses` DISABLE KEYS */;
INSERT INTO `excuses` VALUES (1,701,'Inexcusable','Meh'),(2,702,'Inexcusable','Emacs'),(3,703,'Inexcusable','Explosion'),(4,704,'Inexcusable','Goto Fail'),(5,705,'Inexcusable','I wrote the code and missed the necessary validation by an oversight (see 795)'),(6,706,'Inexcusable','Delete Your Account'),(7,707,'Inexcusable','Can\'t quit vi'),(8,710,'Novelty Implementations','PHP'),(9,711,'Novelty Implementations','Convenience Store'),(10,712,'Novelty Implementations','NoSQL'),(11,718,'Novelty Implementations','I am not a teapot'),(12,719,'Novelty Implementations','Haskell'),(13,720,'Edge Cases','Unpossible'),(14,721,'Edge Cases','Known Unknowns'),(15,722,'Edge Cases','Unknown Unknowns'),(16,723,'Edge Cases','Tricky'),(17,724,'Edge Cases','This line should be unreachable'),(18,725,'Edge Cases','It works on my machine'),(19,726,'Edge Cases','It\'s a feature, not a bug'),(20,727,'Edge Cases','32 bits is plenty'),(21,728,'Edge Cases','It works in my timezone'),(22,730,'Fucking','Fucking npm'),(23,731,'Fucking','Fucking Rubygems'),(24,732,'Fucking','Fucking Unic?de'),(25,733,'Fucking','Fucking Deadlocks'),(26,734,'Fucking','Fucking Deferreds'),(27,736,'Fucking','Fucking Race Conditions'),(28,735,'Fucking','Fucking IE'),(29,737,'Fucking','FuckThreadsing'),(30,738,'Fucking','Fucking Exactly-once Delivery'),(31,739,'Fucking','Fucking Windows'),(32,738,'Fucking','Fucking Exactly'),(33,739,'Fucking','Fucking McAfee'),(34,750,'Syntax Errors','Didn\'t bother to compile it'),(35,753,'Syntax Errors','Syntax Error'),(36,754,'Syntax Errors','Too many semi-colons'),(37,755,'Syntax Errors','Not enough semi-colons'),(38,756,'Syntax Errors','Insufficiently polite'),(39,757,'Syntax Errors','Excessively polite'),(40,759,'Syntax Errors','Unexpected `T_PAAMAYIM_NEKUDOTAYIM`'),(41,761,'Substance','Hungover'),(42,762,'Substance','Stoned'),(43,763,'Substance','Under-Caffeinated'),(44,764,'Substance','Over-Caffeinated'),(45,765,'Substance','Railscamp'),(46,766,'Substance','Sober'),(47,767,'Substance','Drunk'),(48,768,'Substance','Accidentally Took Sleeping Pills Instead Of Migraine Pills During Crunch Week'),(49,771,'Predictable Problems','Cached for too long'),(50,772,'Predictable Problems','Not cached long enough'),(51,773,'Predictable Problems','Not cached at all'),(52,774,'Predictable Problems','Why was this cached?'),(53,775,'Predictable Problems','Out of cash'),(54,776,'Predictable Problems','Error on the Exception'),(55,777,'Predictable Problems','Coincidence'),(56,778,'Predictable Problems','Off By One Error'),(57,779,'Predictable Problems','Off By Too Many To Count Error'),(58,780,'Somebody Else\'s Problem','Project owner not responding'),(59,781,'Somebody Else\'s Problem','Operations'),(60,782,'Somebody Else\'s Problem','QA'),(61,783,'Somebody Else\'s Problem','It was a customer request, honestly'),(62,784,'Somebody Else\'s Problem','Management, obviously'),(63,785,'Somebody Else\'s Problem','TPS Cover Sheet not attached'),(64,786,'Somebody Else\'s Problem','Try it now'),(65,787,'Somebody Else\'s Problem','Further Funding Required'),(66,788,'Somebody Else\'s Problem','Designer\'s final designs weren\'t'),(67,789,'Somebody Else\'s Problem','Not my department'),(68,791,'Internet crashed','The Internet shut down due to copyright restrictions'),(69,792,'Internet crashed','Climate change driven catastrophic weather event'),(70,793,'Internet crashed','Zombie Apocalypse'),(71,794,'Internet crashed','Someone let PG near a REPL'),(72,795,'Internet crashed','#heartbleed (see 705)'),(73,796,'Internet crashed','Some DNS fuckery idno'),(74,797,'Internet crashed','This is the last page of the Internet. Go back'),(75,798,'Internet crashed','I checked the db backups cupboard and the cupboard was bare'),(76,799,'Internet crashed','End of the world');
/*!40000 ALTER TABLE `excuses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-13 15:43:20
