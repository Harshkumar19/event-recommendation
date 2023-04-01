-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 01, 2023 at 06:53 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `allevent`
--

DROP TABLE IF EXISTS `allevent`;
CREATE TABLE IF NOT EXISTS `allevent` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `eventName` varchar(200) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `allevents`
--

DROP TABLE IF EXISTS `allevents`;
CREATE TABLE IF NOT EXISTS `allevents` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allevents`
--

INSERT INTO `allevents` (`event_id`, `event_name`) VALUES
(1, '2017 Nashville Walk to End AlzheimerÂ’s'),
(2, 'Steak Dinner on the Patio'),
(3, 'Schedule Meetup'),
(4, 'Happy Hour Wednesday'),
(5, 'Happy Hour Wednesday'),
(6, 'Cocktails at the Top, Brentwood'),
(7, 'Happy Hour Wednesday'),
(8, 'Tennessee Craft Fair'),
(9, '3rd Weds. Lunch'),
(10, 'Trivia Night at Plantation Pub'),
(11, '1st Tuesday Ladies'),
(12, 'Ladies Lunch at'),
(13, '3rd Weds. Networking'),
(14, 'Lunch Mixer at O\'Charley\'Â­s'),
(15, 'Ladies Lunch Social'),
(16, 'Cocktails & Networking'),
(17, 'Ladies Lunch in'),
(18, 'Ladies Lunch Feb'),
(19, 'Happy Hour Wednesdays'),
(20, 'Happy Hour Wednesdays at Jonathan\'s '),
(21, 'Happy Hour Wednesdays'),
(22, 'Easy Beginner\'s Hike'),
(23, 'Happy Hour Wednesday at Hilton'),
(24, 'Easy Beginner\'s Hike'),
(25, 'Happy Hour Wednesday at Hilton'),
(26, 'Networking Happy Hour'),
(27, 'Entrepreneurship'),
(28, 'Networking Happy Hour'),
(29, 'Skincare Workshop at'),
(30, 'Happy Hour Tonight!'),
(31, 'Lunch'),
(32, 'Tennessee Ren Fest'),
(33, 'Networking Happy Hour'),
(34, 'Lunch'),
(35, 'Networking Happy Hour'),
(36, 'Just for Fun: Tennessee Ren'),
(37, 'The Basics of cloud Computing'),
(38, 'Carnegie Writers/Green Hills Library'),
(39, 'Wired Senior Workshop'),
(40, 'Wired Senior Workshop'),
(41, 'Consider \"storytelling by resume\"\"?\"'),
(42, 'Work on your LinkedIn Profile'),
(43, '\"iPhoneBasics\"\"\"'),
(44, 'Journaling'),
(45, 'Communicating in The 21st Century'),
(46, 'Communicating in The 21st Century'),
(47, 'Communicating'),
(48, 'Talk about the'),
(49, 'Happy Hour Wednesday'),
(50, 'Happy Hour Wednesday'),
(51, 'Wine Down Thursday in Brentwood'),
(52, 'Wine Down Thursday, Murfreesboro'),
(53, 'Happy Hour Wednesday'),
(54, '3rd Weds. Lunch'),
(55, '1st Tuesday Ladies'),
(56, 'Lunch Mixer at'),
(57, 'Networking Lunch at'),
(58, 'Ladies Lunch Social'),
(59, 'Cocktails & Networking'),
(60, 'Meet me at the Business'),
(61, 'First meet up Happy Hour'),
(62, 'Come to this'),
(63, 'Schedule a Meetup'),
(64, 'Join the Essential'),
(65, 'Join The Essential Oil Journey'),
(66, 'Franklin/Nashville Parental Alienation Support'),
(67, 'Franklin/Nashville Parental Alienation Support'),
(68, 'Franklin/Nashville Parental Alienation Support'),
(69, 'Franklin/Nashville Parental Alienation Support'),
(70, 'Saturday June 3rd First'),
(71, 'Bring your business'),
(72, 'Bring your business'),
(73, 'WORKSHOP EXCLUSIVELY FOR'),
(74, 'We\'re on!  Our'),
(75, 'Free Music Day @ Schermerhorn!'),
(76, 'Southern Festival of Books'),
(77, 'Volunteer Opportunity @ Southern'),
(78, 'Kenny Loggins at Nashville Symphony'),
(79, 'Solar Eclipse Viewing'),
(80, 'Flash Movie \"Girls Trip\"\"\"'),
(81, 'Marigolds Author Coffee'),
(82, 'Lunch @ Salsa Puerto'),
(83, 'The Great Meeting'),
(84, 'Tuesday Meeting'),
(85, 'Tuesday Networking'),
(86, 'Tuesday Meeting'),
(87, 'Tuesday Networking'),
(88, 'Tuesday Meeting'),
(89, 'Tuesday Meeting'),
(90, 'Motivate and support'),
(91, 'Motivate and support'),
(92, 'Tennessee Brew Works- first meeting!'),
(93, 'Moss Wright Park Meetup'),
(94, 'Moss Right Park'),
(95, 'Moss Right Park'),
(96, 'Picnic and Hack'),
(97, 'Farm and Trivia'),
(98, 'Baby Wearing and'),
(99, 'Baby Wearing Hike');

-- --------------------------------------------------------

--
-- Table structure for table `attendingevent`
--

DROP TABLE IF EXISTS `attendingevent`;
CREATE TABLE IF NOT EXISTS `attendingevent` (
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendingevent`
--

INSERT INTO `attendingevent` (`user_id`, `event_id`) VALUES
(1, 2),
(1, 4),
(1, 5),
(2, 7),
(2, 8),
(2, 9),
(2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `eventreg`
--

DROP TABLE IF EXISTS `eventreg`;
CREATE TABLE IF NOT EXISTS `eventreg` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE IF NOT EXISTS `follow` (
  `user_id` int(11) NOT NULL,
  `follow_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `followreq`
--

DROP TABLE IF EXISTS `followreq`;
CREATE TABLE IF NOT EXISTS `followreq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fr_sender` int(50) DEFAULT NULL,
  `fr_reciever` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `followreq`
--

INSERT INTO `followreq` (`id`, `fr_sender`, `fr_reciever`) VALUES
(1, 9, 1),
(2, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 2, 1),
(6, 3, 1),
(7, 4, 1),
(8, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@xyz.in'),
(2, 'admin1', 'admin1', 'admin1@xyz.in'),
(3, 'admin2', 'admin2', 'admin2@xyz.in'),
(4, 'admin3', 'admin3', 'admin3@xyz.in'),
(5, 'admin4', 'admin4', 'admin4@xyz.in'),
(6, 'admin5', 'admin5', 'admin5@xyz.in'),
(7, 'admin6', 'admin6', 'admin6@xyz.in'),
(8, 'admin7', 'admin7', 'admin7@xyz.in'),
(9, 'bhavya', '1234', 'bhavyaharia100@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
