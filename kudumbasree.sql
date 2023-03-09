-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 01:44 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kudumbasree`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(100) NOT NULL,
  `adminPhone` bigint(20) NOT NULL,
  `adminPassword` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`adminId`, `adminName`, `adminPhone`, `adminPassword`) VALUES
(1, 'Anagha', 123, '123'),
(2, 'Krishna', 123, '123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `groupId` int(150) NOT NULL,
  `itemId` varchar(150) NOT NULL,
  `quantity` int(150) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `groupId`, `itemId`, `quantity`, `price`, `total`) VALUES
(1, 1, '1', 2, 250, 500),
(2, 2, ' Rambutan', 2, 350, 700),
(3, 2, ' Rambutan', 2, 350, 700);

-- --------------------------------------------------------

--
-- Table structure for table `cartmaster`
--

CREATE TABLE `cartmaster` (
  `_omId` int(10) NOT NULL,
  `date` date NOT NULL,
  `groupId` int(11) NOT NULL,
  `_customerId` int(20) NOT NULL,
  `_customerAddress` varchar(100) NOT NULL,
  `_orderTotalPrice` int(100) NOT NULL,
  `cardno` int(11) NOT NULL,
  `cardname` varchar(15) NOT NULL,
  `cvv` int(11) NOT NULL,
  `_isConfirmed` tinyint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cartmaster`
--

