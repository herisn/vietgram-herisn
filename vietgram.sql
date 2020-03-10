-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 11:23 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietgram`
--

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `likes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `username`, `url`, `caption`, `likes`) VALUES
(1, 'herisn', 'https://cdn.shopify.com/s/files/1/0255/9429/8467/products/Yeezy-350-V2-EF2367-Reflective_3_1000x.jpg?v=1562708227', 'adidas Yeezy Boost 350 v2 Static Reflective', 250),
(2, 'herisn', 'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2020%2F02%2Fadidas-yeezy-boost-380-mist-release-date-info-002.jpg?q=75&w=800&cbr=1&fit=max', 'adidas YEEZY BOOST 380 \"Mist\"', 500),
(3, 'herisn', 'https://stockx-360.imgix.net/Adidas-Yeezy-Boost-750-Glow-In-The-Dark/Images/Adidas-Yeezy-Boost-750-Glow-In-The-Dark/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1538080256', 'adidas Yeezy Boost 750 Light Grey Glow In the Dark', 100);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `username`, `name`, `website`, `bio`, `email`, `phonenumber`, `gender`) VALUES
(1, 'admin', 'admin', 'http://instagram.com', '                                                                                                                                                                                                                     ', 'admin@vietgram-herisn.com', '082328930989', 'L'),
(2, 'herisn', 'Heri Setyo Nugroho', 'https://www.youtube.com/channel/UC4nBdevG7E14iYyOx_yhhSQ', 'youtuber                  ', 'heri.sn69@gmail.com', '082328930989', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`) VALUES
('admin', 'admin', 'admin@gmail.com'),
('herisn', 'herisn', 'herisn@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
