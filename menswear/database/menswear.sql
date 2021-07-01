-- SQL Dump
-- Host: localhost

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--
-- Login: admin@admin.com
-- Password: admin

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '0123456789', 'Perm', '$5$rounds=535000$9vyKmeAHvbsGcxnM$dk9PZ/zlG9q9oCRXacnj.h566d.zpWUofVOsmR7gP52', 'manager', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(1, 1, 'test', 1, 2, 'Perm', '0123456789', 'no', '2021-06-21 13:05:07', NULL),
(2, 2, 'test2', 1, 3, 'Moscow', '0123456789', 'no', '2021-06-22 13:05:07', '2021-07-10'),
(3, 3, 'test3', 1, 2, 'Perm', '0123456789', 'no', '2021-06-22 15:09:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
-- Shoes --
(1, 'Loafers', 1200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 10, 'shoes', 'shoes', 's-001', '1.png', '2021-06-20 07:10:40'),
(2, 'Loafers', 900, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 11, 'shoes', 'shoes', 's-002', '2.png', '2021-06-20 07:10:40'),
(3, 'Brogues', 2900, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 12, 'shoes', 'shoes', 's-003', '3.jpg', '2021-06-20 07:10:40'),
(4, 'Brogues', 2300, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 13, 'shoes', 'shoes', 's-004', '4.jpg', '2021-06-20 07:10:40'),
(5, 'Brogues', 3300, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 4, 'shoes', 'shoes', 's-005', '5.jpg', '2021-06-20 07:10:40'),
(6, 'Sneakers', 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 24, 'shoes', 'shoes', 's-006', '6.png', '2021-06-20 07:10:40'),
(7, 'Sneakers', 600, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 34, 'shoes', 'shoes', 's-007', '7.jpg', '2021-06-20 07:10:40'),
(8, 'Sneakers', 600, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 26, 'shoes', 'shoes', 's-008', '8.jpg', '2021-06-20 07:10:40'),
(9, 'Sneakers', 200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 334, 'shoes', 'shoes', 's-009', '9.jpg', '2021-06-20 07:10:40'),
(10, 'Brogues', 650, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 16, 'shoes', 'shoes', 's-010', '10.jpg', '2021-06-20 07:10:40'),
(11, 'Sneakers', 690, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 166, 'shoes', 'shoes', 's-011', '11.jpg', '2021-06-20 07:10:40'),
(12, 'Loafers', 690, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 11, 'shoes', 'shoes', 's-012', '12.jpg', '2021-06-20 07:10:40'),
(13, 'Sneakers', 999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 176, 'shoes', 'shoes', 's-013', '13.jpg', '2021-06-20 07:10:40'),
(14, 'Sneakers', 1999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 1, 'shoes', 'shoes', 's-014', '14.jpg', '2021-06-20 07:10:40'),
(15, 'Sneakers', 100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 77, 'shoes', 'shoes', 's-015', '15.jpg', '2021-06-20 07:10:40'),
-- T-Shirt --
(16, 'T-Shirt', 100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 237, 'tshirt', 't-shirt', 't-001', '1.jpg', '2021-06-20 07:10:40'),
(18, 'T-Shirt', 200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 37, 'tshirt', 't-shirt', 't-002', '2.jpg', '2021-06-20 07:10:40'),
(19, 'T-Shirt', 300, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 57, 'tshirt', 't-shirt', 't-003', '3.jpg', '2021-06-20 07:10:40'),
(20, 'T-Shirt', 999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 37, 'tshirt', 't-shirt', 't-004', '4.jpg', '2021-06-20 07:10:40'),
(21, 'T-Shirt', 1500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 737, 'tshirt', 't-shirt', 't-005', '5.jpg', '2021-06-20 07:10:40'),
(22, 'T-Shirt', 1000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 277, 'tshirt', 't-shirt', 't-006', '6.jpg', '2021-06-20 07:10:40'),
(23, 'T-Shirt', 500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 777, 'tshirt', 't-shirt', 't-007', '7.jpg', '2021-06-20 07:10:40'),
(24, 'T-Shirt', 450, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 877, 'tshirt', 't-shirt', 't-008', '8.jpg', '2021-06-20 07:10:40'),
(25, 'T-Shirt', 350, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 977, 'tshirt', 't-shirt', 't-009', '9.jpg', '2021-06-20 07:10:40'),
(26, 'T-Shirt', 470, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 167, 'tshirt', 't-shirt', 't-010', '10.jpg', '2021-06-20 07:10:40'),
(27, 'T-Shirt', 999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 997, 'tshirt', 't-shirt', 't-011', '11.jpg', '2021-06-20 07:10:40'),
(28, 'T-Shirt', 150, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 7, 'tshirt', 't-shirt', 't-012', '12.jpg', '2021-06-20 07:10:40'),
(29, 'T-Shirt', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 17, 'tshirt', 't-shirt', 't-013', '13.jpg', '2021-06-20 07:10:40'),
(30, 'T-Shirt', 50, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 1347, 'tshirt', 't-shirt', 't-014', '14.jpg', '2021-06-20 07:10:40'),
(31, 'T-Shirt', 80, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 1997, 'tshirt', 't-shirt', 't-015', '15.jpg', '2021-06-20 07:10:40'),
-- Belt --
(32, 'Belt', 100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-001', '1.jpg', '2021-06-20 07:10:40'),
(33, 'Belt', 50, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-002', '2.jpg', '2021-06-20 07:10:40'),
(34, 'Belt', 40, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-003', '3.png', '2021-06-20 07:10:40'),
(35, 'Belt', 70, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-004', '4.jpg', '2021-06-20 07:10:40'),
(36, 'Belt', 20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-005', '5.jpg', '2021-06-20 07:10:40'),
(37, 'Belt', 15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-006', '6.jpg', '2021-06-20 07:10:40'),
(38, 'Belt', 20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-007', '7.jpg', '2021-06-20 07:10:40'),
(39, 'Belt', 200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-008', '8.jpg', '2021-06-20 07:10:40'),
(40, 'Belt', 999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-009', '9.jpg', '2021-06-20 07:10:40'),
(41, 'Belt', 70, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-010', '10.jpg', '2021-06-20 07:10:40'),
(42, 'Belt', 650, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-011', '11.jpg', '2021-06-20 07:10:40'),
(43, 'Belt', 900, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-012', '12.jpg', '2021-06-20 07:10:40'),
(44, 'Belt', 99, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-013', '13.jpg', '2021-06-20 07:10:40'),
(45, 'Belt', 199, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-014', '14.jpg', '2021-06-20 07:10:40'),
(46, 'Belt', 299, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 100, 'belt', 'belt', 'b-015', '15.jpg', '2021-06-20 07:10:40'),
-- Wallets --
(47, 'Wallet', 299, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-001', '1.jpg', '2021-06-20 07:10:40'),
(48, 'Wallet', 399, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-002', '2.jpg', '2021-06-20 07:10:40'),
(49, 'Wallet', 499, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-003', '3.jpg', '2021-06-20 07:10:40'),
(50, 'Wallet', 799, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-004', '4.jpg', '2021-06-20 07:10:40'),
(51, 'Wallet', 999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-005', '5.jpg', '2021-06-20 07:10:40'),
(52, 'Wallet', 1299, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-006', '6.jpg', '2021-06-20 07:10:40'),
(53, 'Wallet', 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-007', '7.jpg', '2021-06-20 07:10:40'),
(54, 'Wallet', 700, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-008', '8.jpg', '2021-06-20 07:10:40'),
(55, 'Wallet', 350, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-009', '9.jpg', '2021-06-20 07:10:40'),
(56, 'Wallet', 550, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-010', '10.jpg', '2021-06-20 07:10:40'),
(57, 'Wallet', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-011', '11.jpg', '2021-06-20 07:10:40'),
(58, 'Wallet', 180, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-012', '12.jpg', '2021-06-20 07:10:40'),
(59, 'Wallet', 999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-013', '13.jpg', '2021-06-20 07:10:40'),
(60, 'Wallet', 780, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-014', '14.jpg', '2021-06-20 07:10:40'),
(61, 'Wallet', 100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 'wallet', 'wallet', 'w-015', '15.jpg', '2021-06-20 07:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_level`
--

DROP TABLE IF EXISTS `product_level`;
CREATE TABLE IF NOT EXISTS `product_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `v_shape` varchar(10) NOT NULL DEFAULT 'no',
  `polo` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `leather` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `converse` varchar(10) NOT NULL DEFAULT 'no',
  `loafer` varchar(10) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `v_shape`, `polo`, `clean_text`, `design`, `chain`, `leather`, `hook`, `color`, `formal`, `converse`, `loafer`) VALUES
(1, 1, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(2, 2, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(5, 5, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(6, 6, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(7, 7, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 8, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(9, 9, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(10, 10, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(11, 11, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(12, 12, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(13, 13, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(14, 14, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(15, 15, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(16, 16, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(17, 17, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(18, 18, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(19, 19, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(20, 20, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(21, 21, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(22, 22, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(23, 23, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(24, 24, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(25, 25, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(26, 26, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(27, 27, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(28, 28, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(29, 29, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(30, 30, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(31, 31, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(32, 32, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(33, 33, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(34, 34, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(35, 35, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(36, 36, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(37, 37, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(38, 38, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(39, 39, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(40, 40, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(41, 41, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(42, 42, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(43, 43, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(44, 44, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(45, 45, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(46, 46, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(47, 47, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(48, 48, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(49, 49, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(50, 50, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(51, 51, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(52, 52, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(53, 53, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(54, 54, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(55, 55, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(56, 56, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(57, 57, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(58, 58, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(59, 59, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(60, 60, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(61, 61, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_view`
--

DROP TABLE IF EXISTS `product_view`;
CREATE TABLE IF NOT EXISTS `product_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(1, 1, 9, '2021-06-22 02:19:30'),
(2, 1, 7, '2021-06-27 02:47:43'),
(3, 1, 12, '2021-06-22 03:20:59'),
(4, 1, 10, '2021-06-29 03:07:11'),
(5, 1, 5, '2021-06-22 03:19:19'),
(6, 1, 8, '2021-06-21 15:57:50'),
(7, 1, 6, '2021-06-22 02:12:54'),
(8, 1, 1, '2021-06-27 03:03:36'),
(9, 1, 1, '2021-06-27 03:03:36'),
(10, 1, 1, '2021-06-27 03:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--
-- Login: test
-- Password: test

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(1, 'test', 'test@test.com', 'test', '$5$rounds=535000$XuUOWDeLlpUa48fx$byZo9Mk6igI67VFT3G4MeHCGQbK1hH4agNco2A0m3l8', '0123456789', '2021-07-23 14:09:14', '0', 'yes'),
(2, 'test2', 'test2@test.com', 'test2', '$5$rounds=535000$XuUOWDeLlpUa48fx$byZo9Mk6igI67VFT3G4MeHCGQbK1hH4agNco2A0m3l8', '0123456789', '2021-07-24 16:09:14', '1', 'yes'),
(3, 'test3', 'test3@test.com', 'test3', '$5$rounds=535000$XuUOWDeLlpUa48fx$byZo9Mk6igI67VFT3G4MeHCGQbK1hH4agNco2A0m3l8', '0123456789', '2021-07-28 21:32:14', '1', 'yes');
COMMIT;