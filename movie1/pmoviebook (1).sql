-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2015 at 01:16 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pmoviebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
`booking_id` int(8) NOT NULL,
  `cust_id` int(8) NOT NULL,
  `theater_id` int(8) NOT NULL,
  `screen_no` int(3) NOT NULL,
  `date_time` datetime NOT NULL,
  `quantity` int(3) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `cust_id`, `theater_id`, `screen_no`, `date_time`, `quantity`) VALUES
(1, 1, 1, 1, '2015-03-12 03:00:00', 3),
(2, 2, 1, 2, '2015-03-11 06:00:00', 4),
(3, 3, 1, 3, '2015-03-10 09:00:00', 2),
(4, 4, 2, 1, '2015-03-12 03:00:00', 3),
(5, 5, 2, 2, '2015-03-10 06:00:00', 2),
(6, 6, 2, 3, '2015-03-08 09:00:00', 6),
(7, 7, 3, 1, '2015-03-10 03:00:00', 3),
(8, 8, 3, 2, '2015-03-09 06:00:00', 4),
(9, 9, 3, 3, '2015-03-08 09:00:00', 3),
(10, 10, 4, 1, '2015-03-10 03:00:00', 5),
(11, 1, 4, 2, '2015-03-12 06:00:00', 5),
(12, 4, 4, 3, '2015-03-12 09:00:00', 4),
(13, 3, 5, 1, '2015-03-06 03:00:00', 3),
(14, 7, 5, 2, '2015-05-12 06:00:00', 2),
(15, 9, 5, 3, '2015-03-12 09:00:00', 3),
(16, 5, 4, 2, '2015-03-12 06:00:00', 2),
(17, 4, 3, 3, '2015-03-12 09:00:00', 3),
(18, 7, 3, 1, '2015-03-12 03:00:00', 6),
(19, 3, 2, 2, '2015-03-09 06:00:00', 4),
(20, 9, 5, 3, '2015-06-12 09:00:00', 5),
(21, 8, 2, 3, '2015-04-12 09:00:00', 5),
(22, 7, 2, 2, '2015-04-12 06:00:00', 6),
(23, 6, 3, 1, '2015-04-10 03:00:00', 4),
(24, 6, 2, 2, '2015-05-10 06:00:00', 5),
(25, 8, 3, 2, '2015-03-07 06:00:00', 5),
(26, 9, 4, 1, '2015-08-12 03:00:00', 3),
(27, 2, 2, 2, '2015-03-12 06:00:00', 4),
(28, 5, 5, 1, '2015-03-04 03:00:00', 1),
(29, 8, 3, 3, '2015-03-19 09:00:00', 1),
(30, 9, 3, 3, '2015-09-12 09:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `booking_refreshments`
--

CREATE TABLE IF NOT EXISTS `booking_refreshments` (
  `booking_id` int(8) NOT NULL,
  `item_id` int(88) NOT NULL,
  `item_qty` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`cust_id` int(8) NOT NULL,
  `cust_name` varchar(32) NOT NULL,
  `cust_email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `credit_card_no` varchar(16) NOT NULL,
  `cust_phone_no` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `password`, `credit_card_no`, `cust_phone_no`) VALUES
(1, 'Anirudh', 'anirudh@gmail.com', 'password', '1234', '9610206701'),
(2, 'Akshat', 'akshat@gmail.com', 'password', '2345', '9620512345'),
(3, 'Abhijeet', 'abhijeet@gmail.com', 'password', '4567', '9611109876'),
(4, 'P.SAI', 'sai.viswas@gmail.com', 'viswas', '6798', '8880234765'),
(5, 'Gandhi', 'gandhi@gmail.com', 'gang', '8009', '9903432678'),
(6, 'Navneet Singh', 'navneet13@gmail.com', 'code', '8756', '9678235411'),
(7, 'Rohan', 'iamrohan@gmail.com', 'rohan', '2640', '8776547699'),
(8, 'SharathKP', 'kpluvsamosa@gmail.com', 'samosa', '9065', '9002133467'),
(9, 'Bhardwaj', 'shash@gmail.com', 'swag', '8212', '9012467589'),
(10, 'Sameer', 'kulk@gmail.com', 'study', '7658', '8889992354');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
`movie_id` int(8) NOT NULL,
  `movie_name` varchar(32) NOT NULL,
  `language` varchar(16) NOT NULL,
  `genre` varchar(16) NOT NULL,
  `cbfc_rating` varchar(3) NOT NULL,
  `director_name` varchar(32) NOT NULL,
  `producer_name` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_name`, `language`, `genre`, `cbfc_rating`, `director_name`, `producer_name`) VALUES
(1, 'Badlapur', 'Hindi', 'Action', 'A', 'R Raghavan', 'Dharma'),
(2, 'PK', 'Hindi', 'Comedy', 'U/A', 'Raj kumar hirani', 'Hirani'),
(3, 'Batman vs Superman', 'English', 'Action', 'U', 'Zack Snyder', 'DC'),
(4, 'Avengers - Age of Ultron', 'English', 'Action', 'U', 'Joss Whedon', 'Marvel'),
(5, 'Gone Girl', 'English', 'Thriller', 'A', 'Ben Affleck', 'Warner Bros.'),
(6, 'Argo', 'English', 'Thriller', 'U', 'Ben Affleck', 'Phantom'),
(7, 'Boyhood', 'Englisrrh', 'Drama', 'U', 'Richard Linklater', 'Richard Linklater'),
(8, 'Interstellar', 'English', 'Sci-fi', 'U', 'Christopher Nolan', 'Syncopy'),
(9, 'Star Wars- 7', 'English', 'Sci-fi', 'U', 'JJ Abrams', 'Abram Films'),
(10, 'Gabbar', 'Hindi', 'Action', 'U', 'Krish j', 'Ak Productions'),
(11, 'Reservoir Dogs', 'English', 'Thriller', 'A', 'Quenetin Tarantino', 'Tarantino Productions'),
(12, 'Psycho', 'English', 'Thriller', 'U', 'Alfred Hitchkock', 'Warner Bros.'),
(13, 'Inception', 'English', 'Sci-fi', 'U', 'Christopher Nolan', 'Syncopy'),
(14, 'Jurassic Park World', 'English', 'Sci-fi', 'U', 'Stephen Spielberg', 'Spielberg Productions'),
(15, 'Snatch', 'English', 'Action', 'A', 'Guy Ritchie', 'Paramount');

-- --------------------------------------------------------

--
-- Table structure for table `refreshments`
--

CREATE TABLE IF NOT EXISTS `refreshments` (
`item_id` int(8) NOT NULL,
  `item_name` varchar(32) NOT NULL,
  `item_price` decimal(4,2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `refreshments`
--

INSERT INTO `refreshments` (`item_id`, `item_name`, `item_price`) VALUES
(1, 'Samosa', '20.00'),
(2, 'Coke', '30.00'),
(3, 'Butter Popcorn', '40.00'),
(4, 'Nachos', '50.00'),
(5, 'Tea/Coffee', '25.00');

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE IF NOT EXISTS `screen` (
  `screen_no` int(3) NOT NULL,
  `theater_id` int(8) NOT NULL,
  `movie_id` int(8) NOT NULL,
  `capacity` int(3) NOT NULL,
  `show_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screen`
--

INSERT INTO `screen` (`screen_no`, `theater_id`, `movie_id`, `capacity`, `show_time`) VALUES
(1, 1, 1, 150, '0000-00-00 03:00:00'),
(1, 2, 4, 210, '0000-00-00 03:00:00'),
(1, 3, 7, 210, '0000-00-00 03:00:00'),
(1, 4, 10, 123, '0000-00-00 03:00:00'),
(1, 5, 13, 139, '0000-00-00 03:00:00'),
(2, 1, 2, 170, '0000-00-00 06:00:00'),
(2, 2, 5, 187, '0000-00-00 06:00:00'),
(2, 3, 8, 139, '0000-00-00 06:00:00'),
(2, 4, 11, 154, '0000-00-00 06:00:00'),
(2, 5, 14, 169, '0000-00-00 06:00:00'),
(3, 1, 3, 152, '0000-00-00 09:00:00'),
(3, 2, 6, 120, '0000-00-00 09:00:00'),
(3, 3, 9, 231, '0000-00-00 09:00:00'),
(3, 4, 12, 145, '0000-00-00 09:00:00'),
(3, 5, 15, 178, '0000-00-00 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE IF NOT EXISTS `theater` (
`theater_id` int(8) NOT NULL,
  `theater_name` varchar(32) NOT NULL,
  `location` varchar(64) NOT NULL,
  `theater_sponsor` varchar(64) NOT NULL,
  `theater_phone_no` varchar(16) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`theater_id`, `theater_name`, `location`, `theater_sponsor`, `theater_phone_no`) VALUES
(1, 'Gopalan Arcade ', 'Gopalan Arcade Mall', 'PVR', '08023456789'),
(2, 'INOX', 'Mantri Mall', 'INOX', '08023451234'),
(3, 'Cinepolis', 'Bannerghatta', 'Inox', '9876543221'),
(4, 'Kamakhya', 'Banashankari', 'Pepsi', '9123445678'),
(5, 'Manasa', 'Konanakunte', 'Crystal', '9321456778');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
 ADD PRIMARY KEY (`booking_id`,`cust_id`,`screen_no`,`theater_id`), ADD KEY `cust_id` (`cust_id`), ADD KEY `screen_no` (`screen_no`), ADD KEY `theater_id` (`theater_id`);

--
-- Indexes for table `booking_refreshments`
--
ALTER TABLE `booking_refreshments`
 ADD PRIMARY KEY (`booking_id`,`item_id`), ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
 ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `refreshments`
--
ALTER TABLE `refreshments`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
 ADD PRIMARY KEY (`screen_no`,`theater_id`,`movie_id`), ADD KEY `theater_id` (`theater_id`), ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
 ADD PRIMARY KEY (`theater_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
MODIFY `booking_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `cust_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `movie_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `refreshments`
--
ALTER TABLE `refreshments`
MODIFY `item_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
MODIFY `theater_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`screen_no`) REFERENCES `screen` (`screen_no`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`theater_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `booking_refreshments`
--
ALTER TABLE `booking_refreshments`
ADD CONSTRAINT `booking_refreshments_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `refreshments` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `screen`
--
ALTER TABLE `screen`
ADD CONSTRAINT `screen_ibfk_1` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`theater_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `screen_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
