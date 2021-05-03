-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 04:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id_code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id_code`, `user_id`, `code`, `created_at`, `expiration`) VALUES
(1, 1, '432675', '2021-04-25 02:01:47', '2021-04-25 02:06:47'),
(2, 1, '897148', '2021-04-25 02:01:56', '2021-04-25 02:06:56'),
(3, 3, '967745', '2021-04-25 22:02:54', '2021-04-25 22:07:54'),
(4, 3, '084836', '2021-04-25 22:02:59', '2021-04-25 22:07:59'),
(5, 4, '692025', '2021-04-27 13:24:25', '2021-04-27 13:29:25'),
(6, 4, '857562', '2021-04-27 13:24:47', '2021-04-27 13:29:47'),
(7, 4, '418515', '2021-04-27 13:25:07', '2021-04-27 13:30:07'),
(8, 4, '134912', '2021-04-27 13:25:35', '2021-04-27 13:30:35'),
(9, 4, '910177', '2021-04-27 13:25:43', '2021-04-27 13:30:43'),
(10, 4, '820737', '2021-04-27 13:25:54', '2021-04-27 13:30:54'),
(11, 5, '259728', '2021-04-28 09:23:55', '2021-04-28 09:28:55'),
(12, 5, '937127', '2021-04-28 09:24:08', '2021-04-28 09:29:08'),
(13, 5, '582834', '2021-04-28 09:27:40', '2021-04-28 09:32:40'),
(14, 5, '416786', '2021-04-28 09:27:49', '2021-04-28 09:32:49'),
(15, 5, '936468', '2021-04-28 09:28:50', '2021-04-28 09:33:50'),
(16, 5, '781271', '2021-04-28 09:29:06', '2021-04-28 09:34:06'),
(17, 5, '627632', '2021-04-28 09:30:55', '2021-04-28 09:35:55'),
(18, 5, '820353', '2021-04-28 09:31:06', '2021-04-28 09:36:06'),
(19, 5, '491097', '2021-04-28 09:37:33', '2021-04-28 09:42:33'),
(20, 5, '715891', '2021-04-28 09:37:44', '2021-04-28 09:42:44'),
(21, 5, '164004', '2021-04-28 09:37:48', '2021-04-28 09:42:48'),
(22, 5, '827505', '2021-04-28 09:37:57', '2021-04-28 09:42:57'),
(23, 5, '349018', '2021-04-28 09:38:27', '2021-04-28 09:43:27'),
(24, 5, '336365', '2021-04-28 09:38:37', '2021-04-28 09:43:37'),
(25, 5, '918539', '2021-04-28 09:41:29', '2021-04-28 09:46:29'),
(26, 5, '873149', '2021-04-28 09:41:39', '2021-04-28 09:46:39'),
(27, 5, '501571', '2021-04-28 09:46:29', '2021-04-28 09:51:29'),
(28, 5, '374865', '2021-04-28 09:46:48', '2021-04-28 09:51:48'),
(29, 5, '883673', '2021-04-28 09:47:36', '2021-04-28 09:52:36'),
(30, 5, '041182', '2021-04-28 09:48:29', '2021-04-28 09:53:29'),
(31, 5, '970859', '2021-04-28 09:51:37', '2021-04-28 09:56:37'),
(32, 5, '677943', '2021-04-28 09:52:40', '2021-04-28 09:57:40'),
(33, 5, '474854', '2021-04-28 09:53:36', '2021-04-28 09:58:36'),
(34, 5, '217546', '2021-04-28 09:54:14', '2021-04-28 09:59:14'),
(35, 5, '223568', '2021-04-28 09:54:49', '2021-04-28 09:59:49'),
(36, 5, '981856', '2021-04-28 09:55:34', '2021-04-28 10:00:34'),
(37, 5, '982788', '2021-04-28 09:55:45', '2021-04-28 10:00:45'),
(38, 6, '829979', '2021-04-28 10:21:08', '2021-04-28 10:26:08'),
(39, 6, '792611', '2021-04-28 10:21:25', '2021-04-28 10:26:25'),
(40, 6, '985694', '2021-04-28 10:22:47', '2021-04-28 10:27:47'),
(41, 6, '248390', '2021-04-28 10:22:55', '2021-04-28 10:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `logid` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `dateandtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`logid`, `user_id`, `username`, `activity`, `dateandtime`) VALUES
(8, 4, 'Ari21', 'Logged In', '2021-04-27 13:24:25'),
(9, 4, 'Ari21', 'Entered Successsful Code', '2021-04-27 13:25:54'),
(10, 4, 'Ari21', 'Logged Out', '2021-04-27 13:26:03'),
(11, 5, 'Ari12', 'Logged In', '2021-04-28 09:23:55'),
(12, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:24:08'),
(13, 5, 'Ari12', 'Logged In', '2021-04-28 09:27:40'),
(14, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:27:49'),
(15, 5, 'Ari12', 'Logged In', '2021-04-28 09:28:50'),
(16, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:29:06'),
(17, 5, 'Ari12', 'Logged In', '2021-04-28 09:30:55'),
(18, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:31:06'),
(19, 5, 'Ari12', 'Logged In', '2021-04-28 09:37:33'),
(20, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:37:44'),
(21, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:37:57'),
(22, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:38:37'),
(23, 5, 'Ari12', 'Changed Password', '2021-04-28 09:41:09'),
(24, 5, 'Ari12', 'Logged In', '2021-04-28 09:41:28'),
(25, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:41:39'),
(26, 5, 'Ari12', 'Logged In', '2021-04-28 09:46:28'),
(27, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:46:48'),
(28, 5, 'Ari12', 'Logged In', '2021-04-28 09:47:36'),
(29, 5, 'Ari12', 'Logged In', '2021-04-28 09:55:34'),
(30, 5, 'Ari12', 'Entered Successsful Code', '2021-04-28 09:55:45'),
(31, 6, 'Manderigma', 'Logged In', '2021-04-28 10:21:08'),
(32, 6, 'Manderigma', 'Entered Successsful Code', '2021-04-28 10:21:25'),
(33, 6, 'Manderigma', 'Changed Password', '2021-04-28 10:22:22'),
(34, 6, 'Manderigma', 'Logged In', '2021-04-28 10:22:46'),
(35, 6, 'Manderigma', 'Entered Successsful Code', '2021-04-28 10:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'Ariane', 'arideoman@gmail.com', 'Yany', 'yanyanyan', '2021-04-24 21:22:05'),
(2, 'Ganda', 'gandarawsiya@gmail.com', 'gandaka', 'gandara', '2021-04-24 22:49:07'),
(3, 'asoko', 'mahalkoasoko@gmail.com', 'asokoto', 'asokanaba', '2021-04-25 01:43:03'),
(4, 'ArianeMande', 'arideoman@gmail.com', 'Ari21', 'Ariman@21', '2021-04-27 13:24:10'),
(5, 'Ariane', 'ariane.mande@cvsu.edu.ph', 'Ari12', 'Arianemillezar@21', '2021-04-28 09:22:09'),
(6, 'Mande', 'mandeariane@gmail.com', 'Manderigma', 'Asdfgh@12', '2021-04-28 10:20:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `test` (`user_id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `test1` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `logid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `code`
--
ALTER TABLE `code`
  ADD CONSTRAINT `test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `test1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
