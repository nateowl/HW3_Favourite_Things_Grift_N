-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 12, 2020 at 05:59 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favourite_things`
--

CREATE TABLE `tbl_favourite_things` (
  `ID` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_favourite_things`
--

INSERT INTO `tbl_favourite_things` (`ID`, `title`, `image`, `description`) VALUES
(1, 'Computers', 'https://cdn.pixabay.com/photo/2014/05/02/21/49/laptop-336373_960_720.jpg', 'I love computers a lot.  I love macs and linux machines the most.  I spend a lot of time on them.  Computer\'s are very complex and powerful.  The thought that was put into computers from brilliant.  Mac\'s design is very sleek and well designed, making it my first choice.  '),
(2, 'Bikes', 'https://images.immediate.co.uk/production/volatile/sites/21/2020/03/Bike_of_the_Year_2020_BTS16-8fd8c19-scaled.jpg?quality=90&resize=620%2C413', 'My second favourite item is bikes.  I love bikes because I can go outside and enjoy the fresh air.  Biking is a way I can get away from my computer and get some exercise.  I love mountain biking in nature the most.  '),
(3, 'Water', 'https://image.freepik.com/free-photo/water-cup-wooden-background_54391-756.jpg', 'My third favourite thing is water.  It is my third because I prefer computers and bikes over water however while I am on the computer I like to drink endless amounts of water.  Sometimes I consume such high quantities of water that people say I have a drinking problem.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_favourite_things`
--
ALTER TABLE `tbl_favourite_things`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_favourite_things`
--
ALTER TABLE `tbl_favourite_things`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
