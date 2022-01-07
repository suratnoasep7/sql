-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 09:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `name` text DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `createdAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `supplier_id`, `createdAt`) VALUES
(1, 'Product A', 1, '2021-01-01'),
(2, 'Product B', 3, '2021-03-31'),
(3, 'Product C', 5, '2021-05-05'),
(4, 'Product D', 7, '2020-07-17'),
(5, 'Product E', 11, '2020-11-30'),
(6, 'Product F', 13, '2020-01-03'),
(7, 'Product G', 10, '2020-08-08'),
(8, 'Product H', 8, '2021-06-13'),
(9, 'Product I', 6, '2021-04-21'),
(10, 'Product J', 4, '2021-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) NOT NULL,
  `name` text DEFAULT NULL,
  `suppliers` text DEFAULT NULL,
  `status` enum('live','deleted','pending') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `suppliers`, `status`) VALUES
(1, 'Alpha', 'https://randomuser.me/api/portraits/men/1.jpg', 'live'),
(2, 'Bravo', 'https://randomuser.me/api/portraits/men/2.jpg', 'deleted'),
(3, 'Charlie', 'https://randomuser.me/api/portraits/men/3.jpg', 'pending'),
(4, 'Delta', 'https://randomuser.me/api/portraits/men/4.jpg', 'live'),
(5, 'Echo', 'https://randomuser.me/api/portraits/men/5.jpg', 'live'),
(6, 'Foxtrot', 'https://randomuser.me/api/portraits/men/6.jpg', 'pending'),
(7, 'Golf', 'https://randomuser.me/api/portraits/men/7.jpg', 'live'),
(8, 'Romeo', 'https://randomuser.me/api/portraits/men/8.jpg', 'live'),
(9, 'Tango', 'https://randomuser.me/api/portraits/men/9.jpg', 'live'),
(10, 'Whiskey', 'https://randomuser.me/api/portraits/men/10.jpg', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_city`
--

CREATE TABLE `suppliers_city` (
  `id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `city` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers_city`
--

INSERT INTO `suppliers_city` (`id`, `supplier_id`, `city`) VALUES
(1, 1, 'Bekasi'),
(2, 2, 'Malang'),
(3, 3, 'Yogya'),
(4, 4, 'Surabaya'),
(5, 5, 'Jakarta'),
(6, 6, 'Pekanbaru'),
(7, 7, 'Makassar'),
(8, 8, 'Maluku'),
(9, 9, 'Papua'),
(10, 10, 'NTT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_id_uindex` (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_id_uindex` (`id`);

--
-- Indexes for table `suppliers_city`
--
ALTER TABLE `suppliers_city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_city_id_uindex` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers_city`
--
ALTER TABLE `suppliers_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
