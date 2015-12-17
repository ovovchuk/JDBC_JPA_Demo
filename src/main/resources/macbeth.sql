-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2015 at 08:00 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `macbeth`
--
DROP DATABASE `macbeth`;
CREATE DATABASE IF NOT EXISTS `macbeth` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `macbeth`;

DELIMITER $$
--
-- Functions
--
DROP FUNCTION IF EXISTS `getProductNameById`$$
CREATE DEFINER=`macbeth`@`localhost` FUNCTION `getProductNameById` (`inID` INT) RETURNS VARCHAR(255) CHARSET utf8 BEGIN
    RETURN (SELECT CONCAT(name, ' - ', size) AS name FROM product WHERE productID = inID);
  END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `category` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `category`) VALUES
(1, 'Взуття'),
(2, 'Одяг і аксесуари'),
(3, 'Студійні проекти'),
(4, 'VEGAN');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `imageID` int(11) NOT NULL,
  `imageName1` varchar(255) DEFAULT NULL,
  `imageName2` varchar(255) DEFAULT NULL,
  `imageName3` varchar(255) DEFAULT NULL,
  `imageName4` varchar(255) DEFAULT NULL,
  `imageName5` varchar(255) DEFAULT NULL,
  `imageName6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`imageID`, `imageName1`, `imageName2`, `imageName3`, `imageName4`, `imageName5`, `imageName6`) VALUES
(1, 'brighton-black-white-1.png', 'brighton-black-white-2.png', 'Brighton-Black-White-3.png', 'Brighton-Black-White-4.png', 'Brighton-Black-White-5.png', 'Brighton-Black-White-6.png'),
(2, 'Brighton_Medium_Grey_Brick_1.png', 'Brighton-Medium-Grey-Brick_2.png', 'Brighton_Medium_Grey_Brick_3.png', 'Brighton-Medium-Grey-Brick_4.png', NULL, NULL),
(3, 'Eliot-Blue-Black-1.jpg', NULL, NULL, NULL, NULL, NULL),
(4, 'Eliot-Dk-Grey-Deep-Marine-1.jpg', 'Eliot-Dk-Grey-Deep-Marine-2.jpg', 'Eliot-Dk-Grey-Deep-Marine-3.jpg', NULL, NULL, NULL),
(5, 'Eliot-Grey-Grey-White-1.jpg', 'Eliot-Grey-Grey-White-2.jpg', 'Eliot-Grey-Grey-White-3.jpg', NULL, NULL, NULL),
(6, 'Eliot-Premium-Anthracite-Cement-1.jpg', 'Eliot-Premium-Anthracite-Cement-2.jpg', 'Eliot-Premium-Anthracite-Cement-3.jpg', 'Eliot-Premium-Anthracite-Cement-4.jpg', 'Eliot-Premium-Anthracite-Cement-5.jpg', 'Eliot-Premium-Anthracite-Cement-6.jpg'),
(7, 'Eliot-Premium-Black-Cement-1.jpg', 'Eliot-Premium-Black-Cement-2.jpg', NULL, NULL, NULL, NULL),
(8, 'Eliot-Premium-Black-White-1.jpg', 'Eliot-Premium-Black-White-2.jpg', 'Eliot-Premium-Black-White-3.jpg', NULL, NULL, NULL),
(9, 'Eliot-Premium-Black-White-Red-1.png', 'Eliot-Premium-Black-White-Red-2.png', 'Eliot-Premium-Black-White-Red-3.png', 'Eliot-Premium-Black-White-Red-4.png', NULL, NULL),
(10, 'Eliot-Premium-Brown-Cement-1.jpg', NULL, NULL, NULL, NULL, NULL),
(11, 'Eliot-Yellow-Black-Canvas-1.jpg', 'Eliot-Yellow-Black-Canvas-2.jpg', 'Eliot-Yellow-Black-Canvas-3.jpg', 'Eliot-Yellow-Black-Canvas-4.jpg', NULL, NULL),
(12, 'Gatsby-Black-Cement-1.png', 'Gatsby-Black-Cement-2.png', 'Gatsby-Black-Cement-3.png', 'Gatsby-Black-Cement-4.png', NULL, NULL),
(13, 'Gatsby_Black_Grey_1.png', 'Gatsby-Black-Grey_2.png', 'Gatsby_Black_Grey_3.png', 'Gatsby-Black-Grey_4.png', NULL, NULL),
(14, 'Gatsby-Dark-Brown-Cement-1.jpg', 'Gatsby-Dark-Brown-Cement-2.jpg', 'Gatsby-Dark-Brown-Cement-3.jpg', NULL, NULL, NULL),
(16, 'Hensley-Dark-Brown-White-1.png', 'Hensley-Dark-Brown-White-2.png', 'Hensley-Dark-Brown-White-3.png', 'Hensley-Dark-Brown-White-4.png', NULL, NULL),
(17, 'Hensley-Dark-Grey-Black-1.jpg', 'Hensley-Dark-Grey-Black-2.jpg', 'Hensley-Dark-Grey-Black-3.jpg', NULL, NULL, NULL),
(18, 'Langley-Black-Cement-1.jpg', 'Langley-Black-Cement-2.jpg', 'Langley-Black-Cement-3.jpg', 'Langley-Black-Cement-4.jpg', NULL, NULL),
(19, 'Langley-Dark-Brown-White-1.jpg', 'Langley-Dark-Brown-White-2.jpg', 'Langley-Dark-Brown-White-3.jpg', NULL, NULL, NULL),
(20, 'Langley-Dark-Grey-White-1.png', 'Langley-Dark-Grey-White-2.png', 'Langley-Dark-Grey-White-3.png', 'Langley-Dark-Grey-White-4.png', NULL, NULL),
(21, 'Madrid-Black-White-1.png', 'Madrid-Black-White-2.png', NULL, NULL, NULL, NULL),
(22, 'Madrid-Flogging-Molly-1.png', 'Madrid-Flogging-Molly-2.png', 'Madrid-Flogging-Molly-3.png', NULL, NULL, NULL),
(23, 'Matthew-Ash-Black-Blue-1.jpg', 'Matthew-Ash-Black-Blue-2.jpg', 'Matthew-Ash-Black-Blue-3.jpg', NULL, NULL, NULL),
(24, 'Matthew-Black-Green-1.png', 'Matthew-Black-Green-2.png', 'Matthew-Black-Green-3.png', 'Matthew-Black-Green-4.png', NULL, NULL),
(25, 'Matthew-Black-White-1.jpg', 'Matthew-Black-White-2.jpg', 'Matthew-Black-White-3.jpg', NULL, NULL, NULL),
(27, 'McQueen-Black-Cement-1.png', 'McQueen-Black-Cement-2.png', 'Mcqueen-Black-Cement-3.png', NULL, NULL, NULL),
(28, 'McQueen-Black-White-1.png', 'McQueen-Black-White-2.png', 'McQueen-Black-White-3.png', 'McQueen-Black-White-4.png', NULL, NULL),
(29, 'Pendleton-Black-Cement-1.png', 'Pendleton-Black-Cement-2.png', 'Pendleton-Black-Cement-3.png', 'Pendleton-Black-Cement-4.png', 'Pendleton-Black-Cement-5.png', 'Pendleton-Black-Cement-6.png'),
(30, 'Pendleton-Red-Black-1.jpg', 'Pendleton-Red-Black-2.jpg', 'Pendleton-Red-Black-3.jpg', NULL, NULL, NULL),
(31, 'Schubert-Matt-Fazzi-Studio-Project-1.jpg', NULL, NULL, NULL, NULL, NULL),
(32, 'boxing-club-white-tee-1.jpg', 'boxing-club-white-tee-2.jpg', NULL, NULL, NULL, NULL),
(33, 'Deathnaut-Black-Tee-1.jpg', NULL, NULL, NULL, NULL, NULL),
(34, 'Dirty-Pennant-Black-Tee-1.jpg', NULL, NULL, NULL, NULL, NULL),
(36, 'Distortion-Black-1.jpg', 'Distortion-Black-2.jpg', NULL, NULL, NULL, NULL),
(37, 'Distortion-Navy-1.jpg', 'Distortion-Navy-2.jpg', NULL, NULL, NULL, NULL),
(38, 'Footwear-Co.-Mustard-Black-Tee-1.jpg', NULL, NULL, NULL, NULL, NULL),
(39, 'Lucky-Black-1.jpg', 'Lucky-Black-2.jpg', NULL, NULL, NULL, NULL),
(40, 'lucky-white-tee-1.jpg', 'lucky-white-tee-2.jpg', NULL, NULL, NULL, NULL),
(41, 'night-black-tee-1.jpg', NULL, NULL, NULL, NULL, NULL),
(42, 'Rough-Logo-Black-1.jpg', NULL, NULL, NULL, NULL, NULL),
(43, 'Scripted-Black-Premium-Washed-Tee-1.jpg', 'Scripted-Black-Premium-Washed-Tee-2.jpg', NULL, NULL, NULL, NULL),
(44, 'Sea-Devils-Black-Classic-Tee-1.jpg', 'Sea-Devils-Black-Classic-Tee-2.jpg', NULL, NULL, NULL, NULL),
(46, 'Sea-Devils-Heather-Navy-Classic-Tee-1.jpg', 'Sea-Devils-Heather-Navy-Classic-Tee-2.jpg', NULL, NULL, NULL, NULL),
(47, 'Sea-Dogs-Black-Classic-Tee-1.jpg', 'Sea-Dogs-Black-Classic-Tee-2.jpg', NULL, NULL, NULL, NULL),
(48, 'Sea-Dogs-Chocolate-Classic-Tee-1.jpg', 'Sea-Dogs-Chocolate-Classic-Tee-2.jpg', NULL, NULL, NULL, NULL),
(49, 'Speed-Black-Classic-Tee-1.jpg', 'Speed-Black-Classic-Tee-2.jpg', NULL, NULL, NULL, NULL),
(50, 'Speed-Heather-Charcoal-Classic-Tee-1.jpg', 'Speed-Heather-Charcoal-Classic-Tee-2.jpg', NULL, NULL, NULL, NULL),
(53, 'Vintage-Logo-Black-Classic-Tee-1.jpg', 'Vintage-Logo-Black-Classic-Tee-2.jpg', NULL, NULL, NULL, NULL),
(54, 'Vintage-Logo-Cardinal-Classic-Tee-1.jpg', 'Vintage-Logo-Cardinal-Classic-Tee-2.jpg', NULL, NULL, NULL, NULL),
(55, 'Vintage-Logo-Stone-Wash-Denim-Tee-1.jpg', 'Vintage-Logo-Stone-Wash-Denim-Tee-2.jpg', NULL, NULL, NULL, NULL),
(58, 'Vintage-Logo-Black-Hood-1.jpg', 'Vintage-Logo-Black-Hood-2.jpg', NULL, NULL, NULL, NULL),
(59, 'Vintage-Logo-Heather-Navy-Hood-1.jpg', 'Vintage-Logo-Heather-Navy-Hood-2.jpg', NULL, NULL, NULL, NULL),
(60, 'Adams-Black-Brick-1.png', 'Adams-Black-Brick-2.png', 'Adams-Black-Brick-3.png', 'Adams-Black-Brick-4.png', 'Adams-Black-Brick-5.png', NULL),
(61, 'Bradley_Black_Lime-1.jpg', 'Bradley_Black_Lime-2.jpg', 'Bradley_Black_Lime-3.jpg', 'Bradley_Black_Lime-4.jpg', NULL, NULL),
(62, 'Bradley-Black-White-1.png', 'Bradley-Black-White-2.png', 'Bradley-Black-White-3.png', 'Bradley-Black-White-4.png', NULL, NULL),
(63, 'Brighton_Black_Cyan-1.jpg', 'Brighton_Black_Cyan-2.jpg', 'Brighton_Black_Cyan-3.jpg', NULL, NULL, NULL),
(64, 'Brighton_Black-Medium-Grey-1.jpg', 'Brighton_Black-Medium-Grey-2.jpg', 'Brighton_Black-Medium-Grey-3.jpg', 'Brighton_Black-Medium-Grey-4.jpg', NULL, NULL),
(65, 'Brighton-Dark-Grey-Black-1.png', 'Brighton-Dark-Grey-Black-2.png', 'Brighton-Dark-Grey-Black-3.png', 'Brighton-Dark-Grey-Black-4.png', NULL, NULL),
(66, 'Brighton_Dark_Grey_Medium_Grey-1.jpg', NULL, NULL, NULL, NULL, NULL),
(67, 'Brighton_Green_White-1.jpg', 'Brighton_Green_White-2.jpg', NULL, NULL, NULL, NULL),
(68, 'Brighton-Midnight-Cement-1.png', 'Brighton-Midnight-Cement-2.png', 'Brighton-Midnight-Cement-4.png', 'Brighton-Midnight-Cement-5.png', 'Brighton-Midnight-Cement-6.jpg', NULL),
(69, 'Brighton_Safety_White-1.jpg', 'Brighton_Safety_White-2.jpg', NULL, NULL, NULL, NULL),
(70, 'Caulfield-Black-Gum-1.png', 'Caulfield-Black-Gum-2.png', 'Caulfield-Black-Gum-3.png', 'Caulfield-Black-Gum-4.png', 'Caulfield-Black-Gum-5.png', NULL),
(71, 'Gatsby-Black-Gum-Suede-1.png', 'Gatsby-Black-Gum-Suede-2.png', 'Gatsby-Black-Gum-Suede-3.png', 'Gatsby-Black-Gum-Suede-4.png', 'Gatsby-Black-Gum-Suede-5.png', NULL),
(72, 'Gatsby_Navy_White-1.png', 'Gatsby_Navy_White-2.png', 'Gatsby_Navy_White-3.png', 'Gatsby_Navy_White-4.png', 'Gatsby_Navy_White-5.png', NULL),
(73, 'Hensley-Ensign-Brick-1.png', 'Hensley-Ensign-Brick-2.png', 'Hensley-Ensign-Brick-3.png', NULL, NULL, NULL),
(74, 'Langley_Black_Black-1.jpg', 'Langley_Black_Black-2.jpg', 'Langley_Black_Black-3.jpg', 'Langley_Black_Black-4.jpg', NULL, NULL),
(75, 'Langley_Retro-Blue-Black-White-1.jpg', 'Langley_Retro-Blue-Black-White-2.jpg', 'Langley_Retro-Blue-Black-White-3.jpg', 'Langley_Retro-Blue-Black-White-4.jpg', NULL, NULL),
(76, 'Langley_Dark_Grey_Black_Gum-1.jpg', 'Langley_Dark_Grey_Black_Gum-2.jpg', NULL, NULL, NULL, NULL),
(77, 'Langley-Hero-Muted-Red-Ensign-1.png', 'Langley-Hero-Muted-Red-Ensign-2.png', 'Langley-Hero-Muted-Red-Ensign-3.png', 'Langley-Hero-Muted-Red-Ensign-4.png', NULL, NULL),
(78, 'Madrid-Black-Black-1.png', 'Madrid-Black-Black-2.png', 'Madrid-Black-Black-3.png', 'Madrid-Black-Black-4.png', 'Madrid-Black-Black-5.png', NULL),
(79, 'Madrid-Hero-Ensign-Muted-Blue-1.png', 'Madrid-Hero-Ensign-Muted-Blue-2.png', 'Madrid-Hero-Ensign-Muted-Blue-3.png', 'Madrid-Hero-Ensign-Muted-Blue-4.png', 'Madrid-Hero-Ensign-Muted-Blue-5.png', NULL),
(80, 'Madrid-Midnight-White-Gum-1.png', 'Madrid-Midnight-White-Gum-2.png', 'Madrid-Midnight-White-Gum-3.png', 'Madrid-Midnight-White-Gum-4.png', NULL, NULL),
(81, 'matthew-black-white-canvas-1.png', 'matthew-black-white-canvas-2.png', 'Matthew-Black-White-canvas-3.png', 'Matthew-Black-White-Canvas-4.png', 'Matthew-Black-White-Canvas-5.png', NULL),
(82, 'McQueen_Black_Denim_White-1.jpg', 'McQueen_Black_Denim_White-2.jpg', 'McQueen_Black_Denim_White-3.jpg', 'McQueen_Black_Denim_White-4.jpg', NULL, NULL),
(83, 'McQueen_Medium_Grey_White-1.jpg', 'McQueen_Medium_Grey_White-2.jpg', 'McQueen_Medium_Grey_White-3.jpg', NULL, NULL, NULL),
(84, 'Pendleton_Cobalt_White-1.jpg', 'Pendleton_Cobalt_White-2.jpg', 'Pendleton_Cobalt_White-3.jpg', NULL, NULL, NULL),
(86, 'Vegan-Wallet-1.png', 'Vegan-Wallet-2.png', 'Vegan-Wallet-3.png', 'Vegan-Wallet-4.png', NULL, NULL),
(87, 'Inside_Us_Cobalt_Silicone_Wristband.jpg', NULL, NULL, NULL, NULL, NULL),
(88, 'Vegan_Red_White_Silicone_Wristband.jpg', NULL, NULL, NULL, NULL, NULL),
(89, 'Macbeth_Wrist_Band_Vegan.jpg', NULL, NULL, NULL, NULL, NULL),
(90, 'Crew_Sock_Black_Cement.jpg', NULL, NULL, NULL, NULL, NULL),
(91, 'Crew_Sock_Sundance_Red.jpg', NULL, NULL, NULL, NULL, NULL),
(92, 'Crew_Sock_White_Black.jpg', NULL, NULL, NULL, NULL, NULL),
(93, 'Ped_Sock_Black_Retro_Blue.png', NULL, NULL, NULL, NULL, NULL),
(94, 'Ped_Sock_Sundance_Red.jpg', NULL, NULL, NULL, NULL, NULL),
(95, 'Ped_Sock_White_Black.jpg', NULL, NULL, NULL, NULL, NULL),
(96, 'macbeth-bear-5panel-hat-black.png', NULL, NULL, NULL, NULL, NULL),
(97, 'macbeth-bear-5panel-hat-grey.png', NULL, NULL, NULL, NULL, NULL),
(98, 'macbeth-bear-5panel-hat-navy.png', NULL, NULL, NULL, NULL, NULL),
(99, 'macbeth-ca-snapback-hat-black.png', NULL, NULL, NULL, NULL, NULL),
(100, 'macbeth-ca-snapback-hat-grey.png', NULL, NULL, NULL, NULL, NULL),
(101, 'macbeth-ca-snapback-hat-red.png', NULL, NULL, NULL, NULL, NULL),
(102, 'macbeth-pick-trucker-hat-black.png', NULL, NULL, NULL, NULL, NULL),
(103, 'macbeth-pick-trucker-hat-grey.png', NULL, NULL, NULL, NULL, NULL),
(104, 'macbeth-pick-trucker-hat-navy.png', NULL, NULL, NULL, NULL, NULL),
(105, 'Spring-13-1910-Black-1.jpg', 'Spring-13-1910-Black-2.jpg', NULL, NULL, NULL, NULL),
(106, 'Spring-13-1910-Grey-1.jpg', 'Spring-13-1910-Grey-2.jpg', NULL, NULL, NULL, NULL),
(107, 'Summer-13-Amp-Logo-White-1.jpg', 'Summer-13-Amp-Logo-White-2.jpg', NULL, NULL, NULL, NULL),
(108, 'Summer-13-CA-Logo-Black-1.jpg', 'Summer-13-CA-Logo-Black-2.jpg', NULL, NULL, NULL, NULL),
(109, 'Spring-13-Cali-Black-1.jpg', 'Spring-13-Cali-Black-2.jpg', NULL, NULL, NULL, NULL),
(110, 'Spring-13-Cali-Grey-1.jpg', 'Spring-13-Cali-Grey-2.jpg', NULL, NULL, NULL, NULL),
(111, 'Summer-13-CA-Color-Logo-Black-1.jpg', 'Summer-13-CA-Color-Logo-Black-2.jpg', NULL, NULL, NULL, NULL),
(112, 'Summer-13-CA-Color-Logo-White-1.jpg', 'Summer-13-CA-Color-Logo-White-2.jpg', NULL, NULL, NULL, NULL),
(113, 'Charcoal_Logo_White_blue_Baseball-1.jpg', 'Charcoal_Logo_White_blue_Baseball-2.jpg', NULL, NULL, NULL, NULL),
(114, 'Spring-13-Classic-Logo-Black-1.jpg', 'Spring-13-Classic-Logo-Black-2.jpg', NULL, NULL, NULL, NULL),
(115, 'Fall-13-Classic-Logo-Heather-Charcoal-1.jpg', 'Fall-13-Classic-Logo-Heather-Charcoal-2.jpg', NULL, NULL, NULL, NULL),
(116, 'Spring-13-Classic-Logo-Navy-1.jpg', 'Spring-13-Classic-Logo-Navy-2.jpg', NULL, NULL, NULL, NULL),
(117, 'Fall-13-Classic-Logo-White-1.jpg', 'Fall-13-Classic-Logo-White-2.jpg', NULL, NULL, NULL, NULL),
(118, 'Spring-13-Crest-Heather-Grey-1.jpg', 'Spring-13-Crest-Heather-Grey-2.jpg', 'Spring-13-Crest-Heather-Grey-3.jpg', NULL, NULL, NULL),
(119, 'Spring-13-Devil-White-1.jpg', 'Spring-13-Devil-White-2.jpg', 'Spring-13-Devil-White-3.jpg', NULL, NULL, NULL),
(120, 'Spring-13-Embossed-Black-1.jpg', 'Spring-13-Embossed-Black-2.jpg', NULL, NULL, NULL, NULL),
(121, 'Spring-13-Embossed-White-1.jpg', 'Spring-13-Embossed-White-2.jpg', NULL, NULL, NULL, NULL),
(122, 'tee-firepantherbasball_red-navy-1.jpg', 'tee-firepantherbaseball_red-navy-2.jpg', NULL, NULL, NULL, NULL),
(123, 'tee-firepantherbaseball_white-heather-1.jpg', 'tee-firepantherbaseball_white-heather-2.jpg', NULL, NULL, NULL, NULL),
(124, 'Spring-13-Girl-1.jpg', 'Spring-13-Girl-2.jpg', NULL, NULL, NULL, NULL),
(125, 'Spring-13-Growl-Heather-Charcoal-1.jpg', 'Spring-13-Growl-Heather-Charcoal-2.jpg', NULL, NULL, NULL, NULL),
(126, 'Spring-13-Growl-Red-1a.jpg', 'Spring-13-Growl-Red-2.jpg', NULL, NULL, NULL, NULL),
(127, 'Spring-13-Growl-White-1.jpg', 'Spring-13-Growl-White-2.jpg', NULL, NULL, NULL, NULL),
(128, 'Spring-13-Hands-1.jpg', 'Spring-13-Hands-2.jpg', NULL, NULL, NULL, NULL),
(129, 'Jona_Black_Tee-1.jpg', 'Jona_Black_Tee-2.jpg', NULL, NULL, NULL, NULL),
(130, 'Spring-13-Macbeth-Or-Death-Black-1.jpg', 'Spring-13-Macbeth-Or-Death-Black-2.jpg', NULL, NULL, NULL, NULL),
(131, 'Spring-13-Macbeth-Or-Death-White-1.jpg', 'Spring-13-Macbeth-Or-Death-White-2.jpg', NULL, NULL, NULL, NULL),
(132, 'Summer-13-Mr-Lincoln-White-1.jpg', 'Summer-13-Mr-Lincoln-White-2.jpg', NULL, NULL, NULL, NULL),
(133, 'Old_Type_Black_Tee-1.jpg', NULL, NULL, NULL, NULL, NULL),
(134, 'Old_Type_Heather_Grey_Tee-1.jpg', NULL, NULL, NULL, NULL, NULL),
(135, 'Spring-13-Pennant-Outline-black-1.jpg', 'Spring-13-Pennant-Outline-Black-2.jpg', NULL, NULL, NULL, NULL),
(136, 'Spring-13-Pennant-Outline-White-1.jpg', 'Spring-13-Pennant-Outline-White-2.jpg', NULL, NULL, NULL, NULL),
(137, 'Spring-13-Scripts-Black-1.jpg', 'Spring-13-Scripts-Black-2.jpg', 'Spring-13-Scripts-Black-3.jpg', NULL, NULL, NULL),
(138, 'Spring-13-Scripts-Grey-1.jpg', 'Spring-13-Scripts-Grey-2.jpg', NULL, NULL, NULL, NULL),
(139, 'Tom-Gooey-Tee-1.jpg', 'Tom-Gooey-Tee-2.jpg', NULL, NULL, NULL, NULL),
(140, 'Summer-13-skull-lord-black-1.jpg', 'Summer-13-skull-lord-black-2.jpg', NULL, NULL, NULL, NULL),
(141, 'Summer-13-Snarl-Black-1.jpg', 'Summer-13-Snarl-Black-2.jpg', NULL, NULL, NULL, NULL),
(142, 'Snarl_Navy_Tee-1.jpg', NULL, NULL, NULL, NULL, NULL),
(143, 'Spring-13-Top-Hat-Black-1.jpg', 'Spring-13-Top-Hat-Black-2.jpg', NULL, NULL, NULL, NULL),
(144, 'Spring-13-Top-Hat-White-1.jpg', 'Spring-13-Top-Hat-White-2.jpg', NULL, NULL, NULL, NULL),
(145, 'Spring-13-Varsity-Black-1.jpg', 'Spring-13-Varsity-Black-2.jpg', NULL, NULL, NULL, NULL),
(146, 'Spring-13-Varsity-Navy-1.jpg', 'Spring-13-Varsity-Navy-2.jpg', NULL, NULL, NULL, NULL),
(147, 'Spring-13-Varsity-White-1.jpg', 'Spring-13-Varsity-White-2.jpg', NULL, NULL, NULL, NULL),
(148, 'Spring-13-vegan-black-1.jpg', 'Spring-13-vegan-black-2.jpg', NULL, NULL, NULL, NULL),
(149, 'Spring-13-vegan-blue-1.jpg', 'Spring-13-vegan-blue-2.jpg', NULL, NULL, NULL, NULL),
(150, 'Spring-13-vegan-white-1.jpg', 'Spring-13-vegan-white-2.jpg', NULL, NULL, NULL, NULL),
(151, 'Vintage-Logo-Heather-Charcoal-1.jpg', 'Vintage-Logo-Heather-Charcoal-2.jpg', NULL, NULL, NULL, NULL),
(152, 'Vintage-Logo-Heather-Grey-1.jpg', 'Vintage-Logo-Heather-Grey-2.jpg', NULL, NULL, NULL, NULL),
(153, 'Vintage-Logo-Red-1.jpg', 'Vintage-Logo-Red-2.jpg', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `itemID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(12) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `isGreen` tinyint(1) DEFAULT '0',
  `entryPrice` decimal(11,2) DEFAULT '0.00',
  `price` decimal(11,2) DEFAULT '0.00',
  `priceSale` decimal(11,2) DEFAULT '0.00',
  `description` text,
  `isAvailable` tinyint(1) DEFAULT '1',
  `categoryID` int(11) NOT NULL,
  `imageID` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `name`, `color`, `size`, `material`, `isGreen`, `entryPrice`, `price`, `priceSale`, `description`, `isAvailable`, `categoryID`, `imageID`, `quantity`) VALUES
