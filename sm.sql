-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2018 at 02:41 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sm`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(14) NOT NULL,
  `file_name` varchar(150) NOT NULL,
  `file_type` varchar(150) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `image_size` varchar(100) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `is_image` tinyint(1) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`) VALUES
(1, 'Administrator', 1),
(2, 'Member', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_users`
--

CREATE TABLE `sm_users` (
  `id` int(10) NOT NULL,
  `login` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pic` int(15) DEFAULT NULL,
  `bio` text,
  `status` tinyint(1) NOT NULL,
  `role` int(5) NOT NULL,
  `registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sm_users`
--

INSERT INTO `sm_users` (`id`, `login`, `first_name`, `last_name`, `email`, `password`, `pic`, `bio`, `status`, `role`, `registered`) VALUES
(1, 'soly', 'Samir', 'eltabbal', 'soly.0@live.com', '$2y$10$tCXxEOU.QspDRb8vA.IqLOj.nMp4EpzZLQFc7OD65rH1ghFWIJs.u', NULL, 'Hello World', 1, 1, '2018-02-01 14:15:30'),
(2, 'xsolyx', 'Samir', 'eltabal', 'samir.m.eltabal@gmail.com', '$2y$10$i5MLeTF71T2fTFZKBcSKrOhlW9drWRt3GbHXXYa2xFrqzqKc3zzT.', NULL, 'Next User', 1, 1, '2018-02-01 14:18:34'),
(3, 'haiky', 'haidy', 'karam', 'haidy.karam@hotmail.com', '$2y$10$I3Vmkd4v3cpwyd8ne5bbd.P9f2S31ZnJKKfoJdlOZ3vzKsuo2KN6a', NULL, 'fake account', 1, 1, '2018-02-01 14:43:28'),
(4, 'haiky2', 'haidy', 'karam', 'haidy.karam2@hotmail.com', '$2y$10$ph0Foc08QVM.MOu7i4Bqt.FowoyK48p4.wf5KvTW17LaosXRskQJq', NULL, '2', 1, 1, '2018-02-01 14:45:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_name` (`file_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sm_users`
--
ALTER TABLE `sm_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `role` (`role`),
  ADD KEY `pic` (`pic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sm_users`
--
ALTER TABLE `sm_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sm_users`
--
ALTER TABLE `sm_users`
  ADD CONSTRAINT `sm_users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `sm_users_ibfk_2` FOREIGN KEY (`pic`) REFERENCES `attachments` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
