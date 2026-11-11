-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2025 at 11:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9797789798, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-05-25 12:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblbp`
--

CREATE TABLE `tblbp` (
  `ID` int(10) NOT NULL,
  `MemberID` int(5) DEFAULT NULL,
  `SYS` int(5) DEFAULT NULL,
  `DIA` int(10) DEFAULT NULL,
  `Pulses` int(10) DEFAULT NULL,
  `bpDate` timestamp NULL DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbp`
--

INSERT INTO `tblbp` (`ID`, `MemberID`, `SYS`, `DIA`, `Pulses`, `bpDate`, `EnterDate`) VALUES
(1, 15, 80, 120, 90, '2025-03-07 18:30:00', '2025-03-10 09:01:24'),
(2, 15, 95, 130, 101, '2025-03-09 23:15:00', '2025-03-10 09:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblmember`
--

CREATE TABLE `tblmember` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Age` int(5) DEFAULT NULL,
  `Weight` varchar(50) DEFAULT NULL,
  `Relation` varchar(45) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmember`
--

INSERT INTO `tblmember` (`ID`, `UserID`, `FullName`, `Gender`, `Age`, `Weight`, `Relation`, `CreationDate`) VALUES
(1, 1, 'Gayatri Devi', 'Female', 62, '72 Kg', 'Mother', '2025-03-05 05:20:44'),
(2, 1, 'Rahul', 'Male', 45, '75 Kg', 'Brother', '2025-03-05 05:20:44'),
(3, 1, 'Rakesh', 'Male', 46, '82 Kg', 'Other', '2025-03-05 05:20:44'),
(4, 1, 'Geetanjli', 'Female', 45, '55 Kg', 'Other', '2025-03-05 05:20:44'),
(5, 2, 'Prithvi', 'Male', 12, '48 Kg', 'Son', '2025-03-05 05:20:44'),
(6, 2, 'Maanvi', 'Female', 30, '68 Kg', 'Wife', '2025-03-05 05:20:44'),
(9, 2, 'Kesari', 'Male', 15, '45 kg', 'Brother', '2025-03-05 05:20:44'),
(10, 3, 'Ujjain', 'Male', 56, '89 Kg', 'Other', '2025-03-05 05:20:44'),
(11, 3, 'Meenakshi', 'Female', 91, '48 kg', 'Other', '2025-03-05 05:20:44'),
(12, 3, 'Kailash', 'Female', 89, '80 Kg', 'Other', '2025-03-05 05:20:44'),
(13, 3, 'Koel', 'Female', 20, '52 kg', 'Sister', '2025-03-05 05:20:44'),
(14, 6, 'ABC', 'Male', 25, '175', 'Other', '2025-03-05 05:20:44'),
(15, 7, 'Anuj Kumar', 'Male', 28, '76', 'Brother', '2025-03-05 05:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblrange`
--

CREATE TABLE `tblrange` (
  `ID` int(10) NOT NULL,
  `TestName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrange`
--

INSERT INTO `tblrange` (`ID`, `TestName`, `Description`, `CreationDate`) VALUES
(1, 'Blood Pressure', '<b><font color=\"#00cccc\">SYS/DIA</font></b><div><ul><li>&nbsp;90/60 or less- <b><font color=\"#ff0000\">Low BP</font></b></li><li>&nbsp;&gt;90/60 and &lt;120/80- <b><font color=\"#66ff00\">Normal BP</font></b></li><li>&nbsp;&gt;120/80 and &lt;140/90- <b><font color=\"#ff9900\">Little High BP</font></b></li><li>&nbsp;140/90&gt;- <b><font color=\"#ff0000\">High BP</font></b></li></ul></div><div><div><br></div></div>', '2020-05-28 05:33:49'),
(2, 'Blood Sugar', '<font color=\"#00cc99\"><b>Fasting Blood Sugar</b>&nbsp;</font><div><ul><li>&nbsp;70-100 mg/dl- <b style=\"\"><font color=\"#33cc00\">Normal</font></b></li><li>&nbsp;101-125 mg/dl - <font color=\"#ff9900\"><b>Prediabetes</b></font></li><li>&nbsp;125 mg/dl and above - <font color=\"#ff3300\"><b>Diabetes</b>&nbsp;</font></li></ul><div><b><font color=\"#00cc99\">&nbsp;Post Meal Blood Sugar&nbsp;</font></b></div><div><ul><li>70-140 mg/dl - <font color=\"#33cc00\"><b>Normal</b>&nbsp;</font></li><li>141-200 mg/dl -<b> <font color=\"#ff9900\">Prediabetes</font>&nbsp;</b></li><li>200 mg/dl and above - <b><font color=\"#ff3300\">Diabetes</font></b></li></ul></div></div>', '2020-05-28 05:47:23'),
(3, 'Body Temparature', '<b>Body Temperature&nbsp;</b><div>&nbsp;98.6°F-97 °F -<font color=\"#339900\"> <b>Normal Temp</b>&nbsp;</font></div><div>&nbsp;&gt; 98.6°F -<b><font color=\"#ff0000\">High Temp</font></b></div>', '2020-05-28 05:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblsugar`
--

CREATE TABLE `tblsugar` (
  `ID` int(10) NOT NULL,
  `MemberID` int(5) DEFAULT NULL,
  `Typeoftest` varchar(50) DEFAULT NULL,
  `BloodSugar` int(10) DEFAULT NULL,
  `sugarDate` timestamp NULL DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsugar`
--

INSERT INTO `tblsugar` (`ID`, `MemberID`, `Typeoftest`, `BloodSugar`, `sugarDate`, `EnterDate`) VALUES
(1, 15, 'PPBS', 155, '2025-03-09 12:20:00', '2025-03-10 09:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbltemp`
--

CREATE TABLE `tbltemp` (
  `ID` int(10) NOT NULL,
  `MemberID` int(5) DEFAULT NULL,
  `BodyTemparture` int(50) DEFAULT NULL,
  `btDate` timestamp NULL DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltemp`
--

INSERT INTO `tbltemp` (`ID`, `MemberID`, `BodyTemparture`, `btDate`, `EnterDate`) VALUES
(3, 15, 103, '2025-03-08 10:03:00', '2025-03-10 10:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Test', 9797879879, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-03-01 12:51:22'),
(2, 'Kiran Maheswari', 9747987978, 'kiran@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-03-01 12:51:22'),
(5, 'garauv', 9747987978, 'gar@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-03-01 12:51:22'),
(6, 'Anuj kumar', 1234567890, 'anujk@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2025-03-01 12:51:22'),
(7, 'Abc', 1234567899, 'test1@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2025-03-01 12:51:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbp`
--
ALTER TABLE `tblbp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `tblmember`
--
ALTER TABLE `tblmember`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tblrange`
--
ALTER TABLE `tblrange`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsugar`
--
ALTER TABLE `tblsugar`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `tbltemp`
--
ALTER TABLE `tbltemp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbp`
--
ALTER TABLE `tblbp`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmember`
--
ALTER TABLE `tblmember`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblrange`
--
ALTER TABLE `tblrange`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsugar`
--
ALTER TABLE `tblsugar`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltemp`
--
ALTER TABLE `tbltemp`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
