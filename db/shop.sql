-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 07:33 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '2017-01-24 16:21:18', '14-11-2019 02:11:44 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Rose', 'Rose', '2019-11-14 04:04:43', NULL),
(8, 'Tulip', 'tulip', '2019-11-14 05:10:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(12, 1, '30', 1, '2019-11-15 07:41:25', 'COD', NULL),
(13, 5, '28', 2, '2019-11-15 08:21:16', 'COD', 'in Process'),
(14, 5, '27', 2, '2019-11-15 08:34:45', 'COD', NULL),
(15, 5, '29', 2, '2019-11-16 04:33:49', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(6, 13, 'in Process', 'on process', '2019-11-15 08:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(27, 7, 13, 'Red Rose', 'ROSEHUB', 50, 100, 'Single red rose', 'IMG_9261.jpg', 'IMG_9261.jpg', 'IMG_9261.jpg', 20, 'In Stock', '2019-11-14 14:09:49', NULL),
(28, 7, 13, 'Yellow Rose', 'ROSEHUB', 50, 100, 'Single Yellow Rose', 'IMG_9262.jpg', 'IMG_9262.jpg', 'IMG_9262.jpg', 20, 'In Stock', '2019-11-14 14:11:16', NULL),
(29, 7, 13, 'White Rose', 'ROSEHUB', 50, 100, 'Single White Rose', 'IMG_9263.jpg', 'IMG_9263.jpg', 'IMG_9263.jpg', 20, 'In Stock', '2019-11-14 14:13:21', NULL),
(30, 7, 14, 'Red Rose', 'ROSEHUB', 200, 300, 'Red rose bouquet with white pearls and green stems', 'IMG_9264.jpg', 'IMG_9264.jpg', 'IMG_9264.jpg', 30, 'In Stock', '2019-11-14 14:16:33', NULL),
(31, 7, 14, 'Red Rose', 'ROSEHUB', 200, 300, 'Red rose with white rose buds and green leaves', 'IMG_9265 (1).jpg', 'IMG_9265 (1).jpg', 'IMG_9265 (1).jpg', 30, 'In Stock', '2019-11-14 14:18:00', NULL),
(32, 7, 14, 'Red Rose', 'ROSEHUB', 200, 300, 'Red rose with white roses and green leaves', 'IMG_9266.jpg', 'IMG_9266.jpg', 'IMG_9266.jpg', 30, 'In Stock', '2019-11-14 14:19:22', NULL),
(33, 7, 14, 'Yellow Rose', 'ROSEHUB', 200, 300, 'Yellow roses with green leaves', 'IMG_9270.jpg', 'IMG_9270.jpg', 'IMG_9270.jpg', 30, 'In Stock', '2019-11-14 14:23:44', NULL),
(34, 7, 14, 'Yellow Rose', 'ROSEHUB', 250, 300, 'Yellow roses tied up with white lace ribbon', 'IMG_9271.jpeg', 'IMG_9271.jpeg', 'IMG_9271.jpeg', 30, 'In Stock', '2019-11-14 14:27:32', NULL),
(35, 7, 14, 'Yellow Rose', 'ROSEHUB', 250, 300, 'Yellow roses with white paper wrap', 'IMG_9272.jpg', 'IMG_9272.jpg', 'IMG_9272.jpg', 30, 'In Stock', '2019-11-14 14:29:54', NULL),
(36, 7, 14, 'White Rose', 'ROSEHUB', 200, 300, 'White roses with green stems and white rose buds', 'IMG_9267.jpg', 'IMG_9267.jpg', 'IMG_9267.jpg', 30, 'In Stock', '2019-11-14 14:31:48', NULL),
(37, 7, 14, 'White Rose', 'ROSEHUB', 200, 300, 'White roses with white rose buds', 'IMG_9268.jpg', 'IMG_9268.jpg', 'IMG_9268.jpg', 30, 'In Stock', '2019-11-14 14:32:50', NULL),
(38, 7, 14, 'White Rose', 'ROSEHUB', 250, 300, 'White roses with white lace ribbon', 'IMG_9269.jpg', 'IMG_9269.jpg', 'IMG_9269.jpg', 30, 'In Stock', '2019-11-14 14:33:54', NULL),
(39, 8, 21, 'Pink Tulip', 'TulipHub', 50, 100, 'Single Pink Tulip', 'IMG_9281 (1).jpg', 'IMG_9281.jpg', 'IMG_9282.jpg', 20, 'In Stock', '2019-11-14 15:58:19', NULL),
(40, 8, 21, 'Purple Tulip', 'TulipHub', 50, 100, 'Single Purple Tulip', 'IMG_9283.jpg', 'IMG_9283.jpg', 'IMG_9283.jpg', 20, 'In Stock', '2019-11-14 15:59:35', NULL),
(41, 8, 21, 'Purple Tulip', 'TulipHub', 250, 300, 'Purple Tulip with white Tulip', 'IMG_9287.jpg', 'IMG_9287.jpg', 'IMG_9287.jpg', 30, 'In Stock', '2019-11-14 16:01:15', NULL),
(42, 8, 21, 'Purple Tulip', 'TulipHub', 250, 300, 'Purple tulip with white tulip and green leaves&nbsp;', 'IMG_9288.jpg', 'IMG_9288.jpg', 'IMG_9288.jpg', 30, 'In Stock', '2019-11-14 16:02:45', NULL),
(43, 8, 21, 'Pink Tulip', 'TulipHub', 250, 300, 'Pink Tulips with green leaves', 'IMG_9284.jpg', 'IMG_9284.jpg', 'IMG_9284.jpg', 30, 'In Stock', '2019-11-14 16:21:48', NULL),
(44, 8, 21, 'White Tulip', 'TulipHub', 250, 300, 'White Tulip with green leaves for wedding', 'IMG_9285.jpg', 'IMG_9285.jpg', 'IMG_9285.jpg', 30, 'In Stock', '2019-11-14 16:23:35', NULL),
(45, 8, 21, 'White Tulip', 'TulipHub', 300, 400, 'White Tulip with tulip buds for wedding', 'IMG_9286.jpg', 'IMG_9286.jpg', 'IMG_9286.jpg', 30, 'In Stock', '2019-11-14 16:25:16', NULL),
(46, 8, 21, 'Purple Tulip', 'TulipHub', 300, 400, 'Shades of Purple', 'IMG_9288.jpg', 'IMG_9288.jpg', 'IMG_9288.jpg', 20, 'In Stock', '2019-11-14 16:26:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Single', '2019-11-14 04:05:03', NULL),
(14, 7, 'Bouquet', '2019-11-14 07:26:00', '14-11-2019 06:53:51 PM'),
(21, 8, 'Tulip', '2019-11-14 15:56:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(33, 'Nafeesa.thahiya@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-15 07:43:41', '15-11-2019 01:48:22 PM', 1),
(34, 'Nafeesa.thahiya@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-15 08:20:26', NULL, 1),
(35, 'Nafeesa.thahiya@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-15 08:33:04', NULL, 1),
(36, 'Nafeesa.thahiya@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-16 04:29:54', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'Nafeesa Thahiya', 'nafeesa.thahiya@gmail.com', 8073732336, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, '#404 crescent court Kalpana road kanakandy bendorewell Mangalore\r\nCrescent court', 'Karnataka', 'Mangalore', 575002, '2019-11-15 07:43:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 27, '2019-11-15 08:24:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
