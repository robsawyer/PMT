SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `developers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT 'NULL',
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL DEFAULT 'NULL',
  `offshore` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `total_projects` int(11) NOT NULL DEFAULT '0',
  `total_working_projects` int(11) NOT NULL DEFAULT '0',
  `notes` mediumtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `developers_projects` (
  `project_id` int(11) DEFAULT NULL,
  `developer_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`developer_id`),
  KEY `developer_id` (`developer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `offshore_project_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `notes` mediumtext,
  `location` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `offshore_project_managers_projects` (
  `project_id` int(11) DEFAULT NULL,
  `offshore_project_manager_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`offshore_project_manager_id`),
  KEY `offshore_project_manager_id` (`offshore_project_manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `producers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `offshore` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `total_projects` int(11) NOT NULL DEFAULT '0',
  `total_working_projects` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullname` (`fullname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `producers_projects` (
  `project_id` int(11) DEFAULT NULL,
  `producer_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`producer_id`),
  KEY `producer_id` (`producer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `offshore` tinyint(1) DEFAULT NULL,
  `started` tinyint(1) DEFAULT '0',
  `complete` tinyint(1) DEFAULT '0',
  `start` date DEFAULT NULL,
  `due` date DEFAULT NULL,
  `priority` smallint(5) NOT NULL DEFAULT '1' COMMENT '5 is highest priority',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `project_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `notes` mediumtext,
  `location` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `project_managers_projects` (
  `project_id` int(11) DEFAULT NULL,
  `project_manager_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`project_manager_id`),
  KEY `project_manager_id` (`project_manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `qa_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `notes` mediumtext,
  `location` varchar(255) DEFAULT NULL,
  `offshore` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullname` (`fullname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `qa_resources_projects` (
  `project_id` int(11) DEFAULT NULL,
  `qa_resource_id` int(11) DEFAULT NULL,
  UNIQUE KEY `project_id` (`project_id`,`qa_resource_id`),
  KEY `qa_resource_id` (`qa_resource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
