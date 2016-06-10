-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2016 at 04:09 AM
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
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menuId` int(11) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `display` enum('Show','Hide') NOT NULL DEFAULT 'Hide',
  `parentMenuId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuId`, `menu`, `display`, `parentMenuId`) VALUES
(1, 'User', 'Show', 0),
(2, 'Menu', 'Show', 0),
(3, 'Sub Menu', 'Show', 0);

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
('07e271a5779f55fa813d052a333191cab846bf36', 'testclient', 'rpaneru', '2016-06-08 18:51:01', NULL),
('0f31345662c5963340c24033abc9b1bec4bc4dfe', 'testclient', 'rpaneru', '2016-06-09 18:06:29', NULL),
('196238a5fbf608b2e2b7060b9e454c39b456b654', 'testclient', 'rpaneru', '2016-06-08 18:45:19', NULL),
('2570560e498364a8bb902b0f5586fbf6dd0a5e12', 'testclient', 'rpaneru', '2016-06-09 17:36:31', NULL),
('25d1d93969b0609a8c25b6f20ec5cbcc97bf0da1', 'testclient', 'rpaneru', '2016-06-08 18:26:32', NULL),
('296f67f93699492da60c08df772d2aa9019c9003', 'testclient', 'rpaneru', '2016-06-08 18:34:41', NULL),
('666feadd52704fab6a859a0c53996ec152f9f5c0', 'testclient', 'rpaneru', '2016-06-08 18:42:46', NULL),
('6862e2d51aa2331725153ec81a9d8070c5c820d7', 'testclient', 'rpaneru', '2016-06-08 18:53:26', NULL),
('6f4e2aca9ee49385e255401b396fcf4600590bde', 'testclient', 'rpaneru', '2016-06-08 18:26:22', NULL),
('71c32203492ad79ea9cbb2fde7b5aceb7b7fcdc7', 'testclient', 'rpaneru', '2016-06-08 18:46:17', NULL),
('737f63849c313c32246e65b66df1f8ea19ebbb15', 'testclient', 'rpaneru', '2016-06-08 18:22:30', NULL),
('75efd42845372653fd549af6b2f4db1efb35f65f', 'testclient', 'rpaneru', '2016-06-08 17:53:08', NULL),
('8127414680d44fc5953b7a061db68bce1721539e', 'testclient', 'rpaneru', '2016-06-09 19:20:06', NULL),
('91006b493f6c43b6fd227eadf16575260c83a5dc', 'testclient', 'rpaneru', '2016-06-09 18:17:05', NULL),
('94d8319ffc8d1760da9044e3bb4f377879279ad7', 'testclient', 'rpaneru', '2016-06-08 18:01:53', NULL),
('a54363b2fe77a82b039f2e3be256fde76fa1600c', 'testclient', 'rpaneru', '2016-06-08 17:55:31', NULL),
('ba0bdc6798e0477ea5b749547801084c8491da8e', 'testclient', 'rpaneru', '2016-06-08 18:26:42', NULL),
('c661294b356fee926a633b9eee2385b3b7c2be0b', 'testclient', 'rpaneru', '2016-06-08 18:02:14', NULL),
('cb8d88983d88c6a3be5b3fabee1d72dc8c7889fc', 'testclient', 'rpaneru', '2016-06-08 18:52:47', NULL),
('cd9e55fe82e73e48dcee2c30c7401a61d80c04c2', 'testclient', 'rpaneru', '2016-06-09 17:58:33', NULL);

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
('testclient', '$2y$10$OJH6acEs4TtPNR/Yj0flnu5PUahp/15eub8fXyylNjFmN2CepoLu.', 'http://schools/users/index/request-oauth2-token', NULL, NULL, NULL);

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
('3156fca58544aebf8e60f476c6a9dc02042c965b', 'testclient', 'rpaneru', '2016-06-23 17:06:29', NULL),
('37467409f802644340a01eb6a28e05d21ccb18b4', 'testclient', 'rpaneru', '2016-06-22 17:02:15', NULL),
('409ef211fe27f9c4cca95b4ce20077a999c101f1', 'testclient', 'rpaneru', '2016-06-23 17:17:05', NULL),
('4cb3bee28dfd4c1f45ccc4c44e169acd3431b742', 'testclient', 'rpaneru', '2016-06-22 17:26:42', NULL),
('58fc30e3baa7b1549019acc8e851e57c27c10754', 'testclient', 'rpaneru', '2016-06-22 17:22:30', NULL),
('694b549ae260b0ce67c4539563d0ed19aabf9483', 'testclient', 'rpaneru', '2016-06-22 17:26:32', NULL),
('69a8fa0d176f22a471dd9a3f05b228e5876f3293', 'testclient', 'rpaneru', '2016-06-22 17:42:46', NULL),
('740763f435cf3a8cae42257ec50a8eadba8ecf3a', 'testclient', 'rpaneru', '2016-06-22 16:53:08', NULL),
('8f5ccd482a36ea57396086a40b27df4bb441f3e1', 'testclient', 'rpaneru', '2016-06-22 17:51:01', NULL),
('93ff7224fcb058dddb607242b4c3fcb9cdc75e66', 'testclient', 'rpaneru', '2016-06-22 17:45:20', NULL),
('9bc89b2350527116a011e61ecf0aef0e583e2cc0', 'testclient', 'rpaneru', '2016-06-22 17:34:41', NULL),
('a6328c5e7c75a3747001236241075718aa3cbc66', 'testclient', 'rpaneru', '2016-06-23 16:36:31', NULL),
('b93092de82190420c2547f3d876dcf7f67961b86', 'testclient', 'rpaneru', '2016-06-22 17:53:26', NULL),
('bd9cc1fd3d9de5d2fbd9cfd66a24e84286d42693', 'testclient', 'rpaneru', '2016-06-22 17:46:17', NULL),
('be247adfadca56e886fa4f52ec027e99e7590172', 'testclient', 'rpaneru', '2016-06-22 17:52:47', NULL),
('bfdf8ab7635502f0be55fce988ae31f3ec0baebc', 'testclient', 'rpaneru', '2016-06-22 17:26:22', NULL),
('c97c2e813f7dcce28203981df34a856178071b8c', 'testclient', 'rpaneru', '2016-06-23 18:20:06', NULL),
('d8c6e38d913883d9b72b5bcb0d660c92602ccb79', 'testclient', 'rpaneru', '2016-06-23 16:58:33', NULL),
('f565e1cdc81239e52b44334456eb5067d1a9d65a', 'testclient', 'rpaneru', '2016-06-22 17:01:53', NULL),
('f621d1731a6a41c9412ec7ed040a81d0b025c06c', 'testclient', 'rpaneru', '2016-06-22 16:55:31', NULL);

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
-- Table structure for table `profile_types`
--

CREATE TABLE IF NOT EXISTS `profile_types` (
  `profileTypeId` int(11) NOT NULL,
  `profileType` varchar(50) NOT NULL,
  `parentProfileTypeId` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sessionId` varchar(100) NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `createDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_types`
