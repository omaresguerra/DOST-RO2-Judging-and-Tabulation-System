-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2017 at 03:36 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `judgingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(100) NOT NULL,
  `CategoryPercentage` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`, `CategoryPercentage`) VALUES
(1, 'Formal Wear', 0.5),
(2, 'Question and Answer', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `contestant`
--

CREATE TABLE `contestant` (
  `ContestantID` int(11) NOT NULL,
  `ContestantName` varchar(100) NOT NULL,
  `TitleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contestant`
--

INSERT INTO `contestant` (`ContestantID`, `ContestantName`, `TitleID`) VALUES
(30, 'Angelica Taaca', 1),
(31, 'Diana Jane Narag', 1),
(34, 'Ricson Abon', 2),
(35, 'Joshua Babaran', 2),
(38, 'Nicole Naval', 1),
(39, 'Dexter Catolos', 2),
(40, 'Albert Gammad', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contestantcategory`
--

CREATE TABLE `contestantcategory` (
  `ContestantCategoryID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ContestantID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contestantcategory`
--

INSERT INTO `contestantcategory` (`ContestantCategoryID`, `CategoryID`, `ContestantID`) VALUES
(78, 1, 30),
(79, 2, 30),
(80, 1, 31),
(81, 2, 31),
(86, 1, 34),
(87, 2, 34),
(88, 1, 35),
(89, 2, 35),
(94, 1, 38),
(95, 2, 38),
(96, 1, 39),
(97, 2, 39),
(98, 1, 40),
(99, 2, 40);

-- --------------------------------------------------------

--
-- Table structure for table `criconcat`
--

CREATE TABLE `criconcat` (
  `CriConCatID` int(11) NOT NULL,
  `CriteriaID` int(11) NOT NULL,
  `ContestantCategoryID` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criconcat`
--

INSERT INTO `criconcat` (`CriConCatID`, `CriteriaID`, `ContestantCategoryID`, `Score`, `UserID`) VALUES
(1, 1, 78, 30, 2),
(2, 6, 78, 20, 2),
(3, 1, 86, 20, 2),
(4, 6, 86, 10, 2),
(5, 1, 80, 10, 2),
(6, 6, 80, 5, 2),
(7, 1, 88, 10, 2),
(8, 6, 88, 2, 2),
(9, 1, 78, 29, 1),
(10, 6, 78, 19, 1),
(11, 1, 80, 25, 1),
(12, 6, 80, 10, 1),
(13, 1, 86, 25, 1),
(14, 6, 86, 10, 1),
(15, 1, 88, 10, 1),
(16, 6, 88, 5, 1),
(17, 4, 79, 50, 2),
(18, 11, 79, 50, 2),
(19, 4, 81, 35, 2),
(20, 11, 81, 20, 2),
(21, 4, 87, 50, 2),
(22, 11, 87, 50, 2),
(23, 4, 89, 50, 2),
(24, 11, 89, 45, 2),
(25, 4, 79, 50, 1),
(26, 11, 79, 50, 1),
(27, 4, 81, 45, 1),
(28, 11, 81, 45, 1),
(29, 4, 87, 30, 1),
(30, 11, 87, 40, 1),
(31, 4, 89, 35, 1),
(32, 11, 89, 25, 1),
(33, 1, 94, 10, 2),
(34, 6, 94, 5, 2),
(35, 4, 95, 20, 2),
(36, 11, 95, 10, 2),
(37, 1, 94, 28, 1),
(38, 6, 94, 17, 1),
(39, 4, 95, 50, 1),
(40, 11, 95, 50, 1),
(41, 1, 98, 30, 1),
(42, 6, 98, 20, 1),
(43, 4, 99, 50, 1),
(44, 11, 99, 50, 1),
(45, 1, 98, 5, 2),
(46, 6, 98, 5, 2),
(47, 4, 99, 10, 2),
(48, 11, 99, 10, 2),
(49, 1, 78, 1, 3),
(50, 6, 78, 2, 3),
(51, 1, 80, 3, 3),
(52, 6, 80, 4, 3),
(53, 4, 97, 1, 3),
(54, 11, 97, 2, 3),
(55, 4, 87, 50, 3),
(56, 11, 87, 50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `CriteriaID` int(11) NOT NULL,
  `CriteriaName` varchar(100) NOT NULL,
  `CriteriaPoint` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`CriteriaID`, `CriteriaName`, `CriteriaPoint`, `CategoryID`) VALUES
(1, 'Poise & Bearing', 30, 1),
(4, 'Delivery', 50, 2),
(6, 'Design & Creativity', 20, 1),
(11, 'Intelligence', 50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tabulate`
--

CREATE TABLE `tabulate` (
  `TabulateID` int(11) NOT NULL,
  `ContestantID` int(11) NOT NULL,
  `Score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabulate`
--

INSERT INTO `tabulate` (`TabulateID`, `ContestantID`, `Score`) VALUES
(872, 34, 18),
(873, 35, 8),
(874, 39, 0),
(875, 40, 25),
(876, 34, 35),
(877, 35, 30),
(878, 39, 0),
(879, 40, 50);

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `TitleID` int(11) NOT NULL,
  `TitleName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`TitleID`, `TitleName`) VALUES
(1, 'Miss'),
(2, 'Mr');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Password`) VALUES
(1, 'omar', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'john', '01cfcd4f6b8770febfb40cb906715822'),
(3, 'esguerra', 'b0baee9d279d34fa1dfd71aadb908c3f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `contestant`
--
ALTER TABLE `contestant`
  ADD PRIMARY KEY (`ContestantID`);

--
-- Indexes for table `contestantcategory`
--
ALTER TABLE `contestantcategory`
  ADD PRIMARY KEY (`ContestantCategoryID`);

--
-- Indexes for table `criconcat`
--
ALTER TABLE `criconcat`
  ADD PRIMARY KEY (`CriConCatID`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`CriteriaID`);

--
-- Indexes for table `tabulate`
--
ALTER TABLE `tabulate`
  ADD PRIMARY KEY (`TabulateID`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`TitleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contestant`
--
ALTER TABLE `contestant`
  MODIFY `ContestantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `contestantcategory`
--
ALTER TABLE `contestantcategory`
  MODIFY `ContestantCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `criconcat`
--
ALTER TABLE `criconcat`
  MODIFY `CriConCatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `CriteriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tabulate`
--
ALTER TABLE `tabulate`
  MODIFY `TabulateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=880;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
