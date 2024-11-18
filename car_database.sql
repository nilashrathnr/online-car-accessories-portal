-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2024 at 06:57 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktb`
--

DROP TABLE IF EXISTS `booktb`;
CREATE TABLE IF NOT EXISTS `booktb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `UserName` varchar(250) NOT NULL,
  `Bookid` varchar(250) NOT NULL,
  `Qty` varchar(250) NOT NULL,
  `Amount` varchar(250) NOT NULL,
  `CardName` varchar(250) NOT NULL,
  `CardNo` varchar(250) NOT NULL,
  `CvNo` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carttb`
--

DROP TABLE IF EXISTS `carttb`;
CREATE TABLE IF NOT EXISTS `carttb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `UserName` varchar(250) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Qty` decimal(18,2) NOT NULL,
  `Tprice` decimal(28,2) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(250) NOT NULL,
  `Bookid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `protb`
--

DROP TABLE IF EXISTS `protb`;
CREATE TABLE IF NOT EXISTS `protb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Qty` varchar(250) NOT NULL,
  `Info` varchar(500) NOT NULL,
  `Image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protb`
--

INSERT INTO `protb` (`id`, `ProductName`, `ProductType`, `Price`, `Qty`, `Info`, `Image`) VALUES
(4, 'Ceat Tyre', 'tyre', '4000', '20', '14 inch Ceat GRIPP LN car tyre.', '8264.png'),
(5, 'Sony Audio', 'Audio System', '700', '20', 'Audio System for car ', '6080.png'),
(6, 'Sony base audio', 'Audio System', '3500', '40', 'Sony audio system with touch features.', '1141.png'),
(7, 'Car Cover', 'Body Cover', '1000', '20', 'Body cover for maruti swift', '1212.png'),
(8, 'foot mat', 'Colour Mats', '2000', '40', 'Foot mats with customized colors', '7936.png'),
(9, 'Godrej Freshner', 'Freshner', '200', '50', 'Godrej freshner  for car available in various flavours.', '3219.png'),
(10, 'tolo Seat cover', 'Seat Covers', '2080', '70', 'Seat covers at customizable colors', '8429.png'),
(11, 'rise sun film', 'SunControl Film', '900', '45', 'Sun film from protection against the radiation.', '8387.png');

-- --------------------------------------------------------

--
-- Table structure for table `regtb`
--

DROP TABLE IF EXISTS `regtb`;
CREATE TABLE IF NOT EXISTS `regtb` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
