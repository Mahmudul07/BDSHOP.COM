-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2018 at 07:54 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Mahmudul Hasan', 'admin', 'mahmudul@bdshop.com', '6ab7f181d46f9b162cb5b0e330dee30b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'ACER'),
(2, 'SAMSUNG'),
(3, 'APPLE'),
(4, 'CANON');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, '67g61lj1pgp2np21siivp1jge2', 3, 'Lorem Ipsum is simply', 621.75, 4, 'uploads/8a2bb5ae2d.jpg'),
(2, '67g61lj1pgp2np21siivp1jge2', 1, 'Lorem Ipsum is simply', 500.00, 1, 'uploads/5ca3879fda.png'),
(3, '67g61lj1pgp2np21siivp1jge2', 9, 'Lorem Ipsum is simply', 345.00, 5, 'uploads/714b148557.jpg'),
(5, 'kt1c1ofqvgi5nhjea6q6pgtgu1', 4, 'Lorem Ipsum is simply', 1993.00, 1, 'uploads/0c8dbac77f.jpg'),
(6, 'u5k37648qe708k7lvkka6jsaf0', 8, 'Lorem Ipsum is simply', 1270.50, 8, 'uploads/c3e4d1e4e3.jpg'),
(7, 'u5k37648qe708k7lvkka6jsaf0', 10, 'Lorem Ipsum is simply', 649.00, 1, 'uploads/d4ea91cf9d.jpg'),
(9, 'rf572v7ao9ie41tbbpr777jro6', 8, 'Lorem Ipsum is simply', 1270.50, 1, 'uploads/c3e4d1e4e3.jpg'),
(10, '115qpfusn4hugjufsljcnv67l1', 4, 'Lorem Ipsum is simply', 1993.00, 1, 'uploads/0c8dbac77f.jpg'),
(11, '99an2ugbs41j16g4pt1h582v43', 3, 'Lorem Ipsum is simply', 621.75, 1, 'uploads/8a2bb5ae2d.jpg'),
(12, 'atcndq2qfv1012jh4qtpfhqj11', 3, 'Lorem Ipsum is simply', 621.75, 1, 'uploads/8a2bb5ae2d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Desktop'),
(2, 'Laptop'),
(3, 'Accessories'),
(4, 'Software'),
(5, 'Sports &amp; Outdoors'),
(6, 'Books &amp; Audible'),
(7, 'Jewellery'),
(8, 'Clothing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Mahmudul Hasan', 'House:10, Uttara', 'Dhaka', 'Bangladesh', '1230', '01758529641', 'mahmudul@bdshop.com', '73594ff6619fb3c564262ce1f907a8e0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(1, 1, 14, 'Lorem Ipsum is simply', 1, 1235.55, 'uploads/219c3d2093.jpg', '2018-07-29 08:31:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, 'Lorem Ipsum is simply', 2, 2, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 500.00, 'uploads/4da55cf091.jpg', 0),
(2, 'Lorem Ipsum is simply', 3, 2, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 670.00, 'uploads/f335aa7a1a.jpg', 0),
(3, 'Lorem Ipsum is simply', 3, 2, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 621.75, 'uploads/8a2bb5ae2d.jpg', 0),
(7, 'Lorem Ipsum is simply', 3, 1, '<p>Lorem Ipsum is simply.Lorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is siplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simply.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simply</p>', 415.54, 'uploads/23f0ebcaa8.png', 0),
(8, 'Lorem Ipsum is simply', 1, 1, '<p>Lorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simply.</p>', 1270.50, 'uploads/c3e4d1e4e3.jpg', 1),
(9, 'Lorem Ipsum is simply', 3, 4, '<p>Lorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simplyLorem Ipsum is simply</p>', 896.65, 'uploads/de00595e1a.jpg', 1),
(11, 'Lorem Ipsum is simply', 1, 3, '<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>', 1999.00, 'uploads/ed21884da2.jpg', 0),
(12, 'Lorem Ipsum is simply', 1, 2, '<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>', 949.99, 'uploads/1f493faef8.jpg', 0),
(13, 'Lorem Ipsum is simply', 2, 2, '<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>', 800.75, 'uploads/0ac5d1b781.jpg', 0),
(14, 'Lorem Ipsum is simply', 2, 3, '<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>', 1235.55, 'uploads/219c3d2093.jpg', 0),
(15, 'Lorem Ipsum is simply', 2, 1, '<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>', 788.44, 'uploads/e5a5131fae.png', 0),
(17, 'Lorem Ipsum is simply', 3, 3, '<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>', 649.33, 'uploads/317869e860.jpg', 1),
(18, 'Lorem Ipsum is simply', 3, 2, '<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>\r\n<p>Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.Lorem Ipsum is simply.</p>', 1235.55, 'uploads/4e0b178816.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
