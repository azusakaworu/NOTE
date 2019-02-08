-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 05, 2019 at 03:06 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dangdang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_pw` varchar(50) CHARACTER SET utf8 NOT NULL,
  `login_time` varchar(10) DEFAULT NULL,
  `last_login_time` varchar(10) DEFAULT NULL,
  `user_ip` varchar(15) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_name`, `user_pw`, `login_time`, `last_login_time`, `user_ip`) VALUES
(2, 'ling', '0000', '1549335707', '1549334423', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
