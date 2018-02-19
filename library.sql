-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2017 at 06:14 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`adminId` int(255) NOT NULL,
  `adminUsername` varchar(100) NOT NULL,
  `adminEmail` varchar(100) NOT NULL,
  `adminPassword` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUsername`, `adminEmail`, `adminPassword`) VALUES
(1, 'admin', 'admin@admin.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE IF NOT EXISTS `tbl_book` (
`bookId` int(255) NOT NULL,
  `bookName` varchar(100) NOT NULL,
  `bookCategory` varchar(100) NOT NULL,
  `bookAuthor` varchar(100) NOT NULL,
  `bookQuantity` int(255) NOT NULL,
  `bookPicture` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`bookId`, `bookName`, `bookCategory`, `bookAuthor`, `bookQuantity`, `bookPicture`) VALUES
(1, 'Lal Nil Dipaboly', 'Literature', 'Humayun Ajad', 4, 'upload/98b244db84.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_borrower`
--

CREATE TABLE IF NOT EXISTS `tbl_borrower` (
`borrowerId` int(255) NOT NULL,
  `borrowerUsername` varchar(100) NOT NULL,
  `borrowerBookId` int(255) NOT NULL,
  `recDate` varchar(100) NOT NULL,
  `retDate` varchar(100) NOT NULL,
  `penalty` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`userId` int(255) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPassword` varchar(100) NOT NULL,
  `userPicture` varchar(100) NOT NULL,
  `userFavourite` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userId`, `userName`, `userEmail`, `userPassword`, `userPicture`, `userFavourite`) VALUES
(1, 'titas', 'titas@gmail.com', '1234', '', ''),
(2, 'shamim', 'shamim@gmail.com', '1234', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
 ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `tbl_borrower`
--
ALTER TABLE `tbl_borrower`
 ADD PRIMARY KEY (`borrowerId`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `adminId` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
MODIFY `bookId` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_borrower`
--
ALTER TABLE `tbl_borrower`
MODIFY `borrowerId` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `userId` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
