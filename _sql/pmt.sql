-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2012 at 11:14 AM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` VALUES(1, 'Intel', '2011-03-03 01:51:09', '2011-03-03 02:00:38');
INSERT INTO `clients` VALUES(2, 'Microsoft Bing', '2011-03-03 02:04:22', '2011-03-03 02:04:22');
INSERT INTO `clients` VALUES(3, 'MSN', '2011-03-03 02:06:16', '2011-03-03 02:06:16');
INSERT INTO `clients` VALUES(4, 'Miller Coors', '2011-03-03 02:06:22', '2011-03-03 02:06:22');
INSERT INTO `clients` VALUES(5, 'Coors Light', '2011-03-03 02:06:25', '2011-03-03 02:06:25');
INSERT INTO `clients` VALUES(6, 'Holland America', '2011-03-03 02:06:32', '2011-03-03 02:06:32');
INSERT INTO `clients` VALUES(7, 'Tourism New Zealand', '2011-03-03 02:06:40', '2011-03-03 02:06:40');
INSERT INTO `clients` VALUES(8, 'Levis', '2011-03-03 02:06:45', '2011-03-03 02:06:45');
INSERT INTO `clients` VALUES(9, 'Disney', '2011-03-03 03:33:07', '2011-03-03 03:33:07');
INSERT INTO `clients` VALUES(10, 'Best Buy', '2011-03-03 17:20:30', '2011-03-03 17:20:30');
INSERT INTO `clients` VALUES(11, 'Microsoft', '2011-03-06 12:49:54', '2011-03-06 12:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT 'NULL',
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL DEFAULT 'NULL',
  `offshore` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `total_projects` int(11) NOT NULL DEFAULT '0',
  `total_working_projects` int(11) NOT NULL DEFAULT '0',
  `notes` mediumtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` VALUES(1, 'CWK', 'Dustin Rush', 'Dustin.Rush@razorfish.com', NULL, 'Portland, OR.', 0, 'dustin-rush', 0, 1, NULL, '2011-03-03 01:37:34', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(2, 'FTE', 'Jessie Van Roechoudt', 'Jessie.vanRoechoudt@razorfish.com', NULL, 'San Francisco, CA', 0, 'jessie-van-roechoudt', 0, 1, NULL, '2011-03-03 01:41:01', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(3, 'FTE', 'Nathan Burazer', 'Nathan.Burazer@razorfish.com', NULL, 'San Francisco, CA', 0, 'nathan-burazer', 0, 0, NULL, '2011-03-03 01:41:32', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(4, 'CWK', 'Marco Fusaro', 'Marco.Fusaro@razorfish.com, marco@hiredhandmedia.com', NULL, 'Portland, OR.', 0, 'marco-fusaro', 0, 3, NULL, '2011-03-03 01:41:48', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(5, 'FTE', 'Matt Sutton', 'Matt.Sutton@razorfish.com', NULL, 'San Francisco, CA.', 0, 'matt-sutton', 0, 0, NULL, '2011-03-03 03:35:39', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(6, '', 'Philippe Vendrolini', 'Philippe.Vendrolini@razorfish.com', NULL, 'San Francisco, CA.', 0, 'philippe-vendrolini', 0, 0, NULL, '2011-03-03 03:36:06', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(7, 'CWK', 'Joe Howard', 'Joe.Howard@razorfish.com, unsoundart@yahoo.com', NULL, 'Portland, OR.', 0, 'joe-howard', 0, 3, NULL, '2011-03-03 03:43:40', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(13, 'CWK', 'Keylor Campos', '', NULL, 'Costa Rica', 1, 'keylor-campos', 0, 0, NULL, '2011-03-07 06:12:22', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(9, 'CWK', 'Esteban Chavarria', '', NULL, 'Costa Rica', 1, 'esteban-chavarria', 0, 0, NULL, '2011-03-03 22:39:04', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(10, 'CWK', 'Eduardo Cuadra', '', NULL, 'Costa Rica', 1, 'eduardo-cuadra', 0, 2, NULL, '2011-03-03 22:39:32', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(11, 'CWK', 'Gerardo Parajeles', 'gerardo.parajeles@boszdigital.com', NULL, 'Costa Rica', 1, 'gerardo-parajeles', 0, 0, NULL, '2011-03-03 22:41:10', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(14, 'FTE', 'Martin Lassen', 'Martin.Lassen@razorfish.com', NULL, 'Portland, OR.', 0, 'martin-lassen', 0, 0, NULL, '2011-03-07 06:26:28', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(15, 'CWK', 'Johan Chaves', 'johan.chaves@boszdigital.com', NULL, 'Costa Rica', 1, 'johan-chaves', 0, 0, NULL, '2011-03-07 07:16:27', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(16, 'CWK', 'Kari Fosse', 'kari@tinydynamitedesigns.com', NULL, 'Portland, OR.', 0, 'kari-fosse', 0, 5, NULL, '2011-03-22 10:58:44', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(17, 'CWK', 'Clint Harrison', 'studio@cowlik.com', NULL, 'Portland, OR.', 0, 'clint-harrison', 0, 0, NULL, '2011-03-27 21:56:57', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(18, 'CWK', 'Adam Sirkin', 'adam@ginkgosynthesis.com', NULL, 'Portland, OR.', 0, 'adam-sirkin', 0, 0, NULL, '2011-03-27 21:58:58', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(19, 'CWK', 'Oliver Rokoff', 'oliver.rokoff@gmail.com', NULL, 'Portland, OR.', 0, 'oliver-rokoff', 0, 0, NULL, '2011-03-27 21:59:23', '2011-08-03 09:53:04');
INSERT INTO `developers` VALUES(20, 'CWK', 'Lorenzo Rojas', 'lorenzo.rojas@boszdigital.com', NULL, 'Costa Rica', 1, 'lorenzo-rojas', 0, 1, NULL, '2011-03-30 22:14:03', '2011-08-03 09:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `developers_projects`
--

CREATE TABLE `developers_projects` (
  `project_id` int(11) DEFAULT NULL,
  `developer_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`developer_id`),
  KEY `developer_id` (`developer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developers_projects`
--

INSERT INTO `developers_projects` VALUES(1, 5);
INSERT INTO `developers_projects` VALUES(1, 6);
INSERT INTO `developers_projects` VALUES(3, 15);
INSERT INTO `developers_projects` VALUES(4, 7);
INSERT INTO `developers_projects` VALUES(5, 7);
INSERT INTO `developers_projects` VALUES(6, 1);
INSERT INTO `developers_projects` VALUES(7, 4);
INSERT INTO `developers_projects` VALUES(8, 2);
INSERT INTO `developers_projects` VALUES(8, 3);
INSERT INTO `developers_projects` VALUES(10, 1);
INSERT INTO `developers_projects` VALUES(10, 9);
INSERT INTO `developers_projects` VALUES(11, 1);
INSERT INTO `developers_projects` VALUES(11, 10);
INSERT INTO `developers_projects` VALUES(12, 4);
INSERT INTO `developers_projects` VALUES(14, 4);
INSERT INTO `developers_projects` VALUES(15, 6);
INSERT INTO `developers_projects` VALUES(15, 13);
INSERT INTO `developers_projects` VALUES(16, 4);
INSERT INTO `developers_projects` VALUES(17, 1);
INSERT INTO `developers_projects` VALUES(17, 14);
INSERT INTO `developers_projects` VALUES(18, 9);
INSERT INTO `developers_projects` VALUES(19, 1);
INSERT INTO `developers_projects` VALUES(19, 14);
INSERT INTO `developers_projects` VALUES(20, 9);
INSERT INTO `developers_projects` VALUES(20, 11);
INSERT INTO `developers_projects` VALUES(20, 14);
INSERT INTO `developers_projects` VALUES(21, 4);
INSERT INTO `developers_projects` VALUES(22, 7);
INSERT INTO `developers_projects` VALUES(23, 7);
INSERT INTO `developers_projects` VALUES(24, 11);
INSERT INTO `developers_projects` VALUES(24, 14);
INSERT INTO `developers_projects` VALUES(25, 9);
INSERT INTO `developers_projects` VALUES(25, 14);
INSERT INTO `developers_projects` VALUES(26, 9);
INSERT INTO `developers_projects` VALUES(26, 14);
INSERT INTO `developers_projects` VALUES(27, 1);
INSERT INTO `developers_projects` VALUES(27, 11);
INSERT INTO `developers_projects` VALUES(28, 9);
INSERT INTO `developers_projects` VALUES(28, 10);
INSERT INTO `developers_projects` VALUES(28, 11);
INSERT INTO `developers_projects` VALUES(28, 14);
INSERT INTO `developers_projects` VALUES(31, 4);
INSERT INTO `developers_projects` VALUES(32, 1);
INSERT INTO `developers_projects` VALUES(34, 1);
INSERT INTO `developers_projects` VALUES(36, 11);
INSERT INTO `developers_projects` VALUES(37, 11);
INSERT INTO `developers_projects` VALUES(39, 2);
INSERT INTO `developers_projects` VALUES(39, 4);
INSERT INTO `developers_projects` VALUES(40, 4);
INSERT INTO `developers_projects` VALUES(40, 17);
INSERT INTO `developers_projects` VALUES(41, 10);
INSERT INTO `developers_projects` VALUES(42, 3);
INSERT INTO `developers_projects` VALUES(43, 1);
INSERT INTO `developers_projects` VALUES(43, 10);
INSERT INTO `developers_projects` VALUES(43, 16);
INSERT INTO `developers_projects` VALUES(44, 1);
INSERT INTO `developers_projects` VALUES(46, 16);
INSERT INTO `developers_projects` VALUES(47, 9);
INSERT INTO `developers_projects` VALUES(48, 3);
INSERT INTO `developers_projects` VALUES(49, 7);
INSERT INTO `developers_projects` VALUES(50, 4);
INSERT INTO `developers_projects` VALUES(51, 10);
INSERT INTO `developers_projects` VALUES(52, 10);
INSERT INTO `developers_projects` VALUES(52, 16);
INSERT INTO `developers_projects` VALUES(53, 7);
INSERT INTO `developers_projects` VALUES(55, 11);
INSERT INTO `developers_projects` VALUES(58, 4);
INSERT INTO `developers_projects` VALUES(59, 16);
INSERT INTO `developers_projects` VALUES(60, 1);
INSERT INTO `developers_projects` VALUES(64, 16);
INSERT INTO `developers_projects` VALUES(65, 20);
INSERT INTO `developers_projects` VALUES(66, 4);

-- --------------------------------------------------------

--
-- Table structure for table `offshore_project_managers`
--

CREATE TABLE `offshore_project_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `notes` mediumtext,
  `location` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `offshore_project_managers`
--

INSERT INTO `offshore_project_managers` VALUES(1, 'CWK', 'Eduardo Morales', 'Eduardo.Morales@boszdigital.com, Eduardo.Morales@razorfish.com ', NULL, NULL, 'Costa Rica', '2011-03-03 08:42:27', '2011-03-07 05:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `offshore_project_managers_projects`
--

CREATE TABLE `offshore_project_managers_projects` (
  `project_id` int(11) DEFAULT NULL,
  `offshore_project_manager_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`offshore_project_manager_id`),
  KEY `offshore_project_manager_id` (`offshore_project_manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offshore_project_managers_projects`
--

INSERT INTO `offshore_project_managers_projects` VALUES(3, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(7, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(10, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(11, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(15, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(18, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(20, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(24, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(25, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(26, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(27, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(28, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(29, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(36, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(37, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(38, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(39, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(41, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(43, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(46, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(47, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(51, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(52, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(55, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(56, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(59, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(61, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `production_managers`
--

CREATE TABLE `production_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `offshore` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `total_projects` int(11) NOT NULL DEFAULT '0',
  `total_working_projects` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullname` (`fullname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `production_managers`
--

INSERT INTO `production_managers` VALUES(1, 'FTE', 'Rob Sawyer', 'rob.sawyer@razorfish.com', '(205) 657-4256', 'Portland, OR.', 0, 'rob-sawyer', 0, 12, '2011-03-03 01:42:32', '2012-04-23 12:18:40');
INSERT INTO `production_managers` VALUES(2, 'CWK', 'Dustin Rush', 'dustin.rush@razorfish.com', NULL, 'Portland, OR.', 0, 'dustin-rush', 0, 4, '2011-04-04 07:44:21', '2012-04-23 12:18:40');
INSERT INTO `production_managers` VALUES(3, 'FTE', 'Garrett Gillas', 'garrett.gillas@razorfish.com', '', 'Portland, OR.', 0, 'garrett-gillas', 0, 0, '2012-04-19 01:16:05', '2012-04-23 12:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `production_managers_projects`
--

CREATE TABLE `production_managers_projects` (
  `project_id` int(11) DEFAULT NULL,
  `production_manager_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`production_manager_id`),
  KEY `producer_id` (`production_manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production_managers_projects`
--

INSERT INTO `production_managers_projects` VALUES(1, 1);
INSERT INTO `production_managers_projects` VALUES(3, 1);
INSERT INTO `production_managers_projects` VALUES(4, 1);
INSERT INTO `production_managers_projects` VALUES(5, 1);
INSERT INTO `production_managers_projects` VALUES(6, 1);
INSERT INTO `production_managers_projects` VALUES(7, 1);
INSERT INTO `production_managers_projects` VALUES(8, 1);
INSERT INTO `production_managers_projects` VALUES(9, 1);
INSERT INTO `production_managers_projects` VALUES(10, 1);
INSERT INTO `production_managers_projects` VALUES(11, 1);
INSERT INTO `production_managers_projects` VALUES(12, 1);
INSERT INTO `production_managers_projects` VALUES(13, 1);
INSERT INTO `production_managers_projects` VALUES(14, 1);
INSERT INTO `production_managers_projects` VALUES(15, 1);
INSERT INTO `production_managers_projects` VALUES(16, 1);
INSERT INTO `production_managers_projects` VALUES(17, 1);
INSERT INTO `production_managers_projects` VALUES(18, 1);
INSERT INTO `production_managers_projects` VALUES(19, 1);
INSERT INTO `production_managers_projects` VALUES(20, 1);
INSERT INTO `production_managers_projects` VALUES(21, 1);
INSERT INTO `production_managers_projects` VALUES(22, 1);
INSERT INTO `production_managers_projects` VALUES(23, 1);
INSERT INTO `production_managers_projects` VALUES(24, 1);
INSERT INTO `production_managers_projects` VALUES(25, 1);
INSERT INTO `production_managers_projects` VALUES(26, 1);
INSERT INTO `production_managers_projects` VALUES(27, 1);
INSERT INTO `production_managers_projects` VALUES(28, 1);
INSERT INTO `production_managers_projects` VALUES(29, 1);
INSERT INTO `production_managers_projects` VALUES(30, 1);
INSERT INTO `production_managers_projects` VALUES(31, 1);
INSERT INTO `production_managers_projects` VALUES(32, 1);
INSERT INTO `production_managers_projects` VALUES(35, 1);
INSERT INTO `production_managers_projects` VALUES(36, 1);
INSERT INTO `production_managers_projects` VALUES(37, 1);
INSERT INTO `production_managers_projects` VALUES(38, 1);
INSERT INTO `production_managers_projects` VALUES(39, 1);
INSERT INTO `production_managers_projects` VALUES(40, 1);
INSERT INTO `production_managers_projects` VALUES(41, 1);
INSERT INTO `production_managers_projects` VALUES(42, 1);
INSERT INTO `production_managers_projects` VALUES(43, 1);
INSERT INTO `production_managers_projects` VALUES(44, 1);
INSERT INTO `production_managers_projects` VALUES(45, 1);
INSERT INTO `production_managers_projects` VALUES(46, 2);
INSERT INTO `production_managers_projects` VALUES(47, 1);
INSERT INTO `production_managers_projects` VALUES(48, 1);
INSERT INTO `production_managers_projects` VALUES(49, 1);
INSERT INTO `production_managers_projects` VALUES(50, 1);
INSERT INTO `production_managers_projects` VALUES(51, 1);
INSERT INTO `production_managers_projects` VALUES(52, 1);
INSERT INTO `production_managers_projects` VALUES(53, 1);
INSERT INTO `production_managers_projects` VALUES(54, 1);
INSERT INTO `production_managers_projects` VALUES(55, 1);
INSERT INTO `production_managers_projects` VALUES(56, 1);
INSERT INTO `production_managers_projects` VALUES(57, 1);
INSERT INTO `production_managers_projects` VALUES(58, 1);
INSERT INTO `production_managers_projects` VALUES(59, 2);
INSERT INTO `production_managers_projects` VALUES(60, 1);
INSERT INTO `production_managers_projects` VALUES(61, 1);
INSERT INTO `production_managers_projects` VALUES(62, 1);
INSERT INTO `production_managers_projects` VALUES(64, 2);
INSERT INTO `production_managers_projects` VALUES(65, 2);
INSERT INTO `production_managers_projects` VALUES(66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `total_units` int(10) NOT NULL DEFAULT '0',
  `offshore` tinyint(1) DEFAULT NULL,
  `started` tinyint(1) DEFAULT '0',
  `complete` tinyint(1) DEFAULT '0',
  `in_qa` tinyint(1) DEFAULT '0',
  `on_hold` tinyint(1) NOT NULL DEFAULT '0',
  `progress` int(10) NOT NULL DEFAULT '0',
  `start` date DEFAULT NULL,
  `due` date DEFAULT NULL,
  `priority` smallint(5) NOT NULL DEFAULT '1' COMMENT '5 is highest priority',
  `notes` mediumtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `last_edit_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` VALUES(1, 35999, 'Rich Media', 'Intel: Lucy/Kane Rich Media Ad Production', 'This task involves developing 6 rich media ads (2 sizes @ 3 concepts).', 'https://razorfish.jira.com/browse/INTELRICHMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-08', 3, NULL, '2011-03-03 02:09:36', '2011-03-16 09:24:10', 1, NULL, NULL);
INSERT INTO `projects` VALUES(3, 34777, 'Standard Media', 'Miller Coors: Develop OBOY Banners Refresh 2', 'Involves updating images and copy in a set of three creatives at 3 sizes.', 'https://razorfish.jira.com/browse/MHLOB-163', 0, 1, 1, 1, 0, 0, 0, '2011-03-02', '2011-03-04', 1, NULL, '2011-03-03 03:17:14', '2011-03-11 08:16:33', 4, NULL, NULL);
INSERT INTO `projects` VALUES(4, 37058, 'Standard Media', 'Disney: Mickey and Buzz Flash Standards â€ Banner Translation', '', 'https://razorfish.jira.com/browse/DISNEYMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-18', 1, NULL, '2011-03-03 03:37:54', '2011-03-21 09:53:24', 9, NULL, NULL);
INSERT INTO `projects` VALUES(5, 36057, 'Other', 'HAL: Preview Site Reorganization', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-1', 0, 0, 1, 0, 0, 0, 0, '2011-03-03', '2011-03-18', 1, NULL, '2011-03-03 09:48:46', '2011-03-16 09:17:48', 6, NULL, NULL);
INSERT INTO `projects` VALUES(6, 34894, 'Rich Media', 'MSN: Q3 High Impact 3.31 Burst', '', 'https://razorfish.jira.com/browse/MSNRICHMMXI-23', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-11', 3, NULL, '2011-03-03 09:57:17', '2011-03-16 09:23:27', 3, NULL, NULL);
INSERT INTO `projects` VALUES(7, 36438, 'Standard Media', 'FY11 Gaming: Trade In - Develop Standard Units', 'This task involves developing 8 standard ads (four sizes@two concepts).', 'https://razorfish.jira.com/browse/BBSM-14', 0, 1, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-03', 1, NULL, '2011-03-03 17:22:52', '2011-03-08 01:46:17', 10, NULL, NULL);
INSERT INTO `projects` VALUES(8, 35999, 'Standard Media', 'Intel: Lucy/Kane Standard Ad Production', 'This task involves developing 6 standard media ads (2 sizes @ 3 concepts).', 'https://razorfish.jira.com/browse/INTELSTANMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-08', 3, NULL, '2011-03-03 17:43:22', '2011-03-16 09:24:01', 1, NULL, NULL);
INSERT INTO `projects` VALUES(9, 34894, 'Standard Media', 'MSN: Windows Live Messenger Ads - OnNet NCAA', 'This task involves developing two standard Flash 234x60 ads @ two different creatives.', 'https://razorfish.jira.com/browse/MSNSTDMMXI-48', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-10', 1, NULL, '2011-03-03 17:47:59', '2011-03-11 08:16:17', 3, NULL, NULL);
INSERT INTO `projects` VALUES(10, 34225, 'Standard Media', 'Microsoft: Bing Music Festival Banners', 'This task involves developing 4 standard banner ads.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-16', 0, 1, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-08', 1, NULL, '2011-03-03 17:50:51', '2011-03-11 08:16:49', 2, NULL, NULL);
INSERT INTO `projects` VALUES(11, 35722, 'Standard Media', 'Levi''s CurveID - Branding Standards', 'There two creative directions and three total ads for each direction.', 'https://razorfish.jira.com/browse/LEVISTANMMXI-1', 0, 1, 1, 1, 0, 0, 0, '2011-03-04', '2011-03-14', 4, NULL, '2011-03-04 11:43:58', '2011-03-13 23:51:04', 8, NULL, NULL);
INSERT INTO `projects` VALUES(12, 36877, 'Standard Media', 'Office Direct Standard Banners: Develop 300x250 Prototypes', 'This task involves developing three Flash standard ads. There are three creative concepts named 3A, 3B, and 3D concepts.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-07', '2011-03-10', 2, NULL, '2011-03-06 12:49:29', '2011-03-15 07:44:10', 11, NULL, NULL);
INSERT INTO `projects` VALUES(13, 36491, 'Standard Media', 'Master of Cold Develop Standard Ads', '', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-8', 0, 0, 0, 0, 0, 0, 0, '2011-03-31', '2011-04-04', 1, NULL, '2011-03-07 05:41:48', '2011-03-07 07:13:23', 5, NULL, NULL);
INSERT INTO `projects` VALUES(14, 36438, 'Rich Media', 'FY11 Gaming Dragon Age 2 - Develop Pushdown Demo ', 'This task involved developing a pushdown demo that will be used as a template for the publishers.', 'https://razorfish.jira.com/browse/BBRM-9', 0, 0, 1, 1, 0, 0, 0, '2011-02-09', '2011-02-11', 1, NULL, '2011-03-07 06:02:50', '2011-03-07 06:21:20', 10, NULL, NULL);
INSERT INTO `projects` VALUES(15, 36438, 'Standard Media', 'FY11 Gaming - Dragon Age 2 - Develop Standard Units', '', 'https://razorfish.jira.com/browse/BBSM-10', 0, 1, 0, 1, 0, 0, 0, '2011-02-07', '2011-02-11', 1, NULL, '2011-03-07 06:13:05', '2011-03-07 06:14:49', 10, NULL, NULL);
INSERT INTO `projects` VALUES(16, 36438, 'Rich Media', 'FY11 Gaming: Trade In - Develop Pushdown Demo', 'This task involves developing a rich media pushdown ad that will be used as a template for the publishers to build from. ', 'https://razorfish.jira.com/browse/BBRM-10', 0, 0, 1, 1, 0, 0, 0, '2011-02-23', '2011-03-01', 1, NULL, '2011-03-07 06:20:10', '2011-03-07 06:20:40', 10, NULL, NULL);
INSERT INTO `projects` VALUES(17, 34894, 'Rich Media', 'Round 1 Burst', 'This task involved developing three rich media units. One for click to expand high k-weight, click to expand low k-weight, and rollover to expand.  ', 'https://razorfish.jira.com/browse/MSNRICHMMXI-1', 0, 0, 0, 1, 0, 0, 0, '2011-02-05', '2011-02-14', 1, NULL, '2011-03-07 06:25:48', '2011-03-07 06:25:48', 3, NULL, NULL);
INSERT INTO `projects` VALUES(18, 34226, 'Standard Media', 'Evergreen Refresh: I am Number Four', 'This task involves updating the images and copy in a set of five Flash units that have already been developed.', 'https://razorfish.jira.com/browse/BINGBANNERS-2', 0, 1, 0, 1, 0, 0, 0, '2011-01-14', '2011-01-25', 1, NULL, '2011-03-07 06:31:44', '2011-03-07 06:32:20', 2, NULL, NULL);
INSERT INTO `projects` VALUES(19, 34226, 'Rich Media', 'Buzz Media Ad', '', 'https://razorfish.jira.com/browse/BINGRICHMMXI-2', 0, 0, 0, 1, 0, 0, 0, '2011-02-01', '2011-02-11', 1, NULL, '2011-03-07 06:34:56', '2011-03-07 06:47:51', 2, NULL, NULL);
INSERT INTO `projects` VALUES(20, 34226, 'Standard Media', 'Bing Demand Gen Phase 3 Banners', 'This task involves creating three sized standard banner units for three different creatives (Price Predictor, Image Search, and Search History).', 'https://razorfish.jira.com/browse/BINGSTANMMXI-1', 0, 1, 0, 1, 0, 0, 0, '2011-01-31', '2011-02-09', 1, NULL, '2011-03-07 06:42:13', '2011-03-07 06:42:13', 2, NULL, NULL);
INSERT INTO `projects` VALUES(21, 34226, 'Standard Media', 'Bing: Develop Buzz Superheaders', 'This task involves developing a total of six standard ads. The set includes, a single 970x200 ad and five other sizes.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-19', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-07', 1, NULL, '2011-03-07 06:50:58', '2011-03-15 07:43:59', 2, NULL, NULL);
INSERT INTO `projects` VALUES(22, 36057, 'Rich Media', 'Convert existing ads to use XML', 'There are 6 banners that need to be built to 3 sizes. So there should be a total of 18 ads.', 'https://razorfish.jira.com/browse/HALRICHMMXI-7', 0, 0, 1, 0, 0, 0, 0, '2011-03-07', '2011-03-18', 1, NULL, '2011-03-07 07:02:41', '2011-03-15 10:49:29', 6, NULL, NULL);
INSERT INTO `projects` VALUES(23, 36709, 'Rich Media', 'New York Home Port Multiproduct & Bermuda NYC Home Port Sale', '', 'https://razorfish.jira.com/browse/HALRICHMMXI-4', 0, 0, 0, 1, 0, 0, 0, '2011-03-07', '2011-03-11', 1, NULL, '2011-03-07 07:04:19', '2011-03-11 08:15:28', 6, NULL, NULL);
INSERT INTO `projects` VALUES(24, 35745, 'Standard Media', 'Coors Light Hispanic - FMF Banners', 'This task involves developing 4 standard banners.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-1', 0, 1, 0, 1, 0, 0, 0, '2011-01-24', '2011-02-10', 1, NULL, '2011-03-07 07:12:54', '2011-03-07 07:12:54', 5, NULL, NULL);
INSERT INTO `projects` VALUES(25, 34894, 'Standard Media', 'Award Show Banners - Grammys', 'This task involves developing 3 standard ads.', 'https://razorfish.jira.com/browse/MSNSTDMMXI-1', 0, 1, 0, 1, 0, 0, 0, '2011-01-18', '2011-02-09', 1, NULL, '2011-03-07 07:32:25', '2011-03-07 07:32:57', 3, NULL, NULL);
INSERT INTO `projects` VALUES(26, 34894, 'Standard Media', 'Award Show Banners - Oscars', 'This task involves developing 3 standard ads.\r\n\r\nResizes: https://razorfish.jira.com/browse/MSNSTDMMXI-15', 'https://razorfish.jira.com/browse/MSNSTDMMXI-6', 0, 1, 0, 1, 0, 0, 0, '2011-01-27', '2011-02-11', 1, NULL, '2011-03-07 07:35:26', '2011-03-07 07:35:26', 3, NULL, NULL);
INSERT INTO `projects` VALUES(27, 34894, 'Standard Media', 'Make MSN Your Homepage" Standard Ads', 'This task involves developing 7 standard ads.', 'https://razorfish.jira.com/browse/MSNSTDMMXI-42', 0, 1, 1, 1, 0, 0, 0, '2011-02-22', '2011-03-05', 1, NULL, '2011-03-07 07:38:58', '2011-03-11 08:17:24', 3, NULL, NULL);
INSERT INTO `projects` VALUES(28, 34894, 'Standard Media', 'MSN FY11 Q3 Standard Units', 'This task involves updating 18 standard banner units with new creative.\r\n\r\n\r\nResizes: https://razorfish.jira.com/browse/MSNSTDMMXI-38', 'https://razorfish.jira.com/browse/MSNSTDMMXI-5', 0, 1, 1, 1, 0, 0, 0, '2011-01-27', '2011-02-10', 1, NULL, '2011-03-07 07:43:31', '2011-03-07 07:43:31', 3, NULL, NULL);
INSERT INTO `projects` VALUES(29, 34894, 'Standard Media', 'On-Net Q3 Banners', 'This task involves building the On Net sizes (120x240, 180x150, 234x60, 300x125) with All Up 1, All Up 2, Channel 1 and Channel 4 creatives. All Up 1 and Channel 4 banners will be ready later this week 3/7/11 for development.', 'https://razorfish.jira.com/browse/MSNSTDMMXI-46', 0, 1, 1, 1, 0, 0, 0, '2011-03-07', '2011-03-09', 1, NULL, '2011-03-07 13:15:47', '2011-03-11 08:19:07', 3, NULL, NULL);
INSERT INTO `projects` VALUES(30, 34894, 'Standard Media', 'MSN FY11 Q3 Standard Units - Channel 4 MSNBC Last Minute Update', 'This task involves replacing the msnbc logo with the new Today logo in the Channel 4 standard ad. This includes 3 sizes (160x600, 300x250, 728x90).\r\n', 'https://razorfish.jira.com/browse/MSNSTDMMXI-49', 0, 0, 0, 1, 0, 0, 0, '2011-03-07', '2011-03-08', 1, NULL, '2011-03-07 23:00:24', '2011-03-13 17:28:47', 3, NULL, NULL);
INSERT INTO `projects` VALUES(31, 36438, 'Rich Media', 'Best Buy Gaming FY11: Trade In - Flash Pushdown for IGN', 'This task involves resizing the existing Gamespot expandable to fit the IGN specs.', 'https://razorfish.jira.com/browse/BBRM-12', 0, 0, 1, 1, 0, 0, 0, '2011-03-08', '2011-03-09', 1, NULL, '2011-03-08 15:34:28', '2011-03-13 23:35:26', 10, NULL, NULL);
INSERT INTO `projects` VALUES(32, 34894, 'Rich Media', 'High Impact 3.31: Remove All Logos / Copy Updates', 'This task involves removing the channel logos and updating the copy from the HI ads that are running on Huffington Post, NY Times and Rhapsody for 3/31.', 'https://razorfish.jira.com/browse/MSNRICHMMXI-29', 0, 0, 1, 1, 0, 0, 0, '2011-03-09', '2011-03-10', 4, NULL, '2011-03-09 14:37:21', '2011-03-16 09:23:43', 3, NULL, NULL);
INSERT INTO `projects` VALUES(34, 34894, 'Rich Media', 'Q3 High Impact 3.31 Burst : Create 300x250 Box Unit', 'Create standard box unit to accompany float. The entire unit should be clickable.', 'https://razorfish.jira.com/browse/MSNRICHMMXI-31', 0, 0, 1, 1, 0, 0, 0, '2011-03-09', '2011-03-10', 1, NULL, '2011-03-09 23:52:15', '2011-03-13 23:46:06', 3, NULL, NULL);
INSERT INTO `projects` VALUES(35, 34225, 'Standard Media', 'Bing Flash Piece for Mixpo', '', 'https://razorfish.jira.com/browse/BINGSTANMMXI-23', 0, 0, 1, 1, 0, 0, 0, '2011-03-09', '2011-03-14', 3, NULL, '2011-03-09 23:54:42', '2011-03-16 09:24:50', 2, NULL, NULL);
INSERT INTO `projects` VALUES(36, 34894, 'Standard Media', 'MSN: On-Net Q3 Banners: Develop All Up 1 Version', 'Because of a last minute executive decision, the client has decided to drop the Channel 4 and go with the All Up 1. This task involves developing the All Up 1 ads.', 'https://razorfish.jira.com/browse/MSNSTDMMXI-51', 0, 1, 1, 1, 0, 0, 0, '2011-03-10', '2011-03-15', 1, NULL, '2011-03-10 10:32:42', '2011-03-16 09:22:37', 3, NULL, NULL);
INSERT INTO `projects` VALUES(37, 36877, 'Standard Media', 'Office Direct Standard Banners: Develop Resizes', 'This task involves developing a total of 15 Flash standard ads. There are 3 concepts built out in 5 different sizes.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-3', 0, 1, 1, 1, 0, 0, 0, '2011-03-14', '2011-03-18', 3, NULL, '2011-03-11 08:36:48', '2011-03-22 11:10:06', 11, NULL, NULL);
INSERT INTO `projects` VALUES(38, 35722, 'Standard Media', 'Levi''s CurveID - Branding: Client Feedback', 'Implementing client feedback on all ads.', 'https://razorfish.jira.com/browse/LEVISTANMMXI-10', 0, 1, 0, 1, 0, 0, 0, '2011-03-11', '2011-03-14', 4, NULL, '2011-03-11 17:14:37', '2011-03-15 16:29:51', 8, NULL, NULL);
INSERT INTO `projects` VALUES(39, 35999, 'Rich Media', 'Max Standard Media Ads', 'This task involves building 6 standard ads. The ads should follow the design comps attached below and should match the motion in the prototypes provided as closely as possible.', 'https://razorfish.jira.com/browse/INTELSTANMMXI-27', 0, 1, 1, 0, 0, 0, 50, '2011-03-25', '2011-04-01', 3, NULL, '2011-03-15 09:45:05', '2011-10-20 14:22:45', 1, NULL, NULL);
INSERT INTO `projects` VALUES(40, 36018, 'Rich Media', 'Core i5 Marquee Ad', '', 'https://razorfish.jira.com/browse/INTELCS-79', 0, 0, 1, 1, 0, 0, 0, '2011-03-15', '2011-03-18', 3, NULL, '2011-03-15 09:47:15', '2011-03-21 09:52:39', 1, NULL, NULL);
INSERT INTO `projects` VALUES(41, 36499, 'Standard Media', 'Coors Catch Ad Updates', 'This task involves updating an existing set of ads with a new CTA.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-11', 0, 1, 1, 1, 0, 0, 0, '2011-03-15', '2011-03-16', 4, NULL, '2011-03-15 16:04:52', '2011-03-16 09:21:03', 5, NULL, NULL);
INSERT INTO `projects` VALUES(42, 35999, 'Rich Media', 'Intel: Lucy/Kane QA Standard Media Ad Bug Fixes', '', 'https://razorfish.jira.com/browse/INTELSTANMMXI-25', 0, 0, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-18', 4, NULL, '2011-03-16 09:26:34', '2011-03-21 09:51:44', 1, NULL, NULL);
INSERT INTO `projects` VALUES(43, 34226, 'Rich Media', 'Bing Mobile High Impact', 'This task involves building a shell that loads swfs and developing the animations that are loaded into the shell.\r\n\r\nhttp://microsoft.razorfishcreative.com/search_adv/content/bing_mobile_HI/index.html\r\nusername:  microsoft_search_adv\r\npassword:  s3@rch2008', 'https://razorfish.jira.com/browse/BINGRICHMMXI-6', 0, 1, 1, 0, 0, 0, 0, '2011-03-16', '2011-03-30', 2, NULL, '2011-03-16 09:30:25', '2011-03-31 12:11:41', 2, NULL, NULL);
INSERT INTO `projects` VALUES(44, 34894, 'Rich Media', 'MSN Q3 High Impact 3.31 Burst: Develop Float Ad', 'Develop a Flash shell that loads in a video to the following dimensions.\r\nFloat Creative Size Max: 200W X 200H\r\nFloat Stage Size Max: 932W X 450H', 'https://razorfish.jira.com/browse/MSNRICHMMXI-32', 0, 0, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-18', 3, NULL, '2011-03-16 09:32:24', '2011-03-21 09:53:01', 3, NULL, NULL);
INSERT INTO `projects` VALUES(45, 35999, 'Rich Media', 'Intel: Lucy/Kane QA Mobile Ad Bug Fixes', '', 'https://razorfish.jira.com/browse/INTELSTANMMXI-26', 0, 0, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-18', 1, NULL, '2011-03-16 09:43:38', '2011-03-18 10:51:33', 1, NULL, NULL);
INSERT INTO `projects` VALUES(46, 37139, 'Standard Media', 'Hotmail Banners for Office', 'Create fifteen standard flash banners for Microsoft Hotmail promotion on Office.com and Office Starter.\r\n', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-5', 0, 1, 0, 0, 0, 0, 0, '2011-04-04', '2011-04-20', 1, NULL, '2011-03-16 14:09:28', '2011-04-04 08:07:30', 11, NULL, NULL);
INSERT INTO `projects` VALUES(47, 37267, 'Standard Media', 'Miss Coors Light Banners', 'This task involves building 3 standard Flash banner ads.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-12', 0, 1, 1, 1, 0, 0, 0, '2011-03-18', '2011-03-22', 2, NULL, '2011-03-16 15:33:09', '2011-03-24 17:40:35', 5, NULL, NULL);
INSERT INTO `projects` VALUES(48, 35999, 'Rich Media', 'Intel: Lucy/Kane QA Rich Media Ad Bug Fixes', '', 'https://razorfish.jira.com/browse/INTELRICHMMXI-6', 0, 0, 1, 1, 0, 0, 0, '2011-03-17', '2011-03-18', 4, NULL, '2011-03-18 10:47:08', '2011-03-21 09:51:53', 1, NULL, NULL);
INSERT INTO `projects` VALUES(49, 36057, 'Other', 'HAL Europe: Ad Copy Revisions', '', 'https://razorfish.jira.com/browse/HALRICHMMXI-19', 0, 1, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-18', 4, NULL, '2011-03-18 10:48:44', '2011-03-30 23:45:32', 6, NULL, NULL);
INSERT INTO `projects` VALUES(50, 34226, 'Standard Media', '300x100 Seattle Sounders Ads', '', 'https://razorfish.jira.com/browse/BINGSTANMMXI-25', 0, 0, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-22', 2, NULL, '2011-03-20 23:29:56', '2011-03-23 21:16:39', 2, NULL, NULL);
INSERT INTO `projects` VALUES(51, 34226, 'Standard Media', 'Develop Bing Education Lily Companions', '', 'https://razorfish.jira.com/browse/BINGSTANMMXI-27', 0, 1, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-25', 2, NULL, '2011-03-20 23:31:17', '2011-03-29 07:34:07', 2, NULL, NULL);
INSERT INTO `projects` VALUES(52, 36852, 'Standard Media', 'Best Buy FY11 Gaming: L.A. Noire - Standard Units', '', 'https://razorfish.jira.com/browse/BBSM-22', 0, 1, 1, 0, 0, 0, 0, '2011-03-21', '2011-03-28', 1, NULL, '2011-03-21 09:10:18', '2011-04-01 02:06:31', 10, NULL, NULL);
INSERT INTO `projects` VALUES(53, 36852, 'Rich Media', 'Best Buy FY11 Gaming: L.A. Noire - Pushdown for Pubs', '', 'https://razorfish.jira.com/browse/BBRM-13', 0, 0, 1, 0, 0, 0, 0, '2011-03-21', '2011-03-28', 1, NULL, '2011-03-21 09:12:15', '2011-03-31 00:07:50', 10, NULL, NULL);
INSERT INTO `projects` VALUES(54, 34894, 'Rich Media', 'MSN Q3 High Impact: MSN Meebo Ad', '', 'https://razorfish.jira.com/browse/MSNRICHMMXI-36', 0, 0, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-21', 4, NULL, '2011-03-21 14:57:17', '2011-03-23 22:02:06', 3, NULL, NULL);
INSERT INTO `projects` VALUES(55, 36499, 'Standard Media', 'Coors Equities National 2011 Train Ad Updates', 'This task involves updating an existing set of three standard banner ads. The update includes changing the mountains out and having the CTA read "like us on facebook" like the other ones (https://razorfish.jira.com/browse/MCCLMMXISTAN-11).\r\n', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-14', 0, 1, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-25', 1, NULL, '2011-03-21 23:47:04', '2011-03-29 15:19:16', 4, NULL, NULL);
INSERT INTO `projects` VALUES(56, 36877, 'Standard Media', 'Office Direct Banners: Internal Creative Review Feedback  ', '', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-4', 0, 1, 1, 1, 0, 0, 0, '2011-03-22', '2011-03-23', 1, NULL, '2011-03-22 11:09:47', '2011-03-25 10:20:53', 11, NULL, NULL);
INSERT INTO `projects` VALUES(57, 34894, 'Rich Media', 'MSN Q4 High Impact - 5.5 Burst', '', 'https://razorfish.jira.com/browse/MSNRICHMMXI-37', 0, 0, 0, 0, 0, 0, 0, '2011-04-04', '2011-04-18', 3, NULL, '2011-03-22 13:36:36', '2011-03-30 23:44:38', 3, NULL, NULL);
INSERT INTO `projects` VALUES(58, 35999, 'Rich Media', 'Max Rich Media Ads', '', 'https://razorfish.jira.com/browse/INTELRICHMMXI-8', 0, 0, 1, 0, 0, 0, 0, '2011-03-25', '2011-04-01', 3, NULL, '2011-03-22 22:30:30', '2011-03-30 23:46:15', 1, NULL, NULL);
INSERT INTO `projects` VALUES(59, 37213, 'Standard Media', 'Office Influencer Banners', 'This task involves developing three different creative executions at three different sizes.\r\n', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-8', 0, 1, 0, 0, 0, 0, 0, '2011-03-31', '2011-04-05', 2, NULL, '2011-03-23 13:24:15', '2011-04-04 08:06:55', 11, NULL, NULL);
INSERT INTO `projects` VALUES(60, 34894, 'Rich Media', 'MSN Q4 High Impact - 4.7 Burst', '', 'https://razorfish.jira.com/browse/MSNRICHMMXI-35', 0, 0, 1, 1, 0, 0, 0, '2011-03-23', '2011-03-25', 3, NULL, '2011-03-23 14:49:06', '2011-03-30 23:44:47', 3, NULL, NULL);
INSERT INTO `projects` VALUES(61, 35999, 'Rich Media', 'Visibly Smart Standard Banners: Claire Track', '', 'https://razorfish.jira.com/browse/INTELSTANMMXI-31', 0, 1, 0, 0, 0, 0, 0, '2011-03-24', '2011-03-24', 3, NULL, '2011-03-24 11:04:05', '2011-10-20 15:04:46', 1, NULL, NULL);
INSERT INTO `projects` VALUES(62, 36491, 'Rich Media', 'Master of Cold: Develop Ad for YouTube', 'This task involves developing a 970x250 rich media ad for the masthead portion of YouTube.', 'https://razorfish.jira.com/browse/MCCLMMXIRICH-1', 0, 0, 0, 0, 0, 0, 0, '2011-03-24', '2011-04-05', 2, NULL, '2011-03-24 15:31:02', '2011-03-24 15:31:27', 4, NULL, NULL);
INSERT INTO `projects` VALUES(64, 34225, 'Standard Media', 'Demand Gen Mobile Banners', '', 'https://razorfish.jira.com/browse/BINGSTANMMXI-28', 0, 1, 0, 0, 0, 0, 0, '2011-03-28', '2011-04-04', 3, NULL, '2011-03-28 17:54:39', '2011-10-20 15:03:13', 2, NULL, NULL);
INSERT INTO `projects` VALUES(66, 35999, 'Rich Media', 'Visibly Smart Rich Media Banners: Claire Track', '', 'https://razorfish.jira.com/browse/INTELRICHMMXI-15', 0, 0, 0, 0, 0, 0, 0, '2011-04-01', '2011-04-15', 3, NULL, '2011-04-01 00:35:15', '2011-04-01 00:35:15', 1, NULL, NULL);
INSERT INTO `projects` VALUES(65, 34894, 'Standard Media', 'MSN "Make MSN Your Homepage": Develop Additional Creatives', 'This task involves developing 14 standard ads. There are 7 sizes and two creative concepts.\r\n', 'https://razorfish.jira.com/browse/MSNSTDMMXI-52', 0, 0, 1, 0, 0, 0, 100, '2011-03-30', '2011-04-05', 4, 'Testing the notes section.', '2011-03-30 22:13:02', '2012-04-20 16:06:25', 3, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `project_managers`
--

CREATE TABLE `project_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `notes` mediumtext,
  `location` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `project_managers`
--

INSERT INTO `project_managers` VALUES(1, 'FTE', 'Tara Willden', 'Tara.Willden@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-03 03:05:35', '2012-04-20 13:59:45');
INSERT INTO `project_managers` VALUES(2, 'FTE', 'Annie Mentzer', 'Annie.Mentzer@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-03 03:08:21', '2011-03-07 05:43:52');
INSERT INTO `project_managers` VALUES(3, 'FTE', 'Lisa Hartigan', 'Lisa.Hartigan@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-03 03:08:33', '2011-03-07 05:44:08');
INSERT INTO `project_managers` VALUES(4, 'CWK', 'Holly Meyer', 'Holly.Meyer@razorfish.com', NULL, NULL, 'San Francisco, CA.', '2011-03-03 03:08:54', '2011-03-07 05:44:28');
INSERT INTO `project_managers` VALUES(5, 'FTE', 'Brian Howe', 'Brian.Howe@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-03 03:09:33', '2011-03-07 05:44:44');
INSERT INTO `project_managers` VALUES(6, '', 'Aaron Oliver', 'Aaron.Oliver@razorfish.com', NULL, NULL, '', '2011-03-03 03:09:42', '2011-03-07 05:45:01');
INSERT INTO `project_managers` VALUES(7, 'FTE', 'Eric LePire', 'Eric.LePire@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-03 03:18:41', '2011-03-07 05:45:19');
INSERT INTO `project_managers` VALUES(8, 'FTE', 'Tom Fox-Sellers', 'Tom.Fox-Sellers@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-03 03:18:55', '2011-03-07 05:45:33');
INSERT INTO `project_managers` VALUES(10, 'FTE', 'Stephen Martinez', 'Stephen.Martinez@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-03 03:34:20', '2011-03-07 05:45:48');
INSERT INTO `project_managers` VALUES(11, 'FTE', 'Jennifer Becker', 'Jennifer.Becker@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-04 11:44:22', '2011-03-07 05:43:21');
INSERT INTO `project_managers` VALUES(12, 'FTE', 'Steve Basden', 'Steven.Basden@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-07 05:42:46', '2011-03-07 05:42:46');
INSERT INTO `project_managers` VALUES(13, 'FTE', 'Anna Powers', 'anna.powers@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-15 16:05:21', '2011-03-15 16:05:33');
INSERT INTO `project_managers` VALUES(14, '', 'Jessica Larson', 'Jessica.Larson@razorfish.com', NULL, NULL, '', '2011-03-16 14:10:12', '2011-03-16 14:10:12');
INSERT INTO `project_managers` VALUES(15, '', 'Evelyn Chan', 'Evelyn.Chan@razorfish.com', NULL, NULL, 'Seattle, WA.', '2011-03-21 09:11:06', '2011-03-21 09:11:06');
INSERT INTO `project_managers` VALUES(16, 'FTE', 'Joseph Kamel', 'Joseph.Kamel@razorfish.com', NULL, NULL, 'San Francisco, CA.', '2011-03-24 11:05:14', '2011-03-24 11:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `project_managers_projects`
--

CREATE TABLE `project_managers_projects` (
  `project_id` int(11) DEFAULT NULL,
  `project_manager_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`project_manager_id`),
  KEY `project_manager_id` (`project_manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_managers_projects`
--

INSERT INTO `project_managers_projects` VALUES(1, 4);
INSERT INTO `project_managers_projects` VALUES(3, 7);
INSERT INTO `project_managers_projects` VALUES(4, 10);
INSERT INTO `project_managers_projects` VALUES(5, 10);
INSERT INTO `project_managers_projects` VALUES(6, 2);
INSERT INTO `project_managers_projects` VALUES(6, 5);
INSERT INTO `project_managers_projects` VALUES(7, 6);
INSERT INTO `project_managers_projects` VALUES(8, 4);
INSERT INTO `project_managers_projects` VALUES(9, 1);
INSERT INTO `project_managers_projects` VALUES(10, 1);
INSERT INTO `project_managers_projects` VALUES(11, 11);
INSERT INTO `project_managers_projects` VALUES(12, 3);
INSERT INTO `project_managers_projects` VALUES(13, 12);
INSERT INTO `project_managers_projects` VALUES(14, 6);
INSERT INTO `project_managers_projects` VALUES(15, 6);
INSERT INTO `project_managers_projects` VALUES(16, 6);
INSERT INTO `project_managers_projects` VALUES(17, 2);
INSERT INTO `project_managers_projects` VALUES(18, 1);
INSERT INTO `project_managers_projects` VALUES(19, 2);
INSERT INTO `project_managers_projects` VALUES(20, 1);
INSERT INTO `project_managers_projects` VALUES(21, 2);
INSERT INTO `project_managers_projects` VALUES(22, 10);
INSERT INTO `project_managers_projects` VALUES(23, 10);
INSERT INTO `project_managers_projects` VALUES(24, 12);
INSERT INTO `project_managers_projects` VALUES(25, 1);
INSERT INTO `project_managers_projects` VALUES(26, 1);
INSERT INTO `project_managers_projects` VALUES(27, 1);
INSERT INTO `project_managers_projects` VALUES(28, 1);
INSERT INTO `project_managers_projects` VALUES(28, 2);
INSERT INTO `project_managers_projects` VALUES(28, 5);
INSERT INTO `project_managers_projects` VALUES(29, 1);
INSERT INTO `project_managers_projects` VALUES(30, 1);
INSERT INTO `project_managers_projects` VALUES(31, 6);
INSERT INTO `project_managers_projects` VALUES(32, 5);
INSERT INTO `project_managers_projects` VALUES(34, 5);
INSERT INTO `project_managers_projects` VALUES(35, 1);
INSERT INTO `project_managers_projects` VALUES(36, 1);
INSERT INTO `project_managers_projects` VALUES(37, 3);
INSERT INTO `project_managers_projects` VALUES(38, 11);
INSERT INTO `project_managers_projects` VALUES(38, 13);
INSERT INTO `project_managers_projects` VALUES(39, 4);
INSERT INTO `project_managers_projects` VALUES(40, 4);
INSERT INTO `project_managers_projects` VALUES(41, 13);
INSERT INTO `project_managers_projects` VALUES(42, 4);
INSERT INTO `project_managers_projects` VALUES(43, 2);
INSERT INTO `project_managers_projects` VALUES(43, 14);
INSERT INTO `project_managers_projects` VALUES(44, 5);
INSERT INTO `project_managers_projects` VALUES(45, 4);
INSERT INTO `project_managers_projects` VALUES(47, 12);
INSERT INTO `project_managers_projects` VALUES(48, 4);
INSERT INTO `project_managers_projects` VALUES(49, 10);
INSERT INTO `project_managers_projects` VALUES(50, 1);
INSERT INTO `project_managers_projects` VALUES(51, 1);
INSERT INTO `project_managers_projects` VALUES(52, 15);
INSERT INTO `project_managers_projects` VALUES(53, 15);
INSERT INTO `project_managers_projects` VALUES(54, 1);
INSERT INTO `project_managers_projects` VALUES(55, 13);
INSERT INTO `project_managers_projects` VALUES(56, 3);
INSERT INTO `project_managers_projects` VALUES(57, 5);
INSERT INTO `project_managers_projects` VALUES(58, 4);
INSERT INTO `project_managers_projects` VALUES(59, 1);
INSERT INTO `project_managers_projects` VALUES(60, 5);
INSERT INTO `project_managers_projects` VALUES(61, 16);
INSERT INTO `project_managers_projects` VALUES(62, 12);
INSERT INTO `project_managers_projects` VALUES(64, 1);
INSERT INTO `project_managers_projects` VALUES(65, 1);
INSERT INTO `project_managers_projects` VALUES(66, 16);

-- --------------------------------------------------------

--
-- Table structure for table `qa_resources`
--

CREATE TABLE `qa_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `notes` mediumtext,
  `location` varchar(255) DEFAULT NULL,
  `offshore` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullname` (`fullname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qa_resources`
--

INSERT INTO `qa_resources` VALUES(1, 'CWK', 'Peter Mac Courtney', 'peter.maccourtney@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2011-03-03 22:35:35', '2011-03-07 06:41:01');
INSERT INTO `qa_resources` VALUES(2, 'CWK', 'Pablo Montero', '', NULL, NULL, 'Costa Rica', 1, '2011-03-07 06:12:09', '2011-03-07 06:12:09');
INSERT INTO `qa_resources` VALUES(3, 'CWK', 'Rigoberto Lopez', 'rigoberto.lopez@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2011-04-01 02:05:56', '2011-04-01 02:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `qa_resources_projects`
--

CREATE TABLE `qa_resources_projects` (
  `project_id` int(11) DEFAULT NULL,
  `qa_resource_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`qa_resource_id`),
  KEY `qa_resource_id` (`qa_resource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qa_resources_projects`
--

INSERT INTO `qa_resources_projects` VALUES(3, 1);
INSERT INTO `qa_resources_projects` VALUES(7, 1);
INSERT INTO `qa_resources_projects` VALUES(10, 1);
INSERT INTO `qa_resources_projects` VALUES(15, 2);
INSERT INTO `qa_resources_projects` VALUES(18, 1);
INSERT INTO `qa_resources_projects` VALUES(20, 1);
INSERT INTO `qa_resources_projects` VALUES(24, 1);
INSERT INTO `qa_resources_projects` VALUES(25, 1);
INSERT INTO `qa_resources_projects` VALUES(26, 1);
INSERT INTO `qa_resources_projects` VALUES(27, 1);
INSERT INTO `qa_resources_projects` VALUES(28, 1);
INSERT INTO `qa_resources_projects` VALUES(36, 1);
INSERT INTO `qa_resources_projects` VALUES(37, 1);
INSERT INTO `qa_resources_projects` VALUES(41, 1);
INSERT INTO `qa_resources_projects` VALUES(43, 1);
INSERT INTO `qa_resources_projects` VALUES(43, 2);
INSERT INTO `qa_resources_projects` VALUES(47, 1);
INSERT INTO `qa_resources_projects` VALUES(51, 1);
INSERT INTO `qa_resources_projects` VALUES(52, 3);
INSERT INTO `qa_resources_projects` VALUES(55, 1);
INSERT INTO `qa_resources_projects` VALUES(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_projects`
--

CREATE TABLE `upcoming_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_manager` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `project_number` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `total_units` int(10) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `due` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `production_manager_id` int(10) DEFAULT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  `notes` mediumtext,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `upcoming_projects`
--

INSERT INTO `upcoming_projects` VALUES(1, 'Tom Fox-Sellers', 'tom@razorfish.com', 323344, 'Some project name', 0, '2013-11-16 00:00:00', '2013-11-16 00:00:00', 'http://www.somewhere.com', 1, 0, 'This is a test', '2011-11-10 15:42:48', '2012-04-17 18:46:34', 'Standard Media');
INSERT INTO `upcoming_projects` VALUES(2, 'Hans Janowitz', 'hans@razorfish.com', 23344, 'Some project', 34, '2011-11-10 00:00:00', '2011-11-16 00:00:00', '', 1, 1, 'This is going to be an awesome project.', '2011-11-10 16:04:13', '2012-04-17 18:39:08', 'Standard Media');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(42) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user' COMMENT 'Roles: user,manager, admin',
  `project_manager_id` int(11) DEFAULT NULL,
  `production_manager_id` int(11) DEFAULT NULL,
  `offshore_project_manager_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'robsa', 'rob.sawyer@razorfish.com', '478bdec12b6d1c201cd1edccda13951d5a6f63ae', 'user', NULL, 1, NULL, '2012-04-19 00:51:00', '2012-04-19 01:05:10', '2012-04-24 11:42:20');
INSERT INTO `users` VALUES(2, 'garrettgi', 'garrett.gillas@razorfish.com', '478bdec12b6d1c201cd1edccda13951d5a6f63ae', 'manager', NULL, 3, NULL, '2012-04-19 01:16:34', '2012-04-19 01:16:34', '2012-04-19 01:16:34');