--

INSERT INTO `profile_types` (`profileTypeId`, `profileType`, `parentProfileTypeId`, `status`, `sessionId`, `createdBy`, `createDateTime`) VALUES
(1, 'Super Admin', 0, 'Active', '', '', '2016-05-22 13:08:09'),
(2, 'Admin', 1, 'Active', '', '', '2016-05-22 13:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `roleId` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `parentRoleId` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sessionId` varchar(100) NOT NULL,
  `createdBy` varchar(10) NOT NULL,
  `createDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleId`, `role`, `parentRoleId`, `status`, `sessionId`, `createdBy`, `createDateTime`) VALUES
(1, 'Super Admin', 0, 'Active', '', '', '2016-06-09 02:19:56'),
(2, 'Admin', 0, 'Active', '', '', '2016-06-09 02:19:56'),
(3, 'Registered User', 0, 'Active', '', '', '2016-06-09 02:19:56'),
(4, 'Guest', 0, 'Active', '', '', '2016-06-09 02:19:56'),
(5, 'Custom Admin', 0, 'Active', '', '', '2016-06-09 02:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE IF NOT EXISTS `role_permission` (
  `rolePermissionId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`rolePermissionId`, `roleId`, `menuId`) VALUES
(1, 2, 1);

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

INSERT INTO `user_details` (`id`, `userId`, `password`, `name`, `fatherName`, `motherName`, `gender`, `dob`, `maritalStatus`, `primaryEmail`, `primaryMobile`, `primaryProfilePic`, `religion`, `category`, `nationality`, `verified`, `status`, `sessionId`, `createdBy`, `createdDateTime`) VALUES
(1, 'rpaneru', 'cc03e747a6afbbcbf8be7668acfebee5', 'Rajesh Paneru', 'Tara Chandra Paneru', 'Devki Paneru', 'Male', '1986-06-03', 'Married', 'rpaneru1986@gmail.com', 2147483647, '', 'Hinduism', 'General (Gn)', 'Indian', 'Yes', 'Active', '', '', '2016-06-08 02:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `userRoleId` int(11) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`userRoleId`, `userId`, `roleId`) VALUES
(1, 'rpaneru', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuId`);

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
-- Indexes for table `profile_types`
--
ALTER TABLE `profile_types`
  ADD PRIMARY KEY (`profileTypeId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`rolePermissionId`);

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
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`userRoleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `profile_types`
--
ALTER TABLE `profile_types`
  MODIFY `profileTypeId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `rolePermissionId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `userRoleId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
