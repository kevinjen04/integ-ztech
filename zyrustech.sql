-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2023 at 10:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `papers_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` varchar(17) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
('6314a3063c16c', 'Phones'),
('6314a8021385a', 'Desktops Computers'),
('6314a8813e7f2', 'Laptops'),
('6314a8e7c3098', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` varchar(17) NOT NULL,
  `product_id` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
('6314a3063c16c', '632ff326edf80'),
('6314a8021385a', '632ff41a43bb3'),
('6314a8813e7f2', '632ff3806a1aa'),
('6314a8e7c3098', '632ff524352de');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(17) NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `user_id` varchar(17) NOT NULL,
  `payment_method` varchar(15) NOT NULL,
  `payment_status` varchar(11) NOT NULL DEFAULT 'incomplete',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `amount`, `status`, `type`, `user_id`, `payment_method`, `payment_status`, `created_at`) VALUES
('649f3e43606b5', 1200, 'completed', 'online', '649f0b233df41', 'card', 'complete', '2023-06-30 22:42:43'),
('649f47c7425d5', 106000, 'completed', 'online', '649f479d4059b', 'card', 'complete', '2023-06-30 23:23:19'),
('649f4ac36fbda', 57000, 'completed', 'online', '649f479d4059b', 'cod', 'complete', '2023-06-30 23:36:03'),
('649f928e2675c', 177999, 'completed', 'online', '649f479d4059b', 'card', 'complete', '2023-07-01 04:42:22'),
('649f936553af5', 106000, 'completed', 'online', '649f479d4059b', 'card', 'complete', '2023-07-01 04:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` varchar(17) NOT NULL,
  `product_id` varchar(17) NOT NULL,
  `order_id` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `product_id`, `order_id`) VALUES
('649f3e4360cf7', '632ff326edf80', '649f3e43606b5'),
('649f47c742dab', '632ff326edf80', '649f47c7425d5'),
('649f928e26f0d', '632ff326edf80', '649f928e2675c'),
('649f9365544c0', '632ff326edf80', '649f936553af5'),
('632ff87e5b989', '632ff3806a1aa', '632ff87e5b63a'),
('632ff970a7124', '632ff3806a1aa', '632ff970a6e1a'),
('649f47c743506', '632ff3806a1aa', '649f47c7425d5'),
('649f4ac3705e3', '632ff3806a1aa', '649f4ac36fbda'),
('649f928e27632', '632ff3806a1aa', '649f928e2675c'),
('649f936554deb', '632ff3806a1aa', '649f936553af5'),
('632ff87e5bb4c', '632ff41a43bb3', '632ff87e5b63a'),
('632ff970a729d', '632ff41a43bb3', '632ff970a6e1a'),
('649f928e27eb8', '632ff41a43bb3', '649f928e2675c'),
('632ff95021391', '632ff524352de', '632ff95021099');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(17) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `image_url` text NOT NULL,
  `download_link` text NOT NULL,
  `category_id` varchar(17) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `quantity`, `description`, `image_url`, `download_link`, `category_id`, `name`, `price`) VALUES
('632ff326edf80', 5, 'The iPhone 13 is the latest flagship smartphone from Apple.', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-13-model-unselect-gallery-2-202207?wid=5120&amp;hei=2880&amp;fmt=p-jpg&amp;qlt=80&amp;.v=1654893618268', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-13-model-unselect-gallery-2-202207?wid=5120&amp;hei=2880&amp;fmt=p-jpg&amp;qlt=80&amp;.v=1654893618268', '6314a3063c16c', 'iPhone 13', 49000),
('632ff3806a1aa', 5, '15-inch MacBook Air laptop with the M2 chip. All-day battery life. Stunning Liquid Retina display. In four stellar colors. Customize yours.', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/macbook-air-gold-select-201810?wid=1200&amp;hei=630&amp;fmt=jpeg&amp;qlt=95&amp;.v=1664472289059', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/macbook-air-gold-select-201810?wid=1200&amp;hei=630&amp;fmt=jpeg&amp;qlt=95&amp;.v=1664472289059', '6314a8813e7f2', 'MacBook Air with M1 chip - Gold', 57000),
('632ff41a43bb3', 5, 'Hexa-Core AMD Ryzen 5 3600 Up to 4.2GHz (Beat i5-10400), GT 730 2GB, 8GB DDR4 RAM, 240GB SSD, RGB Lighting Case, Windows 10, BROAGE 64GB Flash Drive', 'https://images-na.ssl-images-amazon.com/images/I/51dRIBXHBHL.jpg', 'https://images-na.ssl-images-amazon.com/images/I/51dRIBXHBHL.jpg', '6314a8021385a', 'iBUYPOWER Pro Trace 4 Gaming Desktop Computer', 71999),
('632ff524352de', 5, 'For style, value and convenience, look no further than Transcend’s JetFlash Classic range. This impressive line of lightweight USB flash drives offers simple data management in a variety of unique designs to suit your personal taste. ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/SanDisk-Cruzer-USB-4GB-ThumbDrive.jpg/800px-SanDisk-Cruzer-USB-4GB-ThumbDrive.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/SanDisk-Cruzer-USB-4GB-ThumbDrive.jpg/800px-SanDisk-Cruzer-USB-4GB-ThumbDrive.jpg', '6314a8e7c3098', 'TRANSCEND JETFLASH 790 USB 3.0 FLASH DRIVE 32GB', 510);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart_product`
--

CREATE TABLE `shoppingcart_product` (
  `id` varchar(17) NOT NULL,
  `user_id` varchar(17) NOT NULL,
  `product_id` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(17) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` text DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `address`, `type`) VALUES
('649f0b233df41', 'oh oh', '$2y$10$yMvWiTLYGbhZjXbNFkMrrObyr4mU5hDPbNPJb7b0WZLSDeYtLShRC', 're@gmail.com', 'dasdasdadadasdadadsa', 'admin'),
('649f475410fe9', 'reydel', '$2y$10$Fz8qGGqQS1wRbW.ZPpJwHepIKK8qaCeDPKq8nK7OlAzrN.k04R8MO', 'reydel123@gmail.com', 'HAHHAHAwqedasd adad', 'admin'),
('649f479d4059b', 'rere rere', '$2y$10$VqQo7YSmu/ApbY0rnWwld.BTc40NEKtcUARQ5RfKv9oL/ZlgCVroG', 'rey@gmail.com', 'dsadasdadwqdadsdddddddddddddddd', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`,`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD UNIQUE KEY `product_id` (`product_id`,`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart_product`
--
ALTER TABLE `shoppingcart_product`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `user_id` (`user_id`,`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
