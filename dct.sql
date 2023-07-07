-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Jul 07, 2023 at 12:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dct`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_usage`
--

CREATE TABLE `app_usage` (
  `id` int(11) NOT NULL,
  `device_name` varchar(50) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `group_parent` varchar(50) DEFAULT NULL,
  `application` varchar(50) DEFAULT NULL,
  `duration` int(15) DEFAULT NULL,
  `mobile_data_used` int(15) DEFAULT NULL,
  `wifi_data_used` int(15) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dct_record`
--

CREATE TABLE `dct_record` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `age` int(15) DEFAULT NULL,
  `mobile_number` varchar(300) DEFAULT NULL,
  `email_address` varchar(300) DEFAULT NULL,
  `luganda` int(15) DEFAULT NULL,
  `english` int(15) DEFAULT NULL,
  `swahili` int(15) DEFAULT NULL,
  `been_charged` int(15) DEFAULT NULL,
  `additional_info` varchar(500) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_usage`
--
ALTER TABLE `app_usage`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `dct_record`
--
ALTER TABLE `dct_record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_usage`
--
ALTER TABLE `app_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dct_record`
--
ALTER TABLE `dct_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
