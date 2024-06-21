/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.1.72-community : Database - myshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myshop`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(32) DEFAULT NULL,
  `a_passwd` varchar(32) DEFAULT NULL,
  `a_permissions` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_img_path` varchar(255) DEFAULT NULL,
  `b_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(32) DEFAULT NULL,
  `c_pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`c_id`,`c_name`,`c_pid`) values (1,'办公用品',0),(2,'办公家具',0),(3,'办公设备',0),(4,'教学器材',0),(5,'文体用品',0),(6,'商务礼品',0),(7,'五金电料',0),(8,'日用百货',0),(9,'洗化用品',0),(10,'商务礼品',0),(11,'电脑耗材',0),(12,'其他杂货',0),(13,'aaaaaaa',1),(14,'bbbbbb',1),(15,'ccccc',1),(16,'qqqq',13),(17,'wwww',13),(18,'eeee',14),(19,'rrrr',14),(20,'tttt',15),(21,'yyyy',15);

/*Table structure for table `evaluate` */

DROP TABLE IF EXISTS `evaluate`;

CREATE TABLE `evaluate` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_content` varchar(255) DEFAULT NULL,
  `e_is_good` tinyint(1) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `evaluate` */

/*Table structure for table `goodscart` */

DROP TABLE IF EXISTS `goodscart`;

CREATE TABLE `goodscart` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_count` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goodscart` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `p_attr` varchar(255) DEFAULT NULL,
  `p_b_id` int(11) DEFAULT NULL,
  `p_click_count` int(11) DEFAULT NULL,
  `p_description` varchar(255) DEFAULT NULL,
  `p_goods_surplus` int(11) DEFAULT NULL,
  `p_img_path` varchar(255) DEFAULT NULL,
  `p_month_count` int(11) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_search_key` varchar(255) DEFAULT NULL,
  `p_shop_price` int(11) DEFAULT NULL,
  `p_state` int(11) DEFAULT NULL,
  `p_vip_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`p_id`,`c_id`,`p_attr`,`p_b_id`,`p_click_count`,`p_description`,`p_goods_surplus`,`p_img_path`,`p_month_count`,`p_name`,`p_search_key`,`p_shop_price`,`p_state`,`p_vip_price`) values (1,13,'aa',0,23,'dfyhfd',456,'fgj',567,'aaa','ujfgj',56,1,435),(2,13,'esdtg',0,567,NULL,678,NULL,NULL,'bb',NULL,546,2,35),(3,13,NULL,0,568,NULL,456,NULL,NULL,'cc',NULL,657,3,546),(4,13,NULL,0,568,NULL,34,NULL,NULL,'dd',NULL,567,4,4),(5,14,NULL,0,568,NULL,436,NULL,NULL,'eee',NULL,56,1,45),(6,14,NULL,0,68,NULL,457,NULL,NULL,'ff',NULL,57,2,32),(7,15,NULL,0,56,NULL,67,NULL,NULL,'gg',NULL,34,3,43),(8,15,NULL,0,456,NULL,679,NULL,NULL,'hh',NULL,567,4,465),(9,15,NULL,0,56,NULL,6,NULL,NULL,'ii',NULL,35,3,3),(10,15,NULL,0,678,NULL,4,NULL,NULL,'jj',NULL,67,2,44);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_address` varchar(255) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `u_passwd` varchar(255) DEFAULT NULL,
  `u_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
