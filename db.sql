/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - block_chain
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`block_chain` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `block_chain`;

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`username`,`password`) values ('cloud','cloud');
insert  into `cloud`(`username`,`password`) values ('cs1','cs1');
insert  into `cloud`(`username`,`password`) values ('cs2','cs2');
insert  into `cloud`(`username`,`password`) values ('cs3','cs3');

/*Table structure for table `cview` */

DROP TABLE IF EXISTS `cview`;

CREATE TABLE `cview` (
  `filename` varchar(100) NOT NULL,
  `cat` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `hkey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cview` */

insert  into `cview`(`filename`,`cat`,`owner`,`skey`,`hkey`) values ('new.jpg','Developer','shiva','-1805144964','NXPouRZI/wuRgqz4VHMSJg==');

/*Table structure for table `keymanager` */

DROP TABLE IF EXISTS `keymanager`;

CREATE TABLE `keymanager` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `keymanager` */

insert  into `keymanager`(`username`,`password`) values ('manager','manager');

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `manager` */

insert  into `manager`(`username`,`password`) values ('manager','manager');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `skey` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `news` */

insert  into `news`(`skey`) values ('NXPouRZI/wuRgqz4VHMSJg==');
insert  into `news`(`skey`) values ('efeoEtE6IJTflDcSuP8btg==');

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert  into `owner`(`username`,`password`,`email`,`gender`,`address`,`mobile`,`skey`,`status`) values ('shiva','shiva','shivakrish5573@gmail.com','male','malaysian township, KPHB\r\nnear D-Mart','08121893257','28033','sent');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `hkey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cloud` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`id`,`filename`,`email`,`owner`,`cat`,`skey`,`hkey`,`status`,`cloud`) values (8,'new.jpg','shivakrish573@gmail.com','shiva','Developer','NXPouRZI/wuRgqz4VHMSJg==','-1805144964','pending','Verified');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `filename` varchar(100) NOT NULL,
  `cat` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `hkey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`filename`,`cat`,`owner`,`skey`,`hkey`) values ('new.jpg','Developer','shiva','NXPouRZI/wuRgqz4VHMSJg==','-1805144964');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` text,
  `mobile` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`email`,`gender`,`address`,`mobile`,`status`,`cat`) values ('krish','krish','shivakrish573@gmail.com','MALE','hyd','08121893257','waiting','Developer');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
