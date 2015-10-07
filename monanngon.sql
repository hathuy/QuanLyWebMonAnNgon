-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2015 at 06:55 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `monanngon`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`IdAccount` int(5) NOT NULL,
  `IdAuthority` int(5) NOT NULL,
  `NameAccount` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sex` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UsernameAccount` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PassAccount` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE IF NOT EXISTS `authority` (
`IdAuthority` int(5) NOT NULL,
  `NameAuthority` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DescAuthority` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `authority_category`
--

CREATE TABLE IF NOT EXISTS `authority_category` (
`IdAuthorityCategory` int(5) NOT NULL,
  `IdAuthority` int(5) NOT NULL,
  `IdCategory` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`IdCategory` int(5) NOT NULL,
  `ParentId` int(5) NOT NULL,
  `NameCategory` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`IdComment` int(5) NOT NULL,
  `IdNews` int(5) NOT NULL,
  `Content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `detaildisciplines`
--

CREATE TABLE IF NOT EXISTS `detaildisciplines` (
`IdDetailDisciplines` int(5) NOT NULL,
  `IdDisciplines` int(5) NOT NULL,
  `IdSale` int(5) NOT NULL,
  `No.Ses` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Opening` date NOT NULL,
  `Note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL,
  `Fees` int(15) NOT NULL,
  `FeesSale` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sale` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `detailstudent`
--

CREATE TABLE IF NOT EXISTS `detailstudent` (
`IdDetailStudent` int(5) NOT NULL,
  `IdStudent` int(5) NOT NULL,
  `IdDetailDisciplines` int(5) NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `disciplines`
--

CREATE TABLE IF NOT EXISTS `disciplines` (
`IdDisciplines` int(5) NOT NULL,
  `NameDisciplines` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`IdNews` int(5) NOT NULL,
  `IdTypeNews` int(5) NOT NULL,
  `IdAccount` int(5) NOT NULL,
  `Tittle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
`IdSale` int(5) NOT NULL,
  `NameSale` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Time` date NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`IdStudent` int(5) NOT NULL,
  `IdDetailDisciplines` int(5) NOT NULL,
  `NameStudent` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sex` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhoneNumber` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` bit(1) NOT NULL,
  `Scores` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `typenews`
--

CREATE TABLE IF NOT EXISTS `typenews` (
`IdTypeNews` int(5) NOT NULL,
  `NameTypeNews` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`IdAccount`,`IdAuthority`), ADD KEY `IdAuthority` (`IdAuthority`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
 ADD PRIMARY KEY (`IdAuthority`);

--
-- Indexes for table `authority_category`
--
ALTER TABLE `authority_category`
 ADD PRIMARY KEY (`IdAuthorityCategory`,`IdAuthority`,`IdCategory`), ADD KEY `IdCategory` (`IdCategory`), ADD KEY `IdAuthority` (`IdAuthority`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`IdCategory`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`IdComment`,`IdNews`), ADD KEY `IdNews` (`IdNews`);

--
-- Indexes for table `detaildisciplines`
--
ALTER TABLE `detaildisciplines`
 ADD PRIMARY KEY (`IdDetailDisciplines`,`IdDisciplines`,`IdSale`), ADD KEY `IdDisciplines` (`IdDisciplines`), ADD KEY `IdSale` (`IdSale`);

--
-- Indexes for table `detailstudent`
--
ALTER TABLE `detailstudent`
 ADD PRIMARY KEY (`IdDetailStudent`,`IdStudent`,`IdDetailDisciplines`), ADD KEY `IdDetailDisciplines` (`IdDetailDisciplines`), ADD KEY `IdStudent` (`IdStudent`);

--
-- Indexes for table `disciplines`
--
ALTER TABLE `disciplines`
 ADD PRIMARY KEY (`IdDisciplines`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`IdNews`,`IdTypeNews`,`IdAccount`), ADD KEY `IdTypeNews` (`IdTypeNews`), ADD KEY `IdMember` (`IdAccount`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
 ADD PRIMARY KEY (`IdSale`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`IdStudent`,`IdDetailDisciplines`), ADD KEY `IdDetailDisciplines` (`IdDetailDisciplines`);

--
-- Indexes for table `typenews`
--
ALTER TABLE `typenews`
 ADD PRIMARY KEY (`IdTypeNews`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
MODIFY `IdAccount` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
MODIFY `IdAuthority` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authority_category`
--
ALTER TABLE `authority_category`
MODIFY `IdAuthorityCategory` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `IdCategory` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `IdComment` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detaildisciplines`
--
ALTER TABLE `detaildisciplines`
MODIFY `IdDetailDisciplines` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detailstudent`
--
ALTER TABLE `detailstudent`
MODIFY `IdDetailStudent` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `disciplines`
--
ALTER TABLE `disciplines`
MODIFY `IdDisciplines` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `IdNews` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
MODIFY `IdSale` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `IdStudent` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `typenews`
--
ALTER TABLE `typenews`
MODIFY `IdTypeNews` int(5) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`IdAuthority`) REFERENCES `authority` (`IdAuthority`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`IdAccount`) REFERENCES `news` (`IdAccount`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authority_category`
--
ALTER TABLE `authority_category`
ADD CONSTRAINT `authority_category_ibfk_1` FOREIGN KEY (`IdCategory`) REFERENCES `category` (`IdCategory`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `authority_category_ibfk_2` FOREIGN KEY (`IdAuthority`) REFERENCES `authority` (`IdAuthority`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`IdNews`) REFERENCES `news` (`IdNews`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detaildisciplines`
--
ALTER TABLE `detaildisciplines`
ADD CONSTRAINT `detaildisciplines_ibfk_1` FOREIGN KEY (`IdDisciplines`) REFERENCES `disciplines` (`IdDisciplines`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `detaildisciplines_ibfk_2` FOREIGN KEY (`IdSale`) REFERENCES `sale` (`IdSale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailstudent`
--
ALTER TABLE `detailstudent`
ADD CONSTRAINT `detailstudent_ibfk_1` FOREIGN KEY (`IdDetailDisciplines`) REFERENCES `detaildisciplines` (`IdDetailDisciplines`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `detailstudent_ibfk_2` FOREIGN KEY (`IdStudent`) REFERENCES `student` (`IdStudent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`IdTypeNews`) REFERENCES `typenews` (`IdTypeNews`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`IdDetailDisciplines`) REFERENCES `detaildisciplines` (`IdDetailDisciplines`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
