-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2012 at 12:17 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT 'The title of the developer',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `offshore_project_managers`
--

CREATE TABLE `offshore_project_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `notes` mediumtext,
  `location` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `production_managers`
--

CREATE TABLE `production_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=355 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `qa_resources`
--

CREATE TABLE `qa_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

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
