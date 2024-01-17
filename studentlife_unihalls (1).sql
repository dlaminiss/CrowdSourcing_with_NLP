-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 03, 2017 at 02:34 AM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `C1656328_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentlife_unihalls`
--

CREATE TABLE `studentlife_unihalls` (
  `hall_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `university_name_id` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `audience` varchar(1) NOT NULL,
  `period_end` date NOT NULL,
  `period_start` date NOT NULL,
  `roomtype` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentlife_unihalls`
--

INSERT INTO `studentlife_unihalls` (`hall_name`, `price`, `university_name_id`, `website`, `audience`, `period_end`, `period_start`, `roomtype`) VALUES
('Aberconway Hall ~ Cardiff University', '4376.65', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/aberconway-hall', '2', '2018-06-30', '2017-09-10', '2'),
('Aberdare Hall ~ Cardiff University', '4043.32', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/aberdare-hall', '3', '2018-06-30', '2017-09-10', '2'),
('Cartwright Court ~ Cardiff University', '4043.32', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/cartwright-court', '2', '2018-06-30', '2017-09-10', '1'),
('Colum Hall ~ Cardiff University', '4709.98', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/colum-hall', '2', '2018-06-30', '2017-09-10', '1'),
('Gordon Hall ~ Cardiff University', '5254.69', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/gordon-hall', '2', '2018-06-30', '2017-09-10', '1'),
('Hodge Hall ~ Cardiff University', '4376.65', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/hodge-hall', '1', '2018-06-30', '2017-09-10', '2'),
('Liberty Cambrian Point ~ Cardiff University', '5590.00', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/liberty-cambrian-point', '3', '2018-06-30', '2017-09-10', '1'),
('Liberty Fields ~ Cardiff University', '5181.50', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/union-state', '2', '2018-09-08', '2017-09-10', '2'),
('Senghennydd Hall ~ Cardiff University', '5254.69', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/senghennydd-hall', '2', '2018-09-08', '2017-08-10', '2'),
('Talybont court ~ Cardiff University', '6505.08', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/talybont-court', '1', '2018-08-08', '2017-09-10', '1'),
('Talybont Gate ~ Cardiff University', '5109.84', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/talybont-gate', '3', '2018-06-30', '2017-09-10', '1'),
('Talybont South ~ Cardiff University', '4709.98', 'Cardiff University', 'https://www.cardiff.ac.uk/study/accommodation/residences/talybont-south', '3', '2018-06-30', '2017-08-10', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentlife_unihalls`
--
ALTER TABLE `studentlife_unihalls`
  ADD PRIMARY KEY (`hall_name`),
  ADD KEY `studentlife_unihalls_university_name_id_bd9ba6d3_fk_studentli` (`university_name_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentlife_unihalls`
--
ALTER TABLE `studentlife_unihalls`
  ADD CONSTRAINT `studentlife_unihalls_university_name_id_bd9ba6d3_fk_studentli` FOREIGN KEY (`university_name_id`) REFERENCES `studentlife_universities` (`university_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
