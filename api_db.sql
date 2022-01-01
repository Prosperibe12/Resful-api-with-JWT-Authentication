-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2022 at 01:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(122) NOT NULL,
  `lastname` varchar(122) NOT NULL,
  `email` varchar(122) NOT NULL,
  `password` varchar(122) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `created_at`, `modified`) VALUES
(1, 'Prosper', 'Cook', 'prosper@cook.com', '$2y$10$krdZpfZKHPNIHvrWDVllrODUBYjqo.TzuPMFMR7FR1JxaHM1PFM92', '2021-12-30 07:19:58', '2021-12-30 10:19:58'),
(3, 'elon', 'Musk South', 'elon@musk.com', '$2y$10$UKaOpxEV.6iYm3TM/Ri40OAXkOucEVgu8V.aSBu9grndF7nT67eU.', '2021-12-30 08:20:24', '2021-12-31 19:18:13'),
(4, 'Adams', 'Adefoluke', 'prosperibe12@gmail.com', '$2y$10$Q8hhyFo64hDt8/Qhp5T.y.BvsSK2pmrjw7Slcy1kPBi4aoZgvl0AW', '2021-12-31 20:14:41', '2021-12-31 23:14:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
