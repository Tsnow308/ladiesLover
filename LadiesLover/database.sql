/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.21-log : Database - ladieslover
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ladieslover` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ladieslover`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `description` varchar(60) NOT NULL COMMENT '地址描述',
  `postcode` varchar(6) NOT NULL COMMENT '邮编',
  `phone_num` varchar(11) NOT NULL COMMENT '电话',
  `user_id` int(11) NOT NULL COMMENT '所属用户id',
  PRIMARY KEY (`id`),
  KEY `FK_address_user_id_idx` (`user_id`),
  CONSTRAINT `FK_address_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '所属用户',
  `total_price` int(11) NOT NULL COMMENT '商品总价',
  PRIMARY KEY (`id`),
  KEY `FK_cart_user_id_idx` (`user_id`),
  CONSTRAINT `FK_cart_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cart` */

/*Table structure for table `cart_goods` */

DROP TABLE IF EXISTS `cart_goods`;

CREATE TABLE `cart_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `cart_id` int(11) NOT NULL COMMENT '购物车id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `amount` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  PRIMARY KEY (`id`),
  KEY `FK_cart_goods_cart_id_idx` (`cart_id`),
  KEY `FK_cart_goods_goods_id_idx` (`goods_id`),
  CONSTRAINT `FK_cart_goods_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cart_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cart_goods` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(10) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values (1,'男鞋'),(2,'女鞋'),(3,'运动鞋'),(4,'休闲鞋'),(5,'土豪版'),(6,'穷逼版');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(45) NOT NULL COMMENT '商品名称',
  `price` int(11) NOT NULL COMMENT '价格',
  `storage` int(11) NOT NULL COMMENT '库存',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `img_address` varchar(45) DEFAULT NULL COMMENT '图片地址',
  `category1_id` int(11) DEFAULT NULL COMMENT '类别1',
  `category2_id` int(11) DEFAULT NULL COMMENT '类别2',
  `category3_id` int(11) DEFAULT NULL COMMENT '类别3',
  PRIMARY KEY (`id`),
  KEY `FK_category2_id` (`category2_id`),
  KEY `FK_category3_id` (`category3_id`),
  KEY `FK_category1_id` (`category1_id`),
  CONSTRAINT `FK_category1_id` FOREIGN KEY (`category1_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_category2_id` FOREIGN KEY (`category2_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_category3_id` FOREIGN KEY (`category3_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`name`,`price`,`storage`,`description`,`img_address`,`category1_id`,`category2_id`,`category3_id`) values (1,'鞋子1',50,10,'一双鞋子1',NULL,1,3,5),(2,'鞋子2',50,11,'一双鞋子2',NULL,1,3,6),(3,'鞋子3',40,12,'又一双鞋子',NULL,1,4,5),(4,'鞋子4',40,32,'又一双鞋子4',NULL,2,4,6),(5,'鞋子5',40,44,'又一双鞋子5',NULL,2,3,6),(6,'鞋子6',40,23,'又一双鞋子6',NULL,2,4,6),(7,'鞋子7',40,54,'又一双鞋子7',NULL,1,3,6),(8,'鞋子8',40,67,'又一双鞋子8',NULL,1,4,5);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '所属用户id',
  `address_id` int(11) NOT NULL COMMENT '地址id',
  `total_price` float NOT NULL COMMENT '订单商品总价',
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态',
  PRIMARY KEY (`id`),
  KEY `FK_order_user_id_idx` (`user_id`),
  KEY `FK_order_address_id_idx` (`address_id`),
  CONSTRAINT `FK_order_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_order_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `order_goods` */

DROP TABLE IF EXISTS `order_goods`;

CREATE TABLE `order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `amount` int(11) NOT NULL COMMENT '商品数量',
  `goods_size` int(5) NOT NULL COMMENT '商品尺寸',
  `goods_color` varchar(5) NOT NULL COMMENT '商品颜色',
  PRIMARY KEY (`id`),
  KEY `FK_order_goods_order_id_idx` (`order_id`),
  KEY `FK_order_goods_goods_id_idx` (`goods_id`),
  CONSTRAINT `FK_order_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_order_goods_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_goods` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `phone_num` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(30) NOT NULL COMMENT '邮件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`phone_num`,`email`) values (1,'a@a.com','111',NULL,'a@a.com'),(2,'cyf@a.com','123',NULL,'cyf@a.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
