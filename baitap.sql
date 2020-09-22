-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 11:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baitap`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nxb`
--

CREATE TABLE `tbl_nxb` (
  `ma_nxb` int(11) NOT NULL,
  `ten_nxb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nxb`
--

INSERT INTO `tbl_nxb` (`ma_nxb`, `ten_nxb`) VALUES
(1, 'Kim Dong'),
(2, 'Van Lang'),
(3, 'NXB Tre'),
(4, 'NXB Thanh nien');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sach`
--

CREATE TABLE `tbl_sach` (
  `ma_sach` int(11) NOT NULL,
  `ten_sach` varchar(255) NOT NULL,
  `namxb` int(11) NOT NULL,
  `manxb` int(11) NOT NULL,
  `tacgia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sach`
--

INSERT INTO `tbl_sach` (`ma_sach`, `ten_sach`, `namxb`, `manxb`, `tacgia`) VALUES
(1, 'De men phieu luu ki', 1997, 1, 'To hoai'),
(2, 'truyen cuoi tieu lam', 2000, 3, 'Tung nguyen ngoc'),
(3, 'Hiep-san phieu luu ki', 2019, 2, 'Hiep-san'),
(4, 'Tung-kun hat', 2020, 4, 'Tung-kun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_nxb`
--
ALTER TABLE `tbl_nxb`
  ADD PRIMARY KEY (`ma_nxb`);

--
-- Indexes for table `tbl_sach`
--
ALTER TABLE `tbl_sach`
  ADD PRIMARY KEY (`ma_sach`),
  ADD KEY `manxb` (`manxb`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_nxb`
--
ALTER TABLE `tbl_nxb`
  MODIFY `ma_nxb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sach`
--
ALTER TABLE `tbl_sach`
  MODIFY `ma_sach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_sach`
--
ALTER TABLE `tbl_sach`
  ADD CONSTRAINT `tbl_sach_ibfk_1` FOREIGN KEY (`manxb`) REFERENCES `tbl_nxb` (`ma_nxb`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
