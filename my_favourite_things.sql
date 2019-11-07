-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 07, 2019 at 08:56 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `my_favourite_things`
--

CREATE TABLE `my_favourite_things` (
  `ID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Pros` varchar(300) NOT NULL,
  `Cons` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `my_favourite_things`
--

INSERT INTO `my_favourite_things` (`ID`, `Title`, `Image`, `Description`, `Pros`, `Cons`) VALUES
(1, 'Stuffed animals', 'toy.jpeg', 'Super duper cute stuffed animals that are oh so fluffy and adorable.', 'Fills my heart with joy.', 'Possibility of excessive self-talking. Might attract dust.'),
(2, 'Bubble Tea', 'boba.jpeg', 'Aromatic tea and milk combo originating from Taiwan. Toppings such as tapioca pearls, pudding, and grass jelly etc. are often added.  Comes in various sizes and tastes.', 'De-stressing. Great drink for all occasions.', 'Unhealthy if consumed in large amounts. Slightly expensive.'),
(3, 'Dreams', 'dreams.jpeg', 'Where your imagination can roam free.  All weird and quirky stuff are welcome here.', 'Unleash the creative mind and sometimes provides answers to real life problems.  No judge zone meaning you can do whatever you want.', 'In the end, it\'s only a dream.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_favourite_things`
--
ALTER TABLE `my_favourite_things`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_favourite_things`
--
ALTER TABLE `my_favourite_things`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
