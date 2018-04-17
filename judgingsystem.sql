-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 05:23 PM
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
(2, 'Question and Answer', 0.5),
(3, 'Production Number', 0.75);

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
(43, 'Jhen', 1),
(44, 'Sent', 1);

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
(107, 1, 43),
(108, 2, 43),
(109, 3, 43),
(110, 1, 44),
(111, 2, 44),
(112, 3, 44);

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
(79, 1, 107, 7, 1),
(80, 6, 107, 9, 1),
(81, 1, 110, 10, 1),
(82, 6, 110, 15, 1),
(83, 4, 108, 8, 1),
(84, 11, 108, 8, 1),
(85, 12, 108, 8, 1),
(86, 13, 108, 5, 1),
(87, 4, 111, 10, 1),
(88, 11, 111, 20, 1),
(89, 12, 111, 12, 1),
(90, 13, 111, 10, 1),
(91, 14, 112, 80, 1),
(92, 15, 112, 90, 1),
(93, 14, 109, 5, 1),
(94, 15, 109, 8, 1),
(95, 1, 107, 10, 4),
(96, 6, 107, 5, 4);

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
(4, 'Delivery', 25, 2),
(6, 'Design & Creativity', 20, 1),
(11, 'Intelligence', 25, 2),
(12, 'Audience Impact', 25, 2),
(13, 'Point of  View', 25, 2),
(14, 'Dance Number', 100, 3),
(15, 'Audience Impact', 100, 3);

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
(1081, 43, 8),
(1082, 44, 0),
(1083, 43, 0),
(1084, 44, 0),
(1085, 43, 0),
(1086, 44, 0);

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
(3, 'esguerra', 'b0baee9d279d34fa1dfd71aadb908c3f'),
(4, 'me', 'ab86a1e1ef70dff97959067b723c5c24');

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
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contestant`
--
ALTER TABLE `contestant`
  MODIFY `ContestantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `contestantcategory`
--
ALTER TABLE `contestantcategory`
  MODIFY `ContestantCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `criconcat`
--
ALTER TABLE `criconcat`
  MODIFY `CriConCatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `CriteriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tabulate`
--
ALTER TABLE `tabulate`
  MODIFY `TabulateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1087;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
