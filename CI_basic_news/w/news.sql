-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 23, 2021 at 02:07 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(1, 'Daily', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed quam sapien. Praesent vestibulum varius augue sit amet ultricies. Nulla placerat orci sed quam tincidunt, in rhoncus arcu tincidunt. Cras imperdiet elementum ex. Suspendisse quis placerat felis, quis vehicula odio. Maecenas congue egestas sapien ut auctor. Etiam ut ante risus. Nulla at felis tempor metus convallis tempor. Aenean fermentum magna sed mi efficitur vehicula. Nulla sed bibendum purus, ac mollis ante. Fusce sapien nisl, aliquam eget aliquam sit amet, dignissim vel sem. Nunc pharetra dignissim dui, sed fringilla est tincidunt ut. Integer accumsan eu arcu sed volutpat. Donec sollicitudin tortor sapien, quis pellentesque eros condimentum a.'),
(2, 'Dose', 'FALSE', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed quam sapien. Praesent vestibulum varius augue sit amet ultricies. Nulla placerat orci sed quam tincidunt, in rhoncus arcu tincidunt. Cras imperdiet elementum ex. Suspendisse quis placerat felis, quis vehicula odio. Maecenas congue egestas sapien ut auctor. Etiam ut ante risus. Nulla at felis tempor metus convallis tempor. Aenean fermentum magna sed mi efficitur vehicula. Nulla sed bibendum purus, ac mollis ante. Fusce sapien nisl, aliquam eget aliquam sit amet, dignissim vel sem. Nunc pharetra dignissim dui, sed fringilla est tincidunt ut. Integer accumsan eu arcu sed volutpat. Donec sollicitudin tortor sapien, quis pellentesque eros condimentum a.'),
(3, 'News times', 'TRUE', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed quam sapien. Praesent vestibulum varius augue sit amet ultricies. Nulla placerat orci sed quam tincidunt, in rhoncus arcu tincidunt. Cras imperdiet elementum ex. Suspendisse quis placerat felis, quis vehicula odio. Maecenas congue egestas sapien ut auctor. Etiam ut ante risus. Nulla at felis tempor metus convallis tempor. Aenean fermentum magna sed mi efficitur vehicula. Nulla sed bibendum purus, ac mollis ante. Fusce sapien nisl, aliquam eget aliquam sit amet, dignissim vel sem. Nunc pharetra dignissim dui, sed fringilla est tincidunt ut. Integer accumsan eu arcu sed volutpat. Donec sollicitudin tortor sapien, quis pellentesque eros condimentum a.'),
(4, 'Breaking', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed quam sapien. Praesent vestibulum varius augue sit amet ultricies. Nulla placerat orci sed quam tincidunt, in rhoncus arcu tincidunt. Cras imperdiet elementum ex. Suspendisse quis placerat felis, quis vehicula odio. Maecenas congue egestas sapien ut auctor. Etiam ut ante risus. Nulla at felis tempor metus convallis tempor. Aenean fermentum magna sed mi efficitur vehicula. Nulla sed bibendum purus, ac mollis ante. Fusce sapien nisl, aliquam eget aliquam sit amet, dignissim vel sem. Nunc pharetra dignissim dui, sed fringilla est tincidunt ut. Integer accumsan eu arcu sed volutpat. Donec sollicitudin tortor sapien, quis pellentesque eros condimentum a.'),
(5, 'Dummy', 'FALSE', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed quam sapien. Praesent vestibulum varius augue sit amet ultricies. Nulla placerat orci sed quam tincidunt, in rhoncus arcu tincidunt. Cras imperdiet elementum ex. Suspendisse quis placerat felis, quis vehicula odio. Maecenas congue egestas sapien ut auctor. Etiam ut ante risus. Nulla at felis tempor metus convallis tempor. Aenean fermentum magna sed mi efficitur vehicula. Nulla sed bibendum purus, ac mollis ante. Fusce sapien nisl, aliquam eget aliquam sit amet, dignissim vel sem. Nunc pharetra dignissim dui, sed fringilla est tincidunt ut. Integer accumsan eu arcu sed volutpat. Donec sollicitudin tortor sapien, quis pellentesque eros condimentum a.'),
(6, 'lorem', '', 'Proin turpis lorem, pharetra posuere metus et, aliquet accumsan ligula. Proin eu imperdiet metus, et tincidunt odio. Suspendisse imperdiet arcu eu est posuere, sed blandit ex luctus. Suspendisse auctor, est non scelerisque commodo, sem nulla sodales lorem, non suscipit tellus orci vel justo. Nullam at tempus libero. Fusce iaculis justo vitae tincidunt venenatis. Morbi ac aliquet orci, sed venenatis lacus. Sed imperdiet consequat viverra.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
