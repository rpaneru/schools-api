-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2016 at 07:26 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schools`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE IF NOT EXISTS `email_log` (
  `id` int(11) NOT NULL,
  `senderEmailId` varchar(255) NOT NULL,
  `senderName` varchar(255) NOT NULL,
  `receiverEmailId` varchar(255) NOT NULL,
  `receiverName` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `deliveryStatus` varchar(20) NOT NULL,
  `mandrillId` varchar(50) NOT NULL,
  `rejectReason` text,
  `sessionId` varchar(100) NOT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `createdDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('1a08a82fda12e7a5f5079385aaa26c23dbd0b859', 'testclient', 'testuser', '2016-05-22 13:20:00', NULL),
('21d1191c148ed1f2c3bf97d1f153b13c6eda997d', 'testclient', 'testuser', '2016-05-26 08:22:14', NULL),
('4c240ce932b28b737b0861e9fa0575d4adb7b4f7', 'testclient', 'testuser', '2016-05-26 14:19:36', NULL),
('63397e5028ce14e077fd535fbf335fd49b893fec', 'testclient', 'testuser', '2016-05-23 14:36:04', NULL),
('6d3031aa2885f4babaeca000ba9204c26906e147', 'testclient', 'testuser', '2016-05-20 11:01:41', NULL),
('9d8a80274763492acc29cb0e37091c82c0628d4d', 'testclient', 'testuser', '2016-05-22 23:21:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  `id_token` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testclient', '$2y$10$OJH6acEs4TtPNR/Yj0flnu5PUahp/15eub8fXyylNjFmN2CepoLu.', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE IF NOT EXISTS `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('07717a0627715d4213502d3bbbfb4d57c9fa1ab3', 'testclient', 'testuser', '2016-06-09 07:22:15', NULL),
('6ec5e5415283ef630e1827582f4cadfa21eb5792', 'testclient', 'testuser', '2016-06-05 22:21:34', NULL),
('8c9482b5ec27952b7c81633768a747f1e1dbe81a', 'testclient', 'testuser', '2016-06-05 12:20:00', NULL),
('a5e2a1bac20556f996ffb76b64061de99bb8fbd8', 'testclient', 'testuser', '2016-06-06 13:36:04', NULL),
('dae9ebcc3212c6e5075924406c0ccaea6ca9a901', 'testclient', 'testuser', '2016-06-03 10:01:41', NULL),
('ef00c9a0572ec759571e7166680b2be43967d518', 'testclient', 'testuser', '2016-06-09 13:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `type` varchar(255) NOT NULL DEFAULT 'supported',
  `scope` varchar(2000) DEFAULT NULL,
  `client_id` varchar(80) DEFAULT NULL,
  `is_default` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE IF NOT EXISTS `oauth_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`) VALUES
('testuser', '$2y$10$OJH6acEs4TtPNR/Yj0flnu5PUahp/15eub8fXyylNjFmN2CepoLu.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiletypes`
--

CREATE TABLE IF NOT EXISTS `profiletypes` (
  `profileTypeId` int(11) NOT NULL,
  `profileType` varchar(50) NOT NULL,
  `parentProfileTypeId` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sessionId` varchar(100) NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `createDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiletypes`
--

INSERT INTO `profiletypes` (`profileTypeId`, `profileType`, `parentProfileTypeId`, `status`, `sessionId`, `createdBy`, `createDateTime`) VALUES
(1, 'Super Admin', 0, 'Active', '', '', '2016-05-22 13:08:09'),
(2, 'Admin', 1, 'Active', '', '', '2016-05-22 13:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `sms_log`
--

CREATE TABLE IF NOT EXISTS `sms_log` (
  `id` int(11) NOT NULL,
  `smsId` varchar(50) NOT NULL,
  `senderMobileNumber` int(10) NOT NULL,
  `receiverMobileNumber` int(10) NOT NULL,
  `message` text NOT NULL,
  `deliveryStatus` varchar(20) NOT NULL,
  `sessionId` varchar(100) NOT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `createdDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE IF NOT EXISTS `user_addresses` (
  `id` int(11) NOT NULL,
  `state` varchar(100) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `streetAddress` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `pinCode` int(6) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `sessionId` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL,
  `profileTypeId` int(11) NOT NULL,
  `userId` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fatherName` varchar(255) NOT NULL,
  `motherName` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Neutral') NOT NULL,
  `dob` date NOT NULL,
  `maritalStatus` enum('Married','Unmarried') NOT NULL,
  `primaryEmail` varchar(100) NOT NULL,
  `primaryMobile` int(10) NOT NULL,
  `primaryProfilePic` text NOT NULL,
  `religion` enum('Hinduism','Islam','Christianity','Sikhism','Buddhism','Jainism','Other') NOT NULL,
  `category` enum('General (Gn)','Scheduled Tribes (ST)','Scheduled Castes (SC)','Other Backward Classes (OBC)') NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `sessionId` varchar(100) NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `createdDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `profileTypeId`, `userId`, `password`, `name`, `fatherName`, `motherName`, `gender`, `dob`, `maritalStatus`, `primaryEmail`, `primaryMobile`, `primaryProfilePic`, `religion`, `category`, `nationality`, `verified`, `status`, `sessionId`, `createdBy`, `createdDateTime`) VALUES
(1, 2, 'rpaneru', 'cc03e747a6afbbcbf8be7668acfebee5', 'Rajesh Paneru', 'Tara Chandra Paneru', 'Devki Paneru', 'Male', '1986-06-03', 'Married', 'rpaneru1986@gmail.com', 2147483647, '', 'Hinduism', 'General (Gn)', 'Indian', 'Yes', 'Active', '', '', '2016-05-22 13:12:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_jwt`
--
ALTER TABLE `oauth_jwt`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `profiletypes`
--
ALTER TABLE `profiletypes`
  ADD PRIMARY KEY (`profileTypeId`);

--
-- Indexes for table `sms_log`
--
ALTER TABLE `sms_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiletypes`
--
ALTER TABLE `profiletypes`
  MODIFY `profileTypeId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sms_log`
--
ALTER TABLE `sms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
