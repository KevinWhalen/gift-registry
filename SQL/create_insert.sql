-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2013 at 10:10 PM
-- Server version: 5.1.67-log
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vstepona`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE IF NOT EXISTS `Address` (
  `Location_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Location_Name` varchar(15) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Street_Name` varchar(20) DEFAULT NULL,
  `Street_Number` decimal(7,0) DEFAULT NULL,
  `Street_Ext` varchar(20) DEFAULT NULL,
  `State` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Location_ID`),
  KEY `Find_Address` (`Location_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`Location_ID`, `Location_Name`, `City`, `Street_Name`, `Street_Number`, `Street_Ext`, `State`) VALUES
(1, 'Home', 'Cleveland', 'Glenside', '93', 'Brunswick Circle', 'Ohio'),
(2, 'Home', 'Cleveland', 'Glenside', '2697', 'Brunswick Circle', 'Ohio'),
(3, 'Home', 'Cleveland', 'Glenside', '26983', 'Brunswick Circle', 'Ohio'),
(4, 'Work', 'Toledo', 'Sterns', '26993', 'Brunswick Circle', 'Ohio'),
(5, 'Home', 'Cleveland', 'Glenside', '26789', 'Berry Circle', 'Maine');

-- --------------------------------------------------------

--
-- Table structure for table `Contact_Info`
--

CREATE TABLE IF NOT EXISTS `Contact_Info` (
  `User_ID` int(11) NOT NULL,
  `Location_ID` int(11) DEFAULT NULL,
  `Phone_Num` varchar(15) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  KEY `Find_Contact_Info` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Contact_Info`
--

INSERT INTO `Contact_Info` (`User_ID`, `Location_ID`, `Phone_Num`, `Email`) VALUES
(1, 1, '440-568-9124', 'bill10@cox.net'),
(2, 2, '440-569-8742', 'laverne@cox.net'),
(3, 3, '440-578-9612', 'hi1234@yahoo.com'),
(4, 4, '216-852-9461', 'ti@cox.net'),
(5, 5, '216-963-4561', 'Imlovingit@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE IF NOT EXISTS `Events` (
  `Event_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) DEFAULT NULL,
  `Event_Name` varchar(30) DEFAULT NULL,
  `Event_Date` date DEFAULT NULL,
  `Location_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Event_ID`),
  KEY `Find_Events` (`User_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`Event_ID`, `User_ID`, `Event_Name`, `Event_Date`, `Location_ID`) VALUES
(1, 1, 'Bills Birthday', '2013-05-21', 1),
(2, 2, 'Kyles graduation', '2013-04-23', 2),
(3, 1, 'Bills Employment Partey', '2013-05-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Gift`
--

CREATE TABLE IF NOT EXISTS `Gift` (
  `Item_ID` varchar(20) NOT NULL,
  `Event_ID` int(11) NOT NULL,
  `Giver_ID` int(11) DEFAULT NULL,
  `Price` decimal(8,2) DEFAULT NULL,
  `Quantity` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`Item_ID`,`Event_ID`),
  KEY `Find_Gift` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Gift`
--

INSERT INTO `Gift` (`Item_ID`, `Event_ID`, `Giver_ID`, `Price`, `Quantity`) VALUES
('1', 1, 3, '100.00', '5'),
('2', 2, 4, '15.00', '4'),
('3', 1, 2, '115.00', '1'),
('4', 2, 5, '5.00', '20');

-- --------------------------------------------------------

--
-- Table structure for table `Guests_List`
--

CREATE TABLE IF NOT EXISTS `Guests_List` (
  `Giver_ID` int(11) NOT NULL,
  `Receiver_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL,
  `Coming` tinyint(1) DEFAULT NULL,
  `Gifting` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Giver_ID`,`Receiver_ID`,`Event_ID`),
  KEY `Find_Guests_List` (`Giver_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Guests_List`
--

INSERT INTO `Guests_List` (`Giver_ID`, `Receiver_ID`, `Event_ID`, `Coming`, `Gifting`) VALUES
(2, 1, 1, 1, 1),
(3, 1, 1, 1, 1),
(4, 1, 3, 0, 1),
(5, 2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

CREATE TABLE IF NOT EXISTS `Item` (
  `Item_ID` varchar(20) NOT NULL,
  `Department` varchar(25) DEFAULT NULL,
  `Title` varchar(150) DEFAULT NULL,
  `Classification` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `Find_Item` (`Item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Item`
--

INSERT INTO `Item` (`Item_ID`, `Department`, `Title`, `Classification`) VALUES
('1', 'Electronics', 'Xbox 360', 'Elite'),
('2', 'Clothes', 'T-Shirts', 'Medium'),
('3', 'Music', 'Guitar', 'Bass'),
('4', 'Groceries', 'Chocolate', 'Milk');

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE IF NOT EXISTS `Person` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(15) DEFAULT NULL,
  `User_Password` varchar(20) DEFAULT NULL,
  `F_Name` varchar(15) DEFAULT NULL,
  `L_Name` varchar(15) DEFAULT NULL,
  `M_Name` varchar(15) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  KEY `Find_Person` (`User_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`User_ID`, `User_Name`, `User_Password`, `F_Name`, `L_Name`, `M_Name`, `DOB`) VALUES
(1, 'Bill5', 'password', 'Bill', 'Evan', 'Smith', '1985-04-21'),
(2, 'L', 'password1', 'Laverne', 'Anny', 'Smith', '1977-09-23'),
(3, 'N', 'password1', 'Nick', 'Kevin', 'Smith', '1978-08-15'),
(4, 'Ti3', 'password1', 'Tim', 'Eric', 'Smith', '1986-05-05'),
(5, 'Todd9001', 'password1', 'Todd', 'John', 'McDonald', '1936-06-23');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
