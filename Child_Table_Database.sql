-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2021 at 04:37 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestofgraph`
--
CREATE DATABASE IF NOT EXISTS `bestofgraph` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bestofgraph`;

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
CREATE TABLE IF NOT EXISTS `child` (
  `ChildID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `DateOfBirth` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  PRIMARY KEY (`ChildID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`ChildID`, `Name`, `Surname`, `Age`, `DateOfBirth`, `Gender`) VALUES
('9012240795084', 'Phelokazi', 'Mzukwa', 31, '19901224', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
CREATE TABLE IF NOT EXISTS `parent` (
  `ParentId` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Occupation` varchar(50) NOT NULL,
  `Cellno` varchar(50) NOT NULL,
  `HomeAddress` varchar(50) NOT NULL,
  PRIMARY KEY (`ParentId`),
  UNIQUE KEY `Cellno` (`Cellno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`ParentId`, `Name`, `Surname`, `Occupation`, `Cellno`, `HomeAddress`) VALUES
('9012240795084', 'Phelokazi', 'Mzukwa', 'Developer', '0788246918', '11940 Lambatha Street Philippi');
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testdb`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
