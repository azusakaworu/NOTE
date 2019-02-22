-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 10, 2018 at 12:49 AM
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
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_works`
--

DROP TABLE IF EXISTS `tbl_works`;
CREATE TABLE IF NOT EXISTS `tbl_works` (
  `works_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `works_name` varchar(125) NOT NULL,
  `works_category` varchar(75) NOT NULL,
  `works_cover` varchar(250) NOT NULL,
  `works_url` varchar(250) NOT NULL,
  PRIMARY KEY (`works_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_works`
--

INSERT INTO `tbl_works` (`works_id`, `works_name`, `works_category`, `works_cover`, `works_url`) VALUES
(1, 'Judy Carpenter Business Card', 'Branding', 'work_card.jpg', 'work1.html'),
(2, 'Skippy Peanut Butter Stout', 'Branding', 'work_beer.jpg', 'work2.html'),
(3, 'Aqua Pomus Infuser Bottle', 'Branding and 3D', 'work_infuser.jpg', 'work3.html'),
(4, 'The Best Pizza Price', 'UI and UX', 'work_pizza.jpg', 'work4.html'),
(5, 'Volt Energy Drink', 'Branding', 'work_energy.jpg', 'work5.html'),
(6, 'Eco Culinarius', 'Branding', 'work_eco.jpg', 'work6.html');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
