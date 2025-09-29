-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 05:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `shoe_id` int(11) NOT NULL,
  `shoe_name` varchar(100) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `size` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`shoe_id`, `shoe_name`, `brand`, `category`, `size`, `price`, `stock`) VALUES
(1, 'Air jordan 1 low \"Travis Scott x Fragment\"', 'Nike', 'Casual', 42, 5500.00, 11),
(2, 'Air Force 1 Low', 'Nike', 'Casual', 43, 4000.00, 12),
(3, 'Air Jordan 1 Retro High', 'Nike', 'Basketball', 44, 6200.00, 5),
(4, 'Nike Dunk Low', 'Nike', 'Casual', 42, 3800.00, 8),
(5, 'Air Zoom Pegasus 39', 'Nike', 'Running', 41, 4800.00, 9),
(6, 'Zoom Freak 4', 'Nike', 'Basketball', 45, 5600.00, 6),
(7, 'LeBron 20', 'Nike', 'Basketball', 44, 6900.00, 4),
(8, 'Nike Blazer Mid 77', 'Nike', 'Casual', 42, 3500.00, 11),
(9, 'Nike React Infinity Run 3', 'Nike', 'Running', 43, 5200.00, 7),
(10, 'Nike Cortez Basic', 'Nike', 'Casual', 41, 2800.00, 13),
(11, 'Nike Kyrie Infinity', 'Nike', 'Basketball', 44, 5900.00, 5),
(12, 'Nike Air Max 270', 'Nike', 'Running', 42, 4900.00, 9),
(13, 'Nike SB Dunk High', 'Nike', 'Casual', 43, 4200.00, 6),
(14, 'Nike Free Run 5.0', 'Nike', 'Running', 41, 3700.00, 10),
(15, 'Nike Air Zoom Alphafly Next%', 'Nike', 'Running', 44, 8900.00, 3),
(17, 'Air jordan 1 hight mocha', 'Nike', 'Basket Ball', 42, 5500.00, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`shoe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shoes`
--
ALTER TABLE `shoes`
  MODIFY `shoe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
