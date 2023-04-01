-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 06:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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

CREATE TABLE `allevent` (
  `event_id` int(11) NOT NULL,
  `eventName` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allevents`
--

CREATE TABLE `allevents` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `attendingevent` (
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `eventreg` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `user_id` int(11) NOT NULL,
  `follow_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followreq`
--

CREATE TABLE `followreq` (
  `id` int(11) NOT NULL,
  `fr_sender` int(50) DEFAULT NULL,
  `fr_reciever` int(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(8, 5, 1),
(9, 21, 21),
(10, 22, 1),
(11, 22, 2),
(12, 22, 3),
(13, 22, 4),
(14, 22, 5),
(15, 22, 6),
(16, 22, 7),
(17, 22, 8),
(18, 22, 9),
(19, 22, 10),
(20, 22, 11),
(21, 22, 12),
(22, 22, 13),
(23, 22, 14),
(24, 22, 15),
(25, 22, 16),
(26, 22, 17),
(27, 22, 18),
(28, 22, 19),
(29, 22, 20),
(30, 22, 21),
(31, 22, 22);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@xyz.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allevent`
--
ALTER TABLE `allevent`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `allevents`
--
ALTER TABLE `allevents`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `followreq`
--
ALTER TABLE `followreq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allevent`
--
ALTER TABLE `allevent`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allevents`
--
ALTER TABLE `allevents`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `followreq`
--
ALTER TABLE `followreq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
