-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2024 at 08:22 AM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `Admin_Id` int(11) NOT NULL,
  `Admin_Name` varchar(20) NOT NULL,
  `Admin_Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`Admin_Id`, `Admin_Name`, `Admin_Password`) VALUES
(3, 'admin', 'admin'),
(4, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_tbl`
--

CREATE TABLE `complaint_tbl` (
  `Complaint_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Station_Name` varchar(50) NOT NULL,
  `Complaint_Type` varchar(20) NOT NULL,
  `Complaint_Desc` varchar(100) NOT NULL,
  `Complaint_Date` date NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint_tbl`
--

INSERT INTO `complaint_tbl` (`Complaint_Id`, `User_Id`, `Station_Name`, `Complaint_Type`, `Complaint_Desc`, `Complaint_Date`, `Status`) VALUES
(4, 1, 'Admin', 'Robery', 'gdfssdfg', '2024-03-18', 'Submited'),
(5, 1, 'Admin', 'Robery', 'kjbvh', '2024-03-18', 'Submited');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tbl`
--

CREATE TABLE `feedback_tbl` (
  `Feedback_Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Feedback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `missingperson_tbl`
--

CREATE TABLE `missingperson_tbl` (
  `Person_Id` int(11) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Middle_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Birth_Date` date NOT NULL,
  `Weight` int(11) NOT NULL,
  `Height` float NOT NULL,
  `Contact_Person` varchar(20) NOT NULL,
  `Contact_Address` varchar(100) NOT NULL,
  `Contact_City` varchar(20) NOT NULL,
  `Contact_Mobile` int(11) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Station_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `missingperson_tbl`
--

INSERT INTO `missingperson_tbl` (`Person_Id`, `First_Name`, `Middle_Name`, `Last_Name`, `Gender`, `Birth_Date`, `Weight`, `Height`, `Contact_Person`, `Contact_Address`, `Contact_City`, `Contact_Mobile`, `Photo`, `Station_Name`) VALUES
(1, 'admin', 'admin', 'admin', 'Male', '2024-03-06', 50, 5, '1231231233', 'asdf', 'Mysore', 123123123, 'fdsa', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mostwanted_tbl`
--

CREATE TABLE `mostwanted_tbl` (
  `Wanted_Id` int(11) NOT NULL,
  `Wanted_Name` varchar(20) NOT NULL,
  `Wanted_Location` varchar(20) NOT NULL,
  `Wanted_Image` varchar(100) NOT NULL,
  `Wanted_Crime` varchar(100) NOT NULL,
  `Wanted_Desc` varchar(200) NOT NULL,
  `Station_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mostwanted_tbl`
--

INSERT INTO `mostwanted_tbl` (`Wanted_Id`, `Wanted_Name`, `Wanted_Location`, `Wanted_Image`, `Wanted_Crime`, `Wanted_Desc`, `Station_Name`) VALUES
(12, 'admin', 'mysore', 'fsad', 'fasd', 'asdf', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `news_tbl`
--

CREATE TABLE `news_tbl` (
  `News_Id` int(11) NOT NULL,
  `News_Title` varchar(200) NOT NULL,
  `News_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news_tbl`
--

INSERT INTO `news_tbl` (`News_Id`, `News_Title`, `News_Date`) VALUES
(5, 'gfdhhgfhgfd', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `policestation_tbl`
--

CREATE TABLE `policestation_tbl` (
  `Station_Id` int(11) NOT NULL,
  `Station_Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `policestation_tbl`
--

INSERT INTO `policestation_tbl` (`Station_Id`, `Station_Name`, `Address`, `City`, `Email`, `Mobile`, `UserName`, `Password`) VALUES
(6, 'Admin', 'Admin', 'Kolkata', 'Admin@gmail.com', 2147483647, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tips_tbl`
--

CREATE TABLE `tips_tbl` (
  `Tips_Id` int(11) NOT NULL,
  `Tips_Detail` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tips_tbl`
--

INSERT INTO `tips_tbl` (`Tips_Id`, `Tips_Detail`) VALUES
(3, 'Call on 100 in case of Emergency.'),
(4, 'Fill Free to contact Police.'),
(5, 'hgfdghf');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `User_Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Station_Name` varchar(20) NOT NULL,
  `VerificationProof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`User_Id`, `Name`, `Address`, `City`, `Mobile`, `Email`, `Gender`, `BirthDate`, `UserName`, `Password`, `Station_Name`, `VerificationProof`) VALUES
(1, 'Admin', 'Admin', 'aDMIN', 1234567890, 'admin@gmail.com', 'Male', '2024-03-12', 'admin', 'admin', 'admin', 'admin'),
(10, 'Admin', 'Admin', 'aDMIN', 1234567890, 'admin@gmail.com', 'Male', '2024-03-12', 'admin', 'admin', 'admin', 'admin'),
(11, 'asdf', 'safd', 'Kolkata', 1231231233, 'admin@gmail.com', 'Male', '0000-00-00', 'admin', 'admin', 'Admin', 'DownEdit.zip'),
(12, 'admina', 'mysore', 'Kolkata', 1231231223, 'admin@gmail.com', 'Male', '0000-00-00', '1', 'janobe', 'Admin', 'Logout.php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`Admin_Id`);

--
-- Indexes for table `complaint_tbl`
--
ALTER TABLE `complaint_tbl`
  ADD PRIMARY KEY (`Complaint_Id`);

--
-- Indexes for table `feedback_tbl`
--
ALTER TABLE `feedback_tbl`
  ADD PRIMARY KEY (`Feedback_Id`);

--
-- Indexes for table `missingperson_tbl`
--
ALTER TABLE `missingperson_tbl`
  ADD PRIMARY KEY (`Person_Id`);

--
-- Indexes for table `mostwanted_tbl`
--
ALTER TABLE `mostwanted_tbl`
  ADD PRIMARY KEY (`Wanted_Id`);

--
-- Indexes for table `news_tbl`
--
ALTER TABLE `news_tbl`
  ADD PRIMARY KEY (`News_Id`);

--
-- Indexes for table `policestation_tbl`
--
ALTER TABLE `policestation_tbl`
  ADD PRIMARY KEY (`Station_Id`);

--
-- Indexes for table `tips_tbl`
--
ALTER TABLE `tips_tbl`
  ADD PRIMARY KEY (`Tips_Id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `Admin_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complaint_tbl`
--
ALTER TABLE `complaint_tbl`
  MODIFY `Complaint_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback_tbl`
--
ALTER TABLE `feedback_tbl`
  MODIFY `Feedback_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `missingperson_tbl`
--
ALTER TABLE `missingperson_tbl`
  MODIFY `Person_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mostwanted_tbl`
--
ALTER TABLE `mostwanted_tbl`
  MODIFY `Wanted_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `news_tbl`
--
ALTER TABLE `news_tbl`
  MODIFY `News_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `policestation_tbl`
--
ALTER TABLE `policestation_tbl`
  MODIFY `Station_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tips_tbl`
--
ALTER TABLE `tips_tbl`
  MODIFY `Tips_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
