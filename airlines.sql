-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 07:25 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlines`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
('mohammadzaafir123@gmail.com', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `booking_process`
--

CREATE TABLE `booking_process` (
  `f_id` int(100) NOT NULL,
  `u_id` int(100) DEFAULT NULL,
  `passenger_name` varchar(100) NOT NULL,
  `passenger_email` varchar(100) NOT NULL,
  `seat_number` int(100) NOT NULL,
  `payment_amount` int(100) NOT NULL,
  `ticket_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_process`
--

INSERT INTO `booking_process` (`f_id`, `u_id`, `passenger_name`, `passenger_email`, `seat_number`, `payment_amount`, `ticket_number`) VALUES
(48, 2, 'abhishek', 'abhi@gmail.com', 1, 24000, 'TKT-65faabf018352'),
(48, 2, 'abhilasha', 'abhilasha@gmail.com', 2, 24000, 'TKT-65faac2306fb9'),
(48, 3, 'J English', 'j@gmail.com', 6, 24000, 'TKT-65faac767b29b'),
(49, 4, 'Navya', 'navya@gmail.com', 8, 24000, 'TKT-65faacaf6ea74'),
(53, 7, 'Shahank', 'shashank@gmail.com', 16, 16000, 'TKT-65faaedbef81a'),
(53, 7, 'Shahank', 'shashank@gmail.com', 16, 16000, 'TKT-65faaeec754ea'),
(53, 7, 'Bigshow', 'bigshow@email.com', 14, 20000, 'TKT-65fb79c56f7c3'),
(53, 7, 'bigman', 'bigman@gmail.com', 17, 20000, 'TKT-65fb7ca643413'),
(59, 2, 'Abhishek', 'abhi@gmail.com', 20, 24000, 'TKT-65fb8e50e96cc'),
(59, 2, 'abhishek', 'abhi@gmail.com', 19, 16000, 'TKT-65fbceb39277c'),
(59, 2, 'abhishek', 'abhi@gmail.com', 1, 20000, 'TKT-65fd130f3a88c'),
(59, 2, 'abhishek', 'abhi@gmail.com', 1, 10000, 'TKT-65fd14680df38');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(20) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `e_phone` varchar(20) NOT NULL,
  `e_address` varchar(100) NOT NULL,
  `e_password` varchar(20) NOT NULL,
  `role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_email`, `e_phone`, `e_address`, `e_password`, `role_name`) VALUES
(1, 'Mohammad Zaafir', 'mohammadzaafir123@gmail.com', '8088422835', 'Venur, Karnataka, India', 'password123', 'Admin'),
(2, 'NIthin', 'nithinshetty94@gmail.com', '7892162963', 'Belthangady, Karnataka, India', 'password123', 'Admin'),
(16, 'Manohara M', 'manoharamambady@gmail.com', '9482402873', 'Bantwala, Karnataka, India', 'password123', 'Admin'),
(17, 'Abhinav Ashok', 'abhinav@gmail.com', '2323232323', 'Kerala', 'password123', 'Captain'),
(18, 'Shashank', 'shashank1@gmail.com', '3434343434', 'Mangalore, Karnataka, India', 'password123', 'Pilot'),
(19, 'Shilpa', 'shilpa@gmail.com', '2727272727', 'Mumbai, India', 'password123', 'Air hostage'),
(20, 'Pooja', 'pooja@gmail.com', '5656565656', 'Dharwad, Karnataka, India', 'password123', 'Air hostage'),
(21, 'Pratheek', 'pratheek@gmail.com', '5656565656', 'Karnataka, India', 'password123', 'Cabin Crew'),
(22, 'Ravi', 'ravi@gmail.com', '9898989898', 'Tamil Nadu, India', 'password123', 'Cabin Crew');

-- --------------------------------------------------------

--
-- Table structure for table `manage_booking`
--

CREATE TABLE `manage_booking` (
  `book_id` int(20) NOT NULL,
  `f_id` int(20) NOT NULL,
  `p_id` int(20) NOT NULL,
  `seat_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manage_flight`
--

CREATE TABLE `manage_flight` (
  `flight_id` int(20) NOT NULL,
  `departure` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manage_flight`
--

