-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2017 at 06:35 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `little`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `city_dt` datetime NOT NULL,
  `city_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `city_dt`, `city_ts`) VALUES
(1, 'Hyderabad', '2017-09-30 08:34:58', '2017-09-30 15:34:58'),
(2, 'Vijayawada', '2017-09-30 08:35:12', '2017-09-30 15:35:12'),
(3, 'Mumbai', '0000-00-00 00:00:00', '2017-10-01 13:30:57'),
(4, 'Pune', '0000-00-00 00:00:00', '2017-10-01 13:30:57'),
(5, 'Mumbai', '0000-00-00 00:00:00', '2017-10-01 13:30:57'),
(6, 'Chennai', '0000-00-00 00:00:00', '2017-10-01 13:30:57'),
(7, 'Benguluru', '0000-00-00 00:00:00', '2017-10-01 13:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `city_id` int(11) NOT NULL,
  `location_dt` datetime NOT NULL,
  `location_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`, `city_id`, `location_dt`, `location_ts`) VALUES
(1, 'Kukatpally', 1, '2017-09-30 08:36:44', '2017-09-30 15:36:44'),
(2, 'Gachibowli', 1, '2017-09-30 08:36:57', '2017-09-30 15:36:57'),
(3, 'Uppal', 1, '2017-09-30 08:37:19', '2017-09-30 15:37:19'),
(4, 'Autonagar', 2, '2017-09-30 08:37:40', '2017-09-30 15:37:40'),
(5, 'Eenadu', 2, '2017-09-30 08:37:54', '2017-09-30 15:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `type_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `store_start_dt` datetime NOT NULL,
  `store_end_dt` datetime NOT NULL,
  `store_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `store_name`, `type_id`, `location_id`, `store_start_dt`, `store_end_dt`, `store_ts`) VALUES
(1, 'Paradise', 1, 1, '2017-09-30 08:44:22', '0000-00-00 00:00:00', '2017-09-30 15:44:22'),
(2, 'Barbique Nation', 1, 1, '2017-09-30 08:44:22', '0000-00-00 00:00:00', '2017-09-30 15:44:22'),
(3, 'Creamstone', 1, 1, '2017-09-30 08:44:22', '0000-00-00 00:00:00', '2017-09-30 15:44:22'),
(4, 'Starbucks', 1, 1, '2017-09-30 08:44:22', '0000-00-00 00:00:00', '2017-09-30 15:44:22'),
(5, 'Sweet Magic', 1, 2, '2017-09-30 08:45:28', '0000-00-00 00:00:00', '2017-09-30 15:45:28'),
(6, 'Dolphins', 1, 2, '2017-09-30 08:45:28', '0000-00-00 00:00:00', '2017-09-30 15:45:28'),
(7, 'Creamstone', 1, 2, '2017-09-30 08:45:28', '0000-00-00 00:00:00', '2017-09-30 15:45:28'),
(8, 'Temptations', 1, 2, '2017-09-30 08:45:28', '0000-00-00 00:00:00', '2017-09-30 15:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `store_details`
--

CREATE TABLE `store_details` (
  `store_det_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `main_title` varchar(100) COLLATE utf8_bin NOT NULL,
  `sub_title` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `discout_price` float NOT NULL,
  `validity` date NOT NULL,
  `terms` text COLLATE utf8_bin NOT NULL,
  `dt` datetime NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `store_details`
--

INSERT INTO `store_details` (`store_det_id`, `store_id`, `main_title`, `sub_title`, `description`, `price`, `discount_percent`, `discout_price`, `validity`, `terms`, `dt`, `ts`) VALUES
(1, 1, 'Fresh ice rolls- Abids\r\n', 'Choice of Ice Cream Roll (All Days)', 'Indulge your sweet tooth with delectable Ice Cream rolls made fresh in front of you! Fresh ice rolls is known for its wide range of flavours in Ice Cream rolls.\r\n', 120, 34, 79, '0000-00-00', '1 Ice cream Roll (Choco Brownie/ Peanut Butter Fudge)\r\n.Valid for 1 person. Sharing not allowed.', '2017-09-30 08:53:59', '2017-10-02 14:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `store_location_mapping`
--

CREATE TABLE `store_location_mapping` (
  `Idx` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `store_location_mapping`
--

INSERT INTO `store_location_mapping` (`Idx`, `store_id`, `location_id`, `ts`) VALUES
(1, 1, 1, '2017-10-02 14:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `type_desc` varchar(100) COLLATE utf8_bin NOT NULL,
  `type_dt` datetime NOT NULL,
  `type_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`, `type_desc`, `type_dt`, `type_ts`) VALUES
(1, 'FOOD & DRINKS', '', '2017-09-30 08:41:13', '2017-09-30 15:41:13'),
(2, 'SPAS', '', '2017-09-30 08:41:13', '2017-09-30 15:41:13'),
(3, 'SALONS', '', '2017-09-30 08:41:13', '2017-09-30 15:41:13'),
(4, 'AMUSEMENT', '', '2017-09-30 08:41:37', '2017-09-30 15:41:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `store_details`
--
ALTER TABLE `store_details`
  ADD PRIMARY KEY (`store_det_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `store_details`
--
ALTER TABLE `store_details`
  MODIFY `store_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
