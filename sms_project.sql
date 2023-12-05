-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 11:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `type`, `email`, `password`, `name`) VALUES
(1, 'teacher', 'teacher1@gmail.com', 'teacher', 'Giang vien1'),
(2, 'teacher', 'teacher2@gmail.com', 'teacher', 'Giang vien 2'),
(3, 'student', 'student1@gmail.com', 'student', 'Sinh vien 1');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `section` varchar(100) NOT NULL,
  `added_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `title`, `section`, `added_date`) VALUES
(1, 'Class-1', '1', '2020-10-03'),
(2, 'Class-2', '1', '2020-10-03'),
(3, 'Class-3', '1,2,3', '2020-10-03'),
(4, 'dsafsd', '1,2', '2021-02-06'),
(5, 'sadsad', '2', '2021-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `duration` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `category`, `duration`, `date`, `image`) VALUES
(1, 'Web Design & Development', 'Programing', '45 hours', '2023-10-08 20:21:19', 'still-life-851328_1280.jpg'),
(2, 'Web Developer & Designer', 'web-design-and-development', '60', '2023-10-10 00:00:00', 'still-life-851328_1280.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `item_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'section', '3'),
(2, 2, 'section', '4'),
(3, 7, 'day_name', 'monday'),
(4, 7, 'teacher_id', '2'),
(5, 7, 'subject_id', '19'),
(6, 7, 'period_id', '5'),
(23, 16, 'from', '08:30'),
(24, 16, 'to', '09:15'),
(25, 17, 'from', '09:15'),
(26, 17, 'to', '10:00'),
(27, 5, 'from', '07:00'),
(28, 5, 'to', '07:45'),
(29, 6, 'from', '07:45'),
(30, 6, 'to', '08:30'),
(31, 18, 'class_id', '1'),
(32, 18, 'section_id', '4'),
(33, 18, 'teacher_id', '2'),
(34, 18, 'period_id', '5'),
(35, 18, 'day_name', 'tuesday'),
(36, 18, 'subject_id', '19'),
(37, 7, 'class_id', '1'),
(38, 7, 'section_id', '4'),
(39, 20, 'class_id', '1'),
(40, 20, 'section_id', '4'),
(41, 20, 'teacher_id', '1'),
(42, 20, 'period_id', '16'),
(43, 20, 'day_name', 'wednesday'),
(44, 20, 'subject_id', '19'),
(45, 21, 'class_id', '2'),
(46, 21, 'section_id', '3'),
(47, 21, 'teacher_id', '2'),
(48, 21, 'period_id', '17'),
(49, 21, 'day_name', 'sunday'),
(50, 21, 'subject_id', '20'),
(51, 22, 'class_id', '2'),
(52, 22, 'section_id', '4'),
(53, 22, 'teacher_id', '2'),
(54, 22, 'period_id', '6'),
(55, 22, 'day_name', 'tuesday'),
(56, 22, 'subject_id', '19'),
(57, 23, 'class_id', '2'),
(58, 23, 'section_id', '3'),
(59, 23, 'teacher_id', '2'),
(60, 23, 'period_id', '17'),
(61, 23, 'day_name', 'monday'),
(62, 23, 'subject_id', '19'),
(63, 26, 'amount', '500'),
(64, 26, 'status', 'success'),
(65, 26, 'student_id', '20'),
(66, 26, 'month', 'September'),
(67, 27, 'amount', '500'),
(68, 27, 'status', 'success'),
(69, 27, 'student_id', '20'),
(70, 27, 'month', 'October');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL DEFAULT 1,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(70) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `description`, `type`, `publish_date`, `modified_date`, `status`, `parent`) VALUES
(1, 1, 'Class -1', 'Class -1 Description', 'class', '2023-10-17 12:23:24', '2023-10-17 12:23:24', 'publish', 0),
(2, 1, 'Class -2', 'Class -2 Description', 'class', '2021-06-20 01:02:16', '2021-06-20 01:02:16', 'publish', 0),
(3, 1, 'Section A', 'Section A Description', 'section', '2021-06-20 01:03:48', '2021-06-20 01:03:48', 'publish', 0),
(4, 1, 'Section B', 'Section B Description', 'section', '2021-06-20 01:03:48', '2021-06-20 01:03:48', 'publish', 0),
(5, 1, 'First Period', 'First Period Description', 'period', '2021-07-23 07:23:34', '2021-07-23 07:23:34', 'publish', 0),
(6, 1, 'Second Period', 'Second Period Description', 'period', '2021-07-23 07:23:34', '2021-07-23 07:23:34', 'publish', 0),
(7, 1, 'Monday - First Period', 'Monday - First Period Descrioption', 'timetable', '2021-07-23 07:36:38', '2021-07-23 07:36:38', 'publish', 0),
(16, 1, 'Third Period', '', 'period', '2021-07-23 15:52:35', '2021-07-24 07:22:35', 'publish', 0),
(17, 1, 'Fourth', '', 'period', '2021-07-23 15:53:56', '2021-07-24 07:23:56', 'publish', 0),
(18, 1, '', '', 'timetable', '2021-07-24 15:47:42', '2021-07-25 07:17:42', 'publish', 0),
(19, 1, 'Mathematics', '', 'subject', '2021-07-25 07:29:09', '2021-07-25 07:29:09', 'publish', 0),
(20, 1, '', '', 'timetable', '2021-07-24 16:01:44', '2021-07-25 07:31:44', 'publish', 0),
(21, 1, '', '', 'timetable', '2021-07-31 17:21:24', '2021-08-01 08:51:24', 'publish', 0),
(22, 1, '', '', 'timetable', '2021-07-31 17:28:15', '2021-08-01 08:58:15', 'publish', 0),
(23, 1, '', '', 'timetable', '2021-07-31 17:32:32', '2021-08-01 09:02:32', 'publish', 0),
(26, 20, 'September - Fee', '', 'payment', '2023-09-21 13:11:58', '0000-00-00 00:00:00', 'success', 0),
(27, 20, 'October - Fee', '', 'payment', '2023-09-23 11:53:49', '0000-00-00 00:00:00', 'success', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`) VALUES
(1, 'Section A'),
(2, 'Section B'),
(3, 'Section C'),
(4, 'Section D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
