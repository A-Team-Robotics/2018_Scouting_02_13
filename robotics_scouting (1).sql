-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2018 at 11:19 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robotics_scouting`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_info`
--

CREATE TABLE `auto_info` (
  `id` int(12) NOT NULL,
  `teamNumber` int(12) NOT NULL,
  `deliverCube` enum('Yes','No','','') NOT NULL,
  `hitScale` enum('Yes','No','','') NOT NULL,
  `hitSwitch` enum('Yes','No','','') NOT NULL,
  `crossBaseline` enum('Yes','No','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto_info`
--

INSERT INTO `auto_info` (`id`, `teamNumber`, `deliverCube`, `hitScale`, `hitSwitch`, `crossBaseline`) VALUES
(1, 6544, 'Yes', 'Yes', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `robot_info`
--

CREATE TABLE `robot_info` (
  `id` int(12) NOT NULL,
  `teamNumber` int(12) NOT NULL,
  `size` enum('Small','Medium','Large','') NOT NULL,
  `speed` enum('Really_Slow','Slow','Fast','Really_Fast') NOT NULL,
  `strength` enum('Weak/Brittle','Functional','Tougher','Strong/Durable') NOT NULL,
  `strategy` enum('Offense','Defense','Both_Offense_And_Defense','') NOT NULL,
  `numCubes` int(12) NOT NULL,
  `scale` enum('Yes','No','','') NOT NULL,
  `highScale` enum('Yes','No','','') NOT NULL,
  `switch` enum('Yes','No','','') NOT NULL,
  `specialty` enum('Collecting_Cubes','Defense','Climbing','Autonomous') NOT NULL,
  `climb` enum('Yes','No','','') NOT NULL,
  `multiClimb` enum('Yes','No','','') NOT NULL,
  `extra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_info`
--

CREATE TABLE `team_info` (
  `id` int(12) NOT NULL,
  `teamName` varchar(255) NOT NULL,
  `teamNumber` int(12) NOT NULL,
  `teamSchoolName` varchar(255) NOT NULL,
  `teamEmail` varchar(255) NOT NULL,
  `teamAge` int(12) NOT NULL,
  `teamLocation` varchar(255) NOT NULL,
  `teamPoints` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_info`
--

INSERT INTO `team_info` (`id`, `teamName`, `teamNumber`, `teamSchoolName`, `teamEmail`, `teamAge`, `teamLocation`, `teamPoints`) VALUES
(1, 'A-Team Robotics', 6544, 'General Amherst High School', '6544@a-teamrobotics.com', 2, 'Amherstburg', 293);

-- --------------------------------------------------------

--
-- Table structure for table `team_points`
--

CREATE TABLE `team_points` (
  `id` int(12) NOT NULL,
  `teamNumber` int(12) NOT NULL,
  `size` enum('Small','Medium','Large','') NOT NULL,
  `strategy` enum('Offense','Defense','Both_Offense_And_Defense','') NOT NULL,
  `specialty` enum('Collecting_Cubes','Defense','Climbing','Autonomous') NOT NULL,
  `deliverCube` int(12) NOT NULL,
  `hitScale` int(12) NOT NULL,
  `hitSwitch` int(12) NOT NULL,
  `crossBaseline` int(12) NOT NULL,
  `speed` int(12) NOT NULL,
  `strength` int(12) NOT NULL,
  `numCubes` int(12) NOT NULL,
  `scale` int(12) NOT NULL,
  `highScale` int(12) NOT NULL,
  `switch` int(12) NOT NULL,
  `climb` int(12) NOT NULL,
  `multiClimb` int(12) NOT NULL,
  `total` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_points`
--

INSERT INTO `team_points` (`id`, `teamNumber`, `size`, `strategy`, `specialty`, `deliverCube`, `hitScale`, `hitSwitch`, `crossBaseline`, `speed`, `strength`, `numCubes`, `scale`, `highScale`, `switch`, `climb`, `multiClimb`, `total`) VALUES
(1, 6544, 'Large', 'Both_Offense_And_Defense', 'Autonomous', 3, 5, 3, 1, 3, 3, 2048, 3, 4, 2, 4, 6, 2085);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_info`
--
ALTER TABLE `auto_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `robot_info`
--
ALTER TABLE `robot_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_info`
--
ALTER TABLE `team_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_points`
--
ALTER TABLE `team_points`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_info`
--
ALTER TABLE `auto_info`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `robot_info`
--
ALTER TABLE `robot_info`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_info`
--
ALTER TABLE `team_info`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_points`
--
ALTER TABLE `team_points`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
