-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 04:48 AM
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
('01b668b7585024b4fbb7dcfd717481345cfe0bee', 'testclient', 'rpaneru', '2016-06-01 19:08:24', NULL),
('0534f303e78d1891a740bb463b93ea764e142b3d', 'testclient', 'rpaneru', '2016-06-01 19:36:24', NULL),
('1017232e6a6bff022bfe046706c8449e51021018', 'testclient', 'rpaneru', '2016-06-01 19:09:29', NULL),
('17bf805476e3b6f3b510a2aa884f24856d8c3234', 'testclient', 'testuser', '2016-05-31 18:27:43', NULL),
('291169b7061e5498140c3afd88e0e83f669b6c6c', 'testclient', 'rpaneru', '2016-06-01 19:11:37', NULL),
('2cf72092c3730f4a76b518ef8866fb9025d5b247', 'testclient', NULL, '2016-05-31 18:13:39', NULL),
('3188da1ebf68f0d0a9bf370196449f3520d19c4c', 'testclient', NULL, '2016-05-29 20:10:32', NULL),
('328d6a3e8a3b95a7079657809624fbed5c9d7787', 'testclient', 'rpaneru', '2016-06-01 19:49:15', NULL),
('3cbfa3018ecf27f452f6cc04871d37697755d6bc', 'testclient', NULL, '2016-05-29 20:08:44', NULL),
('40c32c49209ed1e4058c86d2a69c020872647588', 'testclient', NULL, '2016-05-29 20:15:38', NULL),
('4554a83301f781674014f54b4d9e4fae24cf40a4', 'testclient', 'rpaneru', '2016-06-01 18:49:32', NULL),
('47d2a7b1ea89c541920195f34485f91b8e848eb8', 'testclient', NULL, '2016-05-31 17:46:57', NULL),
('51edb62544850d9155d548a10d448c574addecf2', 'testclient', 'rpaneru', '2016-06-08 03:44:28', NULL),
('55b49ad581faeb0f63e7e540508d5a6eecc983ef', 'testclient', NULL, '2016-05-29 20:09:19', NULL),
('5df0b8e1fb755d69a5025b69ef44589ee931a5d6', 'testclient', NULL, '2016-05-29 20:16:12', NULL),
('65c0971f81c44df805f87abc51ea21bee73e5ab5', 'testclient', 'testuser', '2016-06-01 02:56:47', NULL),
('6cf7792acdf1ec92394192dcf99fd25787b01ba6', 'testclient', 'testuser', '2016-05-31 17:54:20', NULL),
('879956b613b8becfa3b7bc1e95949654e3263ca4', 'testclient', 'rpaneru', '2016-06-01 17:55:24', NULL),
('894f037120e1c011f1c58d87100fb43d175bbafa', 'testclient', 'rpaneru', '2016-06-01 19:01:27', NULL),
('9624c5890308416f5278e943d95caa0723d51b6a', 'testclient', 'rpaneru', '2016-06-01 18:54:09', NULL),
('a14f5da88705c53f2533dc6546a47040a9e0ead4', 'testclient', 'testuser', '2016-05-31 17:59:57', NULL),
('b0a480a1b271d964021bf35cd3cc72b1ee88512a', 'testclient', 'testuser', '2016-06-01 03:50:56', NULL),
('b0f8b5c42991bddd7c46f4f1ac51fd080eb5ceb3', 'testclient', 'rpaneru', '2016-06-01 18:26:36', NULL),
('b477f4c5d4778feb452b3b8e4e95b329077e8d8e', 'testclient', 'testuser', '2016-05-31 18:27:59', NULL),
('b7f67b777d321738c7538e56872dae53371f105b', 'testclient', NULL, '2016-05-31 02:36:39', NULL),
('c45011523f84785085bd08a8484c7eb0d2508abd', 'testclient', 'rpaneru', '2016-06-01 19:04:31', NULL),
('c7c76e46fd0bff65384e579243c14ad68141d218', 'testclient', 'rpaneru', '2016-06-01 19:08:07', NULL),
('d2050ad8268129e5d9cc9bc4d08e47790221aaae', 'testclient', NULL, '2016-05-29 20:20:33', NULL),
('da632f8804e6662182451bc9691561911b14107a', 'testclient', NULL, '2016-05-29 20:08:38', NULL),
('e7c78d72f5beeff35bdc55f8123161bc8617a608', 'testclient', 'testuser', '2016-05-31 17:55:18', NULL),
('f0cfbd9a1e5f3c094e96f93bcb831c09bbb6a60b', 'testclient', 'testuser', '2016-06-01 03:50:28', NULL),
('f7b3158b925a083c0c6eaf436a8401bc231b4ec5', 'testclient', 'rpaneru', '2016-06-01 19:11:22', NULL),
('fba4224bf37f1d75806b83a888fa8c1817e76d09', 'testclient', 'testuser', '2016-06-01 03:51:10', NULL);

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
('07717a0627715d4213502d3bbbfb4d57c9fa1ab3', 'testclient', 'testuser', '2016-06-09 07:22:15', NULL),
('08a2568b95991736bb8fd6d4f3e8f7a4a6157749', 'testclient', NULL, '2016-06-12 18:19:11', NULL),
('0c446a5384d4dedad2208ff878179bbf04035ec2', 'testclient', NULL, '2016-06-12 14:17:24', NULL),
('0d21cdd21189d199d4ca7db8388960e7454c14af', 'testclient', NULL, '2016-06-12 12:19:15', NULL),
('12ef00b93d35e22edd0592354baade9b06dfc70c', 'testclient', NULL, '2016-06-12 18:45:59', NULL),
('14851d9d8614ca38a1a71277cc2efbdf474854e2', 'testclient', NULL, '2016-06-12 11:37:17', NULL),
('194b0b27013444ed82cd24514531f1a0551c7774', 'testclient', 'rpaneru', '2016-06-15 16:55:25', NULL),
('1985e142d7950b24de84363e1f14fcb710e9a6cf', 'testclient', NULL, '2016-06-12 12:15:43', NULL),
('1bafe8bf6236abeb9dc1c2a44310e75871f9260b', 'testclient', NULL, '2016-06-12 17:59:43', NULL),
('1bf26f7a820db03c70143b4133216941fc486f46', 'testclient', 'testuser', '2016-06-12 02:08:06', NULL),
('1f2edcd71cafda915e89184d3772346d49178c26', 'testclient', NULL, '2016-06-14 17:13:40', NULL),
('2056b2e3be30f12e4dfcaca9ebcce624600a1bce', 'testclient', NULL, '2016-06-12 17:56:34', NULL),
('229cfea0f7bb1c8e9db4e68731cbd8b4f591eb0e', 'testclient', 'rpaneru', '2016-06-15 18:11:37', NULL),
('2476c01277ee653c10b257d167e00c3af4c9c451', 'testclient', 'testuser', '2016-06-12 02:34:34', NULL),
('25de428ad4bcd8c65395b4504eccc691e56a3289', 'testclient', 'testuser', '2016-06-15 02:50:29', NULL),
('2a34d0508d2f55661b7a000eea61e8904aaa014d', 'testclient', NULL, '2016-06-12 05:44:00', NULL),
('2eb82beabd5041f244f9f6aeb49c1611cd1a2623', 'testclient', 'testuser', '2016-06-15 02:50:57', NULL),
('32d2b6324d8531f47ed85d29be25a69f9e3a3346', 'testclient', 'testuser', '2016-06-12 02:43:03', NULL),
('33587cb85c275fbc8957fff09c7b1be5b6a1711b', 'testclient', 'rpaneru', '2016-06-15 18:49:15', NULL),
('384bd9b498ee15fc10cf9a0131d3fd29a6892be4', 'testclient', NULL, '2016-06-12 04:07:29', NULL),
('3e13ef4a55201222872612553b676e06186e4bbe', 'testclient', 'rpaneru', '2016-06-15 18:01:27', NULL),
('3f8f8e365304d142b0ae04f178336f721c8858d5', 'testclient', 'testuser', '2016-06-15 02:51:10', NULL),
('4152335d6924e40d8732916d3470a10dc1fece7d', 'testclient', NULL, '2016-06-12 18:20:15', NULL),
('54a30f950bf599765a2881d0f6a48cb10273fdee', 'testclient', 'testuser', '2016-06-12 02:41:06', NULL),
('55019bb58d9e596d86105e33aa8791726a7e8888', 'testclient', NULL, '2016-06-12 18:02:54', NULL),
('5950b72589058016befaec9b056e1aecf28b5dd5', 'testclient', 'testuser', '2016-06-12 02:04:53', NULL),
('5b4fb4bea2b1d0b9abe9df07f4ee4a7f58796c1f', 'testclient', 'rpaneru', '2016-06-15 18:36:24', NULL),
('5b6ad531e57f569a1d8d9b76d3eafd13bce810ba', 'testclient', 'testuser', '2016-06-12 02:53:47', NULL),
('5b7830df3f090029e1d802e2f98bd2c9822e766f', 'testclient', NULL, '2016-06-12 11:44:28', NULL),
('5bd181349c4072a93019b79c0aa5bbcde6814086', 'testclient', NULL, '2016-06-12 12:02:54', NULL),
('61ea742355ab9e9a73497032f0abdd5c018c8542', 'testclient', NULL, '2016-06-12 18:05:01', NULL),
('6448565061a0359ccaa52b2e6d3e93128af2c68a', 'testclient', NULL, '2016-06-12 18:16:31', NULL),
('650ace84e256273179b7bc2a83e6594623d791c8', 'testclient', NULL, '2016-06-12 12:18:06', NULL),
('6753da64fcc8115625af9d67c1b9bae2e50bb1d0', 'testclient', NULL, '2016-06-12 05:36:12', NULL),
('6e3df988f8cf70c5270dd21843bb6f97fa180007', 'testclient', 'rpaneru', '2016-06-15 17:26:36', NULL),
('6ec5e5415283ef630e1827582f4cadfa21eb5792', 'testclient', 'testuser', '2016-06-05 22:21:34', NULL),
('707225797875f11ea5aff41dedea6a44e53f10ba', 'testclient', 'testuser', '2016-06-12 02:09:00', NULL),
('7b138c8ba4e77c1934162975f968fad3cd75c7e0', 'testclient', NULL, '2016-06-12 05:41:45', NULL),
('7e5fdfb53ce3f3db211f9c1d293c807ef7b20380', 'testclient', NULL, '2016-06-12 18:18:12', NULL),
('7f4d07b304b7ea223c085fca52e6f3c18ac26b0b', 'testclient', 'rpaneru', '2016-06-15 18:04:31', NULL),
('8720aa60cef93b48c6df2ca47de70dd214aebf7d', 'testclient', NULL, '2016-06-14 01:36:39', NULL),
('89c90bcbe813a75ec1a6c3da146d2d83d11fceab', 'testclient', NULL, '2016-06-12 03:46:21', NULL),
('8c9482b5ec27952b7c81633768a747f1e1dbe81a', 'testclient', 'testuser', '2016-06-05 12:20:00', NULL),
('8caa2f6a4fffbc3c68196a8f04e5ed23c0b7b837', 'testclient', 'testuser', '2016-06-14 17:27:59', NULL),
('8f735cd396fa571112360494e3ba6807bc2ed64a', 'testclient', 'testuser', '2016-06-12 02:06:35', NULL),
('8fb5c169f2aafd875153910770ae7d04f1fe9f98', 'testclient', NULL, '2016-06-12 14:12:36', NULL),
('90152a543c7b1f0ab0dffdd5800299c0e6263dab', 'testclient', 'testuser', '2016-06-14 17:27:43', NULL),
('993264ecc468e0f3f5f8763693aaf4b6167e5153', 'testclient', 'testuser', '2016-06-14 16:59:57', NULL),
('9b3913efc85a65d53340891610f8ca518822dcc2', 'testclient', NULL, '2016-06-12 11:35:18', NULL),
('9bf2773ea30221f20a08e36e36337dd5ed727eee', 'testclient', 'testuser', '2016-06-12 01:31:37', NULL),
('9e08fadd6266c61596a97121fc1878e893ddb636', 'testclient', NULL, '2016-06-14 16:46:57', NULL),
('a49d2be8cffe1e8b8d4b4716b2d4b8efd3def2b2', 'testclient', NULL, '2016-06-12 05:13:17', NULL),
('a5031f766b13fbdbd149e37457e03aec4154f7d7', 'testclient', NULL, '2016-06-12 11:17:17', NULL),
('a567023c26f79120c2b3ee075e63009039b7d8b0', 'testclient', NULL, '2016-06-12 12:16:53', NULL),
('a5e2a1bac20556f996ffb76b64061de99bb8fbd8', 'testclient', 'testuser', '2016-06-06 13:36:04', NULL),
('a719d7aaa76efdd42d2f80a578047394359f2153', 'testclient', 'testuser', '2016-06-14 16:55:18', NULL),
('af325abb0971122017b64acf697d18cde10d313d', 'testclient', 'testuser', '2016-06-12 01:52:22', NULL),
('b4c0a3d314400b752beda5a17a10f7cf7816dd74', 'testclient', NULL, '2016-06-12 18:40:12', NULL),
('b649de2dbe3b2b808fc1b8e7590f2fb57578b372', 'testclient', 'testuser', '2016-06-15 01:56:47', NULL),
('b9633b69de38272c2bebfefabeeaef04b7c8a45b', 'testclient', NULL, '2016-06-12 18:12:48', NULL),
('bdcd421953b0523c743f97f1ed764bc44e5531a7', 'testclient', NULL, '2016-06-12 19:15:39', NULL),
('bdddcb0a4c63a52ce066aab732aff89a7fccaef0', 'testclient', 'rpaneru', '2016-06-22 02:44:28', NULL),
('bf8ae58ab9343f889b42f6e71d26d523c3b43be2', 'testclient', 'testuser', '2016-06-12 02:39:54', NULL),
('c2a583a93939eb22d42d7d6cc9a8cce636a4db13', 'testclient', NULL, '2016-06-12 05:46:56', NULL),
('c7aff907ac1f73303bd0986ec9f0bf385ffc4dd4', 'testclient', 'rpaneru', '2016-06-15 18:08:07', NULL),
('c88a4c9d8d4f77e0a503725cd735c78890921cc5', 'testclient', 'testuser', '2016-06-12 01:41:49', NULL),
('c9e186f807153fafe9b704d6cdf43e2b99795c05', 'testclient', NULL, '2016-06-12 12:18:05', NULL),
('cb69d4a826640f3fffcdac4c41cc007983973fc8', 'testclient', 'rpaneru', '2016-06-15 18:09:29', NULL),
('d64bce69ad15b87624fca056002760e829c03a64', 'testclient', 'testuser', '2016-06-12 02:10:36', NULL),
('dae9ebcc3212c6e5075924406c0ccaea6ca9a901', 'testclient', 'testuser', '2016-06-03 10:01:41', NULL),
('ddc5a9b0d536dd38b7e32762cb6092469a7cce5c', 'testclient', NULL, '2016-06-12 18:34:20', NULL),
('e00067f0d6ba47d276f1d6a76a56a3a95dae0f38', 'testclient', 'testuser', '2016-06-12 02:12:23', NULL),
('e3866ef54a47332fc489210e68bc5813cc569269', 'testclient', 'rpaneru', '2016-06-15 18:11:22', NULL),
('e4deb7ce420350695d6262df68299151ada4dcaa', 'testclient', NULL, '2016-06-12 18:17:24', NULL),
('e6cedb2620c4dbdc45a9891de01b96e20b87ebc8', 'testclient', NULL, '2016-06-12 18:20:57', NULL),
('ea82027ec1a472ae4f36ca99bd177d028602252b', 'testclient', 'testuser', '2016-06-12 02:18:45', NULL),
('eaf7cf54c195419e1cdd49aa5975f8047eadb92d', 'testclient', 'testuser', '2016-06-12 01:47:58', NULL),
('ef00c9a0572ec759571e7166680b2be43967d518', 'testclient', 'testuser', '2016-06-09 13:19:36', NULL),
('ef3159ca1c78a62411bb6af10da78f2d52119221', 'testclient', 'rpaneru', '2016-06-15 17:49:32', NULL),
('f6ce4bcc8a820b789a8fa0e95d75f5339c4c2423', 'testclient', 'rpaneru', '2016-06-15 17:54:09', NULL),
('f8d81ae97ee068b59bfa35f98c90107eb78b768d', 'testclient', 'rpaneru', '2016-06-15 18:08:24', NULL),
('fcdd6428ba4d296ff6cfce1f5a3550f7288637d5', 'testclient', 'testuser', '2016-06-14 16:54:20', NULL);

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
(1, 1, 'rpaneru', 'cc03e747a6afbbcbf8be7668acfebee5', 'Rajesh Paneru', 'Tara Chandra Paneru', 'Devki Paneru', 'Male', '1986-06-03', 'Married', 'rpaneru1986@gmail.com', 2147483647, '', 'Hinduism', 'General (Gn)', 'Indian', 'Yes', 'Active', '', '', '2016-06-08 02:07:14');

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
-- Indexes for table `profile_types`
--
ALTER TABLE `profile_types`
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
-- AUTO_INCREMENT for table `profile_types`
--
ALTER TABLE `profile_types`
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
