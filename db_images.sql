-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2016 at 01:57 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codexworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `img_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_order` int(5) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img_name`, `img_order`, `created`, `modified`, `status`) VALUES
(1, 'img1.jpg', 2, '2015-04-14 00:00:00', '2015-04-14 00:00:00', '1'),
(2, 'img2.jpg', 1, '2015-04-14 00:00:00', '2015-04-14 00:00:00', '1'),
(3, 'img3.jpg', 4, '2015-04-14 00:00:00', '2015-04-14 00:00:00', '1'),
(4, 'img4.jpg', 6, '2015-04-14 00:00:00', '2015-04-14 00:00:00', '1'),
(5, 'img5.jpg', 3, '2015-04-14 00:00:00', '2015-04-14 00:00:00', '1'),
(6, 'img6.jpg', 5, '2015-04-14 00:00:00', '2015-04-14 00:00:00', '1'),
(7, 'img7.jpg', 7, '2015-04-14 00:00:00', '2015-04-14 00:00:00', '1'),
(8, 'img8.jpg', 8, '2015-04-14 00:00:00', '2015-04-14 00:00:00', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
