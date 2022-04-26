-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 04:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `shopname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `longt` varchar(10) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `username` varchar(50) NOT NULL,
  `usermobile` int(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `id` int(255) NOT NULL,
  `rs` varchar(50) NOT NULL DEFAULT 'notpayed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`shopname`, `email`, `mobile`, `city`, `lat`, `longt`, `status`, `username`, `usermobile`, `useremail`, `time`, `id`, `rs`) VALUES
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9624244', '76.2826562', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-3-22 15:11:1', 25, '1'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9624244', '76.2826562', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-3-22 15:14:56', 26, 'notpayed'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '9.9624244', '76.2826562', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-3-22 15:25:9', 27, 'notpayed'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '9.9624244', '76.2826562', 'approved', 'akash', 2147483647, 'akash2@gmail.com', '2022-3-22 15:26:59', 28, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9624244', '76.2826562', 'approved', 'akash', 2147483647, 'akash2@gmail.com', '2022-3-22 15:27:3', 29, 'notpayed'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '9.9669887', '76.2864853', 'pending', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-3-31 11:20:54', 30, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9136', '76.2652', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-4-11 12:23:6', 31, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9671599', '76.2865751', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-4-12 17:0:36', 32, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9671599', '76.2865751', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-4-12 17:8:44', 33, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '', '', 'pending', 'anazks', 2147483647, 'anazksunil46@gmail.com', '2022-4-12 17:38:51', 34, '500'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '', '', 'pending', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-4-16 14:2:42', 35, 'notpayed');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `name` varchar(200) NOT NULL,
  `sem` int(20) NOT NULL,
  `code` int(20) NOT NULL,
  `fee` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`name`, `sem`, `code`, `fee`, `date`, `sub`, `id`) VALUES
('Supply', 2, 101, '1200', '2022-04-30', 'DS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `name` varchar(200) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `month` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `CTime` varchar(200) NOT NULL,
  `id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`name`, `uid`, `month`, `day`, `CTime`, `id`) VALUES
('anazksunil', '2', 'Sat Apr 16 2022 09:53:38 GMT+0530 (India Standard Time)1', '2022-04-16 09:53:38.727', '9', 1),
('anazk', '6', 'Sat Apr 16 2022 10:20:08 GMT+0530 (India Standard Time)1', '2022-04-16 10:20:08.511', '10', 2),
('anazk', '6', 'Sat Apr 16 2022 10:27:06 GMT+0530 (India Standard Time)1', '2022-04-16 10:27:06.838', '10', 3),
('anazk', '6', 'Sat Apr 16 2022 10:29:11 GMT+0530 (India Standard Time)1', '2022-04-16 10:29:11.217', '10', 4),
('anazk', '6', 'Sat Apr 16 2022 10:34:21 GMT+0530 (India Standard Time)1', '2022-04-16 10:34:21.144', '10', 5),
('anazk', '6', 'Sat Apr 16 2022 10:35:37 GMT+0530 (India Standard Time)1', '2022-04-16 10:35:37.558', '10', 6),
('anazk', '6', 'Sat Apr 16 2022 10:45:46 GMT+0530 (India Standard Time)1', '2022-04-16 10:45:46.795', '10', 7),
('anazk', '6', 'Sat Apr 16 2022 10:54:17 GMT+0530 (India Standard Time)1', '2022-04-16 10:54:17.672', '10', 8),
('anazk', '6', 'Sat Apr 16 2022 10:56:37 GMT+0530 (India Standard Time)1', '2022-04-16 10:56:37.395', '10', 9),
('anazk', '6', 'Sat Apr 16 2022 10:57:58 GMT+0530 (India Standard Time)1', '2022-04-16 10:57:58.022', '10', 10),
('anazksunil', '2', 'Sat Apr 16 2022 10:59:10 GMT+0530 (India Standard Time)1', '2022-04-16 10:59:10.182', '10', 11),
('anazk', '6', 'Sat Apr 16 2022 11:01:59 GMT+0530 (India Standard Time)1', '2022-04-16 11:01:59.169', '11', 12),
('anazk', '6', 'Sat Apr 16 2022 11:02:46 GMT+0530 (India Standard Time)1', '2022-04-16 11:02:46.240', '11', 13),
('anazk', '6', 'Sat Apr 16 2022 11:32:45 GMT+0530 (India Standard Time)1', '2022-04-16 11:32:45.054', '11', 14),
('anazk', '6', 'Sat Apr 16 2022 11:49:19 GMT+0530 (India Standard Time)1', '2022-04-16 11:49:19.262', '11', 15),
('anazksunil', '2', 'Sat Apr 16 2022 13:22:51 GMT+0530 (India Standard Time)1', '2022-04-16 13:22:51.786', '13', 16),
('anazksunil', '2', 'Sat Apr 16 2022 13:58:59 GMT+0530 (India Standard Time)1', '2022-04-16 13:58:59.664', '13', 17),
('anazksunil', '2', 'Sat Apr 16 2022 14:02:31 GMT+0530 (India Standard Time)1', '2022-04-16 14:02:31.658', '14', 18);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `ShopName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cpassword` varchar(100) NOT NULL,
  `id` int(10) NOT NULL,
  `city` varchar(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`ShopName`, `email`, `mobile`, `password`, `cpassword`, `id`, `city`, `status`) VALUES
('RoyalMechz', 'shop@gmail.com', 2147483647, '123', '123', 1, 'kochi', 'approved'),
('kingzShops', 'shop2@Gmail.com', 854512545, '123', '123', 2, 'kochi', 'approved'),
('mechKing', 'shop3@gmail.com', 2147483647, '123', '123', 3, 'kochi', 'pending'),
('kingMechs', 'shop4@gmail.com', 2147483647, '123', '123', 4, 'kochi', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `rgNo` int(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `mark` int(100) NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`rgNo`, `subject`, `mark`, `id`) VALUES
(1000, 'DS', 56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile` int(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `repassword2` varchar(255) NOT NULL,
  `id` int(50) NOT NULL,
  `log` varchar(20) NOT NULL DEFAULT 'out',
  `time` varchar(202) NOT NULL DEFAULT 'not logedin',
  `rgNo` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`email`, `username`, `mobile`, `password`, `repassword2`, `id`, `log`, `time`, `rgNo`) VALUES
('anazksunil2@gmail.com', 'anazksunil', 242121441, '123', '123', 2, 'out', '2022-04-16 14:03:11.643', 0),
('anazksunil46@gmail.com', 'anazk', 2147483647, '123', '123', 6, 'in', '2022-04-16 10:20:22.275', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `file` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `dis` varchar(255) NOT NULL,
  `id` int(255) NOT NULL,
  `rgNo` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`file`, `date`, `dis`, `id`, `rgNo`) VALUES
('SnapShots.pdf', '6', 'ndjo', 1, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
