-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 11:19 AM
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
-- Database: `db_iams`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `studentID` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `supEmail` varchar(50) NOT NULL,
  `ubSupEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coordinator`
--

CREATE TABLE `coordinator` (
  `coordinatorEmail` varchar(50) NOT NULL,
  `coordinatorPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinator`
--

INSERT INTO `coordinator` (`coordinatorEmail`, `coordinatorPassword`) VALUES
('favourwilliams@gmail.com', '$2y$10$FOSYGwckGVnCz9g2RxsbRO5yPyCwlgLxrtl6wjUCWtVB6Sjx4gpFK');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `student_id` varchar(9) NOT NULL,
  `organisation_id` int(9) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`student_id`, `organisation_id`) VALUES
('202009722', 000000012),
('202100001', 000000012),
('202100688', 000000007),
('202104126', 000000006),
('202104166', 000000005),
('202104176', 000000012),
('202105170', 000000006),
('202109299', 000000007),
('202109666', 000000012);

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `orgId` int(9) UNSIGNED ZEROFILL NOT NULL,
  `orgName` varchar(50) NOT NULL,
  `supervisorName` varchar(50) NOT NULL,
  `supervisorEmail` varchar(50) NOT NULL,
  `orgEmail` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`orgId`, `orgName`, `supervisorName`, `supervisorEmail`, `orgEmail`, `address`, `password`, `phoneNumber`, `location`) VALUES
(000000004, 'mascom', 'Bobby Bo', 'bobbybo@gmail.com', 'mascom@gmail.com', 'Main Mall, PO BOX 302, Gaborone', '??Qc?cc(CdW~u[', '7463733', 'FrancisTown'),
(000000005, 'mascom', 'Bobby Bo', 'bobbybo@gmail.com', 'mascom@gmail.com', 'Main Mall, PO BOX 302, Gaborone', '<??H?|?????*.E??', '78072443', 'FrancisTown'),
(000000006, 'mascom', 'Bobby Bosdfd', 'bobbybsso@gmail.com', 'mascom@gmail.com', 'Main Mall, PO BOX 302, Gaborone', '??(?A%?.jk>s??w', '7463732', 'Gaborone'),
(000000007, 'Orange', 'Hannah', 'hannahjohnson@gmail.com', 'orange@gmail.com', 'Main Mall, PO BOX 302, Lobatse', '$2y$10$Y4FAs6u9F2g2LcrLTMsG.eQ8eWjO6vnd75Qxs8PFNeO9Ep4gxdRim', '78072455', 'Lobatse'),
(000000008, 'sdsssds', 'sfsfddf', 'bobbeeeeeybo@gmail', 'meeeeeeeeeascom@gmail.com', 'Main Mall, PO BOX 302, Gaborone', '$2y$10$U.uEldakzC/UUkZfxby6UuKZEKS.3D8ELGGVMssFPGbkMfoKVneBq', '78072400', 'Other'),
(000000009, 'dddddddddddddd', 'ddddddddddddddd', 'bobbybddddddo@gmail.com', 'bidddddddddust@gmail.com', 'Main Mall, PO BOX 302, Gaborone', '$2y$10$HoUEm6MVHnsMF4KJ7e2u0.4M/MaPPmb1zrH1Iw2cUl3szDQGS9yOK', '7465728299', 'Lobatse'),
(000000010, 'Debswana', 'Charlie', 'charlieg@gmail.com', 'debs@gmail.com', 'APJ, PO BOX 3212, Gaborone', '$2y$10$5rhrGUN5bnt4wDIGCochretrkmNpsTICizobMNL0hHWn7GL/tbxLS', '78072467', 'Gaborone'),
(000000011, 'June', 'Connor Heel', 'connorheel@gmail.com', 'june@gmail.com', 'Main Mall, PO BOX 302, Pluto', '$2y$10$szPhjI5L13W6kXBCWpTtnuDG9OnI8ZXyehF9p2w8.eCryImKMRA1u', '78072422', 'FrancisTown'),
(000000012, 'Opal', 'Carlos Tevez', 'ctevez@gmail.com', 'opal@gmail.com', 'APJ, PO BOX 3212, FT', '$2y$10$XqK7xZws9vjR7uLNeR9Ho./zK0ekkxhmjaI3Gfooq9TmKlVhudh6W', '78072313', 'Lobatse'),
(000000013, 'Pearl', 'Joey Edinson', 'jedinson@gmail.com', 'pearl@gmail.com', 'Main Mall, PO BOX 302, Mars', '$2y$10$tcQnZ/U2HhvIUkQQz0HNYePqXgNXnnXWkx/coN7VZ5x7cKW35O.uW', '78072441', 'FrancisTown');

