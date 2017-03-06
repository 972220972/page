/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 5.6.33 : Database - ssm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm`;

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`) values (1,'jack'),(2,'lili'),(3,'sansan'),(5,'sasa'),(6,'lala'),(7,'beibei'),(8,'mimi'),(9,'mingming'),(10,'dada'),(11,'didi'),(12,'jaja'),(13,'dede'),(14,'deli'),(15,'sa'),(16,'dwe'),(17,'ass'),(18,'dfwa'),(19,'sadsd'),(20,'xsad'),(21,'a'),(22,'d'),(23,'df'),(24,'gfds'),(25,'fdsa'),(26,'fdsa'),(27,'sadfa'),(28,'fda'),(29,'daf'),(30,'sdfa'),(31,'fdasf'),(32,'asdf'),(33,'fasdf'),(34,'asdf'),(35,'safd'),(36,'fdsa');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
