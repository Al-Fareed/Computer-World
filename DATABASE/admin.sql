-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 08:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(16, 'Desktop', 1),
(17, 'Laptop', 1),
(23, 'Women', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Saurav', 'Saurav@gmail.com', '7876767523', 'Please FucK Your self', '2021-06-22 15:20:18'),
(2, 'Saurav', 'saurab.j111@gmail.com', '81927862737', 'Hey There', '2021-07-07 02:44:37'),
(3, 'Surav Poojary', 'saurab.j111@gmail.com', '9898765688', 'sasasddfdrttft', '2021-08-24 07:35:41'),
(4, 'Surav Poojary', 'saurab.j111@gmail.com', '9898765688', 'sasasddfdrttft', '2021-08-24 07:36:28'),
(5, 'Surav Poojary', 'saurab.j111@gmail.com', '9898765688', 'sasasddfdrttft', '2021-08-24 07:36:32'),
(6, 'Surav Poojary', 'saurab.j111@gmail.com', '9898765688', 'sasasddfdrttft', '2021-08-24 07:36:53'),
(7, 'Surav Poojary', 'saurab.j111@gmail.com', '9898765688', 'sasasddfdrttft', '2021-08-24 07:38:54'),
(8, 'Surav Poojary', 'saurab.j111@gmail.com', '9898765688', 'sasasddfdrttft', '2021-08-24 07:39:06'),
(9, 'Surav Poojary', 'saurab.j111@gmail.com', '9898765688', 'sasasddfdrttft', '2021-08-24 07:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'First50', 100, 'Rupee', 500, 1),
(3, 'First250', 250, 'Rupee', 500, 1),
(5, 'COM5000', 5000, 'Rupee', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(200) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(20) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `username`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`) VALUES
(106, 21, ' Saurav Poojary', 'KARAKALA', 'Satemen', 574107, 'instamojo', 103533, 'complete', 1, 0, 0, 0, 0, '7e8b0b814faa4177846f038ae91628d5', 'MOJO1826905A72071976', 0, 0, '', 0, 0, '', '2021-08-26 07:17:36'),
(107, 21, ' Saurav Poojary', 'akrakala', 'Satemen', 765442, 'COD', 38999, 'pending', 4, 15, 15, 15, 15, 'e6447e78ebbd7a9a0d7d', '', 137120058, 136687995, '', 5, 5000, 'COM5000', '2021-08-26 07:21:24'),
(108, 21, ' Saurav Poojary', 'KARAKALA', 'MANGLORE', 574107, 'instamojo', 33999, 'complete', 1, 0, 0, 0, 0, 'e94538bf540a4ad6a6728b6c68cedf3c', 'MOJO1827D05A08572280', 0, 0, '', 0, 0, '', '2021-08-27 06:10:03'),
(109, 21, ' Saurav Poojary', 'akrakala', 'Satemen', 574107, 'instamojo', 23535, 'pending', 1, 0, 0, 0, 0, '5fb19944d1f2441da466378a783ebf80', '', 0, 0, '', 0, 0, '', '2021-08-28 06:35:59'),
(110, 21, ' Saurav Poojary', 'akrakala', 'Satemen', 765442, 'COD', 317641, 'pending', 1, 0, 0, 0, 0, 'cd3de85c9df28a348853', '', 0, 0, '', 0, 0, '', '2021-08-28 11:33:03'),
(111, 21, ' Saurav Poojary', 'akrakala', 'Satemen', 765442, 'COD', 317641, 'pending', 1, 0, 0, 0, 0, '0841c1c7c708e668a365', '', 0, 0, '', 0, 0, '', '2021-08-28 11:35:01'),
(112, 21, ' Saurav Poojary', 'akrakala', 'Satemen', 765442, 'COD', 43999, 'pending', 1, 0, 0, 0, 0, 'c06ddb7f6aa5afbe776b', '', 0, 0, '', 0, 0, '', '2021-08-28 11:37:13'),
(113, 21, ' Saurav Poojary', 'akrakala', 'Satemen', 765442, 'COD', 43999, 'pending', 1, 0, 0, 0, 0, 'b1a034d6c5c78b8949bc', '', 0, 0, '', 0, 0, '', '2021-08-28 11:38:04'),
(114, 21, ' Saurav Poojary', 'KARAKALA', 'Satemen', 765442, 'COD', 43999, 'pending', 1, 0, 0, 0, 0, '8d13b53580223020b2fd', '', 0, 0, '', 0, 0, '', '2021-08-28 11:41:23'),
(115, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'COD', 37999, 'pending', 1, 0, 0, 0, 0, 'c9ebcaa3bdf66d5d62fc', '', 0, 0, '', 0, 0, '', '2021-08-28 11:47:27'),
(116, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'instamojo', 37999, 'complete', 1, 0, 0, 0, 0, '9da0a6869bb54abb845e3ef371921bc1', 'MOJO1829A05A28898015', 0, 0, '', 0, 0, '', '2021-08-29 08:10:48'),
(117, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'COD', 1222, 'pending', 1, 0, 0, 0, 0, '6b9af36d3cb98c3e391c', '', 0, 0, '', 0, 0, '', '2021-08-29 08:12:52'),
(118, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'COD', 1222, 'pending', 1, 0, 0, 0, 0, '1c916a069770774711f6', '', 0, 0, '', 0, 0, '', '2021-08-29 08:17:45'),
(119, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'COD', 1222, 'pending', 1, 0, 0, 0, 0, '26529269b87639a8c93d', '', 0, 0, '', 0, 0, '', '2021-08-29 08:18:47'),
(120, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'COD', 1222, 'pending', 1, 0, 0, 0, 0, '826497d48907e8af498d', '', 0, 0, '', 0, 0, '', '2021-08-29 08:20:11'),
(121, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'COD', 1222, 'pending', 1, 0, 0, 0, 0, 'db771156655f446c428b', '', 0, 0, '', 0, 0, '', '2021-08-29 08:23:55'),
(122, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'instamojo', 1222, 'complete', 1, 0, 0, 0, 0, '3a9bcbb8ea5e4de69cfb8ea3e069745f', 'MOJO1829N05A28898020', 0, 0, '', 0, 0, '', '2021-08-29 08:28:42'),
(123, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'COD', 33999, 'pending', 1, 0, 0, 0, 0, 'b442a816ba39e6a00cad', '', 0, 0, '', 0, 0, '', '2021-08-29 08:43:49'),
(124, 21, ' Saurav Poojary', 'ghgh', 'hgjh', 0, 'COD', 1222, 'pending', 1, 0, 0, 0, 0, '1ac21a4ea0dbff558c41', '', 0, 0, '', 0, 0, '', '2021-08-29 08:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `user_id`, `product_id`, `qty`, `price`) VALUES
(121, 106, 21, 15, 1, 45999),
(122, 107, 21, 14, 1, 43999),
(123, 108, 21, 19, 1, 33999),
(124, 109, 21, 20, 1, 23535),
(125, 110, 21, 19, 1, 33999),
(126, 110, 21, 25, 1, 1222),
(127, 110, 21, 20, 12, 23535),
(128, 111, 21, 19, 1, 33999),
(129, 111, 21, 25, 1, 1222),
(130, 111, 21, 20, 12, 23535),
(131, 112, 21, 14, 1, 43999),
(132, 113, 21, 14, 1, 43999),
(133, 114, 21, 14, 1, 43999),
(134, 115, 21, 13, 1, 37999),
(135, 116, 21, 13, 1, 37999),
(136, 117, 21, 25, 1, 1222),
(137, 118, 21, 25, 1, 1222),
(138, 119, 21, 25, 1, 1222),
(139, 120, 21, 25, 1, 1222),
(140, 121, 21, 25, 1, 1222),
(141, 122, 21, 25, 1, 1222),
(142, 123, 21, 19, 1, 33999),
(143, 124, 21, 25, 1, 1222);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(8, 15, 0, 'Razer DeathAdder Gaming Mouse', 999, 699, 10, '519679741_ANRBD200822SHNO4.jpg', 'The best Mouse.', 'The mouse is best', 0, 'Better to buy', 'Sauurav', 'Please', 1),
(9, 15, 0, 'Logitech G402 Optical Gaming Mouse', 1999, 1099, 10, '979027497_AU2SS210615vICeA.jpg', 'The Logitech G402 Optical Mouse – MS116 features optical LED tracking and wired connectivity.', 'The Logitech G402 Optical Mouse – MS116 features optical LED tracking and wired connectivity providing a stellar performance day after day. Improve your productivity at the office or at home–the Logitech G402 Optical Mouse will help keep you on task with accurate 1000 DPI optical tracking.', 0, '32322', '232343', '3434135', 1),
(10, 15, 0, 'Logitech Wireless Mini Mouse', 1000, 599, 12, '898629462_A8FN_130923872977562675h0ARyp5vRL.jpg', '', '', 0, '', '', '', 1),
(11, 15, 0, 'DELL MS 116 Wired Optical Mouse', 599, 299, 10, '420602358_A17P_1_201905221392310401.jpg', '', 'General\\r\\nModel Name      MS 116\\r\\nSystem Requirements    Windows 8, Windows XP, Windows 10, Windows 7\\r\\nSales Package                   MOUSE\\r\\nAdjustable Weight            No\\r\\nCompatible Devices          DESKTOP, LAPTOP\\r\\nColor                                    Black', 0, '', '', '', 1),
(12, 17, 0, 'Vicabo L11 15.6\" FHD Laptop', 49999, 45999, 10, '219241919_AN9ZD210102S0YTW.jpg', 'Intel Core i5-5257U 8GB Memory 256GB SSD', '15.6inch 1920 x 1080 FHD LED-backlit EDP display, with front HD 720P webcam\r\nIntel Core i5 5th Gen I5-5257U processor (3M cache, 2.70 GHz, up to 3.10 GHz)\r\n8 GB memory, 256 GB M.2 SSD\r\nIntel® Iris® Graphics 6100, 300MHz~1.05GHz\r\nSupport faster image processing, hard-decoing 4K video\r\nFull size backlit keyboard, metal shell\r\nWindows 10 Pro\r\n1 x 1.4b Mini HDMI\r\n1 x Type-C\r\n1 x USB 2.0\r\n2 x USB 3.0\r\n1 x 4-in-1 card reader (SD,SDHC, SDXC, MMC)\r\n1 x Headphone/Microphone Combo Jack\r\n14.06\" x 9.61\" x 0.74\", 4.3 lbs.', 0, '', '', '', 1),
(13, 17, 0, 'Dell Precision 7530 laptop', 39999, 37999, 10, '927975131_AHKVS2106290DNQV.jpg', '15.6\" FHD IPS Non-touch, Intel Core i7-8750H, 16GB DDR4', '15.6\" FHD IPS, Non-touch, Cam/Mic Bezel\r\nIntel Core i7-8750H, Six Core 2.20GHz, 4.10GHz Turbo, 9MB 45W, w/Intel HD GFX\r\n16GB, 2X8G, DDR4 2666MHz Non-ECC Memory\r\nM.2 512GB NVMe PCIe Class 40 Solid State Drive\r\nNVIDIA Quadro P1000 w/4GB GDDR5\r\nWi-fi, Bluetooth\r\nBacklit Keyboard\r\nWindows 10 Professional 64-bit\r\nWarranty: ProSupport Plus - March 2022', 0, '', '', '', 1),
(14, 17, 0, 'ASUS VivoBook 15 Thin Laptop', 45999, 43999, 10, '442096568_34-235-512-V24.jpg', '15.6\" FHD Display, Intel i5-1035G1 CPU, 8 GB RAM, 256 GB SSD + 1 TB HDD', '15.6 inch Full HD (1920 x 1080) 4-way NanoEdge bezel display with a stunning 88% screen-to-body ratio</br>\r\nLatest 10th Gen Intel Core i5-1035G1 CPU (6M Cache, up to 3.6 GHz)</br>\r\n8 GB DDR4 RAM and 256 GB PCIe NVMe M.2 SSD + 1 TB HDD</br>\r\nErgonomic backlit keyboard with fingerprint sensor activated via Windows Hello</br>\r\nExclusive Ergolift design for an improved typing position</br>\r\nComprehensive connections including USB 3.2 Type-C, USB 3.2 Type-A, USB 2.0, HDMI, and Gig+ Wi-Fi 6 (802.11ax) (*USB Transfer speed may vary. Learn more at ASUS website)</br>\r\nWindows 10 Home</br>', 0, '', '', '', 1),
(15, 17, 0, 'MAIBENBEN Gaming Laptops', 49999, 45999, 10, '319756328_AWZ5S210520vATFz.jpg', '144Hz Full HD IPS Anti-Glare 7nm AMD Ryzen 7 4000 Series 4800H Nvidia RTX 2060 16GB DDR4 3200MHZ RAM', 'AMD Ryzen 7 4800H (8 cores 16 threads; 2.9GHz; 7nm process; Level 2 cache 4MB)\r\nGeForce RTX 2060 (6GB GDDR6 Turing GPU architecture;1680 MHz Boost Clock 14 Gbps Memory Speed)\r\n17.3 inch 144Hz Full HD ADS Anti-Glare\r\nDual-channel;DDR4-3200MHz, Max support 32GB*2\r\nDual Storage Design; Up to 1TB PCIE SSD (512*2G PCIE SSD)\r\nPreinstalled Genuine Windows 10 Home 64 bits\r\nDual-Fans + Five Heat Pipes Cooling System\r\nRGB Backlit Keyboard\r\nWi-Fi 6 Wireless Network\r\n720P Front Webcam\r\nBattery:11.4V/4100mAh/ 46.74Wh\r\nWeight: 5.51lb. (Adapter not included)\r\nFree gifts: Mouse, mousepad\r\n1 year local warranty', 0, '', '', '', 1),
(16, 16, 0, 'Workstation Computer Desktop', 3999, 38999, 10, '702080160_ADGYD21070188872.jpg', 'Intel Core i5 6th Gen, NVIDIA Quadro K1200 4GB, 1TB SSD + 1TB HDD', 'Processor: Intel i5 Quad Core Gen 6 3.20 GHz Processor\r\nInstalled Memory: 32GB DDR4\r\nHard Drive: 1TB SSD\r\nOperating System: Windows 10 Professional 64bit\r\nWarranty: , No Hassle Money Back Guarantee', 1, '', '', '', 1),
(17, 16, 0, 'iBUYPOWER - Ryzen 3 3100', 25999, 24999, 10, '695020206_83-227-936-V01.jpg', '8 GB DDR4 - 1 TB HDD - GeForce GT 710 - Windows 10 Home - Desktop PC (ARCB 108AV2)', 'Ryzen 3 3rd Gen 3100 (3.60 GHz)\r\n8 GB DDR4\r\n1 TB HDD\r\nWindows 10 Home 64-bit\r\nNo Screen\r\nNVIDIA GeForce GT 710 1 GB', 0, '', '', '', 1),
(18, 16, 0, 'CyberpowerPC Gamer Xtreme', 49999, 47999, 10, '401908125_83-230-562-13.jpg', 'Intel Core i5-9600KF - 8 GB DDR4 - 500 GB SSD - GeForce GT 1030 - Windows 10 Home', 'Intel Core i5 9th Gen 9600KF (3.70 GHz)\r\n8 GB DDR4\r\n500 GB SSD\r\nWindows 10 Home 64-bit\r\nNVIDIA GeForce GT 1030 2 GB', 0, '', '', '', 1),
(19, 16, 4, 'Skytech Chronos Gaming Computer', 34999, 33999, 10, '833080458_83-289-131-07.jpg', 'Ryzen 5 3600 6-Core 3.60 GHz, RTX 2060 6 GB, 1 TB SSD, 16 GB DDR4 3000, B450 MB', 'AMD Ryzen 5 3600 6-Core 3.6 GHz (4.2 GHz Turbo) CPU Processor, 1 TB SSD - Up to 30x faster than traditional HDD, B450 Motherboard\r\nGeForce RTX 2060 6 GB Graphics Card, 16 GB DDR4 3000 MHz Gaming Memory, Windows 10 Home 64-bit\r\n802.11ac Wi-Fi, No Bloatware, HD Audio and Mic, Free Gaming Keyboard and Mouse, Graphic output options include 1 x HDMI, and 1 x Display Port Guaranteed, Additional Ports may vary, USB Ports Including 2.0, 3.0, and 3.2 Gen1 Ports\r\n3 x RGB Dual RING Fans for Maximum Air Flow, Powered by 80 Plus Certified 600 Watt Gold Power Supply, Skytech Chronos Mini, Black Edition w/ Front Mesh Gaming Case\r\nProduct images used on this page are for illustrative purposes only and are not indicative of the exact components used at the time of manufacture. Component makes and models may vary from depictions of the product in product images but will adhere to the specification outlined in the main description of the product. Particulars such as I/O ports may vary.', 1, 'The Best gaming Coputer', 'Gaming Computer', 'Game', 1),
(20, 16, 5, 'Kaiyahuja', 61562, 23535, 12, '651061812_83-230-562-13.jpg', 'gshghgdhd', 'gahfhxdghjcf', 1, '', '', '', 1),
(22, 19, 6, 'Chadii', 1499, 999, 10, '677757675_IMG_0112.JPG', 'Nice', 'Nice Chaddi', 1, 'nhdcghdf', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_images` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `regi`
--

CREATE TABLE `regi` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regi`
--

INSERT INTO `regi` (`id`, `username`, `email`, `phone`, `password`, `cpassword`, `token`, `added_on`) VALUES
(21, 'Saurav Poojary', 'saurab.j111@gmail.com', '9916493213', '$2y$10$KDaZH7hwkLfO9EtUleybduFB1n5hZVDi4VenpqE4gue1Q1FJ52/b6', '$2y$10$6WB3vffsfYBUjNQwTl.rz.1I4n9PX78Vo/niQWva9MCuC6nASsuB2', '727e71af6b4b68cf18a5b52950a997', '2021-08-01 06:26:18'),
(23, 'SauravPOOa', 'Saurab6786.j111@gmail.com', '768676867867', '$2y$10$teMvK1mENH2N.9QsqG/7veA8skYl7umLV7nHYHOHQt0xo9jirT/IC', '$2y$10$alHkMFd8Doe8Jg2FQP74yeSHCL5pvg/X3hrNWI4z.Gn1.mtEGl3Hm', '7d8c4b5d5687d88df1b97606be9cd0', '2021-08-30 05:02:22'),
(24, 'SauravPOOa', 'sauravpoojari65@gmail.com', '6767786', '$2y$10$hyx3/ZdfGJis2DWpnt2ZU.zat3OaAGK2aQB4r1OaSn1W5cgPC1ClC', '$2y$10$CAewdGVl4sFoKLC4tcm2VuAOweZczSDNRZ4xDQAy3qv3Q0RR2iObi', '518fc8776ddddc76c904b408195069', '2021-08-30 05:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone` int(10) NOT NULL,
  `addr` varchar(2000) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  `Series` varchar(50) NOT NULL,
  `Warranty` text NOT NULL,
  `Date` date NOT NULL,
  `Issues` varchar(2000) NOT NULL,
  `coustomer_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL,
  `service_status` int(2) NOT NULL,
  `serialno` varchar(200) NOT NULL,
  `Estimate` varchar(200) NOT NULL,
  `purshase_date` date NOT NULL,
  `comp_type` varchar(200) NOT NULL,
  `comp` varchar(200) NOT NULL,
  `repair_code` varchar(200) NOT NULL,
  `defect_code` varchar(200) NOT NULL,
  `job_complete` date NOT NULL,
  `delivery_date` date NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `Name`, `Email`, `Phone`, `addr`, `Brand`, `Series`, `Warranty`, `Date`, `Issues`, `coustomer_id`, `added_on`, `service_status`, `serialno`, `Estimate`, `purshase_date`, `comp_type`, `comp`, `repair_code`, `defect_code`, `job_complete`, `delivery_date`, `status`) VALUES
(91, 'Ashutosh', 'Sauravpoojary65@gmail.com', 2147483647, 'City Tower,Opp.Glaxy Hall,\r\nSalmar,Main Road,Karkala-574104', 'Dell', 'E-654433', 'Yes', '2021-01-27', 'Dipslay Problem', '21', '2021-08-27 03:58:06', 3, 'SEREWW123', '5000', '2020-12-28', 'Hardwarre issue', 'THe RAmisnotdgjgchce', 's3ss3', '2s32s2', '2021-08-25', '2021-08-28', 0),
(92, 'Nirmala Poojary', 'Nirmala@gmail.com', 2147483647, 'City Tower,Opp.Glaxy Hall,\r\nSalmar,Main Road,Karkala-574104\r\nKarkala', 'Asus', 'Gaming 5644', 'Yes', '2020-06-23', 'The heatin issue is increasing day by the days', '21', '2021-08-28 11:36:23', 3, 'SEREWW12344', '3000', '2021-08-31', 'Hardwarre issue', 'The hardware ship was melt', '1', 'Mother Board', '2021-08-25', '2021-08-29', 0),
(93, 'Geethika Poojary', 'Geethika@12343', 872215673, 'Sri Vaishnavi Girls and Working Women Hostel H.No. 3-4-466\r\nLingampally, Naryanguda, Opposite Reddy Women\'s College\r\nHyderabadTelangana 500027', 'Apple', 'macbook3 pro', 'No', '2020-01-28', 'Hard is not deteecting', '21', '2021-08-28 11:44:06', 3, 'MAC13254', '3200', '2021-08-02', 'Hardwarre issue', 'HArddisk was corruspted', '123', 'HArd Disk', '2021-08-29', '2021-08-29', 0),
(94, 'hghjghuj', 'saurab.j111@gmail.com', 88766756, 'jhjghg', 'hgjgjh', 'gjhgjh', 'Yes', '2011-11-11', 'bhghg', '1', '2021-08-29 05:48:19', 1, '', 'Will Notify You Shortly', '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_status`
--

CREATE TABLE `service_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_status`
--

INSERT INTO `service_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Complete'),
(4, 'Canceled');

-- --------------------------------------------------------

--
-- Table structure for table `shiprocket_token`
--

CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shiprocket_token`
--

INSERT INTO `shiprocket_token` (`id`, `token`, `added_on`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE2NTI5MzMsImlzcyI6Imh0dHBzOi8vYXBpdjIuc2hpcHJvY2tldC5pbi92MS9leHRlcm5hbC9hdXRoL2xvZ2luIiwiaWF0IjoxNjI5OTU1NDUyLCJleHAiOjE2MzA4MTk0NTIsIm5iZiI6MTYyOTk1NTQ1MiwianRpIjoibmU0MDl0YzdKeWI0dFRxZSJ9._8AD3e2DLZhbEZlcBSlikKT3EoU7hzyaUqMbuzRe2Yw', '2021-08-26 05:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 16, 'RAM', 1),
(4, 22, 'Internal HDDD', 1),
(5, 16, 'Pc', 1),
(10, 16, 'MOUSE', 1),
(11, 22, 'Sa', 1),
(13, 23, 'eeeee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `added_on`) VALUES
(1, 'Saurav Poojary', 'Saurav@65gmail.com', '7876767523', 'Saurav@65', '2021-06-26 09:51:43'),
(44, 'saa', 'sattt', '7667676887', 'sayrrt', '2021-08-24 07:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `token`) VALUES
(24, 'Saurav_poojary', 'Sauravpoojari65@gmail.com', '$2y$10$irL/fyHOHxRTlkl2s/GLoOh6r3vEc3zJIDsAGuuIZpthRE3UGgYyy', '804e05eb8ae5efe961bc01e1f8af81'),
(30, 'Saurav_poojary', 'saurab.j111@gmail.com', '$2y$10$ckwYO.JqYqAbe2P/fhuiV.ogZbSDK8IrJ9b2s8e2P2v3ZPo3j58d.', '88c2e2d33a764fa48ba6e191edb82a');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(9, 14, 19, '2021-07-18 02:57:42'),
(18, 21, 24, '2021-08-29 09:38:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regi`
--
ALTER TABLE `regi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regi`
--
ALTER TABLE `regi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
