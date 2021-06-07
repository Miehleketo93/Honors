-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 07, 2021 at 10:44 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '18-10-2016 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Facial Products', 'Facial Products', '2021-05-30 15:16:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'still in progress', '2021-05-30 15:22:08'),
(2, 8, 'in process', 'testing', '2021-06-01 20:35:29'),
(3, 6, 'in process', 'investigating ', '2021-06-02 07:11:28'),
(4, 6, 'closed', 'query resolved ', '2021-06-02 07:27:11'),
(5, 2, 'closed', 'query resloved', '2021-06-07 17:35:23'),
(6, 12, 'in process', 'ee', '2021-06-07 20:27:05'),
(7, 12, 'closed', 'done', '2021-06-07 20:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Load_Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `To` varchar(250) NOT NULL,
  `From` varchar(250) NOT NULL,
  `First_Name` varchar(250) NOT NULL,
  `Last_Name` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Subject2` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL,
  `Message2` text NOT NULL,
  `Headers` varchar(250) NOT NULL,
  `Headers2` varchar(250) NOT NULL,
  `User` varchar(250) NOT NULL,
  `LoadDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'manager', 'f925916e2754e5e03f75dd58a5733251', '18-10-2016 04:18:16'),
(2, 'mie', 'c4ca4238a0b923820dcc509a6f75849b', '2021-06-07 19:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `indicator` varchar(255) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee`, `firstname`, `lastname`, `password`, `phone`, `email`, `indicator`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, '123', 'jj', 'mgidi', '$2y$10$ZAsjwgvOY2lhnxpYku7Noe3lyqRcAe/GOBmYfRkl61F.gf3Xv084m', 79, 'jj@gmail.com', '1', NULL, '2021-06-06 12:18:30', '2021-06-06 12:16:39', NULL),
(5, '2021', 'Miehleketo', 'Mathebula', 'f925916e2754e5e03f75dd58a5733251', 793653889, 'Miehleketo93@gmail.com', '0', NULL, '2021-06-07 17:32:38', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_indicator`
--

CREATE TABLE `staff_indicator` (
  `Staff_indicator` bit(1) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_indicator`
--

INSERT INTO `staff_indicator` (`Staff_indicator`, `Description`) VALUES
(b'0', 'Staff'),
(b'1', 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Centurion', 'Gauteng', '2021-05-24 17:55:55', ''),
(2, 'Tembisa', 'Gauteng', '2021-05-30 15:16:32', ''),
(3, 'Giyani', 'Limpopo', '2021-05-30 15:17:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Online Shopping', '2021-05-30 15:17:48', ''),
(2, 1, 'Delivery', '2021-05-30 15:18:03', ''),
(4, 3, 'E-wllaet', '2021-03-28 05:11:20', '0000-00-00 00:00:00'),
(5, 4, 'other', '2021-04-24 05:06:44', '2021-04-24 07:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `Employee_Id` varchar(60) NOT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `Employee_Id`, `lastUpdationDate`) VALUES
(1, 2, 1, 'Online Shopping', ' Complaint', 'Polokwane', 'Refund', 'Double deduction ', '', '2021-05-30 15:20:30', 'in process', '2021', '2021-06-07 17:34:28'),
(2, 2, 1, 'Online SHopping', 'General Query', 'Punjab', 'testing', 'sample text for demo', '', '2017-03-30 15:05:56', 'closed', '2021', '2021-06-07 17:35:23'),
(3, 2, 1, 'Online SHopping', ' Complaint', 'Punjab', 'ferwekt lwentgwewt', 'wetwetwe', '', '2017-03-30 15:07:51', 'in process', '123', '2021-06-02 07:10:15'),
(4, 2, 1, 'E-wllaet', 'General Query', 'Haryana', 'lkdlsfklsdf', 'fdsf,msd,f  f f', '', '2017-03-30 15:13:14', 'closed', '', '2021-05-31 05:58:27'),
(5, 2, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 15:14:55', 'in process', '5', '2021-06-07 17:59:28'),
(6, 2, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 15:20:16', 'closed', '120', '2021-06-02 07:27:11'),
(7, 2, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 15:20:56', NULL, '123', '2021-06-06 12:35:11'),
(8, 2, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 15:23:05', 'in process', '', '2021-06-01 20:35:29'),
(9, 2, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 15:25:09', 'in process', '', '2021-05-31 05:58:27'),
(10, 2, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '', '2017-03-30 15:27:24', NULL, '2021', '2021-06-07 17:34:14'),
(11, 2, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2017-03-30 15:36:32', NULL, '5', '2021-06-07 17:50:04'),
(12, 2, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2017-03-30 15:37:09', 'closed', '5', '2021-06-07 20:27:33'),
(13, 2, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2017-03-30 15:39:57', NULL, '', '2021-05-31 05:58:27'),
(14, 2, 1, 'Online SHopping', ' Complaint', 'Haryana', 'vcxvxcvxcv', 'cvcx', '', '2017-03-30 15:41:19', NULL, '', '2021-05-31 05:58:27'),
(15, 2, 1, 'E-wllaet', 'General Query', 'Punjab', 'dsfsd', 'fsdfsdf', '', '2017-03-30 15:42:38', NULL, '', '2021-05-31 05:58:27'),
(16, 2, 1, 'E-wllaet', 'General Query', 'Punjab', 'dsfsd', 'fsdfsdf', '', '2017-03-30 23:54:07', NULL, '', '2021-05-31 05:58:27'),
(17, 2, 1, 'E-wllaet', ' Complaint', 'fsdfs', 'regarding refund', 'test test', '', '2017-06-11 08:57:49', NULL, '', '2021-05-31 05:58:27'),
(18, 2, 1, 'Online SHopping', ' Complaint', 'Uttar Pradesh', 'yhytr', 'rtytry', '', '2017-06-11 09:08:47', NULL, '', '2021-05-31 05:58:27'),
(19, 2, 1, 'Online SHopping', ' Complaint', 'Uttar Pradesh', 'regarding refund', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', '', '2017-06-11 09:15:24', 'closed', '', '2021-05-31 05:58:27'),
(20, 2, 1, 'E-wllaet', 'General Query', 'fsdfs', 'sdgsdg', 'gdgsdgsd', '', '2018-05-24 16:26:23', NULL, '', '2021-05-31 05:58:27'),
(21, 2, 1, 'Online SHopping', 'General Query', 'Uttar Pradesh', 'csdf', 'fsdfs', '', '2018-05-24 16:26:55', NULL, '', '2021-05-31 05:58:27'),
(22, 2, 1, 'Online SHopping', 'General Query', 'Uttar Pradesh', 'csdf', 'fsdfs', '', '2018-05-24 16:27:02', NULL, '', '2021-05-31 05:58:27'),
(23, 2, 1, 'E-wllaet', ' Complaint', 'Delhi', 'This is sample text for testing.', 'This is sample text for testing.', '2a09969b-c3d5-467b-82b0-2cf5aeb903eb_200x200.png', '2019-06-24 08:31:19', 'closed', '', '2021-05-31 05:58:27'),
(111, 2, 1, 'E-wllaet', 'General Query', 'Punjab', 'test demo', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', '', '2017-03-30 14:52:40', 'closed', '', '2021-05-31 05:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:43', '', 0),
(2, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:50', '08-05-2020 07:44:51 PM', 1),
(3, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:16:30', '', 1),
(4, 2, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-19 11:04:39', '19-05-2021 01:05:06 PM', 1),
(5, 0, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 13:47:56', '', 0),
(6, 2, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 13:48:49', '30-05-2021 03:49:59 PM', 1),
(7, 2, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 13:52:33', '30-05-2021 03:52:35 PM', 1),
(8, 2, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 13:53:26', '30-05-2021 03:53:27 PM', 1),
(9, 0, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 15:12:13', '', 0),
(10, 0, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 15:12:38', '', 0),
(11, 0, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 15:12:43', '', 0),
(12, 2, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 15:12:47', '30-05-2021 05:13:59 PM', 1),
(13, 2, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 15:19:20', '30-05-2021 05:20:59 PM', 1),
(14, 0, '1', 0x3a3a3100000000000000000000000000, '2021-06-06 11:30:31', '', 0),
(15, 0, '', 0x3a3a3100000000000000000000000000, '2021-06-06 13:50:12', '', 0),
(16, 0, 'jj@mgid', 0x3a3a3100000000000000000000000000, '2021-06-06 13:52:07', '', 1),
(17, 0, '123', 0x3a3a3100000000000000000000000000, '2021-06-06 14:41:36', '', 0),
(18, 0, 'jj@mgid', 0x3a3a3100000000000000000000000000, '2021-06-06 14:41:55', '', 1),
(19, 0, 'jj@mgid', 0x3a3a3100000000000000000000000000, '2021-06-06 15:40:14', '', 1),
(20, 0, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-06 15:57:29', '', 0),
(21, 0, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-06 15:57:34', '', 0),
(22, 0, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-06 15:57:43', '', 0),
(23, 2, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-06 15:58:17', '', 1),
(24, 0, 'jj@mgid', 0x3a3a3100000000000000000000000000, '2021-06-07 17:14:32', '', 1),
(25, 0, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 17:28:53', '', 1),
(26, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 17:32:51', '', 1),
(27, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 17:35:55', '', 1),
(28, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 17:43:14', '', 1),
(29, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 17:45:16', '', 1),
(30, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 17:52:28', '', 1),
(31, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 17:59:48', '', 1),
(32, 2, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 19:32:39', '', 1),
(33, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 19:47:04', '', 1),
(34, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 19:47:19', '', 1),
(35, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 19:48:34', '', 1),
(36, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 20:03:37', '', 1),
(37, 5, 'miehleketo93@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 20:05:06', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'jj', 'miehleketo93@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 79, NULL, NULL, NULL, NULL, NULL, '2021-05-19 11:04:18', '2021-06-06 15:58:12', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_indicator`
--
ALTER TABLE `staff_indicator`
  ADD PRIMARY KEY (`Staff_indicator`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
