-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: news_portal
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'IT','2018-10-26 19:58:27','2018-10-26 19:58:27'),(2,'World','2018-10-26 19:58:27','2018-10-26 19:58:27'),(3,'Ukraine','2018-10-26 19:58:27','2018-10-26 19:58:27'),(4,'Replication Test','2018-11-12 19:08:22','2018-11-12 19:08:22');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
                                    `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                    PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20181026164742'),('20181026164751'),('20181105183254');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
                      `id` int(11) NOT NULL AUTO_INCREMENT,
                      `category_id` int(11) NOT NULL,
                      `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                      `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
                      `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                      `created_at` datetime NOT NULL,
                      `updated_at` datetime NOT NULL,
                      PRIMARY KEY (`id`),
                      KEY `fk_post_category_id` (`category_id`),
                      CONSTRAINT `fk_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,'Sint voluptatem excepturi consequatur dolores enim.','Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui. Quo cum ut consequatur dolorem. Sit voluptatum et maiores totam sunt non. Praesentium accusantium eveniet tenetur blanditiis. Est qui tempora ipsam voluptatem qui.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(2,3,'Excepturi non asperiores possimus.','Nesciunt dicta ea quia id et. Aliquid cum explicabo rerum. Minus laudantium eaque deserunt. Molestias iure ex et eos iusto dolor ad. Culpa vero natus quidem fugit sapiente. Sequi aut totam nobis.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(3,1,'Quos corrupti non ad nihil repellendus error in molestiae.','Natus velit rerum est et. Corporis et et dicta quis excepturi. Corrupti veniam asperiores et totam. Culpa in eum vel ducimus mollitia.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(4,2,'Aliquid harum tempora possimus aperiam eos fugiat.','Recusandae praesentium et dolores. Delectus inventore vel at molestiae voluptatem.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(5,2,'Quae quis illo autem sequi sunt excepturi ut.','Temporibus deserunt tempora eveniet ipsa. Occaecati qui harum quos. Aut molestias molestiae cumque ad aut ut. Est voluptas cum aut quidem facere dolor. Incidunt dolorem commodi veniam distinctio qui.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(6,1,'Aut labore sint corporis placeat explicabo qui.','Magni ea rerum illo accusantium exercitationem vero maxime neque. Quia pariatur mollitia soluta totam ea aperiam. Id aliquam deleniti autem. Fugiat earum tenetur consectetur.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(7,2,'Voluptas nulla iusto magni aliquid sed ipsa neque temporibus.','Sit quia quam aut repellendus enim. Voluptatem eveniet dolorum aut unde iste. Reiciendis pariatur iusto aliquid veniam tempora itaque ea. Omnis ea et ex quae in voluptates voluptas tempora.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(8,3,'Sunt est eos quisquam.','Nam molestias et enim. Minus eum error alias quis. Dolores minima eum dolorem eos reiciendis.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(9,3,'Blanditiis et ea quam ratione.','Perspiciatis aut assumenda molestiae ab dolore maxime. Dolor quasi quas rem vel. Molestiae deserunt nulla ex maxime.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(10,1,'Est neque hic ab et numquam enim et.','Atque nemo ut minus mollitia consequatur. Illum nulla dolor odio ullam similique hic odit. Ea ut vero quam quisquam. Non voluptas voluptas voluptatem doloribus reprehenderit soluta cumque.',NULL,'2018-10-26 20:54:55','2018-10-26 20:54:55'),(11,1,'Post created by API','This is test article...',NULL,'2018-10-29 21:45:48','2018-10-29 21:45:48');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
                      `id` int(11) NOT NULL AUTO_INCREMENT,
                      `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                      `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
                      `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                      `is_active` tinyint(1) NOT NULL DEFAULT '1',
                      PRIMARY KEY (`id`),
                      UNIQUE KEY `unq_user_username` (`username`),
                      UNIQUE KEY `unq_user_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@news-portal.com','$2y$13$CPDpP9lGg0B7wZnF9Rx/beJbsPvszs4i18AJge4J8eK7XRSo4QrzK',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-12 19:14:33