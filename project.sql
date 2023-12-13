-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 09:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text NOT NULL,
  `question` text NOT NULL,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `username`, `question`, `ans`) VALUES
(14, 'siam', '2', 'cox bazar'),
(15, 'siam', '4', 'kitty'),
(26, 'mahmudull', '3', 'cox bazar'),
(27, 'mahmudull', '5', 'Pizza');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `value` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`id`, `question`, `value`) VALUES
(1, 'Where is the first place you spent a vacation?', '2'),
(2, 'What is your favourite food ?', '3'),
(5, 'What is your pet name ?', '4'),
(6, 'What is your favourite singer ?', '5');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sl` bigint(20) UNSIGNED NOT NULL,
  `id` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `number` text NOT NULL,
  `email` text NOT NULL,
  `department` text NOT NULL,
  `salary` text NOT NULL,
  `entry_time` text NOT NULL,
  `exit_time` text NOT NULL,
  `off_day` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sl`, `id`, `name`, `number`, `email`, `department`, `salary`, `entry_time`, `exit_time`, `off_day`) VALUES
(1, '20 11111 3', 'AB Based', '01963782763', 'based123@gmail.com', 'Finance', '80000', '10AM', '4PM', 'Friday'),
(2, '21 22223 1', 'Shihab Sadik', '01735647827', 'shihab@gmail.com', 'Security', '40000', '8AM', '5Pm', 'Sunday'),
(3, '20 47635 1', 'Mahmudul Hassan', '01687352683', 'mahmudul67@gmail.com', 'IT', '45000', '9AM', '2PM', 'Friday'),
(4, '23 22232 1', 'Hasan Sakib', '01387564978', 'sakib@gmail.com', 'Register Office', '42000', '10AM', '2PM', 'Sunday'),
(5, '22 63542 2', 'Tamim Iqbal', '0182222226', 'tamim@gmail.com', 'Library', '38000', '9AM', '6PM', 'Friday'),
(6, '20 74653 1', 'MH Riyad', '01363782755', 'riyad@gmail.com', 'Finance', '38000', '10AM', '4PM', 'Friday'),
(7, '21 65836 3', 'Mehedi Miraj', '01765893638', 'miraj@gmail.com', 'Security', '40000', '8AM', '5Pm', 'Sunday'),
(8, '21 47335 3', 'Sabbir Rahman ', '01953728254', 'sabbir23@gmail.com', 'IT', '45000', '9AM', '2PM', 'Friday'),
(9, '20 45637 1', 'Esrat Jahan', '01954364856', 'essu@gmail.com', 'Register Office', '42000', '10AM', '2PM', 'Sunday'),
(10, '21 46573 3', 'Raju Ahamed', '01783564789', 'rajupagla@gmail.com', 'Library', '38000', '9AM', '6PM', 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `gender` text NOT NULL,
  `blood` text NOT NULL,
  `website` text NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fname`, `lname`, `email`, `phone`, `gender`, `blood`, `website`, `address`, `img`) VALUES
(6, 'siam', '1234567890', 'Mahsetab', 'Hasan', 'siam589971@gmail.com', '01704400367', 'female', 'A-', 'mahsetab.com', 'Bashundhara R/A, Dhaka 1229', 'demo.png'),
(12, 'mahmudull', '0000000000', 'Mahmudul', 'Hasan', 'siam589971@gmail.com', '01704400367', 'female', 'AB+', 'uhvuv.com', 'DHaka', 'demo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD UNIQUE KEY `sl` (`sl`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sl` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
