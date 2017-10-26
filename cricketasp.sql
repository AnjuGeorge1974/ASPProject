-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2017 at 01:15 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricketasp`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `PlayerId` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `MiddleName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Role` varchar(20) NOT NULL,
  `Team` varchar(20) NOT NULL,
  `CurrDateTime` datetime NOT NULL,
  `User` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`PlayerId`, `FirstName`, `MiddleName`, `LastName`, `EmailId`, `Phone`, `Address`, `Role`, `Team`, `CurrDateTime`, `User`, `Password`) VALUES
(1, 'Anju', NULL, 'George', 'anjusunilg@gmail.com', '4373330997', 'fagsafgs gadga gahdvfga', 'Bowler', 'Royal Challengers', '2017-10-19 19:37:38', 'anjusunilg@gmail.com', 'TestMe123'),
(2, 'Alan', 'George', 'Verghese', 'Alan@hotmail.com', '7767231931', 'hdfghs sdhs shgdghs', 'Bowler', 'Kings Eleven', '2017-10-25 18:45:42', 'anjusunilg@gmail.com', 'Alan123'),
(4, 'Sunil', '', 'George', 'sungeo@gmail.com', '7489274298', 'gvsdfdgha', 'AllRounder', 'Royal Challengers', '2017-10-23 17:51:27', '', 'Sunil123'),
(5, 'Aiden', 'Bobby', 'Varghese', 'Aiden@hotmail.com', '234556', 'gjhd ahdga', 'AllRounder', 'Punjab Tigers', '2017-10-23 18:02:12', '', 'hgsag'),
(6, 'Rayan', 'Edited', 'Bobby', 'rayan@hjadk.com', '2345567', 'adsgha aghda', 'AllRounder', 'Pune Warriors', '2017-10-25 21:12:27', 'anjusunilg@gmail.com', 'Rayan123'),
(7, 'Aaron', '', 'Mathews', 'aaron@jhsj.com', '61736173617', 'hzhd ahsdvhja bavd', 'Bowler', 'Royal Challengers', '2017-10-25 19:58:43', 'anjusunilg@gmail.com', 'hgahsga'),
(8, 'Saju', '', 'Thomas', 'sajuthomas@gmail.com', '122334445', 'vashg gahda ahgdv', 'Batsman', 'Punjab Tigers', '2017-10-23 18:33:04', '', 'saju123'),
(9, 'Sajan', 'T', 'Thachanalil', 'gadada@bhd.com', '1234556', 'vgadgas asvd', 'Batsman', 'Pune Warriors', '2017-10-25 20:10:03', 'anjusunilg@gmail.com', 'fghfs'),
(11, 'Sanu', '', 'Abraham', 'sanu@gmail.com', '748483212', 'hghjs ghdha', 'Bowler', 'Punjab Tigers', '2017-10-23 18:46:29', '', 'fhgfsd'),
(13, 'Sharon', '', 'John', 'gasdg', '1232342342', 'cfasdfagfa', 'Wicket Keeper', 'Kings Eleven', '2017-10-23 19:49:25', '', 'ghgah'),
(15, 'Rohit', '', 'Mathew', 'rohit@gmail.com', '1223344', 'gdh hbhja hfsjh', 'Batsman', 'Punjab Tigers', '2017-10-25 10:25:08', '', 'Rohit451'),
(16, 'Manu', '', 'Samuel', 'Manu123@nb.vom', '787284784', 'ghshfghdsg hgsfhs', 'Bowler', 'Punjab Tigers', '2017-10-25 10:27:39', 'anjusunilg@gmail.com', 'Manu123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`PlayerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `PlayerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
