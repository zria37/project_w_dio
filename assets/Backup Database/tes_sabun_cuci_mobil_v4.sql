-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 09:33 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_sabun_cuci_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_info_meta`
--

CREATE TABLE `basic_info_meta` (
  `id` tinyint(10) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact_1` varchar(15) NOT NULL,
  `contact_2` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `website` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basic_info_meta`
--

INSERT INTO `basic_info_meta` (`id`, `fullname`, `address`, `contact_1`, `contact_2`, `email`, `website`, `logo`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'Sabun Aryanz', 'Jabar, Indonesia', '08123981232', '1231231232', 'halo@sabun-aryanz.com', 'http://sabun-aryanz.com', 'logo.png', '2020-11-16 03:02:30', '2020-12-02 02:40:37', 'gudang');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` tinyint(10) NOT NULL,
  `full_name` varchar(128) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `cust_type` enum('retail','reseller') NOT NULL DEFAULT 'retail',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `full_name`, `address`, `phone`, `cust_type`, `created_at`, `is_deleted`) VALUES
(1, 'Joe Bidan', 'Menara', '0877213176782', 'retail', '2020-11-11 00:25:50', 0),
(2, 'Tori Obama', 'Timoer Timoer', '0877216126', 'retail', '2020-11-11 00:25:50', 0),
(3, 'Pawer Renjer', 'Imajinasi', '0856213125', 'retail', '2020-11-16 21:47:20', 0),
(4, 'Bruce lee', 'York New', '0854465478', 'reseller', '2020-11-16 21:47:20', 0),
(5, 'Jake Separow', 'Going Merry', '0845111487', 'retail', '2020-11-16 21:50:32', 0),
(6, 'tester', 'Tempat makan', '04567182332', 'retail', '2020-11-16 23:57:06', 0),
(7, 'tester2', 'Tempat makan 2', '0888888888', 'retail', '2020-11-16 23:59:53', 0),
(8, 'tester3', 'Tempat makan 3', '0888888889', 'reseller', '2020-11-17 00:01:03', 0),
(9, 'tester', 'Tempat makan', '0888888890', 'reseller', '2020-11-17 00:02:13', 0),
(10, 'Jackpot', 'Jendela', '085677839992', 'retail', '2020-11-17 00:45:27', 0),
(11, 'custo', 'omerr', '00000000000', 'reseller', '2020-11-17 01:29:31', 0),
(12, 'tes video', 'internet', '0888888888', 'retail', '2020-11-17 12:32:45', 0),
(13, 'tes 1', 'oqiewpq', '0804465456456', 'retail', '2020-11-19 15:43:24', 0),
(14, 'tes 2', 'qweqwe', '31323232323232', 'retail', '2020-11-19 15:44:41', 0),
(15, 'tes 4', 'saturnus', '08181815454', 'retail', '2020-11-19 15:45:30', 0),
(16, 'tesaja1', 'kosan', '0812837129838', 'retail', '2020-11-19 16:34:14', 0),
(17, 'mas 1', 'laptop', '0877123829371', 'reseller', '2020-11-19 19:09:24', 0),
(18, 'mas 2', 'komputer', '087717172662', 'retail', '2020-11-19 19:33:18', 0),
(19, 'mas 3', 'komputer', '087717172662', 'retail', '2020-11-19 19:33:39', 0),
(20, 'mas 3', 'kotak', '087717172662', 'retail', '2020-11-19 19:34:51', 0),
(21, 'mas 5', 'kimaia', '08888888882', 'retail', '2020-11-19 19:42:22', 0),
(22, 'mas 6', 'pleistesien', '0888321767227', 'retail', '2020-11-19 19:43:25', 0),
(23, 'mas 6', 'pleistesien', '0888321767227', 'retail', '2020-11-19 19:43:47', 0),
(24, 'joss 1', 'planet', '088892377743', 'reseller', '2020-11-19 19:44:41', 0),
(25, 'nama 1', 'Kepulauan 1000, Antartika', '08771231823', 'retail', '2020-11-20 15:00:00', 0),
(26, 'nama 2', 'Kepulauan 1001, Antartika', '08771231824', 'reseller', '2020-11-20 15:00:00', 0),
(27, 'nama 3', 'Kepulauan 1002, Antartika', '08771231825', 'retail', '2020-11-20 15:00:00', 0),
(28, 'nama 4', 'Kepulauan 1003, Antartika', '08771231826', 'retail', '2020-11-20 15:00:00', 0),
(29, 'nama 5', 'Kepulauan 1004, Antartika', '08771231827', 'retail', '2020-11-20 15:00:00', 0),
(30, 'nama 6', 'Kepulauan 1005, Antartika', '08771231828', 'reseller', '2020-11-20 15:00:00', 0),
(31, 'nama 7', 'Kepulauan 1006, Antartika', '08771231829', 'reseller', '2020-11-20 15:00:00', 0),
(32, 'nama 8', 'Kepulauan 1007, Antartika', '08771231830', 'retail', '2020-11-20 15:00:00', 0),
(33, 'nama 9', 'Kepulauan 1008, Antartika', '08771231831', 'reseller', '2020-11-20 15:00:00', 0),
(34, 'nama 10', 'Kepulauan 1009, Antartika', '08771231832', 'retail', '2020-11-20 15:00:00', 0),
(35, 'nama 11', 'Kepulauan 1010, Antartika', '08771231833', 'reseller', '2020-11-20 15:00:00', 0),
(36, 'nama 12', 'Kepulauan 1011, Antartika', '08771231834', 'retail', '2020-11-20 15:00:00', 0),
(37, 'nama 13', 'Kepulauan 1012, Antartika', '08771231835', 'reseller', '2020-11-20 15:00:00', 0),
(38, 'nama 14', 'Kepulauan 1013, Antartika', '08771231836', 'reseller', '2020-11-20 15:00:00', 0),
(39, 'nama 15', 'Kepulauan 1014, Antartika', '08771231837', 'retail', '2020-11-20 15:00:00', 0),
(40, 'nama 16', 'Kepulauan 1015, Antartika', '08771231838', 'reseller', '2020-11-20 15:00:00', 0),
(41, 'nama 17', 'Kepulauan 1016, Antartika', '08771231839', 'retail', '2020-11-20 15:00:00', 0),
(42, 'pleanggan', 'sdsadasdasdasdasd', '098765789876', 'reseller', '2020-11-21 15:51:28', 0),
(43, 'beruang 1', 'kutub', '087727712839', 'reseller', '2020-11-26 16:50:25', 0),
(44, 'beruang 2', 'kutub', '0812389378878', 'reseller', '2020-11-26 16:51:32', 0),
(45, 'beruang 3', 'kutub', '0846545451518', 'reseller', '2020-11-26 17:03:34', 0),
(46, 'beruang 4', 'kutub', '0856215444487', 'reseller', '2020-11-26 17:04:33', 0),
(47, 'Jhon', 'Greenland', '0871161166172', 'retail', '2020-12-09 12:56:08', 0),
(48, 'Shin', 'Blueland', '086272772661', 'retail', '2020-12-09 12:57:07', 0),
(49, 'Jhona', 'Redline', '09882712777', 'retail', '2020-12-09 13:48:26', 0),
(50, 'Albert Shicuan', 'Denpasar, Bali, Indonesia', '08465489798', 'reseller', '2020-12-11 14:00:13', 0),
(51, 'Aku retail', 'Dalam perut bumi yang jauh', '084465766548', 'retail', '2020-12-11 19:54:44', 0),
(52, 'Aku reseller', 'Di atas langit yang dingin dan gelap', '088456887945', 'reseller', '2020-12-11 19:55:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_price`
--

CREATE TABLE `custom_price` (
  `id` tinyint(10) NOT NULL,
  `price` int(11) NOT NULL,
  `customer_id` tinyint(10) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_price`
--

INSERT INTO `custom_price` (`id`, `price`, `customer_id`, `product_code`, `created_at`, `is_deleted`) VALUES
(1, 500000, 3, 'DT003', '2020-11-20 15:00:00', 0),
(2, 450000, 3, 'DT001', '2020-11-20 15:00:00', 0),
(3, 125000, 11, 'DT005', '2020-11-20 15:00:00', 0),
(4, 40000, 24, 'DT004', '2020-11-20 15:00:00', 0),
(6, 50000, 24, 'DT005', '2020-11-20 15:00:00', 0),
(7, 1000, 24, 'DT001', '2020-11-20 15:00:00', 0),
(8, 25000, 24, 'DT002', '2020-11-20 15:00:00', 0),
(9, 63500, 24, 'DT006', '2020-11-20 15:00:00', 0),
(10, 10000, 44, 'DT001', '2020-11-26 17:02:58', 0),
(11, 7000, 46, 'DT005', '2020-11-30 19:10:10', 0),
(12, 23500, 46, 'DT001', '2020-11-26 17:51:47', 0),
(13, 14000, 46, 'DT003', '2020-11-26 17:51:47', 0),
(16, 89500, 24, 'DT003', '2020-12-09 13:46:19', 0),
(17, 79500, 49, 'DT004', '2020-12-09 13:49:17', 0),
(18, 12000, 49, 'DT001', '2020-12-09 16:12:07', 0),
(20, 500000, 46, 'DT007', '2020-12-09 22:53:48', 0),
(21, 300000, 49, 'DT006', '2020-12-10 22:55:42', 0),
(22, 650000, 48, 'DT007', '2020-12-10 22:58:30', 0),
(23, 75000, 48, 'DT003', '2020-12-10 22:58:30', 0),
(24, 315000, 48, 'DT006', '2020-12-10 22:59:15', 0),
(25, 32000, 50, 'DT012', '2020-12-11 14:01:28', 0),
(27, 40000, 52, 'DT012', '2020-12-11 19:57:06', 0),
(28, 95000, 52, 'DT011', '2020-12-11 19:57:06', 0),
(29, 58000, 52, 'DT005', '2020-12-11 19:57:06', 0),
(30, 100000, 52, 'DT004', '2020-12-11 19:57:06', 0),
(31, 56000, 52, 'DT003', '2020-12-11 19:57:06', 0),
(32, 33000, 52, 'DT002', '2020-12-11 19:57:06', 0),
(33, 31000, 52, 'DT001', '2020-12-11 19:57:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` tinyint(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT 'avatar-1.png',
  `role_id` tinyint(10) DEFAULT '2',
  `store_id` tinyint(10) DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `phone`, `address`, `avatar`, `role_id`, `store_id`, `created_at`, `is_deleted`) VALUES
(0, 'superadmin', 'superadmin@msn.com', '$2a$08$g6axSKDVOvmKJOTOYUbK/OO1DP5vsSRPNtRBowHc.nQs2v5VGsoky', 'Kaisar', 'Sihir', '087717071998', 'Langit', 'avatar-7.png', 0, 1, '2020-11-18 22:55:22', 0),
(1, 'pemilik', 'pemilik@msn.com', '$2a$08$TewpSs2aYottWdQaZLCHjeNpMdTPBV.xizhqPrHCiuWC3aHIwfGpy', 'Saya', 'Pemilik', '0871263612', 'Di kantor', 'avatar-1.png', 1, 1, '2020-11-10 22:48:27', 0),
(2, 'gudang', 'gudang@msn.com', '$2a$08$TewpSs2aYottWdQaZLCHjeNpMdTPBV.xizhqPrHCiuWC3aHIwfGpy', 'Admin', 'Gudang', '087213513441', 'Di gudang', 'avatar-1.png', 2, 1, '2020-11-10 22:52:15', 0),
(3, 'kasir_cica', 'kasir_cica@msn.com', '$2a$08$TewpSs2aYottWdQaZLCHjeNpMdTPBV.xizhqPrHCiuWC3aHIwfGpy', 'Kasir Cica', NULL, '0856123872', 'Di Cicalengka', 'avatar-1.png', 3, 2, '2020-11-10 22:54:23', 0),
(4, 'kasir_uber', 'kasir_uber@msn.com', '$2a$08$TewpSs2aYottWdQaZLCHjeNpMdTPBV.xizhqPrHCiuWC3aHIwfGpy', 'Kasir Uber', NULL, '08571123098', 'Di Ujung Beruang', 'avatar-1.png', 3, 3, '2020-11-10 22:54:23', 0),
(5, 'admins', 'admin1@jp.com', '$2a$08$HVX6fm.h9nJlfgYJxOlHOuKxvNB8ZJhWdB/qmuksTxaIJuT2RyoCG', 'dios', 'Ilham', '081236137132', 'Dipatiukur', 'avatar-0.png', 1, 1, '2020-11-17 03:19:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` tinyint(10) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `paid_amount` int(21) NOT NULL,
  `left_to_paid` int(21) NOT NULL,
  `paid_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transaction_id` tinyint(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_number`, `paid_amount`, `left_to_paid`, `paid_at`, `transaction_id`, `created_at`, `status`, `is_deleted`) VALUES
(28, '1/KS/12/2020', 1108000, -1107830, '2020-12-12 00:22:06', 20, '2020-12-12 00:22:06', '', 0),
(29, '2/KS/12/2020', 1081000, 0, '2020-12-13 01:11:12', 21, '2020-12-13 01:11:12', '', 0),
(30, '3/KS/12/2020', 2770000, 0, '2020-12-13 14:26:11', 29, '2020-12-13 14:26:11', '', 0),
(36, '4/KS/12/2020', 1000000, 214000, '2020-12-13 15:02:00', 35, '2020-12-13 15:02:00', '1', 0),
(37, '5/KS/12/2020', 100000, 114000, '2020-12-13 15:22:01', 35, '2020-12-13 15:22:00', '1', 0),
(38, '6/KS/12/2020', 50000, 64000, '2020-12-13 15:22:18', 35, '2020-12-13 15:22:18', '0', 0),
(39, '7/KS/12/2020', 1000000, 952000, '2020-12-13 15:26:37', 36, '2020-12-13 15:26:37', '0', 0),
(1, 'INV/1/0001', 50000, 0, '2020-11-20 15:00:00', 1, '2020-11-20 15:00:00', '0', 0),
(2, 'INV/2/0002', 15000, 0, '2020-11-20 15:00:00', 2, '2020-11-20 15:00:00', '0', 0),
(3, 'INV/3/0003', 65000, 0, '2020-11-20 15:00:00', 3, '2020-11-20 15:00:00', '0', 0),
(9, 'INV/4/0001', 34000, 0, '2020-11-21 17:00:00', 4, '2020-11-21 17:00:00', '0', 0),
(4, 'INV/4/0004', 50000, 34000, '2020-11-20 15:00:00', 4, '2020-11-20 15:00:00', '0', 1),
(5, 'INV/5/0005', 75000, 0, '2020-11-20 15:00:00', 5, '2020-11-20 15:00:00', '0', 0),
(10, 'INV/6/0002', 16000, 0, '2020-11-21 17:00:00', 6, '2020-11-21 17:00:00', '0', 0),
(6, 'INV/6/0006', 20000, 16000, '2020-11-20 15:00:00', 6, '2020-11-20 15:00:00', '0', 1),
(7, 'INV/7/0007', 92000, 0, '2020-11-20 15:00:00', 7, '2020-11-20 15:00:00', '0', 0),
(8, 'INV/8/0008', 48500, 0, '2020-11-20 15:00:00', 8, '2020-11-20 15:00:00', '0', 0),
(13, 'NO. 1//12/2020', 6000, -6000, '2020-12-05 17:26:50', 6, '2020-12-05 17:26:50', '0', 0),
(11, 'NO. 1/AR/11/2020', 0, -10000, '2020-11-28 03:14:21', 10, '2020-11-28 03:14:21', '0', 0),
(23, 'NO. 10/KS/12/2020', 5000, 5000, '2020-12-09 18:56:40', 18, '2020-12-09 18:56:40', '1', 1),
(24, 'NO. 11/KS/12/2020', 5000, 0, '2020-12-09 18:56:58', 18, '2020-12-09 18:56:58', '0', 0),
(25, 'NO. 12/KS/12/2020', 16000, 14000, '2020-12-09 19:13:11', 19, '2020-12-09 19:13:11', '1', 1),
(26, 'NO. 13/KS/12/2020', 4000, 10000, '2020-12-09 19:13:24', 19, '2020-12-09 19:13:24', '1', 1),
(27, 'NO. 14/KS/12/2020', 20000, -10000, '2020-12-09 19:13:33', 19, '2020-12-09 19:13:32', '0', 0),
(12, 'NO. 2/AR/11/2020', 0, -10000, '2020-11-28 03:16:08', 11, '2020-11-28 03:16:08', '0', 0),
(15, 'NO. 2/AR/12/2020', 60000, 0, '2020-12-05 17:30:34', 12, '2020-12-05 17:30:34', '0', 0),
(16, 'NO. 3/AR/12/2020', 30000, 0, '2020-12-05 17:31:34', 13, '2020-12-05 17:31:34', '0', 0),
(17, 'NO. 4/AR/12/2020', 40000, -5000, '2020-12-05 17:32:51', 14, '2020-12-05 17:32:51', '0', 0),
(18, 'NO. 5/KS/12/2020', 10000, -5000, '2020-12-09 13:55:45', 15, '2020-12-09 13:55:45', '0', 0),
(19, 'NO. 6/KS/12/2020', 20000, -5000, '2020-12-09 16:20:36', 16, '2020-12-09 16:20:36', '0', 0),
(20, 'NO. 7/KS/12/2020', 50000, 0, '2020-12-09 16:23:12', 17, '2020-12-09 16:23:12', '0', 0),
(21, 'NO. 8/KS/12/2020', 12000, 18000, '2020-12-09 18:55:59', 18, '2020-12-09 18:55:59', '1', 1),
(22, 'NO. 9/KS/12/2020', 8000, 10000, '2020-12-09 18:56:26', 18, '2020-12-09 18:56:26', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `id` tinyint(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `invoice_id` tinyint(10) NOT NULL,
  `product_id` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`id`, `quantity`, `item_price`, `invoice_id`, `product_id`) VALUES
(1, 4, 10000, 1, 1),
(2, 6, 12000, 1, 2),
(3, 3, 14000, 2, 1),
(4, 2, 16000, 3, 4),
(5, 4, 18000, 4, 4),
(6, 4, 20000, 4, 5),
(7, 6, 22000, 4, 6),
(8, 3, 24000, 5, 1),
(9, 2, 26000, 6, 3),
(10, 4, 28000, 7, 1),
(11, 4, 30000, 7, 2),
(12, 6, 32000, 7, 3),
(13, 3, 34000, 7, 4),
(14, 2, 36000, 7, 5),
(15, 4, 38000, 8, 3),
(16, 7, 40000, 8, 6),
(17, 1, 10000, 9, 1),
(18, 1, 10000, 11, 1),
(19, 1, 10000, 12, 1),
(20, 2, 30000, 15, 2),
(21, 1, 15000, 16, 2),
(22, 3, 45000, 17, 2),
(23, 1, 15000, 18, 2),
(24, 1, 25000, 19, 3),
(25, 3, 45000, 20, 2),
(26, 1, 30000, 21, 2),
(27, 1, 30000, 25, 2),
(28, 1, 1, 28, 1),
(29, 13, 169, 28, 13),
(30, 1, 1, 29, 1),
(31, 9, 81, 29, 9),
(32, 13, 169, 29, 13),
(33, 10, 270000, 1, 1),
(34, 5, 150000, 1, 2),
(35, 10, 320000, 1, 9),
(36, 50, 600000, 1, 13),
(48, 9, 243000, 36, 1),
(49, 4, 120000, 36, 2),
(50, 70, 245000, 36, 13),
(51, 61, 1952000, 39, 9);

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id` tinyint(10) NOT NULL,
  `kas_code` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text,
  `date` date NOT NULL,
  `debet` int(30) NOT NULL,
  `kredit` int(30) NOT NULL,
  `final_balance` int(30) NOT NULL,
  `type` enum('debet','kredit') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`id`, `kas_code`, `title`, `description`, `date`, `debet`, `kredit`, `final_balance`, `type`, `created_at`, `created_by`) VALUES
(1, 'D/20/11/0001', 'Uang kas awal', NULL, '2020-11-25', 100000000, 0, 100000000, 'debet', '2020-11-28 20:56:55', 'superadmin'),
(2, 'K/20/11/0002', 'Sewa gudang pusat per tahun', NULL, '2020-11-26', 0, 60000000, 40000000, 'kredit', '2020-11-28 20:57:51', 'superadmin'),
(3, 'K/20/11/0003', 'Ongkos bongkar pasang tukang', NULL, '2020-11-26', 0, 10000000, 30000000, 'kredit', '2020-11-28 20:58:09', 'superadmin'),
(4, 'K/20/11/0004', 'Sewa toko cabang 1 per tahun', NULL, '2020-11-27', 0, 60000000, -30000000, 'kredit', '2020-11-28 20:58:40', 'superadmin'),
(5, 'K/20/11/0005', 'Sewa toko cabang 2 per tahun', NULL, '2020-11-27', 0, 80000000, -110000000, 'kredit', '2020-11-28 20:59:12', 'superadmin'),
(6, 'D/20/11/0006', 'Investor 1', NULL, '2020-11-28', 100000000, 0, -10000000, 'debet', '2020-11-28 20:59:25', 'superadmin'),
(7, 'D/20/11/0007', 'Investor 2', NULL, '2020-11-29', 120000000, 0, 110000000, 'debet', '2020-11-28 20:59:39', 'superadmin'),
(8, 'D/20/11/0008', 'Dari donatur awal bulan', NULL, '2020-12-01', 250000, 0, 110250000, 'debet', '2020-11-29 07:13:07', 'superadmin'),
(9, 'K/20/12/0001', 'Sedekah', 'Alhamdulillah', '2020-12-29', 0, 125000, 110125000, 'kredit', '2020-12-29 07:21:20', 'superadmin'),
(10, 'D/20/12/0002', 'Donasi', NULL, '2020-12-30', 560500, 0, 110685500, 'debet', '2020-12-29 07:22:39', 'superadmin'),
(11, 'K/20/12/0003', 'Bensin motor', NULL, '2020-12-30', 0, 35000, 110650500, 'kredit', '2020-12-29 07:23:51', 'superadmin'),
(12, 'K/20/12/0004', 'Bensin motor 2', '123', '2020-12-30', 0, 17000, 110633500, 'kredit', '2020-12-29 07:26:42', 'superadmin'),
(13, 'K/20/12/0005', 'Bensin motor 3', '0', '2020-12-30', 0, 18000, 110615500, 'kredit', '2020-12-29 07:27:26', 'superadmin'),
(14, 'K/20/12/0006', 'Bensin motor 4', '1', '2020-12-30', 0, 22000, 110593500, 'kredit', '2020-12-29 07:28:05', 'superadmin'),
(15, 'K/20/12/0007', 'Bensin motor 5', NULL, '2020-12-30', 0, 16500, 110577000, 'kredit', '2020-12-29 07:28:45', 'superadmin'),
(16, 'D/20/12/0008', 'Donasi', '1', '2020-12-30', 50000, 0, 110627000, 'debet', '2020-12-29 07:29:12', 'superadmin'),
(17, 'K/20/12/0009', 'Bensin mobil', 'Mantapp', '2020-12-31', 0, 126000, 110501000, 'kredit', '2020-12-29 07:29:50', 'superadmin'),
(18, 'K/20/12/0010', 'Bonus tunjangan akhir tahun', NULL, '2020-12-31', 0, 75265000, 35236000, 'kredit', '2020-12-29 07:30:36', 'superadmin'),
(19, 'K/20/12/0011', 'Servis motor dan mobil', 'Servis di bengkel resmi', '2020-12-31', 0, 12000000, 23236000, 'kredit', '2020-12-29 07:31:29', 'superadmin'),
(20, 'K/20/11/0001', 'Bayar gorengan', NULL, '2020-11-30', 0, 7000, 23229000, 'kredit', '2020-11-29 11:06:24', 'superadmin'),
(21, 'K/20/11/0002', 'Bayar gorengan', NULL, '2020-11-30', 0, 7000, 23222000, 'kredit', '2020-11-29 11:07:09', 'superadmin'),
(22, 'K/20/11/0003', 'Bayar mie ayam', NULL, '2020-11-30', 0, 32000, 23190000, 'kredit', '2020-11-29 11:07:54', 'superadmin'),
(23, 'K/20/11/0004', 'Bayar mie ayam 2', NULL, '2020-11-30', 0, 21000, 23169000, 'kredit', '2020-11-29 11:09:00', 'superadmin'),
(24, 'D/20/11/0005', 'Investor 1', NULL, '2020-11-30', 200000, 0, 23369000, 'debet', '2020-11-29 11:17:37', 'superadmin'),
(25, 'K/20/11/0006', 'Bayar batagor', NULL, '2020-11-30', 0, 9000, 23360000, 'kredit', '2020-11-29 11:20:29', 'superadmin'),
(26, 'D/20/11/0007', 'Donasi', NULL, '2020-11-30', 25000, 0, 23385000, 'debet', '2020-11-29 11:21:42', 'superadmin'),
(27, 'D/20/12/0001', 'Sedekah', NULL, '2020-12-09', 78000, 0, 23463000, 'debet', '2020-12-09 06:58:45', 'superadmin'),
(28, 'K/20/12/0002', 'Bayar parkir truk', NULL, '2020-12-10', 0, 15000, 23448000, 'kredit', '2020-12-09 17:48:56', 'superadmin'),
(29, 'K/20/12/0003', 'Beli 3 komputer', 'Untuk keperluan operasional, menggantikan komputer yang lama', '2020-12-10', 0, 19000000, 4448000, 'kredit', '2020-12-09 17:49:51', 'superadmin'),
(30, 'K/20/12/0004', 'Cairan sabun merah - 230 gram', NULL, '2020-12-11', 0, 2760, 4445240, 'kredit', '2020-12-11 06:41:20', 'superadmin'),
(31, 'K/20/12/0005', 'Cairan sabun biru - 230 gram', NULL, '2020-12-11', 0, 4675, 4440565, 'kredit', '2020-12-11 06:41:50', 'superadmin'),
(32, 'K/20/12/0006', 'Beli cairan sabun biru - 885470 gram', NULL, '2020-12-11', 0, 22136750, -17696185, 'kredit', '2020-12-11 06:43:35', 'superadmin'),
(33, 'K/20/12/0007', 'Beli cairan sabun merah - 957884 gram', NULL, '2020-12-11', 0, 11494608, -29190793, 'kredit', '2020-12-11 06:44:45', 'superadmin'),
(34, 'K/20/12/0008', 'Pengadaan kendaran transportasi - 2 armada', 'Hodan Beat 2020', '2020-12-11', 0, 25000000, -54190793, 'kredit', '2020-12-11 06:45:09', 'superadmin'),
(35, 'D/20/12/0009', 'Investor 3', NULL, '2020-12-11', 50000000, 0, -4190793, 'debet', '2020-12-11 06:46:36', 'superadmin'),
(36, 'D/20/12/0010', 'Komisi 1 - Partner CV. SCBS', NULL, '2020-12-11', 10000000, 0, 5809207, 'debet', '2020-12-11 06:48:21', 'superadmin'),
(37, 'D/20/12/0011', 'Checkout: INV 3/KS/12/2020', 'Total harga:2770000 ; Total bayar:2770000 ; Sisa harus dibayar:0 ; Oleh:superadmin', '2020-12-13', 2770000, 0, 8579207, 'debet', '2020-12-13 07:26:11', 'superadmin'),
(38, 'D/20/12/0012', 'Checkout: INV 4/KS/12/2020', 'Total harga:1214000 ; Total bayar:1000000 ; Sisa harus dibayar:214000 ; Oleh:superadmin', '2020-12-13', 1000000, 0, 9579207, 'debet', '2020-12-13 08:02:00', 'superadmin'),
(39, 'D/20/12/0013', 'Checkout: INV 7/KS/12/2020', 'Total harga:1952000 ; Total bayar:1000000 ; Sisa harus dibayar:952000 ; Oleh:superadmin', '2020-12-13', 1000000, 0, 10579207, 'debet', '2020-12-13 08:26:38', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` tinyint(10) NOT NULL,
  `material_code` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `unit` enum('mililiter','gram') NOT NULL DEFAULT 'mililiter',
  `volume` int(11) NOT NULL DEFAULT '0' COMMENT 'Jumlah dalam ml / gr',
  `category` enum('bahan','kemasan') NOT NULL DEFAULT 'bahan',
  `image` varchar(250) DEFAULT 'default.png',
  `price_base` int(11) NOT NULL DEFAULT '0' COMMENT 'Harga dasar / Harga beli / HPP per unit(ml/gr)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `material_code`, `full_name`, `unit`, `volume`, `category`, `image`, `price_base`, `created_at`, `is_deleted`) VALUES
(1, 'BM001', 'Barang mentah 1', 'mililiter', 1000, 'bahan', 'default.png', 10000, '2020-11-16 17:40:30', 1),
(2, 'BM002', 'Barang mentah 2', 'mililiter', 233, 'bahan', 'default.png', 20000, '2020-11-16 17:40:30', 0),
(3, 'BM003', 'Barang Mentah 3', 'gram', 100, 'bahan', 'default.png', 5000, '2020-11-18 19:23:25', 0),
(4, 'BM004', 'Barang Mentah 4', 'gram', 500, 'bahan', 'default.png', 14000, '2020-11-18 19:24:05', 0),
(5, 'BM005', 'Barang Mentah 5', 'mililiter', 1500, 'kemasan', 'default.png', 15000, '2020-11-18 19:24:26', 0),
(6, 'BM006', 'Barang Mentah 6', 'gram', 1, 'bahan', 'default.png', 1000, '2020-11-28 02:34:37', 0),
(7, 'BM007', 'Barang Mentah 7', 'gram', 1, 'bahan', 'bukti_udah_di_upload_hehe.png', 12500, '2020-11-28 02:35:23', 0),
(8, 'BM008', 'Barang Mentah 8', 'gram', 1, 'bahan', 'default.png', 8300, '2020-11-28 02:46:39', 0),
(11, 'BM009', 'Cairan sabun biru', 'gram', 1, 'bahan', 'default.png', 25, '2020-12-11 13:27:48', 0),
(12, 'BM010', 'Cairan sabun merah', 'gram', 1, 'bahan', 'default.png', 12, '2020-12-11 13:31:13', 0),
(13, 'BM990', 'Tes inventory gaada row', 'gram', 1, 'bahan', 'default.png', 20, '2020-12-11 15:56:12', 0),
(14, 'BM991', 'Tes inventory ada row tapi 0', 'gram', 1, 'bahan', 'default.png', 50, '2020-12-11 15:56:32', 0),
(15, 'BM992', 'Tes inventory ada row dan >0', 'gram', 1, 'bahan', 'default.png', 125, '2020-12-11 15:57:04', 0),
(9, 'KMS001', 'Kemasan 500 ml', 'gram', 1, 'kemasan', 'avatar-4.png', 12500, '2020-12-01 16:43:11', 0),
(10, 'KMS002', 'Kemasan 1 Liter', 'gram', 1, 'kemasan', 'jerigen_1l.png', 17500, '2020-12-09 21:05:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `material_inventory`
--

CREATE TABLE `material_inventory` (
  `id` tinyint(10) NOT NULL,
  `material_id` tinyint(10) NOT NULL,
  `store_id` tinyint(10) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_inventory`
--

INSERT INTO `material_inventory` (`id`, `material_id`, `store_id`, `quantity`, `created_at`, `updated_at`, `created_by`, `updated_by`, `is_deleted`) VALUES
(1, 1, 1, 123, '2020-11-18 19:31:43', NULL, 'admins', NULL, 0),
(2, 2, 1, 0, '2020-11-18 19:31:43', NULL, 'admins', NULL, 0),
(3, 4, 1, 1, '2020-11-18 19:31:43', NULL, 'admins', NULL, 0),
(4, 3, 1, 999878, '2020-11-18 19:31:43', NULL, 'admins', NULL, 0),
(5, 5, 1, 1000001, '2020-11-18 19:31:43', NULL, 'admins', NULL, 0),
(6, 7, 1, 100000044, '2020-11-28 02:52:51', NULL, 'admins', 'admins', 0),
(7, 9, 1, 0, '2020-12-09 13:54:05', '2020-12-11 16:10:33', 'admins', 'admins', 0),
(8, 12, 1, 814614, '2020-12-11 13:33:56', '2020-12-11 13:42:15', 'admins', 'admins', 0),
(9, 11, 1, 885657, '2020-12-11 13:34:42', '2020-12-11 13:42:38', 'admins', 'admins', 0),
(10, 14, 1, 0, '2020-12-11 15:57:46', '2020-12-11 15:57:46', 'superadmin', 'superadmin', 0),
(11, 15, 1, 50000000, '2020-12-11 15:58:27', '2020-12-11 15:58:27', 'superadmin', 'superadmin', 0),
(26, 4, 1, 1, '2020-12-13 14:26:11', '2020-12-13 14:26:11', NULL, 'superadmin', 0),
(27, 3, 1, -4, '2020-12-13 14:26:11', '2020-12-13 14:26:11', NULL, 'superadmin', 0),
(28, 3, 1, -104, '2020-12-13 14:26:11', '2020-12-13 14:26:11', NULL, 'superadmin', 0),
(29, 9, 1, -69, '2020-12-13 14:26:11', '2020-12-13 14:26:11', NULL, 'superadmin', 0),
(30, 12, 1, -104550, '2020-12-13 14:26:11', '2020-12-13 14:26:11', NULL, 'superadmin', 0),
(31, 9, 1, -24, '2020-12-13 14:26:11', '2020-12-13 14:26:11', NULL, 'superadmin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `material_mutation`
--

CREATE TABLE `material_mutation` (
  `id` tinyint(10) NOT NULL,
  `material_id` tinyint(10) NOT NULL,
  `store_id` tinyint(10) NOT NULL,
  `mutation_code` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `mutation_type` enum('keluar','masuk') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(15) DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_mutation`
--

INSERT INTO `material_mutation` (`id`, `material_id`, `store_id`, `mutation_code`, `quantity`, `mutation_type`, `created_at`, `created_by`, `is_deleted`) VALUES
(51, 12, 1, '000001/MAT/KEL/13/12/2020', 18450, 'keluar', '2020-12-13 01:11:13', 'superadmin', 0),
(52, 9, 1, '000002/MAT/KEL/13/12/2020', 13, 'keluar', '2020-12-13 01:11:13', 'superadmin', 0),
(67, 4, 1, '000003/MAT/KEL/13/12/2020', 100, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(68, 3, 1, '000004/MAT/KEL/13/12/2020', 120, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(69, 3, 1, '000005/MAT/KEL/13/12/2020', 20, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(70, 9, 1, '000006/MAT/KEL/13/12/2020', 5, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(71, 12, 1, '000007/MAT/KEL/13/12/2020', 20500, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(72, 9, 1, '000008/MAT/KEL/13/12/2020', 50, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(94, 4, 1, '000009/MAT/KEL/13/12/2020', 90, 'keluar', '2020-12-13 15:02:00', 'superadmin', 0),
(95, 3, 1, '000010/MAT/KEL/13/12/2020', 108, 'keluar', '2020-12-13 15:02:00', 'superadmin', 0),
(96, 3, 1, '000011/MAT/KEL/13/12/2020', 16, 'keluar', '2020-12-13 15:02:00', 'superadmin', 0),
(97, 9, 1, '000012/MAT/KEL/13/12/2020', 4, 'keluar', '2020-12-13 15:02:00', 'superadmin', 0),
(98, 9, 1, '000013/MAT/KEL/13/12/2020', 70, 'keluar', '2020-12-13 15:02:00', 'superadmin', 0),
(99, 12, 1, '000014/MAT/KEL/13/12/2020', 125050, 'keluar', '2020-12-13 15:26:37', 'superadmin', 0),
(1, 1, 1, 'MSK0001', 43, 'masuk', '2020-11-01 15:00:00', 'admins', 0),
(2, 2, 1, 'MSK0002', 12, 'masuk', '2020-11-02 15:00:00', 'admins', 0),
(3, 3, 1, 'MSK0003', 32, 'masuk', '2020-11-03 15:00:00', 'admins', 0),
(4, 4, 1, 'MSK0004', 12, 'masuk', '2020-11-04 15:00:00', 'admins', 0),
(5, 5, 1, 'MSK0005', 54, 'masuk', '2020-11-05 15:00:00', 'admins', 0),
(6, 3, 1, 'MSK0006', 32, 'masuk', '2020-11-06 15:00:00', 'admins', 0),
(7, 1, 1, 'MSK0007', 9, 'masuk', '2020-11-07 15:00:00', 'admins', 0),
(8, 3, 1, 'MSK0008', 4, 'masuk', '2020-11-08 15:00:00', 'admins', 0),
(9, 2, 1, 'MSK0009', 19, 'masuk', '2020-11-09 15:00:00', 'admins', 0),
(10, 2, 1, 'MSK0010', 26, 'masuk', '2020-11-10 15:00:00', 'admins', 0),
(11, 4, 1, 'MSK0011', 15, 'masuk', '2020-11-11 15:00:00', 'admins', 0),
(12, 2, 1, 'MSK0012', 4, 'masuk', '2020-11-12 15:00:00', 'admins', 0),
(13, 5, 1, 'MSK0013', 12, 'masuk', '2020-11-13 15:00:00', 'admins', 0),
(14, 1, 1, 'MSK0014', 54, 'masuk', '2020-11-14 15:00:00', 'admins', 0),
(15, 5, 1, 'MSK0015', 19, 'masuk', '2020-11-15 15:00:00', 'admins', 0),
(16, 4, 1, 'MSK0016', 26, 'masuk', '2020-11-16 15:00:00', 'admins', 0),
(17, 5, 1, 'MSK0017', 15, 'masuk', '2020-11-17 15:00:00', 'admins', 0),
(18, 2, 1, 'MSK0018', 12, 'masuk', '2020-11-18 15:00:00', 'admins', 0),
(19, 3, 1, 'MSK0019', 54, 'masuk', '2020-11-19 15:00:00', 'admins', 0),
(24, 7, 1, 'MUTATION-MATERIAL-2020-11-27272', 100000000, 'masuk', '2020-11-28 03:04:25', 'superadmin', 0),
(26, 1, 1, 'MUTATION-MATERIAL-2020-11-27336', 50, 'keluar', '2020-11-28 03:14:21', 'superadmin', 0),
(30, 5, 1, 'MUTATION-MATERIAL-2020-11-27378', 5, 'keluar', '2020-11-28 03:16:09', 'superadmin', 0),
(22, 7, 1, 'MUTATION-MATERIAL-2020-11-27428', 44, 'masuk', '2020-11-28 02:52:51', 'superadmin', 0),
(29, 1, 1, 'MUTATION-MATERIAL-2020-11-27460', 50, 'keluar', '2020-11-28 03:16:08', 'superadmin', 0),
(23, 3, 1, 'MUTATION-MATERIAL-2020-11-27497', 12, 'masuk', '2020-11-28 02:58:27', 'superadmin', 0),
(21, 2, 1, 'MUTATION-MATERIAL-2020-11-27590', 8, 'masuk', '2020-11-28 02:51:18', 'superadmin', 0),
(25, 2, 1, 'MUTATION-MATERIAL-2020-11-27697', 10, 'keluar', '2020-11-28 03:14:21', 'superadmin', 0),
(27, 5, 1, 'MUTATION-MATERIAL-2020-11-27798', 5, 'keluar', '2020-11-28 03:14:22', 'superadmin', 0),
(20, 1, 1, 'MUTATION-MATERIAL-2020-11-27836', 123, 'masuk', '2020-11-28 02:50:10', 'superadmin', 0),
(28, 2, 1, 'MUTATION-MATERIAL-2020-11-27996', 10, 'keluar', '2020-11-28 03:16:08', 'superadmin', 0),
(31, 3, 1, 'MUTATION-MATERIAL-2020-12-05328', 6, 'keluar', '2020-12-05 17:30:35', 'superadmin', 0),
(33, 3, 2, 'MUTATION-MATERIAL-2020-12-0589', 9, 'keluar', '2020-12-05 17:32:51', 'kasir_cica', 0),
(32, 3, 2, 'MUTATION-MATERIAL-2020-12-05981', 3, 'keluar', '2020-12-05 17:31:35', 'kasir_cica', 0),
(37, 2, 1, 'MUTATION-MATERIAL-2020-12-09488', 3, 'keluar', '2020-12-09 16:20:37', 'superadmin', 0),
(38, 3, 2, 'MUTATION-MATERIAL-2020-12-09497', 9, 'keluar', '2020-12-09 16:23:13', 'kasir_cica', 0),
(39, 3, 2, 'MUTATION-MATERIAL-2020-12-09522', 3, 'keluar', '2020-12-09 18:55:59', 'kasir_cica', 0),
(35, 3, 1, 'MUTATION-MATERIAL-2020-12-09673', 3, 'keluar', '2020-12-09 13:55:46', 'superadmin', 0),
(34, 9, 1, 'MUTATION-MATERIAL-2020-12-09741', 19, 'masuk', '2020-12-09 13:54:05', 'superadmin', 0),
(40, 3, 1, 'MUTATION-MATERIAL-2020-12-09862', 3, 'keluar', '2020-12-09 19:13:11', 'superadmin', 0),
(36, 3, 1, 'MUTATION-MATERIAL-2020-12-09960', 17, 'keluar', '2020-12-09 16:20:37', 'superadmin', 0),
(42, 11, 1, 'MUTATION-MATERIAL-2020-12-11161', 187, 'masuk', '2020-12-11 13:34:42', 'superadmin', 0),
(49, 9, 1, 'MUTATION-MATERIAL-2020-12-11186', 13, 'keluar', '2020-12-12 00:22:06', 'superadmin', 0),
(43, 12, 1, 'MUTATION-MATERIAL-2020-12-11412', 957884, 'masuk', '2020-12-11 13:42:15', 'superadmin', 0),
(45, 14, 1, 'MUTATION-MATERIAL-2020-12-1146', 1, 'masuk', '2020-12-11 15:57:46', 'superadmin', 0),
(44, 11, 1, 'MUTATION-MATERIAL-2020-12-11631', 885470, 'masuk', '2020-12-11 13:42:38', 'superadmin', 0),
(47, 9, 1, 'MUTATION-MATERIAL-2020-12-11744', 100, 'masuk', '2020-12-11 16:10:33', 'superadmin', 0),
(46, 15, 1, 'MUTATION-MATERIAL-2020-12-11928', 50000000, 'masuk', '2020-12-11 15:58:27', 'superadmin', 0),
(48, 4, 1, 'MUTATION-MATERIAL-2020-12-11979', 10, 'keluar', '2020-12-12 00:22:06', 'superadmin', 0),
(41, 12, 1, 'MUTATION-MATERIAL-2020-12-11998', 230, 'masuk', '2020-12-11 13:33:56', 'superadmin', 0),
(50, 4, 1, 'MUTATION-MATERIAL-2020-12-12708', 10, 'keluar', '2020-12-13 01:11:13', 'superadmin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` tinyint(10) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `unit` enum('mililiter','gram') NOT NULL DEFAULT 'mililiter',
  `volume` int(11) NOT NULL DEFAULT '0' COMMENT 'Jumlah dalam ml / gr',
  `image` varchar(250) DEFAULT 'default.png',
  `price_base` int(11) NOT NULL DEFAULT '0' COMMENT 'Harga dasar / Harga beli / HPP',
  `selling_price` int(11) NOT NULL DEFAULT '0' COMMENT 'Harga jual yang dibuat dari harga total komposisi untuk membuatnya',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_code`, `full_name`, `unit`, `volume`, `image`, `price_base`, `selling_price`, `created_at`, `is_deleted`) VALUES
(1, 'DT001', 'Sabun Dettol 50ml - versi4', 'gram', 50, 'DT001.png', 140000, 27000, '2020-11-17 13:44:04', 0),
(2, 'DT002', 'Sabun Dettol 150ml', 'mililiter', 150, 'default.png', 32500, 30000, '2020-11-17 13:44:04', 0),
(3, 'DT003', 'Sabun Dettol 500ml', 'mililiter', 500, 'default.png', 157500, 50000, '2020-11-17 13:44:04', 0),
(4, 'DT004', 'Sabun Dettol 1L', 'mililiter', 1000, 'default.png', 17500, 78500, '2020-11-18 15:37:08', 0),
(5, 'DT005', 'Sabun Dettol 1.5L', 'gram', 15, 'default.png', 217500, 50000, '2020-11-18 16:12:08', 0),
(6, 'DT006', 'Sabun Dettol 10L', 'mililiter', 10000, 'default.png', 183500, 275000, '2020-11-18 17:33:36', 0),
(7, 'DT007', 'Sabun Soap Batang 50gr', 'gram', 1000, 'DT007.jpeg', 454500, 635000, '2020-12-09 19:49:05', 0),
(8, 'DT008', 'Dettol liquid 500ml', 'gram', 1, 'default.png', 244100, 317000, '2020-12-10 01:08:34', 0),
(9, 'DT009', 'Sabun Dove Milkbath', 'gram', 50, 'default.png', 24600, 32000, '2020-12-12 18:53:22', 0),
(10, 'DT010', 'Sabun Brand New Rose', 'gram', 100, 'DT009.png', 2080000, 124000, '2020-12-11 01:57:03', 0),
(11, 'DT011', 'Sabun Brand New Gold', 'gram', 1, 'default.png', 17500, 82000, '2020-12-11 01:58:25', 0),
(12, 'DT012', 'Sabun Hi-clean Silver', 'gram', 1000, 'DT011.png', 27590, 35000, '2020-12-11 13:52:56', 0),
(13, 'DT013', 'Sabun Ekonomis X', 'gram', 50, 'default.png', 12500, 0, '2020-12-11 15:39:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_composition`
--

CREATE TABLE `product_composition` (
  `id` tinyint(10) NOT NULL,
  `volume` int(11) NOT NULL COMMENT 'Jumlah dalam ml / gr',
  `product_id` tinyint(10) DEFAULT NULL,
  `material_id` tinyint(10) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_composition`
--

INSERT INTO `product_composition` (`id`, `volume`, `product_id`, `material_id`, `created_at`, `updated_at`, `is_deleted`) VALUES
(7, 4, 2, 3, '2020-11-20 15:00:00', '2020-12-11 16:11:49', 0),
(8, 17, 3, 3, '2020-12-09 15:55:29', '2020-12-09 15:57:42', 0),
(9, 3, 3, 2, '2020-12-09 15:55:30', '2020-12-09 15:57:42', 0),
(67, 1, 7, 9, '2020-12-09 22:30:12', '2020-12-09 22:32:35', 0),
(68, 110, 7, 6, '2020-12-09 22:30:12', '2020-12-09 22:43:04', 0),
(69, 40, 7, 8, '2020-12-09 22:30:12', '2020-12-09 22:43:24', 0),
(71, 1, 5, 10, '2020-12-09 22:44:48', '2020-12-09 22:44:48', 0),
(72, 20, 5, 1, '2020-12-09 22:44:48', '2020-12-09 22:44:48', 0),
(73, 1, 2, 9, '2020-12-09 22:45:38', '2020-12-09 22:45:38', 0),
(74, 1, 3, 9, '2020-12-09 22:47:03', '2020-12-09 22:47:03', 0),
(75, 1, 8, 9, '2020-12-10 01:30:14', '2020-12-10 01:30:14', 0),
(77, 1, 6, 10, '2020-12-10 03:05:57', '2020-12-10 03:05:57', 0),
(78, 20, 6, 8, '2020-12-10 03:06:21', '2020-12-10 03:06:21', 0),
(79, 10, 8, 7, '2020-12-10 03:21:28', '2020-12-10 03:21:28', 0),
(80, 12, 8, 8, '2020-12-10 03:21:28', '2020-12-10 03:21:28', 0),
(81, 7, 8, 6, '2020-12-10 03:21:28', '2020-12-11 01:07:10', 0),
(84, 1, 10, 10, '2020-12-11 02:06:05', '2020-12-11 02:34:14', 0),
(94, 5, 10, 3, '2020-12-11 02:19:59', '2020-12-11 02:19:59', 0),
(95, 3, 10, 7, '2020-12-11 02:19:59', '2020-12-11 02:19:59', 0),
(96, 100, 10, 2, '2020-12-11 03:00:24', '2020-12-11 03:01:16', 0),
(97, 1, 4, 10, '2020-12-11 03:09:20', '2020-12-11 03:09:47', 0),
(98, 1, 12, 10, '2020-12-11 13:54:48', '2020-12-11 13:54:48', 0),
(99, 320, 12, 12, '2020-12-11 13:54:48', '2020-12-11 13:54:48', 0),
(100, 250, 12, 11, '2020-12-11 13:54:48', '2020-12-11 13:54:48', 0),
(102, 1, 11, 10, '2020-12-11 14:04:29', '2020-12-11 14:04:29', 0),
(108, 1, 13, 9, '2020-12-11 15:43:52', '2020-12-11 15:43:52', 0),
(123, 10, 1, 4, '2020-12-11 16:09:26', '2020-12-11 16:09:26', 0),
(124, 2050, 9, 12, '2020-12-12 18:54:18', '2020-12-12 18:54:18', 0),
(125, 12, 1, 3, '2020-12-13 12:38:46', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_mutation`
--

CREATE TABLE `product_mutation` (
  `id` tinyint(10) NOT NULL,
  `product_id` tinyint(10) NOT NULL,
  `store_id` tinyint(10) NOT NULL,
  `mutation_code` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `mutation_type` enum('keluar','masuk') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(15) DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_mutation`
--

INSERT INTO `product_mutation` (`id`, `product_id`, `store_id`, `mutation_code`, `quantity`, `mutation_type`, `created_at`, `created_by`, `is_deleted`) VALUES
(35, 13, 1, '000001/PRO/KEL/13/12/2020', 13, 'keluar', '2020-12-13 01:11:13', 'superadmin', 0),
(46, 1, 1, '000002/PRO/KEL/13/12/2020', 10, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(47, 2, 1, '000003/PRO/KEL/13/12/2020', 5, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(48, 9, 1, '000004/PRO/KEL/13/12/2020', 10, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(49, 13, 1, '000005/PRO/KEL/13/12/2020', 50, 'keluar', '2020-12-13 14:26:11', 'superadmin', 0),
(61, 1, 1, '000006/PRO/KEL/13/12/2020', 9, 'keluar', '2020-12-13 15:02:00', 'superadmin', 0),
(62, 2, 1, '000007/PRO/KEL/13/12/2020', 4, 'keluar', '2020-12-13 15:02:00', 'superadmin', 0),
(63, 13, 1, '000008/PRO/KEL/13/12/2020', 70, 'keluar', '2020-12-13 15:02:00', 'superadmin', 0),
(64, 9, 1, '000009/PRO/KEL/13/12/2020', 61, 'keluar', '2020-12-13 15:26:37', 'superadmin', 0),
(20, 1, 1, '74741711', 1, 'keluar', '2020-11-21 12:24:41', 'superadmin', 0),
(1, 1, 2, 'KLR001', 43, 'keluar', '2020-11-01 15:00:00', 'admins', 0),
(5, 5, 3, 'KLR002', 54, 'keluar', '2020-11-05 15:00:00', 'admins', 0),
(6, 6, 3, 'KLR003', 32, 'keluar', '2020-11-06 15:00:00', 'admins', 0),
(10, 2, 3, 'KLR004', 26, 'keluar', '2020-11-10 15:00:00', 'admins', 0),
(11, 4, 2, 'KLR005', 15, 'keluar', '2020-11-11 15:00:00', 'admins', 0),
(15, 5, 2, 'KLR006', 19, 'keluar', '2020-11-15 15:00:00', 'admins', 0),
(16, 4, 2, 'KLR007', 26, 'keluar', '2020-11-16 15:00:00', 'admins', 0),
(2, 2, 2, 'MSK001', 12, 'masuk', '2020-11-02 15:00:00', 'admins', 0),
(3, 3, 2, 'MSK002', 32, 'masuk', '2020-11-03 15:00:00', 'admins', 0),
(4, 4, 2, 'MSK003', 12, 'masuk', '2020-11-04 15:00:00', 'admins', 0),
(7, 1, 2, 'MSK004', 9, 'masuk', '2020-11-07 15:00:00', 'admins', 0),
(8, 3, 3, 'MSK005', 4, 'masuk', '2020-11-08 15:00:00', 'admins', 0),
(9, 2, 3, 'MSK006', 19, 'masuk', '2020-11-09 15:00:00', 'admins', 0),
(12, 6, 3, 'MSK007', 4, 'masuk', '2020-11-12 15:00:00', 'admins', 0),
(13, 5, 3, 'MSK008', 12, 'masuk', '2020-11-13 15:00:00', 'admins', 0),
(14, 1, 3, 'MSK009', 54, 'masuk', '2020-11-14 15:00:00', 'admins', 0),
(17, 5, 3, 'MSK010', 15, 'masuk', '2020-11-17 15:00:00', 'admins', 0),
(18, 2, 2, 'MSK011', 12, 'masuk', '2020-11-18 15:00:00', 'admins', 0),
(19, 3, 3, 'MSK012', 54, 'masuk', '2020-11-19 15:00:00', 'admins', 0),
(21, 1, 1, 'MUTATION-2020-11-27 09:14:21pm586', 1, 'keluar', '2020-11-28 03:14:21', 'superadmin', 0),
(22, 1, 1, 'MUTATION-2020-11-27 09:16:08pm769', 1, 'keluar', '2020-11-28 03:16:08', 'superadmin', 0),
(23, 2, 1, 'MUTATION-2020-12-05 11:30:35am228', 2, 'keluar', '2020-12-05 17:30:35', 'superadmin', 0),
(24, 2, 2, 'MUTATION-2020-12-05 11:31:35am701', 1, 'keluar', '2020-12-05 17:31:35', 'kasir_cica', 0),
(25, 2, 2, 'MUTATION-2020-12-05 11:32:51am515', 3, 'keluar', '2020-12-05 17:32:51', 'kasir_cica', 0),
(30, 2, 1, 'MUTATION-2020-12-09 01:13:11pm729', 1, 'keluar', '2020-12-09 19:13:11', 'superadmin', 0),
(26, 2, 1, 'MUTATION-2020-12-09 07:55:46am190', 1, 'keluar', '2020-12-09 13:55:46', 'superadmin', 0),
(27, 3, 1, 'MUTATION-2020-12-09 10:20:36am869', 1, 'keluar', '2020-12-09 16:20:36', 'superadmin', 0),
(28, 2, 2, 'MUTATION-2020-12-09 10:23:12am279', 3, 'keluar', '2020-12-09 16:23:12', 'kasir_cica', 0),
(29, 2, 2, 'MUTATION-2020-12-09 12:55:59pm480', 1, 'keluar', '2020-12-09 18:55:59', 'kasir_cica', 0),
(31, 1, 1, 'MUTATION-2020-12-11 06:22:06pm150', 1, 'keluar', '2020-12-12 00:22:06', 'superadmin', 0),
(32, 13, 1, 'MUTATION-2020-12-11 06:22:06pm788', 13, 'keluar', '2020-12-12 00:22:06', 'superadmin', 0),
(33, 1, 1, 'MUTATION-2020-12-12 07:11:12pm128', 1, 'keluar', '2020-12-13 01:11:12', 'superadmin', 0),
(34, 9, 1, 'MUTATION-2020-12-12 07:11:13pm769', 9, 'keluar', '2020-12-13 01:11:13', 'superadmin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` tinyint(10) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `created_at`, `is_deleted`) VALUES
(0, 'superadmin', '2020-11-10 22:46:29', 0),
(1, 'owner', '2020-11-10 22:46:29', 0),
(2, 'admin', '2020-11-10 22:46:29', 0),
(3, 'cashier', '2020-11-10 22:46:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` tinyint(10) NOT NULL,
  `store_name` varchar(128) NOT NULL,
  `address` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `store_name`, `address`, `created_at`, `is_deleted`) VALUES
(1, 'Gudang Pusat', 'Jawa Barat, Indonesia', '2020-11-08 13:07:02', 0),
(2, 'Toko Cabang Cicalengka', 'Cicalengka', '2020-11-08 13:07:02', 0),
(3, 'Toko Cabang Ujung Berung', 'Ujung Berung', '2020-11-08 13:07:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` tinyint(10) NOT NULL,
  `trans_number` varchar(100) NOT NULL,
  `deliv_address` varchar(250) DEFAULT NULL,
  `price_total` int(11) NOT NULL,
  `store_id` tinyint(10) NOT NULL,
  `customer_id` tinyint(10) NOT NULL,
  `employee_id` tinyint(10) NOT NULL,
  `due_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `trans_number`, `deliv_address`, `price_total`, `store_id`, `customer_id`, `employee_id`, `due_at`, `created_at`, `is_deleted`) VALUES
(10, 'TRANS-11.27.201606529661', 'hutan flores', 10000, 1, 46, 0, '2020-12-05 03:14:21', '2020-11-28 03:14:21', 0),
(11, 'TRANS-11.27.201606529768', 'hutan flores', 10000, 1, 46, 0, '2020-12-05 03:16:08', '2020-11-28 03:16:08', 0),
(12, 'TRANS-12.05.201607185834', 'kutub', 30000, 1, 43, 0, '2020-12-12 17:30:34', '2020-12-05 17:30:34', 0),
(13, 'TRANS-12.05.201607185894', 'kutub', 15000, 2, 46, 3, '2020-12-12 17:31:34', '2020-12-05 17:31:34', 0),
(14, 'TRANS-12.05.201607185971', 'kutub', 45000, 2, 45, 3, '2020-12-12 17:32:51', '2020-12-05 17:32:51', 0),
(15, 'TRANS-12.09.201607518545', 'Blueland', 15000, 1, 48, 0, '2020-12-16 13:55:45', '2020-12-09 13:55:45', 0),
(16, 'TRANS-12.09.201607527236', 'Redline blueeeeeeeeeee', 25000, 1, 49, 0, '2020-12-16 16:20:36', '2020-12-09 16:20:36', 0),
(17, 'TRANS-12.09.201607527392', 'Redline blueeeeeeeeeee', 45000, 2, 49, 3, '2020-12-16 16:23:12', '2020-12-09 16:23:12', 0),
(18, 'TRANS-12.09.201607536559', 'Redline', 30000, 2, 49, 3, '2020-12-16 18:55:59', '2020-12-09 18:55:59', 0),
(19, 'TRANS-12.09.201607537591', 'Blueland seaaaaaaaaaaa', 30000, 1, 48, 0, '2020-12-16 19:13:11', '2020-12-09 19:13:11', 0),
(20, 'TRANS-12.11.201607728926', 'Dalam perut bumi yang jauhhhhhhhhhhhhhhhhhhhhhhh', 1108000, 1, 51, 0, '2020-12-19 00:22:06', '2020-12-12 00:22:06', 0),
(26, 'TRANS-13_12_20-000002', 'Redline blueeeeeeeeeeesea', 947000, 1, 49, 0, '2020-12-20 08:35:11', '2020-12-13 08:35:11', 0),
(27, 'TRANS-13_12_20-000003', 'Redline blueeeeeeeeeeesea', 947000, 1, 49, 0, '2020-12-20 08:36:04', '2020-12-13 08:36:04', 0),
(28, 'TRANS-13_12_20-000004', 'Redline blueeeeeeeeeeesea', 947000, 1, 49, 0, '2020-12-20 08:36:41', '2020-12-13 08:36:41', 0),
(21, 'TRANS-20_12_20-000001', 'Redline', 0, 1, 49, 0, '2020-12-20 01:11:12', '2020-12-13 01:11:12', 0),
(29, 'TRANS/12/20/000005', 'Redline', 2770000, 1, 49, 0, '2020-12-20 14:26:11', '2020-12-13 14:26:11', 0),
(9, 'TRANS747417', NULL, 10000, 1, 9, 0, '2020-11-28 12:24:41', '2020-11-21 12:24:41', 0),
(35, 'TRX/12/20/000006', 'Blueland', 1214000, 1, 48, 0, '2020-12-20 15:02:00', '2020-12-13 15:02:00', 0),
(36, 'TRX/12/20/000007', 'Greenland', 1952000, 1, 47, 0, '2020-12-20 15:26:37', '2020-12-13 15:26:37', 0),
(1, 'TRX2011010001', NULL, 50000, 2, 1, 3, '2020-11-20 15:00:00', '2020-11-20 15:00:00', 0),
(2, 'TRX2011010002', NULL, 15000, 2, 5, 3, '2020-11-20 15:00:00', '2020-11-20 15:00:00', 0),
(3, 'TRX2011010003', NULL, 65000, 2, 6, 3, '2020-11-27 15:00:00', '2020-11-20 15:00:00', 0),
(4, 'TRX2011020001', NULL, 84000, 3, 18, 4, '2020-11-20 15:00:00', '2020-11-20 15:00:00', 0),
(5, 'TRX2011030001', NULL, 75000, 2, 5, 3, '2020-11-20 15:00:00', '2020-11-20 15:00:00', 0),
(6, 'TRX2012010001', NULL, 36000, 3, 15, 4, '2020-11-27 15:00:00', '2020-11-20 15:00:00', 0),
(7, 'TRX2012010002', NULL, 92000, 3, 19, 4, '2020-11-27 15:00:00', '2020-11-20 15:00:00', 0),
(8, 'TRX2012010003', NULL, 48500, 3, 24, 4, '2020-11-27 15:00:00', '2020-11-20 15:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_info_meta`
--
ALTER TABLE `basic_info_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_price`
--
ALTER TABLE `custom_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `address` (`address`),
  ADD KEY `role_id` (`role_id`) USING BTREE,
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_number`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_code`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `material_inventory`
--
ALTER TABLE `material_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `product_id` (`material_id`);

--
-- Indexes for table `material_mutation`
--
ALTER TABLE `material_mutation`
  ADD PRIMARY KEY (`mutation_code`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `item_id` (`material_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_code`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `product_composition`
--
ALTER TABLE `product_composition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_mutation`
--
ALTER TABLE `product_mutation`
  ADD PRIMARY KEY (`mutation_code`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `item_id` (`product_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`trans_number`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basic_info_meta`
--
ALTER TABLE `basic_info_meta`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `custom_price`
--
ALTER TABLE `custom_price`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `invoice_item`
--
ALTER TABLE `invoice_item`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `material_inventory`
--
ALTER TABLE `material_inventory`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `material_mutation`
--
ALTER TABLE `material_mutation`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_composition`
--
ALTER TABLE `product_composition`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `product_mutation`
--
ALTER TABLE `product_mutation`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `custom_price`
--
ALTER TABLE `custom_price`
  ADD CONSTRAINT `custom_price_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `custom_price_ibfk_2` FOREIGN KEY (`product_code`) REFERENCES `product` (`product_code`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD CONSTRAINT `invoice_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_item_ibfk_3` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `material_inventory`
--
ALTER TABLE `material_inventory`
  ADD CONSTRAINT `material_inventory_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `material_inventory_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `material_mutation`
--
ALTER TABLE `material_mutation`
  ADD CONSTRAINT `material_mutation_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `material_mutation_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `product_composition`
--
ALTER TABLE `product_composition`
  ADD CONSTRAINT `product_composition_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_composition_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product_mutation`
--
ALTER TABLE `product_mutation`
  ADD CONSTRAINT `product_mutation_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_mutation_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
