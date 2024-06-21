/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.1.50-community : Database - myshop
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

insert  into `brand`(`b_id`,`b_img_path`,`b_name`) values (1,'/mystory/upload/brand/2016052811141464405291464.jpg','晨光');

/*Table structure for table `cartbean` */

DROP TABLE IF EXISTS `cartbean`;

CREATE TABLE `cartbean` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_img_path` varchar(255) DEFAULT NULL,
  `p_count` varchar(255) DEFAULT NULL,
  `p_id` varchar(255) DEFAULT NULL,
  `p_img_path` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `cartbean` */

insert  into `cartbean`(`cart_id`,`b_img_path`,`p_count`,`p_id`,`p_img_path`,`state`,`u_id`,`u_name`) values (2,'','1','1','/mystory/upload/product/2016052811201464405613363.jpg',0,'1','aaaaaa'),(3,'','1','1','/mystory/upload/product/2016052811201464405613363.jpg',0,'1','aaaaaa'),(4,'','5','1','/mystory/upload/product/2016052811201464405613363.jpg',0,'1','aaaaaa'),(5,'','5','1','/mystory/upload/product/2016052811201464405613363.jpg',0,'1','aaaaaa');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(32) DEFAULT NULL,
  `c_pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`c_id`,`c_name`,`c_pid`) values (1,'办公用品',0),(2,'办公家具',0),(3,'办公设备',0),(4,'教学器材',0),(5,'文体用品',0),(6,'商务礼品',0),(7,'五金电料',0),(8,'日用百货',0),(9,'洗化用品',0),(10,'商务礼品',0),(11,'电脑耗材',0),(12,'其他杂货',0),(14,'aaa',1),(15,'bbb',14);

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

/*Table structure for table `myorder` */

DROP TABLE IF EXISTS `myorder`;

CREATE TABLE `myorder` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_all_money` int(11) DEFAULT NULL,
  `o_count` int(11) DEFAULT NULL,
  `o_method` int(11) DEFAULT NULL,
  `o_number` varchar(255) DEFAULT NULL,
  `o_path_money` int(11) DEFAULT NULL,
  `o_state` int(11) DEFAULT NULL,
  `o_time` datetime DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `p_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `myorder` */

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
  `p_number` varchar(255) DEFAULT NULL,
  `p_search_key` varchar(255) DEFAULT NULL,
  `p_shop_price` int(11) DEFAULT NULL,
  `p_state` int(11) DEFAULT NULL,
  `p_vip_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`p_id`,`c_id`,`p_attr`,`p_b_id`,`p_click_count`,`p_description`,`p_goods_surplus`,`p_img_path`,`p_month_count`,`p_name`,`p_number`,`p_search_key`,`p_shop_price`,`p_state`,`p_vip_price`) values (1,15,'we',1,NULL,'',2130,'/mystory/upload/product/2016052811201464405613363.jpg',NULL,'we','E01234',NULL,12300,NULL,2300);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`u_id`,`u_address`,`u_email`,`u_name`,`u_passwd`,`u_phone`) values (1,NULL,'541711153@qq.com','aaaaaa','123456','15737345253'),(2,NULL,'541711153@qq.com','bbbbbb','123456','15737345253');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
