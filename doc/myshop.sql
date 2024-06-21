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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

insert  into `brand`(`b_id`,`b_img_path`,`b_name`) values (1,'/mystory/upload/brand/2016052308271463963235421.png','齐心办公'),(2,'/mystory/upload/brand/2016052308271463963261913.png','casio'),(3,'/mystory/upload/brand/2016052308281463963290029.png','爱好'),(4,'/mystory/upload/brand/2016052308281463963319848.png','晨光'),(5,'/mystory/upload/brand/2016052308301463963429415.png','得力文具'),(6,'/mystory/upload/brand/2016052308301463963417987.png','富强'),(7,'/mystory/upload/brand/2016052308301463963405716.png','公牛');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(32) DEFAULT NULL,
  `c_pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`c_id`,`c_name`,`c_pid`) values (1,'办公用品',0),(2,'办公家具',0),(3,'办公设备',0),(4,'教学器材',0),(5,'文体用品',0),(6,'商务礼品',0),(7,'五金电料',0),(8,'日用百货',0),(9,'洗化用品',0),(10,'商务礼品',0),(11,'电脑耗材',0),(12,'其他杂货',0),(22,'钢笔',1),(23,'中性笔',1),(24,'中性笔芯',1),(25,'圆珠笔',1),(26,'粉笔',22),(27,'记号笔',22),(28,'马克笔',23),(29,'计算器',2),(30,'绘图纸',2),(31,'书写板夹',30);

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`p_id`,`c_id`,`p_attr`,`p_b_id`,`p_click_count`,`p_description`,`p_goods_surplus`,`p_img_path`,`p_month_count`,`p_name`,`p_search_key`,`p_shop_price`,`p_state`,`p_vip_price`) values (11,31,'计算器',1,NULL,'',34,'/mystory/upload/product/2016052308391463963949340.jpg',NULL,'计算器',NULL,4500,NULL,2300),(12,26,'计算器',2,NULL,'',32,'/mystory/upload/product/2016052308391463963996542.jpg',NULL,'计算器',NULL,3200,NULL,43400),(13,26,'计算器',3,NULL,'',45,'/mystory/upload/product/2016052308401463964035091.jpg',NULL,'计算器',NULL,2100,NULL,2300),(14,27,'洗发水',4,NULL,'',34,'/mystory/upload/product/2016052308411463964118720.jpg',NULL,'洗发水',NULL,3600,NULL,3400),(15,27,'笔记本',5,NULL,'',4,'/mystory/upload/product/2016052308431463964189842.png',NULL,'笔记本',NULL,5500,NULL,5400),(16,27,'笔记本',6,NULL,'',435,'/mystory/upload/product/2016052308431463964218660.jpg',NULL,'笔记本',NULL,2300,NULL,4500),(17,27,'笔记本',7,NULL,'',45,'/mystory/upload/product/2016052308441463964252693.jpg',NULL,'笔记本',NULL,23400,NULL,43500),(18,27,'笔记本',1,NULL,'',454,'/mystory/upload/product/2016052308441463964282174.jpg',NULL,'笔记本',NULL,23400,NULL,5400),(19,27,'笔记本',2,NULL,'',45,'/mystory/upload/product/2016052308451463964311166.jpg',NULL,'笔记本',NULL,2300,NULL,4500),(20,27,'笔记本',3,NULL,'',435,'/mystory/upload/product/2016052308451463964336767.jpg',NULL,'笔记本',NULL,2300,NULL,4500),(21,28,'笔记本',5,NULL,'',345,'/mystory/upload/product/2016052308461463964367517.jpg',NULL,'笔记本',NULL,23400,NULL,43500),(22,28,'笔记本',0,NULL,'',67,'/mystory/upload/product/2016052308461463964395366.jpg',NULL,'笔记本',NULL,2300,NULL,5600),(23,28,'打印机',6,NULL,'',345,'/mystory/upload/product/2016052308471463964449270.jpg',NULL,'打印机',NULL,234500,NULL,346500),(24,28,'打印机',5,NULL,'',346,'/mystory/upload/product/2016052308471463964475544.jpg',NULL,'打印机',NULL,23400,NULL,43600),(25,28,'打印机',7,NULL,'',436,'/mystory/upload/product/2016052308481463964506027.jpg',NULL,'打印机',NULL,23400,NULL,43600),(26,28,'钢笔',6,NULL,'',435,'/mystory/upload/product/2016052308491463964540639.jpg',NULL,'钢笔',NULL,54600,NULL,34500);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`u_id`,`u_address`,`u_email`,`u_name`,`u_passwd`,`u_phone`) values (1,NULL,'541711153@qq.com','aaaaaa','123456','15737345253');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
