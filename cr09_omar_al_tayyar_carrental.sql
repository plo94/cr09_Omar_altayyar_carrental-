-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2018 at 04:47 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_omar_al_tayyar_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_charges`
--

CREATE TABLE `additional_charges` (
  `additional_charges_id` int(11) NOT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `additional_charges_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `additional_charges`
--

INSERT INTO `additional_charges` (`additional_charges_id`, `fk_car_id`, `additional_charges_price`) VALUES
(1, NULL, 200),
(2, NULL, 100),
(3, NULL, 190),
(4, NULL, 120),
(5, NULL, 130);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `car_model` varchar(50) DEFAULT NULL,
  `car_num` int(11) DEFAULT NULL,
  `fk_category_id` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `car_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `car_model`, `car_num`, `fk_category_id`, `color`, `car_status`) VALUES
(1, 'BMW', 123111, NULL, 'red', 'good'),
(2, 'Auodi', 654333, NULL, 'green', 'good'),
(3, 'ford', 323212, NULL, 'red', 'g'),
(4, 'TOYOTA', 543234, NULL, 'red', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `type`) VALUES
(1, 'qwqw'),
(2, 'dddd'),
(3, NULL),
(4, 'gggggf'),
(5, 'rrrrrress');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `driver_license` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `first_name`, `last_name`, `birthday`, `driver_license`) VALUES
(1, 'omar', 'al tayyar', '1994-07-09', '1000002344'),
(2, 'mosa', 'mosa', '1992-02-09', '26544244'),
(3, 'khaled', 'hasan', '0000-00-00', '54232566'),
(4, 'mohammad', 'hasan', '0000-00-00', '542323366'),
(5, 'ramy', 'raja', '0000-00-00', '50232566');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `fk_reservation_id` int(11) DEFAULT NULL,
  `car_rent` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `fk_reservation_id`, `car_rent`) VALUES
(1, NULL, 190),
(2, NULL, 200),
(3, NULL, 120),
(4, NULL, 140),
(5, NULL, 175);

-- --------------------------------------------------------

--
-- Table structure for table `pick_up_location`
--

CREATE TABLE `pick_up_location` (
  `pick_up_location_id` int(11) NOT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pick_up_location`
--

INSERT INTO `pick_up_location` (`pick_up_location_id`, `adress`, `city`, `country`, `zip`) VALUES
(1, 'viktoriagasse', 'vienna', 'austria', '1150'),
(2, 'taborstarsse', 'vienna', 'austria', '1020'),
(3, 'hhhstarsse', 'vienna', 'austria', '1120'),
(4, 'westgasse', 'vienna', 'austria', '1150'),
(5, 'nordgasse', 'vienna', 'austria', '1190');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `fk_driver_id` int(11) DEFAULT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `fk_pick_up_location_id` int(11) DEFAULT NULL,
  `fk_return_location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `fk_driver_id`, `fk_car_id`, `fk_pick_up_location_id`, `fk_return_location_id`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `return_location`
--

CREATE TABLE `return_location` (
  `return_location_id` int(11) NOT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_location`
--

INSERT INTO `return_location` (`return_location_id`, `adress`, `city`, `country`, `zip`) VALUES
(1, 'aaaa', 'aaaa', 'aaaaaa', 'aaaaa'),
(2, 'bbbbb', 'bbbbb', 'bbbb', 'bbbbb'),
(3, 'cccc', 'ccc', 'cccc', 'ccccc'),
(4, 'dddd', 'ddddd', 'dddd', 'dddd'),
(5, 'eee', 'eee', 'eeeee', 'eeee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_charges`
--
ALTER TABLE `additional_charges`
  ADD PRIMARY KEY (`additional_charges_id`),
  ADD KEY `fk_car_id` (`fk_car_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_category_id` (`fk_category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `fk_reservation_id` (`fk_reservation_id`);

--
-- Indexes for table `pick_up_location`
--
ALTER TABLE `pick_up_location`
  ADD PRIMARY KEY (`pick_up_location_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `fk_driver_id` (`fk_driver_id`),
  ADD KEY `fk_car_id` (`fk_car_id`),
  ADD KEY `fk_pick_up_location_id` (`fk_pick_up_location_id`),
  ADD KEY `fk_return_location_id` (`fk_return_location_id`);

--
-- Indexes for table `return_location`
--
ALTER TABLE `return_location`
  ADD PRIMARY KEY (`return_location_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `additional_charges`
--
ALTER TABLE `additional_charges`
  ADD CONSTRAINT `additional_charges_ibfk_1` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fk_category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`fk_reservation_id`) REFERENCES `reservation` (`reservation_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`fk_driver_id`) REFERENCES `driver` (`driver_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`fk_pick_up_location_id`) REFERENCES `pick_up_location` (`pick_up_location_id`),
  ADD CONSTRAINT `reservation_ibfk_4` FOREIGN KEY (`fk_return_location_id`) REFERENCES `return_location` (`return_location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
