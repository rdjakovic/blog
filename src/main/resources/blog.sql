-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'danvega@gmail.com','Dan','Vega'),(2,'johnsmith@gmail.com','John','Smith');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` text,
  `posted_on` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `teaser` text,
  `title` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5l759v7apba3lqguc7bp8h456` (`author_id`),
  CONSTRAINT `FK5l759v7apba3lqguc7bp8h456` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu arcu sit amet mauris egestas dignissim. Morbi non congue turpis. Curabitur elit sapien, mattis non diam vitae, lobortis pulvinar ex. Phasellus posuere in diam et luctus. Aliquam in magna consectetur, mollis turpis sed, placerat tortor. Integer sed lacinia diam. Duis sem lacus, placerat eu diam vitae, semper auctor sem. Quisque faucibus viverra sem id suscipit. Morbi maximus consectetur sem et aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque egestas a ligula non ornare. Donec venenatis accumsan lectus, sed egestas eros facilisis vitae. Cras auctor non tellus sollicitudin rutrum. Curabitur finibus cursus leo, et tincidunt purus dignissim a. Sed imperdiet cursus sapien nec facilisis.</p><p>Mauris volutpat euismod finibus. Praesent ipsum massa, pellentesque a aliquam at, pretium id diam. Donec vel est sed dolor blandit laoreet ut nec ipsum. Suspendisse viverra hendrerit ligula quis volutpat. Cras vestibulum ornare finibus. Nam a tincidunt odio, vitae placerat massa. Vestibulum ullamcorper nunc viverra lacus luctus, quis placerat massa vehicula. In vulputate purus lorem, eget vulputate elit pulvinar eget. Nullam blandit tellus eu suscipit accumsan. Nam orci diam, maximus sed ornare quis, vulputate vitae sapien. Vivamus faucibus quam blandit mauris blandit, a commodo arcu semper.</p><p>Nam hendrerit est metus, ut condimentum ipsum fermentum vitae. Integer placerat, neque sit amet vehicula posuere, orci lacus congue ipsum, sed ultrices tortor leo sed erat. Cras quam elit, hendrerit et nunc eget, molestie pharetra quam. Suspendisse luctus quam et faucibus imperdiet. Sed varius mauris dui, ut lacinia nisl accumsan a. Vivamus sit amet diam egestas, viverra tellus a, iaculis velit. Praesent ac tellus ac neque auctor condimentum sagittis pellentesque massa. Aenean arcu est, rutrum vitae lacus aliquam, auctor consectetur enim. Proin magna eros, imperdiet id mauris ac, malesuada tincidunt nunc. Aliquam erat volutpat.</p>','2017-02-16 20:59:55','spring-boot-rocks','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis blandit eros. Morbi tincidunt varius sem, quis lacinia mauris ullamcorper a. Vivamus a ipsum libero. Donec lorem diam, varius ut metus ut, commodo hendrerit nulla. Sed tellus nisl, gravida vestibulum odio ut, ullamcorper scelerisque felis. In interdum pharetra odio, non fringilla diam. Nulla vitae velit quis nisl mattis pulvinar vel a tellus. In non nibh feugiat orci tincidunt iaculis ut at ipsum. Duis ac sodales nisl. Suspendisse vitae nibh dapibus tellus suscipit porttitor eget id orci. Morbi consectetur, nunc a posuere viverra, ex felis gravida ante, quis vulputate sapien dolor nec odio. Integer pretium felis dapibus nisi luctus vulputate eget eget ipsum. Vivamus cursus mollis sollicitudin. In dapibus, quam ac elementum condimentum, lorem mi laoreet lorem, eget interdum mi orci finibus erat. Proin porta vehicula blandit. Sed posuere ante ut dictum mattis.</p>','Spring Boot Rocks!',1,NULL),(2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu arcu sit amet mauris egestas dignissim. Morbi non congue turpis. Curabitur elit sapien, mattis non diam vitae, lobortis pulvinar ex. Phasellus posuere in diam et luctus. Aliquam in magna consectetur, mollis turpis sed, placerat tortor. Integer sed lacinia diam. Duis sem lacus, placerat eu diam vitae, semper auctor sem. Quisque faucibus viverra sem id suscipit. Morbi maximus consectetur sem et aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque egestas a ligula non ornare. Donec venenatis accumsan lectus, sed egestas eros facilisis vitae. Cras auctor non tellus sollicitudin rutrum. Curabitur finibus cursus leo, et tincidunt purus dignissim a. Sed imperdiet cursus sapien nec facilisis.</p><p>Mauris volutpat euismod finibus. Praesent ipsum massa, pellentesque a aliquam at, pretium id diam. Donec vel est sed dolor blandit laoreet ut nec ipsum. Suspendisse viverra hendrerit ligula quis volutpat. Cras vestibulum ornare finibus. Nam a tincidunt odio, vitae placerat massa. Vestibulum ullamcorper nunc viverra lacus luctus, quis placerat massa vehicula. In vulputate purus lorem, eget vulputate elit pulvinar eget. Nullam blandit tellus eu suscipit accumsan. Nam orci diam, maximus sed ornare quis, vulputate vitae sapien. Vivamus faucibus quam blandit mauris blandit, a commodo arcu semper.</p><p>Nam hendrerit est metus, ut condimentum ipsum fermentum vitae. Integer placerat, neque sit amet vehicula posuere, orci lacus congue ipsum, sed ultrices tortor leo sed erat. Cras quam elit, hendrerit et nunc eget, molestie pharetra quam. Suspendisse luctus quam et faucibus imperdiet. Sed varius mauris dui, ut lacinia nisl accumsan a. Vivamus sit amet diam egestas, viverra tellus a, iaculis velit. Praesent ac tellus ac neque auctor condimentum sagittis pellentesque massa. Aenean arcu est, rutrum vitae lacus aliquam, auctor consectetur enim. Proin magna eros, imperdiet id mauris ac, malesuada tincidunt nunc. Aliquam erat volutpat.</p>','2017-02-16 20:59:55','spring-data-rocks','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis blandit eros. Morbi tincidunt varius sem, quis lacinia mauris ullamcorper a. Vivamus a ipsum libero. Donec lorem diam, varius ut metus ut, commodo hendrerit nulla. Sed tellus nisl, gravida vestibulum odio ut, ullamcorper scelerisque felis. In interdum pharetra odio, non fringilla diam. Nulla vitae velit quis nisl mattis pulvinar vel a tellus. In non nibh feugiat orci tincidunt iaculis ut at ipsum. Duis ac sodales nisl. Suspendisse vitae nibh dapibus tellus suscipit porttitor eget id orci. Morbi consectetur, nunc a posuere viverra, ex felis gravida ante, quis vulputate sapien dolor nec odio. Integer pretium felis dapibus nisi luctus vulputate eget eget ipsum. Vivamus cursus mollis sollicitudin. In dapibus, quam ac elementum condimentum, lorem mi laoreet lorem, eget interdum mi orci finibus erat. Proin porta vehicula blandit. Sed posuere ante ut dictum mattis.</p>','Spring Data Rocks!',1,NULL),(3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu arcu sit amet mauris egestas dignissim. Morbi non congue turpis. Curabitur elit sapien, mattis non diam vitae, lobortis pulvinar ex. Phasellus posuere in diam et luctus. Aliquam in magna consectetur, mollis turpis sed, placerat tortor. Integer sed lacinia diam. Duis sem lacus, placerat eu diam vitae, semper auctor sem. Quisque faucibus viverra sem id suscipit. Morbi maximus consectetur sem et aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque egestas a ligula non ornare. Donec venenatis accumsan lectus, sed egestas eros facilisis vitae. Cras auctor non tellus sollicitudin rutrum. Curabitur finibus cursus leo, et tincidunt purus dignissim a. Sed imperdiet cursus sapien nec facilisis.</p><p>Mauris volutpat euismod finibus. Praesent ipsum massa, pellentesque a aliquam at, pretium id diam. Donec vel est sed dolor blandit laoreet ut nec ipsum. Suspendisse viverra hendrerit ligula quis volutpat. Cras vestibulum ornare finibus. Nam a tincidunt odio, vitae placerat massa. Vestibulum ullamcorper nunc viverra lacus luctus, quis placerat massa vehicula. In vulputate purus lorem, eget vulputate elit pulvinar eget. Nullam blandit tellus eu suscipit accumsan. Nam orci diam, maximus sed ornare quis, vulputate vitae sapien. Vivamus faucibus quam blandit mauris blandit, a commodo arcu semper.</p><p>Nam hendrerit est metus, ut condimentum ipsum fermentum vitae. Integer placerat, neque sit amet vehicula posuere, orci lacus congue ipsum, sed ultrices tortor leo sed erat. Cras quam elit, hendrerit et nunc eget, molestie pharetra quam. Suspendisse luctus quam et faucibus imperdiet. Sed varius mauris dui, ut lacinia nisl accumsan a. Vivamus sit amet diam egestas, viverra tellus a, iaculis velit. Praesent ac tellus ac neque auctor condimentum sagittis pellentesque massa. Aenean arcu est, rutrum vitae lacus aliquam, auctor consectetur enim. Proin magna eros, imperdiet id mauris ac, malesuada tincidunt nunc. Aliquam erat volutpat.</p>','2017-02-16 20:59:55','john-blog-post-1','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis blandit eros. Morbi tincidunt varius sem, quis lacinia mauris ullamcorper a. Vivamus a ipsum libero. Donec lorem diam, varius ut metus ut, commodo hendrerit nulla. Sed tellus nisl, gravida vestibulum odio ut, ullamcorper scelerisque felis. In interdum pharetra odio, non fringilla diam. Nulla vitae velit quis nisl mattis pulvinar vel a tellus. In non nibh feugiat orci tincidunt iaculis ut at ipsum. Duis ac sodales nisl. Suspendisse vitae nibh dapibus tellus suscipit porttitor eget id orci. Morbi consectetur, nunc a posuere viverra, ex felis gravida ante, quis vulputate sapien dolor nec odio. Integer pretium felis dapibus nisi luctus vulputate eget eget ipsum. Vivamus cursus mollis sollicitudin. In dapibus, quam ac elementum condimentum, lorem mi laoreet lorem, eget interdum mi orci finibus erat. Proin porta vehicula blandit. Sed posuere ante ut dictum mattis.</p>','John Blog Post 1',2,NULL),(4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu arcu sit amet mauris egestas dignissim. Morbi non congue turpis. Curabitur elit sapien, mattis non diam vitae, lobortis pulvinar ex. Phasellus posuere in diam et luctus. Aliquam in magna consectetur, mollis turpis sed, placerat tortor. Integer sed lacinia diam. Duis sem lacus, placerat eu diam vitae, semper auctor sem. Quisque faucibus viverra sem id suscipit. Morbi maximus consectetur sem et aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque egestas a ligula non ornare. Donec venenatis accumsan lectus, sed egestas eros facilisis vitae. Cras auctor non tellus sollicitudin rutrum. Curabitur finibus cursus leo, et tincidunt purus dignissim a. Sed imperdiet cursus sapien nec facilisis.</p><p>Mauris volutpat euismod finibus. Praesent ipsum massa, pellentesque a aliquam at, pretium id diam. Donec vel est sed dolor blandit laoreet ut nec ipsum. Suspendisse viverra hendrerit ligula quis volutpat. Cras vestibulum ornare finibus. Nam a tincidunt odio, vitae placerat massa. Vestibulum ullamcorper nunc viverra lacus luctus, quis placerat massa vehicula. In vulputate purus lorem, eget vulputate elit pulvinar eget. Nullam blandit tellus eu suscipit accumsan. Nam orci diam, maximus sed ornare quis, vulputate vitae sapien. Vivamus faucibus quam blandit mauris blandit, a commodo arcu semper.</p><p>Nam hendrerit est metus, ut condimentum ipsum fermentum vitae. Integer placerat, neque sit amet vehicula posuere, orci lacus congue ipsum, sed ultrices tortor leo sed erat. Cras quam elit, hendrerit et nunc eget, molestie pharetra quam. Suspendisse luctus quam et faucibus imperdiet. Sed varius mauris dui, ut lacinia nisl accumsan a. Vivamus sit amet diam egestas, viverra tellus a, iaculis velit. Praesent ac tellus ac neque auctor condimentum sagittis pellentesque massa. Aenean arcu est, rutrum vitae lacus aliquam, auctor consectetur enim. Proin magna eros, imperdiet id mauris ac, malesuada tincidunt nunc. Aliquam erat volutpat.</p>','2017-02-16 20:59:55','john-blog-post-2','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis blandit eros. Morbi tincidunt varius sem, quis lacinia mauris ullamcorper a. Vivamus a ipsum libero. Donec lorem diam, varius ut metus ut, commodo hendrerit nulla. Sed tellus nisl, gravida vestibulum odio ut, ullamcorper scelerisque felis. In interdum pharetra odio, non fringilla diam. Nulla vitae velit quis nisl mattis pulvinar vel a tellus. In non nibh feugiat orci tincidunt iaculis ut at ipsum. Duis ac sodales nisl. Suspendisse vitae nibh dapibus tellus suscipit porttitor eget id orci. Morbi consectetur, nunc a posuere viverra, ex felis gravida ante, quis vulputate sapien dolor nec odio. Integer pretium felis dapibus nisi luctus vulputate eget eget ipsum. Vivamus cursus mollis sollicitudin. In dapibus, quam ac elementum condimentum, lorem mi laoreet lorem, eget interdum mi orci finibus erat. Proin porta vehicula blandit. Sed posuere ante ut dictum mattis.</p>','John Blog Post 2',2,NULL),(5,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu arcu sit amet mauris egestas dignissim. Morbi non congue turpis. Curabitur elit sapien, mattis non diam vitae, lobortis pulvinar ex. Phasellus posuere in diam et luctus. Aliquam in magna consectetur, mollis turpis sed, placerat tortor. Integer sed lacinia diam. Duis sem lacus, placerat eu diam vitae, semper auctor sem. Quisque faucibus viverra sem id suscipit. Morbi maximus consectetur sem et aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque egestas a ligula non ornare. Donec venenatis accumsan lectus, sed egestas eros facilisis vitae. Cras auctor non tellus sollicitudin rutrum. Curabitur finibus cursus leo, et tincidunt purus dignissim a. Sed imperdiet cursus sapien nec facilisis.</p><p>Mauris volutpat euismod finibus. Praesent ipsum massa, pellentesque a aliquam at, pretium id diam. Donec vel est sed dolor blandit laoreet ut nec ipsum. Suspendisse viverra hendrerit ligula quis volutpat. Cras vestibulum ornare finibus. Nam a tincidunt odio, vitae placerat massa. Vestibulum ullamcorper nunc viverra lacus luctus, quis placerat massa vehicula. In vulputate purus lorem, eget vulputate elit pulvinar eget. Nullam blandit tellus eu suscipit accumsan. Nam orci diam, maximus sed ornare quis, vulputate vitae sapien. Vivamus faucibus quam blandit mauris blandit, a commodo arcu semper.</p><p>Nam hendrerit est metus, ut condimentum ipsum fermentum vitae. Integer placerat, neque sit amet vehicula posuere, orci lacus congue ipsum, sed ultrices tortor leo sed erat. Cras quam elit, hendrerit et nunc eget, molestie pharetra quam. Suspendisse luctus quam et faucibus imperdiet. Sed varius mauris dui, ut lacinia nisl accumsan a. Vivamus sit amet diam egestas, viverra tellus a, iaculis velit. Praesent ac tellus ac neque auctor condimentum sagittis pellentesque massa. Aenean arcu est, rutrum vitae lacus aliquam, auctor consectetur enim. Proin magna eros, imperdiet id mauris ac, malesuada tincidunt nunc. Aliquam erat volutpat.</p>','2017-02-16 20:59:55','john-blog-post-3','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis blandit eros. Morbi tincidunt varius sem, quis lacinia mauris ullamcorper a. Vivamus a ipsum libero. Donec lorem diam, varius ut metus ut, commodo hendrerit nulla. Sed tellus nisl, gravida vestibulum odio ut, ullamcorper scelerisque felis. In interdum pharetra odio, non fringilla diam. Nulla vitae velit quis nisl mattis pulvinar vel a tellus. In non nibh feugiat orci tincidunt iaculis ut at ipsum. Duis ac sodales nisl. Suspendisse vitae nibh dapibus tellus suscipit porttitor eget id orci. Morbi consectetur, nunc a posuere viverra, ex felis gravida ante, quis vulputate sapien dolor nec odio. Integer pretium felis dapibus nisi luctus vulputate eget eget ipsum. Vivamus cursus mollis sollicitudin. In dapibus, quam ac elementum condimentum, lorem mi laoreet lorem, eget interdum mi orci finibus erat. Proin porta vehicula blandit. Sed posuere ante ut dictum mattis.</p>','John Blog Post 3',2,NULL),(6,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu arcu sit amet mauris egestas dignissim. Morbi non congue turpis. Curabitur elit sapien, mattis non diam vitae, lobortis pulvinar ex. Phasellus posuere in diam et luctus. Aliquam in magna consectetur, mollis turpis sed, placerat tortor. Integer sed lacinia diam. Duis sem lacus, placerat eu diam vitae, semper auctor sem. Quisque faucibus viverra sem id suscipit. Morbi maximus consectetur sem et aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque egestas a ligula non ornare. Donec venenatis accumsan lectus, sed egestas eros facilisis vitae. Cras auctor non tellus sollicitudin rutrum. Curabitur finibus cursus leo, et tincidunt purus dignissim a. Sed imperdiet cursus sapien nec facilisis.</p><p>Mauris volutpat euismod finibus. Praesent ipsum massa, pellentesque a aliquam at, pretium id diam. Donec vel est sed dolor blandit laoreet ut nec ipsum. Suspendisse viverra hendrerit ligula quis volutpat. Cras vestibulum ornare finibus. Nam a tincidunt odio, vitae placerat massa. Vestibulum ullamcorper nunc viverra lacus luctus, quis placerat massa vehicula. In vulputate purus lorem, eget vulputate elit pulvinar eget. Nullam blandit tellus eu suscipit accumsan. Nam orci diam, maximus sed ornare quis, vulputate vitae sapien. Vivamus faucibus quam blandit mauris blandit, a commodo arcu semper.</p><p>Nam hendrerit est metus, ut condimentum ipsum fermentum vitae. Integer placerat, neque sit amet vehicula posuere, orci lacus congue ipsum, sed ultrices tortor leo sed erat. Cras quam elit, hendrerit et nunc eget, molestie pharetra quam. Suspendisse luctus quam et faucibus imperdiet. Sed varius mauris dui, ut lacinia nisl accumsan a. Vivamus sit amet diam egestas, viverra tellus a, iaculis velit. Praesent ac tellus ac neque auctor condimentum sagittis pellentesque massa. Aenean arcu est, rutrum vitae lacus aliquam, auctor consectetur enim. Proin magna eros, imperdiet id mauris ac, malesuada tincidunt nunc. Aliquam erat volutpat.</p>','2017-02-16 20:59:55','refactoring-spring-data-project','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis blandit eros. Morbi tincidunt varius sem, quis lacinia mauris ullamcorper a. Vivamus a ipsum libero. Donec lorem diam, varius ut metus ut, commodo hendrerit nulla. Sed tellus nisl, gravida vestibulum odio ut, ullamcorper scelerisque felis. In interdum pharetra odio, non fringilla diam. Nulla vitae velit quis nisl mattis pulvinar vel a tellus. In non nibh feugiat orci tincidunt iaculis ut at ipsum. Duis ac sodales nisl. Suspendisse vitae nibh dapibus tellus suscipit porttitor eget id orci. Morbi consectetur, nunc a posuere viverra, ex felis gravida ante, quis vulputate sapien dolor nec odio. Integer pretium felis dapibus nisi luctus vulputate eget eget ipsum. Vivamus cursus mollis sollicitudin. In dapibus, quam ac elementum condimentum, lorem mi laoreet lorem, eget interdum mi orci finibus erat. Proin porta vehicula blandit. Sed posuere ante ut dictum mattis.</p>','Refactoring our Spring Data Project',1,NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_keywords`
--

DROP TABLE IF EXISTS `post_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_keywords` (
  `post_id` bigint(20) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  KEY `FK1sm0tbtev7d2wb82fhovj25lw` (`post_id`),
  CONSTRAINT `FK1sm0tbtev7d2wb82fhovj25lw` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_keywords`
--

LOCK TABLES `post_keywords` WRITE;
/*!40000 ALTER TABLE `post_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sima','Sima Simic','sima'),(2,'admin','Mika Mikic','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-16 23:24:45
