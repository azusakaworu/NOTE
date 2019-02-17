-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 11, 2019 at 03:47 AM
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
  `user_email` varchar(250) NOT NULL,
  `login_time` varchar(10) DEFAULT NULL,
  `last_login_time` varchar(10) DEFAULT NULL,
  `user_ip` varchar(15) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_name`, `user_pw`, `user_email`, `login_time`, `last_login_time`, `user_ip`) VALUES
(2, 'ling', '0000', '', '1549650483', '1549650328', ''),
(3, 'kaworu', '123', '1334809065@qq.com', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `usersystem`
--

DROP TABLE IF EXISTS `usersystem`;
CREATE TABLE IF NOT EXISTS `usersystem` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pw` varchar(10) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersystem`
--

INSERT INTO `usersystem` (`user_id`, `user_name`, `user_pw`, `user_email`) VALUES
(1, 'ling', '123', 'azusakaworu@gmail.com'),
(2, 'kaworu', '0000', '123@gmail.com'),
(3, 'dd', '111', '123@gmail.com'),
(14, 'asss', '111', 'azusakaworu@gmail.com'),
(12, 'azs', '111', 'azusakaworu@gmail.com'),
(13, 'azss', '111', 'azusakaworu@gmail.com'),
(11, 'a', '111', 'azusakaworu@gmail.com'),
(10, 'azus', '123', 'azusakaworu@gmail.com'),
(15, 'as', '111', '123@gmail.com'),
(16, 'asd', '111', 'azusakaworu@gmail.com'),
(17, 'adss', '111', '123@gmail.com'),
(18, 'waa', '111', '123@gmail.com'),
(19, 'dfff', '111', 'azusakaworu@gmail.com'),
(20, 'azza', '111', 'azusakaworu@gmail.com'),
(21, 'qww', '111', 'azusakaworu@gmail.com'),
(22, 'qwee', '111', '123@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
