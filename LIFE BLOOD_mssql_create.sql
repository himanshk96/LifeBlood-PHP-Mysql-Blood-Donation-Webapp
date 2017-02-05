-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2017 at 09:49 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lifetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `agegroup`
--

CREATE TABLE `agegroup` (
  `Index` int(10) NOT NULL,
  `AgeGroup` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ageindex`
--

CREATE TABLE `ageindex` (
  `AgeGroupIndex` int(10) NOT NULL,
  `UserIndex` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `Index` int(11) NOT NULL,
  `BloodGroup` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`Index`, `BloodGroup`) VALUES
(1, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `Index` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `Index` int(1) NOT NULL,
  `genderName` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `Index` varchar(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `blood_group` varchar(3) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `birth_date` date NOT NULL,
  `AgeGroupIndex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`Index`, `first_name`, `last_name`, `email_id`, `password`, `gender`, `blood_group`, `mobile_no`, `birth_date`, `AgeGroupIndex`) VALUES
('02', '', '', '', 'hhkhhk', '1', 'b', '1', '2015-08-28', '5'),
('03', '', '', '', 'hhkhhk', '1', 'b', '1', '2015-08-28', '5'),
('04', '', '', '', 'hhkhhk', '1', 'b', '1', '2015-08-28', '5'),
('05', 'udio', 'udio', 'udio@udio', 'hhkhhk', '1', 'b', '1', '2015-08-28', '5'),
('06', '', '', '', 'hhkhhk', '1', 'b', '1', '2015-08-28', '5'),
('07', 'hasdu', 'asdjasjd', 'asdad@ajsdfnjn', '', 'blood gr', '', '', '0000-00-00', ''),
('08', 'thisisit', 'thisisit', 'thisist@thisis', 'this this', 'male', '', '', '0000-00-00', ''),
('09', '', '', '', 'hhkhhk', '1', 'b', '1', '2015-08-28', '5'),
('1', 'h', 'k', 'kriplani@gmail.com', 'hhkhhk', '1', 'b', '1', '2015-08-28', '5'),
('10', 'thisisit', 'thisisit', 'thisist@thisis', 'hhkhhk', 'male', '', '', '0000-00-00', ''),
('11', 'thisisit', 'thisisit', 'thisist@thisis', 'that', 'male', '', '', '0000-00-00', ''),
('12', 'thisisit', 'thisisit', 'thisist@thisis', 'hhk', 'male', '', '', '0000-00-00', ''),
('13', 'thisisit', 'thisisit', 'thisist@thisis', 'thisthis', 'male', '', '9408973452', '1996-12-28', ''),
('14', 'thisisit', 'thisisit', 'thisist@thisis', 'i', 'male', '', '9408973452', '1996-12-28', ''),
('15', 'thisisit', 'thisisit', 'thisist@thisis', '', 'male', '', '9408973452', '1996-12-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `index` int(100) NOT NULL,
  `StateName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agegroup`
--
ALTER TABLE `agegroup`
  ADD PRIMARY KEY (`Index`,`AgeGroup`);

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`Index`,`BloodGroup`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`Index`,`city`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`Index`,`genderName`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`Index`),
  ADD KEY `Index` (`Index`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`index`,`StateName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