(2, 'Brighton', 'Black/White', '8', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 1, 1),
(4, 'Brighton', 'Black/White', '9,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 1, 1),
(5, 'Brighton', 'Medium Grey/Brick', '10', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 2, 1),
(6, 'Brighton', 'Medium Grey/Brick', '7,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 2, 1),
(8, 'Brighton', 'Medium Grey/Brick', '9,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 2, 1),
(9, 'Eliot', 'Blue/Black', '8', '2 Tone Nylon', 1, '0.00', '425.00', '0.00', NULL, 1, 1, 3, 1),
(10, 'Eliot', 'Blue/Black', '9', '2 Tone Nylon', 1, '0.00', '425.00', '0.00', NULL, 1, 1, 3, 1),
(11, 'Eliot', 'Dk Grey/Deep Marine', '7,5', 'Canvas', 1, '0.00', '450.00', '0.00', NULL, 1, 1, 4, 1),
(13, 'Eliot', 'Dk Grey/Deep Marine', '8,5', 'Canvas', 1, '0.00', '450.00', '0.00', NULL, 1, 1, 4, 1),
(15, 'Eliot', 'Dk Grey/Deep Marine', '9,5', 'Canvas', 1, '0.00', '450.00', '0.00', NULL, 1, 1, 4, 1),
(16, 'Eliot', 'Grey/Grey/White', '10', 'Canvas', 1, '0.00', '485.00', '0.00', NULL, 1, 1, 5, 1),
(17, 'Eliot', 'Grey/Grey/White', '13', 'Canvas', 1, '0.00', '485.00', '0.00', NULL, 1, 1, 5, 1),
(18, 'Eliot', 'Grey/Grey/White', '8', 'Canvas', 1, '0.00', '485.00', '0.00', NULL, 1, 1, 5, 1),
(19, 'Eliot', 'Grey/Grey/White', '9', 'Canvas', 1, '0.00', '485.00', '0.00', NULL, 1, 1, 5, 1),
(20, 'Eliot Premium', 'Anthracite/Cement', '10', 'Leather', 0, '0.00', '590.00', '0.00', NULL, 1, 1, 6, 1),
(21, 'Eliot Premium', 'Black/Cement', '9', 'Leather', 0, '0.00', '590.00', '0.00', NULL, 1, 1, 7, 1),
(22, 'Eliot Premium', 'Black/White', '10', 'Soft Hand Leather', 0, '0.00', '550.00', '0.00', NULL, 1, 1, 8, 1),
(23, 'Eliot Premium', 'Black/White', '8', 'Soft Hand Leather', 0, '0.00', '550.00', '0.00', NULL, 1, 1, 8, 1),
(24, 'Eliot Premium', 'Black/White', '8,5', 'Soft Hand Leather', 0, '0.00', '550.00', '0.00', NULL, 1, 1, 8, 1),
(25, 'Eliot Premium', 'Black/White', '9', 'Soft Hand Leather', 0, '0.00', '550.00', '0.00', NULL, 1, 1, 8, 1),
(26, 'Eliot Premium', 'Black/White/Red', '10', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 9, 1),
(27, 'Eliot Premium', 'Black/White/Red', '10,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 9, 1),
(28, 'Eliot Premium', 'Black/White/Red', '8', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 9, 1),
(29, 'Eliot Premium', 'Black/White/Red', '8,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 9, 1),
(31, 'Eliot Premium', 'Black/White/Red', '9,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 9, 1),
(32, 'Eliot Premium', 'Brown/Cement', '8,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 10, 1),
(34, 'Eliot', 'Yellow/Black', '8,5', 'Canvas', 0, '0.00', '425.00', '0.00', NULL, 1, 1, 11, 1),
(35, 'Gatsby', 'Black/Cement', '10', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(36, 'Gatsby', 'Black/Cement', '10,5', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(37, 'Gatsby', 'Black/Cement', '11', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(38, 'Gatsby', 'Black/Cement', '12', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(39, 'Gatsby', 'Black/Cement', '6', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(40, 'Gatsby', 'Black/Cement', '7', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(41, 'Gatsby', 'Black/Cement', '7,5', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(42, 'Gatsby', 'Black/Cement', '8', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(43, 'Gatsby', 'Black/Cement', '8,5', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(44, 'Gatsby', 'Black/Cement', '9', 'Premium Matte Synthetic Leather', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 12, 1),
(45, 'Gatsby', 'Black/Grey', '10,5', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 13, 1),
(46, 'Gatsby', 'Black/Grey', '11', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 13, 1),
(48, 'Gatsby', 'Black/Grey', '7,5', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 13, 1),
(49, 'Gatsby', 'Black/Grey', '8,5', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 13, 1),
(50, 'Gatsby', 'Black/Grey', '9', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 13, 1),
(52, 'Gatsby', 'Dark Brown/Cement', '10', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 14, 1),
(54, 'Gatsby', 'Dark Brown/Cement', '11', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 14, 1),
(56, 'Gatsby', 'Dark Brown/Cement', '8,5', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 14, 1),
(57, 'Gatsby', 'Dark Brown/Cement', '9', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 14, 1),
(58, 'Gatsby', 'Dark Brown/Cement', '9,5', 'Oiled Nubuck', 0, '0.00', '635.00', '0.00', NULL, 1, 1, 14, 1),
(65, 'Hensley', 'Dark Brown/White', '10', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 16, 1),
(66, 'Hensley', 'Dark Brown/White', '11', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 16, 1),
(67, 'Hensley', 'Dark Brown/White', '7', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 16, 1),
(68, 'Hensley', 'Dark Brown/White', '8,5', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 16, 1),
(70, 'Hensley', 'Dark Grey/Black', '10', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 17, 1),
(71, 'Hensley', 'Dark Grey/Black', '6', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 17, 1),
(72, 'Hensley', 'Dark Grey/Black', '7,5', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 17, 1),
(73, 'Hensley', 'Dark Grey/Black', '8,5', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 17, 1),
(74, 'Hensley', 'Dark Grey/Black', '9', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 17, 1),
(75, 'Hensley', 'Dark Grey/Black', '9,5', 'Synthetic Nubuck', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 17, 1),
(76, 'Langley', 'Black/Cement', '10', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(77, 'Langley', 'Black/Cement', '10,5', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(78, 'Langley', 'Black/Cement', '7,5', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(79, 'Langley', 'Black/Cement', '8', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(80, 'Langley', 'Black/Cement', '9,5', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(82, 'Langley', 'Dark Brown/White', '7,5', 'Oiled Nubuck', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 19, 1),
(83, 'Langley', 'Dark Brown/White', '8', 'Oiled Nubuck', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 19, 1),
(84, 'Langley', 'Dark Brown/White', '9,5', 'Oiled Nubuck', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 19, 1),
(85, 'Langley', 'Dark Grey/White', '8,5', 'Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 20, 1),
(86, 'Madrid', 'Black/White', '10', 'Suede/Canvas', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 21, 1),
(88, 'Madrid', 'Black/White', '8', 'Suede/Canvas', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 21, 1),
(89, 'Madrid', 'Black/White', '9', 'Suede/Canvas', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 21, 1),
(91, 'Madrid', 'Flogging Molly Studio Project', '8', 'Suede/Canvas', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 22, 1),
(92, 'Madrid', 'Flogging Molly Studio Project', '8,5', 'Suede/Canvas', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 22, 1),
(95, 'Matthew', 'Ash/Black/Blue', '10', 'Suede/Canvas', 0, '0.00', '499.00', '450.00', NULL, 1, 1, 23, 1),
(98, 'Matthew', 'Black/White', '10', 'Wrinkled', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 25, 1),
(99, 'Matthew', 'Black/White', '7,5', 'Wrinkled', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 25, 1),
(100, 'Matthew', 'Black/White', '9', 'Wrinkled', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 25, 1),
(102, 'McQueen', 'Black/Cement', '10', 'Classic Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 27, 1),
(103, 'McQueen', 'Black/Cement', '10,5', 'Classic Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 27, 1),
(104, 'McQueen', 'Black/Cement', '7', 'Classic Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 27, 1),
(107, 'McQueen', 'Black/Cement', '8,5', 'Classic Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 27, 1),
(108, 'McQueen', 'Black/Cement', '9', 'Classic Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 27, 1),
(109, 'McQueen', 'Black/Cement', '9,5', 'Classic Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 27, 1),
(110, 'McQueen', 'Black/White', '10', 'Medium Waxed Suede', 0, '0.00', '525.00', '0.00', NULL, 1, 1, 28, 1),
(114, 'McQueen', 'Black/White', '8', 'Medium Waxed Suede', 0, '0.00', '525.00', '0.00', NULL, 1, 1, 28, 1),
(115, 'McQueen', 'Black/White', '8,5', 'Medium Waxed Suede', 0, '0.00', '525.00', '0.00', NULL, 1, 1, 28, 1),
(116, 'McQueen', 'Black/White', '9', 'Medium Waxed Suede', 0, '0.00', '525.00', '0.00', NULL, 1, 1, 28, 1),
(118, 'Pendleton', 'Black/Cement', '10', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 29, 1),
(121, 'Pendleton', 'Black/Cement', '8', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 29, 1),
(123, 'Pendleton', 'Black/Cement', '9', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 29, 1),
(129, 'Pendleton', 'Red/Black', '8', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 30, 1),
(130, 'Pendleton', 'Red/Black', '8,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 30, 1),
(131, 'Pendleton', 'Red/Black', '9', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 30, 1),
(132, 'Pendleton', 'Red/Black', '9,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 30, 1),
(133, 'Schubert', 'Matt Fazzi Studio Project', '10,5', 'Navy', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 31, 1),
(134, 'Schubert', 'Matt Fazzi Studio Project', '7', 'Navy', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 31, 1),
(135, 'Schubert', 'Matt Fazzi Studio Project', '7,5', 'Navy', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 31, 1),
(136, 'Schubert', 'Matt Fazzi Studio Project', '8,5', 'Navy', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 31, 1),
(137, 'Boxing Club Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 32, 1),
(138, 'Deathnaut Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 33, 1),
(139, 'Dirty Pennant Tee', 'Black', 'L', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 34, 1),
(141, 'Distortion Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 36, 1),
(142, 'Distortion Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 36, 1),
(143, 'Distortion Tee', 'Navy', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 37, 1),
(144, 'Distortion Tee', 'Navy', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 37, 1),
(145, 'Footwear Co. Tee', 'Mustard/Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 38, 1),
(146, 'Lucky Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 39, 1),
(147, 'Lucky Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 40, 1),
(148, 'Night Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 41, 1),
(149, 'Night Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 41, 1),
(150, 'Rough Logo Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 42, 1),
(151, 'Scripted Tee', 'Black', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 43, 1),
(152, 'Scripted Tee', 'Black', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 43, 1),
(153, 'Sea Devils Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 44, 1),
(154, 'Sea Devils Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 44, 1),
(156, 'Sea Devils Tee', 'Heather Navy', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 46, 1),
(157, 'Sea Devils Tee', 'Heather Navy', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 46, 1),
(158, 'Sea Dogs Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 47, 1),
(159, 'Sea Dogs Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 47, 1),
(160, 'Sea Dogs Tee', 'Chocolate', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 48, 1),
(161, 'Sea Dogs Tee', 'Chocolate', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 48, 1),
(163, 'Speed Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 49, 1),
(165, 'Speed Tee', 'Heather Charcoal', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 50, 1),
(169, 'Vintage Logo Tee', 'Black', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 53, 1),
(170, 'Vintage Logo Tee', 'Black', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 53, 1),
(171, 'Vintage Logo Tee', 'Cardinal', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 54, 1),
(172, 'Vintage Logo Tee', 'Cardinal', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 54, 1),
(173, 'Vintage Logo Tee', 'Stone Wash Denim', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 55, 1),
(174, 'Vintage Logo Tee', 'Stone Wash Denim', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 55, 1),
(177, 'Vintage Logo Hoodie', 'Black', 'L', NULL, 0, '0.00', '425.00', '0.00', NULL, 1, 2, 58, 1),
(178, 'Vintage Logo Hoodie', 'Black', 'M', NULL, 0, '0.00', '425.00', '0.00', NULL, 1, 2, 58, 1),
(180, 'Vintage Logo Hoodie', 'Navy', 'S', NULL, 0, '0.00', '425.00', '0.00', NULL, 1, 2, 59, 1),
(181, 'Vintage Logo Hoodie', 'Navy', 'M', NULL, 0, '0.00', '425.00', '0.00', NULL, 1, 2, 59, 1),
(182, 'Vintage Logo Hoodie', 'Navy', 'L', NULL, 0, '0.00', '425.00', '0.00', NULL, 1, 2, 59, 1),
(183, 'Brighton', 'Black/White', '7,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 1, 1),
(184, 'Brighton', 'Black/White', '8,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 1, 1),
(185, 'Brighton', 'Black/White', '9', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 1, 1),
(186, 'Brighton', 'Black/White', '10', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 1, 1),
(187, 'Langley', 'Black/Cement', '6', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(188, 'Langley', 'Black/Cement', '7', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(189, 'Langley', 'Black/Cement', '8,5', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(190, 'Langley', 'Black/Cement', '9', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(191, 'Langley', 'Black/Cement', '11', 'Classic Canvas', 1, '0.00', '525.00', '0.00', NULL, 1, 1, 18, 1),
(192, 'Matthew', 'Black/Green', '8', 'Classic Canvas', 1, '0.00', '499.00', '0.00', NULL, 1, 1, 24, 1),
(193, 'Matthew', 'Black/Green', '8,5', 'Classic Canvas', 1, '0.00', '499.00', '0.00', NULL, 1, 1, 24, 1),
(194, 'McQueen', 'Black/Cement', '6', 'Classic Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 27, 1),
(195, 'McQueen', 'Black/Cement', '11', 'Classic Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 27, 1),
(196, 'Vintage Logo Tee', 'Black', 'L', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 53, 1),
(197, 'Adams', 'Black/Brick', '5', 'Canvas & Synt. Suede', 1, '0.00', '390.00', '0.00', NULL, 1, 1, 60, 1),
(198, 'Adams', 'Black/Brick', '7', 'Canvas & Synt. Suede', 1, '0.00', '390.00', '0.00', NULL, 1, 1, 60, 1),
(199, 'Adams', 'Black/Brick', '8', 'Canvas & Synt. Suede', 1, '0.00', '390.00', '0.00', NULL, 1, 1, 60, 1),
(200, 'Adams', 'Black/Brick', '8,5', 'Canvas & Synt. Suede', 1, '0.00', '390.00', '0.00', NULL, 1, 1, 60, 1),
(201, 'Adams', 'Black/Brick', '9', 'Canvas & Synt. Suede', 1, '0.00', '390.00', '0.00', NULL, 1, 1, 60, 1),
(202, 'Adams', 'Black/Brick', '9,5', 'Canvas & Synt. Suede', 1, '0.00', '390.00', '0.00', NULL, 1, 1, 60, 1),
(203, 'Adams', 'Black/Brick', '10', 'Canvas & Synt. Suede', 1, '0.00', '390.00', '0.00', NULL, 1, 1, 60, 1),
(204, 'Bradley', 'Black/Lime', '7,5', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 61, 1),
(205, 'Bradley', 'Black/Lime', '8,5', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 61, 1),
(206, 'Bradley', 'Black/Lime', '9', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 61, 1),
(207, 'Bradley', 'Black/Lime', '9,5', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 61, 1),
(208, 'Bradley', 'Black/Lime', '10,5', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 61, 1),
(209, 'Bradley', 'Black/White', '7', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 62, 1),
(210, 'Bradley', 'Black/White', '8', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 62, 1),
(211, 'Bradley', 'Black/White', '8,5', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 62, 1),
(212, 'Bradley', 'Black/White', '9', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 62, 1),
(213, 'Bradley', 'Black/White', '9,5', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 62, 1),
(214, 'Bradley', 'Black/White', '10', 'Synthetic Nubuck & Mesh', 1, '0.00', '550.00', '0.00', NULL, 1, 1, 62, 1),
(215, 'Brighton', 'Black/Cyan', '8', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 63, 1),
(216, 'Brighton', 'Black/Cyan', '9', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 63, 1),
(217, 'Brighton', 'Black/Cyan', '9,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 63, 1),
(218, 'Brighton', 'Black/Cyan', '10', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 63, 1),
(219, 'Brighton', 'Black/Medium Grey', '7,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 64, 1),
(220, 'Brighton', 'Black/Medium Grey', '8', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 64, 1),
(221, 'Brighton', 'Black/Medium Grey', '8,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 64, 1),
(222, 'Brighton', 'Black/Medium Grey', '9', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 64, 1),
(223, 'Brighton', 'Black/Medium Grey', '9,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 64, 1),
(224, 'Brighton', 'Black/Medium Grey', '10', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 64, 1),
(225, 'Brighton', 'Black/Medium Grey', '10,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 64, 1),
(226, 'Brighton', 'Dark Grey/Black', '9', 'Synt. Suede & Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 65, 1),
(227, 'Brighton', 'Dark Grey/Black', '9,5', 'Synt. Suede & Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 65, 1),
(228, 'Brighton', 'Dark Grey/Black', '10', 'Synt. Suede & Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 65, 1),
(229, 'Brighton', 'Dark Grey/Medium Grey', '8', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 66, 1),
(230, 'Brighton', 'Dark Grey/Medium Grey', '8,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 66, 1),
(231, 'Brighton', 'Dark Grey/Medium Grey', '9', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 66, 1),
(232, 'Brighton', 'Dark Grey/Medium Grey', '9,5', 'Suede/Canvas', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 66, 1),
(233, 'Brighton', 'Green/White', '8', 'Synthetic Suede/Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 67, 1),
(234, 'Brighton', 'Green/White', '9', 'Synthetic Suede/Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 67, 1),
(235, 'Brighton', 'Green/White', '10', 'Synthetic Suede/Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 67, 1),
(236, 'Brighton', 'Midnight/Ensign/Cement', '8', 'Synthetic Suede/Canvas', 1, '0.00', '565.00', '0.00', NULL, 1, 1, 68, 1),
(237, 'Brighton', 'Midnight/Ensign/Cement', '9', 'Synthetic Suede/Canvas', 1, '0.00', '565.00', '0.00', NULL, 1, 1, 68, 1),
(238, 'Brighton', 'Midnight/Ensign/Cement', '10', 'Synthetic Suede/Canvas', 1, '0.00', '565.00', '0.00', NULL, 1, 1, 68, 1),
(239, 'Brighton', 'Safety/White', '8', 'Synthetic Suede/ Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 69, 1),
(240, 'Brighton', 'Safety/White', '9', 'Synthetic Suede/ Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 69, 1),
(241, 'Brighton', 'Safety/White', '10', 'Synthetic Suede/ Retro Nylon', 0, '0.00', '565.00', '0.00', NULL, 1, 1, 69, 1),
(242, 'Caulfield', 'Black/Gum', '8', 'High Grain FG', 0, '0.00', '749.00', '0.00', NULL, 1, 1, 70, 1),
(243, 'Caulfield', 'Black/Gum', '8,5', 'High Grain FG', 0, '0.00', '749.00', '0.00', NULL, 1, 1, 70, 1),
(244, 'Caulfield', 'Black/Gum', '9', 'High Grain FG', 0, '0.00', '749.00', '0.00', NULL, 1, 1, 70, 1),
(245, 'Caulfield', 'Black/Gum', '9,5', 'High Grain FG', 0, '0.00', '749.00', '0.00', NULL, 1, 1, 70, 1),
(246, 'Caulfield', 'Black/Gum', '10', 'High Grain FG', 0, '0.00', '749.00', '0.00', NULL, 1, 1, 70, 1),
(247, 'Caulfield', 'Black/Gum', '11', 'High Grain FG', 0, '0.00', '749.00', '0.00', NULL, 1, 1, 70, 1),
(248, 'Gatsby', 'Black/Gum', '8', 'Medium Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 71, 1),
(249, 'Gatsby', 'Black/Gum', '8,5', 'Medium Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 71, 1),
(250, 'Gatsby', 'Black/Gum', '9', 'Medium Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 71, 1),
(251, 'Gatsby', 'Black/Gum', '9,5', 'Medium Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 71, 1),
(252, 'Gatsby', 'Black/Gum', '10', 'Medium Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 71, 1),
(253, 'Gatsby', 'Midnight/White', '8', 'Synthetic Suede', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 72, 1),
(254, 'Gatsby', 'Midnight/White', '8,5', 'Synthetic Suede', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 72, 1),
(255, 'Gatsby', 'Midnight/White', '9', 'Synthetic Suede', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 72, 1),
(256, 'Gatsby', 'Midnight/White', '9,5', 'Synthetic Suede', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 72, 1),
(257, 'Gatsby', 'Midnight/White', '10', 'Synthetic Suede', 1, '0.00', '595.00', '0.00', NULL, 1, 1, 72, 1),
(258, 'Hensley', 'Ensign/Brick', '7,5', 'Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 73, 1),
(259, 'Hensley', 'Ensign/Brick', '8,5', 'Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 73, 1),
(260, 'Hensley', 'Ensign/Brick', '9', 'Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 73, 1),
(261, 'Hensley', 'Ensign/Brick', '9,5', 'Waxed Suede', 0, '0.00', '625.00', '0.00', NULL, 1, 1, 73, 1),
(262, 'Langley', 'Black/Black', '6', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(263, 'Langley', 'Black/Black', '7', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(264, 'Langley', 'Black/Black', '7,5', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(265, 'Langley', 'Black/Black', '8', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(266, 'Langley', 'Black/Black', '8,5', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(267, 'Langley', 'Black/Black', '9', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(268, 'Langley', 'Black/Black', '9,5', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(269, 'Langley', 'Black/Black', '10', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(270, 'Langley', 'Black/Black', '10,5', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(271, 'Langley', 'Black/Black', '11', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(272, 'Langley', 'Black/Black', '12', 'Denim Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 74, 1),
(273, 'Langley', 'Blue/Black/White', '5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(274, 'Langley', 'Blue/Black/White', '6', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(275, 'Langley', 'Blue/Black/White', '7', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(276, 'Langley', 'Blue/Black/White', '7,5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(277, 'Langley', 'Blue/Black/White', '8', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(278, 'Langley', 'Blue/Black/White', '8,5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(279, 'Langley', 'Blue/Black/White', '9', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(280, 'Langley', 'Blue/Black/White', '9,5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(281, 'Langley', 'Blue/Black/White', '10', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(282, 'Langley', 'Blue/Black/White', '10,5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(283, 'Langley', 'Blue/Black/White', '11', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 75, 1),
(284, 'Langley', 'Dark Grey/Black/Gum', '7', 'Medium Waxed Suede', 0, '0.00', '595.00', '0.00', NULL, 1, 1, 76, 1),
(285, 'Langley', 'Dark Grey/Black/Gum', '7,5', 'Medium Waxed Suede', 0, '0.00', '595.00', '0.00', NULL, 1, 1, 76, 1),
(286, 'Langley', 'Dark Grey/Black/Gum', '8', 'Medium Waxed Suede', 0, '0.00', '595.00', '0.00', NULL, 1, 1, 76, 1),
(287, 'Langley', 'Dark Grey/Black/Gum', '8,5', 'Medium Waxed Suede', 0, '0.00', '595.00', '0.00', NULL, 1, 1, 76, 1),
(288, 'Langley', 'Dark Grey/Black/Gum', '9', 'Medium Waxed Suede', 0, '0.00', '595.00', '0.00', NULL, 1, 1, 76, 1),
(289, 'Langley', 'Dark Grey/Black/Gum', '9,5', 'Medium Waxed Suede', 0, '0.00', '595.00', '0.00', NULL, 1, 1, 76, 1),
(290, 'Langley', 'Dark Grey/Black/Gum', '10', 'Medium Waxed Suede', 0, '0.00', '595.00', '0.00', NULL, 1, 1, 76, 1),
(291, 'Langley', 'Dark Grey/Black/Gum', '10,5', 'Medium Waxed Suede', 0, '0.00', '595.00', '0.00', NULL, 1, 1, 76, 1),
(292, 'Langley', 'Muted Red/Ensign', '8', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 77, 1),
(293, 'Langley', 'Muted Red/Ensign', '8,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 77, 1),
(294, 'Langley', 'Muted Red/Ensign', '9', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 77, 1),
(295, 'Langley', 'Muted Red/Ensign', '9,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 77, 1),
(296, 'Langley', 'Muted Red/Ensign', '11', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 77, 1),
(297, 'Langley', 'Muted Red/Ensign', '6', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 77, 1),
(298, 'Madrid', 'Black/Black', '8,5', 'Synthetic Suede & Canvas', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 78, 1),
(299, 'Madrid', 'Ensign/Muted Red', '8', 'Medium Waxed Suede/Canvas', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 79, 1),
(300, 'Madrid', 'Ensign/Muted Red', '8,5', 'Medium Waxed Suede/Canvas', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 79, 1),
(301, 'Madrid', 'Ensign/Muted Red', '9', 'Medium Waxed Suede/Canvas', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 79, 1),
(302, 'Madrid', 'Ensign/Muted Red', '9,5', 'Medium Waxed Suede/Canvas', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 79, 1),
(303, 'Madrid', 'Ensign/Muted Red', '10', 'Medium Waxed Suede/Canvas', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 79, 1),
(304, 'Madrid', 'Midnight/White', '8,5', 'Synt. Suede & Canvas', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 80, 1),
(305, 'Madrid', 'Midnight/White', '9', 'Synt. Suede & Canvas', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 80, 1),
(306, 'Madrid', 'Midnight/White', '9,5', 'Synt. Suede & Canvas', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 80, 1),
(307, 'Madrid', 'Midnight/White', '10', 'Synt. Suede & Canvas', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 80, 1),
(308, 'Madrid', 'Midnight/White', '10,5', 'Synt. Suede & Canvas', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 80, 1),
(309, 'Madrid', 'Midnight/White', '11', 'Synt. Suede & Canvas', 1, '0.00', '585.00', '0.00', NULL, 1, 1, 80, 1),
(310, 'Matthew', 'Black/White', '7', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(311, 'Matthew', 'Black/White', '7,5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(312, 'Matthew', 'Black/White', '8', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(313, 'Matthew', 'Black/White', '8,5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(314, 'Matthew', 'Black/White', '9', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(315, 'Matthew', 'Black/White', '9,5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(316, 'Matthew', 'Black/White', '10', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(317, 'Matthew', 'Black/White', '10,5', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(318, 'Matthew', 'Black/White', '11', 'Classic Canvas', 1, '0.00', '495.00', '0.00', NULL, 1, 1, 81, 1),
(319, 'McQueen', 'Black/Denim', '7', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(320, 'McQueen', 'Black/Denim', '7,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(321, 'McQueen', 'Black/Denim', '8', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(322, 'McQueen', 'Black/Denim', '8,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(323, 'McQueen', 'Black/Denim', '9', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(324, 'McQueen', 'Black/Denim', '9,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(325, 'McQueen', 'Black/Denim', '10', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(326, 'McQueen', 'Black/Denim', '10,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(327, 'McQueen', 'Black/Denim', '11', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 82, 1),
(328, 'McQueen', 'Medium Grey/White', '7', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(329, 'McQueen', 'Medium Grey/White', '7,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(330, 'McQueen', 'Medium Grey/White', '8', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(331, 'McQueen', 'Medium Grey/White', '8,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(332, 'McQueen', 'Medium Grey/White', '9', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(333, 'McQueen', 'Medium Grey/White', '9,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(334, 'McQueen', 'Medium Grey/White', '10', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(335, 'McQueen', 'Medium Grey/White', '10,5', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(336, 'McQueen', 'Medium Grey/White', '11', 'Canvas', 1, '0.00', '439.00', '0.00', NULL, 1, 1, 83, 1),
(337, 'Pendleton', 'Cobalt/White', '8', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 84, 1),
(338, 'Pendleton', 'Cobalt/White', '8,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 84, 1),
(339, 'Pendleton', 'Cobalt/White', '9', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 84, 1),
(340, 'Pendleton', 'Cobalt/White', '9,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 84, 1),
(341, 'Pendleton', 'Cobalt/White', '10', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 84, 1),
(342, 'Pendleton', 'Cobalt/White', '10,5', 'Suede', 0, '0.00', '585.00', '0.00', NULL, 1, 1, 84, 1),
(344, 'Eliot Wallet', 'Black/Cement', 'NO', NULL, 1, '0.00', '180.00', '0.00', NULL, 1, 2, 86, 1),
(345, 'Браслет Macbeth Inside Us', 'Cobalt', 'NO', 'Silicone', 0, '0.00', '39.00', '0.00', NULL, 1, 2, 87, 1),
(346, 'Браслет Macbeth Vegan', 'Red/White', 'NO', 'Silicone', 1, '0.00', '39.00', '0.00', NULL, 1, 2, 88, 1),
(347, 'Браслет Macbeth Vegan', 'Green/White', 'NO', 'Silicone', 1, '0.00', '39.00', '0.00', NULL, 1, 2, 89, 1),
(348, 'Шкарпетки Crew Sock', 'Black/Cement', 'NO', NULL, 0, '0.00', '60.00', '0.00', NULL, 1, 2, 90, 1),
(349, 'Шкарпетки Crew Sock', 'Sundance Red', 'NO', NULL, 0, '0.00', '60.00', '0.00', NULL, 1, 2, 91, 1),
(350, 'Шкарпетки Crew Sock', 'White/Black', 'NO', NULL, 0, '0.00', '60.00', '0.00', NULL, 1, 2, 92, 1),
(351, 'Шкарпетки Ped Sock', 'Black/Retro Blue', 'NO', NULL, 0, '0.00', '50.00', '0.00', NULL, 1, 2, 93, 1),
(352, 'Шкарпетки Ped Sock', 'Sundance Red', 'NO', NULL, 0, '0.00', '50.00', '0.00', NULL, 1, 2, 94, 1),
(353, 'Шкарпетки Ped Sock', 'White/Black', 'NO', NULL, 0, '0.00', '50.00', '0.00', NULL, 1, 2, 95, 1),
(354, 'Bear 5 Panel Hat', 'Black', 'NO', NULL, 0, '0.00', '225.00', '0.00', NULL, 1, 2, 96, 1),
(355, 'Bear 5 Panel Hat', 'Grey', 'NO', NULL, 0, '0.00', '225.00', '0.00', NULL, 1, 2, 97, 1),
(356, 'Bear 5 Panel Hat', 'Navy', 'NO', NULL, 0, '0.00', '225.00', '0.00', NULL, 1, 2, 98, 1),
(357, 'CA Snapback Hat', 'Black', 'NO', NULL, 0, '0.00', '225.00', '0.00', NULL, 1, 2, 99, 1),
(358, 'CA Snapback Hat', 'Grey', 'NO', NULL, 0, '0.00', '225.00', '0.00', NULL, 1, 2, 100, 1),
(359, 'CA Snapback Hat', 'Red', 'NO', NULL, 0, '0.00', '225.00', '0.00', NULL, 1, 2, 101, 1),
(360, 'Pick Trucker', 'Black/Cement', 'NO', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 102, 1),
(361, 'Pick Trucker', 'Grey/Gold', 'NO', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 103, 1),
(362, 'Pick Trucker', 'Navy/Silver', 'NO', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 104, 1),
(363, '1910 Tee', 'Black', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 105, 1),
(364, '1910 Tee', 'Black', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 105, 1),
(365, '1910 Tee', 'Grey', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 106, 1),
(366, '1910 Tee', 'Grey', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 106, 1),
(367, 'Amp Pennant Tee', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 107, 1),
(368, 'Amp Pennant Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 107, 1),
(369, 'CA Flag Pennant Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 108, 1),
(370, 'CA Flag Pennant Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 108, 1),
(371, 'CA Flag Pennant Tee', 'Black', 'L', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 108, 1),
(372, 'Cali Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 109, 1),
(373, 'Cali Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 109, 1),
(374, 'Cali Tee', 'Grey', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 110, 1),
(375, 'Cali Tee', 'Grey', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 110, 1),
(376, 'California Color Logo Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 111, 1),
(377, 'California Color Logo Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 111, 1),
(378, 'California Color Logo Tee', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 112, 1),
(379, 'California Color Logo Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 112, 1),
(380, 'Charcoal Logo Baseball', 'White/Blue', 'S', NULL, 0, '0.00', '239.00', '0.00', NULL, 1, 2, 113, 1),
(381, 'Classic Logo Tee', 'Black', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 114, 1),
(382, 'Classic Logo Tee', 'Black', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 114, 1),
(383, 'Classic Logo Tee', 'Black', 'L', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 114, 1),
(384, 'Classic Logo Tee', 'Heather Grey', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 115, 1),
(385, 'Classic Logo Tee', 'Heather Grey', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 115, 1),
(386, 'Classic Logo Tee', 'Navy', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 116, 1),
(387, 'Classic Logo Tee', 'Navy', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 116, 1),
(388, 'Classic Logo Tee', 'Navy', 'L', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 116, 1),
(389, 'Classic Logo Tee', 'White', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 117, 1),
(390, 'Classic Logo Tee', 'White', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 117, 1),
(391, 'Crest Heather Tee', 'Grey', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 118, 1),
(392, 'Crest Heather Tee', 'Grey', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 118, 1),
(393, 'Devil Tee', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 119, 1),
(394, 'Devil Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 119, 1),
(395, 'Devil Tee', 'White', 'L', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 119, 1),
(396, 'Embossed Tee', 'Black', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 120, 1),
(397, 'Embossed Tee', 'Black', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 120, 1),
(398, 'Embossed Tee', 'White', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 121, 1),
(399, 'Embossed Tee', 'White', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 121, 1),
(400, 'Fire Panther Baseball', 'Red/Navy', 'S', NULL, 0, '0.00', '239.00', '0.00', NULL, 1, 2, 122, 1),
(401, 'Fire Panther Baseball', 'Red/Navy', 'M', NULL, 0, '0.00', '239.00', '0.00', NULL, 1, 2, 122, 1),
(402, 'Fire Panther Baseball', 'White/Heather Black', 'S', NULL, 0, '0.00', '239.00', '0.00', NULL, 1, 2, 123, 1),
(403, 'Fire Panther Baseball', 'White/Heather Black', 'L', NULL, 0, '0.00', '239.00', '0.00', NULL, 1, 2, 123, 1),
(404, 'Girl Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 124, 1),
(405, 'Girl Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 124, 1),
(406, 'Growl Tee', 'Heather Charcoal', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 125, 1),
(407, 'Growl Tee', 'Heather Charcoal', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 125, 1),
(408, 'Growl Tee', 'Red', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 126, 1),
(409, 'Growl Tee', 'Red', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 126, 1),
(410, 'Growl Tee', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 127, 1),
(411, 'Growl Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 127, 1),
(412, 'Growl Tee', 'White', 'L', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 127, 1),
(413, 'Hands Tee', 'White', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 128, 1),
(414, 'Hands Tee', 'White', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 128, 1),
(415, 'Jona Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 129, 1),
(416, 'Macbeth or Death Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 130, 1),
(417, 'Macbeth or Death Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 130, 1),
(418, 'Macbeth or Death Tee', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 131, 1),
(419, 'Macbeth or Death Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 131, 1),
(420, 'Mr. Lincoln Tee', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 132, 1),
(421, 'Mr. Lincoln Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 132, 1),
(422, 'Old Type Tee', 'Black', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 133, 1),
(423, 'Old Type Tee', 'Black', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 133, 1),
(424, 'Old Type Tee', 'Heather Grey', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 134, 1),
(425, 'Old Type Tee', 'Heather Grey', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 134, 1),
(426, 'Pennant Outline Tee', 'Black', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 135, 1),
(427, 'Pennant Outline Tee', 'Black', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 135, 1),
(428, 'Pennant Outline Tee', 'White', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 136, 1),
(429, 'Pennant Outline Tee', 'White', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 136, 1),
(430, 'Scripts Tee', 'Black', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 137, 1),
(431, 'Scripts Tee', 'Black', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 137, 1),
(432, 'Scripts Tee', 'Grey', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 138, 1),
(433, 'Scripts Tee', 'Grey', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 138, 1),
(434, 'Sketchy Tank Tom DeLonge Speci', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 139, 1),
(435, 'Sketchy Tank Tom DeLonge Speci', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 139, 1),
(436, 'Skull Lord Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 140, 1),
(437, 'Skull Lord Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 140, 1),
(438, 'Skull Lord Tee', 'Black', 'L', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 140, 1),
(439, 'Snarl Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 141, 1),
(440, 'Snarl Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 141, 1),
(441, 'Snarl Tee', 'Navy', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 142, 1),
(442, 'Snarl Tee', 'Navy', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 142, 1),
(443, 'Top hat Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 143, 1),
(444, 'Top hat Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 143, 1),
(445, 'Top hat Tee', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 144, 1),
(446, 'Top hat Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 144, 1),
(447, 'Varsity Tee', 'Black', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 145, 1),
(448, 'Varsity Tee', 'Black', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 145, 1),
(449, 'Varsity Tee', 'Navy', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 146, 1),
(450, 'Varsity Tee', 'Navy', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 146, 1),
(451, 'Varsity Tee', 'White', 'S', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 147, 1),
(452, 'Varsity Tee', 'White', 'M', NULL, 0, '0.00', '199.00', '0.00', NULL, 1, 2, 147, 1),
(453, 'Vegan Logo Tee', 'Black', 'S', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 148, 1),
(454, 'Vegan Logo Tee', 'Black', 'M', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 148, 1),
(455, 'Vegan Logo Tee', 'Black', 'L', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 148, 1),
(456, 'Vegan Logo Tee', 'Royal', 'S', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 149, 1),
(457, 'Vegan Logo Tee', 'Royal', 'M', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 149, 1),
(458, 'Vegan Logo Tee', 'Royal', 'L', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 149, 1),
(459, 'Vegan Logo Tee', 'White', 'S', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 150, 1),
(460, 'Vegan Logo Tee', 'White', 'M', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 150, 1),
(461, 'Vegan Logo Tee', 'White', 'L', NULL, 1, '0.00', '199.00', '0.00', NULL, 1, 2, 150, 1),
(462, 'Vintage Logo Tee', 'Heather Charcoal', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 151, 1),
(463, 'Vintage Logo Tee', 'Heather Charcoal', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 151, 1),
(464, 'Vintage Logo Tee', 'Heather Grey', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 152, 1),
(465, 'Vintage Logo Tee', 'Heather Grey', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 152, 1),
(466, 'Vintage Logo Tee', 'Red', 'S', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 153, 1),
(467, 'Vintage Logo Tee', 'Red', 'M', NULL, 0, '0.00', '195.00', '0.00', NULL, 1, 2, 153, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `orderID` int(11) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `subtotal_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `status` varchar(40) DEFAULT NULL,
  `discountCode` varchar(10) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` varchar(20) DEFAULT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(60) DEFAULT NULL,
  `lastName` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `discountEnd` date NOT NULL,
  `discountCode` varchar(15) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `country` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `videoTitle` varchar(255) DEFAULT NULL,
  `videoID` varchar(11) NOT NULL,
  `thumbLink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `videoTitle`, `videoID`, `thumbLink`) VALUES
(1, 'Vegan Commercial', 'TWbJ8JbDR8w', 'http://img.youtube.com/vi/TWbJ8JbDR8w/1.jpg'),
(2, 'Macbeth Footwear Lifestyle Commercial', 'OTvw8kxjaAk', 'http://img.youtube.com/vi/OTvw8kxjaAk/1.jpg'),
(3, 'MACBETH COMMERCIAL', 'ix5z2hYkMvM', 'http://img.youtube.com/vi/ix5z2hYkMvM/1.jpg'),
(4, 'MACBETH FOOTWEAR "GROCERIES" COMMERCIAL [HD]', 'qkh-7W6c28o', 'http://img.youtube.com/vi/qkh-7W6c28o/1.jpg'),
(5, 'MACBETH FOOTWEAR "GENIUS" COMMERCIAL', 'qM7PS5hcvEs', 'http://img.youtube.com/vi/qM7PS5hcvEs/1.jpg'),
(6, 'MACBETH FOOTWEAR "BRIGHTON" COMMERCIAL', 'o68MFmWwpYU', 'http://img.youtube.com/vi/o68MFmWwpYU/1.jpg'),
(7, 'MACBETH FOOTWEAR "OLD MAN" COMMERCIAL', 'v43qe2kFDYE', 'http://img.youtube.com/vi/v43qe2kFDYE/1.jpg'),
(8, 'Macbeth Presents "Friends These Days"', 'nKebJw91Yq0', 'http://img.youtube.com/vi/nKebJw91Yq0/1.jpg'),
(9, 'Macbeth Footwear X Matt Hensley', '1PUmfOUM36E', 'http://img.youtube.com/vi/1PUmfOUM36E/1.jpg'),
(10, 'Macbeth @ Groezrock 2012 - SCREAM for me Groezrock!!!', 'orm2fRmv81o', 'http://img.youtube.com/vi/orm2fRmv81o/1.jpg'),
(11, 'Macbeth Night Out - Fall 12 Lookbook', 'pOyAx99zkKI', 'http://img.youtube.com/vi/pOyAx99zkKI/1.jpg'),
(12, 'Switchfoot BroAm 2012', 'yzO6-AsStZE', 'http://img.youtube.com/vi/yzO6-AsStZE/1.jpg'),
(13, 'Macbeth presents... Off the Record: David Kennedy', 'l6PcfyUy3Do', 'http://img.youtube.com/vi/l6PcfyUy3Do/1.jpg'),
(14, 'Australia Surf Team', 'ZvG1lbR_rF0', 'http://img.youtube.com/vi/ZvG1lbR_rF0/1.jpg'),
(15, 'Pres Lincoln Reps Macbeth at the Agenda Show', 'hsYeQVGyFXM', 'http://img.youtube.com/vi/hsYeQVGyFXM/1.jpg'),
(16, 'Macbeth presents... Off the Record: Ilan Rubin', 'DLsjCxW45QM', 'http://img.youtube.com/vi/DLsjCxW45QM/1.jpg'),
(17, 'I Killed The Prom Queen x Macbeth Footwear', 'Viup-dK8vp8', 'http://img.youtube.com/vi/Viup-dK8vp8/1.jpg'),
(18, 'Macbeth Malaysia Presents Chris Garcia Inks KL', 't3-VWTzLM9Q', 'http://img.youtube.com/vi/t3-VWTzLM9Q/1.jpg'),
(19, 'Spring Delivery 2013', 'gGXYBVybZCA', 'http://img.youtube.com/vi/gGXYBVybZCA/1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`imageID`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `orderID_index` (`orderID`),
  ADD KEY `order_item_productID_index` (`productID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `imageID_index` (`imageID`),
  ADD KEY `product_categoryID_index` (`categoryID`);

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `userID_index` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;
--
-- AUTO_INCREMENT for table `t_order`
--
ALTER TABLE `t_order`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `t_order` (`orderID`),
  ADD CONSTRAINT `order_item_product_productID_fk` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_3t86xcm7psj5yks5g7bkqk4bp` FOREIGN KEY (`categoryID`) REFERENCES `image` (`imageID`),
  ADD CONSTRAINT `product_category_categoryID_fk` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`),
  ADD CONSTRAINT `product_image_imageID_fk` FOREIGN KEY (`imageID`) REFERENCES `image` (`imageID`);

--
-- Constraints for table `t_order`
--
ALTER TABLE `t_order`
  ADD CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
