-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 03:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartfarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`, `email`, `mobile`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'smartwheelchair@rediffmail.com', '8888777745', 'Active'),
(3, 'aish', 'ce51e737c8ac41c0d25d2bf6474e3458', 'adminhealthchair@gmail.com', '9651448433', 'Active'),
(4, 'shailesh', '4dfadc570d6230a709010f9aa95fd27f', 'shdinde@gmail.com', '9651448433', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `deviceid` int(11) NOT NULL,
  `devicename` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `mdate` date NOT NULL,
  `sdate` date DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`deviceid`, `devicename`, `details`, `mdate`, `sdate`, `status`) VALUES
(1, 'D001', 'ABCD', '2018-10-03', NULL, 'Active'),
(2, 'D002', 'ABCPQR', '2018-10-02', NULL, 'Active'),
(3, 'D4', 'kkpkk', '2019-01-03', NULL, 'Active'),
(4, 'D6', 'kkpkk', '2019-01-03', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sensorinfo`
--

CREATE TABLE `sensorinfo` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `cropid` varchar(100) NOT NULL,
  `temp` double NOT NULL,
  `humidity` double NOT NULL,
  `soil` double NOT NULL,
  `ldr` double NOT NULL,
  `water` double NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `deviceid` varchar(10) NOT NULL,
  `photo` varchar(200) DEFAULT 'avatar5.png',
  `status` varchar(10) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `mobile`, `name`, `deviceid`, `photo`, `status`, `address`) VALUES
(3, 'aish', '21ad0bd836b90d08f4cf640b4c298e7c', 'adminhealthchair@gmail.com', '8888777766', 'Aishwrya k Patil', '', 'avatar5.png', 'Active', 'kop'),
(6, 'shailesh', '7f125dd8c17fc02ab20338fbcf27abfe', 'shdinde@gmail.com', '9822873333', 'Shailesh Hari Dinde', '1', 'avatar5.png', 'Active', 'kop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`deviceid`);

--
-- Indexes for table `sensorinfo`
--
ALTER TABLE `sensorinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `deviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sensorinfo`
--
ALTER TABLE `sensorinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
