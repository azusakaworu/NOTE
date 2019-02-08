/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.5.53 : Database - db_r1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_r1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_r1`;

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_pw` varchar(50) CHARACTER SET utf8 NOT NULL,
  `login_time` varchar(10) DEFAULT NULL COMMENT '登录时间',
  `last_login_time` varchar(10) DEFAULT NULL COMMENT '上次登录时间',
  `user_ip` varchar(15) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`user_id`,`user_name`,`user_pw`,`login_time`,`last_login_time`,`user_ip`) values 
(2,'dd','123456','1549267039','1549267017','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