INSERT INTO `cartmaster` (`_omId`, `date`, `groupId`, `_customerId`, `_customerAddress`, `_orderTotalPrice`, `cardno`, `cardname`, `cvv`, `_isConfirmed`) VALUES
(4, '2022-05-16', 2, 1, 'KANNUR', 1400, 123456789, 'VIVEK', 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `catname` varchar(150) NOT NULL,
  `isActive` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catname`, `isActive`) VALUES
(1, 'Chips', 0),
(2, 'Vegetable', 0),
(3, 'Fruits', 0),
(5, 'Bekery', 0),
(6, 'Pickles', 0),
(7, 'CLAY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemId` int(150) NOT NULL,
  `catId` int(150) NOT NULL,
  `itemName` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemId`, `catId`, `itemName`) VALUES
(1, 1, 'Potato chips'),
(2, 1, 'Banana chips'),
(3, 1, 'Tomato chips'),
(4, 1, 'Coconut chips'),
(5, 1, 'Topioca chips'),
(6, 2, 'Brinjal'),
(7, 2, 'Tomato'),
(8, 2, 'Okra'),
(9, 2, 'Bitter gourd'),
(10, 2, 'Cucumbar'),
(11, 2, 'Pumpkin'),
(12, 2, 'Chilli'),
(13, 3, 'Banana'),
(14, 3, 'Mango'),
(15, 3, 'Jack fruit'),
(16, 3, 'Rambutan'),
(17, 3, 'Pineapple'),
(18, 3, 'Passion fruit'),
(19, 4, 'Book'),
(20, 4, 'Pen'),
(21, 4, 'Pencil'),
(22, 5, 'Bun'),
(23, 5, 'Bread'),
(24, 5, 'Cup cake'),
(25, 5, 'Sweetna'),
(26, 5, 'Laddu'),
(27, 5, 'Jilebi'),
(28, 6, 'Mango pickle'),
(29, 6, 'Vegetable pickle'),
(30, 6, 'Lemon pickle');

-- --------------------------------------------------------

--
-- Table structure for table `kudumbasreeregister`
--

CREATE TABLE `kudumbasreeregister` (
  `kId` int(11) NOT NULL,
  `kName` varchar(150) NOT NULL,
  `kAddress` varchar(150) NOT NULL,
  `regNo` varchar(150) NOT NULL,
  `secretary` varchar(150) NOT NULL,
  `panchayath` varchar(150) NOT NULL,
  `ward` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kudumbasreeregister`
--

INSERT INTO `kudumbasreeregister` (`kId`, `kName`, `kAddress`, `regNo`, `secretary`, `panchayath`, `ward`, `password`, `phone`) VALUES
(1, 'Neethi', 'Beembunkal', 'RGD1010', 'Anitha Anil', 'Panathady', '1', '123', 12345),
(2, 'Aiswarya', 'Paadi', 'RGD2001', 'Sujatha c', 'Kuttikkol', '7', '1234', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `proceed`
--

CREATE TABLE `proceed` (
  `proceedId` int(150) NOT NULL,
  `catId` int(150) NOT NULL,
  `kId` int(150) NOT NULL,
  `itemName` varchar(150) NOT NULL,
  `label` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `images` varchar(150) NOT NULL,
  `sell` double NOT NULL,
  `Total` double NOT NULL,
  `isActive` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proceed`
--

INSERT INTO `proceed` (`proceedId`, `catId`, `kId`, `itemName`, `label`, `quantity`, `images`, `sell`, `Total`, `isActive`) VALUES
(1, 6, 1, 'Mango pickle', 'neethi', '10 Kg', 'Array722Array', 100, 1000, 2),
(2, 5, 2, 'Cup cake', 'aiswarya', '10 Kg', 'Array560Array', 200, 2000, 0),
(4, 1, 1, 'Potato chips', 'babab', '10 Kg', 'Array986Array', 150, 1500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(150) NOT NULL,
  `catId` int(150) NOT NULL,
  `kId` int(100) NOT NULL,
  `itemName` varchar(150) NOT NULL,
  `label` varchar(150) NOT NULL,
  `images` varchar(150) NOT NULL,
  `sell` double NOT NULL,
  `buy` double NOT NULL,
  `description` varchar(150) NOT NULL,
  `isActive` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `catId`, `kId`, `itemName`, `label`, `images`, `sell`, `buy`, `description`, `isActive`) VALUES
(1, 5, 0, 'Cup cake', 'Neethi', 'Array980Array', 250, 200, 'Rich Chocolate Cake with Awesome Taste', 0),
(2, 3, 0, 'Rambutan', 'Aiswarya', 'Array140Array', 350, 300, 'Sweet Super Tasty farm Fresh Rambutan', 0),
(3, 6, 0, 'Mango pickle', 'Neethi', 'Array881Array', 150, 100, 'Super Tasty Mango Pickle With Good Quality', 0),
(4, 1, 0, 'Banana chips', 'Neethi', 'Array937Array', 200, 250, 'Yellow Chips, Good Quality, Super Tasty', 0),
(5, 1, 0, 'Potato chips', 'Babab', 'Array966Array', 250, 150, 'Good', 0);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `reqId` int(150) NOT NULL,
  `catId` int(150) NOT NULL,
  `itemName` varchar(150) NOT NULL,
  `images` varchar(150) NOT NULL,
  `quantity` int(150) NOT NULL,
  `isActive` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`reqId`, `catId`, `itemName`, `images`, `quantity`, `isActive`) VALUES
(1, 1, 'Potato chips', 'Array695Array', 10, 0),
(2, 2, 'Cucumbar', 'Array987Array', 20, 0),
(3, 3, 'Mango', 'Array596Array', 10, 0),
(4, 5, 'Cup cake', 'Array590Array', 10, 0),
(5, 6, 'Mango pickle', 'Array989Array', 10, 0),
(6, 5, 'Jilebi', 'Array963Array', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suggession`
--

CREATE TABLE `suggession` (
  `sId` int(150) NOT NULL,
  `catId` int(150) NOT NULL,
  `kId` int(150) NOT NULL,
  `itemName` varchar(150) NOT NULL,
  `images` varchar(150) NOT NULL,
  `label` varchar(150) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(150) NOT NULL,
  `isActive` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggession`
--

INSERT INTO `suggession` (`sId`, `catId`, `kId`, `itemName`, `images`, `label`, `price`, `description`, `isActive`) VALUES
(1, 5, 1, 'Cup cake', 'Array893Array', 'Neethi', 200, 'Rich Chocolate Cake with Awesome Taste, Good For Childrens', 2),
(2, 1, 1, 'Banana chips', 'Array301Array', 'Neethi', 250, 'Yellow Chips, Good Quality, Super Tasty', 2),
(3, 3, 2, 'Rambutan', 'Array882Array', 'Aiswarya', 300, 'Sweet Super Tasty farm Fresh Rambutan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE `userregister` (
  `userId` int(11) NOT NULL,
  `userName` varchar(150) NOT NULL,
  `userAddress` varchar(150) NOT NULL,
  `userEmail` varchar(150) NOT NULL,
  `userPassword` varchar(150) NOT NULL,
  `userPhone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregister`
--

INSERT INTO `userregister` (`userId`, `userName`, `userAddress`, `userEmail`, `userPassword`, `userPhone`) VALUES
(1, 'Raman', 'Kannur', 'ram@gmail.com', '123', 12345),
(2, 'Sam', 'Kottayam', 'sam@gmail.com', '123', 123456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `cartmaster`
--
ALTER TABLE `cartmaster`
  ADD PRIMARY KEY (`_omId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `kudumbasreeregister`
--
ALTER TABLE `kudumbasreeregister`
  ADD PRIMARY KEY (`kId`);

--
-- Indexes for table `proceed`
--
ALTER TABLE `proceed`
  ADD PRIMARY KEY (`proceedId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`reqId`);

--
-- Indexes for table `suggession`
--
ALTER TABLE `suggession`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `userregister`
--
ALTER TABLE `userregister`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cartmaster`
--
ALTER TABLE `cartmaster`
  MODIFY `_omId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itemId` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kudumbasreeregister`
--
ALTER TABLE `kudumbasreeregister`
  MODIFY `kId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proceed`
--
ALTER TABLE `proceed`
  MODIFY `proceedId` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `reqId` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suggession`
--
ALTER TABLE `suggession`
  MODIFY `sId` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userregister`
--
ALTER TABLE `userregister`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
