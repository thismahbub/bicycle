-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 14, 2017 at 07:51 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bicycle`
--
CREATE DATABASE IF NOT EXISTS `bicycle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bicycle`;

-- --------------------------------------------------------

--
-- Table structure for table `bicycle_detail`
--

CREATE TABLE IF NOT EXISTS `bicycle_detail` (
  `Bicycle_Detail_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Make` varchar(20) NOT NULL,
  `Model` varchar(15) DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Frame_Size` int(10) unsigned NOT NULL,
  `Wheel_Size` int(10) unsigned NOT NULL,
  `Colour` varchar(10) DEFAULT NULL,
  `Number_Of_Gears` int(10) unsigned NOT NULL,
  `Basic_Price` int(10) unsigned NOT NULL,
  `Retailer_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Bicycle_Detail_ID`),
  KEY `Retailer_ID` (`Retailer_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bicycle_detail`
--

INSERT INTO `bicycle_detail` (`Bicycle_Detail_ID`, `Make`, `Model`, `Type`, `Frame_Size`, `Wheel_Size`, `Colour`, `Number_Of_Gears`, `Basic_Price`, `Retailer_ID`) VALUES
(1, 'Hero', 'Akca- 230', 'Renger', 24, 28, 'Red', 4, 2200, 3),
(2, 'Hero', 'Akca- 230', 'Racing Heart', 26, 28, 'Black', 5, 3000, 3),
(3, 'Hero', 'Akca- 230', 'Five Star', 25, 29, 'Silver', 5, 5000, 3),
(4, 'Yamaha', 'Akri- 230', 'Five Star', 25, 28, 'Pink', 6, 5500, 1),
(5, 'Yamaha', 'Akri- 230', 'Renger', 26, 29, 'Black', 4, 3075, 1),
(6, 'Mahindra', 'amma-2011', 'Renger', 24, 26, 'Pink', 5, 4000, 1),
(7, 'Mahindra', 'amma-2011', 'Five Star', 24, 25, 'Silver', 6, 4500, 2),
(8, 'Mahindra', 'amma-2011', 'Racing Heart', 27, 29, 'Green', 4, 3900, 2),
(9, 'Suzoki', 'eMNA-2010', 'Five Star', 26, 27, 'Pink', 6, 5600, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bicycle_option`
--

CREATE TABLE IF NOT EXISTS `bicycle_option` (
  `Bicycle_Option_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Retailer_ID` int(10) unsigned NOT NULL,
  `Name_Of_Option` varchar(30) NOT NULL,
  `Deacription_Of_Option` varchar(100) NOT NULL,
  `Price_Of_Option` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Bicycle_Option_ID`),
  KEY `Retailer_ID_1` (`Retailer_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `bicycle_option`
--

INSERT INTO `bicycle_option` (`Bicycle_Option_ID`, `Retailer_ID`, `Name_Of_Option`, `Deacription_Of_Option`, `Price_Of_Option`) VALUES
(1, 1, 'Tyres', 'It use to cover wheel tube', 120),
(2, 1, 'Wheel', 'Its is oval and without wheel cycle can''t Move forward', 200),
(3, 1, 'Rims', 'Its made by Steel', 110),
(4, 1, 'Gears', 'Its used to control speed', 80),
(5, 1, 'Lights', 'Its used infont and back part of the cycle', 60),
(6, 2, 'Tyres', 'Its is made by rubber', 118),
(7, 2, 'wheel', 'Its made by dunlop', 199),
(8, 2, 'rims', 'Its made made in japan', 111),
(9, 2, 'Gears', 'it use for make faster the cycle', 85),
(10, 2, 'Lights', 'use for shine', 66),
(11, 3, 'Tyres', 'Made In Korea', 121),
(12, 3, 'Wheel', 'Raceing wheel are available here', 205),
(13, 3, 'Rims', 'Breaking Hearts rims are available here', 115),
(14, 3, 'Gears', 'Metal Solid Gears are available here', 90),
(15, 3, 'Lights', 'Original Japanis, korean, chinis lights are available here', 70),
(16, 4, 'Tyres', 'Life Time Grantee is available here only for give to ten years boys', 66);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `username` varchar(20) NOT NULL,
  `interests` varchar(45) NOT NULL,
  `comments` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(8) NOT NULL,
  `password` varchar(10) NOT NULL,
  `Member_Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `level` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `Member_Name`, `Email`, `level`) VALUES
('ahmed', 'diit', 'Md. Shamsuddin Ahmed', 'ahmed@ahmed.com', 'user'),
('alam', 'diit1234', 'Md. Mahbub Alam', 'alam@gmail.com', 'user'),
('badon', 'diit', 'Md. Badon', 'badon@ymail.com', 'user'),
('root', '1234', 'Administrator', 'admin@bicycle.com', 'admin'),
('tapu', '1111', 'Md. Tapu', 'tapu@yahoo.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `retailer`
--

CREATE TABLE IF NOT EXISTS `retailer` (
  `Retailer_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name_Of_Retailer` varchar(20) NOT NULL,
  `Postal_Address` varchar(50) NOT NULL,
  `Email_Address` varchar(20) NOT NULL,
  `Phone_Number` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Retailer_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `retailer`
--

INSERT INTO `retailer` (`Retailer_ID`, `Name_Of_Retailer`, `Postal_Address`, `Email_Address`, `Phone_Number`) VALUES
(1, 'Md. Porimol', 'Dhaka- 1430, Bisic, Bangladesh', 'porimol@bicycle.com', 1556989898),
(2, 'Md. Shohel', 'Dhaka- 1430, Bisic, Bangladesh', 'shohel@bicycle.com', 1190678910),
(3, 'Md. Mahbub Alam', 'Dhaka - 1100, Dhanmondi, BD', 'alam8899@gmail.com', 1736671804),
(4, 'Md. Amran', 'Khashpara, Bisic dhaka- 1430', 'alam5131@ovi.com', 1556989805),
(5, 'Md. Alamin', 'Dhanmondi, Dhaka- 1000, BD', 'alamin@yahoo.com', 1911889383),
(6, 'Md. Iffat Ara Ema', 'Kanchpur, Narayangonj, Dhaka', 'mafia5131@yahoo.com', 1911889384);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bicycle_detail`
--
ALTER TABLE `bicycle_detail`
  ADD CONSTRAINT `FK_bicycle_detail_retailer_id` FOREIGN KEY (`Retailer_ID`) REFERENCES `retailer` (`Retailer_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bicycle_option`
--
ALTER TABLE `bicycle_option`
  ADD CONSTRAINT `Retailer_ID_1` FOREIGN KEY (`Retailer_ID`) REFERENCES `retailer` (`Retailer_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