-- --------------------------------------------------------

--
-- Table structure for table `organisation_preferences`
--

CREATE TABLE `organisation_preferences` (
  `orgId` int(9) UNSIGNED ZEROFILL NOT NULL,
  `typeOfWork` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organisation_preferences`
--

INSERT INTO `organisation_preferences` (`orgId`, `typeOfWork`) VALUES
(000000004, 'Back End Developer'),
(000000005, 'Full Stack Developer'),
(000000006, 'Back End Developer'),
(000000007, 'Back End Developer'),
(000000012, 'Data Analyst'),
(000000013, 'Data Analyst');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `studentName` varchar(50) NOT NULL,
  `studentID` varchar(9) NOT NULL,
  `orgName` varchar(50) NOT NULL,
  `supervisorName` varchar(50) NOT NULL,
  `supervisorEmail` varchar(50) NOT NULL,
  `attendance` varchar(50) NOT NULL,
  `communicationSkills` varchar(50) NOT NULL,
  `technicalSkills` varchar(70) NOT NULL,
  `problemSolvingSkills` varchar(50) NOT NULL,
  `contribution` varchar(50) NOT NULL,
  `professionalism` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `comments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`studentName`, `studentID`, `orgName`, `supervisorName`, `supervisorEmail`, `attendance`, `communicationSkills`, `technicalSkills`, `problemSolvingSkills`, `contribution`, `professionalism`, `grade`, `comments`) VALUES
('bob carlos', '202105633', 'mascom', 'Bobby Bo', 'bobbybo@gmail.com', '2', '3', '1', '3', '4', '3', '3', 'Good, can do better.'),
('hbh', '202195676', 'mascom', 'Bobby Bo', 'bobbybo@gmail.com', '3', '2', '4', '4', '', '3', '3', 'rahhhhhh');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` varchar(9) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(70) NOT NULL,
  `logbooks_due` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `firstName`, `lastName`, `email`, `password`, `age`, `logbooks_due`) VALUES
('202009722', 'Connor', 'Hearl', '202009722@ub.ac.bw', '$2y$10$d3F1xBrfgWCQtHGJCezdi.lJONg74s1GStNgBLB8.TRvX82MIkamW', 22, 1),
('202100001', 'Garry', 'Bale', '202100001@ub.ac.bw', '$2y$10$BbSnB0uhC5ukfV/S/9r9C.NN73EI6b9T/kfXVIRv.ERYPysVnXPfu', 24, 0),
('202100688', 'Suw', 'Seee', '202100688@ub.ac.bw', '$2y$10$cOwgyfGX6NhVn4KDqq1Pf.t6n.kejWyqyt2QRhSiAoleaumU0OnYi', 25, 1),
('202100699', 'Sarah', 'Banda', '202100699@ub.ac.bw', '$2y$10$Kr/KuzU1ZiIKnvFymWk/cuo.ooVltMWfL.9Mo.65g08sHT444YV3m', 23, 1),
('202102163', 'Favour', 'Williams', '202102163@ub.ac.bw', '$2y$10$VCPTKyL4EyQhTHfBOM4OqeKVz0Jryvkg6IU0NcQgKlxr3Sux4zbQK', 19, 0),
('202103388', 'Sarah', 'Tevez', '202103388@ub.ac.bw', '$2y$10$skr3ZcqsEKkkWXETtgIZNOIkANaZtf9/6grxhopElpTSYWUbFfoaG', 21, 1),
('202104126', 'Joe', 'Carlosdfdsfs', '202104126@ub.ac.bw', 'gojo123', 24, 1),
('202104166', 'Bobdaf', 'Bandaxzcsdfs', '202104166@ub.ac.bw', '????????4?', 22, 1),
('202104176', 'Bob', 'Banda', '202104176@ub.ac.bw', '7ý???{?ֿ??I?\n', 22, 1),
('202104196', 'Bobby', 'George', '202104196@ub.ac.bw', '????<W?A?:???g', 22, 1),
('202105170', 'fffffff', 'fffffffffffff', '202105170@ub.ac.bw', 'fffffffffffffffffff', 22, 1),
('202106666', 'Joe', 'Carlo', '202106666@ub.ac.bw', 'p??!??????W^=?', 23, 1),
('202106788', 'Sarah', 'Smith', '202106788@ub.ac.bw', '$2y$10$W1dl8jbzf4bJqDlBzex8JudFjh2lpPUhSVLtnFSo5E4ADinjt9A7q', 25, 1),
('202109299', 'Mak', 'Man', '202109299@ub.ac.bw', '$2y$10$WD/TFY6XM55FmnWCrx4.XeoeBxTN91Qzmx83HUg/BqVTFbKA11ZXK', 25, 1),
('202109666', 'Gojo', 'Hp', '202109666@ub.ac.bw', '$2y$10$gHI/9EqvtI.6gNYqnyqHU.u0bdeNxx/FIGaaoz1fFu1fkxDgtqai6', 26, 1),
('202109976', 'Harry', 'Harold', '202109976@ub.ac.bw', 'gyu343', 25, 1),
('202109999', 'Carly', 'Bobson', '202109999@ub.ac.bw', '$2y$10$uSAho2jPvILJeT4ppDyPjeewpfp6Cmp4cHUHnkyHrJmPbwlQVQDq2', 26, 1),
('202194176', 'Sarah', 'Banda', '202194176@ub.ac.bw', '$2y$10$q2ckTTwTSwao3jAoEqYwKOo45oGr3/bmB3tViZX3FCtYGh4eg/1l2', 22, 1),
('202207777', 'Howard', 'Webb', '202207777@ub.ac.bw', '$2y$10$dGfsNgoo39/BVGnCPXywHuOP/PxzqB2zdElJzv/YmeVPSLFlAAbdi', 24, 1),
('202306787', 'Joe', 'fsfdsd', '202306787@ub.ac.bw', '?8?\0H?R/??7???nG', 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_preferences`
--

