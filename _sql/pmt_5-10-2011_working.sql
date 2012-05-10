-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2012 at 11:27 AM
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
INSERT INTO `clients` VALUES(12, 'Keystone', '2011-04-06 01:26:21', '2011-04-06 01:26:21');
INSERT INTO `clients` VALUES(13, 'Experian', '2011-06-03 12:31:45', '2011-06-03 12:31:45');
INSERT INTO `clients` VALUES(14, 'Tempur Pedic', '2011-06-23 11:20:17', '2011-06-23 11:20:17');
INSERT INTO `clients` VALUES(15, 'Hawaiian Airlines', '2011-09-13 15:28:01', '2011-09-13 15:28:01');
INSERT INTO `clients` VALUES(16, 'Weight Watchers', '2011-12-20 13:06:37', '2011-12-20 13:06:37');
INSERT INTO `clients` VALUES(17, 'Internal Project', '2012-03-16 15:48:11', '2012-03-16 15:48:11');
INSERT INTO `clients` VALUES(18, 'Samsung', '2012-05-04 17:01:26', '2012-05-04 17:01:26');
INSERT INTO `clients` VALUES(19, 'Activision', '2012-05-04 17:01:40', '2012-05-04 17:01:40');
INSERT INTO `clients` VALUES(20, 'Windows', '2012-05-07 15:45:44', '2012-05-07 15:45:44');

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

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` VALUES(1, 'CWK', 'Flash Developer', 'Dustin Rush', 'Dustin.Rush@razorfish.com, dustin@ionflow.com', '(503) 341-1250', 'Portland, OR.', 0, 'dustin-rush', 0, 0, 'He gets rich media and is a good Flash designer. He''s completed work for MSN, Bing, Best Buy and has experience with Pointroll and Atlas.', '2011-03-03 01:37:34', '2012-05-10 11:23:23');
INSERT INTO `developers` VALUES(2, 'FTE', 'Flash Developer', 'Jessie Van Roechoudt', 'Jessie.vanRoechoudt@razorfish.com', '', 'San Francisco, CA', 0, 'jessie-van-roechoudt', 0, 0, 'Jessie is a good Flash designer. She lacks the necessary coding skills to pull off many of the rich media ads.', '2011-03-03 01:41:01', '2012-05-10 11:23:33');
INSERT INTO `developers` VALUES(3, 'FTE', 'Flash Developer', 'Nathan Burazer', 'Nathan.Burazer@razorfish.com', '', 'San Francisco, CA', 0, 'nathan-burazer', 0, 0, 'He no longer works at the company.', '2011-03-03 01:41:32', '2012-05-10 11:23:40');
INSERT INTO `developers` VALUES(4, 'CWK', NULL, 'Marco Fusaro', 'Marco.Fusaro@razorfish.com, marco@hiredhandmedia.com', '(503) 442-1413', 'Portland, OR.', 0, 'marco-fusaro', 0, 3, 'He gets any ad serving platform you throw at him.\r\n\r\nPointroll, AdWonder, EyeBlaster, DoubleClick', '2011-03-03 01:41:48', '2011-10-20 17:00:22');
INSERT INTO `developers` VALUES(5, 'FTE', NULL, 'Matt Sutton', 'Matt.Sutton@razorfish.com', '', 'San Francisco, CA.', 0, 'matt-sutton', 0, 1, 'Matt is a part of Eric Campdoras''s team and is mostly on web dev projects.', '2011-03-03 03:35:39', '2011-11-08 12:53:26');
INSERT INTO `developers` VALUES(6, 'FTE', 'Motion Designer', 'Philippe Vendrolini', 'Philippe.Vendrolini@razorfish.com', '', 'San Francisco, CA.', 0, 'philippe-vendrolini', 0, 0, 'Phillipe is a part of Eric Campdoras''s team and mostly focuses on web dev Flash based projects.', '2011-03-03 03:36:06', '2012-05-10 11:23:52');
INSERT INTO `developers` VALUES(7, 'CWK', NULL, 'Joe Howard', 'Joe.Howard@razorfish.com, unsoundart@yahoo.com', '', 'Portland, OR.', 0, 'joe-howard', 0, 0, 'There are some internal politics that prevent us from using Joe. ', '2011-03-03 03:43:40', '2011-11-08 12:52:51');
INSERT INTO `developers` VALUES(13, 'CWK', NULL, 'Keylor Campos', '', NULL, 'Costa Rica', 1, 'keylor-campos', 0, 0, 'NULL', '2011-03-07 06:12:22', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(9, 'CWK', NULL, 'Esteban Chavarria', 'Esteban.Chavarria@boszdigital.com ', '', 'Costa Rica', 1, 'esteban-chavarria', 0, 4, '', '2011-03-03 22:39:04', '2011-11-08 12:49:00');
INSERT INTO `developers` VALUES(10, 'CWK', NULL, 'Eduardo Cuadra', '', NULL, 'Costa Rica', 1, 'eduardo-cuadra', 0, 1, 'NULL', '2011-03-03 22:39:32', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(11, 'CWK', NULL, 'Gerardo Parajeles', 'gerardo.parajeles@boszdigital.com', NULL, 'Costa Rica', 1, 'gerardo-parajeles', 0, 1, 'NULL', '2011-03-03 22:41:10', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(14, 'FTE', NULL, 'Martin Lassen', 'Martin.Lassen@razorfish.com', '', 'Portland, OR.', 0, 'martin-lassen', 0, 2, 'He can tackle any standard or rich media project you throw at him. He has a great amount of 3d experience, too. He''s familiar with Papervision 3d and AS3. He also has experience working with most rich media vendors (Pointroll, DoubleClick, etc.). ', '2011-03-07 06:26:28', '2011-11-08 12:57:03');
INSERT INTO `developers` VALUES(15, 'CWK', NULL, 'Johan Chaves', 'johan.chaves@boszdigital.com', NULL, 'Costa Rica', 1, 'johan-chaves', 0, 1, 'NULL', '2011-03-07 07:16:27', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(16, 'CWK', NULL, 'Kari Fosse', 'kari@tinydynamitedesigns.com', '', 'Portland, OR.', 0, 'kari-fosse', 0, 0, 'She is a good Flash designer. She lacks the necessary coding skills needed for rich media work. She does a great job at banner prototyping, though.', '2011-03-22 10:58:44', '2011-11-08 12:58:00');
INSERT INTO `developers` VALUES(17, 'CWK', NULL, 'Clint Harrison', 'studio@cowlik.com', '', 'Portland, OR.', 0, 'clint-harrison', 0, 0, 'Clint completed some rich media MSN work for us. He did a great job and he understands Pointroll''s system.', '2011-03-27 21:56:57', '2011-11-08 12:58:39');
INSERT INTO `developers` VALUES(18, 'CWK', NULL, 'Adam Sirkin', 'adam@ginkgosynthesis.com', '(503) 347-7195', 'Portland, OR.', 0, 'adam-sirkin', 0, 0, 'Adam has experience with most rich media vendors and is able to tackle rich media projects. He''s also a good candidate for Flash banner prototyping. ', '2011-03-27 21:58:58', '2011-11-15 16:27:08');
INSERT INTO `developers` VALUES(19, 'CWK', NULL, 'Oliver Rokoff', 'oliver.rokoff@gmail.com', NULL, 'Portland, OR.', 0, 'oliver-rokoff', 0, 0, 'NULL', '2011-03-27 21:59:23', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(20, 'CWK', NULL, 'Lorenzo Rojas', 'lorenzo.rojas@boszdigital.com', NULL, 'Costa Rica', 1, 'lorenzo-rojas', 0, 0, 'NULL', '2011-03-30 22:14:03', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(22, 'CWK', NULL, 'Jason Tinghe', 'hello@jasontighe.com, Jason.Tighe@razorfish.com', '', 'San Francisco, CA.', 0, 'jason-tinghe', 0, 0, 'We had problems with this guy on Intel. He is smart, but overcomplicated the project and in the end caused some delivery issues. He understands Doubleclick and AS3 code. He was also having some computer issues at the time when we worked with him, so that could have been the issue.', '2011-04-06 01:07:45', '2011-11-08 13:00:54');
INSERT INTO `developers` VALUES(24, 'CWK', NULL, 'Noe Arias', 'noe.arias@boszdigital.com', NULL, 'Costa, Rica', 1, 'noe-arias', 0, 2, 'NULL', '2011-05-11 11:16:10', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(23, 'FTE', NULL, 'Eric Campdoras', 'Eric.Campdoras@razorfish.com', '', 'San Francisco, CA.', 0, 'eric-campdoras', 0, 0, 'Eric is the rich media director and runs a small team of devs in San Francisco. The team mostly focuses on web dev projects.', '2011-04-25 18:44:16', '2011-11-08 13:04:39');
INSERT INTO `developers` VALUES(25, 'CWK', NULL, 'Juan Pablo Jimenez', 'juan.jimenez@boszdigital.com', NULL, 'Costa Rica', 1, 'juan-pablo-jimenez', 0, 0, 'NULL', '2011-05-11 11:16:52', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(26, 'FTE', NULL, 'Chumpot Ratanawong', '', NULL, 'Chicago, IL', 0, 'chumpot-ratanawong', 0, 0, 'NULL', '2011-05-11 14:08:10', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(29, 'CWK', NULL, 'Simeon Minshew', 'Simeon.Minshew@razorfish.com', NULL, 'Seattle, WA.', 0, 'simeon-minshew', 0, 0, 'Had a lot of problems with this developers skill level on the last Experian project. Consistently over-promised and under-delivered.', '2011-06-21 17:37:11', '2011-09-23 15:32:11');
INSERT INTO `developers` VALUES(27, 'CWK', NULL, 'Manuel Lopez', 'Manuel.Lopez@boszdigital.com', NULL, 'Costa Rica', 1, 'manuel-lopez', 0, 2, 'NULL', '2011-05-18 19:17:45', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(28, 'CWK', NULL, 'Jed Bursiek', 'jed.bursiek@razorfish.com, jebbadebba@gmail.com', '', 'Portland, OR', 0, 'jed-bursiek', 0, 0, 'He has a full time job, but is willing to take on some side work. Jed has experience with Pointroll and can take on most rich media ads. He''s also a great candidate for banner prototyping. ', '2011-05-25 13:34:41', '2011-11-08 13:03:53');
INSERT INTO `developers` VALUES(30, 'FTE', NULL, 'Kevin Jones', 'Kevin.Jones@razorfish.com', '', 'Portland, OR.', 0, 'kevin-jones', 0, 3, 'He is great for banner prototyping and rich media ads. He has experience with Pointroll and Tumri. ', '2011-06-23 11:23:29', '2011-11-08 13:03:05');
INSERT INTO `developers` VALUES(31, 'FTE', NULL, 'Mark Mun', 'mark.mun@razorfish.com', NULL, 'San Francisco, CA.', 0, 'mark-mun', 0, 2, 'NULL', '2011-07-11 12:18:22', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(32, 'FTE', NULL, 'Teo Litto', 'Teo.Litto@razorfish.com', NULL, 'San Francisco', 0, 'teo-litto', 0, 0, 'NULL', '2011-07-13 13:10:35', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(33, 'CWK', NULL, 'Mark Richmond', 'mark.richmond@razorfish.com,mark@richmondgraphics.com', '(503) 544-1516', 'Portland, OR.', 0, 'mark-richmond', 0, 3, 'NULL', '2011-07-26 16:25:00', '2011-10-20 17:01:14');
INSERT INTO `developers` VALUES(34, 'CWK', NULL, 'Nicolas Salazar', 'Nicolas.Salazar@boszdigital.com', NULL, 'Costa Rica', 1, 'nicolas-salazar', 0, 2, 'NULL', '2011-08-22 12:43:18', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(35, 'CWK', NULL, 'Michael Marin', 'Michael.Marin@boszdigital.com', NULL, 'Costa Rica', 1, 'michael-marin', 0, 1, 'NULL', '2011-08-22 12:45:03', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(36, 'CWK', NULL, 'Laurens Ortiz', 'Laurens.Ortiz@boszdigital.com', NULL, 'Costa Rica', 1, 'laurens-ortiz', 0, 1, 'NULL', '2011-08-22 12:47:38', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(37, 'CWK', NULL, 'Jorge Sanchez', 'Jorge.Sanchez@boszdigital.com', NULL, 'Costa Rica', 1, 'jorge-sanchez', 0, 1, 'NULL', '2011-09-13 16:59:42', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(38, 'CWK', NULL, 'Joshua Flores', 'Joshua.Flores@boszdigital.com', NULL, 'Costa Rica', 1, 'joshua-flores', 0, 0, 'NULL', '2011-09-13 17:21:23', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(39, 'CWK', NULL, 'Nataly Lizano', 'Nataly.Lizano@boszdigital.com', NULL, 'Costa Rica', 1, 'nataly-lizano', 0, 1, 'NULL', '2011-09-13 17:27:24', '2011-09-16 13:10:16');
INSERT INTO `developers` VALUES(40, 'FTE', NULL, 'Ronny Ramirez ', 'Ronny.Ramirez@razorfish.com', NULL, '', 1, 'ronny-ramirez', 0, 0, '', '2011-09-30 18:12:04', '2011-09-30 18:12:04');
INSERT INTO `developers` VALUES(41, '', NULL, 'Ivan Alarcon', 'Ivan.Alarcon@boszdigital.com', NULL, 'Costa Rica', 1, 'ivan-alarcon', 0, 0, '', '2011-10-04 13:46:26', '2011-10-04 13:46:26');
INSERT INTO `developers` VALUES(42, 'CWK', NULL, 'Leonardo Chinchilla', 'Leonardo.Chinchilla@boszdigital.com', NULL, 'Costa Rica', 1, 'leonardo-chinchilla', 0, 0, '', '2011-10-05 11:42:26', '2011-10-05 11:42:26');
INSERT INTO `developers` VALUES(43, '', NULL, 'Mark Kahn', 'Mark.Kahn@razorfish.com', NULL, '', 0, 'mark-kahn', 0, 0, '', '2011-10-06 16:50:43', '2011-10-06 16:50:43');
INSERT INTO `developers` VALUES(44, '', NULL, 'Marcos Riganti', 'Marcos.Riganti@razorfish.com', NULL, '', 1, 'marcos-riganti', 0, 0, '', '2011-10-06 16:51:12', '2011-10-06 16:51:12');
INSERT INTO `developers` VALUES(45, '', NULL, 'Francis Albar ', 'Francis.Albar@razorfish.com', NULL, '', 0, 'francis-albar', 0, 0, '', '2011-10-06 16:51:48', '2011-10-06 16:51:48');
INSERT INTO `developers` VALUES(46, 'FTE', NULL, 'Ben Brewer', 'ben.brewer@razorfish.com', '', 'Portland, OR.', 0, 'ben-brewer', 0, 0, 'Ben can take on any rich media ad that you give him. He is mostly on web dev projects but is interested in banner prototyping when he has the time.', '2011-10-26 17:32:38', '2011-11-08 13:05:28');
INSERT INTO `developers` VALUES(47, 'CWK', NULL, 'JP DeVries', 'JP.DeVries@razorfish.com, Johnpaul.devries@gmail.com', '(916) 208-8822', 'Portland, OR.', 0, 'jp-devries', 0, 0, '', '2011-11-01 11:27:57', '2011-11-01 11:27:57');
INSERT INTO `developers` VALUES(48, 'CWK', NULL, 'Rodrigo Fallas', 'rodrigo.fallas@boszdigital.com', '', 'Los Angeles, CA.', 1, 'rodrigo-fallas', 0, 0, '', '2011-11-10 22:35:40', '2011-11-10 22:35:40');
INSERT INTO `developers` VALUES(49, 'CWK', NULL, 'Luke Veach', 'luke.veach@razorfish.com', '', 'Portland, OR.', 0, 'luke-veach', 0, 0, '', '2011-11-30 15:53:00', '2011-11-30 15:53:00');
INSERT INTO `developers` VALUES(50, 'CWK', NULL, 'Barrett Kenney', 'barrett.kenney@razorfish.com, barrett@waveposition.net', '503-750-1193', 'Portland, Or', 0, 'barrett-kenney', 0, 0, 'Flash/Front End developer with Production Management experience. AS2/AS3 can work with most everything thrown at him. Standard, Rich Media, Interactive Ad Units, Gated content etc... Also UI/UX wireframe, workflow and Design experience', '2012-01-06 12:53:03', '2012-01-06 12:53:03');
INSERT INTO `developers` VALUES(51, 'CWK', NULL, 'Jason Zumbado', 'jason.zumbado@boszdigital.com', '', 'Los Angeles, CA.', 1, 'jason-zumbado', 0, 0, '', '2012-01-09 13:16:55', '2012-01-09 13:16:55');
INSERT INTO `developers` VALUES(52, 'CWK', NULL, 'Erick Espinoza', 'erick.espinoza@boszdigital.com', '', 'Costa Rica', 1, 'erick-espinoza', 0, 0, '', '2012-02-10 15:51:39', '2012-02-10 15:51:39');
INSERT INTO `developers` VALUES(54, 'FTE', NULL, 'Roberto Melendez', 'Roberto.Melendez@boszdigital.com', '', 'Costa Rica', 1, 'roberto-melendez', 0, 0, '', '2012-04-18 13:18:04', '2012-04-18 13:18:04');
INSERT INTO `developers` VALUES(55, 'CWK', NULL, 'Mike Rowland', 'mike.rowland@razorfish.com', '', 'San Francisco, CA', 0, 'mike-rowland', 0, 0, 'Mike just joined (Apr 11th, 2012) but has a strong understanding of banners. He''s very familiar with many of the common compression techniques and has an eye for design and motion.', '2012-04-18 13:22:17', '2012-04-18 13:22:17');
INSERT INTO `developers` VALUES(56, 'FTE', NULL, 'Edison Mora', 'Edison.Mora@razorfish.com', '', 'Costa Rica', 1, 'edison-mora', 0, 0, '', '2012-04-23 12:33:23', '2012-04-23 12:33:23');

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
INSERT INTO `developers_projects` VALUES(13, 16);
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
INSERT INTO `developers_projects` VALUES(46, 9);
INSERT INTO `developers_projects` VALUES(46, 11);
INSERT INTO `developers_projects` VALUES(46, 16);
INSERT INTO `developers_projects` VALUES(47, 9);
INSERT INTO `developers_projects` VALUES(48, 3);
INSERT INTO `developers_projects` VALUES(49, 7);
INSERT INTO `developers_projects` VALUES(50, 4);
INSERT INTO `developers_projects` VALUES(51, 10);
INSERT INTO `developers_projects` VALUES(52, 10);
INSERT INTO `developers_projects` VALUES(52, 11);
INSERT INTO `developers_projects` VALUES(52, 16);
INSERT INTO `developers_projects` VALUES(53, 7);
INSERT INTO `developers_projects` VALUES(55, 11);
INSERT INTO `developers_projects` VALUES(57, 7);
INSERT INTO `developers_projects` VALUES(57, 14);
INSERT INTO `developers_projects` VALUES(58, 4);
INSERT INTO `developers_projects` VALUES(59, 1);
INSERT INTO `developers_projects` VALUES(59, 10);
INSERT INTO `developers_projects` VALUES(59, 16);
INSERT INTO `developers_projects` VALUES(60, 1);
INSERT INTO `developers_projects` VALUES(61, 2);
INSERT INTO `developers_projects` VALUES(61, 15);
INSERT INTO `developers_projects` VALUES(61, 22);
INSERT INTO `developers_projects` VALUES(62, 14);
INSERT INTO `developers_projects` VALUES(64, 10);
INSERT INTO `developers_projects` VALUES(64, 16);
INSERT INTO `developers_projects` VALUES(65, 20);
INSERT INTO `developers_projects` VALUES(66, 2);
INSERT INTO `developers_projects` VALUES(66, 4);
INSERT INTO `developers_projects` VALUES(66, 15);
INSERT INTO `developers_projects` VALUES(66, 22);
INSERT INTO `developers_projects` VALUES(67, 13);
INSERT INTO `developers_projects` VALUES(67, 16);
INSERT INTO `developers_projects` VALUES(68, 7);
INSERT INTO `developers_projects` VALUES(70, 7);
INSERT INTO `developers_projects` VALUES(71, 9);
INSERT INTO `developers_projects` VALUES(71, 11);
INSERT INTO `developers_projects` VALUES(71, 16);
INSERT INTO `developers_projects` VALUES(72, 16);
INSERT INTO `developers_projects` VALUES(73, 23);
INSERT INTO `developers_projects` VALUES(74, 1);
INSERT INTO `developers_projects` VALUES(74, 9);
INSERT INTO `developers_projects` VALUES(74, 10);
INSERT INTO `developers_projects` VALUES(74, 11);
INSERT INTO `developers_projects` VALUES(74, 16);
INSERT INTO `developers_projects` VALUES(75, 3);
INSERT INTO `developers_projects` VALUES(75, 10);
INSERT INTO `developers_projects` VALUES(75, 11);
INSERT INTO `developers_projects` VALUES(75, 15);
INSERT INTO `developers_projects` VALUES(75, 24);
INSERT INTO `developers_projects` VALUES(75, 25);
INSERT INTO `developers_projects` VALUES(76, 7);
INSERT INTO `developers_projects` VALUES(77, 7);
INSERT INTO `developers_projects` VALUES(78, 7);
INSERT INTO `developers_projects` VALUES(78, 11);
INSERT INTO `developers_projects` VALUES(79, 9);
INSERT INTO `developers_projects` VALUES(79, 16);
INSERT INTO `developers_projects` VALUES(81, 1);
INSERT INTO `developers_projects` VALUES(81, 7);
INSERT INTO `developers_projects` VALUES(81, 14);
INSERT INTO `developers_projects` VALUES(81, 28);
INSERT INTO `developers_projects` VALUES(83, 10);
INSERT INTO `developers_projects` VALUES(84, 7);
INSERT INTO `developers_projects` VALUES(84, 24);
INSERT INTO `developers_projects` VALUES(85, 4);
INSERT INTO `developers_projects` VALUES(85, 7);
INSERT INTO `developers_projects` VALUES(85, 9);
INSERT INTO `developers_projects` VALUES(87, 9);
INSERT INTO `developers_projects` VALUES(88, 10);
INSERT INTO `developers_projects` VALUES(88, 24);
INSERT INTO `developers_projects` VALUES(89, 11);
INSERT INTO `developers_projects` VALUES(89, 27);
INSERT INTO `developers_projects` VALUES(90, 15);
INSERT INTO `developers_projects` VALUES(91, 10);
INSERT INTO `developers_projects` VALUES(91, 24);
INSERT INTO `developers_projects` VALUES(92, 1);
INSERT INTO `developers_projects` VALUES(92, 4);
INSERT INTO `developers_projects` VALUES(92, 16);
INSERT INTO `developers_projects` VALUES(92, 24);
INSERT INTO `developers_projects` VALUES(92, 28);
INSERT INTO `developers_projects` VALUES(93, 24);
INSERT INTO `developers_projects` VALUES(93, 28);
INSERT INTO `developers_projects` VALUES(95, 7);
INSERT INTO `developers_projects` VALUES(95, 14);
INSERT INTO `developers_projects` VALUES(96, 14);
INSERT INTO `developers_projects` VALUES(96, 27);
INSERT INTO `developers_projects` VALUES(97, 24);
INSERT INTO `developers_projects` VALUES(98, 24);
INSERT INTO `developers_projects` VALUES(99, 1);
INSERT INTO `developers_projects` VALUES(99, 27);
INSERT INTO `developers_projects` VALUES(99, 28);
INSERT INTO `developers_projects` VALUES(100, 3);
INSERT INTO `developers_projects` VALUES(100, 9);
INSERT INTO `developers_projects` VALUES(101, 4);
INSERT INTO `developers_projects` VALUES(102, 28);
INSERT INTO `developers_projects` VALUES(103, 14);
INSERT INTO `developers_projects` VALUES(103, 29);
INSERT INTO `developers_projects` VALUES(103, 32);
INSERT INTO `developers_projects` VALUES(104, 28);
INSERT INTO `developers_projects` VALUES(105, 28);
INSERT INTO `developers_projects` VALUES(106, 11);
INSERT INTO `developers_projects` VALUES(106, 28);
INSERT INTO `developers_projects` VALUES(107, 3);
INSERT INTO `developers_projects` VALUES(108, 4);
INSERT INTO `developers_projects` VALUES(109, 9);
INSERT INTO `developers_projects` VALUES(110, 4);
INSERT INTO `developers_projects` VALUES(110, 9);
INSERT INTO `developers_projects` VALUES(111, 28);
INSERT INTO `developers_projects` VALUES(112, 1);
INSERT INTO `developers_projects` VALUES(113, 24);
INSERT INTO `developers_projects` VALUES(113, 31);
INSERT INTO `developers_projects` VALUES(114, 4);
INSERT INTO `developers_projects` VALUES(114, 11);
INSERT INTO `developers_projects` VALUES(115, 2);
INSERT INTO `developers_projects` VALUES(115, 4);
INSERT INTO `developers_projects` VALUES(115, 24);
INSERT INTO `developers_projects` VALUES(115, 28);
INSERT INTO `developers_projects` VALUES(115, 30);
INSERT INTO `developers_projects` VALUES(116, 14);
INSERT INTO `developers_projects` VALUES(116, 30);
INSERT INTO `developers_projects` VALUES(116, 33);
INSERT INTO `developers_projects` VALUES(117, 4);
INSERT INTO `developers_projects` VALUES(117, 9);
INSERT INTO `developers_projects` VALUES(118, 4);
INSERT INTO `developers_projects` VALUES(119, 9);
INSERT INTO `developers_projects` VALUES(120, 11);
INSERT INTO `developers_projects` VALUES(120, 24);
INSERT INTO `developers_projects` VALUES(120, 27);
INSERT INTO `developers_projects` VALUES(120, 31);
INSERT INTO `developers_projects` VALUES(120, 34);
INSERT INTO `developers_projects` VALUES(121, 4);
INSERT INTO `developers_projects` VALUES(121, 9);
INSERT INTO `developers_projects` VALUES(121, 31);
INSERT INTO `developers_projects` VALUES(123, 28);
INSERT INTO `developers_projects` VALUES(124, 11);
INSERT INTO `developers_projects` VALUES(124, 24);
INSERT INTO `developers_projects` VALUES(124, 27);
INSERT INTO `developers_projects` VALUES(124, 33);
INSERT INTO `developers_projects` VALUES(125, 28);
INSERT INTO `developers_projects` VALUES(127, 30);
INSERT INTO `developers_projects` VALUES(128, 33);
INSERT INTO `developers_projects` VALUES(129, 9);
INSERT INTO `developers_projects` VALUES(129, 11);
INSERT INTO `developers_projects` VALUES(129, 15);
INSERT INTO `developers_projects` VALUES(129, 24);
INSERT INTO `developers_projects` VALUES(129, 35);
INSERT INTO `developers_projects` VALUES(130, 9);
INSERT INTO `developers_projects` VALUES(131, 11);
INSERT INTO `developers_projects` VALUES(132, 36);
INSERT INTO `developers_projects` VALUES(133, 24);
INSERT INTO `developers_projects` VALUES(135, 24);
INSERT INTO `developers_projects` VALUES(135, 37);
INSERT INTO `developers_projects` VALUES(136, 27);
INSERT INTO `developers_projects` VALUES(138, 15);
INSERT INTO `developers_projects` VALUES(138, 31);
INSERT INTO `developers_projects` VALUES(139, 5);
INSERT INTO `developers_projects` VALUES(139, 14);
INSERT INTO `developers_projects` VALUES(139, 27);
INSERT INTO `developers_projects` VALUES(139, 31);
INSERT INTO `developers_projects` VALUES(140, 24);
INSERT INTO `developers_projects` VALUES(141, 24);
INSERT INTO `developers_projects` VALUES(142, 9);
INSERT INTO `developers_projects` VALUES(142, 24);
INSERT INTO `developers_projects` VALUES(144, 9);
INSERT INTO `developers_projects` VALUES(144, 27);
INSERT INTO `developers_projects` VALUES(144, 31);
INSERT INTO `developers_projects` VALUES(144, 37);
INSERT INTO `developers_projects` VALUES(145, 4);
INSERT INTO `developers_projects` VALUES(145, 9);
INSERT INTO `developers_projects` VALUES(145, 31);
INSERT INTO `developers_projects` VALUES(146, 34);
INSERT INTO `developers_projects` VALUES(147, 27);
INSERT INTO `developers_projects` VALUES(148, 9);
INSERT INTO `developers_projects` VALUES(148, 34);
INSERT INTO `developers_projects` VALUES(151, 30);
INSERT INTO `developers_projects` VALUES(152, 4);
INSERT INTO `developers_projects` VALUES(153, 4);
INSERT INTO `developers_projects` VALUES(154, 14);
INSERT INTO `developers_projects` VALUES(155, 9);
INSERT INTO `developers_projects` VALUES(155, 11);
INSERT INTO `developers_projects` VALUES(155, 24);
INSERT INTO `developers_projects` VALUES(155, 27);
INSERT INTO `developers_projects` VALUES(155, 37);
INSERT INTO `developers_projects` VALUES(155, 38);
INSERT INTO `developers_projects` VALUES(156, 4);
INSERT INTO `developers_projects` VALUES(156, 9);
INSERT INTO `developers_projects` VALUES(156, 11);
INSERT INTO `developers_projects` VALUES(156, 15);
INSERT INTO `developers_projects` VALUES(156, 24);
INSERT INTO `developers_projects` VALUES(156, 27);
INSERT INTO `developers_projects` VALUES(156, 30);
INSERT INTO `developers_projects` VALUES(157, 4);
INSERT INTO `developers_projects` VALUES(157, 11);
INSERT INTO `developers_projects` VALUES(157, 24);
INSERT INTO `developers_projects` VALUES(158, 4);
INSERT INTO `developers_projects` VALUES(158, 9);
INSERT INTO `developers_projects` VALUES(158, 10);
INSERT INTO `developers_projects` VALUES(158, 39);
INSERT INTO `developers_projects` VALUES(159, 9);
INSERT INTO `developers_projects` VALUES(159, 34);
INSERT INTO `developers_projects` VALUES(160, 30);
INSERT INTO `developers_projects` VALUES(160, 33);
INSERT INTO `developers_projects` VALUES(161, 30);
INSERT INTO `developers_projects` VALUES(161, 33);
INSERT INTO `developers_projects` VALUES(162, 33);
INSERT INTO `developers_projects` VALUES(163, 1);
INSERT INTO `developers_projects` VALUES(163, 16);
INSERT INTO `developers_projects` VALUES(164, 4);
INSERT INTO `developers_projects` VALUES(164, 14);
INSERT INTO `developers_projects` VALUES(164, 47);
INSERT INTO `developers_projects` VALUES(166, 33);
INSERT INTO `developers_projects` VALUES(167, 11);
INSERT INTO `developers_projects` VALUES(167, 30);
INSERT INTO `developers_projects` VALUES(168, 33);
INSERT INTO `developers_projects` VALUES(170, 14);
INSERT INTO `developers_projects` VALUES(170, 30);
INSERT INTO `developers_projects` VALUES(171, 9);
INSERT INTO `developers_projects` VALUES(172, 27);
INSERT INTO `developers_projects` VALUES(173, 37);
INSERT INTO `developers_projects` VALUES(173, 40);
INSERT INTO `developers_projects` VALUES(173, 41);
INSERT INTO `developers_projects` VALUES(175, 4);
INSERT INTO `developers_projects` VALUES(175, 15);
INSERT INTO `developers_projects` VALUES(175, 38);
INSERT INTO `developers_projects` VALUES(175, 42);
INSERT INTO `developers_projects` VALUES(176, 9);
INSERT INTO `developers_projects` VALUES(176, 11);
INSERT INTO `developers_projects` VALUES(176, 30);
INSERT INTO `developers_projects` VALUES(177, 33);
INSERT INTO `developers_projects` VALUES(178, 4);
INSERT INTO `developers_projects` VALUES(178, 5);
INSERT INTO `developers_projects` VALUES(178, 33);
INSERT INTO `developers_projects` VALUES(179, 35);
INSERT INTO `developers_projects` VALUES(179, 40);
INSERT INTO `developers_projects` VALUES(180, 4);
INSERT INTO `developers_projects` VALUES(180, 41);
INSERT INTO `developers_projects` VALUES(182, 33);
INSERT INTO `developers_projects` VALUES(184, 9);
INSERT INTO `developers_projects` VALUES(184, 27);
INSERT INTO `developers_projects` VALUES(184, 33);
INSERT INTO `developers_projects` VALUES(185, 9);
INSERT INTO `developers_projects` VALUES(185, 10);
INSERT INTO `developers_projects` VALUES(185, 41);
INSERT INTO `developers_projects` VALUES(185, 42);
INSERT INTO `developers_projects` VALUES(187, 14);
INSERT INTO `developers_projects` VALUES(188, 27);
INSERT INTO `developers_projects` VALUES(189, 30);
INSERT INTO `developers_projects` VALUES(190, 4);
INSERT INTO `developers_projects` VALUES(190, 10);
INSERT INTO `developers_projects` VALUES(190, 40);
INSERT INTO `developers_projects` VALUES(191, 4);
INSERT INTO `developers_projects` VALUES(191, 15);
INSERT INTO `developers_projects` VALUES(191, 38);
INSERT INTO `developers_projects` VALUES(192, 4);
INSERT INTO `developers_projects` VALUES(192, 41);
INSERT INTO `developers_projects` VALUES(192, 46);
INSERT INTO `developers_projects` VALUES(193, 43);
INSERT INTO `developers_projects` VALUES(193, 44);
INSERT INTO `developers_projects` VALUES(193, 45);
INSERT INTO `developers_projects` VALUES(196, 14);
INSERT INTO `developers_projects` VALUES(196, 30);
INSERT INTO `developers_projects` VALUES(196, 34);
INSERT INTO `developers_projects` VALUES(198, 10);
INSERT INTO `developers_projects` VALUES(198, 34);
INSERT INTO `developers_projects` VALUES(198, 41);
INSERT INTO `developers_projects` VALUES(199, 42);
INSERT INTO `developers_projects` VALUES(201, 27);
INSERT INTO `developers_projects` VALUES(202, 33);
INSERT INTO `developers_projects` VALUES(203, 33);
INSERT INTO `developers_projects` VALUES(204, 30);
INSERT INTO `developers_projects` VALUES(204, 41);
INSERT INTO `developers_projects` VALUES(205, 43);
INSERT INTO `developers_projects` VALUES(206, 44);
INSERT INTO `developers_projects` VALUES(207, 45);
INSERT INTO `developers_projects` VALUES(209, 16);
INSERT INTO `developers_projects` VALUES(211, 14);
INSERT INTO `developers_projects` VALUES(212, 14);
INSERT INTO `developers_projects` VALUES(212, 16);
INSERT INTO `developers_projects` VALUES(212, 27);
INSERT INTO `developers_projects` VALUES(212, 47);
INSERT INTO `developers_projects` VALUES(213, 1);
INSERT INTO `developers_projects` VALUES(213, 30);
INSERT INTO `developers_projects` VALUES(213, 33);
INSERT INTO `developers_projects` VALUES(213, 40);
INSERT INTO `developers_projects` VALUES(213, 42);
INSERT INTO `developers_projects` VALUES(215, 4);
INSERT INTO `developers_projects` VALUES(215, 11);
INSERT INTO `developers_projects` VALUES(215, 20);
INSERT INTO `developers_projects` VALUES(217, 4);
INSERT INTO `developers_projects` VALUES(217, 34);
INSERT INTO `developers_projects` VALUES(217, 38);
INSERT INTO `developers_projects` VALUES(220, 4);
INSERT INTO `developers_projects` VALUES(220, 14);
INSERT INTO `developers_projects` VALUES(221, 4);
INSERT INTO `developers_projects` VALUES(221, 47);
INSERT INTO `developers_projects` VALUES(222, 14);
INSERT INTO `developers_projects` VALUES(222, 30);
INSERT INTO `developers_projects` VALUES(223, 20);
INSERT INTO `developers_projects` VALUES(224, 30);
INSERT INTO `developers_projects` VALUES(226, 20);
INSERT INTO `developers_projects` VALUES(227, 38);
INSERT INTO `developers_projects` VALUES(228, 41);
INSERT INTO `developers_projects` VALUES(230, 48);
INSERT INTO `developers_projects` VALUES(232, 33);
INSERT INTO `developers_projects` VALUES(233, 33);
INSERT INTO `developers_projects` VALUES(234, 33);
INSERT INTO `developers_projects` VALUES(235, 33);
INSERT INTO `developers_projects` VALUES(236, 30);
INSERT INTO `developers_projects` VALUES(236, 33);
INSERT INTO `developers_projects` VALUES(237, 33);
INSERT INTO `developers_projects` VALUES(238, 33);
INSERT INTO `developers_projects` VALUES(239, 33);
INSERT INTO `developers_projects` VALUES(240, 30);
INSERT INTO `developers_projects` VALUES(241, 10);
INSERT INTO `developers_projects` VALUES(242, 30);
INSERT INTO `developers_projects` VALUES(243, 14);
INSERT INTO `developers_projects` VALUES(244, 4);
INSERT INTO `developers_projects` VALUES(245, 15);
INSERT INTO `developers_projects` VALUES(245, 33);
INSERT INTO `developers_projects` VALUES(246, 1);
INSERT INTO `developers_projects` VALUES(246, 47);
INSERT INTO `developers_projects` VALUES(247, 42);
INSERT INTO `developers_projects` VALUES(249, 33);
INSERT INTO `developers_projects` VALUES(250, 1);
INSERT INTO `developers_projects` VALUES(250, 4);
INSERT INTO `developers_projects` VALUES(250, 30);
INSERT INTO `developers_projects` VALUES(251, 4);
INSERT INTO `developers_projects` VALUES(252, 42);
INSERT INTO `developers_projects` VALUES(253, 41);
INSERT INTO `developers_projects` VALUES(254, 14);
INSERT INTO `developers_projects` VALUES(254, 27);
INSERT INTO `developers_projects` VALUES(255, 42);
INSERT INTO `developers_projects` VALUES(256, 10);
INSERT INTO `developers_projects` VALUES(257, 38);
INSERT INTO `developers_projects` VALUES(258, 1);
INSERT INTO `developers_projects` VALUES(259, 4);
INSERT INTO `developers_projects` VALUES(260, 4);
INSERT INTO `developers_projects` VALUES(261, 33);
INSERT INTO `developers_projects` VALUES(262, 33);
INSERT INTO `developers_projects` VALUES(263, 33);
INSERT INTO `developers_projects` VALUES(264, 41);
INSERT INTO `developers_projects` VALUES(265, 38);
INSERT INTO `developers_projects` VALUES(266, 41);
INSERT INTO `developers_projects` VALUES(268, 51);
INSERT INTO `developers_projects` VALUES(269, 51);
INSERT INTO `developers_projects` VALUES(270, 14);
INSERT INTO `developers_projects` VALUES(270, 30);
INSERT INTO `developers_projects` VALUES(271, 30);
INSERT INTO `developers_projects` VALUES(273, 30);
INSERT INTO `developers_projects` VALUES(274, 9);
INSERT INTO `developers_projects` VALUES(274, 11);
INSERT INTO `developers_projects` VALUES(274, 34);
INSERT INTO `developers_projects` VALUES(274, 40);
INSERT INTO `developers_projects` VALUES(275, 10);
INSERT INTO `developers_projects` VALUES(275, 14);
INSERT INTO `developers_projects` VALUES(275, 27);
INSERT INTO `developers_projects` VALUES(275, 30);
INSERT INTO `developers_projects` VALUES(276, 41);
INSERT INTO `developers_projects` VALUES(277, 42);
INSERT INTO `developers_projects` VALUES(278, 41);
INSERT INTO `developers_projects` VALUES(285, 41);
INSERT INTO `developers_projects` VALUES(286, 30);
INSERT INTO `developers_projects` VALUES(286, 41);
INSERT INTO `developers_projects` VALUES(288, 34);
INSERT INTO `developers_projects` VALUES(289, 14);
INSERT INTO `developers_projects` VALUES(291, 5);
INSERT INTO `developers_projects` VALUES(291, 20);
INSERT INTO `developers_projects` VALUES(291, 34);
INSERT INTO `developers_projects` VALUES(291, 38);
INSERT INTO `developers_projects` VALUES(291, 40);
INSERT INTO `developers_projects` VALUES(291, 42);
INSERT INTO `developers_projects` VALUES(291, 52);
INSERT INTO `developers_projects` VALUES(292, 14);
INSERT INTO `developers_projects` VALUES(293, 14);
INSERT INTO `developers_projects` VALUES(294, 14);
INSERT INTO `developers_projects` VALUES(296, 14);
INSERT INTO `developers_projects` VALUES(298, 27);
INSERT INTO `developers_projects` VALUES(299, 9);
INSERT INTO `developers_projects` VALUES(299, 52);
INSERT INTO `developers_projects` VALUES(300, 41);
INSERT INTO `developers_projects` VALUES(301, 30);
INSERT INTO `developers_projects` VALUES(302, 30);
INSERT INTO `developers_projects` VALUES(303, 41);
INSERT INTO `developers_projects` VALUES(304, 42);
INSERT INTO `developers_projects` VALUES(305, 30);
INSERT INTO `developers_projects` VALUES(306, 40);
INSERT INTO `developers_projects` VALUES(308, 40);
INSERT INTO `developers_projects` VALUES(308, 52);
INSERT INTO `developers_projects` VALUES(309, 30);
INSERT INTO `developers_projects` VALUES(309, 41);
INSERT INTO `developers_projects` VALUES(310, 10);
INSERT INTO `developers_projects` VALUES(311, 5);
INSERT INTO `developers_projects` VALUES(312, 5);
INSERT INTO `developers_projects` VALUES(313, 5);
INSERT INTO `developers_projects` VALUES(314, 5);
INSERT INTO `developers_projects` VALUES(315, 5);
INSERT INTO `developers_projects` VALUES(316, 9);
INSERT INTO `developers_projects` VALUES(317, 40);
INSERT INTO `developers_projects` VALUES(318, 40);
INSERT INTO `developers_projects` VALUES(319, 27);
INSERT INTO `developers_projects` VALUES(320, 38);
INSERT INTO `developers_projects` VALUES(320, 41);
INSERT INTO `developers_projects` VALUES(321, 14);
INSERT INTO `developers_projects` VALUES(322, 31);
INSERT INTO `developers_projects` VALUES(323, 40);
INSERT INTO `developers_projects` VALUES(323, 41);
INSERT INTO `developers_projects` VALUES(323, 54);
INSERT INTO `developers_projects` VALUES(325, 40);
INSERT INTO `developers_projects` VALUES(326, 34);
INSERT INTO `developers_projects` VALUES(328, 5);
INSERT INTO `developers_projects` VALUES(328, 52);
INSERT INTO `developers_projects` VALUES(328, 55);
INSERT INTO `developers_projects` VALUES(329, 55);
INSERT INTO `developers_projects` VALUES(330, 10);
INSERT INTO `developers_projects` VALUES(330, 20);
INSERT INTO `developers_projects` VALUES(330, 27);
INSERT INTO `developers_projects` VALUES(330, 30);
INSERT INTO `developers_projects` VALUES(330, 40);
INSERT INTO `developers_projects` VALUES(331, 27);
INSERT INTO `developers_projects` VALUES(333, 34);
INSERT INTO `developers_projects` VALUES(333, 41);
INSERT INTO `developers_projects` VALUES(334, 52);
INSERT INTO `developers_projects` VALUES(335, 10);
INSERT INTO `developers_projects` VALUES(336, 56);
INSERT INTO `developers_projects` VALUES(337, 41);
INSERT INTO `developers_projects` VALUES(338, 10);
INSERT INTO `developers_projects` VALUES(338, 40);
INSERT INTO `developers_projects` VALUES(342, 14);
INSERT INTO `developers_projects` VALUES(343, 40);
INSERT INTO `developers_projects` VALUES(351, 14);
INSERT INTO `developers_projects` VALUES(352, 2);
INSERT INTO `developers_projects` VALUES(352, 5);
INSERT INTO `developers_projects` VALUES(352, 55);

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

--
-- Dumping data for table `offshore_project_managers`
--

INSERT INTO `offshore_project_managers` VALUES(1, 'CWK', NULL, 'Eduardo Morales', 'Eduardo.Morales@boszdigital.com, Eduardo.Morales@razorfish.com ', NULL, NULL, 'Costa Rica', '2011-03-03 08:42:27', '2011-03-07 05:49:37');
INSERT INTO `offshore_project_managers` VALUES(2, 'CWK', NULL, 'Jorge Vega', 'Jorge.Vega@razorfish.com', NULL, NULL, 'Costa Rica', '2011-04-21 11:14:39', '2011-04-21 11:14:51');
INSERT INTO `offshore_project_managers` VALUES(3, 'CWK', NULL, 'Keylor Campos', 'keylor.campos@boszdigital.com', NULL, NULL, 'Costa Rica', '2011-09-29 17:03:51', '2011-09-29 17:03:51');

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
INSERT INTO `offshore_project_managers_projects` VALUES(13, 1);
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
INSERT INTO `offshore_project_managers_projects` VALUES(64, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(65, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(66, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(67, 2);
INSERT INTO `offshore_project_managers_projects` VALUES(69, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(71, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(71, 2);
INSERT INTO `offshore_project_managers_projects` VALUES(74, 2);
INSERT INTO `offshore_project_managers_projects` VALUES(75, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(78, 2);
INSERT INTO `offshore_project_managers_projects` VALUES(79, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(82, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(83, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(84, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(87, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(88, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(89, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(90, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(91, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(92, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(93, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(94, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(96, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(97, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(98, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(99, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(100, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(109, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(110, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(111, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(113, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(114, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(115, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(117, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(118, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(119, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(120, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(121, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(122, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(124, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(129, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(130, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(131, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(132, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(133, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(134, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(135, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(136, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(138, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(139, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(140, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(141, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(142, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(143, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(144, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(145, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(146, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(147, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(148, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(151, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(155, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(156, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(156, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(157, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(157, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(158, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(159, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(162, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(163, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(164, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(165, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(166, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(167, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(167, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(168, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(169, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(170, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(171, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(172, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(173, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(173, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(175, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(175, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(176, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(178, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(179, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(180, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(180, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(181, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(183, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(184, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(184, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(185, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(186, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(187, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(188, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(188, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(190, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(190, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(191, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(192, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(196, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(197, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(198, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(199, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(201, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(201, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(204, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(210, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(212, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(212, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(213, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(215, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(216, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(217, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(220, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(221, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(222, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(223, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(224, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(225, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(226, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(227, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(228, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(230, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(231, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(241, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(242, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(244, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(245, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(247, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(249, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(250, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(251, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(252, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(253, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(254, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(255, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(256, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(257, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(258, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(264, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(265, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(266, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(267, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(268, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(269, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(271, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(272, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(274, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(274, 3);
INSERT INTO `offshore_project_managers_projects` VALUES(275, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(276, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(277, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(278, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(285, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(286, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(288, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(289, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(290, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(291, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(293, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(294, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(295, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(296, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(297, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(298, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(299, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(300, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(302, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(303, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(304, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(306, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(307, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(308, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(309, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(310, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(316, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(317, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(318, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(319, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(320, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(323, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(325, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(326, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(328, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(329, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(330, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(331, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(333, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(334, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(335, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(336, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(337, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(338, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(341, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(342, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(343, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(344, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(351, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(352, 1);
INSERT INTO `offshore_project_managers_projects` VALUES(353, 1);

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

--
-- Dumping data for table `production_managers`
--

INSERT INTO `production_managers` VALUES(1, 'FTE', NULL, 'Rob Sawyer', 'rob.sawyer@razorfish.com', '(205) 657-4256', 'Portland, OR.', 0, 'rob-sawyer', 0, 14, '2011-03-03 01:42:32', '2012-04-16 16:55:14');
INSERT INTO `production_managers` VALUES(2, 'CWK', NULL, 'Dustin Rush', 'dustin.rush@razorfish.com', NULL, 'Portland, OR.', 0, 'dustin-rush', 0, 0, '2011-04-04 07:44:21', '2012-04-16 16:55:14');
INSERT INTO `production_managers` VALUES(3, 'CWK', NULL, 'Brent Westberg', 'Brent.Westberg@razorfish.com', '503.913.7674', 'Portland, OR.', 0, 'brent-westberg', 0, 0, '2011-05-31 17:39:21', '2012-04-16 16:55:14');
INSERT INTO `production_managers` VALUES(4, 'FTE', NULL, 'Garrett Gillas', 'Garrett.Gillas@razorfish.com', NULL, 'Portland, OR.', 0, 'garrett-gillas', 0, 10, '2011-06-21 17:37:39', '2012-04-16 16:55:14');
INSERT INTO `production_managers` VALUES(5, 'CWK', NULL, 'Barrett Kenney', 'barrett.kenney@razorfish.com', '503-889-4617', 'Portland, OR.', 0, 'barrett-kenney', 0, 0, '2011-12-05 12:22:35', '2012-04-16 16:55:14');

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
INSERT INTO `production_managers_projects` VALUES(46, 1);
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
INSERT INTO `production_managers_projects` VALUES(57, 2);
INSERT INTO `production_managers_projects` VALUES(58, 1);
INSERT INTO `production_managers_projects` VALUES(59, 2);
INSERT INTO `production_managers_projects` VALUES(60, 1);
INSERT INTO `production_managers_projects` VALUES(61, 1);
INSERT INTO `production_managers_projects` VALUES(62, 1);
INSERT INTO `production_managers_projects` VALUES(64, 1);
INSERT INTO `production_managers_projects` VALUES(64, 2);
INSERT INTO `production_managers_projects` VALUES(65, 2);
INSERT INTO `production_managers_projects` VALUES(66, 1);
INSERT INTO `production_managers_projects` VALUES(67, 1);
INSERT INTO `production_managers_projects` VALUES(68, 1);
INSERT INTO `production_managers_projects` VALUES(69, 1);
INSERT INTO `production_managers_projects` VALUES(70, 1);
INSERT INTO `production_managers_projects` VALUES(71, 1);
INSERT INTO `production_managers_projects` VALUES(71, 2);
INSERT INTO `production_managers_projects` VALUES(72, 1);
INSERT INTO `production_managers_projects` VALUES(73, 1);
INSERT INTO `production_managers_projects` VALUES(74, 2);
INSERT INTO `production_managers_projects` VALUES(75, 1);
INSERT INTO `production_managers_projects` VALUES(75, 2);
INSERT INTO `production_managers_projects` VALUES(76, 1);
INSERT INTO `production_managers_projects` VALUES(77, 1);
INSERT INTO `production_managers_projects` VALUES(78, 1);
INSERT INTO `production_managers_projects` VALUES(79, 1);
INSERT INTO `production_managers_projects` VALUES(80, 1);
INSERT INTO `production_managers_projects` VALUES(81, 2);
INSERT INTO `production_managers_projects` VALUES(82, 1);
INSERT INTO `production_managers_projects` VALUES(83, 1);
INSERT INTO `production_managers_projects` VALUES(84, 1);
INSERT INTO `production_managers_projects` VALUES(85, 1);
INSERT INTO `production_managers_projects` VALUES(87, 2);
INSERT INTO `production_managers_projects` VALUES(88, 1);
INSERT INTO `production_managers_projects` VALUES(89, 2);
INSERT INTO `production_managers_projects` VALUES(90, 2);
INSERT INTO `production_managers_projects` VALUES(91, 2);
INSERT INTO `production_managers_projects` VALUES(92, 1);
INSERT INTO `production_managers_projects` VALUES(92, 2);
INSERT INTO `production_managers_projects` VALUES(93, 1);
INSERT INTO `production_managers_projects` VALUES(93, 2);
INSERT INTO `production_managers_projects` VALUES(93, 4);
INSERT INTO `production_managers_projects` VALUES(94, 1);
INSERT INTO `production_managers_projects` VALUES(95, 1);
INSERT INTO `production_managers_projects` VALUES(95, 2);
INSERT INTO `production_managers_projects` VALUES(96, 1);
INSERT INTO `production_managers_projects` VALUES(97, 2);
INSERT INTO `production_managers_projects` VALUES(98, 2);
INSERT INTO `production_managers_projects` VALUES(99, 2);
INSERT INTO `production_managers_projects` VALUES(100, 2);
INSERT INTO `production_managers_projects` VALUES(101, 3);
INSERT INTO `production_managers_projects` VALUES(102, 1);
INSERT INTO `production_managers_projects` VALUES(102, 3);
INSERT INTO `production_managers_projects` VALUES(103, 1);
INSERT INTO `production_managers_projects` VALUES(103, 4);
INSERT INTO `production_managers_projects` VALUES(104, 1);
INSERT INTO `production_managers_projects` VALUES(105, 3);
INSERT INTO `production_managers_projects` VALUES(106, 1);
INSERT INTO `production_managers_projects` VALUES(106, 3);
INSERT INTO `production_managers_projects` VALUES(107, 1);
INSERT INTO `production_managers_projects` VALUES(107, 3);
INSERT INTO `production_managers_projects` VALUES(108, 1);
INSERT INTO `production_managers_projects` VALUES(108, 2);
INSERT INTO `production_managers_projects` VALUES(108, 3);
INSERT INTO `production_managers_projects` VALUES(109, 3);
INSERT INTO `production_managers_projects` VALUES(110, 3);
INSERT INTO `production_managers_projects` VALUES(111, 3);
INSERT INTO `production_managers_projects` VALUES(112, 2);
INSERT INTO `production_managers_projects` VALUES(113, 4);
INSERT INTO `production_managers_projects` VALUES(114, 3);
INSERT INTO `production_managers_projects` VALUES(115, 1);
INSERT INTO `production_managers_projects` VALUES(115, 3);
INSERT INTO `production_managers_projects` VALUES(115, 4);
INSERT INTO `production_managers_projects` VALUES(116, 1);
INSERT INTO `production_managers_projects` VALUES(116, 4);
INSERT INTO `production_managers_projects` VALUES(117, 1);
INSERT INTO `production_managers_projects` VALUES(118, 3);
INSERT INTO `production_managers_projects` VALUES(119, 3);
INSERT INTO `production_managers_projects` VALUES(120, 3);
INSERT INTO `production_managers_projects` VALUES(120, 4);
INSERT INTO `production_managers_projects` VALUES(121, 1);
INSERT INTO `production_managers_projects` VALUES(122, 1);
INSERT INTO `production_managers_projects` VALUES(123, 3);
INSERT INTO `production_managers_projects` VALUES(124, 1);
INSERT INTO `production_managers_projects` VALUES(125, 3);
INSERT INTO `production_managers_projects` VALUES(126, 1);
INSERT INTO `production_managers_projects` VALUES(127, 1);
INSERT INTO `production_managers_projects` VALUES(128, 1);
INSERT INTO `production_managers_projects` VALUES(129, 1);
INSERT INTO `production_managers_projects` VALUES(129, 4);
INSERT INTO `production_managers_projects` VALUES(130, 4);
INSERT INTO `production_managers_projects` VALUES(131, 1);
INSERT INTO `production_managers_projects` VALUES(131, 4);
INSERT INTO `production_managers_projects` VALUES(132, 1);
INSERT INTO `production_managers_projects` VALUES(132, 4);
INSERT INTO `production_managers_projects` VALUES(133, 1);
INSERT INTO `production_managers_projects` VALUES(134, 1);
INSERT INTO `production_managers_projects` VALUES(135, 3);
INSERT INTO `production_managers_projects` VALUES(136, 3);
INSERT INTO `production_managers_projects` VALUES(138, 1);
INSERT INTO `production_managers_projects` VALUES(139, 1);
INSERT INTO `production_managers_projects` VALUES(139, 4);
INSERT INTO `production_managers_projects` VALUES(140, 4);
INSERT INTO `production_managers_projects` VALUES(141, 4);
INSERT INTO `production_managers_projects` VALUES(142, 4);
INSERT INTO `production_managers_projects` VALUES(143, 1);
INSERT INTO `production_managers_projects` VALUES(144, 1);
INSERT INTO `production_managers_projects` VALUES(145, 1);
INSERT INTO `production_managers_projects` VALUES(145, 4);
INSERT INTO `production_managers_projects` VALUES(146, 4);
INSERT INTO `production_managers_projects` VALUES(147, 4);
INSERT INTO `production_managers_projects` VALUES(148, 4);
INSERT INTO `production_managers_projects` VALUES(149, 4);
INSERT INTO `production_managers_projects` VALUES(150, 1);
INSERT INTO `production_managers_projects` VALUES(151, 1);
INSERT INTO `production_managers_projects` VALUES(152, 1);
INSERT INTO `production_managers_projects` VALUES(153, 1);
INSERT INTO `production_managers_projects` VALUES(154, 1);
INSERT INTO `production_managers_projects` VALUES(155, 4);
INSERT INTO `production_managers_projects` VALUES(156, 1);
INSERT INTO `production_managers_projects` VALUES(156, 4);
INSERT INTO `production_managers_projects` VALUES(157, 1);
INSERT INTO `production_managers_projects` VALUES(157, 4);
INSERT INTO `production_managers_projects` VALUES(158, 1);
INSERT INTO `production_managers_projects` VALUES(159, 1);
INSERT INTO `production_managers_projects` VALUES(160, 1);
INSERT INTO `production_managers_projects` VALUES(161, 1);
INSERT INTO `production_managers_projects` VALUES(162, 3);
INSERT INTO `production_managers_projects` VALUES(163, 3);
INSERT INTO `production_managers_projects` VALUES(164, 3);
INSERT INTO `production_managers_projects` VALUES(165, 3);
INSERT INTO `production_managers_projects` VALUES(166, 1);
INSERT INTO `production_managers_projects` VALUES(166, 4);
INSERT INTO `production_managers_projects` VALUES(167, 1);
INSERT INTO `production_managers_projects` VALUES(167, 4);
INSERT INTO `production_managers_projects` VALUES(168, 4);
INSERT INTO `production_managers_projects` VALUES(169, 1);
INSERT INTO `production_managers_projects` VALUES(170, 1);
INSERT INTO `production_managers_projects` VALUES(171, 4);
INSERT INTO `production_managers_projects` VALUES(172, 4);
INSERT INTO `production_managers_projects` VALUES(173, 3);
INSERT INTO `production_managers_projects` VALUES(175, 1);
INSERT INTO `production_managers_projects` VALUES(175, 4);
INSERT INTO `production_managers_projects` VALUES(176, 1);
INSERT INTO `production_managers_projects` VALUES(177, 1);
INSERT INTO `production_managers_projects` VALUES(177, 4);
INSERT INTO `production_managers_projects` VALUES(178, 4);
INSERT INTO `production_managers_projects` VALUES(179, 4);
INSERT INTO `production_managers_projects` VALUES(180, 1);
INSERT INTO `production_managers_projects` VALUES(181, 3);
INSERT INTO `production_managers_projects` VALUES(182, 1);
INSERT INTO `production_managers_projects` VALUES(183, 3);
INSERT INTO `production_managers_projects` VALUES(184, 1);
INSERT INTO `production_managers_projects` VALUES(184, 4);
INSERT INTO `production_managers_projects` VALUES(185, 1);
INSERT INTO `production_managers_projects` VALUES(185, 4);
INSERT INTO `production_managers_projects` VALUES(186, 3);
INSERT INTO `production_managers_projects` VALUES(187, 1);
INSERT INTO `production_managers_projects` VALUES(187, 4);
INSERT INTO `production_managers_projects` VALUES(188, 4);
INSERT INTO `production_managers_projects` VALUES(189, 4);
INSERT INTO `production_managers_projects` VALUES(190, 1);
INSERT INTO `production_managers_projects` VALUES(190, 4);
INSERT INTO `production_managers_projects` VALUES(191, 1);
INSERT INTO `production_managers_projects` VALUES(191, 4);
INSERT INTO `production_managers_projects` VALUES(192, 1);
INSERT INTO `production_managers_projects` VALUES(192, 4);
INSERT INTO `production_managers_projects` VALUES(193, 4);
INSERT INTO `production_managers_projects` VALUES(196, 1);
INSERT INTO `production_managers_projects` VALUES(196, 4);
INSERT INTO `production_managers_projects` VALUES(197, 3);
INSERT INTO `production_managers_projects` VALUES(198, 1);
INSERT INTO `production_managers_projects` VALUES(198, 4);
INSERT INTO `production_managers_projects` VALUES(199, 1);
INSERT INTO `production_managers_projects` VALUES(199, 4);
INSERT INTO `production_managers_projects` VALUES(200, 4);
INSERT INTO `production_managers_projects` VALUES(201, 4);
INSERT INTO `production_managers_projects` VALUES(202, 1);
INSERT INTO `production_managers_projects` VALUES(202, 4);
INSERT INTO `production_managers_projects` VALUES(203, 1);
INSERT INTO `production_managers_projects` VALUES(204, 1);
INSERT INTO `production_managers_projects` VALUES(204, 4);
INSERT INTO `production_managers_projects` VALUES(205, 4);
INSERT INTO `production_managers_projects` VALUES(206, 4);
INSERT INTO `production_managers_projects` VALUES(207, 4);
INSERT INTO `production_managers_projects` VALUES(208, 4);
INSERT INTO `production_managers_projects` VALUES(209, 3);
INSERT INTO `production_managers_projects` VALUES(209, 5);
INSERT INTO `production_managers_projects` VALUES(210, 1);
INSERT INTO `production_managers_projects` VALUES(210, 4);
INSERT INTO `production_managers_projects` VALUES(211, 1);
INSERT INTO `production_managers_projects` VALUES(211, 4);
INSERT INTO `production_managers_projects` VALUES(212, 1);
INSERT INTO `production_managers_projects` VALUES(212, 4);
INSERT INTO `production_managers_projects` VALUES(213, 1);
INSERT INTO `production_managers_projects` VALUES(213, 4);
INSERT INTO `production_managers_projects` VALUES(214, 1);
INSERT INTO `production_managers_projects` VALUES(214, 4);
INSERT INTO `production_managers_projects` VALUES(215, 1);
INSERT INTO `production_managers_projects` VALUES(215, 4);
INSERT INTO `production_managers_projects` VALUES(216, 1);
INSERT INTO `production_managers_projects` VALUES(216, 4);
INSERT INTO `production_managers_projects` VALUES(217, 3);
INSERT INTO `production_managers_projects` VALUES(217, 5);
INSERT INTO `production_managers_projects` VALUES(220, 3);
INSERT INTO `production_managers_projects` VALUES(221, 3);
INSERT INTO `production_managers_projects` VALUES(222, 1);
INSERT INTO `production_managers_projects` VALUES(222, 4);
INSERT INTO `production_managers_projects` VALUES(223, 1);
INSERT INTO `production_managers_projects` VALUES(223, 4);
INSERT INTO `production_managers_projects` VALUES(224, 1);
INSERT INTO `production_managers_projects` VALUES(224, 4);
INSERT INTO `production_managers_projects` VALUES(224, 5);
INSERT INTO `production_managers_projects` VALUES(225, 1);
INSERT INTO `production_managers_projects` VALUES(226, 4);
INSERT INTO `production_managers_projects` VALUES(227, 1);
INSERT INTO `production_managers_projects` VALUES(227, 4);
INSERT INTO `production_managers_projects` VALUES(228, 1);
INSERT INTO `production_managers_projects` VALUES(228, 4);
INSERT INTO `production_managers_projects` VALUES(230, 1);
INSERT INTO `production_managers_projects` VALUES(230, 4);
INSERT INTO `production_managers_projects` VALUES(231, 1);
INSERT INTO `production_managers_projects` VALUES(232, 1);
INSERT INTO `production_managers_projects` VALUES(232, 4);
INSERT INTO `production_managers_projects` VALUES(233, 4);
INSERT INTO `production_managers_projects` VALUES(234, 4);
INSERT INTO `production_managers_projects` VALUES(235, 4);
INSERT INTO `production_managers_projects` VALUES(236, 4);
INSERT INTO `production_managers_projects` VALUES(237, 4);
INSERT INTO `production_managers_projects` VALUES(238, 4);
INSERT INTO `production_managers_projects` VALUES(239, 4);
INSERT INTO `production_managers_projects` VALUES(240, 1);
INSERT INTO `production_managers_projects` VALUES(241, 1);
INSERT INTO `production_managers_projects` VALUES(242, 1);
INSERT INTO `production_managers_projects` VALUES(243, 1);
INSERT INTO `production_managers_projects` VALUES(244, 3);
INSERT INTO `production_managers_projects` VALUES(244, 5);
INSERT INTO `production_managers_projects` VALUES(245, 3);
INSERT INTO `production_managers_projects` VALUES(246, 3);
INSERT INTO `production_managers_projects` VALUES(247, 1);
INSERT INTO `production_managers_projects` VALUES(248, 1);
INSERT INTO `production_managers_projects` VALUES(248, 4);
INSERT INTO `production_managers_projects` VALUES(249, 1);
INSERT INTO `production_managers_projects` VALUES(249, 5);
INSERT INTO `production_managers_projects` VALUES(250, 3);
INSERT INTO `production_managers_projects` VALUES(250, 5);
INSERT INTO `production_managers_projects` VALUES(251, 3);
INSERT INTO `production_managers_projects` VALUES(251, 5);
INSERT INTO `production_managers_projects` VALUES(252, 1);
INSERT INTO `production_managers_projects` VALUES(252, 4);
INSERT INTO `production_managers_projects` VALUES(253, 1);
INSERT INTO `production_managers_projects` VALUES(253, 4);
INSERT INTO `production_managers_projects` VALUES(254, 1);
INSERT INTO `production_managers_projects` VALUES(254, 4);
INSERT INTO `production_managers_projects` VALUES(255, 1);
INSERT INTO `production_managers_projects` VALUES(256, 1);
INSERT INTO `production_managers_projects` VALUES(257, 1);
INSERT INTO `production_managers_projects` VALUES(257, 4);
INSERT INTO `production_managers_projects` VALUES(258, 5);
INSERT INTO `production_managers_projects` VALUES(259, 5);
INSERT INTO `production_managers_projects` VALUES(260, 5);
INSERT INTO `production_managers_projects` VALUES(261, 4);
INSERT INTO `production_managers_projects` VALUES(262, 4);
INSERT INTO `production_managers_projects` VALUES(263, 4);
INSERT INTO `production_managers_projects` VALUES(264, 4);
INSERT INTO `production_managers_projects` VALUES(265, 1);
INSERT INTO `production_managers_projects` VALUES(265, 4);
INSERT INTO `production_managers_projects` VALUES(266, 1);
INSERT INTO `production_managers_projects` VALUES(266, 4);
INSERT INTO `production_managers_projects` VALUES(267, 1);
INSERT INTO `production_managers_projects` VALUES(267, 4);
INSERT INTO `production_managers_projects` VALUES(268, 1);
INSERT INTO `production_managers_projects` VALUES(268, 4);
INSERT INTO `production_managers_projects` VALUES(269, 1);
INSERT INTO `production_managers_projects` VALUES(269, 4);
INSERT INTO `production_managers_projects` VALUES(270, 1);
INSERT INTO `production_managers_projects` VALUES(271, 1);
INSERT INTO `production_managers_projects` VALUES(272, 1);
INSERT INTO `production_managers_projects` VALUES(273, 1);
INSERT INTO `production_managers_projects` VALUES(274, 4);
INSERT INTO `production_managers_projects` VALUES(275, 1);
INSERT INTO `production_managers_projects` VALUES(276, 1);
INSERT INTO `production_managers_projects` VALUES(277, 1);
INSERT INTO `production_managers_projects` VALUES(278, 1);
INSERT INTO `production_managers_projects` VALUES(279, 4);
INSERT INTO `production_managers_projects` VALUES(280, 4);
INSERT INTO `production_managers_projects` VALUES(281, 4);
INSERT INTO `production_managers_projects` VALUES(282, 4);
INSERT INTO `production_managers_projects` VALUES(283, 4);
INSERT INTO `production_managers_projects` VALUES(284, 4);
INSERT INTO `production_managers_projects` VALUES(285, 1);
INSERT INTO `production_managers_projects` VALUES(286, 1);
INSERT INTO `production_managers_projects` VALUES(287, 1);
INSERT INTO `production_managers_projects` VALUES(288, 1);
INSERT INTO `production_managers_projects` VALUES(289, 4);
INSERT INTO `production_managers_projects` VALUES(290, 4);
INSERT INTO `production_managers_projects` VALUES(291, 1);
INSERT INTO `production_managers_projects` VALUES(291, 4);
INSERT INTO `production_managers_projects` VALUES(292, 1);
INSERT INTO `production_managers_projects` VALUES(293, 4);
INSERT INTO `production_managers_projects` VALUES(294, 4);
INSERT INTO `production_managers_projects` VALUES(295, 4);
INSERT INTO `production_managers_projects` VALUES(296, 4);
INSERT INTO `production_managers_projects` VALUES(297, 1);
INSERT INTO `production_managers_projects` VALUES(298, 1);
INSERT INTO `production_managers_projects` VALUES(299, 1);
INSERT INTO `production_managers_projects` VALUES(300, 1);
INSERT INTO `production_managers_projects` VALUES(301, 4);
INSERT INTO `production_managers_projects` VALUES(302, 1);
INSERT INTO `production_managers_projects` VALUES(303, 1);
INSERT INTO `production_managers_projects` VALUES(304, 1);
INSERT INTO `production_managers_projects` VALUES(305, 1);
INSERT INTO `production_managers_projects` VALUES(306, 1);
INSERT INTO `production_managers_projects` VALUES(307, 1);
INSERT INTO `production_managers_projects` VALUES(308, 1);
INSERT INTO `production_managers_projects` VALUES(309, 1);
INSERT INTO `production_managers_projects` VALUES(310, 1);
INSERT INTO `production_managers_projects` VALUES(311, 1);
INSERT INTO `production_managers_projects` VALUES(311, 4);
INSERT INTO `production_managers_projects` VALUES(312, 1);
INSERT INTO `production_managers_projects` VALUES(312, 4);
INSERT INTO `production_managers_projects` VALUES(313, 1);
INSERT INTO `production_managers_projects` VALUES(313, 4);
INSERT INTO `production_managers_projects` VALUES(314, 1);
INSERT INTO `production_managers_projects` VALUES(314, 4);
INSERT INTO `production_managers_projects` VALUES(315, 1);
INSERT INTO `production_managers_projects` VALUES(315, 4);
INSERT INTO `production_managers_projects` VALUES(316, 1);
INSERT INTO `production_managers_projects` VALUES(317, 1);
INSERT INTO `production_managers_projects` VALUES(318, 1);
INSERT INTO `production_managers_projects` VALUES(319, 1);
INSERT INTO `production_managers_projects` VALUES(319, 4);
INSERT INTO `production_managers_projects` VALUES(320, 1);
INSERT INTO `production_managers_projects` VALUES(321, 1);
INSERT INTO `production_managers_projects` VALUES(322, 4);
INSERT INTO `production_managers_projects` VALUES(323, 1);
INSERT INTO `production_managers_projects` VALUES(323, 4);
INSERT INTO `production_managers_projects` VALUES(325, 1);
INSERT INTO `production_managers_projects` VALUES(326, 1);
INSERT INTO `production_managers_projects` VALUES(326, 4);
INSERT INTO `production_managers_projects` VALUES(327, 4);
INSERT INTO `production_managers_projects` VALUES(328, 1);
INSERT INTO `production_managers_projects` VALUES(329, 1);
INSERT INTO `production_managers_projects` VALUES(330, 1);
INSERT INTO `production_managers_projects` VALUES(330, 4);
INSERT INTO `production_managers_projects` VALUES(331, 1);
INSERT INTO `production_managers_projects` VALUES(332, 1);
INSERT INTO `production_managers_projects` VALUES(333, 1);
INSERT INTO `production_managers_projects` VALUES(333, 4);
INSERT INTO `production_managers_projects` VALUES(334, 1);
INSERT INTO `production_managers_projects` VALUES(335, 1);
INSERT INTO `production_managers_projects` VALUES(336, 1);
INSERT INTO `production_managers_projects` VALUES(337, 1);
INSERT INTO `production_managers_projects` VALUES(338, 4);
INSERT INTO `production_managers_projects` VALUES(341, 1);
INSERT INTO `production_managers_projects` VALUES(342, 1);
INSERT INTO `production_managers_projects` VALUES(343, 1);
INSERT INTO `production_managers_projects` VALUES(344, 1);
INSERT INTO `production_managers_projects` VALUES(345, 4);
INSERT INTO `production_managers_projects` VALUES(346, 4);
INSERT INTO `production_managers_projects` VALUES(347, 4);
INSERT INTO `production_managers_projects` VALUES(348, 4);
INSERT INTO `production_managers_projects` VALUES(349, 4);
INSERT INTO `production_managers_projects` VALUES(350, 4);
INSERT INTO `production_managers_projects` VALUES(351, 1);
INSERT INTO `production_managers_projects` VALUES(352, 1);
INSERT INTO `production_managers_projects` VALUES(353, 1);
INSERT INTO `production_managers_projects` VALUES(354, 1);

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

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` VALUES(1, 35999, 'Rich Media', 'Intel: Lucy/Kane Rich Media Ad Production', 'This task involves developing 6 rich media ads (2 sizes @ 3 concepts).', 'https://razorfish.jira.com/browse/INTELRICHMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-08', 3, NULL, '2011-03-03 02:09:36', '2011-03-16 09:24:10', 1, NULL, NULL);
INSERT INTO `projects` VALUES(3, 34777, 'Standard Media', 'Miller Coors: Develop OBOY Banners Refresh 2', 'Involves updating images and copy in a set of three creatives at 3 sizes.', 'https://razorfish.jira.com/browse/MHLOB-163', 0, 1, 1, 1, 0, 0, 0, '2011-03-02', '2011-03-04', 1, NULL, '2011-03-03 03:17:14', '2011-03-11 08:16:33', 4, NULL, NULL);
INSERT INTO `projects` VALUES(4, 37058, 'Standard Media', 'Disney: Mickey and Buzz Flash Standards â€ Banner Translation', '', 'https://razorfish.jira.com/browse/DISNEYMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-18', 1, NULL, '2011-03-03 03:37:54', '2011-03-21 09:53:24', 9, NULL, NULL);
INSERT INTO `projects` VALUES(5, 36057, 'Other', 'HAL: Preview Site Reorganization', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-18', 1, NULL, '2011-03-03 09:48:46', '2011-04-04 11:56:51', 6, NULL, NULL);
INSERT INTO `projects` VALUES(6, 34894, 'Rich Media', 'MSN: Q3 High Impact 3.31 Burst', '', 'https://razorfish.jira.com/browse/MSNRICHMMXI-23', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-11', 3, NULL, '2011-03-03 09:57:17', '2011-03-16 09:23:27', 3, NULL, NULL);
INSERT INTO `projects` VALUES(7, 36438, 'Standard Media', 'FY11 Gaming: Trade In - Develop Standard Units', 'This task involves developing 8 standard ads (four sizes@two concepts).', 'https://razorfish.jira.com/browse/BBSM-14', 0, 1, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-03', 1, NULL, '2011-03-03 17:22:52', '2011-03-08 01:46:17', 10, NULL, NULL);
INSERT INTO `projects` VALUES(8, 35999, 'Standard Media', 'Intel: Lucy/Kane Standard Ad Production', 'This task involves developing 6 standard media ads (2 sizes @ 3 concepts).', 'https://razorfish.jira.com/browse/INTELSTANMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-08', 3, NULL, '2011-03-03 17:43:22', '2011-03-16 09:24:01', 1, NULL, NULL);
INSERT INTO `projects` VALUES(9, 34894, 'Standard Media', 'MSN: Windows Live Messenger Ads - OnNet NCAA', 'This task involves developing two standard Flash 234x60 ads @ two different creatives.', 'https://razorfish.jira.com/browse/MSNSTDMMXI-48', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-10', 1, NULL, '2011-03-03 17:47:59', '2011-03-11 08:16:17', 3, NULL, NULL);
INSERT INTO `projects` VALUES(10, 34225, 'Standard Media', 'Microsoft: Bing Music Festival Banners', 'This task involves developing 4 standard banner ads.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-16', 0, 1, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-08', 1, NULL, '2011-03-03 17:50:51', '2011-03-11 08:16:49', 2, NULL, NULL);
INSERT INTO `projects` VALUES(11, 35722, 'Standard Media', 'Levi''s CurveID - Branding Standards', 'There two creative directions and three total ads for each direction.', 'https://razorfish.jira.com/browse/LEVISTANMMXI-1', 0, 1, 1, 1, 0, 0, 0, '2011-03-04', '2011-03-14', 4, NULL, '2011-03-04 11:43:58', '2011-03-13 23:51:04', 8, NULL, NULL);
INSERT INTO `projects` VALUES(12, 36877, 'Standard Media', 'Office Direct Standard Banners: Develop 300x250 Prototypes', 'This task involves developing three Flash standard ads. There are three creative concepts named 3A, 3B, and 3D concepts.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-1', 0, 0, 1, 1, 0, 0, 0, '2011-03-07', '2011-03-10', 2, NULL, '2011-03-06 12:49:29', '2011-03-15 07:44:10', 11, NULL, NULL);
INSERT INTO `projects` VALUES(13, 36491, 'Standard Media', 'MC_CL_2011:Standard Media: Master of Cold - Develop Standard Ads - Product and Anthem Creatives', 'This task involves developing a set of standard media ads. There will be a total of three sizes for each creative. All of the creatives will need to built with three different CTAs (that drive to .com, You Tube and Facebook). Two of the creatives (Anthem and Bar) will have multiple headlines. See the breakdown below.\r\n\r\nBar and Anthem Creatives at 3 sizes * 3 CTAs * 2 headlines = 18 ads\r\nProduct Creative at 3 sizes * 3 CTAs = 9 ads\r\nTotal deliverables = 27 ads', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-8', 0, 1, 0, 1, 0, 0, 0, '2011-04-18', '2011-04-21', 3, NULL, '2011-03-07 05:41:48', '2011-04-25 12:25:41', 5, NULL, NULL);
INSERT INTO `projects` VALUES(14, 36438, 'Rich Media', 'FY11 Gaming Dragon Age 2 - Develop Pushdown Demo ', 'This task involved developing a pushdown demo that will be used as a template for the publishers.', 'https://razorfish.jira.com/browse/BBRM-9', 0, 0, 1, 1, 0, 0, 0, '2011-02-09', '2011-02-11', 1, NULL, '2011-03-07 06:02:50', '2011-03-07 06:21:20', 10, NULL, NULL);
INSERT INTO `projects` VALUES(15, 36438, 'Standard Media', 'FY11 Gaming - Dragon Age 2 - Develop Standard Units', '', 'https://razorfish.jira.com/browse/BBSM-10', 0, 1, 0, 1, 0, 0, 0, '2011-02-07', '2011-02-11', 1, NULL, '2011-03-07 06:13:05', '2011-03-07 06:14:49', 10, NULL, NULL);
INSERT INTO `projects` VALUES(16, 36438, 'Rich Media', 'FY11 Gaming: Trade In - Develop Pushdown Demo', 'This task involves developing a rich media pushdown ad that will be used as a template for the publishers to build from. ', 'https://razorfish.jira.com/browse/BBRM-10', 0, 0, 1, 1, 0, 0, 0, '2011-02-23', '2011-03-01', 1, NULL, '2011-03-07 06:20:10', '2011-03-07 06:20:40', 10, NULL, NULL);
INSERT INTO `projects` VALUES(17, 34894, 'Rich Media', 'Round 1 Burst', 'This task involved developing three rich media units. One for click to expand high k-weight, click to expand low k-weight, and rollover to expand.  ', 'https://razorfish.jira.com/browse/MSNRICHMMXI-1', 0, 0, 0, 1, 0, 0, 0, '2011-02-05', '2011-02-14', 1, NULL, '2011-03-07 06:25:48', '2011-03-07 06:25:48', 3, NULL, NULL);
INSERT INTO `projects` VALUES(18, 34226, 'Standard Media', 'Evergreen Refresh: I am Number Four', 'This task involves updating the images and copy in a set of five Flash units that have already been developed.', 'https://razorfish.jira.com/browse/BINGBANNERS-2', 0, 1, 0, 1, 0, 0, 0, '2011-01-14', '2011-01-25', 1, NULL, '2011-03-07 06:31:44', '2011-03-07 06:32:20', 2, NULL, NULL);
INSERT INTO `projects` VALUES(19, 34226, 'Rich Media', 'Buzz Media Ad', '', 'https://razorfish.jira.com/browse/BINGRICHMMXI-2', 0, 0, 0, 1, 0, 0, 0, '2011-02-01', '2011-02-11', 1, NULL, '2011-03-07 06:34:56', '2011-03-07 06:47:51', 2, NULL, NULL);
INSERT INTO `projects` VALUES(20, 34226, 'Standard Media', 'Bing Demand Gen Phase 3 Banners', 'This task involves creating three sized standard banner units for three different creatives (Price Predictor, Image Search, and Search History).', 'https://razorfish.jira.com/browse/BINGSTANMMXI-1', 0, 1, 0, 1, 0, 0, 0, '2011-01-31', '2011-02-09', 1, NULL, '2011-03-07 06:42:13', '2011-03-07 06:42:13', 2, NULL, NULL);
INSERT INTO `projects` VALUES(21, 34226, 'Standard Media', 'Bing: Develop Buzz Superheaders', 'This task involves developing a total of six standard ads. The set includes, a single 970x200 ad and five other sizes.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-19', 0, 0, 1, 1, 0, 0, 0, '2011-03-03', '2011-03-07', 1, NULL, '2011-03-07 06:50:58', '2011-03-15 07:43:59', 2, NULL, NULL);
INSERT INTO `projects` VALUES(22, 36057, 'Rich Media', 'Convert existing ads to use XML', 'There are 6 banners that need to be built to 3 sizes. So there should be a total of 18 ads.', 'https://razorfish.jira.com/browse/HALRICHMMXI-7', 0, 0, 1, 1, 0, 0, 0, '2011-03-07', '2011-03-18', 1, NULL, '2011-03-07 07:02:41', '2011-04-04 11:56:41', 6, NULL, NULL);
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
INSERT INTO `projects` VALUES(39, 35999, 'Standard Media', 'Max Standard Media Ads', 'This task involves building 6 standard ads. The ads should follow the design comps attached below and should match the motion in the prototypes provided as closely as possible.', 'https://razorfish.jira.com/browse/INTELSTANMMXI-27', 0, 1, 1, 1, 0, 0, 0, '2011-03-25', '2011-04-23', 3, NULL, '2011-03-15 09:45:05', '2011-04-25 12:31:07', 1, NULL, NULL);
INSERT INTO `projects` VALUES(40, 36018, 'Rich Media', 'Core i5 Marquee Ad', '', 'https://razorfish.jira.com/browse/INTELCS-79', 0, 0, 1, 1, 0, 0, 0, '2011-03-15', '2011-03-18', 3, NULL, '2011-03-15 09:47:15', '2011-03-21 09:52:39', 1, NULL, NULL);
INSERT INTO `projects` VALUES(41, 36499, 'Standard Media', 'Coors Catch Ad Updates', 'This task involves updating an existing set of ads with a new CTA.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-11', 0, 1, 1, 1, 0, 0, 0, '2011-03-15', '2011-03-16', 4, NULL, '2011-03-15 16:04:52', '2011-03-16 09:21:03', 5, NULL, NULL);
INSERT INTO `projects` VALUES(42, 35999, 'Rich Media', 'Intel: Lucy/Kane QA Standard Media Ad Bug Fixes', '', 'https://razorfish.jira.com/browse/INTELSTANMMXI-25', 0, 0, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-18', 4, NULL, '2011-03-16 09:26:34', '2011-03-21 09:51:44', 1, NULL, NULL);
INSERT INTO `projects` VALUES(43, 34226, 'Rich Media', 'Bing Mobile High Impact', 'This task involves building a shell that loads swfs and developing the animations that are loaded into the shell.\r\n\r\nhttp://microsoft.razorfishcreative.com/search_adv/content/bing_mobile_HI/index.html\r\nusername:  microsoft_search_adv\r\npassword:  s3@rch2008', 'https://razorfish.jira.com/browse/BINGRICHMMXI-6', 0, 1, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-30', 2, NULL, '2011-03-16 09:30:25', '2011-04-11 11:57:50', 2, NULL, NULL);
INSERT INTO `projects` VALUES(44, 34894, 'Rich Media', 'MSN Q3 High Impact 3.31 Burst: Develop Float Ad', 'Develop a Flash shell that loads in a video to the following dimensions.\r\nFloat Creative Size Max: 200W X 200H\r\nFloat Stage Size Max: 932W X 450H', 'https://razorfish.jira.com/browse/MSNRICHMMXI-32', 0, 0, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-18', 3, NULL, '2011-03-16 09:32:24', '2011-03-21 09:53:01', 3, NULL, NULL);
INSERT INTO `projects` VALUES(45, 35999, 'Rich Media', 'Intel: Lucy/Kane QA Mobile Ad Bug Fixes', '', 'https://razorfish.jira.com/browse/INTELSTANMMXI-26', 0, 0, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-18', 1, NULL, '2011-03-16 09:43:38', '2011-03-18 10:51:33', 1, NULL, NULL);
INSERT INTO `projects` VALUES(46, 37139, 'Standard Media', 'Hotmail Banners for Office', 'Create fifteen standard flash banners for Microsoft Hotmail promotion on Office.com and Office Starter.\r\n', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-5', 0, 1, 1, 1, 0, 0, 0, '2011-04-04', '2011-05-06', 1, NULL, '2011-03-16 14:09:28', '2011-05-11 11:55:03', 11, NULL, NULL);
INSERT INTO `projects` VALUES(47, 37267, 'Standard Media', 'Miss Coors Light Banners', 'This task involves building 3 standard Flash banner ads.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-12', 0, 1, 1, 1, 0, 0, 0, '2011-03-18', '2011-03-22', 2, NULL, '2011-03-16 15:33:09', '2011-03-24 17:40:35', 5, NULL, NULL);
INSERT INTO `projects` VALUES(48, 35999, 'Rich Media', 'Intel: Lucy/Kane QA Rich Media Ad Bug Fixes', '', 'https://razorfish.jira.com/browse/INTELRICHMMXI-6', 0, 0, 1, 1, 0, 0, 0, '2011-03-17', '2011-03-18', 4, NULL, '2011-03-18 10:47:08', '2011-03-21 09:51:53', 1, NULL, NULL);
INSERT INTO `projects` VALUES(49, 36057, 'Other', 'HAL Europe: Ad Copy Revisions', '', 'https://razorfish.jira.com/browse/HALRICHMMXI-19', 0, 1, 1, 1, 0, 0, 0, '2011-03-16', '2011-03-18', 4, NULL, '2011-03-18 10:48:44', '2011-03-30 23:45:32', 6, NULL, NULL);
INSERT INTO `projects` VALUES(50, 34226, 'Standard Media', '300x100 Seattle Sounders Ads', '', 'https://razorfish.jira.com/browse/BINGSTANMMXI-25', 0, 0, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-22', 2, NULL, '2011-03-20 23:29:56', '2011-03-23 21:16:39', 2, NULL, NULL);
INSERT INTO `projects` VALUES(51, 34226, 'Standard Media', 'Develop Bing Education Lily Companions', '', 'https://razorfish.jira.com/browse/BINGSTANMMXI-27', 0, 1, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-25', 2, NULL, '2011-03-20 23:31:17', '2011-03-29 07:34:07', 2, NULL, NULL);
INSERT INTO `projects` VALUES(52, 36852, 'Standard Media', 'Best Buy FY11 Gaming: L.A. Noire - Standard Units', '', 'https://razorfish.jira.com/browse/BBSM-22', 0, 1, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-28', 4, NULL, '2011-03-21 09:10:18', '2011-04-18 11:48:41', 10, NULL, NULL);
INSERT INTO `projects` VALUES(53, 36852, 'Rich Media', 'Best Buy FY11 Gaming: L.A. Noire - Pushdown for Pubs', '', 'https://razorfish.jira.com/browse/BBRM-13', 0, 0, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-28', 4, NULL, '2011-03-21 09:12:15', '2011-04-18 11:48:51', 10, NULL, NULL);
INSERT INTO `projects` VALUES(54, 34894, 'Rich Media', 'MSN Q3 High Impact: MSN Meebo Ad', '', 'https://razorfish.jira.com/browse/MSNRICHMMXI-36', 0, 0, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-21', 4, NULL, '2011-03-21 14:57:17', '2011-03-23 22:02:06', 3, NULL, NULL);
INSERT INTO `projects` VALUES(55, 36499, 'Standard Media', 'Coors Equities National 2011 Train Ad Updates', 'This task involves updating an existing set of three standard banner ads. The update includes changing the mountains out and having the CTA read "like us on facebook" like the other ones (https://razorfish.jira.com/browse/MCCLMMXISTAN-11).\r\n', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-14', 0, 1, 1, 1, 0, 0, 0, '2011-03-21', '2011-03-25', 1, NULL, '2011-03-21 23:47:04', '2011-03-29 15:19:16', 4, NULL, NULL);
INSERT INTO `projects` VALUES(56, 36877, 'Standard Media', 'Office Direct Banners: Internal Creative Review Feedback  ', '', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-4', 0, 1, 1, 1, 0, 0, 0, '2011-03-22', '2011-03-23', 1, NULL, '2011-03-22 11:09:47', '2011-03-25 10:20:53', 11, NULL, NULL);
INSERT INTO `projects` VALUES(57, 34894, 'Rich Media', 'MSN Q4 High Impact - 5.5 Burst', 'Date	 Task\r\n4/11-4/15	 Rich media and standard ad production.\r\n4/18 EOD	 Assets delivered to PointRoll. Associated demo names/IDs from AdPortal will also be provided. All demos/assets are assumed to be 100% client/agency approved.\r\n4/19-20	QA/Initial Asset Review\r\n4/20-26	 Production\r\n4/26 EOD	 Tags trafficked to publishers.\r\n4/27 EOD	 Test pages received from publishers\r\n4/29	 T3/Razorfish approval of pub test pages\r\n5/3	 Client Approval of pub test pages.\r\n5/5	 Launch', 'https://razorfish.jira.com/browse/MSNRICHMMXI-37', 0, 0, 1, 1, 0, 0, 0, '2011-04-04', '2011-04-23', 3, NULL, '2011-03-22 13:36:36', '2011-05-18 18:57:07', 3, NULL, NULL);
INSERT INTO `projects` VALUES(58, 35999, 'Rich Media', 'Max Rich Media Ads', '', 'https://razorfish.jira.com/browse/INTELRICHMMXI-8', 0, 0, 1, 1, 0, 0, 0, '2011-03-25', '2011-04-23', 3, NULL, '2011-03-22 22:30:30', '2011-04-25 12:34:06', 1, NULL, NULL);
INSERT INTO `projects` VALUES(59, 37537, 'Standard Media', 'Office Influencer Banners', 'This task involves developing twelve different creative executions at six different sizes.\r\n', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-8', 0, 1, 1, 1, 0, 0, 0, '2011-03-31', '2011-04-21', 2, NULL, '2011-03-23 13:24:15', '2011-06-22 15:38:38', 11, NULL, NULL);
INSERT INTO `projects` VALUES(60, 34894, 'Rich Media', 'MSN Q4 High Impact - 4.7 Burst', '', 'https://razorfish.jira.com/browse/MSNRICHMMXI-35', 0, 0, 1, 1, 0, 0, 0, '2011-03-23', '2011-03-25', 3, NULL, '2011-03-23 14:49:06', '2011-03-30 23:44:47', 3, NULL, NULL);
INSERT INTO `projects` VALUES(61, 35999, 'Rich Media', 'Visibly Smart Standard Banners: Claire Track', 'This task involves developing 23 standard ads. There are 4 sizes with 6 creative executions excluding the 1 horse execution from the 728x90 size ad.', 'https://razorfish.jira.com/browse/INTELSTANMMXI-31', 0, 1, 1, 1, 0, 0, 0, '2011-04-05', '2011-04-15', 3, NULL, '2011-03-24 11:04:05', '2011-04-25 12:33:06', 1, NULL, NULL);
INSERT INTO `projects` VALUES(62, 36491, 'Rich Media', 'Master of Cold: Develop Ad for YouTube', 'This task involves developing a 970x250 rich media ad for the masthead portion of YouTube.', 'https://razorfish.jira.com/browse/MCCLMMXIRICH-1', 0, 0, 1, 1, 0, 0, 0, '2011-04-18', '2011-05-06', 2, NULL, '2011-03-24 15:31:02', '2011-05-11 11:12:11', 4, NULL, NULL);
INSERT INTO `projects` VALUES(64, 34225, 'Standard Media', 'Demand Gen Mobile Banners', 'This task involves developing 8 standard media ads. There are two creative concepts and 4 sizes for each concept.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-28', 0, 1, 1, 1, 0, 0, 0, '2011-03-28', '2011-04-08', 4, NULL, '2011-03-28 17:54:39', '2011-04-13 16:18:14', 2, NULL, NULL);
INSERT INTO `projects` VALUES(66, 35999, 'Rich Media', 'Visibly Smart Rich Media Banners: Claire Track', 'This task involves developing 11 expanding rich media ads and 1 tandem ad. There will be a total of 17 deliverables including the tandem ads.', 'https://razorfish.jira.com/browse/INTELRICHMMXI-15', 0, 1, 1, 1, 0, 0, 0, '2011-04-01', '2011-04-23', 3, NULL, '2011-04-01 00:35:15', '2011-05-02 12:10:04', 1, NULL, NULL);
INSERT INTO `projects` VALUES(65, 34894, 'Standard Media', 'MSN "Make MSN Your Homepage": Develop Additional Creatives', 'This task involves developing 14 standard ads. There are 7 sizes and two creative concepts.\r\n', 'https://razorfish.jira.com/browse/MSNSTDMMXI-52', 0, 1, 1, 1, 0, 0, 0, '2011-03-30', '2011-04-05', 4, NULL, '2011-03-30 22:13:02', '2011-04-14 14:58:35', 3, NULL, NULL);
INSERT INTO `projects` VALUES(67, 36519, 'Standard Media', 'MC_KEY_36519_2011_Pub_Media_Supp_NB: Standard Media Ads', 'This task involves developing 9 standard media ads. There are three sizes and four copy directions.', 'https://razorfish.jira.com/browse/MCKEYWEBMAINT-2', 0, 1, 1, 1, 0, 0, 0, '2011-04-18', '2011-04-29', 1, NULL, '2011-04-06 01:25:26', '2011-05-06 16:47:44', 12, NULL, NULL);
INSERT INTO `projects` VALUES(68, 36519, 'Rich Media', 'MC_KEY_36519_2011_Pub_Media_Supp_NB: Rich Media Ads', '', 'https://razorfish.jira.com/browse/MCKEYWEBMAINT-1', 0, 0, 1, 1, 0, 0, 0, '2011-04-18', '2011-04-29', 1, NULL, '2011-04-06 01:27:56', '2011-05-02 12:54:17', 12, NULL, NULL);
INSERT INTO `projects` VALUES(69, 36438, 'Standard Media', 'Best Buy FY11 Gaming: Trade In - Offer Refresh', 'Change the current offer of "2 games for $50" to the new offer "2 games for $60".', 'https://razorfish.jira.com/browse/BBSM-29', 0, 1, 0, 1, 0, 0, 0, '2011-04-06', '2011-04-07', 1, NULL, '2011-04-06 14:34:05', '2011-04-11 11:57:35', 10, NULL, NULL);
INSERT INTO `projects` VALUES(70, 36057, 'Rich Media', 'HAL Share Button Build', 'This task involves implementing a share and share all button to two sets of ads (RM2 and Foodie).', 'https://razorfish.jira.com/browse/HALRICHMMXI-22', 0, 0, 0, 1, 0, 0, 0, '2011-04-13', '2011-04-25', 2, NULL, '2011-04-07 13:45:44', '2011-05-02 12:10:19', 6, NULL, NULL);
INSERT INTO `projects` VALUES(71, 34894, 'Standard Media', 'MSN Q4 Standard Ads - 5.5 Burst', '', 'https://razorfish.jira.com/browse/MSNSTDMMXI-56', 0, 1, 1, 1, 0, 0, 0, '2011-04-11', '2011-04-20', 1, NULL, '2011-04-11 12:59:30', '2011-05-11 11:52:20', 3, NULL, NULL);
INSERT INTO `projects` VALUES(72, 37555, 'Standard Media', 'Intel Major League Baseball Standard Ads', 'This task involves building 3 standard media ads (160x600, 300x250, 728x90).\r\n', 'https://razorfish.jira.com/browse/INTELSTANMMXI-47', 0, 0, 1, 1, 0, 0, 0, '2011-04-27', '2011-05-06', 1, NULL, '2011-04-14 15:37:56', '2011-05-18 18:53:14', 1, NULL, NULL);
INSERT INTO `projects` VALUES(73, 37535, 'Rich Media', 'Intel Max Animated Marquee', 'This task involves developing 1 animated marquee for the top of this page: www.intel.com/go/intelinsider. Here is a past example https://razorfish.jira.com/browse/INTELCS-79.', 'https://razorfish.jira.com/browse/INTELRICHMMXI-25', 0, 0, 1, 1, 0, 0, 0, '2011-04-20', '2011-04-22', 2, NULL, '2011-04-14 16:42:18', '2011-04-25 18:45:04', 1, NULL, NULL);
INSERT INTO `projects` VALUES(74, 37201, 'Standard Media', 'Office Web Apps eCRM - Excel Banners', 'This task involves developing a total of 36 standards ads. There are 2 sizes and 3 concepts (Excel,Word,PowerPoint, OneNote and Getting Started).', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-16', 0, 1, 1, 1, 0, 0, 0, '2011-04-14', '2011-05-02', 1, NULL, '2011-04-14 17:55:48', '2011-05-11 11:32:36', 11, NULL, NULL);
INSERT INTO `projects` VALUES(75, 36887, 'Standard Media', 'Office Gold Campaign: Develop Standard Ads', 'This task involves developing a total of 36 standard media ads. There will be 6 total banners executions that need to be built at 6 sizes. The creative execution involves three different creative image options with two headlines per image. This equals six total banner executions.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-21', 0, 1, 1, 1, 0, 0, 0, '2011-05-02', '2011-05-13', 1, NULL, '2011-04-18 12:00:15', '2011-06-13 15:08:03', 11, NULL, NULL);
INSERT INTO `projects` VALUES(76, NULL, 'Rich Media', 'Holland America Grand Voyages: Develop Banners', 'This task involves taking the existing 360i Grand Voyages flash banners and update image, font, logo, CTA with brand dimensions. Update end frame with XML functionality to allow for easy price updates, which will also create a standard for 1-offer end frames. New images provided by HAL and listed below.', 'https://razorfish.jira.com/browse/HALRICHMMXI-23', 0, 1, 1, 1, 0, 0, 0, '2011-04-26', '2011-05-02', 1, NULL, '2011-04-18 13:31:21', '2011-05-11 13:14:44', 6, NULL, NULL);
INSERT INTO `projects` VALUES(77, 36852, 'Rich Media', 'Best Buy FY11 Gaming: L.A. Noire - Pushdown for Pubs - Client Changes', 'This task involves updating the endframe copy and the sizing/fuzziness of the ESRB artwork on all the custom and standard banners. (I''m not sure if we''re able to better optimize the quality of the ESRB without sacrificing the quality of the other banner images, but we said we would if we could.)', 'https://razorfish.jira.com/browse/BBRM-18', 0, 0, 1, 1, 0, 0, 0, '2011-04-20', '2011-04-22', 1, NULL, '2011-04-19 17:55:00', '2011-04-26 15:41:06', 10, NULL, NULL);
INSERT INTO `projects` VALUES(78, 36852, 'Standard Media', 'Best Buy FY11 Gaming: L.A. Noire - Standards - Client Changes', 'This task involves updating the endframe copy and the sizing/fuzziness of the ESRB artwork on all the custom and standard banners. (I''m not sure if we''re able to better optimize the quality of the ESRB without sacrificing the quality of the other banner images, but we said we would if we could.)', 'https://razorfish.jira.com/browse/BBSM-32', 0, 1, 1, 1, 0, 0, 0, '2011-04-20', '2011-04-22', 1, NULL, '2011-04-19 17:55:52', '2011-04-26 15:42:42', 10, NULL, NULL);
INSERT INTO `projects` VALUES(79, 36491, 'Standard Media', 'MC_CL_2011:Standard Media: Master of Cold - Develop Standard Ads - Bar Creative', 'This task involves developing a set of standard media ads. There will be a total of four sizes for each creative. All of the creatives will need to built with three different CTAs (that drive to .com, You Tube and Facebook). Two of the creatives (Anthem and Bar) will have multiple headlines.\r\n\r\nSee the breakdown below.\r\n\r\nAnthem & Bar creatives will have the 3 CTA''s to .com, YouTube and Facebook.\r\n\r\nBar Creative at 4 sizes * 3 CTAs * 2 headlines = 24 ads\r\n\r\nMay 9 Launch:\r\nBar\r\n \r\n\r\nDimensions\r\n300x250\r\n728x90\r\n160x600', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-8', 0, 1, 1, 1, 0, 0, 0, '2011-04-25', '2011-05-09', 1, NULL, '2011-04-25 12:24:36', '2011-05-11 11:15:28', 5, NULL, NULL);
INSERT INTO `projects` VALUES(80, NULL, 'Standard Media', 'TNZ and AirNZ Joint Venture: Standard Ad Updates', '', 'https://razorfish.jira.com/browse/TNZSTDMMXI-15', 0, 1, 0, 1, 0, 0, 0, '2011-04-26', '2011-04-29', 1, NULL, '2011-04-26 11:44:39', '2011-05-09 13:54:25', 7, NULL, NULL);
INSERT INTO `projects` VALUES(81, 34225, 'Rich Media', 'Social High Impact ', '360 degree photo that loads demo SWFs in reaction to hotspot activation. Task involves creating a prototype unit and an additional MSN unit based on this prototype.', 'https://razorfish.jira.com/browse/BINGRICHMMXI-13', 0, 0, 1, 1, 0, 0, 0, '2011-05-02', '2011-05-20', 1, NULL, '2011-04-26 14:08:33', '2011-06-13 15:05:11', 2, NULL, NULL);
INSERT INTO `projects` VALUES(82, 37112, 'Standard Media', 'Home Draft Banners - Banner Updates', 'The dev task is going to be one concept in three total sizes: 160x600, 728x90, and 300x250. It''ll involve updating the existing ads below with new creative.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-22', 0, 1, 1, 1, 0, 0, 0, '2011-05-12', '2011-05-13', 1, NULL, '2011-04-27 16:19:21', '2011-05-16 15:52:14', 5, NULL, NULL);
INSERT INTO `projects` VALUES(83, 37251, 'Standard Media', 'Gulftown Animated Gifs', 'This task involves building 3 animated gifs. There is a single creative and three sizes: 300x250, 728x90, and 160x600.', 'https://razorfish.jira.com/browse/INTELSTANMMXI-51', 0, 1, 1, 1, 0, 0, 0, '2011-05-04', '2011-05-06', 1, NULL, '2011-04-27 18:59:12', '2011-05-11 11:18:50', 1, NULL, NULL);
INSERT INTO `projects` VALUES(84, 34270, 'Standard Media', '100% WinGen Standard Banners', 'The assignment is to create Flash banner templates (as we did for MSE) in the 3 key sizes:\r\n- Square, 300x250\r\n- Horizontal, 728x90\r\n- Vertical, 160x600\r\n\r\nThere are two variations of the unit. The alternate version has minor changes to copy content and a different CTA, but the animation and visual layout will be the same.', 'https://razorfish.jira.com/browse/WGE-5', 0, 1, 1, 1, 0, 0, 0, '2011-04-28', '2011-04-29', 1, NULL, '2011-04-28 11:49:24', '2011-05-11 11:28:34', 11, NULL, NULL);
INSERT INTO `projects` VALUES(85, 37753, 'Standard Media', 'Best Buy FY11 Gaming: NBA - Standard Media Units', 'This task involves developing a 2 standard banner ads.', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-1', 0, 0, 1, 1, 0, 0, 0, '2011-05-06', '2011-05-09', 1, NULL, '2011-04-28 12:08:05', '2011-05-11 12:06:09', 10, NULL, NULL);
INSERT INTO `projects` VALUES(88, 34225, 'Standard Media', 'Seattle Storm Banners', 'Itâ€™s a 700x100 version of the price predictor.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-31', 0, 1, 1, 1, 0, 0, 0, '2011-05-03', '2011-05-06', 1, NULL, '2011-05-03 16:27:58', '2011-05-11 11:25:58', 2, NULL, NULL);
INSERT INTO `projects` VALUES(87, 34894, 'Standard Media', 'MSN 5.5 Burst Mobile Standard Ads', 'Build 7 mobile standard ads similar to Q3 MSN banners.', 'https://razorfish.jira.com/browse/MSNSTDMMXI-60', 0, 1, 1, 1, 0, 0, 0, '2011-04-28', '2011-04-29', 3, NULL, '2011-04-28 16:40:28', '2011-05-18 19:13:30', 3, NULL, NULL);
INSERT INTO `projects` VALUES(89, 37201, 'Standard Media', 'Office Web Apps eCRM - Word Banners', 'This task involves developing a 6 standard ads for the Word creatives. There are 2 sizes and 3 creative concepts for Word.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-17', 0, 1, 1, 1, 0, 0, 0, '2011-05-06', '2011-05-14', 1, NULL, '2011-05-09 13:59:06', '2011-05-18 18:55:36', 11, NULL, NULL);
INSERT INTO `projects` VALUES(90, 37201, 'Standard Media', 'Office Web Apps eCRM - Powerpoint Banners', 'This task involves developing a 6 standard ads for the PowerPoint creatives. There are 2 sizes and 3 creative concepts for PowerPoint.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-18', 0, 1, 1, 1, 0, 0, 0, '2011-05-06', '2011-05-14', 1, NULL, '2011-05-09 13:59:31', '2011-05-18 18:55:47', 11, NULL, NULL);
INSERT INTO `projects` VALUES(91, 37201, 'Standard Media', 'Office Web Apps eCRM - OneNote Banners', 'This task involves developing a 6 standard ads for the Excel creatives. There are 2 sizes and 3 creative concepts for the Excel.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-19', 0, 1, 1, 1, 0, 0, 0, '2011-05-06', '2011-05-14', 1, NULL, '2011-05-09 13:59:54', '2011-05-18 18:56:03', 11, NULL, NULL);
INSERT INTO `projects` VALUES(92, 34226, 'Standard Media', 'Bing Social Standard Banners', 'This task involves developing 15 standard media ads.\r\n\r\nThree banner concepts resized to the following - they will need to be built for atlas and coded for both on and off net usage\r\n\r\n300x250\r\n160x600\r\n180x150\r\n234x60\r\n728x90', 'https://razorfish.jira.com/browse/BINGSTANMMXI-32', 0, 1, 1, 1, 0, 0, 0, '2011-05-18', '2011-05-31', 3, NULL, '2011-05-11 16:33:18', '2011-06-13 15:07:25', 2, NULL, NULL);
INSERT INTO `projects` VALUES(93, 37904, 'Standard Media', 'TNZ June13 JV Banners', 'This task involves developing 3 standard Flash ads. ', 'https://razorfish.jira.com/browse/TNZSTDMMXI-16', 0, 1, 1, 1, 0, 0, 0, '2011-06-14', '2011-06-21', 1, NULL, '2011-05-12 13:02:59', '2011-08-10 12:13:18', 7, NULL, NULL);
INSERT INTO `projects` VALUES(94, 37112, 'Standard Media', 'Home Draft Banners - Banner Updates - Rev 2', 'The dev task is going to be one concept in three total sizes: 160x600, 728x90, and 300x250. It''ll involve updating the existing ads below with new creative.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-25', 0, 1, 1, 1, 0, 0, 0, '2011-05-16', '2011-05-17', 1, NULL, '2011-05-16 15:51:18', '2011-05-18 19:16:25', 5, NULL, NULL);
INSERT INTO `projects` VALUES(95, 34894, 'Rich Media', 'MSN Q4 High Impact - 6.3 Burst', '', 'https://razorfish.jira.com/browse/MSNRICHMMXI-53', 0, 0, 1, 1, 0, 0, 0, '2011-04-04', '2011-04-23', 1, NULL, '2011-05-18 03:19:43', '2011-07-20 15:40:26', 3, NULL, NULL);
INSERT INTO `projects` VALUES(96, 37112, 'Standard Media', 'Home Draft Banners - Banner Updates', 'The dev task is going to be one concept in three total sizes: 160x600, 728x90, and 300x250. It''ll involve updating the existing ads below with new creative.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-22', 0, 1, 1, 1, 0, 0, 0, '2011-05-23', '2011-06-08', 1, NULL, '2011-05-18 19:14:55', '2011-07-05 12:08:54', 5, NULL, NULL);
INSERT INTO `projects` VALUES(97, 37201, 'Standard Media', 'Office Web Apps eCRM - Copy updates', 'This task involves updating the existing files below and removing the word ''the'' everytime it appears before ''Web App''.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-39', 0, 1, 1, 1, 0, 0, 0, '2011-05-18', '2011-05-20', 1, NULL, '2011-05-19 00:32:53', '2011-06-22 15:47:39', 11, NULL, NULL);
INSERT INTO `projects` VALUES(98, 34226, 'Standard Media', 'XBox All Nighters', 'The task involves creating 5 simple standard 300x250 banners for Bing/XBox.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-35', 0, 1, 0, 1, 0, 0, 0, '2011-05-20', '2011-05-25', 3, NULL, '2011-05-24 11:31:20', '2011-05-25 14:03:14', 2, NULL, NULL);
INSERT INTO `projects` VALUES(100, 37112, 'Standard Media', 'Ice Cube Support', 'This task involves development of 6 total banners - (2) 300x250 prototypes, (4) resizes at 728x90 & 160x600.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-27', 0, 0, 1, 1, 0, 0, 0, '2011-05-26', '2011-06-01', 3, NULL, '2011-05-26 17:22:30', '2011-06-13 13:13:20', 5, NULL, NULL);
INSERT INTO `projects` VALUES(101, 37925, 'Standard Media', 'FY12 Gaming - NCAA Football Standard Banners - Prototype', '', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-4', 0, 0, 1, 1, 0, 0, 0, '2011-05-31', '2011-06-14', 3, NULL, '2011-05-31 17:52:52', '2011-06-16 17:47:16', 10, NULL, NULL);
INSERT INTO `projects` VALUES(102, 36057, 'Rich Media', 'HAL Recurring XML Updates (HALRICHMMXI-24) : Update the Florida Ads', 'This task involves updating the offers at the end of the banner. ', 'https://razorfish.jira.com/browse/HALRICHMMXI-26', 0, 0, 1, 1, 0, 0, 0, '2011-06-02', '2011-06-03', 4, NULL, '2011-06-02 17:14:58', '2011-06-09 18:27:23', 6, NULL, NULL);
INSERT INTO `projects` VALUES(103, 37507, 'Other', 'Experian Widgets: Round 1 Development', 'This task involves developing a set of 5 widgets. The widgets should be built with a combination of Javascript and HTML. More details to come.', 'https://razorfish.jira.com/browse/EXPW-1', 0, 1, 1, 1, 0, 0, 0, '2011-06-03', '2011-07-03', 1, NULL, '2011-06-03 12:30:10', '2011-08-16 17:05:03', 13, NULL, NULL);
INSERT INTO `projects` VALUES(104, 36057, 'Other', 'Holland America FY11: Standard Media (HALSTANMMXI-1) - Preview Site Tab Updates', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-3', 0, 0, 1, 1, 0, 0, 0, '2011-06-07', '2011-06-08', 1, NULL, '2011-06-03 12:36:58', '2011-06-09 17:15:31', 6, NULL, NULL);
INSERT INTO `projects` VALUES(99, 34894, 'Standard Media', 'MSN â€“ Mobile Standard Ads', 'Develop prototype and resizes for MSN14 creative.', 'https://razorfish.jira.com/browse/MSNSTDMMXI-62', 0, 0, 1, 1, 0, 0, 0, '2011-05-25', '2011-06-09', 3, NULL, '2011-05-25 13:35:28', '2011-06-13 13:16:18', 3, NULL, NULL);
INSERT INTO `projects` VALUES(105, 36057, 'Standard Media', 'Convert existing HAL Florida ads to use XML', 'modifying three existing banners with HAL brand standards and new offers on the end frame. End frame offers must be XML fed.', 'https://razorfish.jira.com/browse/HALRICHMMXI-27', 0, 0, 1, 1, 0, 0, 0, '2011-06-03', '2011-06-09', 3, NULL, '2011-06-03 16:47:20', '2011-06-09 18:28:24', 6, NULL, NULL);
INSERT INTO `projects` VALUES(106, 38109, 'Rich Media', 'BBY HE: Home Energy', '', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-6', 0, 0, 1, 1, 0, 0, 0, '2011-06-06', '2011-06-30', 1, NULL, '2011-06-06 12:34:53', '2011-08-10 12:13:00', 10, NULL, NULL);
INSERT INTO `projects` VALUES(107, 34894, 'Standard Media', 'MSN Q4 - Update standard banners with ''entertainment'' focus', 'This task involves updating the current creative to include messaging/focus on MSN entertainment channels.\r\n\r\nThe creative team was kicked off today, 6/6, and will deliver .psd''s on 6/17. Schedule is attached: "MSN Q4 Std banner update sked 6.2.11"\r\n\r\nThe sizes are as follows:\r\n\r\n300x250 - 40K\r\n728x90 - 40K\r\n160x600 - 40K\r\n\r\n300x125 - 40K\r\n120x240 - 30K\r\n180x150 - 35K\r\n234x60 - 35K', 'https://razorfish.jira.com/browse/MSNSTDMMXI-65', 0, 0, 1, 1, 0, 0, 0, '2011-06-16', '2011-06-20', 1, NULL, '2011-06-06 15:51:39', '2011-07-05 11:08:56', 3, NULL, NULL);
INSERT INTO `projects` VALUES(108, 34894, 'Standard Media', 'MSN Q4 MSN 14 - Develop Default Homepage Ads - Create Resizes', '', 'https://razorfish.jira.com/browse/MSNSTDMMXI-63', 0, 1, 1, 1, 0, 0, 0, '2011-06-01', '2011-06-06', 1, NULL, '2011-06-06 17:37:56', '2011-06-22 15:46:14', 3, NULL, NULL);
INSERT INTO `projects` VALUES(109, 38168, 'Standard Media', 'Best Buy FY11 Gaming: Trade In - 30% offer', 'Updating 4 standard ads with new copy with a new 30% off offer.', 'https://razorfish.jira.com/browse/BBSM-33', 0, 1, 1, 1, 0, 0, 0, '2011-06-07', '2011-06-08', 3, NULL, '2011-06-07 14:56:54', '2011-06-30 15:39:20', 10, NULL, NULL);
INSERT INTO `projects` VALUES(110, 37925, 'Standard Media', 'Best Buy FY12 Gaming - NCAA Football - Standard Banners (BBFYXIIGAMING-4) Resizes', 'Resizing standard media banners for Best Buy NCAA football ads', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-7', 0, 1, 1, 1, 0, 0, 0, '2011-06-08', '2011-06-13', 1, NULL, '2011-06-08 16:45:37', '2011-06-30 15:34:48', 10, NULL, NULL);
INSERT INTO `projects` VALUES(111, 38057, 'Standard Media', 'HAL FY11: Standard Media - Facebook Banner Ads', 'Create banner ads for Holland America that will drive users to Holland America''s facebook page.', 'https://razorfish.jira.com/browse/HALSTANMMXI-4', 0, 1, 1, 1, 0, 0, 0, '2011-06-10', '2011-06-15', 3, NULL, '2011-06-10 16:07:27', '2011-06-30 15:41:48', 6, NULL, NULL);
INSERT INTO `projects` VALUES(112, 37201, 'Standard Media', 'Office Web Apps eCRM - Image FPO updates', 'The task involves updating the Word banners with new screenshots to replace the FPO placeholder images.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-40', 0, 0, 1, 1, 0, 0, 0, '2011-06-16', '2011-06-22', 3, NULL, '2011-06-22 15:45:02', '2011-06-22 15:46:56', 11, NULL, NULL);
INSERT INTO `projects` VALUES(113, 37351, 'Standard Media', 'Tempur Pedic Standard Media - ASK ME Lead Gen Banners', '', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-2', 0, 1, 1, 1, 0, 0, 0, '2011-07-04', '2011-07-18', 1, NULL, '2011-06-23 11:22:06', '2011-08-16 13:40:45', 14, NULL, NULL);
INSERT INTO `projects` VALUES(114, 38209, 'Standard Media', 'BBYFY11-38209 - ATT/HTC Facebook Phone - Standard Banners', 'Creating three(3) banners promoting AT&T''s facebook button phone available at Bust Buy.', 'https://razorfish.jira.com/browse/BBSM-34', 0, 1, 1, 1, 0, 0, 0, '2011-06-23', '2011-07-08', 1, NULL, '2011-06-23 16:34:49', '2011-11-15 14:13:07', 10, NULL, NULL);
INSERT INTO `projects` VALUES(115, 38178, 'Standard Media', 'BBYFY11 - 38178 - Digital Circular - Standard Banners', 'Three sets Best Buy Digital circular banners, some with dynamic content by Tericent.  Plus 3 weekly updates', 'https://razorfish.jira.com/browse/BBSM-37', 0, 1, 1, 1, 0, 0, 0, '2011-06-28', '2011-08-01', 2, NULL, '2011-06-28 14:02:36', '2011-08-31 13:15:55', 10, NULL, NULL);
INSERT INTO `projects` VALUES(116, 39018, 'Rich Media', 'Tempur Pedic Rich Media - ASK ME Lead Gen Banners', 'Tempur Pedic 2011 rich media banner ad project. This task is going to be a set of standard Atlas served banners.', 'https://razorfish.jira.com/browse/TEMPURPEDICRICHMMXI-2', 0, 0, 1, 1, 0, 0, 0, '2011-07-04', '2011-09-06', 1, NULL, '2011-07-05 11:10:36', '2011-09-13 17:36:54', 14, NULL, NULL);
INSERT INTO `projects` VALUES(122, 38413, 'Both', 'MSN38413_FY12_Retainer: Rich Media (MSNRICHMMXII-1): Develop MSN High Impact Ads', 'This task involves repurposing three Pointroll-served rich media units. Each unit has been broken out into a single subtask below.', 'https://razorfish.jira.com/browse/MSNRICHMMXII-1', 0, 1, 1, 1, 0, 0, 0, '2011-07-13', '2011-07-21', 3, NULL, '2011-07-07 14:01:05', '2011-08-08 17:53:31', 3, NULL, NULL);
INSERT INTO `projects` VALUES(117, 37961, 'Standard Media', 'MC-CL-2011_NightRules_Idea_NB-37961 - Standard Media Ads', 'There will be 3 sets of standards â€“ but all are creatively the same â€“ just different headlines. ', 'https://razorfish.jira.com/browse/MCNIGHTRULES-1', 0, 1, 1, 1, 0, 0, 0, '2011-07-14', '2011-07-24', 1, NULL, '2011-07-05 12:11:23', '2011-08-02 15:53:04', 5, NULL, NULL);
INSERT INTO `projects` VALUES(118, 38296, 'Standard Media', 'BBY-FY12Gaming - 38296: Gears of War 3', 'Develop set of 3 banners for Best Buy release of Gears of War 3.', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-11', 0, 1, 1, 1, 0, 1, 100, '2011-07-21', '2011-08-12', 3, NULL, '2011-07-05 12:15:16', '2011-10-11 11:37:44', 10, NULL, NULL);
INSERT INTO `projects` VALUES(119, 36057, 'Standard Media', 'HAL Static xml banners', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-6', 0, 1, 1, 1, 0, 0, 0, '2011-07-05', '2011-07-07', 3, NULL, '2011-07-05 12:37:23', '2011-07-26 12:40:32', 6, NULL, NULL);
INSERT INTO `projects` VALUES(120, 38297, 'Standard Media', 'BBY-FY12Gaming - 38297: Madden 12', 'Develop set of 3 banners for Best Buy release of Madden 12. ', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-14', 0, 1, 1, 1, 0, 0, 0, '2011-07-05', '2011-08-25', 1, NULL, '2011-07-05 12:53:28', '2011-08-31 13:17:28', 10, NULL, NULL);
INSERT INTO `projects` VALUES(121, 36495, 'Standard Media', 'Coors Light: Dream Game Sweepstakes', 'This task involves developing a set of standard media ads. One (1) version with three (3) sizes.\r\nTotal deliverables = 3 ads plus Static JPG''s', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-30', 0, 1, 1, 1, 0, 0, 0, '2011-07-05', '2011-07-15', 1, NULL, '2011-07-05 15:04:40', '2011-08-02 15:52:32', 5, NULL, NULL);
INSERT INTO `projects` VALUES(123, 36057, '', 'HAL- 36057 - Dutch Banner fully editable XML', 'Update Current HAL Dutch banners which have xml update-able price so that all end frame copy can be modified through the .xml', 'https://razorfish.jira.com/browse/HALSTANMMXI-9', 0, 0, 1, 1, 0, 0, 0, '2011-07-11', '2011-07-13', 1, NULL, '2011-07-11 13:20:39', '2011-08-10 12:13:54', 6, NULL, NULL);
INSERT INTO `projects` VALUES(124, 38456, 'Standard Media', 'Bing Sweepstakes Banners', 'We have a banner project coming up for Bing and surprise, itâ€™s a fast turn.  Due the week of the 25th.  We are waiting for a few more details from the client, but are planning on kicking it off tomorrow.  There will be anywhere from 3 to 7 resizes. \r\n\r\nBing Rewards URL:  http://www.bing.com/rewards/signup/web?publ=BING&crea=ME', 'https://razorfish.jira.com/browse/BINGSTANMMXI-43', 0, 1, 1, 1, 0, 0, 0, '2011-08-04', '2011-08-12', 3, NULL, '2011-07-13 12:43:39', '2011-09-13 17:14:51', 2, NULL, NULL);
INSERT INTO `projects` VALUES(125, 36057, 'Standard Media', 'HAL - AU-NZ xml banners', 'Create one banner for Holland America promoting Australia New Zealand cruses in 3 sizes. End frame of the banners needs to be fully editable through .xml', 'https://razorfish.jira.com/browse/HALSTANMMXI-10', 0, 0, 1, 1, 0, 0, 0, '2011-07-20', '2011-07-25', 1, NULL, '2011-07-20 12:24:18', '2011-08-10 12:13:38', 6, NULL, NULL);
INSERT INTO `projects` VALUES(126, 36519, 'Rich Media', 'MC_KEY_36519_2011_Pub_Media_Supp_NB: August Video Banner Refresh', '', 'https://razorfish.jira.com/browse/MCKEYWEBMAINT-10', 0, 0, 1, 1, 0, 0, 0, '2011-07-25', '2011-07-27', 1, NULL, '2011-07-25 16:38:00', '2011-08-02 15:54:29', 12, NULL, NULL);
INSERT INTO `projects` VALUES(127, 38455, 'Standard Media', 'MICRO38455 - Bing - Seahawks Banner Animation', 'This task involves developing a sample animation to hand off to the Seahawk video developers. The final .AVI file will be developed by the Seahawks people, but a sample animation showing transitions and timing would be helpful.', 'https://razorfish.jira.com/browse/BINGRICHMMXI-19', 0, 0, 1, 1, 0, 0, 0, '2011-07-26', '2011-07-26', 1, NULL, '2011-07-26 13:03:26', '2011-08-05 17:10:45', 2, NULL, NULL);
INSERT INTO `projects` VALUES(128, 36499, 'Standard Media', '36499 Coors Light Video Pre-Roll - Update the End Frame', '', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-33', 0, 0, 1, 1, 0, 0, 0, '2011-07-26', '2011-07-28', 1, NULL, '2011-07-26 16:24:37', '2011-08-02 15:53:30', 5, NULL, NULL);
INSERT INTO `projects` VALUES(129, 38717, 'Standard Media', 'Reel Steel Standard Ads', 'This task involves developing two creative concepts. There will be one new concept and the other will be a refresh of existing banner creative. The five needed sizes are: 300x250, 160x600, 728x90, 234x60, and 160x600. These are standard Atlas banners that need to be On-Net compliant.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-39', 0, 1, 1, 1, 0, 0, 0, '2011-08-04', '2011-09-15', 3, NULL, '2011-07-29 12:23:44', '2011-09-22 13:45:42', 2, NULL, NULL);
INSERT INTO `projects` VALUES(130, 36495, 'Standard Media', 'Coors Light: Dream Game Sweepstakes - Round 2', 'This task involves developing a set of standard media ads. One (1) version with three (3) sizes.\r\nTotal deliverables = 3 ads plus Static JPG''s', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-30', 0, 1, 1, 1, 0, 0, 0, '2011-08-05', '2011-08-10', 1, NULL, '2011-08-02 15:52:06', '2011-08-17 15:31:06', 5, NULL, NULL);
INSERT INTO `projects` VALUES(131, 37351, 'Standard Media', 'Tempur Pedic Standard Media - ASK ME Lead Gen Banners - Round 2 Different CTA - All Sizes', '', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-7', 0, 1, 1, 1, 0, 0, 0, '2011-08-02', '2011-08-18', 1, NULL, '2011-08-02 19:07:29', '2011-08-17 15:29:56', 14, NULL, NULL);
INSERT INTO `projects` VALUES(132, 38867, 'Other', 'HAL HTML Email', 'This task involves building out an email at four sizes in HTML.', 'https://razorfish.jira.com/browse/HALSTANMMXI-11', 0, 1, 1, 1, 0, 0, 0, '2011-08-08', '2011-08-26', 2, NULL, '2011-08-03 18:08:53', '2011-09-22 13:45:54', 6, NULL, NULL);
INSERT INTO `projects` VALUES(133, 38456, 'Standard Media', 'MICR38456 - Bing - Seahawks.com Banner Alternate Sizes', 'This task involves creating additional sizes for the Seahawks.com ad placements. Start from the source files for each creative. These are attached below. The creatives that need to be updated are mobile deals, price predictor and social login. And the new sizes needed are 300x100 and 160x150 40k. More details and assets are below.\r\n', 'https://razorfish.jira.com/browse/BINGRICHMMXI-20', 0, 1, 1, 1, 0, 0, 0, '2011-08-08', '2011-08-11', 3, NULL, '2011-08-05 17:10:05', '2011-08-17 15:28:35', 2, NULL, NULL);
INSERT INTO `projects` VALUES(134, 38178, 'Rich Media', 'BBYFY11 - 38178 - Digital Circular - Standard Banners (BBSM-37) - Convert Teracent Ads to Atlas & Add Data', '', 'https://razorfish.jira.com/browse/BBSM-54', 0, 1, 1, 1, 0, 0, 0, '2011-08-08', '2011-08-11', 4, NULL, '2011-08-08 12:52:18', '2011-08-17 15:27:25', 10, NULL, NULL);
INSERT INTO `projects` VALUES(135, 38531, 'Other', 'BBY-FY12Gaming - 38531: Just Dance 3', 'Develop a set of banners for Best Buy release of Just Dance 3. ', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-19', 0, 1, 1, 1, 0, 0, 100, '2011-08-18', '2011-08-11', 1, NULL, '2011-08-09 15:05:52', '2011-10-11 11:38:11', 10, NULL, NULL);
INSERT INTO `projects` VALUES(136, 39034, 'Other', 'BBY-FY12Gaming - 38531: Batman: Arkham City', 'Develop a set of banners for Best Buy release of Batman: Arkham City.', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-20', 0, 1, 1, 1, 0, 0, 100, '2011-08-18', '2011-08-29', 2, NULL, '2011-08-09 15:05:54', '2011-10-11 11:39:04', 10, NULL, NULL);
INSERT INTO `projects` VALUES(146, 36165, 'Standard Media', 'Banner K weight test ', '', 'https://razorfish.jira.com/browse/TNZSTDMMXI-21', 0, 1, 1, 1, 0, 0, 0, '2011-08-17', '2011-08-18', 1, NULL, '2011-08-17 20:12:19', '2011-09-21 13:06:24', 7, NULL, NULL);
INSERT INTO `projects` VALUES(138, 38456, 'Standard Media', 'Bing MTV VMA Banners', 'This task developing a single animated standard media ad. The PSD below contains both the animated 300x250 and the static 728x90. The dimensions and specs for the final deliverable are located below.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-46', 0, 1, 1, 1, 0, 0, 0, '2011-08-10', '2011-08-19', 1, NULL, '2011-08-10 16:06:35', '2011-09-13 17:50:31', 2, NULL, NULL);
INSERT INTO `projects` VALUES(139, 38717, 'Rich Media', 'Bing High Impact Summer a.k.a Reel Steel Ads', 'This task involves producing one unit in two different sizes. The unit will have four product demo SWFs (much like Social and Holiday) and it will have 8 hot spot call outs. The 7 second upfront will include video.', 'https://razorfish.jira.com/browse/BINGADSMMXII-1', 0, 1, 1, 1, 0, 0, 0, '2011-08-11', '2011-09-10', 2, NULL, '2011-08-11 12:57:52', '2011-09-22 13:54:35', 2, NULL, NULL);
INSERT INTO `projects` VALUES(140, 38867, 'Rich Media', 'UK_Europe_Retail Standard End Frame Update', '', 'https://razorfish.jira.com/browse/HALRICHMMXI-34', 0, 1, 1, 1, 0, 0, 0, '2011-08-16', '2011-08-22', 4, NULL, '2011-08-16 15:03:39', '2011-08-25 15:31:21', 6, NULL, NULL);
INSERT INTO `projects` VALUES(141, 38867, 'Rich Media', 'NL_Europe_Retail Standards - End Frame Replacement', '', 'https://razorfish.jira.com/browse/HALRICHMMXI-33', 0, 1, 1, 1, 0, 0, 0, '2011-08-16', '2011-08-22', 4, NULL, '2011-08-16 15:04:53', '2011-08-25 15:31:13', 6, NULL, NULL);
INSERT INTO `projects` VALUES(142, 38867, 'Rich Media', 'NL_PR_EU_COMPANION BANNER END FRAME 300x250', '', 'https://razorfish.jira.com/browse/HALRICHMMXI-32', 0, 1, 1, 1, 0, 0, 0, '2011-08-16', '2011-08-16', 4, NULL, '2011-08-16 15:05:53', '2011-08-25 15:31:05', 6, NULL, NULL);
INSERT INTO `projects` VALUES(143, 38867, 'Rich Media', '1 300x250 US_Europe_pre-roll_companion End Frame Update', '', 'https://razorfish.jira.com/browse/HALRICHMMXI-31', 0, 1, 1, 1, 0, 0, 0, '2011-08-16', '2011-08-22', 4, NULL, '2011-08-16 15:06:56', '2011-08-25 15:30:58', 6, NULL, NULL);
INSERT INTO `projects` VALUES(144, 36497, 'Standard Media', 'Home Draft Banners', 'This task involves developing four standard media ads.', 'https://razorfish.jira.com/browse/MCFOOTBALLAD-1', 0, 1, 1, 1, 0, 0, 0, '2011-08-16', '2011-08-25', 1, NULL, '2011-08-16 17:02:07', '2011-09-13 17:13:15', 5, NULL, NULL);
INSERT INTO `projects` VALUES(145, 36497, 'Standard Media', 'Pick ''Em Banners', 'This task involves developing four standard media ads and two expanding rich media ads.', 'https://razorfish.jira.com/browse/MCFOOTBALLAD-4', 0, 1, 1, 1, 0, 0, 0, '2011-08-16', '2011-09-18', 1, NULL, '2011-08-16 17:03:42', '2011-09-22 13:46:40', 5, NULL, NULL);
INSERT INTO `projects` VALUES(147, 38296, 'Rich Media', 'BBY-FY12Gaming: Gears of War 3 - Flash Demo for Publishers', '', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-21', 0, 1, 1, 1, 0, 0, 0, '2011-08-18', '2011-08-18', 4, NULL, '2011-08-18 00:07:13', '2011-08-31 13:12:10', 10, NULL, NULL);
INSERT INTO `projects` VALUES(148, 38296, 'Standard Media', 'BBY-FY12Gaming - 38296: Gears of War 3 (BBFYXIIGAMING-11) PRE-ORDER Banners', '', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-22', 0, 1, 1, 1, 0, 0, 0, '2011-08-18', '2011-08-18', 4, NULL, '2011-08-18 00:08:24', '2011-08-31 13:13:53', 10, NULL, NULL);
INSERT INTO `projects` VALUES(149, 38802, 'Both', 'Disney Universe Ad Banners', 'This project is in the scoping phase.', '', 0, 0, 0, 1, 0, 0, 0, '2011-08-22', '2011-08-22', 1, NULL, '2011-08-22 14:08:11', '2011-09-29 17:04:54', 9, NULL, NULL);
INSERT INTO `projects` VALUES(150, 36519, 'Rich Media', 'MC_KEY_36519_2011_Pub_Media_Supp_NB: September Video Banner Refresh', '', 'https://razorfish.jira.com/browse/MCKEYWEBMAINT-12', 0, 0, 1, 1, 0, 0, 0, '2011-08-24', '2011-09-01', 1, NULL, '2011-08-24 16:10:33', '2011-09-13 15:04:34', 12, NULL, NULL);
INSERT INTO `projects` VALUES(151, NULL, 'Standard Media', 'HAL_International End Frame Updates: Currency/Alignment Updates All Creatives & Sizes', '', 'https://razorfish.jira.com/browse/HALRICHMMXI-29', 0, 1, 1, 1, 0, 0, 0, '2011-08-25', '2011-08-26', 1, NULL, '2011-08-25 15:35:22', '2011-08-31 13:25:02', 6, NULL, NULL);
INSERT INTO `projects` VALUES(152, 38799, 'Standard Media', 'MSFT_OfcApp_WebApps_Intro_NB (38799) ', 'This is a duplicate of http://pmt.razorfishcreative.com/projects/view/156', '', 0, 1, 0, 1, 0, 0, 0, '2011-09-01', '2011-08-30', 1, NULL, '2011-08-30 11:51:23', '2011-09-13 17:48:09', 11, NULL, NULL);
INSERT INTO `projects` VALUES(153, 38993, 'Standard Media', 'MSFT-Bing-CR-Bing-Vibrant-FY12 (38993)', 'We actually weren''t needed for this.', '', 0, 1, 0, 1, 0, 0, 0, '2011-09-01', '2011-08-30', 1, NULL, '2011-08-30 11:52:03', '2011-08-31 13:20:18', 2, NULL, NULL);
INSERT INTO `projects` VALUES(154, 38587, 'Standard Media', 'Bing Together: Animated Demos', '', 'https://razorfish.jira.com/browse/BINGADSMMXII-7', 0, 0, 1, 1, 0, 0, 0, '2011-08-30', '2011-09-20', 1, NULL, '2011-08-30 16:43:32', '2011-10-04 13:44:52', 2, NULL, NULL);
INSERT INTO `projects` VALUES(155, 37584, '', 'TNZ You''ll Never Forget Banners', 'This task involves developing a set of standard ads that include three sizes.', 'https://razorfish.jira.com/browse/TNZFLASH-1', 0, 1, 1, 1, 0, 0, 0, '2011-08-29', '2011-09-13', 2, NULL, '2011-08-31 13:19:54', '2011-09-15 17:28:27', 7, NULL, NULL);
INSERT INTO `projects` VALUES(156, 38799, 'Standard Media', 'Microsoft Office Web Apps: Intro Campaign', 'This task involves developing possibly seven Flash standard media ads for four difference creatives. ', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-47', 20, 1, 1, 1, 0, 1, 100, '2011-09-14', '2011-10-20', 1, 'Waiting on final approvals.', '2011-09-01 18:24:10', '2011-11-03 14:11:50', 11, NULL, NULL);
INSERT INTO `projects` VALUES(157, 38991, 'Standard Media', 'Microsoft Office Web Apps: One Note Intro Campaign', 'Online banners ads: One (1) creative concept with three (3) executions produced in four (4) standard Flash sizes per execution and a fourth size that will be static. All standard Flash banners (15 sec max animation) will include a static back up, which will utilize content from the Flash version. Twelve (12) total standard Flash banners and three (3) total static banner ads will be delivered.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-48', 12, 1, 1, 1, 0, 1, 100, '2011-09-06', '2011-10-08', 1, 'Waiting on final approvals.', '2011-09-01 18:25:06', '2011-10-27 13:59:21', 11, NULL, NULL);
INSERT INTO `projects` VALUES(158, 36497, 'Standard Media', 'Coaches Tailgating', 'This task involves developing four standard media ads and a single rich media expanding ad.', 'https://razorfish.jira.com/browse/MCFOOTBALLAD-9', 0, 1, 1, 1, 0, 0, 0, '2011-09-01', '2011-09-13', 1, NULL, '2011-09-01 21:53:56', '2011-09-22 13:47:07', 5, NULL, NULL);
INSERT INTO `projects` VALUES(159, 38455, 'Standard Media', 'Bing CW Roadblock Ad', 'This task involves developing a single 160x600 standard Flash ad that will run on http://www.cwtv.com/.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-48', 0, 1, 1, 1, 0, 0, 0, '2011-09-06', '2011-09-09', 1, NULL, '2011-09-06 13:05:36', '2011-09-22 13:57:46', 2, NULL, NULL);
INSERT INTO `projects` VALUES(160, 39059, 'Standard Media', 'HAL NL and UK Norway and South Pacific Banners', 'This task involves developing twelve international Flash standard banners for the UK and NL markets; Norway and South Pacific. There are two different creatives(locations) that need to be built at the three dimensions below.', 'https://razorfish.jira.com/browse/HALSTANMMXI-16', 0, 0, 1, 1, 0, 0, 0, '2011-09-13', '2011-09-21', 1, NULL, '2011-09-06 14:43:44', '2011-09-29 17:04:38', 6, NULL, NULL);
INSERT INTO `projects` VALUES(161, 38867, 'Rich Media', 'HAL NL, UK and US Europe Standard Banners - Content/Image Updates', 'Update Europe limited time banner with new content and imagery as the "limited-time sale" message no longer applies because HAL is exclusively selling 2012 Europe cruises now. There are three sizes and three location creatives that need updating. A total of nine Flash ads need to be updated.', 'https://razorfish.jira.com/browse/HALSTANMMXI-14', 0, 0, 1, 1, 0, 0, 0, '2011-09-07', '2011-09-08', 1, NULL, '2011-09-07 16:39:52', '2011-09-29 17:04:27', 6, NULL, NULL);
INSERT INTO `projects` VALUES(162, 38898, 'Standard Media', 'BBY-Holiday_Digital-Insert-Campaign ', '5 variations in 5 sizes delivered in 3 waves.   \r\n', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-1', 25, 1, 1, 1, 0, 0, 100, '2011-09-12', '2011-11-28', 3, '', '2011-09-12 15:24:38', '2011-11-20 18:25:13', 10, NULL, NULL);
INSERT INTO `projects` VALUES(163, 38900, 'Standard Media', 'BBY-Holiday_Shop-Early-Save-Big ', '9 banners sizes, with 2 copy variations, and 3 weekly revs, for Best Buy''s Holiday "Shop Early Save Big" campaign.\r\nAnd 1 rich media pushdown - 2 files (open & closed) 2 copy variations for 4 deliverables with 3 weekly revs.', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-2', 66, 1, 1, 1, 0, 0, 100, '2011-09-12', '2011-11-20', 3, '', '2011-09-12 15:42:05', '2011-11-20 16:40:51', 10, NULL, NULL);
INSERT INTO `projects` VALUES(164, 39369, 'Standard Media', 'BBY-Holiday_MDF- GPS', '3 Sets of banners in 5 sizes each for Best Buy''s Holiday MDF GPS branding campaign. Will be used as template for MDF-SPT', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-74', 15, 1, 1, 1, 0, 0, 100, '2011-09-12', '2011-11-18', 2, '', '2011-09-12 17:19:42', '2011-12-02 13:13:36', 10, NULL, NULL);
INSERT INTO `projects` VALUES(165, 38902, 'Standard Media', 'BBY-Holiday_MDF-Hispanic - CANCELED', 'CANCELED - 4 Sets of standard banners with separate creative executions for Best Buy''s Holiday MDF branding campaign with Hispanic targeted offers', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-4', 0, 1, 0, 1, 0, 0, 0, '2011-09-12', '2011-10-28', 2, NULL, '2011-09-12 17:25:54', '2011-09-19 17:17:59', 10, NULL, NULL);
INSERT INTO `projects` VALUES(166, 39087, 'Standard Media', 'Hawaiian Airlines Standard XML Ads', 'This task involves developing a four XML-driven standard media ads. There will be one version with generic end-frame copy and another version with price points that will need to be built in XML and be fully editable. There will be 10 different versions of the XML end frame. Each version has one offer (From Portland to Hawaii, Seattle to Hawaii, etc.).', 'https://razorfish.jira.com/browse/HAAC-1', 40, 1, 1, 1, 0, 1, 100, '2011-09-26', '2011-10-18', 1, 'This is getting final approvals.', '2011-09-13 15:02:37', '2011-12-05 15:59:41', 15, NULL, NULL);
INSERT INTO `projects` VALUES(167, 36497, 'Standard Media', 'Hosting Standard Media Ads', 'This task involves developing four standard media ads and a single rich media expanding ad.', 'https://razorfish.jira.com/browse/MCFOOTBALLAD-18', 4, 1, 1, 1, 0, 0, 100, '2011-09-15', '2011-10-07', 1, '', '2011-09-14 11:18:57', '2011-10-19 13:12:53', 5, NULL, NULL);
INSERT INTO `projects` VALUES(168, 37584, 'Rich Media', 'TNZ Flashback: Rich Media Wine / Kayak Units', 'This project involves building 4 300x250 (wine & kayak / click & rollover) rich media units that expands to 500px wide and features a video gallery. Once the rich media unit is built it will need to be uploaded to the staging server at http://tnz.razorfishcreative.com/ for review.', 'https://razorfish.jira.com/browse/TNZFLASH-4', 4, 0, 1, 1, 0, 0, 100, '2011-09-14', '2011-09-28', 3, NULL, '2011-09-14 17:15:27', '2011-10-17 18:07:40', 7, NULL, NULL);
INSERT INTO `projects` VALUES(169, 36497, 'Standard Media', 'Miller Coors College Football Responsibility Ads ', 'This turned out to only be static jpgs.\r\n\r\nThis task involves updating an existing set of design comps with new copy and images and developing four standard media ads.', 'https://razorfish.jira.com/browse/MCFOOTBALLRS-1', 3, 1, 0, 1, 0, 0, 0, '2011-09-14', '2011-10-16', 1, NULL, '2011-09-14 18:11:21', '2011-10-06 18:26:29', 4, NULL, NULL);
INSERT INTO `projects` VALUES(170, 38485, 'Standard Media', 'MSN Dynamic Tumri Template - Weekly Updates', 'This task involves updating the existing template in the Tumri AdPodium platform with the latest designs/copy attached below.', 'https://razorfish.jira.com/browse/MSNSTDMMXII-4', 2, 1, 1, 1, 0, 1, 50, '2011-09-15', '2011-11-15', 1, 'This got canned because we dropped MSN.\r\n<br/>\r\nMartin has finished the first rev. We''re targeted to have a new template to show by 11/15.\r\n<br/>\r\nOther notes:<br/>\r\nThere is now a second template that includes two headlines. <br/> We need to have Kevin update the two-headline copy tomorrow (Oct 21st.). The details are in the task below. https://razorfish.jira.com/browse/MSNSTDMMXII-13.\r\n<br/><br/>\r\nThese will be weekly recurring updates and may involve the offshore team in the future. Not at this time though.', '2011-09-15 12:02:28', '2011-11-29 12:48:58', 3, NULL, NULL);
INSERT INTO `projects` VALUES(171, 37584, 'Other', 'TNZ Flashback: Companion Static Banners', 'This project involves building 2 300x60 and 2 300x250 companion banners to go along with the preroll units at TNZFLASH-5. This make a total of 4 units we need delivered.', 'https://razorfish.jira.com/browse/TNZFLASH-6', 0, 1, 1, 1, 0, 0, 0, '2011-09-15', '2011-09-21', 2, NULL, '2011-09-15 17:27:46', '2011-09-30 18:07:46', 7, NULL, NULL);
INSERT INTO `projects` VALUES(172, 37584, 'Other', 'TNZ Flashback: Preroll Video Banners', 'This project involves building three :15 second and three :30 second Preroll Video units at 480x360px for a total of 6 units.', 'https://razorfish.jira.com/browse/TNZFLASH-5', 0, 1, 1, 1, 0, 0, 0, '2011-09-15', '2011-09-21', 2, NULL, '2011-09-15 17:27:48', '2011-09-30 18:08:50', 7, NULL, NULL);
INSERT INTO `projects` VALUES(173, 39047, 'Standard Media', 'MillerCoors Happy Hour Program: Yelp Happy Hour Ads', 'This task involves developing eight standard media ads. There are two versions needed (Miller Coors and Coors Light) and four sizes for each version.', 'https://razorfish.jira.com/browse/MCCLMMXISTAN-36', 8, 1, 1, 1, 0, 0, 100, '2011-09-19', '2011-10-06', 1, NULL, '2011-09-19 17:42:09', '2011-10-13 20:48:52', 4, NULL, NULL);
INSERT INTO `projects` VALUES(176, 39018, 'Standard Media', 'Tempur Pedic  - Q4 Lead Gen Standard Banners', 'This task involves developing a total of 36 standard media ads.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-8', 36, 1, 1, 1, 0, 1, 100, '2011-09-20', '2011-10-15', 1, 'We had some border issues, but I think these have been solved. The border in the 728x90 had to be top aligned. It should have been 727x89 and at x:0,y:0. Followup with Hans is needed here. ', '2011-09-20 15:55:43', '2011-11-03 14:12:46', 14, NULL, NULL);
INSERT INTO `projects` VALUES(177, 39246, 'Standard Media', 'Norway NL Homeport', 'Create a new set of standard flash banners for the NL market. The set includes 3 sizes (300x250, 160x600, 728x90), each one must have a fully XML-fed end frame copy. Please start from the existing Netherlands source files attached below. The comps below contain the new assets that will need to be added to the files.', 'https://razorfish.jira.com/browse/HALSTANMMXI-25', 3, 0, 1, 1, 0, 0, 100, '2011-09-21', '2011-10-03', 1, NULL, '2011-09-21 12:20:48', '2011-10-13 20:41:17', 6, NULL, NULL);
INSERT INTO `projects` VALUES(175, 38456, 'Standard Media', 'Bing Engagement Banners', 'This task involves developing two different creative executions. One execution will contain two creatives and the other will have three. There will be five total dimensions for each execution.', 'https://razorfish.jira.com/browse/BINGSTANMMXI-51', 10, 1, 1, 1, 0, 1, 100, '2011-09-19', '2011-10-28', 1, 'Martin has knocked out all of the feedback. We''re waiting on final client approvals.', '2011-09-19 18:17:41', '2011-11-03 14:11:32', 2, NULL, NULL);
INSERT INTO `projects` VALUES(178, 38861, 'Standard Media', 'BBY Intel: Innovation for All Project', 'This project involves building a set of standard media units in various sizes and possibly a set of preroll banners.', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-5', 0, 1, 1, 1, 0, 0, 0, '2011-09-20', '2011-10-04', 3, NULL, '2011-09-21 13:13:22', '2011-10-17 18:06:43', 10, NULL, NULL);
INSERT INTO `projects` VALUES(179, 37584, 'Standard Media', 'Special Interest Hiking Standard Banners', 'This task involves developing a set of standard ads that include three sizes. These will look and feel exactly the same as the "You''ll Never Forget Banners" banners at TNZFLASH-3. The main difference is that these have 2 frames instead of 3.', 'https://razorfish.jira.com/browse/TNZSTDMMXI-24', 0, 1, 1, 1, 0, 0, 0, '2011-09-22', '2011-09-26', 3, NULL, '2011-09-22 17:12:00', '2011-09-30 18:12:25', 7, NULL, NULL);
INSERT INTO `projects` VALUES(180, 36497, 'Standard Media', 'Pick ''Em Banners - Set #2 (Mora)', 'This task involves developing four standard media ads and two expanding rich media ads.', 'https://razorfish.jira.com/browse/MCFOOTBALLAD-29', 0, 1, 1, 1, 0, 0, 0, '2011-09-22', '2011-09-30', 1, NULL, '2011-09-22 17:57:14', '2011-10-04 13:47:22', 4, NULL, NULL);
INSERT INTO `projects` VALUES(181, 38455, 'Standard Media', 'Xbox Fall Campaign - Forza Banner', 'This task involves developing a single standard media ad. This is a bit different from the usual set because it needs to be compiled for the Flash lite player. ', 'https://razorfish.jira.com/browse/BINGXII-4', 1, 1, 1, 1, 0, 1, 100, '2011-09-23', '2011-09-27', 1, '', '2011-09-23 16:30:48', '2011-10-19 13:45:56', 10, NULL, NULL);
INSERT INTO `projects` VALUES(182, 39246, 'Standard Media', 'HAL Netherlands Homeport - Duplicate', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-25', 0, 0, 1, 1, 0, 0, 0, '2011-09-29', '2011-09-30', 1, NULL, '2011-09-29 12:29:25', '2011-09-29 17:41:24', 6, NULL, NULL);
INSERT INTO `projects` VALUES(183, 38531, 'Standard Media', 'BBY-Gaming Assassin''s Creed', 'Standard Banners for Best Buy release of Assassin''s Creed', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-24', 3, 1, 1, 1, 0, 0, 100, '2011-09-29', '2011-09-29', 3, '', '2011-09-29 13:15:36', '2011-10-25 16:49:33', 10, NULL, NULL);
INSERT INTO `projects` VALUES(184, 37034, 'Standard Media', 'HAL 3 Day Sale promotion', 'This task involves creating a new 2-frame banner that leverages the same assets HAL is using for their DM campaign. This will involve creating one new "initial frame" that will be combined with already existing end frames (10 banners, 30 files.) The initial frame will mimic the previously developed 3-Day Sale banner design. Another part of the task involves converting the existing source files provided from XML-driven to hardcoded end frames.', 'https://razorfish.jira.com/browse/HALSTANMMXI-21', 30, 1, 1, 1, 0, 0, 100, '2011-09-29', '2011-10-10', 1, '', '2011-09-29 17:03:25', '2011-10-19 13:11:05', 6, NULL, NULL);
INSERT INTO `projects` VALUES(185, 39004, 'Standard Media', 'Outlook Integrated You', 'This tasks involves developing a set of standard media ads.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-66', 8, 1, 1, 1, 0, 1, 100, '2011-10-10', '2015-10-27', 4, 'These are in Lisa''s hands. There''s nothing else for us to do here other than some possible client changes.\r\n<br/>\r\nOther notes:\r\nThese were split into separate subtasks because the PSDs came in a staggered manner. This is not setup as desired. Marco is going to cover any last minute updates.', '2011-10-03 13:50:28', '2011-11-03 14:11:59', 11, NULL, NULL);
INSERT INTO `projects` VALUES(186, 39138, 'Standard Media', 'BBY-FY12Gaming - Call of Duty', 'Best Buy Call of Duty standard banners.  2 phases, pre-order and launch', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-33', 6, 1, 1, 1, 0, 0, 100, '2011-10-05', '2011-10-27', 3, '', '2011-10-03 18:32:57', '2011-11-13 14:45:55', 10, NULL, NULL);
INSERT INTO `projects` VALUES(187, 39097, 'Standard Media', 'Office 365', 'This tasks involves developing two sets of standard media ads. The two creative names are Simple Orange and White Clover.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-65', 6, 1, 1, 1, 0, 0, 100, '2011-10-07', '2011-10-20', 3, '', '2011-10-03 19:56:03', '2011-11-10 22:16:45', 11, NULL, NULL);
INSERT INTO `projects` VALUES(188, 37584, 'Standard Media', 'Tourism New Zealand FY11: Luxury', 'This task involves developing 3 standard media ads.', 'https://razorfish.jira.com/browse/TNZSTDMMXI-25', 3, 1, 1, 1, 0, 0, 100, '2011-10-04', '2011-10-06', 2, '', '2011-10-04 15:51:33', '2011-10-19 13:58:09', 7, NULL, NULL);
INSERT INTO `projects` VALUES(189, 38455, 'Standard Media', 'Develop Banner for Kinnect2 Sports', 'This task involves developing a single standard media ad. This is a bit different from the usual set because it needs to be compiled for the Flash lite player. More details specifications are below.', 'https://razorfish.jira.com/browse/BINGXII-7', 1, 1, 1, 1, 0, 0, 100, '2011-10-04', '2011-10-06', 1, '', '2011-10-04 15:54:22', '2011-10-19 13:59:46', 2, NULL, NULL);
INSERT INTO `projects` VALUES(190, 36497, 'Standard Media', 'Store Standard Media Ads (coach Green)', 'This task involves developing four standard media ads for Store (coach Green).', 'https://razorfish.jira.com/browse/MCFOOTBALLAD-39', 4, 1, 1, 1, 0, 1, 100, '2011-10-04', '2011-10-19', 1, 'This is probably going to need some attention tomorrow (Oct 21st). Have Marco knock out any updates.\r\n<br/>\r\nThese were a pain because of all of the images in the ad. We ended up cutting one image of the coach in order to hit the desired k-weight.', '2011-10-04 16:01:41', '2011-11-03 14:11:00', 4, NULL, NULL);
INSERT INTO `projects` VALUES(191, 36497, 'Standard Media', 'Sports Bar Standard Media Ads (coach Ditka)', 'This task involves developing a single Flash standard media ad for Sports Bar (coach Ditka). This will be used as a guide for resizes, so make it grrrrreat!', 'https://razorfish.jira.com/browse/MCFOOTBALLAD-36', 4, 1, 1, 1, 0, 1, 100, '2011-10-04', '2011-10-19', 1, 'These were a pain because of all of the images in the ad. We ended up cutting one image of the coach in order to hit the desired k-weight. They should be finished and delivered now.', '2011-10-04 18:57:48', '2011-11-03 14:11:06', 4, NULL, NULL);
INSERT INTO `projects` VALUES(192, 38485, 'Standard Media', 'MSN On Net Banners: Fox Sports', 'This task involves developing a set of standard media ads.\r\n\r\n(1) Fox Sports focused banner - NCAA exclusive content\r\n(3) default homepage banners - (2) highlighting timeless content and (1) highlighting the celeb editor', 'https://razorfish.jira.com/browse/MSNSTDMMXII-8', 7, 1, 1, 1, 0, 0, 100, '2011-10-05', '2011-10-31', 1, 'These have been completed. You may need to help Tom get these on the extranet tomorrow (Oct 31st) for review. Check the last task that Marco completed. Also, Marco should take any further updates.', '2011-10-05 19:06:16', '2011-11-08 12:07:27', 3, NULL, NULL);
INSERT INTO `projects` VALUES(206, 37507, 'Rich Media', 'Experian Widgets: Backstage Testimonials', 'Medium Complexity Experian Widget. ', 'https://razorfish.jira.com/browse/EXPW-18', 5, 0, 1, 1, 0, 0, 25, '2011-10-20', '2011-11-17', 3, '', '2011-10-25 16:23:34', '2011-11-21 17:18:36', 13, NULL, NULL);
INSERT INTO `projects` VALUES(207, 37507, 'Rich Media', 'Experian Widgets: Credit Matters', 'Low Complexity Experian Widget. ', 'https://razorfish.jira.com/browse/EXPW-21', 8, 0, 1, 1, 0, 0, 10, '2011-10-20', '2011-11-17', 3, '', '2011-10-25 16:23:34', '2011-11-21 17:18:37', 13, NULL, NULL);
INSERT INTO `projects` VALUES(208, 37507, 'Rich Media', 'Experian Widgets: Don''t Be In The Dark', 'Low Complexity Experian Widget. ', 'https://razorfish.jira.com/browse/EXPW-24', 5, 0, 1, 1, 0, 0, 0, '2011-10-20', '2011-11-17', 3, '', '2011-10-25 16:23:36', '2011-11-21 17:18:39', 13, NULL, NULL);
INSERT INTO `projects` VALUES(245, 38898, 'Standard Media', 'BBY-Holiday_DI - Deal of the Day', 'Digital Insert Deal of the Day campaign. Includes 2 product variations "Lead 50" and "SMS" in 3 sizes for 6 total banners.', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-76', 8, 1, 1, 1, 0, 0, 100, '2011-10-05', '2011-10-12', 1, '', '2011-11-20 18:35:03', '2011-11-20 18:35:03', 10, NULL, NULL);
INSERT INTO `projects` VALUES(209, 38898, 'Standard Media', 'Best Buy Holiday - Companion Video Banner', 'We have to create 3 different banners for the 8 executions. Live dates vary. Unlike the DI banners, each execution will have different creative and copy. ', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-29', 9, 0, 1, 1, 0, 0, 100, '2011-10-26', '2011-12-12', 3, 'BBY Mobile Phone Freedom 	-canceled\r\nGifts under $100 	11/13-11/26\r\nBlack Friday 	11/22-11/24\r\nDigital Insert 	11/27-12/10\r\nSelection - Tablets/Smartphones 	11/27-12/3\r\nPrice Match HT 	12/4-12/10\r\nNo Hassle Returns 12/11-12/24\r\nConvenience Laptops  	12/11-12/24 ', '2011-10-26 14:39:23', '2011-12-05 12:34:13', 10, NULL, NULL);
INSERT INTO `projects` VALUES(193, 37507, '', 'The Sounds of Savings', 'High Complexity Experian Widget. ', 'https://razorfish.jira.com/browse/EXPW-27', 4, 0, 1, 1, 0, 1, 100, '2011-10-06', '2011-10-17', 3, '', '2011-10-06 16:47:28', '2011-10-24 15:22:10', 13, NULL, NULL);
INSERT INTO `projects` VALUES(198, 39099, 'Standard Media', 'Office Web Apps M2 Product Update Campaign', 'This task involves developing two standard media prototype ads. These will be used as a guide for the other sizes.\r\n', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-79', 4, 1, 1, 1, 0, 0, 100, '2011-10-17', '2011-11-04', 3, 'These have been completed.\r\n<br/>\r\nThe final creative feedback should be getting implemented in the morning by Bosz. These are due by EOD 11/4 or early Monday 11/7.\r\n<br/>\r\nThe plan:</br>\r\n1. Have the offshore team implement the client feedback into the two prototypes<br/>\r\n2. Get creative approval<br/>\r\n3. Move the prototypes into the resize task and use as guide for resizes (Updated PSDs should be provided for the resizes.)<br/>', '2011-10-17 14:14:59', '2011-11-29 12:56:38', 11, NULL, NULL);
INSERT INTO `projects` VALUES(197, 39318, 'Standard Media', 'Best Buy Gaming -Uncharted', 'three standard banners for Best Buy''s release of Uncharted. This task will have two phases "pre-order" and "live-week" with different ', 'https://razorfish.jira.com/browse/BBFYXIIGAMING-36', 6, 1, 1, 1, 0, 0, 100, '2011-10-17', '2012-11-04', 3, '', '2011-10-17 12:41:23', '2011-10-25 16:49:57', 10, NULL, NULL);
INSERT INTO `projects` VALUES(196, 39096, 'Standard Media', 'Office Holiday Campaign (aka Black Friday)', 'This task involves developing 32 standard media ads.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-62', 32, 1, 1, 1, 0, 0, 100, '2011-10-14', '2011-11-22', 2, 'I''ve broken out the ongoing sub-tasks.\r\n<br/>\r\nThese have started back up since Hans is back. The ornament for office set is in dev.\r\n<br/>\r\nThe Mouse ads are on hold due to client changes. The generic versions have been completed, but haven''t been reviewed. \r\n<br/>\r\nhttps://razorfish.jira.com/browse/OFFICESTANMMXI-89\r\n\r\n', '2011-10-13 19:48:48', '2011-11-16 13:18:12', 11, NULL, NULL);
INSERT INTO `projects` VALUES(199, 38455, 'Standard Media', 'Xbox Fall Campaign - Halo Banner', 'This task involves developing a single standard media ad. This is a bit different from the usual set because it needs to be compiled for the Flash lite player. More details specifications are below.', 'https://razorfish.jira.com/browse/BINGXII-12', 1, 1, 1, 1, 0, 0, 100, '2011-10-17', '2011-10-20', 1, 'This should be finished now.', '2011-10-17 14:16:30', '2012-01-03 13:52:58', 11, NULL, NULL);
INSERT INTO `projects` VALUES(200, 37507, 'Rich Media', 'Experian Widgets: Naughty or Nice', 'Low Complexity Experian Widget. ', 'https://razorfish.jira.com/browse/EXPW-12', 4, 0, 1, 1, 0, 0, 0, '2011-10-20', '2011-11-17', 3, '', '2011-10-17 18:53:52', '2011-11-21 17:18:40', 13, NULL, NULL);
INSERT INTO `projects` VALUES(201, 37584, 'Standard Media', 'Tourism New Zealand FY11: Golf Tahiti', 'This task involves developing 6 standard media ads.', 'https://razorfish.jira.com/browse/TNZSTDMMXI-26', 6, 1, 1, 1, 0, 0, 80, '2011-10-13', '2011-10-19', 2, '', '2011-10-19 13:27:54', '2012-01-06 19:04:30', 7, NULL, NULL);
INSERT INTO `projects` VALUES(202, 39278, 'Rich Media', 'Foodie: Click/Rollover Ad Unit Update', 'This task involves updating a couple of existing rich media ads.', 'https://razorfish.jira.com/browse/HALRICHMMXI-1', 2, 0, 1, 1, 0, 0, 40, '2011-10-19', '2011-10-31', 3, 'Mark is going to start on the client feedback on 11/8 and we''ll have an internal review that afternoon. The client review will be Wed 11/9.\r\n<br/>\r\nNote: He''s working on the click version. They only want to see one version on the 31st.\r\nhttps://razorfish.jira.com/browse/HALRICHMMXI-48', '2011-10-19 18:06:39', '2012-01-06 19:04:07', 6, NULL, NULL);
INSERT INTO `projects` VALUES(205, 37507, 'Rich Media', 'Experian Widgets: Credit Connection', 'Low Complexity Experian Widget. ', 'https://razorfish.jira.com/browse/EXPW-15', 4, 0, 1, 1, 0, 0, 10, '2011-10-20', '2011-11-17', 3, '', '2011-10-25 16:23:32', '2011-11-21 17:18:42', 13, NULL, NULL);
INSERT INTO `projects` VALUES(213, 39147, 'Both', 'Bing Holiday Campaign', 'Bing Standard Banners (not sure how many concepts we will have, likely not more than three)', 'https://razorfish.jira.com/browse/BINGADSMMXII-14', 21, 1, 1, 1, 0, 0, 100, '2011-10-27', '2011-11-22', 3, 'I''ve split this into multiple sub-tasks.\r\n<br/>\r\nKevin should be starting on the expanded panel tomorrow and Mark should be implementing any client feedback on the Antler and Sweater creatives (Still to be delivered). He is also working on the Calendar and Shaking Gift creative prototypes. If Mark finishes the Antler and Sweater feedback tomorrow, this''ll need to be added to task BINGADSMMXII-22. I''ve already let Annie know that we may not be able to get this feedback into the resizes by Monday morning''s review.\r\n<br/>\r\n<br/>\r\nKevin is half way through the rich media unit. And Dustin finished the the final edits to Antler and Sweater prototypes on 11/8.\r\n<br/>\r\nThe standard prototypes need to be completed for client review by 11/9. The second set of standard prototypes are due for review on 11/11.', '2011-10-27 21:38:23', '2011-11-16 13:52:45', 2, NULL, NULL);
INSERT INTO `projects` VALUES(203, 39278, 'Standard Media', 'HAL Grand Voyages Update', 'HAL is launching a Grand Voyages campaign that needs updated creative.\r\nCreate new 2-frame banners per direction provided by HAL; End frame offers need to be in XML (not the header.)\r\n\r\nMust meet HAL brand dimensions, max file size 40k. \r\nCreative sizes: 300x250, 728x90, and 160x600.', 'https://razorfish.jira.com/browse/HALSTANMMXI-26', 2, 0, 1, 1, 0, 1, 100, '2011-10-24', '2011-10-25', 1, 'We''re waiting on final client approval. The 160x600 wasn''t needed!', '2011-10-24 12:15:25', '2011-12-05 15:59:53', 6, NULL, NULL);
INSERT INTO `projects` VALUES(204, 39158, 'Standard Media', 'Office Excel Skills Builder Campaign', 'This task involves developing a set of standard media ads.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-98', 3, 1, 1, 1, 0, 0, 100, '2011-10-24', '2011-12-10', 2, 'We found some bugs with the clicktags here, but they''ve been resolved now.\r\n<br/>\r\nEverything is with the client and are waiting on feedback/approval.  We should hopefully have today 12/8 and then I can upload the resize PSDs for production tomorrow. Start the resize dev either offshore or if Kevin has time, have him take it.', '2011-10-24 18:07:32', '2012-02-24 15:59:38', 11, NULL, NULL);
INSERT INTO `projects` VALUES(210, 38413, 'Standard Media', '(OFFICESTANMMXI-48) Office One Note Intro Campaign: Localization (Great Britian)', 'This task involves localizing the existing US ads for Great Britain. ', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-105', 15, 1, 1, 1, 0, 0, 0, '2011-10-27', '2011-11-05', 1, 'This project is just getting started. Matt is still filling out the details in the task. I think it''ll be fine for this to start Monday.', '2011-10-27 13:58:33', '2011-11-10 11:25:23', 11, NULL, NULL);
INSERT INTO `projects` VALUES(211, 38587, 'Standard Media', 'Bing Together: Animated Product Demos: Client Feedback', 'This task involves making some copy and possibly image updates to two existing animated Flash demos.', 'https://razorfish.jira.com/browse/BINGADSMMXII-13', 2, 0, 1, 1, 0, 1, 100, '2011-10-27', '2011-11-05', 1, 'There are some minor copy updates that Martin is updating.', '2011-10-27 14:01:42', '2011-12-05 16:00:14', 2, NULL, NULL);
INSERT INTO `projects` VALUES(216, 38991, 'Standard Media', '(OFFICESTANMMXI-48) Office One Note Intro Campaign: QA Localization Files from Localization Vendor', '', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-109', 0, 1, 0, 1, 1, 0, 0, '2011-11-02', '2011-11-02', 1, 'I haven''t heard anything else from Matt about this. I guess it''s not going to happen.\r\n<br/>\r\n\r\nThis involves QAing the files from the localization vendor.', '2011-11-02 13:08:26', '2011-11-10 11:25:22', 11, NULL, NULL);
INSERT INTO `projects` VALUES(212, 38456, 'Standard Media', 'Bing Discover Bing and Entertainment Creative', 'Banners in our standard sizes for to drive traffic to Discover Bing and tell the Bing Entertainment story.\r\n\r\nThis task involves developing two different creative executions. There will be five total dimensions for each execution.\r\n', 'https://razorfish.jira.com/browse/BINGXII-15', 5, 1, 1, 1, 0, 0, 100, '2011-10-27', '2011-11-04', 1, '11/10: This should be finished.\r\n<br/>\r\n<br/>\r\nMartin is finishing the final tweaks to Entertainment and Kari has finished the Discover Bing set (approved). \r\n<br/>\r\nKari Fosse is working on the prototype feedback and the Discover Bing creative resizes. JP will take the Entertainment creative resizes and will finish over the weekend. \r\n<br/>\r\nThis one snuck up on me and was originally setup as a sub-task because Tom doesn''t understand the process. I''ve since moved it into it''s own deliverable task and have broken out the details. To top it off, it''s already behind schedule. I''ve let Tom know, as you''ll see in the comments of the prototype subtask. I''m sure he''ll followup with you on this tomorrow (Oct 31st.). ', '2011-10-27 21:33:45', '2011-12-06 17:06:38', 2, NULL, NULL);
INSERT INTO `projects` VALUES(214, 36519, 'Rich Media', 'MC_KEY_36519_2011_Pub_Media_Supp_NB: November Video Banner Refresh', '', 'https://razorfish.jira.com/browse/MCKEYWEBMAINT-17', 2, 0, 1, 1, 0, 0, 100, '2011-10-31', '2011-11-03', 1, 'This has been completed. The live date moved to Nov 3rd from Nov 1st.', '2011-10-31 11:12:47', '2011-11-29 12:46:37', 12, NULL, NULL);
INSERT INTO `projects` VALUES(215, 36497, 'Standard Media', 'Mobile App Standard Media Ads', 'This task involves developing four standard media ads for the "Little Coaches" Mobile App.', 'https://razorfish.jira.com/browse/MCFOOTBALLAD-43', 4, 1, 1, 1, 0, 0, 100, '2011-11-01', '2011-11-11', 1, 'This has been completed and is assigned to the project manager.\r\n<br/>\r\nThe team has finished the feedback and these need to be staged tomorrow. \r\nNote: We found out today that Major Tom has SWF sharing capabilities now. I''ll have to show you this system. Hopefully this''ll allow us to get away from updating the extranet all of the time.\r\n<br/>\r\nThe mobile app itself is delayed by a day or two. EOD today (11/10) or even Friday (11/11) AM will work for final delivery.', '2011-11-01 11:24:02', '2011-11-16 13:20:12', 5, NULL, NULL);
INSERT INTO `projects` VALUES(223, 39096, 'Standard Media', 'Office Holiday Campaign - Ornament Office For Mac: Develop 300x250 & 180x150 Ads', 'This task involves developing two standard media units.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-78', 2, 1, 1, 1, 1, 0, 100, '2011-11-08', '2011-11-10', 2, 'There wasn''t a resize phase since the ads were similar to another set. I used a 300x250 example from another set as the motion guide.', '2011-11-08 14:28:13', '2011-11-29 12:51:26', 3, NULL, NULL);
INSERT INTO `projects` VALUES(217, 38898, 'Standard Media', 'Best Buy Holiday: Thanksgiving', 'Banner sets for Best Buy''s Thanksgiving and Cyber Monday banners.\r\nThis included 2 separate sets of standard banners with their own sub-tasks and re-sizes task.', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-35', 20, 1, 1, 1, 0, 0, 100, '2011-11-03', '2011-11-22', 3, '', '2011-11-03 22:07:49', '2011-12-05 12:32:31', 10, NULL, NULL);
INSERT INTO `projects` VALUES(220, 39369, 'Standard Media', 'BBY-Holiday_MDF- Digital Imaging', '6 versions in 3 sizes + 2 custom sizes x 1 version. (total 20 banners). Due 11/18', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-59', 20, 1, 1, 1, 0, 0, 100, '2011-10-28', '2011-11-18', 4, '', '2011-11-03 23:12:58', '2011-11-22 12:22:30', 10, NULL, NULL);
INSERT INTO `projects` VALUES(221, 39370, 'Standard Media', 'BBY-Holiday_MDF- OnStar', '1 versions in 5 sizes (total 5 banners). Due 11/18', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-75', 5, 1, 1, 1, 0, 0, 100, '2011-10-28', '2011-11-18', 4, '', '2011-11-03 23:15:33', '2011-11-22 12:21:53', 10, NULL, NULL);
INSERT INTO `projects` VALUES(222, 39157, 'Standard Media', 'Office Web Apps Student Toolkit', 'One (1) creative concept with two (2) different creative executions and localized in four (4) languages. Fourteen flash animations and sixteen statics.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-124', 10, 1, 1, 1, 0, 0, 100, '2012-01-18', '2011-11-08', 1, 'These should be finished. Rob made a few final updates on Dec 14th and now they''re in Stan''s hands.\r\n<br/> \r\n\r\nThere were some pretty major changes to the prototype. The client wanted to Frankenstein the concept with another one. Martin is working on these and should hopefully complete them by EOD today 12/8 so that we can hand off to offshore tomorrow 12/9. If he can''t, maybe have Dustin help finish them. Note: Martin is out tomorrow.', '2011-11-07 14:02:16', '2012-02-13 11:09:32', 11, NULL, NULL);
INSERT INTO `projects` VALUES(224, 39008, 'Standard Media', 'Office One Note Mobile ', 'One (1) creative concept with two (2) creative executions.\r\nExecution #1 batch will be produced in the following three (3) sizes for a total of three (3) Flash ads with static backup JPEGs:', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-131', 6, 1, 1, 1, 0, 0, 50, '2011-12-12', '2011-01-14', 3, 'This has finally returned and has been assigned to the team. \r\n<br/>\r\n12/28 - Spoke with Stan briefly this morning. It looks like we''re still waiting on final assets from the client and design (currently a number of FPO images are in place). It''s not looking like we will have assets to get this any further through production prior to the EOM and will likely pick up once we get back in early first week of Jan. \r\n<br/>\r\n\r\n\r\nWe''re waiting on resized comps to start. The schedule also needs to be updated by Stan.\r\n<br/>\r\nKevin just started 12/12 3:30pm. The PSD was delivered late and I''ve warned the project manager that we may not deliver a prototype by the client review date (Wed 12/14).\r\n\r\n<br/>\r\nThe prototype phase must start on Monday 12/12.', '2011-11-08 18:08:54', '2012-01-20 19:01:36', 11, NULL, NULL);
INSERT INTO `projects` VALUES(225, 39686, 'Standard Media', 'Bing XBOX Voice - Probably just statics', '', '', 0, 1, 0, 1, 0, 0, 0, '2011-11-08', '2011-11-08', 1, 'This is supposed to only be statics.', '2011-11-08 18:15:31', '2011-11-29 12:47:37', 2, NULL, NULL);
INSERT INTO `projects` VALUES(226, 38963, 'Standard Media', 'Waterfall Standard Banner Update', 'This task involves developing a set of standard ads that include three sizes. This will be very similar to the banners we created at TNZFLASH-3.', 'https://razorfish.jira.com/browse/TNZSTDMMXI-27', 3, 1, 1, 1, 0, 0, 100, '2011-11-09', '2011-11-11', 2, '', '2011-11-09 13:17:26', '2012-01-06 19:04:32', 7, NULL, NULL);
INSERT INTO `projects` VALUES(227, 39096, 'Standard Media', 'Office Holiday Campaign - Ornament Mouse: Develop 180x150 and 300x250 Ads', 'This task involves developing two standard media ads for the Ornament Mouse creative. The 300x250 is complete, but needs one revision:\r\n\r\nPlease remove the asterisk from the end of the copy on the final frame.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-115', 2, 1, 1, 1, 0, 0, 100, '2011-11-10', '2011-11-11', 3, 'The team has started and they need to be finished by 11/11/11.', '2011-11-10 12:48:43', '2011-11-29 12:50:31', 11, NULL, NULL);
INSERT INTO `projects` VALUES(228, 39097, 'Standard Media', 'Office 365 - Simple Orange: Develop New Copy Version', 'This task involves updating existing units with the copy below.\r\n\r\nCopy as follows:\r\nIt''s time to take your business to the cloud.\r\nAccess to email, web conferencing, documents and calendars from virtually anywhere.\r\nIt all works together.\r\nTry Microsoft Office 365 today.\r\nStart collaborating in the cloud and get more out of Microsoft Office.\r\nBegin your free trial', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-118', 2, 1, 1, 1, 0, 0, 100, '2011-11-10', '2011-11-11', 1, 'This has been completed and is now assigned to the project manager.', '2011-11-10 22:27:30', '2011-11-29 12:43:05', 11, NULL, NULL);
INSERT INTO `projects` VALUES(230, 39097, 'Standard Media', 'Office 365 - Simple Orange and White Clover Naming Updates', 'We need to rename all the files, including backup JPGs.\r\n\r\nI''ve attached a sheet which has the final names needed.\r\n\r\nAn example of the change:\r\n\r\n39097_SO_b_buy_300x250.swf \r\nchanges to \r\n300x250-40K_O365_SO_b_buy.swf\r\n', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-117', 3, 1, 1, 1, 0, 0, 100, '2011-11-10', '2011-11-11', 1, 'This has been completed and is assigned to the project manager.', '2011-11-10 22:31:57', '2011-12-06 17:06:01', 11, NULL, NULL);
INSERT INTO `projects` VALUES(231, 38456, 'Standard Media', 'Bing Engagement Banners: Updates for Rewards Speedometer Banners', 'Take already existing flash files for Speedometer and make updates per latest approved creative.', 'https://razorfish.jira.com/browse/BINGXII-22', 5, 1, 1, 1, 0, 0, 50, '2011-11-14', '2011-11-17', 1, 'This task involves doing some updates.', '2011-11-14 17:15:16', '2011-12-06 17:07:10', 2, NULL, NULL);
INSERT INTO `projects` VALUES(232, 36057, 'Standard Media', 'Sail & Save: Grand Voyages - Domestic', 'This project involves building a set of banner ads for the Holland America Sail & Save program based on HALSTANMMXI-26.\r\n\r\nUpdate the current Grand Voyages creative with new copy. Creative sizes: 300x250, and 728x90 (there is no 160x600 for this execution.)\r\n', 'https://razorfish.jira.com/browse/HALSTANMMXI-27', 2, 0, 1, 1, 1, 0, 100, '2011-11-16', '2011-12-01', 2, 'This appears to be completed.', '2011-11-16 13:26:28', '2012-01-03 13:10:02', 6, NULL, NULL);
INSERT INTO `projects` VALUES(233, 36057, 'Standard Media', 'Sail & Save: Europe 2012 - Domestic', 'This project involves building a set of banner ads for the Holland America Sail & Save program based on HALSTANMMXI-15.\r\n\r\nUpdate the current Europe 2012 Cruise Sale creative with new copy. Create two unique versions, each one with a different 2nd frame, for A/B testing. US, UK only.', 'https://razorfish.jira.com/browse/HALSTANMMXI-28', 3, 0, 1, 1, 1, 0, 100, '2011-11-16', '2011-12-01', 2, 'These have been posted for creative review.', '2011-11-16 13:26:30', '2012-01-03 13:10:00', 6, NULL, NULL);
INSERT INTO `projects` VALUES(234, 36057, 'Standard Media', 'Sail & Save: Alaska - Domestic', 'This project involves building a set of banner ads for the Holland America Sail & Save program based on new assets.\r\n\r\nCreate a new set of Alaska Sail & Save banners by leveraging previous Alaska creative designs. Use the Alaska Cruisetours "Bear" execution as the starting point, but insert a 2nd frame that uses the Alaska Cruisetours "Whale" initial frame. End frame will use the "Bear" XML end frame.', 'https://razorfish.jira.com/browse/HALSTANMMXI-29', 3, 0, 1, 1, 1, 0, 100, '2011-11-16', '2011-12-01', 2, 'Waiting on final approvals.', '2011-11-16 13:26:33', '2012-01-03 13:09:58', 6, NULL, NULL);
INSERT INTO `projects` VALUES(235, 36057, 'Standard Media', 'Sail & Save: Multiproduct - Domestic', 'This project involves building a set of banner ads for the Holland America Sail & Save program based on HALSTANMMXI-22.\r\n\r\nCreate two new Sail & Save executions that leverage the recent 2-week sale design. The only difference between the two versions is the end frame; each version needs its unique, Multiproduct XML feed (we will use current East & West coast end frames.)', 'https://razorfish.jira.com/browse/HALSTANMMXI-30', 3, 0, 1, 1, 0, 0, 100, '2011-11-16', '2011-12-01', 2, 'I believe that these are finished. Anyway, they are in Stephen''s hands.', '2011-11-16 13:26:38', '2012-01-03 13:09:57', 6, NULL, NULL);
INSERT INTO `projects` VALUES(236, 36057, 'Standard Media', 'Sail & Save: Europe UK & NL - International', 'This project involves building a set of banner ads for the Holland America Sail & Save program based on the files at HALSTANMMXI-15.\r\n\r\nUpdate the current Europe 2012 Cruise Sale creative with new copy. Create two unique versions, each one with a different 2nd frame, for A/B testing.', 'https://razorfish.jira.com/browse/HALSTANMMXI-31', 6, 0, 1, 1, 0, 0, 100, '2011-11-16', '2011-11-22', 1, 'Kevin finished these up.\r\n<br/>\r\nPreview links:\r\nhttp://holland.razorfishtc.com/SailAndSave/International/Europe/NL/\r\nhttp://holland.razorfishtc.com/SailAndSave/International/Europe/UK/', '2011-11-16 13:36:30', '2012-01-03 13:09:56', 6, NULL, NULL);
INSERT INTO `projects` VALUES(237, 36057, 'Standard Media', 'Sail & Save: Norway UK & NL - International', 'This project involves building a set of banner ads for the Holland America Sail & Save program based on the files at HALSTANMMXI-16.\r\n\r\nUpdate existing ad unit with new copy.\r\n', 'https://razorfish.jira.com/browse/HALSTANMMXI-32', 6, 0, 1, 1, 0, 0, 90, '2011-11-16', '2011-11-22', 2, 'Based on the last comment from Mark, we still need final pricing for these.', '2011-11-16 13:36:33', '2012-01-03 13:09:55', 6, NULL, NULL);
INSERT INTO `projects` VALUES(238, 36057, 'Standard Media', 'Sail & Save: South Pacific - International', 'This project involves building a set of banner ads for the Holland America Sail & Save program based on the files at HALSTANMMXI-18.\r\n\r\nUpdate existing ad unit with new copy.\r\n', 'https://razorfish.jira.com/browse/HALSTANMMXI-33', 3, 0, 1, 1, 0, 0, 100, '2011-11-16', '2011-11-22', 2, 'These appear to be completed.', '2011-11-16 13:36:36', '2012-01-03 13:09:53', 6, NULL, NULL);
INSERT INTO `projects` VALUES(239, 36057, 'Standard Media', 'Sail & Save: Multi-Product AUS, UK, NL - International', 'https://razorfish.jira.com/browse/HALSTANMMXI-34', 'https://razorfish.jira.com/browse/HALSTANMMXI-34', 9, 0, 1, 1, 0, 0, 100, '2011-11-16', '2011-11-22', 2, 'These appear to be finished.', '2011-11-16 13:36:41', '2012-01-03 13:09:52', 6, NULL, NULL);
INSERT INTO `projects` VALUES(240, 39147, 'Standard Media', 'Bing Holiday Campaign: Develop MSN Rich Media Unit', 'This task involves developing a single PMG-served rich media unit. This unit will run on MSN and more information is below. There will be two iterations of this unit, one for December 17 and one for December 18. There will only be subtle differences between the two.', 'https://razorfish.jira.com/browse/BINGADSMMXII-17', 1, 0, 1, 1, 0, 0, 100, '2011-11-16', '2011-11-22', 1, 'Kevin knocked this one out of the park.', '2011-11-16 13:45:22', '2011-11-29 12:48:24', 2, NULL, NULL);
INSERT INTO `projects` VALUES(241, 39147, 'Standard Media', 'Bing Holiday Campaign: Develop December Shaking Gift Resizes', 'This sub-task involves developing the remaining resizes based on the motion guide attached below.', 'https://razorfish.jira.com/browse/BINGADSMMXII-20', 5, 1, 1, 1, 0, 0, 100, '2011-11-16', '2011-11-21', 1, 'These are complete.', '2011-11-16 13:49:48', '2011-12-06 17:07:18', 2, NULL, NULL);
INSERT INTO `projects` VALUES(242, 39147, 'Standard Media', 'Bing Holiday Campaign: Develop December Calendar Callouts Resizes', 'This sub-task involves developing the remaining resizes based on the motion guide attached below.', 'https://razorfish.jira.com/browse/BINGADSMMXII-21', 5, 1, 1, 1, 0, 0, 100, '2011-11-16', '2011-11-22', 1, 'These have been completed.\r\n<br/>\r\nKevin is working on these because Bosz is currently at their max. I might move these to Bosz on 11/17 so that he can focus on the expanding unit.', '2011-11-16 13:51:40', '2011-12-06 17:07:19', 2, NULL, NULL);
INSERT INTO `projects` VALUES(243, 38456, 'Standard Media', 'Bing Engagement Banners: Create Speedometer "CHEGG" Creative', 'We need to create a 728x90, 160x600, and 120x600 version of the speedometer banners to be updated with a different end frame. End frame updates include two new gift cards for Chegg and Cramster.', 'https://razorfish.jira.com/browse/BINGXII-24', 3, 0, 1, 1, 0, 0, 100, '2011-11-18', '2011-11-22', 1, 'These are finished and waiting on approval.', '2011-11-18 17:26:50', '2011-12-05 16:01:00', 2, NULL, NULL);
INSERT INTO `projects` VALUES(244, 39448, 'Standard Media', 'BBY-Holiday- MDF- Single Product Template', '6 main sets of banners with various delivery dates.', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-73', 54, 1, 1, 1, 0, 0, 100, '2011-10-28', '2011-12-05', 3, 'Computing HP - 3 units Due: 11/13\r\nComputing Toshiba- 9 units Due: 11/17\r\nComputing Kinect-1- 3 units Due: 11/17\r\nComputing Kinect-2- 6 units Due: -11/24- 11/21\r\nComputing Kinect-3- 6 units Due: 11/28\r\nHome Theater - 15 units Due: -11/24- 11/21\r\nGaming - 9 units Due: 11/24 11/21 (Starwars), 11/28 (EA Games), 12/5 (EA Sports)', '2011-11-20 16:27:30', '2011-12-09 17:12:54', 10, NULL, NULL);
INSERT INTO `projects` VALUES(246, 38898, 'Rich Media', 'BBY-Holiday: DI - Glam Splash', 'Create 2 flash files for a custom expandable banner for best buy''s holiday digital insert campaign', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-48', 2, 0, 1, 1, 0, 0, 100, '2011-11-03', '2011-11-23', 4, '', '2011-11-20 18:51:00', '2011-11-22 12:22:45', 10, NULL, NULL);
INSERT INTO `projects` VALUES(247, 39096, 'Standard Media', 'Office 365 - Simple Orange: 180x150 Test Unit Edits', 'Taking three existing Simple Orange 180x150 units and adding the FSCommand code to them.\r\n\r\nOriginal assets to edit are here:\r\nhttps://razorfish.jira.com/secure/attachment/42768/O365_Test_Units.zip\r\n\r\nNeed to be under 25K (current swfs are) and have FSCommand added.\r\n\r\nWould like them complete by EOD 11/30.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-129', 3, 1, 1, 1, 0, 0, 10, '2011-11-28', '2011-11-30', 1, 'These have started.', '2011-11-28 19:40:32', '2011-12-06 17:06:03', 11, NULL, NULL);
INSERT INTO `projects` VALUES(248, 36519, 'Rich Media', 'MC_KEY_36519_2011_Pub_Media_Supp_NB: December Video Banner Refresh', '', 'https://razorfish.jira.com/browse/MCKEYWEBMAINT-19', 2, 0, 1, 1, 0, 0, 10, '2011-12-01', '2011-12-25', 1, 'Nothing really transpired with this.\r\n<br/>\r\nI''m not sure if this is actually going to happen. I haven''t heard anything.', '2011-11-29 12:46:19', '2011-12-16 11:10:43', 12, NULL, NULL);
INSERT INTO `projects` VALUES(249, 39018, 'Standard Media', 'Tempur Pedic 2012 Q1 Standard Banners', 'Scope:\r\n1 overall concept\r\n3 versions of 3 ad sizes each (9 units total)\r\n\r\nCurrent proposed launch date is 1/3 (this will likely move later)\r\nSchedule TBD based on client shoot dates and other complications', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-15', 9, 1, 1, 1, 0, 0, 0, '2011-11-29', '2011-01-03', 3, '12/28 - An initial prototype has been built however is about 10k over file size limit. Working on getting 3rd party compression software to see if we can get the size down without revisiting the creative. \r\n\r\n\r\n\r\nThis is going to be kicking off on 12/20. It''s going to be a tight one. They want to deliver by 1/4.', '2011-11-29 16:24:22', '2012-02-13 11:07:54', 14, NULL, NULL);
INSERT INTO `projects` VALUES(250, 38898, 'Both', 'Best Buy Holiday: Deadline Shipping', 'A standard set of in 7 sizes & Rich media banner for Glam splash with 300x250 and full screen interactive carousel.', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-83', 10, 0, 0, 1, 0, 0, 100, '2011-12-01', '2011-12-13', 1, '', '2011-12-01 12:02:32', '2011-12-15 13:43:27', 10, NULL, NULL);
INSERT INTO `projects` VALUES(251, 38898, 'Standard Media', 'Best Buy Holiday: Final Rush', 'A standard set of banners for Best Buy''s Holiday "Final Rush" campaign.  7 sizes', 'https://razorfish.jira.com/browse/BBFYXIIHOLIDAY-80', 7, 0, 0, 1, 0, 0, 100, '2011-12-01', '2011-12-13', 2, 'out the door, had one post-launch request to stop the snowfall sequence at :15 seconds for the 800x600, offshore provided updated files on Friday 16th. QA approved, PM had no other feedback, so considering this closed.', '2011-12-01 12:04:44', '2011-12-19 11:53:30', 10, NULL, NULL);
INSERT INTO `projects` VALUES(252, 39018, 'Standard Media', 'Q4 Lead Gen Standard Banners - Financing CTA - Re-Message banners', 'Revise the CTA1 set of Re-Message banners with a new endframe CTA.\r\nOriginal assets to be revised are attached to this task.\r\n\r\n3 sets of 3 banner sizes = 9 units total\r\n\r\nNew CTA in the green button for all banners should now be:\r\n5 year financing available until 12/13\r\n\r\nCopy can be lower case as show here instead of all caps to fit better.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-17', 9, 1, 1, 1, 0, 0, 100, '2011-12-06', '2011-12-08', 4, 'These should be finished. You shouldn''t hear anything tomorrow (12/9).', '2011-12-06 16:58:38', '2011-12-16 11:11:12', 14, NULL, NULL);
INSERT INTO `projects` VALUES(253, 38456, 'Standard Media', 'Bing Engagement Banners: Create 300x250 Prototype for Rewards "Cat Clothes" Creative', 'This task involves developing one 300x250 prototype for the Rewards RD 2 creative execution "Cat Clothes". Please use the existing source files below as a starting point. These files contain assets (fonts, buttons, etc.) that should be reused in the new creatives.', 'https://razorfish.jira.com/browse/BINGXII-26', 1, 1, 1, 1, 0, 0, 100, '2011-12-06', '2011-12-06', 3, 'Waiting on final approvals.', '2011-12-06 17:04:33', '2011-12-16 11:00:40', 2, NULL, NULL);
INSERT INTO `projects` VALUES(254, 39782, 'Standard Media', 'Bing Seahawks December LED Display', 'Need to create a holiday version for the Seahawks Field level and fascia LED displays. The source files for the last Seahawks ad is located here: https://razorfish.jira.com/browse/BINGRICHMMXI-19.', 'https://razorfish.jira.com/browse/BINGXII-27', 2, 1, 1, 1, 0, 1, 100, '2011-12-07', '2011-12-08', 1, 'We''re waiting on final client approval.', '2011-12-07 12:50:05', '2011-12-16 11:08:30', 2, NULL, NULL);
INSERT INTO `projects` VALUES(255, 39018, 'Standard Media', 'Q4 Lead Gen Standard Banners - Slipper Revision 2', 'Revise the blue copy on the endframe of the slipper banners\r\nOriginal assets to be revised are attached below.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-18', 3, 1, 1, 1, 0, 0, 100, '2011-12-07', '2011-12-11', 3, 'Waiting on final approvals.', '2011-12-07 15:52:27', '2011-12-16 11:07:50', 14, NULL, NULL);
INSERT INTO `projects` VALUES(256, 39018, 'Standard Media', 'Q4 Lead Gen Standard Banners - Pillow Banner Revision', 'Revise the blue copy on the endframe of the pillow banners\r\nOriginal assets to be revised are attached below.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-19', 2, 1, 1, 1, 0, 0, 100, '2011-12-08', '2011-12-09', 3, 'Waiting on final approvals.', '2011-12-08 11:57:04', '2011-12-16 11:08:01', 14, NULL, NULL);
INSERT INTO `projects` VALUES(257, 39782, 'Standard Media', 'Bing Seahawks December LED Display New Executions', 'Need to create two new sizes of the holiday version for the Seahawks Field level and fascia LED displays. Please start from one of the source file packages below (The one that most resembles the revised comps.).', 'https://razorfish.jira.com/browse/BINGXII-28', 2, 1, 1, 1, 0, 0, 100, '2011-12-14', '2011-12-16', 1, 'Waiting on final approvals.', '2011-12-08 18:10:24', '2011-12-27 12:01:54', 2, NULL, NULL);
INSERT INTO `projects` VALUES(258, 40042, 'Standard Media', 'BBY SAS (stand alone stores) 40042 ', 'Need:\r\nNine (9) 300x250s (prototype being done by onshore dev)\r\nTen (10) 160x600s\r\nTen (10) 728x90s', 'https://razorfish.jira.com/browse/BBSM-60', 30, 1, 0, 1, 0, 0, 75, '2011-12-19', '2011-12-27', 2, 'These were approved for production on Thursday the 22nd. Offshore has begun working them and we have two sizes back for review. Working on getting the 728x90 resizes done by EOD today (12/27) or early tomorrow 12/28. Looks like we''re on target to meet our traffic date of 01/03. \r\n\r\n', '2011-12-09 13:12:10', '2012-03-12 14:21:43', 10, NULL, NULL);
INSERT INTO `projects` VALUES(259, 39738, 'Standard Media', 'BBY SUPERBOWL #39738 SHARP Banners', 'BBY SUPERBOWL #39738\r\n\r\npart 1 of 2 creative executions for Best Buy products: SHARP & SAMSUNG', 'https://razorfish.jira.com/browse/BBSM-62', 0, 1, 0, 1, 0, 0, 50, '2011-12-20', '2011-01-15', 2, '1/4 - second round of prototype dev is currently in review: http://bestbuy.razorfishcreative.com/ad_creative/jan_home_theater/\r\n\r\n12/27 - These are waiting on creative approval from the client. Production not yet started.', '2011-12-09 18:00:33', '2012-02-01 17:06:06', 10, NULL, NULL);
INSERT INTO `projects` VALUES(260, 39738, 'Standard Media', 'BBY SUPERBOWL #39738 SAMSUNG Banners', 'BBY SUPERBOWL #39738 part 2 of 2 creative executions for Best Buy products: SHARP & SAMSUNG	  ', 'https://razorfish.jira.com/browse/BBSM-62', 0, 1, 0, 1, 0, 0, 50, '2011-12-20', '2011-01-15', 2, '1/4 - second round of prototype dev is curently in review: http://bestbuy.razorfishcreative.com/ad_creative/jan_home_theater/\r\n\r\n12/27 - These are waiting on creative approval from the client. Production not yet started.', '2011-12-12 16:19:52', '2012-02-01 17:06:04', 10, NULL, NULL);
INSERT INTO `projects` VALUES(261, 39935, 'Standard Media', 'HAL_39935_FY11_Caribbean_Standard_Flash_Banners', 'Update existing comps with new copy and imagery provided from HAL. 1 IAB flash standard executions.', 'https://razorfish.jira.com/browse/HALSTANMMXI-37', 3, 0, 1, 1, 0, 0, 100, '2011-12-13', '2011-12-27', 1, 'These are on the review site.\r\nhttp://holland.razorfishtc.com/FY11/Caribbean/', '2011-12-13 20:47:01', '2012-01-24 18:26:16', 6, NULL, NULL);
INSERT INTO `projects` VALUES(262, 39935, 'Standard Media', 'HAL_39935_FY11_Bermuda_Save_Sail', 'Update existing comps with new copy and imagery provided from HAL. 1 IAB flash standard executions.', 'https://razorfish.jira.com/browse/HALSTANMMXI-38', 3, 0, 1, 1, 0, 0, 100, '2011-12-13', '2011-12-27', 1, 'Resizes posted: http://holland.razorfishtc.com/FY11/Bermuda/', '2011-12-13 20:47:04', '2012-01-24 18:26:19', 6, NULL, NULL);
INSERT INTO `projects` VALUES(263, 39935, 'Standard Media', 'HAL_39935_FY11 Alaska CruiseTours Banners', 'Develop Alaska Cruise Lead Standard banners using HAL provided copy and imagery. Create standard banners; new copy and imagery provided from HAL.', 'https://razorfish.jira.com/browse/HALSTANMMXI-39', 3, 0, 1, 1, 0, 0, 100, '2011-12-13', '2011-12-27', 1, 'Files have been posted to the review site.', '2011-12-13 20:47:07', '2012-01-24 18:26:22', 6, NULL, NULL);
INSERT INTO `projects` VALUES(264, 38963, 'Standard Media', 'TNZ Airline JV Project', 'We''ll be repurposing the "Updated Waterfall End Frames" flash banners', 'https://razorfish.jira.com/browse/TNZSTDMMXI-28', 3, 1, 1, 1, 0, 0, 50, '2011-12-13', '2011-12-29', 1, '', '2011-12-13 21:11:38', '2012-01-06 19:04:35', 7, NULL, NULL);
INSERT INTO `projects` VALUES(265, 38456, 'Standard Media', 'Bing Engagement Banners: Toolbar Ad 1 Localization Resizes', 'We will be localizing the Toolbar ad and will need additional sizes than what has already been built for the localized markets.\r\n\r\nSizes are:\r\n200x200\r\n628x39\r\n628x60\r\n971x39\r\n', 'https://razorfish.jira.com/browse/BINGXII-30', 4, 1, 1, 1, 0, 0, 10, '2011-12-15', '2011-12-20', 1, 'This just started yesterday (12/15) afternoon.', '2011-12-15 13:16:57', '2012-01-30 13:49:31', 2, NULL, NULL);
INSERT INTO `projects` VALUES(266, 38456, 'Standard Media', 'Bing EngagementBanrs: Create Toolbar Ad 2 "A Click Away" 300x250 Prototype', 'This task involves developing one 300x250 prototype for the Tooldbar Ad 2 creative execution. Please use the existing source files below as a starting point. These files contain assets (fonts, buttons, etc.) that should be reused in the new creatives.', 'https://razorfish.jira.com/browse/BINGXII-31', 1, 1, 1, 1, 0, 0, 10, '2011-12-15', '2011-12-20', 1, 'This just started yesterday (12/15) afternoon.', '2011-12-15 13:19:19', '2012-01-30 13:49:11', 2, NULL, NULL);
INSERT INTO `projects` VALUES(267, 38456, 'Standard Media', 'Bing EngagementBanrs: Create Toolbar Ad 2 "A Click Away" Resizes', 'This task involves developing the resizes for the Tooldbar Ad 2 creative execution. Please start from the prototype below. This file contains assets (fonts, buttons, etc.) that should be reused in the new creatives.', 'https://razorfish.jira.com/browse/BINGXII-32', 5, 1, 0, 1, 0, 0, 0, '2011-12-21', '2011-12-27', 1, '', '2011-12-19 11:47:04', '2012-01-30 13:49:14', 2, NULL, NULL);
INSERT INTO `projects` VALUES(268, 40216, 'Other', 'Copy Changes for Offer Module', 'On the ''Get Started'' and ''Offer'' tabs, please update the copy and prepare to upload the new version to the tab on 12/25\r\n\r\nWW Meetings:\r\n(old)Check Out a Meeting for FREE* \r\n(new)Join for FREE*\r\n\r\nlegal:\r\n(new) *Registration fee waved through 3/24/12 in participating areas only. Must pay meeting fees.\r\n\r\nWW Online:\r\n(old)Just $5 a Week**\r\n(new)Sign Up for FREE**\r\n\r\nlegal:\r\n(new) **Sign-up fee waived when you purchase our 3-month savings plan through 3/24/12.', 'https://razorfish.jira.com/browse/WWFG-1', 2, 1, 1, 1, 0, 0, 100, '2011-12-20', '2011-12-25', 3, 'This task involves updating two Facebook "tabs" and removing two "tabs".', '2011-12-20 13:08:42', '2012-01-09 13:17:32', 16, NULL, NULL);
INSERT INTO `projects` VALUES(269, 40216, 'Other', 'QA Tasks', 'Following is a description of tasks for this project for w/o Dec 19.\r\n\r\n1) Test links and verify copy change on Get Started Tab:\r\nhttps://www.facebook.com/weightwatchers?sk=app_190261271022904\r\n\r\nMake sure all fields in BMI calculator work. Values in fields on the tab should persist to the WW.com page and provide a computation.\r\n\r\nIdeal weight module: make sure height entered in the fields on FB are carried to the ww.com site upon submit and provide a healthy weight range when submit is clicked.\r\n\r\nFor offer module - make sure links take you to the appropriate page on WW.\r\n\r\n2) Test links and verify copy change on Offers Tab:\r\nhttps://www.facebook.com/weightwatchers?sk=app_225136877516337\r\n\r\nShould be the same as the #1 above Offer module. Check that links work and take you to an expected page on WW.com\r\n\r\nOn Dec 25, Carla Rogers will validate the pages are live and the 2 tabs (Lose for Good and Story of You) are removed from the left rail.', 'https://razorfish.jira.com/browse/WWFG-2', 2, 1, 1, 1, 0, 0, 100, '2011-12-20', '2011-12-25', 3, '', '2011-12-20 13:11:45', '2012-01-09 13:17:19', 16, NULL, NULL);
INSERT INTO `projects` VALUES(270, 40049, 'Rich Media', 'Tempur Pedic 2012 Q1 - RICH MEDIA 300x250', '300x250 only, with video player. based on unit Kevin just did.\r\nThere may be a copy change coming, but can start on the work\r\nI will confirm specs and can include in Jira\r\n\r\nNote: It''s Pointroll served, so it''ll have different specs.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-26', 1, 0, 1, 1, 0, 0, 100, '2012-01-06', '2012-01-13', 3, 'Waiting on final approvals.\r\n<br/>\r\nKevin has finished this. Martin helped a little.', '2012-01-05 15:10:13', '2012-02-06 13:49:12', 14, NULL, NULL);
INSERT INTO `projects` VALUES(271, 40049, 'Standard Media', 'Tempur Pedic 2012 Q1 - VALENTINES BANNERS', '2 sets of 3 banner sizes', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-27', 6, 1, 1, 1, 0, 0, 25, '2012-01-17', '2012-01-23', 2, 'Prototypes for both variations are complete. This is in the resize phase.', '2012-01-05 15:16:29', '2012-02-13 11:09:43', 14, NULL, NULL);
INSERT INTO `projects` VALUES(272, 40049, 'Standard Media', 'Tempur Pedic 2012 Q1 - Ergo and Remessaging Banners', '4 sets of 3 standard size banners', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-30', 12, 1, 1, 1, 0, 0, 25, '2012-01-25', '2012-01-24', 3, 'We''re waiting on final approvals on the prototype. Resize phase is next.', '2012-01-05 15:18:31', '2012-02-16 14:48:10', 14, NULL, NULL);
INSERT INTO `projects` VALUES(273, 39018, 'Standard Media', 'Tempur Pedic 2012 Q1 Standard Banners: Develop 300x250 Karen Prototype', 'This task involves developing three 300x250 Flash ads. There is one creative and three executions that include copy/cta variations. These will be used as a guide for the resizes, so make them great. There is also an alt CTA set like the Emily/Saoud banners, with just the button copy being different.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-22', 3, 0, 1, 1, 0, 0, 10, '2011-01-09', '2011-01-11', 2, '', '2012-01-09 13:19:51', '2012-02-06 13:51:24', 14, NULL, NULL);
INSERT INTO `projects` VALUES(274, 40204, 'Standard Media', 'MSN Localized Flash Units', 'Develop a total of 12 units (3 concepts, four sizes):', 'https://razorfish.jira.com/browse/MSNSTDMMXII-17', 12, 1, 1, 1, 0, 0, 100, '2012-01-11', '2012-01-14', 3, 'There are supposed to be some new items coming today (1/30/12). ', '2012-01-11 12:39:07', '2012-02-06 13:50:17', 3, NULL, NULL);
INSERT INTO `projects` VALUES(275, 40386, 'Standard Media', 'CL NHL 2012: Jan Feb Banner Ads', 'This task involves developing a total of twelve standard media ad units. There are two designs and two CTA variations that need to be implemented. These should also be built out in the three basic sizes.\r\n', 'https://razorfish.jira.com/browse/MCCLNHL-1', 12, 1, 1, 1, 0, 0, 100, '2012-01-23', '2012-01-31', 1, 'Waiting on final approvals.', '2012-01-20 18:59:42', '2012-02-13 11:09:06', 4, NULL, NULL);
INSERT INTO `projects` VALUES(276, 39008, 'Standard Media', 'Office One Note Mobile: Implement Updated Imagery & Naming', 'This task involves updating all of the sizes with the new photography and implementing the naming convention listed in OneNoteMobile_banner_list_v10.xlsx. Please start from the latest files below.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-131', 19, 1, 1, 1, 0, 0, 90, '2011-01-23', '2011-01-25', 3, 'Waiting on final creative approval.', '2012-01-20 19:01:22', '2012-01-25 14:40:13', 11, NULL, NULL);
INSERT INTO `projects` VALUES(277, 39008, 'Standard Media', 'Office One Note Mobile: Develop new sizes', 'This task involves developing units that weren''t in the original request. These sizes and comps are listed below.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-138', 2, 1, 1, 1, 0, 0, 90, '2011-01-23', '2011-01-25', 3, 'These are finished and waiting on final creative approval.', '2012-01-20 19:02:28', '2012-01-25 14:40:13', 11, NULL, NULL);
INSERT INTO `projects` VALUES(278, 39345, 'Standard Media', 'MSFT_OfcApp_GoogleCompete_NB', 'There are 6 units, but 3 have a very slight variation', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-140', 6, 1, 1, 1, 0, 0, 100, '2012-01-30', '2012-01-31', 3, 'The team did a great job and knocked these out really quickly. There is only minor creative feedback.\r\n<br/>\r\nThis is going to be really tight. The PSDs are supposed to be delivered EOD Friday 1/27/12\r\n', '2012-01-24 17:37:25', '2012-02-06 13:49:00', 11, NULL, NULL);
INSERT INTO `projects` VALUES(279, NULL, 'Standard Media', 'HAL Ad Creative Refresh - Multiproduct', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-41', 0, 0, 0, 1, 0, 0, 0, '2012-02-20', '2012-03-07', 2, '', '2012-01-24 18:38:22', '2012-03-26 19:07:53', 6, NULL, NULL);
INSERT INTO `projects` VALUES(280, NULL, 'Standard Media', 'HAL Ad Creative Refresh - Alaska ', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-42', 0, 0, 0, 0, 0, 1, 0, '2012-02-20', '2012-03-07', 2, '', '2012-01-24 18:38:24', '2012-04-11 14:36:58', 6, NULL, NULL);
INSERT INTO `projects` VALUES(281, NULL, 'Standard Media', 'HAL Ad Creative Refresh - Grand Voyages ', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-43', 0, 0, 0, 0, 0, 1, 0, '2012-02-20', '2012-03-07', 2, '', '2012-01-24 18:38:25', '2012-04-11 14:36:59', 6, NULL, NULL);
INSERT INTO `projects` VALUES(282, NULL, 'Standard Media', 'HAL Ad Creative Refresh - Caribbean ', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-44', 0, 0, 0, 0, 0, 1, 0, '2012-02-20', '2012-03-07', 2, '', '2012-01-24 18:38:27', '2012-04-11 14:37:00', 6, NULL, NULL);
INSERT INTO `projects` VALUES(283, NULL, 'Standard Media', 'HAL Ad Creative Refresh - Bermuda ', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-45', 0, 0, 0, 0, 0, 1, 0, '2012-02-20', '2012-03-07', 2, '', '2012-01-24 18:38:28', '2012-04-11 14:37:01', 6, NULL, NULL);
INSERT INTO `projects` VALUES(284, NULL, 'Standard Media', 'HAL Ad Creative Refresh - Europe ', '', 'https://razorfish.jira.com/browse/HALSTANMMXI-46', 0, 0, 0, 0, 0, 1, 0, '2012-02-20', '2012-03-07', 2, '', '2012-01-24 18:38:31', '2012-04-11 14:37:02', 6, NULL, NULL);
INSERT INTO `projects` VALUES(285, 39008, 'Standard Media', 'Office One Note Mobile: Implement Updated Imagery & Naming', 'Creative feedback.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-139', 21, 1, 1, 1, 0, 0, 100, '2011-01-23', '2011-01-26', 3, 'These are complete. Waiting on final approvals.', '2012-01-25 14:41:12', '2012-02-10 15:51:11', 11, NULL, NULL);
INSERT INTO `projects` VALUES(286, 39986, 'Standard Media', 'Bing Q3 Standard Music Banners', 'This task involves developing two sets of standard media ads.', 'https://razorfish.jira.com/browse/BINGXII-33', 10, 1, 1, 1, 0, 0, 100, '2012-01-27', '2012-02-02', 1, 'Waiting on final approvals.', '2012-01-27 14:14:14', '2012-03-06 16:25:02', 2, NULL, NULL);
INSERT INTO `projects` VALUES(287, 39986, 'Standard Media', 'Bing Vevo Overlay', '', 'https://razorfish.jira.com/browse/BINGXII-37', 1, 0, 1, 1, 0, 0, 100, '2012-01-27', '2012-01-30', 1, 'Waiting on final client approvals.', '2012-01-30 16:27:46', '2012-02-06 13:50:44', 2, NULL, NULL);
INSERT INTO `projects` VALUES(288, 40204, 'Standard Media', 'MSN 40204 Replace image in four sizes', 'This task involves replacing the image of the person eating sushi with a new image.', 'https://razorfish.jira.com/browse/MSNSTDMMXII-22', 4, 1, 1, 1, 0, 0, 100, '2012-01-30', '2012-01-31', 1, '', '2012-01-30 16:34:49', '2012-02-06 13:51:05', 3, NULL, NULL);
INSERT INTO `projects` VALUES(289, 40051, 'Standard Media', 'BBY February Computing', 'We will be building out a standard media prototype and 20 resizes (some non-standard).', 'https://razorfish.jira.com/browse/BBSM-82', 20, 1, 1, 1, 0, 0, 15, '2012-02-02', '2012-02-17', 2, '', '2012-02-01 17:01:59', '2012-03-12 14:21:49', 10, NULL, NULL);
INSERT INTO `projects` VALUES(290, 40255, 'Standard Media', 'March Home Theater - LG', 'Razorfish will present and develop one (1) product-focused banner concept. The concept will feature one (1) product in the Home Theater category. Sub-headline copy will draw attention to the specific benefits of this product in these categories.', 'https://razorfish.jira.com/browse/BBSM-76', 0, 0, 0, 1, 0, 0, 0, '2012-02-01', '2012-04-13', 2, 'Waiting to hear more.', '2012-02-01 17:04:00', '2012-04-11 14:36:28', 10, NULL, NULL);
INSERT INTO `projects` VALUES(291, 40448, 'Standard Media', 'March Digital Insert', '', 'https://razorfish.jira.com/browse/BBSM-77', 55, 1, 1, 1, 0, 0, 75, '2012-02-01', '2012-04-25', 2, 'March 21 2012: We''re in the groove with weekly updates. There are currently some issues with image quality due to k-weight allowed.\r\n\r\nWe missed the deadline due to Matt having some issues with the timer. These are being revised and we''re currently playing catch up for the week 2 updates.\r\n\r\n4/9/12 - Week 7 updates have started and Week 8 should come later in the week.  ', '2012-02-01 17:04:51', '2012-05-07 12:40:11', 10, NULL, NULL);
INSERT INTO `projects` VALUES(292, 39345, 'Standard Media', 'Google Compete: Banners: Implement Prototype Feedback', '', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-145', 6, 0, 1, 1, 0, 0, 100, '2012-02-06', '2012-02-08', 2, '', '2012-02-06 13:48:17', '2012-02-10 15:49:15', 11, NULL, NULL);
INSERT INTO `projects` VALUES(293, 37507, 'Standard Media', 'Neighborhood Profiler', '', 'https://razorfish.jira.com/browse/EXPW-249', 0, 0, 0, 1, 0, 0, 0, '2012-02-06', '2012-02-06', 2, '', '2012-02-06 18:55:36', '2012-03-26 19:07:40', 13, NULL, NULL);
INSERT INTO `projects` VALUES(294, 37507, 'Standard Media', 'From the Headlines', '', 'https://razorfish.jira.com/browse/EXPW-250', 0, 0, 0, 1, 0, 0, 0, '2012-02-06', '2012-02-06', 2, '', '2012-02-06 18:55:38', '2012-03-26 19:07:42', 13, NULL, NULL);
INSERT INTO `projects` VALUES(295, 37507, 'Standard Media', 'How Much Can You Save: Refresh', '', 'https://razorfish.jira.com/browse/EXPW-251', 0, 1, 0, 1, 0, 0, 0, '2012-02-06', '2012-02-06', 2, '', '2012-02-06 18:55:40', '2012-03-12 14:22:01', 13, NULL, NULL);
INSERT INTO `projects` VALUES(296, 37507, 'Standard Media', 'Spring Cleaning', '', 'https://razorfish.jira.com/browse/EXPW-252', 0, 0, 0, 1, 0, 0, 0, '2012-02-06', '2012-02-06', 2, '', '2012-02-06 18:55:42', '2012-04-11 14:36:39', 13, NULL, NULL);
INSERT INTO `projects` VALUES(297, 40049, 'Standard Media', 'Ergo and Remessaging Banners: Develop Re-Message 300x250 Prototypes w/Variations', '', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-33', 3, 1, 1, 1, 0, 0, 0, '2012-02-07', '2012-02-09', 3, '', '2012-02-07 12:51:55', '2012-02-13 11:08:07', 14, NULL, NULL);
INSERT INTO `projects` VALUES(298, 39345, 'Standard Media', 'Google Compete: Banners: Develop Resizes', 'This task involves developing a set of standard media ad resizes.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-146', 6, 1, 1, 1, 0, 0, 100, '2012-02-13', '2012-02-17', 1, 'Waiting on final approvals.', '2012-02-10 15:48:34', '2012-03-06 16:26:51', 11, NULL, NULL);
INSERT INTO `projects` VALUES(299, 39008, 'Standard Media', 'Office One Note Mobile: Implement Multi-ClickTag', '', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-143', 21, 1, 1, 1, 0, 0, 100, '2011-02-07', '2011-02-10', 1, 'These are complete. Waiting on final approvals.', '2012-02-10 15:51:04', '2012-03-06 16:25:11', 11, NULL, NULL);
INSERT INTO `projects` VALUES(300, 40378, 'Standard Media', 'CL_Equities_Media: Develop Standard Media Banners: Create 300x250 Test', 'We''re not sure if the comp attached below is going to work or not within the spec (see below) and so this task is to test it.', 'https://razorfish.jira.com/browse/MCEQUITYMEDIA-2', 1, 1, 1, 1, 0, 0, 100, '2012-02-13', '2012-02-16', 1, 'The offshore team did a great job on this. They were able to get the creative down to 40k and the creative team was happy.', '2012-02-13 12:50:07', '2012-03-06 16:24:58', 4, NULL, NULL);
INSERT INTO `projects` VALUES(301, NULL, 'Rich Media', 'HAL Europe Event', 'This project involves building out a set of standard media banners with a very quick turnaround time.', 'https://razorfish.jira.com/browse/HALSTANMMXI-60', 4, 0, 0, 1, 0, 0, 0, '2012-02-14', '2012-02-16', 3, '', '2012-02-13 16:36:01', '2012-03-26 19:08:47', 6, NULL, NULL);
INSERT INTO `projects` VALUES(302, 39345, 'Standard Media', 'Google Compete: Banners: Develop Chair & Coffee Prototypes', 'This task involves developing two prototype units. The creative executions are very similar with the only difference being the images.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-147', 2, 1, 1, 1, 0, 0, 100, '2012-02-15', '2012-03-15', 1, '', '2012-02-15 13:34:19', '2012-03-06 16:25:08', 11, NULL, NULL);
INSERT INTO `projects` VALUES(303, 39345, 'Standard Media', 'Google Compete: Banners: Develop Chair Resizes', 'This task involves developing a set of standard media ad resizes for the Chair creative. Please start from the prototype attached below.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-148', 5, 1, 1, 1, 0, 0, 100, '2012-02-15', '2012-03-15', 1, '', '2012-02-15 13:36:54', '2012-03-06 16:25:07', 11, NULL, NULL);
INSERT INTO `projects` VALUES(304, 39345, 'Standard Media', 'Google Compete: Banners: Develop Coffee Resizes', 'This task involves developing a set of standard media ad resizes for the Coffee creative. Please start from the prototype attached below.', 'https://razorfish.jira.com/browse/OFFICESTANMMXI-149', 5, 1, 1, 1, 0, 0, 100, '2012-02-15', '2012-03-15', 1, '', '2012-02-15 13:38:24', '2012-03-06 16:26:11', 11, NULL, NULL);
INSERT INTO `projects` VALUES(305, 39018, 'Standard Media', 'Tempur Pedic 2012 Q1 Standard Banners: Consideration Banner Revisions', 'Need to revise end frames for two sets of existing banners:', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-35', 6, 0, 1, 1, 0, 0, 100, '2012-02-15', '2012-02-15', 1, '', '2012-02-15 16:27:19', '2012-05-07 12:37:15', 14, NULL, NULL);
INSERT INTO `projects` VALUES(306, 40049, 'Standard Media', 'Ergo and Remessaging Banners: Develop Remessage Resizes w/Variations', 'This task involves developing six standard media ads. There are two sizes and three creatives.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-30', 12, 1, 1, 1, 0, 0, 100, '2012-02-16', '2012-02-17', 1, 'Waiting on final approvals.', '2012-02-16 14:47:58', '2012-03-06 16:24:55', 14, NULL, NULL);
INSERT INTO `projects` VALUES(307, 41289, 'Standard Media', 'TNZ 41289 Dual Destination Standard Banners', 'In march we have budget set aside for a Dual Destination (aka Cook Island) campaign. Therefore we will need to produce a set of standard flash banners for this campaign. \r\nUpdate existing Tahiti with new copy and imagery provided from HAL. 1 IAB flash standard executions.', 'https://razorfish.jira.com/browse/TNZSTDMMXI-29', 3, 1, 1, 0, 0, 0, 100, '2012-02-27', '2012-02-28', 3, 'Waiting on final approvals.', '2012-02-17 12:50:54', '2012-03-06 16:19:46', 7, NULL, NULL);
INSERT INTO `projects` VALUES(308, 40049, 'Standard Media', 'Ergo and Remessaging Banners: Develop Remessage Non-Offer Units', 'This task involves developing nine standard media ads. There are three sizes and three creatives.\r\nWe are taking the existing Remessage banners that were completed last week, and simply revising the endframes to remove the finance offer and update the CTA buttons.\r\n', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-37', 12, 1, 1, 1, 0, 0, 100, '2012-02-21', '2012-02-23', 1, 'Waiting on final approvals', '2012-02-21 16:28:17', '2012-03-06 16:24:55', 14, NULL, NULL);
INSERT INTO `projects` VALUES(309, 40391, 'Standard Media', 'Encounter The Pint: Develop Standard Media Ads: Create 300x250 Prototype Units', 'This task involves developing two standard media Flash ads. These will be used as a guide for the resizes, so make ''em awesome.\r\n', 'https://razorfish.jira.com/browse/MCINNOV-2', 6, 1, 1, 1, 0, 0, 100, '2012-02-24', '2012-02-28', 3, 'Waiting on final approvals.', '2012-02-24 15:54:35', '2012-03-06 16:27:15', 5, NULL, NULL);
INSERT INTO `projects` VALUES(310, 40049, 'Standard Media', 'Tempur Pedic 2012 Q1 Standard Banners: Develop 300x250 Rob/Judy Prototype', 'This task involves developing two 300x250 Flash ads. The only difference in the units is the CTA button copy, as shown in the PSD', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-24', 2, 1, 1, 1, 0, 0, 100, '2012-02-27', '2012-02-28', 3, '', '2012-02-24 16:18:08', '2012-03-01 13:20:13', 14, NULL, NULL);
INSERT INTO `projects` VALUES(311, 40448, 'Standard Media', 'March Digital Insert: Develop Meebo Unit', '', 'https://razorfish.jira.com/browse/BBSM-94', 1, 0, 0, 1, 0, 0, 0, '2012-03-01', '2012-03-25', 2, 'Didn''t happen.', '2012-02-29 01:43:23', '2012-04-16 13:43:53', 10, NULL, NULL);
INSERT INTO `projects` VALUES(312, 40448, 'Standard Media', 'March Digital Insert: Develop MSN Unit (300x600)', '', 'https://razorfish.jira.com/browse/BBSM-95', 1, 1, 1, 1, 0, 0, 5, '2012-03-01', '2012-03-25', 3, 'Bosz should handle weekly updates.', '2012-02-29 01:46:03', '2012-03-13 12:48:09', 10, NULL, NULL);
INSERT INTO `projects` VALUES(313, 40448, 'Standard Media', 'March Digital Insert: Develop USA Today, CNET Units (970x66)', '', 'https://razorfish.jira.com/browse/BBSM-99', 1, 1, 1, 1, 0, 0, 5, '2012-03-01', '2012-03-25', 3, 'Bosz should handle weekly updates.', '2012-02-29 01:50:43', '2012-03-13 12:48:10', 10, NULL, NULL);
INSERT INTO `projects` VALUES(314, 40448, 'Standard Media', 'March Digital Insert: Develop CBS News, CNET Units (970x250)', '', 'https://razorfish.jira.com/browse/BBSM-100', 1, 1, 1, 1, 0, 0, 5, '2012-03-01', '2012-03-25', 3, 'Bosz should handle weekly updates.', '2012-02-29 01:52:07', '2012-03-13 12:48:10', 10, NULL, NULL);
INSERT INTO `projects` VALUES(315, 40448, 'Standard Media', 'March Digital Insert: Develop Yahoo Units (954x60)', '', 'https://razorfish.jira.com/browse/BBSM-101', 1, 1, 1, 1, 0, 0, 5, '2012-03-01', '2012-03-25', 3, 'Bosz should handle weekly updates.', '2012-02-29 01:53:22', '2012-03-13 12:48:11', 10, NULL, NULL);
INSERT INTO `projects` VALUES(316, 40049, 'Standard Media', 'Tempur Pedic 2012 Q1 Standard Banners: March Finance Offer Revs', 'This task involves revising five sets of Flash ads that all had the Finance offer in the final frame copy. We only need to change the date on the final frame of these ads, from Feb. 26 to Mar. 13', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-38', 15, 1, 1, 1, 0, 0, 100, '2012-03-01', '2012-03-06', 3, 'Waiting on final approvals.', '2012-03-01 12:19:09', '2012-03-09 10:50:55', 14, NULL, NULL);
INSERT INTO `projects` VALUES(317, 40049, 'Standard Media', 'Tempur Pedic 2012 Q1 Standard Banners: Develop 300x250 Rob/Judy Resizes', 'This task involves developing three sets of Flash ads. There is one creative and three executions that include copy/cta updates. Please start from the prototypes attached below.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-25', 6, 1, 1, 1, 0, 0, 100, '2012-02-27', '2012-03-02', 3, 'Waiting on final approvals.', '2012-03-01 13:19:35', '2012-03-06 16:20:38', 14, NULL, NULL);
INSERT INTO `projects` VALUES(318, 40049, 'Standard Media', 'Tempur Pedic 2012 Q1 Standard Banners: Develop Rob/Judy Creative Update', '', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-39', 6, 1, 1, 1, 0, 0, 100, '2012-03-01', '2012-03-02', 3, 'Waiting on final approvals.', '2012-03-01 13:20:56', '2012-03-26 18:36:33', 14, NULL, NULL);
INSERT INTO `projects` VALUES(319, 40448, 'Standard Media', 'March Deal of the Day', '', 'https://razorfish.jira.com/browse/BBSM-107', 3, 1, 1, 1, 0, 0, 100, '2012-03-02', '2012-03-18', 3, 'Waiting on final approvals.', '2012-03-01 18:34:13', '2012-04-18 13:30:18', 10, NULL, NULL);
INSERT INTO `projects` VALUES(320, 40391, 'Standard Media', 'Encounter The Pint: Develop Standard Media Ads: Create Resizes', 'This task involves developing two standard media Flash ads. These will be used as a guide for the resizes, so make ''em awesome.\r\n', 'https://razorfish.jira.com/browse/MCINNOV-3', 6, 1, 1, 1, 0, 0, 100, '2012-02-29', '2012-03-05', 1, 'Waiting on final approvals.', '2012-03-06 16:24:22', '2012-04-09 13:23:58', 5, NULL, NULL);
INSERT INTO `projects` VALUES(321, 38455, 'Standard Media', 'MICRO38455 - Bing - 2012 Sounders Banner Animation', '', 'https://razorfish.jira.com/browse/BINGRICHMMXI-21', 1, 0, 1, 1, 0, 0, 100, '2012-03-09', '2012-03-13', 2, '', '2012-03-06 18:02:55', '2012-03-26 18:37:35', 2, NULL, NULL);
INSERT INTO `projects` VALUES(322, NULL, 'Standard Media', 'BBY Tumri Personalization Banners', 'This task involves building out a set of 3 standard media banners that are being sent to Tumri and are being called templates.', 'https://razorfish.jira.com/browse/BBSM-98', 3, 0, 1, 1, 0, 0, 100, '2012-02-29', '2012-03-26', 2, '', '2012-03-06 19:23:30', '2012-03-26 19:10:22', 10, NULL, NULL);
INSERT INTO `projects` VALUES(323, 40386, 'Standard Media', 'CL NHL 2012 Phase 2: Develop Standard Media Banners', 'Phase 2 of CL NHL support, same job number/specs as Phase 1, just creative refresh. I "cloned" Phase 1 tasks but will need to update attachments/designs etc once available. I''ll update schedule asap. ', 'https://razorfish.jira.com/browse/MCCLNHL-9', 12, 1, 1, 1, 0, 0, 100, '2012-03-07', '2012-04-13', 1, 'Waiting on final approvals.', '2012-03-07 23:02:48', '2012-05-07 12:38:11', 4, NULL, NULL);
INSERT INTO `projects` VALUES(326, 40387, 'Standard Media', 'CL Nascar Media: Develop Standard Media Banners', '', 'https://razorfish.jira.com/browse/MCNASSUP-1', 6, 1, 1, 1, 0, 0, 100, '2012-03-09', '2012-04-10', 1, 'Waiting on final approvals.', '2012-03-09 15:39:35', '2012-05-07 12:38:10', 4, NULL, NULL);
INSERT INTO `projects` VALUES(325, 40049, 'Standard Media', 'Ergo and Remessaging Banners: March Finance Offer Fixes', 'Take the 5 sets of ads we just revised with the March finance offer and change the date on the end frame from Mar. 13 to Mar. 12.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-41', 15, 1, 1, 1, 0, 0, 100, '2012-03-08', '2012-03-09', 3, 'Waiting on final approvals.', '2012-03-09 10:51:48', '2012-03-26 18:36:35', 14, NULL, NULL);
INSERT INTO `projects` VALUES(327, NULL, 'Other', 'Bing Awards Site Update', 'This site involves building out 3 awards show submission pages on our property: awardshowsubmission.com.', 'https://razorfish.jira.com/browse/BINGPORT-2', 3, 0, 1, 0, 0, 0, 100, '2012-03-16', '2012-03-23', 2, '', '2012-03-16 15:49:13', '2012-05-03 14:16:02', 17, NULL, NULL);
INSERT INTO `projects` VALUES(328, 41230, 'Standard Media', 'BBY Spring Digital Imaging', 'This task involves developing a set of 6 standard media ad units.', 'https://razorfish.jira.com/browse/BBSM-130', 6, 1, 1, 1, 0, 0, 90, '2012-04-01', '2012-04-30', 2, 'Waiting on resize feedback.\r\n\r\nMatt started this on Friday (4/11). The prototype has been client approved and resizes should start on 4/18. ', '2012-03-21 16:46:32', '2012-05-07 12:40:12', 10, NULL, NULL);
INSERT INTO `projects` VALUES(329, 41429, 'Standard Media', 'BBY GPS', '', 'https://razorfish.jira.com/browse/BBSM-131', 3, 1, 1, 1, 0, 0, 50, '2012-04-01', '2012-05-01', 4, 'We''re waiting on the client to approve the prototype.', '2012-03-21 16:47:43', '2012-05-07 12:43:43', 10, NULL, NULL);
INSERT INTO `projects` VALUES(330, 40049, 'Standard Media', 'Tempur Pedic FY12: Simplicity Banners', 'This task involves creating three sets of Flash ads. There are nine ads total.\r\n', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-42', 9, 1, 1, 1, 0, 0, 100, '2012-03-22', '2012-03-27', 2, 'We''re waiting on final approvals.', '2012-03-22 12:20:06', '2012-04-23 12:31:42', 14, NULL, NULL);
INSERT INTO `projects` VALUES(331, 40049, 'Standard Media', 'Tempur Pedic FY12: Simplicity Banners - Create 300x250 Prototype', 'This task involves creating a single Flash 300x250 unit. This will be used as a guide for the resizes, so make it great.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-43', 1, 1, 1, 1, 0, 0, 100, '2012-03-26', '2012-03-27', 1, '', '2012-03-26 18:36:12', '2012-04-09 13:16:33', 10, NULL, NULL);
INSERT INTO `projects` VALUES(332, NULL, 'Standard Media', 'Tempur Pedic FY12: Add Video to Extranet', 'This task involves adding a video to the extranet for a client review. The video should be setup to progressively download using the basic embed code.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-45', 1, 0, 1, 1, 0, 0, 100, '2012-03-27', '2012-03-27', 1, '', '2012-03-27 11:37:22', '2012-03-29 16:21:47', 14, NULL, NULL);
INSERT INTO `projects` VALUES(333, 40378, 'Standard Media', 'CL_Equities_Media: Develop Standard Media Banners', 'This task involves developing a total of eight standard media ad units along with companion mobile banners (static). There are two designs and one CTA that need to be implemented. These should also be built out in the three basic sizes (see below).', 'https://razorfish.jira.com/browse/MCEQUITYMEDIA-1', 8, 1, 1, 1, 0, 0, 100, '2012-03-29', '2012-04-04', 1, 'The final iceberg update has been completed. We''re waiting on final approvals.\r\n\r\nSteven will be out of the office Thursday, March 29th through Thursday, April 12th. Please contact Anna Powers or Ryan Bond for any project needs during his absence.', '2012-03-29 16:17:56', '2012-04-25 15:36:24', 4, NULL, NULL);
INSERT INTO `projects` VALUES(334, 40049, 'Standard Media', 'Tempur Pedic FY12: Simplicity Banners - Create Claire Resizes', 'This task involves developing the alternate sizes needed based on the prototype provided.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-47', 3, 1, 1, 1, 0, 0, 100, '2012-04-03', '2012-04-10', 1, 'Waiting on final approvals.\r\n\r\nFor some reason, the creative team didn''t add the final final PSDs. There were some final tweaks that needed to happen after initial development. There is also an update that involves making sure that the logo stays up the entire animation. ', '2012-04-03 12:57:47', '2012-04-17 16:15:30', 10, NULL, NULL);
INSERT INTO `projects` VALUES(335, 40049, 'Standard Media', 'Tempur Pedic FY12: Simplicity Banners - Create JeanJosh Resizes', 'This task involves developing the alternate sizes needed based on the prototype provided.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-49', 3, 1, 1, 1, 0, 0, 100, '2012-04-03', '2012-04-09', 1, 'Waiting on final approvals.\r\n\r\n\r\nFor some reason, the creative team didn''t add the final final PSDs. There were some final tweaks that needed to happen after initial development.  ', '2012-04-03 12:58:25', '2012-04-17 16:15:31', 10, NULL, NULL);
INSERT INTO `projects` VALUES(336, 40049, 'Rich Media', 'Simplicity RM Expandable Unit', 'This task involves updating an existing rich media unit with new copy and assets.', 'https://razorfish.jira.com/browse/TEMPURPEDICQII-1', 2, 1, 1, 1, 0, 0, 100, '2012-04-10', '2012-04-20', 1, '', '2012-04-10 13:00:15', '2012-05-07 12:38:24', 14, NULL, NULL);
INSERT INTO `projects` VALUES(345, 37507, 'Other', 'Life Never Stops', 'High Complexity Widget', 'https://razorfish.jira.com/browse/EXPW-468', 6, 0, 0, 0, 0, 0, 0, '2012-05-09', NULL, 3, '', '2012-05-03 14:25:59', '2012-05-03 14:25:59', 13, NULL, NULL);
INSERT INTO `projects` VALUES(337, 40383, 'Standard Media', 'Coors Light Night Rules: Update Standard Media Ads', 'This task involves developing 6 standard media ads.\r\n', 'https://razorfish.jira.com/browse/MCNIGHTRULES-24', 6, 1, 1, 0, 0, 0, 90, '2012-04-16', '2012-04-23', 1, 'Update: This is likely to disappear.\r\n\r\nThese are similar to the Aluminum Pint ads created last year. The task will involve updating existing units.', '2012-04-16 12:23:57', '2012-05-07 12:38:57', 4, NULL, NULL);
INSERT INTO `projects` VALUES(338, 40049, 'Standard Media', 'Tempur Pedic FY12: Q2 Mattress Banners', 'Create two new sets of banners, three sizes each, for a total of 6 Flash units.', 'https://razorfish.jira.com/browse/TEMPURPEDICQII-3', 6, 1, 1, 1, 0, 0, 100, '2012-04-17', '2012-04-23', 3, 'Waiting on final approvals.', '2012-04-17 17:36:40', '2012-05-07 12:52:08', 14, NULL, NULL);
INSERT INTO `projects` VALUES(341, 40435, 'Standard Media', 'MHL Vets Refresh', 'This task involves updating ?? of last year''s banners with some minor creative changes (as well as copyright updates).', 'https://razorfish.jira.com/browse/MCVETS-1', 3, 1, 0, 1, 0, 0, 0, '2012-04-19', '2012-05-01', 2, 'This turned out to only be static images.', '2012-04-19 11:03:55', '2012-04-23 12:36:46', 4, NULL, NULL);
INSERT INTO `projects` VALUES(342, 41669, 'Standard Media', 'Aluminum Pint Video App Banners', 'This task involves developing two sets of standard media ads (sizes are below).\r\n\r\nUnit sizes: \r\n300x250\r\n728x90\r\n160x600\r\n300x60 (Odd one)\r\n', 'https://razorfish.jira.com/browse/MCINNOV-8', 6, 1, 1, 0, 0, 0, 0, '2012-04-30', '2012-05-10', 2, '', '2012-04-30 13:30:48', '2012-04-30 13:52:42', 5, NULL, NULL);
INSERT INTO `projects` VALUES(343, 40049, 'Standard Media', 'Q4 Lead Gen Standard Banners - Cloud Offer Update', 'Revise the Cloud set of Re-Message banners with new endframe content.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-53', 3, 1, 1, 0, 0, 0, 100, '2012-05-02', '2012-05-09', 3, 'There are going to be some more copy updates coming soon (likely to hit 5/8 or 5/9).', '2012-05-02 18:15:47', '2012-05-07 13:27:55', 14, NULL, NULL);
INSERT INTO `projects` VALUES(344, 40049, 'Standard Media', 'Q4 Lead Gen Standard Banners - Financing CTA - Re-Message banner updates', 'Revise the set of Re-Message banners with 2 new endframe dates.', 'https://razorfish.jira.com/browse/TEMPURPEDICSTANMMXI-52', 18, 1, 1, 0, 0, 0, 0, '2012-05-02', '2012-05-09', 3, '', '2012-05-02 18:16:41', '2012-05-02 18:16:58', 14, NULL, NULL);
INSERT INTO `projects` VALUES(346, 37507, 'Other', 'School Of Credit', 'Medium Complexity Widget', 'https://razorfish.jira.com/browse/EXPW-469', 6, 0, 0, 0, 0, 0, 0, '2012-05-09', NULL, 3, '', '2012-05-03 14:26:02', '2012-05-03 14:26:02', 13, NULL, NULL);
INSERT INTO `projects` VALUES(347, 37507, 'Other', 'To Rent Or To Own', 'Low Complexity Widget', 'https://razorfish.jira.com/browse/EXPW-470', 6, 0, 0, 0, 0, 0, 0, '2012-05-09', NULL, 3, '', '2012-05-03 14:26:05', '2012-05-03 14:26:05', 13, NULL, NULL);
INSERT INTO `projects` VALUES(348, 37507, 'Other', 'Life Of A Credit Score', 'Low Complexity Widget', 'https://razorfish.jira.com/browse/EXPW-471', 6, 0, 0, 0, 0, 0, 0, '2012-05-09', NULL, 3, '', '2012-05-03 14:26:08', '2012-05-03 14:26:08', 13, NULL, NULL);
INSERT INTO `projects` VALUES(349, 37507, 'Other', 'Credit Coaster', 'Low Complexity Widget', 'https://razorfish.jira.com/browse/EXPW-472', 6, 0, 0, 0, 0, 0, 0, '2012-05-09', NULL, 3, '', '2012-05-03 14:26:12', '2012-05-03 14:26:12', 13, NULL, NULL);
INSERT INTO `projects` VALUES(350, 37507, 'Other', 'Features Forward', 'Low Complexity Widget', 'https://razorfish.jira.com/browse/EXPW-473', 6, 0, 0, 0, 0, 0, 0, '2012-05-09', NULL, 3, '', '2012-05-03 14:26:15', '2012-05-03 14:26:15', 13, NULL, NULL);
INSERT INTO `projects` VALUES(351, 38455, 'Standard Media', 'Bing Seattle Storm Banners 2012', 'This task possibly involves developing two (2) sets of standard media ads. There will be four (6) sizes and two (2) creatives.\r\n\r\nStandard Sizes:\r\n728x90\r\n728x100\r\n160x600\r\n300x100\r\n\r\nCustom Sizes:\r\nField Level: 1280x60px, :30secs\r\nFascia: 800x400px, :30secs', 'https://razorfish.jira.com/browse/BINGXII-40', 6, 1, 0, 0, 0, 0, 0, '2012-05-04', '2012-05-11', 3, 'This is supposed to be ready to start by Tuesday. The ad creative is pretty straight forward and contains simple motion. ', '2012-05-04 12:55:17', '2012-05-04 16:39:46', 2, NULL, NULL);
INSERT INTO `projects` VALUES(352, 42328, 'Both', 'Washington banners', 'Media Creative Concepting and Production for the M Launch.   Budget:  Approx. $2M.   Start Date:  Tuesday, May 8;  Media must be in market June 20 (launch date) which means it needs to traffic around June 11.  Will be a mix of standard, rich units, video insertions, potential full page take overs, and any â€œnever been done beforeâ€ media executions the team can dream up and deliver. ', '', 0, 1, 0, 0, 0, 0, 0, '2012-05-04', '2012-06-20', 1, 'Evelyn is going to get resourcing started by  uploading a placeholder resource plan that maps to a 2million budget. I working off the assumption that my rough draft schedule is gonna work. See attached.\r\nEvelyn is going to set up a JIRA account for Washington on Monday.\r\nIf you could give a heads up to your peeps that would be good. This time around, Iâ€™d like to get a flash designer involved during creative development to help with some flash prototyping and feasibility gut checks â€“ I would like them to be located in SF with the creative team.  \r\nTuesday Kick off with Austin team.', '2012-05-04 17:00:59', '2012-05-04 17:02:01', 18, NULL, NULL);
INSERT INTO `projects` VALUES(353, 41994, 'Standard Media', 'Q4 Custom Creative', 'There will possibly be six (6) creative executions that need to be built out in five (5) sizes.\r\n\r\n\r\n300x250, 160x600, 728x90, 180x150 and 234x60', 'https://razorfish.jira.com/browse/BINGXII-44', 30, 1, 0, 0, 0, 0, 0, '2012-05-14', '2012-06-01', 2, 'These are supposed to start on May 14th. We''re going to stagger the release of the creative executions. We''re trying to get two sets out on 6/1/12', '2012-05-07 12:59:55', '2012-05-07 13:15:43', 2, NULL, NULL);
INSERT INTO `projects` VALUES(354, 39564, 'Standard Media', 'Test Mobi and Emporium', 'Go through both (front & back) and report results', 'https://razorfish.jira.com/browse/WWRMSMAINT-89', 2, 0, 0, 0, 0, 0, 20, '2012-04-25', '2012-05-15', 3, '', '2012-05-07 15:44:54', '2012-05-07 15:46:15', 20, NULL, NULL);

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

--
-- Dumping data for table `project_managers`
--

INSERT INTO `project_managers` VALUES(1, 'CWK', 'Tara Willden', 'Tara.Willden@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-03-03 03:05:35', '2011-03-07 05:43:37');
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
INSERT INTO `project_managers` VALUES(15, '', 'Evelyn Chan', 'Evelyn.Chan@razorfish.com', NULL, NULL, 'San Francisco, CA', '2011-03-21 09:11:06', '2012-04-18 13:31:06');
INSERT INTO `project_managers` VALUES(16, 'FTE', 'Joseph Kamel', 'Joseph.Kamel@razorfish.com', NULL, NULL, 'San Francisco, CA.', '2011-03-24 11:05:14', '2011-03-24 11:05:14');
INSERT INTO `project_managers` VALUES(17, '', 'Yee-Shing Yang', 'Yee-Shing.Yang@razorfish.com', NULL, NULL, '', '2011-04-25 19:32:27', '2011-04-25 19:32:27');
INSERT INTO `project_managers` VALUES(18, 'FTE', 'Katie Paries', 'Katie.Paries@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-04-26 11:45:04', '2011-04-26 11:45:13');
INSERT INTO `project_managers` VALUES(19, 'FTE', 'Laura Dunn-Mark', 'Laura.Dunn-Mark@razorfish.com', NULL, NULL, '', '2011-04-28 11:49:56', '2011-04-28 11:49:56');
INSERT INTO `project_managers` VALUES(20, 'FTE', 'Gordy Sealy', '', NULL, NULL, 'Portland, OR.', '2011-05-16 15:51:49', '2011-05-16 15:51:49');
INSERT INTO `project_managers` VALUES(21, 'FTE', 'Sharon Wells', 'Sharon.Wells@razorfish.com', NULL, NULL, 'San Francisco, CA.', '2011-06-03 12:32:24', '2011-06-03 12:32:24');
INSERT INTO `project_managers` VALUES(22, 'FTE', 'Hans Janowitz', 'Hans.Janowitz@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-06-23 11:21:47', '2011-06-23 11:21:47');
INSERT INTO `project_managers` VALUES(23, '', 'Stephanie Metzger', 'Stephanie.Metzger@razorfish.com', NULL, NULL, '', '2011-08-08 12:51:59', '2011-08-08 12:51:59');
INSERT INTO `project_managers` VALUES(24, 'FTE', 'Brad Smith', 'Brad.Smith@razorfish.com', NULL, NULL, 'San Francisco, CA.', '2011-08-22 14:07:58', '2011-08-22 14:07:58');
INSERT INTO `project_managers` VALUES(25, 'FTE', 'Matthew Bouchard', 'matthew.bouchard@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-09-01 18:26:15', '2011-09-01 18:26:15');
INSERT INTO `project_managers` VALUES(26, 'FTE', 'Karen Fong', 'Karen.Fong@razorfish.com', NULL, NULL, 'San Francisco, CA.', '2011-09-29 13:14:40', '2011-09-29 13:14:40');
INSERT INTO `project_managers` VALUES(27, '', 'Karen Bozeman ', 'Karen.Bozeman@razorfish.com', NULL, NULL, 'San Francisco', '2011-10-06 16:53:39', '2011-10-06 16:53:39');
INSERT INTO `project_managers` VALUES(28, 'FTE', 'Jessica Burke', 'Jessica.Burke@razorfish.com', NULL, NULL, '', '2011-11-01 11:25:35', '2011-11-01 11:25:35');
INSERT INTO `project_managers` VALUES(29, 'FTE', 'Matthew Newland', 'Matt.Newell@razorfish.com', NULL, NULL, 'San Francisco, CA.', '2011-11-03 22:06:30', '2011-11-03 22:06:30');
INSERT INTO `project_managers` VALUES(30, 'CWK', 'Stan Otani', 'stan.otani@razorfish.com', NULL, NULL, 'Portland, OR.', '2011-11-08 18:06:15', '2011-11-08 18:06:15');
INSERT INTO `project_managers` VALUES(31, 'FTE', 'Carla Rogers', 'Carla.Rogers@razorfish.com', NULL, NULL, '', '2011-12-20 13:09:13', '2011-12-20 13:09:13');
INSERT INTO `project_managers` VALUES(32, '', 'Matthew Newell', 'Matt.Newell@razorfish.com', NULL, NULL, 'San Francisco', '2012-02-01 17:01:27', '2012-02-01 17:01:27');
INSERT INTO `project_managers` VALUES(33, 'CWK', 'Sharon Kyne', 'Sharon.Kyne@razorfish.com', NULL, NULL, 'San Francisco', '2012-02-06 18:56:27', '2012-02-06 18:56:27');
INSERT INTO `project_managers` VALUES(34, '', 'Christina Meredith', 'christina.meredith@razorfish.com', NULL, NULL, 'San Francisco, CA', '2012-04-05 12:39:16', '2012-04-05 12:39:16');
INSERT INTO `project_managers` VALUES(35, 'CWK', 'Nina Haley', 'Nina.Haley@razorfish.com', NULL, NULL, 'San Francisco, CA', '2012-04-18 13:28:37', '2012-04-18 13:28:37');
INSERT INTO `project_managers` VALUES(36, 'FTE', 'Mike Gibson', 'mike.gibson@razorfish.com', NULL, NULL, 'Seattle, WA', '2012-05-07 15:45:30', '2012-05-07 15:45:30');

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
INSERT INTO `project_managers_projects` VALUES(46, 14);
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
INSERT INTO `project_managers_projects` VALUES(67, 7);
INSERT INTO `project_managers_projects` VALUES(68, 7);
INSERT INTO `project_managers_projects` VALUES(69, 15);
INSERT INTO `project_managers_projects` VALUES(70, 10);
INSERT INTO `project_managers_projects` VALUES(71, 1);
INSERT INTO `project_managers_projects` VALUES(71, 5);
INSERT INTO `project_managers_projects` VALUES(72, 4);
INSERT INTO `project_managers_projects` VALUES(72, 17);
INSERT INTO `project_managers_projects` VALUES(73, 4);
INSERT INTO `project_managers_projects` VALUES(74, 2);
INSERT INTO `project_managers_projects` VALUES(75, 1);
INSERT INTO `project_managers_projects` VALUES(76, 10);
INSERT INTO `project_managers_projects` VALUES(77, 15);
INSERT INTO `project_managers_projects` VALUES(78, 15);
INSERT INTO `project_managers_projects` VALUES(79, 12);
INSERT INTO `project_managers_projects` VALUES(80, 18);
INSERT INTO `project_managers_projects` VALUES(81, 1);
INSERT INTO `project_managers_projects` VALUES(81, 2);
INSERT INTO `project_managers_projects` VALUES(82, 20);
INSERT INTO `project_managers_projects` VALUES(83, 4);
INSERT INTO `project_managers_projects` VALUES(83, 19);
INSERT INTO `project_managers_projects` VALUES(84, 19);
INSERT INTO `project_managers_projects` VALUES(85, 6);
INSERT INTO `project_managers_projects` VALUES(87, 1);
INSERT INTO `project_managers_projects` VALUES(88, 1);
INSERT INTO `project_managers_projects` VALUES(89, 2);
INSERT INTO `project_managers_projects` VALUES(90, 2);
INSERT INTO `project_managers_projects` VALUES(91, 2);
INSERT INTO `project_managers_projects` VALUES(92, 2);
INSERT INTO `project_managers_projects` VALUES(93, 7);
INSERT INTO `project_managers_projects` VALUES(93, 18);
INSERT INTO `project_managers_projects` VALUES(94, 20);
INSERT INTO `project_managers_projects` VALUES(95, 5);
INSERT INTO `project_managers_projects` VALUES(96, 20);
INSERT INTO `project_managers_projects` VALUES(97, 2);
INSERT INTO `project_managers_projects` VALUES(98, 8);
INSERT INTO `project_managers_projects` VALUES(99, 1);
INSERT INTO `project_managers_projects` VALUES(100, 12);
INSERT INTO `project_managers_projects` VALUES(101, 6);
INSERT INTO `project_managers_projects` VALUES(102, 1);
INSERT INTO `project_managers_projects` VALUES(103, 21);
INSERT INTO `project_managers_projects` VALUES(104, 1);
INSERT INTO `project_managers_projects` VALUES(105, 1);
INSERT INTO `project_managers_projects` VALUES(106, 6);
INSERT INTO `project_managers_projects` VALUES(107, 5);
INSERT INTO `project_managers_projects` VALUES(108, 1);
INSERT INTO `project_managers_projects` VALUES(109, 6);
INSERT INTO `project_managers_projects` VALUES(110, 6);
INSERT INTO `project_managers_projects` VALUES(111, 1);
INSERT INTO `project_managers_projects` VALUES(112, 2);
INSERT INTO `project_managers_projects` VALUES(113, 22);
INSERT INTO `project_managers_projects` VALUES(114, 6);
INSERT INTO `project_managers_projects` VALUES(115, 15);
INSERT INTO `project_managers_projects` VALUES(116, 2);
INSERT INTO `project_managers_projects` VALUES(116, 22);
INSERT INTO `project_managers_projects` VALUES(117, 13);
INSERT INTO `project_managers_projects` VALUES(118, 6);
INSERT INTO `project_managers_projects` VALUES(119, 1);
INSERT INTO `project_managers_projects` VALUES(120, 6);
INSERT INTO `project_managers_projects` VALUES(121, 12);
INSERT INTO `project_managers_projects` VALUES(122, 1);
INSERT INTO `project_managers_projects` VALUES(122, 8);
INSERT INTO `project_managers_projects` VALUES(123, 1);
INSERT INTO `project_managers_projects` VALUES(124, 1);
INSERT INTO `project_managers_projects` VALUES(125, 1);
INSERT INTO `project_managers_projects` VALUES(126, 7);
INSERT INTO `project_managers_projects` VALUES(127, 1);
INSERT INTO `project_managers_projects` VALUES(128, 13);
INSERT INTO `project_managers_projects` VALUES(129, 2);
INSERT INTO `project_managers_projects` VALUES(130, 12);
INSERT INTO `project_managers_projects` VALUES(131, 22);
INSERT INTO `project_managers_projects` VALUES(132, 1);
INSERT INTO `project_managers_projects` VALUES(132, 10);
INSERT INTO `project_managers_projects` VALUES(133, 1);
INSERT INTO `project_managers_projects` VALUES(134, 15);
INSERT INTO `project_managers_projects` VALUES(134, 23);
INSERT INTO `project_managers_projects` VALUES(135, 6);
INSERT INTO `project_managers_projects` VALUES(136, 6);
INSERT INTO `project_managers_projects` VALUES(138, 1);
INSERT INTO `project_managers_projects` VALUES(139, 1);
INSERT INTO `project_managers_projects` VALUES(139, 2);
INSERT INTO `project_managers_projects` VALUES(140, 10);
INSERT INTO `project_managers_projects` VALUES(141, 10);
INSERT INTO `project_managers_projects` VALUES(142, 10);
INSERT INTO `project_managers_projects` VALUES(143, 10);
INSERT INTO `project_managers_projects` VALUES(144, 13);
INSERT INTO `project_managers_projects` VALUES(145, 12);
INSERT INTO `project_managers_projects` VALUES(145, 13);
INSERT INTO `project_managers_projects` VALUES(146, 10);
INSERT INTO `project_managers_projects` VALUES(147, 6);
INSERT INTO `project_managers_projects` VALUES(148, 6);
INSERT INTO `project_managers_projects` VALUES(149, 24);
INSERT INTO `project_managers_projects` VALUES(150, 7);
INSERT INTO `project_managers_projects` VALUES(151, 10);
INSERT INTO `project_managers_projects` VALUES(152, 3);
INSERT INTO `project_managers_projects` VALUES(153, 5);
INSERT INTO `project_managers_projects` VALUES(154, 2);
INSERT INTO `project_managers_projects` VALUES(155, 10);
INSERT INTO `project_managers_projects` VALUES(156, 3);
INSERT INTO `project_managers_projects` VALUES(157, 25);
INSERT INTO `project_managers_projects` VALUES(158, 12);
INSERT INTO `project_managers_projects` VALUES(158, 13);
INSERT INTO `project_managers_projects` VALUES(159, 1);
INSERT INTO `project_managers_projects` VALUES(160, 10);
INSERT INTO `project_managers_projects` VALUES(161, 10);
INSERT INTO `project_managers_projects` VALUES(162, 5);
INSERT INTO `project_managers_projects` VALUES(163, 5);
INSERT INTO `project_managers_projects` VALUES(164, 5);
INSERT INTO `project_managers_projects` VALUES(165, 5);
INSERT INTO `project_managers_projects` VALUES(166, 1);
INSERT INTO `project_managers_projects` VALUES(167, 12);
INSERT INTO `project_managers_projects` VALUES(168, 10);
INSERT INTO `project_managers_projects` VALUES(169, 20);
INSERT INTO `project_managers_projects` VALUES(170, 8);
INSERT INTO `project_managers_projects` VALUES(171, 10);
INSERT INTO `project_managers_projects` VALUES(172, 10);
INSERT INTO `project_managers_projects` VALUES(173, 20);
INSERT INTO `project_managers_projects` VALUES(175, 1);
INSERT INTO `project_managers_projects` VALUES(176, 22);
INSERT INTO `project_managers_projects` VALUES(177, 10);
INSERT INTO `project_managers_projects` VALUES(178, 6);
INSERT INTO `project_managers_projects` VALUES(179, 10);
INSERT INTO `project_managers_projects` VALUES(180, 12);
INSERT INTO `project_managers_projects` VALUES(181, 5);
INSERT INTO `project_managers_projects` VALUES(182, 10);
INSERT INTO `project_managers_projects` VALUES(183, 26);
INSERT INTO `project_managers_projects` VALUES(184, 10);
INSERT INTO `project_managers_projects` VALUES(185, 1);
INSERT INTO `project_managers_projects` VALUES(186, 26);
INSERT INTO `project_managers_projects` VALUES(187, 22);
INSERT INTO `project_managers_projects` VALUES(188, 10);
INSERT INTO `project_managers_projects` VALUES(189, 5);
INSERT INTO `project_managers_projects` VALUES(190, 12);
INSERT INTO `project_managers_projects` VALUES(191, 12);
INSERT INTO `project_managers_projects` VALUES(192, 8);
INSERT INTO `project_managers_projects` VALUES(193, 27);
INSERT INTO `project_managers_projects` VALUES(196, 22);
INSERT INTO `project_managers_projects` VALUES(197, 6);
INSERT INTO `project_managers_projects` VALUES(198, 25);
INSERT INTO `project_managers_projects` VALUES(199, 8);
INSERT INTO `project_managers_projects` VALUES(200, 27);
INSERT INTO `project_managers_projects` VALUES(201, 10);
INSERT INTO `project_managers_projects` VALUES(202, 10);
INSERT INTO `project_managers_projects` VALUES(203, 10);
INSERT INTO `project_managers_projects` VALUES(204, 1);
INSERT INTO `project_managers_projects` VALUES(205, 27);
INSERT INTO `project_managers_projects` VALUES(206, 27);
INSERT INTO `project_managers_projects` VALUES(207, 27);
INSERT INTO `project_managers_projects` VALUES(208, 27);
INSERT INTO `project_managers_projects` VALUES(209, 15);
INSERT INTO `project_managers_projects` VALUES(209, 26);
INSERT INTO `project_managers_projects` VALUES(210, 25);
INSERT INTO `project_managers_projects` VALUES(211, 2);
INSERT INTO `project_managers_projects` VALUES(212, 1);
INSERT INTO `project_managers_projects` VALUES(212, 8);
INSERT INTO `project_managers_projects` VALUES(213, 2);
INSERT INTO `project_managers_projects` VALUES(214, 28);
INSERT INTO `project_managers_projects` VALUES(215, 12);
INSERT INTO `project_managers_projects` VALUES(216, 25);
INSERT INTO `project_managers_projects` VALUES(217, 29);
INSERT INTO `project_managers_projects` VALUES(220, 5);
INSERT INTO `project_managers_projects` VALUES(221, 5);
INSERT INTO `project_managers_projects` VALUES(222, 30);
INSERT INTO `project_managers_projects` VALUES(223, 22);
INSERT INTO `project_managers_projects` VALUES(224, 30);
INSERT INTO `project_managers_projects` VALUES(225, 1);
INSERT INTO `project_managers_projects` VALUES(226, 10);
INSERT INTO `project_managers_projects` VALUES(227, 22);
INSERT INTO `project_managers_projects` VALUES(228, 22);
INSERT INTO `project_managers_projects` VALUES(230, 22);
INSERT INTO `project_managers_projects` VALUES(231, 1);
INSERT INTO `project_managers_projects` VALUES(232, 10);
INSERT INTO `project_managers_projects` VALUES(233, 10);
INSERT INTO `project_managers_projects` VALUES(234, 10);
INSERT INTO `project_managers_projects` VALUES(235, 10);
INSERT INTO `project_managers_projects` VALUES(236, 10);
INSERT INTO `project_managers_projects` VALUES(237, 10);
INSERT INTO `project_managers_projects` VALUES(238, 10);
INSERT INTO `project_managers_projects` VALUES(239, 10);
INSERT INTO `project_managers_projects` VALUES(240, 2);
INSERT INTO `project_managers_projects` VALUES(241, 2);
INSERT INTO `project_managers_projects` VALUES(242, 2);
INSERT INTO `project_managers_projects` VALUES(243, 1);
INSERT INTO `project_managers_projects` VALUES(244, 29);
INSERT INTO `project_managers_projects` VALUES(245, 15);
INSERT INTO `project_managers_projects` VALUES(245, 26);
INSERT INTO `project_managers_projects` VALUES(246, 5);
INSERT INTO `project_managers_projects` VALUES(246, 15);
INSERT INTO `project_managers_projects` VALUES(247, 22);
INSERT INTO `project_managers_projects` VALUES(248, 28);
INSERT INTO `project_managers_projects` VALUES(249, 22);
INSERT INTO `project_managers_projects` VALUES(250, 29);
INSERT INTO `project_managers_projects` VALUES(251, 29);
INSERT INTO `project_managers_projects` VALUES(252, 22);
INSERT INTO `project_managers_projects` VALUES(253, 1);
INSERT INTO `project_managers_projects` VALUES(254, 1);
INSERT INTO `project_managers_projects` VALUES(255, 22);
INSERT INTO `project_managers_projects` VALUES(256, 22);
INSERT INTO `project_managers_projects` VALUES(257, 1);
INSERT INTO `project_managers_projects` VALUES(258, 26);
INSERT INTO `project_managers_projects` VALUES(261, 10);
INSERT INTO `project_managers_projects` VALUES(262, 10);
INSERT INTO `project_managers_projects` VALUES(263, 10);
INSERT INTO `project_managers_projects` VALUES(264, 10);
INSERT INTO `project_managers_projects` VALUES(265, 1);
INSERT INTO `project_managers_projects` VALUES(266, 1);
INSERT INTO `project_managers_projects` VALUES(267, 1);
INSERT INTO `project_managers_projects` VALUES(268, 31);
INSERT INTO `project_managers_projects` VALUES(269, 31);
INSERT INTO `project_managers_projects` VALUES(270, 22);
INSERT INTO `project_managers_projects` VALUES(271, 22);
INSERT INTO `project_managers_projects` VALUES(272, 22);
INSERT INTO `project_managers_projects` VALUES(273, 22);
INSERT INTO `project_managers_projects` VALUES(274, 8);
INSERT INTO `project_managers_projects` VALUES(275, 12);
INSERT INTO `project_managers_projects` VALUES(276, 30);
INSERT INTO `project_managers_projects` VALUES(277, 30);
INSERT INTO `project_managers_projects` VALUES(278, 3);
INSERT INTO `project_managers_projects` VALUES(279, 10);
INSERT INTO `project_managers_projects` VALUES(280, 10);
INSERT INTO `project_managers_projects` VALUES(281, 10);
INSERT INTO `project_managers_projects` VALUES(282, 10);
INSERT INTO `project_managers_projects` VALUES(283, 10);
INSERT INTO `project_managers_projects` VALUES(284, 10);
INSERT INTO `project_managers_projects` VALUES(285, 30);
INSERT INTO `project_managers_projects` VALUES(286, 2);
INSERT INTO `project_managers_projects` VALUES(287, 2);
INSERT INTO `project_managers_projects` VALUES(288, 8);
INSERT INTO `project_managers_projects` VALUES(289, 32);
INSERT INTO `project_managers_projects` VALUES(290, 5);
INSERT INTO `project_managers_projects` VALUES(290, 26);
INSERT INTO `project_managers_projects` VALUES(291, 32);
INSERT INTO `project_managers_projects` VALUES(292, 3);
INSERT INTO `project_managers_projects` VALUES(293, 33);
INSERT INTO `project_managers_projects` VALUES(294, 33);
INSERT INTO `project_managers_projects` VALUES(295, 33);
INSERT INTO `project_managers_projects` VALUES(296, 33);
INSERT INTO `project_managers_projects` VALUES(297, 22);
INSERT INTO `project_managers_projects` VALUES(298, 3);
INSERT INTO `project_managers_projects` VALUES(299, 30);
INSERT INTO `project_managers_projects` VALUES(300, 12);
INSERT INTO `project_managers_projects` VALUES(301, 10);
INSERT INTO `project_managers_projects` VALUES(302, 3);
INSERT INTO `project_managers_projects` VALUES(303, 3);
INSERT INTO `project_managers_projects` VALUES(304, 3);
INSERT INTO `project_managers_projects` VALUES(305, 22);
INSERT INTO `project_managers_projects` VALUES(306, 22);
INSERT INTO `project_managers_projects` VALUES(307, 10);
INSERT INTO `project_managers_projects` VALUES(308, 22);
INSERT INTO `project_managers_projects` VALUES(309, 13);
INSERT INTO `project_managers_projects` VALUES(310, 22);
INSERT INTO `project_managers_projects` VALUES(311, 32);
INSERT INTO `project_managers_projects` VALUES(312, 32);
INSERT INTO `project_managers_projects` VALUES(313, 32);
INSERT INTO `project_managers_projects` VALUES(314, 32);
INSERT INTO `project_managers_projects` VALUES(315, 32);
INSERT INTO `project_managers_projects` VALUES(316, 22);
INSERT INTO `project_managers_projects` VALUES(317, 22);
INSERT INTO `project_managers_projects` VALUES(318, 22);
INSERT INTO `project_managers_projects` VALUES(319, 15);
INSERT INTO `project_managers_projects` VALUES(319, 32);
INSERT INTO `project_managers_projects` VALUES(319, 35);
INSERT INTO `project_managers_projects` VALUES(320, 13);
INSERT INTO `project_managers_projects` VALUES(321, 2);
INSERT INTO `project_managers_projects` VALUES(322, 5);
INSERT INTO `project_managers_projects` VALUES(323, 12);
INSERT INTO `project_managers_projects` VALUES(323, 13);
INSERT INTO `project_managers_projects` VALUES(325, 22);
INSERT INTO `project_managers_projects` VALUES(326, 12);
INSERT INTO `project_managers_projects` VALUES(326, 13);
INSERT INTO `project_managers_projects` VALUES(327, 8);
INSERT INTO `project_managers_projects` VALUES(328, 5);
INSERT INTO `project_managers_projects` VALUES(328, 34);
INSERT INTO `project_managers_projects` VALUES(329, 5);
INSERT INTO `project_managers_projects` VALUES(329, 34);
INSERT INTO `project_managers_projects` VALUES(330, 22);
INSERT INTO `project_managers_projects` VALUES(331, 22);
INSERT INTO `project_managers_projects` VALUES(332, 22);
INSERT INTO `project_managers_projects` VALUES(333, 12);
INSERT INTO `project_managers_projects` VALUES(333, 13);
INSERT INTO `project_managers_projects` VALUES(334, 22);
INSERT INTO `project_managers_projects` VALUES(335, 22);
INSERT INTO `project_managers_projects` VALUES(336, 22);
INSERT INTO `project_managers_projects` VALUES(337, 13);
INSERT INTO `project_managers_projects` VALUES(338, 22);
INSERT INTO `project_managers_projects` VALUES(341, 20);
INSERT INTO `project_managers_projects` VALUES(342, 13);
INSERT INTO `project_managers_projects` VALUES(343, 22);
INSERT INTO `project_managers_projects` VALUES(344, 22);
INSERT INTO `project_managers_projects` VALUES(345, 33);
INSERT INTO `project_managers_projects` VALUES(346, 33);
INSERT INTO `project_managers_projects` VALUES(347, 33);
INSERT INTO `project_managers_projects` VALUES(348, 33);
INSERT INTO `project_managers_projects` VALUES(349, 33);
INSERT INTO `project_managers_projects` VALUES(350, 33);
INSERT INTO `project_managers_projects` VALUES(351, 1);
INSERT INTO `project_managers_projects` VALUES(352, 15);
INSERT INTO `project_managers_projects` VALUES(353, 1);
INSERT INTO `project_managers_projects` VALUES(354, 36);

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

--
-- Dumping data for table `qa_resources`
--

INSERT INTO `qa_resources` VALUES(1, 'CWK', NULL, 'Peter Mac Courtney', 'peter.maccourtney@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2011-03-03 22:35:35', '2011-03-07 06:41:01');
INSERT INTO `qa_resources` VALUES(2, 'CWK', NULL, 'Pablo Montero', 'pablo.montero@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2011-03-07 06:12:09', '2011-04-13 14:26:34');
INSERT INTO `qa_resources` VALUES(3, 'CWK', NULL, 'Rigoberto Lopez', 'rigoberto.lopez@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2011-04-01 02:05:56', '2011-04-01 02:06:04');
INSERT INTO `qa_resources` VALUES(4, 'CWK', NULL, 'Jorge Solis', 'Jorge.Solis@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2011-04-13 16:17:41', '2011-04-13 16:17:50');
INSERT INTO `qa_resources` VALUES(5, 'CWK', NULL, 'Josselyn Solorzano', 'Josselyn.solorzano@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2011-07-26 12:58:09', '2011-07-26 12:58:09');
INSERT INTO `qa_resources` VALUES(6, 'CWK', NULL, 'Carlos Garita', 'Carlos.Garita@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2011-10-05 11:39:58', '2011-10-05 11:39:58');
INSERT INTO `qa_resources` VALUES(7, '', NULL, 'Melanie Pratt', 'Melanie.Pratt@razorfish.com', NULL, NULL, 'San Francisco', 0, '2011-10-06 16:49:41', '2011-10-06 16:49:41');
INSERT INTO `qa_resources` VALUES(8, '', NULL, 'Rodrigo de la Torre', 'Rodrigo.Delatorre@razorfish.com', NULL, NULL, 'Argentina', 1, '2011-10-17 18:30:55', '2011-10-17 18:30:55');
INSERT INTO `qa_resources` VALUES(9, 'CWK', NULL, 'Sharon Phillips', 'sharon.phillips@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2012-01-24 16:55:57', '2012-01-24 16:55:57');
INSERT INTO `qa_resources` VALUES(10, 'FTE', NULL, 'Arnoldo Pacheco', 'Arnoldo.Pacheco@boszdigital.com', NULL, NULL, 'Costa Rica', 1, '2012-04-09 13:15:06', '2012-04-09 13:15:06');

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
INSERT INTO `qa_resources_projects` VALUES(39, 1);
INSERT INTO `qa_resources_projects` VALUES(41, 1);
INSERT INTO `qa_resources_projects` VALUES(43, 1);
INSERT INTO `qa_resources_projects` VALUES(43, 2);
INSERT INTO `qa_resources_projects` VALUES(46, 3);
INSERT INTO `qa_resources_projects` VALUES(46, 4);
INSERT INTO `qa_resources_projects` VALUES(47, 1);
INSERT INTO `qa_resources_projects` VALUES(51, 1);
INSERT INTO `qa_resources_projects` VALUES(52, 2);
INSERT INTO `qa_resources_projects` VALUES(52, 3);
INSERT INTO `qa_resources_projects` VALUES(55, 1);
INSERT INTO `qa_resources_projects` VALUES(56, 1);
INSERT INTO `qa_resources_projects` VALUES(59, 4);
INSERT INTO `qa_resources_projects` VALUES(64, 4);
INSERT INTO `qa_resources_projects` VALUES(66, 4);
INSERT INTO `qa_resources_projects` VALUES(67, 4);
INSERT INTO `qa_resources_projects` VALUES(71, 2);
INSERT INTO `qa_resources_projects` VALUES(71, 4);
INSERT INTO `qa_resources_projects` VALUES(74, 2);
INSERT INTO `qa_resources_projects` VALUES(74, 4);
INSERT INTO `qa_resources_projects` VALUES(75, 3);
INSERT INTO `qa_resources_projects` VALUES(75, 4);
INSERT INTO `qa_resources_projects` VALUES(78, 4);
INSERT INTO `qa_resources_projects` VALUES(79, 3);
INSERT INTO `qa_resources_projects` VALUES(79, 4);
INSERT INTO `qa_resources_projects` VALUES(83, 4);
INSERT INTO `qa_resources_projects` VALUES(84, 1);
INSERT INTO `qa_resources_projects` VALUES(84, 2);
INSERT INTO `qa_resources_projects` VALUES(84, 3);
INSERT INTO `qa_resources_projects` VALUES(84, 4);
INSERT INTO `qa_resources_projects` VALUES(87, 4);
INSERT INTO `qa_resources_projects` VALUES(88, 3);
INSERT INTO `qa_resources_projects` VALUES(88, 4);
INSERT INTO `qa_resources_projects` VALUES(89, 3);
INSERT INTO `qa_resources_projects` VALUES(92, 4);
INSERT INTO `qa_resources_projects` VALUES(93, 4);
INSERT INTO `qa_resources_projects` VALUES(94, 4);
INSERT INTO `qa_resources_projects` VALUES(96, 4);
INSERT INTO `qa_resources_projects` VALUES(97, 4);
INSERT INTO `qa_resources_projects` VALUES(98, 4);
INSERT INTO `qa_resources_projects` VALUES(99, 3);
INSERT INTO `qa_resources_projects` VALUES(100, 4);
INSERT INTO `qa_resources_projects` VALUES(106, 4);
INSERT INTO `qa_resources_projects` VALUES(109, 4);
INSERT INTO `qa_resources_projects` VALUES(113, 2);
INSERT INTO `qa_resources_projects` VALUES(113, 3);
INSERT INTO `qa_resources_projects` VALUES(113, 5);
INSERT INTO `qa_resources_projects` VALUES(114, 4);
INSERT INTO `qa_resources_projects` VALUES(115, 3);
INSERT INTO `qa_resources_projects` VALUES(117, 3);
INSERT INTO `qa_resources_projects` VALUES(119, 4);
INSERT INTO `qa_resources_projects` VALUES(120, 2);
INSERT INTO `qa_resources_projects` VALUES(120, 3);
INSERT INTO `qa_resources_projects` VALUES(120, 5);
INSERT INTO `qa_resources_projects` VALUES(121, 5);
INSERT INTO `qa_resources_projects` VALUES(124, 3);
INSERT INTO `qa_resources_projects` VALUES(124, 5);
INSERT INTO `qa_resources_projects` VALUES(129, 2);
INSERT INTO `qa_resources_projects` VALUES(129, 3);
INSERT INTO `qa_resources_projects` VALUES(129, 4);
INSERT INTO `qa_resources_projects` VALUES(129, 5);
INSERT INTO `qa_resources_projects` VALUES(130, 3);
INSERT INTO `qa_resources_projects` VALUES(131, 3);
INSERT INTO `qa_resources_projects` VALUES(132, 5);
INSERT INTO `qa_resources_projects` VALUES(133, 3);
INSERT INTO `qa_resources_projects` VALUES(133, 4);
INSERT INTO `qa_resources_projects` VALUES(133, 5);
INSERT INTO `qa_resources_projects` VALUES(135, 2);
INSERT INTO `qa_resources_projects` VALUES(135, 3);
INSERT INTO `qa_resources_projects` VALUES(135, 4);
INSERT INTO `qa_resources_projects` VALUES(135, 5);
INSERT INTO `qa_resources_projects` VALUES(136, 2);
INSERT INTO `qa_resources_projects` VALUES(136, 3);
INSERT INTO `qa_resources_projects` VALUES(136, 5);
INSERT INTO `qa_resources_projects` VALUES(138, 4);
INSERT INTO `qa_resources_projects` VALUES(139, 2);
INSERT INTO `qa_resources_projects` VALUES(139, 3);
INSERT INTO `qa_resources_projects` VALUES(140, 2);
INSERT INTO `qa_resources_projects` VALUES(140, 5);
INSERT INTO `qa_resources_projects` VALUES(141, 2);
INSERT INTO `qa_resources_projects` VALUES(142, 5);
INSERT INTO `qa_resources_projects` VALUES(144, 5);
INSERT INTO `qa_resources_projects` VALUES(145, 3);
INSERT INTO `qa_resources_projects` VALUES(146, 4);
INSERT INTO `qa_resources_projects` VALUES(147, 3);
INSERT INTO `qa_resources_projects` VALUES(148, 2);
INSERT INTO `qa_resources_projects` VALUES(148, 4);
INSERT INTO `qa_resources_projects` VALUES(155, 3);
INSERT INTO `qa_resources_projects` VALUES(155, 4);
INSERT INTO `qa_resources_projects` VALUES(156, 2);
INSERT INTO `qa_resources_projects` VALUES(156, 3);
INSERT INTO `qa_resources_projects` VALUES(156, 4);
INSERT INTO `qa_resources_projects` VALUES(156, 5);
INSERT INTO `qa_resources_projects` VALUES(157, 2);
INSERT INTO `qa_resources_projects` VALUES(157, 3);
INSERT INTO `qa_resources_projects` VALUES(157, 4);
INSERT INTO `qa_resources_projects` VALUES(158, 2);
INSERT INTO `qa_resources_projects` VALUES(158, 4);
INSERT INTO `qa_resources_projects` VALUES(158, 5);
INSERT INTO `qa_resources_projects` VALUES(159, 4);
INSERT INTO `qa_resources_projects` VALUES(159, 5);
INSERT INTO `qa_resources_projects` VALUES(166, 4);
INSERT INTO `qa_resources_projects` VALUES(167, 2);
INSERT INTO `qa_resources_projects` VALUES(168, 3);
INSERT INTO `qa_resources_projects` VALUES(168, 4);
INSERT INTO `qa_resources_projects` VALUES(171, 3);
INSERT INTO `qa_resources_projects` VALUES(172, 4);
INSERT INTO `qa_resources_projects` VALUES(172, 5);
INSERT INTO `qa_resources_projects` VALUES(173, 2);
INSERT INTO `qa_resources_projects` VALUES(175, 2);
INSERT INTO `qa_resources_projects` VALUES(175, 4);
INSERT INTO `qa_resources_projects` VALUES(176, 2);
INSERT INTO `qa_resources_projects` VALUES(176, 4);
INSERT INTO `qa_resources_projects` VALUES(178, 3);
INSERT INTO `qa_resources_projects` VALUES(179, 3);
INSERT INTO `qa_resources_projects` VALUES(179, 4);
INSERT INTO `qa_resources_projects` VALUES(180, 4);
INSERT INTO `qa_resources_projects` VALUES(180, 5);
INSERT INTO `qa_resources_projects` VALUES(181, 6);
INSERT INTO `qa_resources_projects` VALUES(184, 2);
INSERT INTO `qa_resources_projects` VALUES(185, 2);
INSERT INTO `qa_resources_projects` VALUES(185, 4);
INSERT INTO `qa_resources_projects` VALUES(188, 2);
INSERT INTO `qa_resources_projects` VALUES(188, 4);
INSERT INTO `qa_resources_projects` VALUES(190, 2);
INSERT INTO `qa_resources_projects` VALUES(191, 2);
INSERT INTO `qa_resources_projects` VALUES(192, 2);
INSERT INTO `qa_resources_projects` VALUES(193, 7);
INSERT INTO `qa_resources_projects` VALUES(193, 8);
INSERT INTO `qa_resources_projects` VALUES(196, 2);
INSERT INTO `qa_resources_projects` VALUES(196, 4);
INSERT INTO `qa_resources_projects` VALUES(198, 2);
INSERT INTO `qa_resources_projects` VALUES(198, 4);
INSERT INTO `qa_resources_projects` VALUES(199, 4);
INSERT INTO `qa_resources_projects` VALUES(200, 7);
INSERT INTO `qa_resources_projects` VALUES(200, 8);
INSERT INTO `qa_resources_projects` VALUES(201, 4);
INSERT INTO `qa_resources_projects` VALUES(204, 9);
INSERT INTO `qa_resources_projects` VALUES(205, 7);
INSERT INTO `qa_resources_projects` VALUES(205, 8);
INSERT INTO `qa_resources_projects` VALUES(206, 7);
INSERT INTO `qa_resources_projects` VALUES(206, 8);
INSERT INTO `qa_resources_projects` VALUES(207, 7);
INSERT INTO `qa_resources_projects` VALUES(207, 8);
INSERT INTO `qa_resources_projects` VALUES(208, 7);
INSERT INTO `qa_resources_projects` VALUES(208, 8);
INSERT INTO `qa_resources_projects` VALUES(212, 4);
INSERT INTO `qa_resources_projects` VALUES(213, 2);
INSERT INTO `qa_resources_projects` VALUES(215, 4);
INSERT INTO `qa_resources_projects` VALUES(217, 2);
INSERT INTO `qa_resources_projects` VALUES(223, 2);
INSERT INTO `qa_resources_projects` VALUES(227, 4);
INSERT INTO `qa_resources_projects` VALUES(228, 2);
INSERT INTO `qa_resources_projects` VALUES(245, 2);
INSERT INTO `qa_resources_projects` VALUES(252, 2);
INSERT INTO `qa_resources_projects` VALUES(253, 2);
INSERT INTO `qa_resources_projects` VALUES(254, 2);
INSERT INTO `qa_resources_projects` VALUES(255, 4);
INSERT INTO `qa_resources_projects` VALUES(256, 4);
INSERT INTO `qa_resources_projects` VALUES(257, 2);
INSERT INTO `qa_resources_projects` VALUES(275, 2);
INSERT INTO `qa_resources_projects` VALUES(275, 9);
INSERT INTO `qa_resources_projects` VALUES(276, 4);
INSERT INTO `qa_resources_projects` VALUES(277, 4);
INSERT INTO `qa_resources_projects` VALUES(278, 9);
INSERT INTO `qa_resources_projects` VALUES(285, 4);
INSERT INTO `qa_resources_projects` VALUES(286, 2);
INSERT INTO `qa_resources_projects` VALUES(286, 4);
INSERT INTO `qa_resources_projects` VALUES(286, 9);
INSERT INTO `qa_resources_projects` VALUES(288, 4);
INSERT INTO `qa_resources_projects` VALUES(288, 9);
INSERT INTO `qa_resources_projects` VALUES(291, 4);
INSERT INTO `qa_resources_projects` VALUES(291, 9);
INSERT INTO `qa_resources_projects` VALUES(291, 10);
INSERT INTO `qa_resources_projects` VALUES(293, 7);
INSERT INTO `qa_resources_projects` VALUES(294, 7);
INSERT INTO `qa_resources_projects` VALUES(295, 7);
INSERT INTO `qa_resources_projects` VALUES(296, 7);
INSERT INTO `qa_resources_projects` VALUES(298, 2);
INSERT INTO `qa_resources_projects` VALUES(298, 9);
INSERT INTO `qa_resources_projects` VALUES(299, 2);
INSERT INTO `qa_resources_projects` VALUES(299, 9);
INSERT INTO `qa_resources_projects` VALUES(302, 9);
INSERT INTO `qa_resources_projects` VALUES(303, 4);
INSERT INTO `qa_resources_projects` VALUES(303, 9);
INSERT INTO `qa_resources_projects` VALUES(304, 4);
INSERT INTO `qa_resources_projects` VALUES(304, 9);
INSERT INTO `qa_resources_projects` VALUES(306, 9);
INSERT INTO `qa_resources_projects` VALUES(308, 4);
INSERT INTO `qa_resources_projects` VALUES(308, 9);
INSERT INTO `qa_resources_projects` VALUES(309, 9);
INSERT INTO `qa_resources_projects` VALUES(310, 2);
INSERT INTO `qa_resources_projects` VALUES(310, 9);
INSERT INTO `qa_resources_projects` VALUES(311, 9);
INSERT INTO `qa_resources_projects` VALUES(312, 9);
INSERT INTO `qa_resources_projects` VALUES(313, 9);
INSERT INTO `qa_resources_projects` VALUES(314, 9);
INSERT INTO `qa_resources_projects` VALUES(315, 9);
INSERT INTO `qa_resources_projects` VALUES(316, 4);
INSERT INTO `qa_resources_projects` VALUES(316, 9);
INSERT INTO `qa_resources_projects` VALUES(317, 2);
INSERT INTO `qa_resources_projects` VALUES(317, 9);
INSERT INTO `qa_resources_projects` VALUES(318, 2);
INSERT INTO `qa_resources_projects` VALUES(318, 4);
INSERT INTO `qa_resources_projects` VALUES(318, 9);
INSERT INTO `qa_resources_projects` VALUES(319, 4);
INSERT INTO `qa_resources_projects` VALUES(319, 9);
INSERT INTO `qa_resources_projects` VALUES(320, 4);
INSERT INTO `qa_resources_projects` VALUES(320, 9);
INSERT INTO `qa_resources_projects` VALUES(323, 9);
INSERT INTO `qa_resources_projects` VALUES(323, 10);
INSERT INTO `qa_resources_projects` VALUES(325, 4);
INSERT INTO `qa_resources_projects` VALUES(325, 9);
INSERT INTO `qa_resources_projects` VALUES(326, 4);
INSERT INTO `qa_resources_projects` VALUES(326, 9);
INSERT INTO `qa_resources_projects` VALUES(328, 9);
INSERT INTO `qa_resources_projects` VALUES(329, 9);
INSERT INTO `qa_resources_projects` VALUES(330, 4);
INSERT INTO `qa_resources_projects` VALUES(330, 9);
INSERT INTO `qa_resources_projects` VALUES(330, 10);
INSERT INTO `qa_resources_projects` VALUES(331, 9);
INSERT INTO `qa_resources_projects` VALUES(333, 9);
INSERT INTO `qa_resources_projects` VALUES(333, 10);
INSERT INTO `qa_resources_projects` VALUES(334, 10);
INSERT INTO `qa_resources_projects` VALUES(335, 10);
INSERT INTO `qa_resources_projects` VALUES(336, 9);
INSERT INTO `qa_resources_projects` VALUES(336, 10);
INSERT INTO `qa_resources_projects` VALUES(337, 4);
INSERT INTO `qa_resources_projects` VALUES(337, 9);
INSERT INTO `qa_resources_projects` VALUES(338, 4);
INSERT INTO `qa_resources_projects` VALUES(338, 9);
INSERT INTO `qa_resources_projects` VALUES(341, 9);
INSERT INTO `qa_resources_projects` VALUES(343, 10);
INSERT INTO `qa_resources_projects` VALUES(345, 7);
INSERT INTO `qa_resources_projects` VALUES(346, 7);
INSERT INTO `qa_resources_projects` VALUES(347, 7);
INSERT INTO `qa_resources_projects` VALUES(348, 7);
INSERT INTO `qa_resources_projects` VALUES(349, 7);
INSERT INTO `qa_resources_projects` VALUES(350, 7);
INSERT INTO `qa_resources_projects` VALUES(351, 9);
INSERT INTO `qa_resources_projects` VALUES(353, 9);

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

--
-- Dumping data for table `upcoming_projects`
--

INSERT INTO `upcoming_projects` VALUES(14, 'Christina Meredith', 'christina.meredith@razorfish.com', 41230, 'BBY Spring Digital Imaging', 0, '2012-05-03 00:00:00', '2012-05-03 00:00:00', 'https://razorfish.jira.com/browse/BBSM-130', 1, 1, 'A flute without a hole, is a stick.\r\n\r\nA doughnut without a hole, is a danish.\r\n\r\n', '2012-04-04 16:06:23', '2012-04-18 12:58:59', 'Standard Media');
INSERT INTO `upcoming_projects` VALUES(13, 'Steven Basden', 'steven.basden@razorfish.com', 40386, 'CL NHL 2012 Phase 2', 0, '2012-03-07 00:00:00', '2012-03-07 00:00:00', 'https://razorfish.jira.com/browse/MCCLNHL-9', 1, 1, 'Phase 2 of CL NHL support, same job number/specs as Phase 1, just creative refresh. I "cloned" Phase 1 tasks but will need to update attachments/designs etc once available. I''ll update schedule asap.', '2012-03-07 18:45:50', '2012-03-12 14:35:46', 'Standard Media');
INSERT INTO `upcoming_projects` VALUES(12, 'Steven Bsden', 'steven.basden@razorfish.com', 40387, 'MC-CL-2012-NASCAR_Support', 0, '2012-04-02 00:00:00', '2012-04-02 00:00:00', 'https://razorfish.jira.com/browse/MCNASSUP-1', 1, 1, 'will update production schedule and other items in Jira asap. Feel free to setup subtasks accordingly', '2012-03-07 18:40:53', '2012-03-12 14:24:11', 'Standard Media');
INSERT INTO `upcoming_projects` VALUES(15, 'Christina Meredith', 'christina.meredith@razorfish.com', 41429, 'Spring GPS', 0, '2012-06-03 00:00:00', '2012-06-03 00:00:00', 'https://razorfish.jira.com/browse/BBSM-131', 1, 1, '', '2012-04-04 16:09:38', '2012-04-05 12:41:10', 'Standard Media');
INSERT INTO `upcoming_projects` VALUES(17, 'Ruby Halipoto', 'ruby.halipoto@razorfish.com', 0, 'Activision', 0, '2012-12-31 00:00:00', '2012-12-31 00:00:00', '', 1, 1, 'I need 5 CQ5 Developers to support the upcoming Call of Duty web development. I will also need 5 PLD''s to support this effort. \r\n \r\nmaybe we need another staff aug field or some other similar way to accomodate big web dev projects as such. \r\n \r\nalso consider the request you got from Wadood earlier for HTML coverage from Bosz. i could enter in projects like that with requests to staff.  \r\n \r\nmaybe you can add fields for dedicated team members, instead of by banner. \r\n \r\nsomething to noodle on', '2012-04-12 16:34:39', '2012-04-16 12:22:31', 'Other');
INSERT INTO `upcoming_projects` VALUES(20, 'Anna Powers', 'anna.powers@razorfish.com', 40383, 'Coors Light Night Rules', 0, '2012-04-24 00:00:00', '2012-04-24 00:00:00', 'Coors Light Night Rules: Update Standard Media Ads', 1, 1, 'Uploading the PSDs but these are pretty much the same as what we did last year.  Just new copy + a new Aluminum Pint. \r\n:) ', '2012-04-12 19:10:28', '2012-04-16 12:22:15', 'Standard Media');

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

INSERT INTO `users` VALUES(1, 'robsa', 'rob.sawyer@razorfish.com', '478bdec12b6d1c201cd1edccda13951d5a6f63ae', 'manager', NULL, 1, NULL, '2012-04-19 00:51:00', '2012-04-19 01:05:10', '2012-05-10 11:19:30');
INSERT INTO `users` VALUES(2, 'garrettgi', 'garrett.gillas@razorfish.com', '478bdec12b6d1c201cd1edccda13951d5a6f63ae', 'manager', NULL, 3, NULL, '2012-04-19 01:16:34', '2012-04-19 01:16:34', '2012-04-19 01:16:34');
