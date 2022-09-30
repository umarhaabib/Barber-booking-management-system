-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 09:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barber-booking-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'umarhaabib98@gmail.com', '96e79218965eb72c92a549dd5a330112', '2022-05-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 7, 729411824, '2022-05-12', '19:03:00', 'Test msg', '2022-05-12 18:30:00', 'Your appointment has been book.', 'Accepted', '2022-09-28 10:01:57'),
(2, 7, 767068476, '2022-05-14', '09:00:00', 'fghfshdgfahgrfgh', '2022-05-12 18:30:00', 'Sorry your appointment has been cancelled', 'Rejected', '2022-05-13 06:14:39'),
(4, 10, 931783426, '2022-05-18', '15:40:00', 'NA', '2022-05-15 05:04:13', 'Okay', 'Accepted', '2022-09-28 10:01:57'),
(5, 10, 284544154, '2022-05-18', '15:40:00', 'NA', '2022-05-15 05:04:13', 'okay', 'Accepted', '2022-09-28 10:01:57'),
(6, 10, 494039785, '2022-05-31', '14:47:00', 'NA', '2022-05-15 05:13:24', 'okay', 'Accepted', '2022-09-28 10:01:57'),
(8, 10, 891247645, '2022-05-28', '20:14:00', 'nA', '2022-05-28 08:43:55', 'Your booking is confirmed.', 'Accepted', '2022-09-28 10:01:57'),
(9, 11, 985654240, '2022-05-29', '13:10:00', 'NA', '2022-05-29 07:34:47', 'Your appointment is confirmed', 'Accepted', '2022-09-28 10:01:57'),
(10, 11, 323740744, '2022-09-22', '00:50:00', 's', '2022-09-19 19:47:56', 'Okay', 'Accepted', '2022-09-28 10:01:57'),
(11, 12, 739385002, '2022-09-27', '18:09:00', 'Hair Cut', '2022-09-27 11:03:08', 'Please reach at the salon we are available for you.', 'Accepted', '2022-09-28 10:01:57'),
(12, 12, 797390305, '2022-09-27', '16:59:00', 'Hair cut', '2022-09-27 11:11:20', 'Rejected', 'Rejected', '2022-09-27 18:01:10'),
(13, 12, 927300872, '2022-09-27', '09:09:00', 'Hair cut', '2022-09-27 11:12:24', NULL, NULL, NULL),
(14, 13, 484378591, '2022-09-27', '08:00:00', 'Hair cut', '2022-09-27 11:15:35', 'Sorry for the inconvinince, we are too busy to do this job.', 'Rejected', '2022-09-27 16:46:35'),
(15, 13, 387007754, '2022-09-27', '22:47:00', 'Soluta est non aut ', '2022-09-27 11:18:49', 'okay', 'Accepted', '2022-09-28 10:01:57'),
(16, 13, 111671306, '2022-09-27', '18:00:00', 'Shave', '2022-09-27 17:57:52', 'We are able to attend you', 'Accepted', '2022-09-28 10:01:57'),
(17, 13, 222138795, '2022-09-27', '23:50:00', 'Want hair cut', '2022-09-27 18:50:33', 'Thanks for choosing us', 'Accepted', '2022-09-28 10:01:57'),
(18, 15, 754364028, '2022-09-30', '12:30:00', 'I want a quick hair cut.', '2022-09-27 19:43:14', ' Thanks for choosing us, we are available for you.', 'Accepted', '2022-09-28 10:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Phone`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(5, 'ahmad', 'ali', 9879878798, 'kajal@gmail.com', 'guhgjhg', '2022-05-10 08:43:18', 1),
(6, 'Ali', 'Fraz', 1234567890, 'ak@gmail.com', 'Need booking for marriage', '2022-06-01 01:05:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(4, 7, 4, 138889283, '2022-09-27 20:11:36'),
(5, 7, 9, 138889283, '2022-09-27 19:07:59'),
(6, 7, 16, 138889283, '2022-09-27 17:32:28'),
(7, 8, 3, 555850701, '2022-09-27 17:32:28'),
(8, 8, 6, 555850701, '2022-09-27 19:07:59'),
(9, 8, 9, 555850701, '2022-09-27 20:11:36'),
(10, 8, 11, 555850701, '2022-09-27 20:11:36'),
(13, 10, 1, 330026346, '2022-09-27 17:32:28'),
(14, 10, 2, 330026346, '2022-09-27 20:11:36'),
(15, 11, 2, 379060040, '2022-09-27 17:32:28'),
(16, 11, 5, 379060040, '2022-09-27 17:32:28'),
(17, 11, 6, 379060040, '2022-09-27 17:32:28'),
(18, 11, 12, 379060040, '2022-09-27 17:32:28'),
(19, 11, 3, 460087279, '2022-09-21 19:00:00'),
(20, 1, 12, 215085556, '2022-09-24 14:57:07'),
(21, 1, 16, 215085556, '2022-09-24 14:57:07'),
(22, 13, 10, 351028075, '2022-09-27 17:32:28'),
(23, 13, 11, 351028075, '2022-09-27 17:32:28'),
(24, 13, 12, 351028075, '2022-09-27 17:32:28'),
(25, 13, 16, 351028075, '2022-09-27 17:32:28'),
(26, 13, 12, 535139160, '2022-09-27 19:07:59'),
(27, 13, 18, 535139160, '2022-09-27 19:07:59'),
(28, 15, 2, 982758212, '2022-09-27 20:11:36'),
(29, 15, 3, 982758212, '2022-09-27 20:11:36'),
(30, 15, 9, 982758212, '2022-09-27 20:11:36'),
(31, 15, 10, 982758212, '2022-09-27 20:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '                                Quality and cleanliness are our primary concerns. Our Salon offers top-notch services and is well-equipped with cutting-edge technology. With modern services in Skin, Hair, and Body Shaping, our staff skill and experience will give you a wonderful experience that will leave you feeling unwinded and stress-free. In addition to normal bleachings and facials, the salon specialties include several hairstyles, bridal and movie makeup, as well as various facials and fashion hair colorings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '        <b>        890,Sector 62, Gyan Sarovar,Kuwait</b>', 'Ahmedxelite@gmail.com', 123456789, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(1, 'BANG TRIM', 'If you are in between hair appointments and your bangs are growing out, schedule a complimentary bang trim. Free service for existing clients, $10 for new clients to the salon. ', 10, '18e2999891374a475d0687ca9f989d831664300831.jpg', '2022-05-24 22:37:38'),
(2, 'NECK TRIM', 'Maintain your haircut with a free neck trim to remove extra hair from the area around your neck and ears. Existing customers receive services for free, while new customers pay $100', 100, '032b2cc936860b03048302d991c3498f1664301008.jpg', '2022-09-27 17:44:37'),
(3, 'TONER', 'among colour services To remove brassiness or add richness to your highlighted hair, make a toner appointment. Before you leave the house, you will have your hair styled and shampooed.', 1000, '26b5eef28bf09b5a3a1a1827c77a524d1664301098.jpg', '2022-09-27 17:44:37'),
(4, 'Deluxe Menicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 500, 'fe5df232cafa4c4e0f1a0294418e56601664358824.jpg', '2022-09-27 17:44:37'),
(5, 'Deluxe Pedicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 600, 'afadf1ddb224aef8a213e08e5cd728c01664358857.jpg', '2022-09-27 17:44:37'),
(18, 'MEN HAIRCUT', 'Prior to every haircut, a thorough consultation and hair analysis are conducted. This is followed by a beautiful shampoo and calming scalp massage. Following your haircut, we style your hair and offer advice on at-home hair maintenance.', 300, '032b2cc936860b03048302d991c3498f1664300677.jpg', '2022-09-27 17:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblslots`
--

CREATE TABLE `tblslots` (
  `id` int(50) NOT NULL,
  `total_slots` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblslots`
--

INSERT INTO `tblslots` (`id`, `total_slots`) VALUES
(1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(7, 'Tina', 'Khan', 9789797987, 'tina@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-09-27 19:25:16'),
(8, 'Hima', 'Sharma', 8979798789, 'hima@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-09-27 19:25:16'),
(11, 'John', 'Doe', 1452632541, 'johndoe@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-09-27 19:25:16'),
(13, 'Umar ali', 'Habib', 3088684021, 'umarhaabib98@gmail.com', '96e79218965eb72c92a549dd5a330112', '2022-09-27 11:15:01'),
(14, 'Howard', 'Vargas', 261452632541, 'befefu@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-09-27 18:48:43'),
(15, 'Ahmad', 'Imran', 123456789, 'Ahmedxelite@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', '2022-09-27 19:25:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblslots`
--
ALTER TABLE `tblslots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblslots`
--
ALTER TABLE `tblslots`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
