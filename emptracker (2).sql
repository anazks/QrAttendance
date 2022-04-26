-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 02:17 PM
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
-- Database: `emptracker`
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
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9624244', '76.2826562', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-3-22 15:11:1', 25, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9624244', '76.2826562', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-3-22 15:14:56', 26, 'notpayed'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '9.9624244', '76.2826562', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-3-22 15:25:9', 27, 'notpayed'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '9.9624244', '76.2826562', 'approved', 'akash', 2147483647, 'akash2@gmail.com', '2022-3-22 15:26:59', 28, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9624244', '76.2826562', 'approved', 'akash', 2147483647, 'akash2@gmail.com', '2022-3-22 15:27:3', 29, 'notpayed'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '9.9669887', '76.2864853', 'pending', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-3-31 11:20:54', 30, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9136', '76.2652', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-4-11 12:23:6', 31, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9671599', '76.2865751', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-4-12 17:0:36', 32, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9671599', '76.2865751', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-4-12 17:8:44', 33, 'notpayed'),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '', '', 'pending', 'anazks', 2147483647, 'anazksunil46@gmail.com', '2022-4-12 17:38:51', 34, '500');

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
  `time` varchar(202) NOT NULL DEFAULT 'not logedin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`email`, `username`, `mobile`, `password`, `repassword2`, `id`, `log`, `time`) VALUES
('anazksunil2@gmail.com', 'anazksunil', 242121441, '123', '123', 2, 'in', '2022-04-12 17:40:09.852'),
('anazksunil46@gmail.com', 'anazks', 2147483647, '123', '123', 5, 'out', '2022-04-12 17:39:22.274');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