CREATE TABLE `student_preferences` (
  `studentID` varchar(9) NOT NULL,
  `location` varchar(50) NOT NULL,
  `typeOfWork` varchar(50) NOT NULL,
  `bio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_preferences`
--

INSERT INTO `student_preferences` (`studentID`, `location`, `typeOfWork`, `bio`) VALUES
('202009722', 'Lobatse', 'Data Analyst', 'help'),
('202100001', 'Lobatse', 'Data Analyst', 'help'),
('202100688', 'Lobatse', 'Back End Developer', 'need'),
('202102163', 'Lobatse', 'Data Analyst', 'I'),
('202104126', 'Gaborone', 'Back End Developer', 'need a job'),
('202104166', 'FrancisTown', 'Full Stack Developer', 'Unemployed'),
('202104176', 'Lobatse', 'Data Analyst', 'Help'),
('202104196', 'Gaborone', 'Full Stack Developer', 'Help me'),
('202105170', 'Gaborone', 'Back End Developer', 'Help me please'),
('202109299', 'Lobatse', 'Back End Developer', 'help'),
('202109666', 'Lobatse', 'Data Analyst', 'help');

-- --------------------------------------------------------

--
-- Table structure for table `ub_supervisor`
--

CREATE TABLE `ub_supervisor` (
  `ubSup_email` varchar(50) NOT NULL,
  `ubSup_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ub_supervisor`
--

INSERT INTO `ub_supervisor` (`ubSup_email`, `ubSup_password`) VALUES
('gordonjacobs@gmail.com', '$2y$10$kE402TtZi6ZEJMWbVhKzses2TivHEKUBngeLY5iKEiH9U4AoUkqeW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinator`
--
ALTER TABLE `coordinator`
  ADD PRIMARY KEY (`coordinatorEmail`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`student_id`,`organisation_id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`orgId`);

--
-- Indexes for table `organisation_preferences`
--
ALTER TABLE `organisation_preferences`
  ADD PRIMARY KEY (`orgId`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `student_preferences`
--
ALTER TABLE `student_preferences`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `ub_supervisor`
--
ALTER TABLE `ub_supervisor`
  ADD PRIMARY KEY (`ubSup_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
  MODIFY `orgId` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
