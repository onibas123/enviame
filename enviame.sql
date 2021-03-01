/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.14-MariaDB : Database - enviame
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`enviame` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `enviame`;

/*Table structure for table `continents` */

DROP TABLE IF EXISTS `continents`;

CREATE TABLE `continents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anual_adjustment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `continents` */

insert  into `continents`(`id`,`name`,`anual_adjustment`) values (1,'América',4),(2,'Europa',5),(3,'Asia',6),(4,'Oceanía',6),(5,'Africa',5);

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `continent_id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`continent_id`,`name`) values (1,1,'Chile'),(2,1,'Argentina'),(3,1,'Canadá'),(4,1,'Colombia'),(5,2,'Alemania'),(6,2,'Francia'),(7,2,'España'),(8,2,'Grecia'),(9,3,'India'),(10,3,'Japón'),(11,3,'Corea del Sur'),(12,4,'Australia');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employees` */

insert  into `employees`(`id`,`country_id`,`first_name`,`last_name`,`salary`) values (1,1,'Pedro','Rojas',2080),(2,2,'Luciano','Alessandri',2184),(3,3,'John','Carter',3172),(4,4,'Alejandra','Benavides',2236),(5,5,'Moritz','Baring',6000),(6,6,'Thierry','Henry',5900),(7,7,'Sergio','Ramos',6200),(8,8,'Nikoleta','Kyriakopulu',7000),(9,9,'Aamir','Khan',2120),(10,10,'Takumi','Fujiwara',5300),(11,11,'Heung-min','Son',5100),(12,12,'Peter','Johnson',6100);

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(12) NOT NULL,
  `razon` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

/*Data for the table `empresa` */

insert  into `empresa`(`id`,`rut`,`razon`) values (1,'1-3','test3'),(2,'7','O\'Connell-Ferry'),(3,'8','Fadel PLC'),(4,'2','Smitham-Herman'),(5,'9','Weimann PLC'),(6,'9','Bauch, Paucek and Witting'),(7,'5','King PLC'),(8,'3','Macejkovic Inc'),(9,'1','Borer and Sons'),(10,'5','Klocko-Casper'),(11,'5','Brown-Simonis'),(12,'1','Gutmann Group'),(13,'1','Windler, McLaughlin and Dare'),(14,'5','Von Group'),(15,'9','Zieme Group'),(16,'3','Gaylord, Lueilwitz and Ratke'),(17,'3','Ebert Ltd'),(18,'5','Schmidt PLC'),(19,'4','Paucek, Strosin and Wisozk'),(20,'4','Friesen, Larkin and Grady'),(21,'1','Mitchell, Watsica and Dicki'),(22,'2','Medhurst Inc'),(23,'3','Borer LLC'),(24,'4','Maggio, Abbott and Rath'),(25,'9','Huel Group'),(26,'6','Howe-Gulgowski'),(27,'4','Beatty, Koss and Hickle'),(28,'3','Koss, Willms and Hagenes'),(29,'5','Hane Inc'),(30,'8','Kovacek Ltd'),(31,'3','Kshlerin, Donnelly and Lindgren'),(32,'3','Marvin, Rohan and Bartoletti'),(33,'5','Kuhlman and Sons'),(34,'7','Tremblay PLC'),(35,'2','Lowe PLC'),(36,'6','Macejkovic, Rosenbaum and Cummerata'),(37,'6','Pacocha, Ernser and Wyman'),(38,'4','Deckow-Rice'),(39,'6','Kozey, Lesch and Schamberger'),(40,'1','Huel Ltd'),(41,'8','Heller, Kuhlman and Koepp'),(42,'4','Olson, Hamill and Marquardt'),(43,'4','Osinski, Leuschke and Schaefer'),(44,'6','Willms, Ryan and Bergnaum'),(45,'7','Adams, Smitham and Erdman'),(46,'7','Hodkiewicz, Harvey and Bradtke'),(47,'8','Stamm-Kohler'),(48,'1','Frami-Little'),(49,'7','Batz, Bosco and Cummings'),(50,'2','Lueilwitz-Wunsch'),(51,'8','Mosciski Inc'),(52,'4','Klocko-Doyle'),(53,'9','Kreiger, Bednar and Tillman'),(54,'3','Hills-Bosco'),(55,'3','Murazik, Hand and Heaney'),(56,'5','Bauch, VonRueden and Bahringer'),(57,'1','O\'Conner, Mitchell and Kuhic'),(58,'2','Ward, Sporer and Rice'),(59,'7','Ondricka-Pfeffer'),(60,'3','Marks PLC'),(61,'9','Rodriguez, Prohaska and Zulauf'),(62,'6','Casper, Feeney and McLaughlin'),(63,'3','Rau, Grant and Kuphal'),(64,'5','Zboncak-Ledner'),(65,'6','Cassin-Schowalter'),(66,'5','Hermann-Quitzon'),(67,'8','Schinner, Douglas and Fadel'),(68,'1','Considine Group'),(69,'7','Zboncak-Schmitt'),(70,'8','Jerde, Langworth and Thiel'),(71,'3','Huels, Nader and Reilly'),(72,'9','Stoltenberg-Gottlieb'),(73,'4','Lind Inc'),(74,'8','Pouros, Doyle and Christiansen'),(75,'2','Hudson, Gulgowski and Moore'),(76,'4','Reichel, Simonis and Reichert'),(77,'9','Lesch Group'),(78,'3','Donnelly, Miller and Hoppe'),(79,'9','Zulauf, Rowe and Weimann'),(80,'1','Ullrich, Lubowitz and Terry'),(81,'4','Wiza, Bartoletti and Ritchie'),(82,'3','McKenzie, Roberts and Moore'),(83,'3','Torphy, Paucek and Jenkins'),(84,'9','Lynch, Labadie and Mertz'),(85,'6','Jakubowski, Blanda and Lakin'),(86,'9','Turcotte, Schuster and McKenzie'),(87,'8','Braun, Bartoletti and Gusikowski'),(88,'2','Koch, Lehner and Langosh'),(89,'3','Graham LLC'),(90,'4','Von, Marks and Morissette'),(91,'2','Dicki, Stoltenberg and Berge'),(92,'7','Schumm-Hoeger'),(93,'1','Schmidt-McKenzie'),(94,'4','Parker-Stokes'),(95,'7','Bartell, Metz and Cremin'),(96,'2','Watsica, O\'Reilly and Denesik'),(97,'2','Gusikowski PLC'),(98,'5','Miller, Feil and Connelly'),(99,'3','DuBuque, Homenick and Veum'),(101,'1-1','test'),(102,'1-2','test2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