INSERT INTO `manage_flight` (`flight_id`, `departure`, `destination`, `date`, `departure_time`, `arrival_time`) VALUES
(44, 'Mangalore', 'North ', '2025-06-12', '2025-06-12 12:00:00', '2024-03-14 06:46:47'),
(46, 'Mangalore', 'India', '2024-03-14', '2024-03-14 12:25:00', '2024-03-14 13:25:00'),
(48, 'Mangalore', 'Dubai', '2024-03-14', '2024-03-14 12:40:00', '2024-03-14 16:40:00'),
(49, 'Mangalore', 'Dubai', '2024-03-14', '2024-03-14 20:00:00', '2024-03-15 00:00:00'),
(50, 'Mangalore', 'Dubai', '2024-03-15', '2024-03-15 12:00:00', '2024-03-15 16:00:00'),
(51, 'Mangalore', 'Dubai', '2024-03-16', '2024-03-16 12:00:00', '2024-03-16 16:00:00'),
(53, 'Mangalore', 'Dubai', '2024-03-20', '2024-03-20 17:31:00', '2024-03-20 21:31:00'),
(55, 'Mangalore', 'Dubai', '2024-03-20', '2024-03-20 10:00:00', '2024-03-20 14:00:00'),
(57, 'Mangalore', 'South America', '2024-03-21', '2024-03-21 09:30:00', '2024-03-22 01:30:00'),
(58, 'Mangalore', 'Australia', '2024-03-21', '2024-03-21 11:40:00', '2024-03-21 19:40:00'),
(59, 'Mangalore', 'Australia', '2024-03-21', '2024-03-21 13:00:00', '2024-03-21 21:00:00'),
(60, 'Mangalore', 'Australia', '2024-03-22', '2024-03-22 12:40:00', '2024-03-22 20:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `manage_passenger`
--

CREATE TABLE `manage_passenger` (
  `p_id` int(20) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `f_id` int(20) NOT NULL,
  `seat_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(20) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(20) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_phone` varchar(20) NOT NULL,
  `u_address` varchar(100) NOT NULL,
  `u_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_email`, `u_phone`, `u_address`, `u_password`) VALUES
(2, 'Abhishek U', 'abhi@gmail.com', '9997778881', 'mumbai, India', 'password2'),
(3, 'J English', 'j@gmail.com', '1234567891', 'Delhi,India', 'password2'),
(4, 'new', 'new@gmail.com', '1234567890', 'Moodbidri', 'password123'),
(5, 'Manohara', 'manu@gmail.com', '7585395739', 'Mambady', '$2y$10$cEdFib6uBOjyt'),
(6, 'abhinav', 'abhinav@gmail.com', '7584953467', 'Kerala', 'password2'),
(7, 'Shashank', 'shashank@gmail.com', '8697045367', 'Mangalore', 'password2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking_process`
--
ALTER TABLE `booking_process`
  ADD KEY `u_id` (`u_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `manage_booking`
--
ALTER TABLE `manage_booking`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `f_id` (`f_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `seat_id` (`seat_id`);

--
-- Indexes for table `manage_flight`
--
ALTER TABLE `manage_flight`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `manage_passenger`
--
ALTER TABLE `manage_passenger`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `p_id` (`p_id`),
  ADD UNIQUE KEY `seat_id` (`seat_id`),
  ADD UNIQUE KEY `p_id_2` (`p_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `manage_booking`
--
ALTER TABLE `manage_booking`
  MODIFY `book_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_flight`
--
ALTER TABLE `manage_flight`
  MODIFY `flight_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `manage_passenger`
--
ALTER TABLE `manage_passenger`
  MODIFY `p_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_process`
--
ALTER TABLE `booking_process`
  ADD CONSTRAINT `booking_process_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  ADD CONSTRAINT `booking_process_ibfk_2` FOREIGN KEY (`f_id`) REFERENCES `manage_flight` (`flight_id`);

--
-- Constraints for table `manage_booking`
--
ALTER TABLE `manage_booking`
  ADD CONSTRAINT `manage_booking_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `manage_flight` (`flight_id`),
  ADD CONSTRAINT `manage_booking_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `manage_passenger` (`p_id`),
  ADD CONSTRAINT `manage_booking_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `manage_passenger` (`seat_id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
