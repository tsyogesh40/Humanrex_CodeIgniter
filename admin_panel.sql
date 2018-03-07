-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2018 at 01:33 PM
-- Server version: 5.7.21-0ubuntu0.17.10.1
-- PHP Version: 7.1.11-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `altered_time`
--

CREATE TABLE `altered_time` (
  `date` date NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `cadre` enum('T','NT') NOT NULL,
  `half_wrk` time NOT NULL,
  `full_wrk` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `altered_time`
--

INSERT INTO `altered_time` (`date`, `in_time`, `out_time`, `cadre`, `half_wrk`, `full_wrk`) VALUES
('2018-02-01', '09:00:00', '17:30:00', 'T', '00:00:03', '00:00:07'),
('2018-02-01', '08:30:00', '05:30:00', 'NT', '00:00:12', '00:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `CHEMISTRY_entry`
--

CREATE TABLE `CHEMISTRY_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHEMISTRY_entry`
--

INSERT INTO `CHEMISTRY_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `CIVIL_entry`
--

CREATE TABLE `CIVIL_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CIVIL_entry`
--

INSERT INTO `CIVIL_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'civilhod', 'CIVILHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-23', 'EVEN', 2018),
('T', 'civilhod', 'CIVILHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-24', 'EVEN', 2018),
('T', 'civilhod', 'CIVILHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-25', 'EVEN', 2018),
('T', 'civilhod', 'CIVILHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-26', 'EVEN', 2018),
('T', 'civilhod', 'CIVILHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-27', 'EVEN', 2018),
('T', 'civilhod', 'CIVILHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-28', 'EVEN', 2018),
('T', 'civilhod', 'CIVILHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-01', 'EVEN', 2018),
('T', 'civilhod', 'CIVILHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `staff_id` varchar(12) NOT NULL,
  `name` varchar(60) NOT NULL,
  `count` int(1) NOT NULL DEFAULT '0' COMMENT 'If(counter>=3) then p_value--;',
  `late_days` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`staff_id`, `name`, `count`, `late_days`) VALUES
('chemistry1', 'Chemistrystaff1', 0, 0),
('chemistry2', 'Chemistrystaff2', 0, 0),
('CHEMISTRYHOD', 'Chemistryhod', 0, 0),
('civil1', 'Civilstaff1', 0, 0),
('civil2', 'Civilstaff2', 0, 0),
('civil3', 'Civilstaff3', 0, 0),
('CIVILHOD', 'Civilhod', 0, 0),
('cse1', 'Csestaff1', 0, 0),
('cse2', 'Csestaff2', 0, 0),
('cse3', 'Csestaff3', 0, 0),
('CSEHOD', 'Csehod', 0, 0),
('ece1', 'Ecestaff1', 0, 0),
('ece2', 'Ecestaff2', 0, 0),
('ece3', 'Ecestaff3', 0, 0),
('ecehod', 'Ecehod', 0, 0),
('eee1', 'Eeestaff1', 0, 0),
('eee2', 'Eeestaff2', 0, 0),
('eee3', 'Eeestaff3', 0, 0),
('eeehod', 'Eeehod', 0, 0),
('english1', 'Englishstaff1', 0, 0),
('english2', 'Englishstaff2', 0, 0),
('ENGLISHHOD', 'Englishhod', 0, 0),
('IT02', 'Prasanna', 0, 0),
('IT04', 'Arun', 0, 0),
('IT05', 'Yogesh T S', 1, 5),
('ITHOD', 'Ithod', 0, 0),
('maths1', 'Mathsstaff1', 0, 0),
('maths2', 'Mathsstaff2', 0, 0),
('MATHSHOD', 'Mathshod', 0, 0),
('mech1', 'Mechstaff1', 0, 0),
('mech2', 'Mechstaff2', 0, 0),
('mech3', 'Mechstaff3', 0, 0),
('mechhod', 'Mechhod', 0, 0),
('office1', 'Officestaff1', 0, 0),
('physics1', 'Physicsstaff1', 0, 0),
('physics2', 'Physicsstaff2', 0, 0),
('PHYSICSHOD', 'Physicshod', 0, 0),
('PRIN', 'Principal', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CSE_entry`
--

CREATE TABLE `CSE_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CSE_entry`
--

INSERT INTO `CSE_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'csehod', 'CSEHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-23', 'EVEN', 2018),
('T', 'csehod', 'CSEHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-24', 'EVEN', 2018),
('T', 'csehod', 'CSEHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-25', 'EVEN', 2018),
('T', 'csehod', 'CSEHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-26', 'EVEN', 2018),
('T', 'csehod', 'CSEHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-27', 'EVEN', 2018),
('T', 'csehod', 'CSEHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-28', 'EVEN', 2018),
('T', 'csehod', 'CSEHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-01', 'EVEN', 2018),
('T', 'csehod', 'CSEHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `default_time`
--

CREATE TABLE `default_time` (
  `cadre` enum('T','NT') NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `half_wrk` time NOT NULL,
  `full_wrk` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Default time for Teaching and Non- teaching staffs';

--
-- Dumping data for table `default_time`
--

INSERT INTO `default_time` (`cadre`, `in_time`, `out_time`, `half_wrk`, `full_wrk`) VALUES
('T', '00:00:00', '17:30:00', '03:00:00', '07:35:00'),
('NT', '00:00:00', '17:30:00', '03:00:00', '07:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `ECE_entry`
--

CREATE TABLE `ECE_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ECE_entry`
--

INSERT INTO `ECE_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'ecehod', 'ecehod', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-23', 'EVEN', 2018),
('T', 'ecehod', 'ecehod', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-24', 'EVEN', 2018),
('T', 'ecehod', 'eceHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-25', 'EVEN', 2018),
('T', 'ecehod', 'eceHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-26', 'EVEN', 2018),
('T', 'ecehod', 'eceHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-27', 'EVEN', 2018),
('T', 'ecehod', 'eceHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-28', 'EVEN', 2018),
('T', 'ecehod', 'eceHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-01', 'EVEN', 2018),
('T', 'ecehod', 'eceHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `EEE_entry`
--

CREATE TABLE `EEE_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EEE_entry`
--

INSERT INTO `EEE_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'eeehod', 'eeehod', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-23', 'EVEN', 2018),
('T', 'eeehod', 'eeehod', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-24', 'EVEN', 2018),
('T', 'eeehod', 'eeeHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-25', 'EVEN', 2018),
('T', 'eeehod', 'eeeHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-26', 'EVEN', 2018),
('T', 'eeehod', 'eeeHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-27', 'EVEN', 2018),
('T', 'eeehod', 'eeeHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-28', 'EVEN', 2018),
('T', 'eeehod', 'eeeHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-01', 'EVEN', 2018),
('T', 'eeehod', 'eeeHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `ENGLISH_entry`
--

CREATE TABLE `ENGLISH_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ENGLISH_entry`
--

INSERT INTO `ENGLISH_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'Englishhod', 'ENGLISHHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'Englishhod', 'ENGLISHHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'Englishhod', 'ENGLISHHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'Englishhod', 'ENGLISHHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'Englishhod', 'ENGLISHHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'Englishhod', 'ENGLISHHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'Englishhod', 'ENGLISHHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'Englishhod', 'ENGLISHHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `fingerprint_details`
--

CREATE TABLE `fingerprint_details` (
  `name` varchar(50) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(3) NOT NULL COMMENT 'fingerprints are being stored in the scanner using this storeid',
  `finger_name` enum('LEFT_THUMB','RIGHT_THUMB','LEFT_INDEX','RIGHT_INDEX','LEFT_MID','RIGHT_MID') NOT NULL,
  `finger_code` enum('LT','RT','LI','RI','LM','RM') NOT NULL COMMENT 'Abbrevated finger name',
  `finger_print` varchar(2000) NOT NULL,
  `enroll_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fingerprint_details`
--

INSERT INTO `fingerprint_details` (`name`, `staff_id`, `store_id`, `finger_name`, `finger_code`, `finger_print`, `enroll_time`) VALUES
('Yogesh T S', 'IT05', 2, 'LEFT_MID', 'LM', 'ef01ffffffff02010203015b170000e01ec00e800680020002000200020000000000000000000000000000000000000000000000000000000000000000000000001e8829de478c419e1c1768be2e1b6b1e3a9d135e45a454be4e31935e4ab98e3e3dba8e5e2dbce4fe1c3d245e462002ff74a59d3f6d2f9dff5c38593f578ad8bc550e189c5db25b7a56b2d93a6430dd1b563ecd195f3f1a195ac087f900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000029a6ef01ffffffff08010203015b170000f87ef006e002e000c000c000c000c000c000c000c000c000c000c000e000f000f000000000000000000000000000000000005108d7de480bc21e560e18fe1c95e91e2e9b2b1e3b1cd37e73a31cde4e31935e1b39641e3dba8e7e2fbb24fe6c2e5d9f5e3e5a7f47a1435c4624951c593816fc4b398e5c64305cdd5c31db985733599850be0ad854be879952bbc5b70000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003532', '2018-03-02 17:29:36'),
('Yogesh T S', 'IT05', 2, 'LEFT_INDEX', 'LI', 'ef01ffffffff020102030157180000f9fef9fe800e800600060002000200000000000000000000000000000000000000000000000000000000000000000000000012926a5e0e1d11de44afd4fe0b36cf9e3d36c09e6995da3f5e9ac45f421e817f5f225a9f42a415bf67b0dc5f413b937f304167bf59be48bc201aac7d2aa013fd603c9d3d2e9b6bbb4a8dd8b22a16d4d226176b52281b57b8458d0230458f16b700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002e80ef01ffffffff080102030155180000fffef1fec01e800600060002000200000000000000000000000000000000000000000000000000000000000000000000000013126a3e64961a5e0d9cd15e5fa15a9e44afd4fe0b36cfbe5f1ac49f421e817f2aa013ff42a415df6730dc9f5fbc5d3f56bec7bf2f41e77f3cb6c09c3dba91fc400ed65d4b8e59f240c0c35a42c2d45a468d0372201aac532b16d4d02517ab4e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003204', '2018-03-02 17:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `IT_entry`
--

CREATE TABLE `IT_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `IT_entry`
--

INSERT INTO `IT_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '16:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '09:15:00', '17:00:00', 2, 'LATE', '2018-02-24', 'EVEN', 2018),
('T', 'Yogesh T S ', 'IT05', 2, '09:00:00', '12:00:00', 1, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '09:03:00', '17:00:00', 2, 'LATE', '2018-02-24', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '16:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '09:15:00', '17:00:00', 2, 'LATE', '2018-02-23', 'EVEN', 2018),
('T', 'Yogesh T S ', 'IT05', 2, '09:00:00', '12:00:00', 1, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '09:03:00', '17:00:00', 2, 'LATE', '2018-02-23', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '16:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '09:15:00', '17:00:00', 2, 'LATE', '2018-02-25', 'EVEN', 2018),
('T', 'Yogesh T S ', 'IT05', 2, '09:00:00', '12:00:00', 1, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '09:03:00', '17:00:00', 2, 'LATE', '2018-02-25', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '16:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '09:15:00', '17:00:00', 2, 'LATE', '2018-02-26', 'EVEN', 2018),
('T', 'Yogesh T S ', 'IT05', 2, '09:00:00', '12:00:00', 1, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '09:03:00', '17:00:00', 2, 'LATE', '2018-02-26', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '16:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '09:15:00', '17:00:00', 2, 'LATE', '2018-02-27', 'EVEN', 2018),
('T', 'Yogesh T S ', 'IT05', 2, '09:00:00', '12:00:00', 1, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '09:03:00', '17:00:00', 2, 'LATE', '2018-02-27', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '16:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '09:15:00', '17:00:00', 2, 'LATE', '2018-02-28', 'EVEN', 2018),
('T', 'Yogesh T S ', 'IT05', 2, '09:00:00', '12:00:00', 1, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '09:03:00', '17:00:00', 2, 'LATE', '2018-02-28', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '16:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '09:15:00', '17:00:00', 2, 'LATE', '2018-03-01', 'EVEN', 2018),
('T', 'Yogesh T S ', 'IT05', 2, '09:00:00', '12:00:00', 1, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '09:03:00', '17:00:00', 2, 'LATE', '2018-03-01', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '16:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '09:15:00', '17:00:00', 2, 'LATE', '2018-03-02', 'ODD', 2018),
('T', 'Yogesh T S ', 'IT05', 2, '09:00:00', '12:00:00', 1, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '09:03:00', '17:00:00', 2, 'LATE', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `MATHS_entry`
--

CREATE TABLE `MATHS_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MATHS_entry`
--

INSERT INTO `MATHS_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'Mathshod', 'MATHSHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'Mathshod', 'MATHSHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'Mathshod', 'MATHSHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'Mathshod', 'MATHSHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'Mathshod', 'MATHSHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'Mathshod', 'MATHSHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'Mathshod', 'MATHSHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'Mathshod', 'MATHSHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `MECH_entry`
--

CREATE TABLE `MECH_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MECH_entry`
--

INSERT INTO `MECH_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'mechhod', 'mechHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-23', 'EVEN', 2018),
('T', 'mechhod', 'mechHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-24', 'EVEN', 2018),
('T', 'mechhod', 'mechHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-25', 'EVEN', 2018),
('T', 'mechhod', 'mechHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-26', 'EVEN', 2018),
('T', 'mechhod', 'mechHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-27', 'EVEN', 2018),
('T', 'mechhod', 'mechHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-02-28', 'EVEN', 2018),
('T', 'mechhod', 'mechHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-01', 'EVEN', 2018),
('T', 'mechhod', 'mechHOD', 37, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, '10:00:00', '13:00:00', 0, 'LEAVE', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `OFFICE_entry`
--

CREATE TABLE `OFFICE_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OFFICE_entry`
--

INSERT INTO `OFFICE_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, '10:00:00', '17:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `overall_presence`
--

CREATE TABLE `overall_presence` (
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `dept` varchar(12) DEFAULT NULL,
  `total_days` int(4) NOT NULL DEFAULT '0',
  `present_days` int(4) NOT NULL DEFAULT '0',
  `leave_days` int(4) NOT NULL DEFAULT '0',
  `permission_days` int(4) NOT NULL DEFAULT '0',
  `late_days` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `overall_presence`
--

INSERT INTO `overall_presence` (`name`, `staff_id`, `dept`, `total_days`, `present_days`, `leave_days`, `permission_days`, `late_days`) VALUES
('Ithod', 'ITHOD', 'IT', 4, 4, 0, 0, 0),
('Yogesh T S', 'IT05', 'IT', 4, 4, 0, 0, 0),
('Prasanna', 'IT02', 'IT', 4, 4, 0, 0, 0),
('Arun', 'IT04', 'IT', 4, 4, 0, 0, 0),
('Principal', 'PRIN', 'IT', 0, 0, 0, 0, 0),
('Csestaff1', 'cse1', 'IT', 0, 0, 0, 0, 0),
('Csestaff2', 'cse2', 'IT', 0, 0, 0, 0, 0),
('Csehod', 'CSEHOD', 'IT', 0, 0, 0, 0, 0),
('Csestaff3', 'cse3', 'IT', 0, 0, 0, 0, 0),
('Ecehod', 'ecehod', 'IT', 0, 0, 0, 0, 0),
('Ecestaff1', 'ece1', 'IT', 0, 0, 0, 0, 0),
('Ecestaff2', 'ece2', 'ECE', 0, 0, 0, 0, 0),
('Ecestaff3', 'ece3', 'IT', 0, 0, 0, 0, 0),
('Eeehod', 'eeehod', 'EEE', 0, 0, 0, 0, 0),
('Eeestaff1', 'eee1', 'EEE', 0, 0, 0, 0, 0),
('Eeestaff2', 'eee2', 'EEE', 0, 0, 0, 0, 0),
('Eeestaff3', 'eee3', 'EEE', 0, 0, 0, 0, 0),
('Mechhod', 'mechhod', 'MECH', 0, 0, 0, 0, 0),
('Mechstaff1', 'mech1', 'MECH', 0, 0, 0, 0, 0),
('Mechstaff2', 'mech2', 'MECH', 0, 0, 0, 0, 0),
('Mechstaff3', 'mech3', 'MECH', 0, 0, 0, 0, 0),
('Civilhod', 'CIVILHOD', 'CIVIL', 0, 0, 0, 0, 0),
('Civilstaff1', 'civil1', 'CSE', 0, 0, 0, 0, 0),
('Civilstaff2', 'civil2', 'CIVIL', 0, 0, 0, 0, 0),
('Civilstaff3', 'civil3', 'CIVIL', 0, 0, 0, 0, 0),
('Physicshod', 'PHYSICSHOD', 'PHYSICS', 0, 0, 0, 0, 0),
('Physicsstaff1', 'physics1', 'PHYSICS', 0, 0, 0, 0, 0),
('Physicsstaff2', 'physics2', 'PHYSICS', 0, 0, 0, 0, 0),
('Chemistryhod', 'CHEMISTRYHOD', 'CHEMSITRY', 0, 0, 0, 0, 0),
('Chemistrystaff1', 'chemistry1', 'IT', 0, 0, 0, 0, 0),
('Chemistrystaff2', 'chemistry2', 'CHEMISTRY', 0, 0, 0, 0, 0),
('Mathshod', 'MATHSHOD', 'MATHS', 0, 0, 0, 0, 0),
('Mathsstaff1', 'maths1', 'MATHS', 0, 0, 0, 0, 0),
('Englishhod', 'ENGLISHHOD', 'ENGLISH', 0, 0, 0, 0, 0),
('Englishstaff1', 'english1', 'ENGLISH', 0, 0, 0, 0, 0),
('Englishstaff2', 'english2', 'ENGLISH', 0, 0, 0, 0, 0),
('Mathsstaff2', 'maths2', 'MATHS', 0, 0, 0, 0, 0),
('Officestaff1', 'office1', 'OFFICE', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `date` date NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `cadre` enum('T','NT') NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` enum('0','-1,','-2') DEFAULT '0' COMMENT '-1- Permission, 0- Leave, -2- Onduty',
  `reason` varchar(1000) NOT NULL DEFAULT 'Not Given ',
  `physical_presence` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`date`, `name`, `staff_id`, `cadre`, `in_time`, `out_time`, `p_value`, `reason`, `physical_presence`) VALUES
('2018-03-08', 'Yogesh T S', 'IT05', 'T', '12:32:00', '17:00:00', '0', 'leave', 'Y'),
('2018-03-14', 'Yogesh T S', 'IT05', 'T', '12:12:00', '12:12:00', '0', 'yi', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `PHYSICS_entry`
--

CREATE TABLE `PHYSICS_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PHYSICS_entry`
--

INSERT INTO `PHYSICS_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-23', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-24', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-24', 'EVEN', 2018),
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-25', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-25', 'EVEN', 2018),
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-26', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-26', 'EVEN', 2018),
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-27', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-27', 'EVEN', 2018),
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, '10:00:00', '13:00:00', 1, 'LATE', '2018-02-28', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-02-28', 'EVEN', 2018),
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-01', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-01', 'EVEN', 2018),
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, '09:00:00', '15:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, '10:00:00', '13:00:00', 1, 'LATE', '2018-03-02', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, '08:30:00', '17:00:00', 2, 'ONTIME', '2018-03-02', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `name` varchar(100) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(3) NOT NULL,
  `finger_preference` enum('LT','RT','LI','RI','LM','RM') NOT NULL DEFAULT 'LI',
  `department` enum('IT','CSE','MECH','ECE','EEE','CIVIL','PHYSICS','CHEMISTRY','MATHS','ENGLISH','OFFICE') NOT NULL,
  `designation` varchar(30) NOT NULL,
  `cadre` enum('T','NT') NOT NULL COMMENT 'T- Teaching staff , NT- Non teaching staff',
  `gender` enum('M','F') NOT NULL,
  `phone` bigint(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `DOJ` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`name`, `staff_id`, `store_id`, `finger_preference`, `department`, `designation`, `cadre`, `gender`, `phone`, `email`, `DOJ`) VALUES
('Chemistrystaff1', 'chemistry1', 38, 'LI', 'CHEMISTRY', 'AP-I', 'T', 'F', 9876543241, 'chemistry1@vcet.ac.in', '2008-09-24'),
('Chemistrystaff2', 'chemistry2', 39, 'LI', 'CHEMISTRY', 'LAB INSTRUCTOR', 'NT', 'M', 9128287623, 'chemistry2@vcet.ac.in', '2009-09-02'),
('Chemistryhod', 'CHEMISTRYHOD', 37, 'RT', 'CHEMISTRY', 'Professor', 'T', 'M', 7373535614, 'chemistryhod@vcet.ac.in', '2009-02-18'),
('Civilstaff1', 'civil1', 27, 'LT', 'CIVIL', 'Associate Professor', 'T', 'M', 7373535614, 'civil1@vcet.ac.in', '2010-12-12'),
('Civilstaff2', 'civil2', 28, 'RI', 'CIVIL', 'AP-I', 'T', 'F', 7373535614, 'civil2@vcet.ac.in', '2011-05-14'),
('Civilstaff3', 'civil3', 30, 'LI', 'CIVIL', 'LAB INSTRUCTOR', 'NT', 'M', 9994011735, 'civil3@vcet.ac.in', '2009-07-18'),
('Civilhod', 'CIVILHOD', 26, 'LI', 'CIVIL', 'Professor', 'T', 'F', 7373535614, 'civilhod@vcet.ac.in', '2010-03-31'),
('Csestaff1', 'cse1', 9, 'LI', 'CSE', 'Associate Professor', 'T', 'M', 7373535614, 'cse1@vcet.ac.in', '2010-12-12'),
('Csestaff2', 'cse2', 4, 'LI', 'CSE', 'AP-I', 'T', 'M', 7373535614, 'cse2@vcet.ac.in', '2010-12-12'),
('Csestaff3', 'cse3', 10, 'LI', 'CSE', 'TA', 'NT', 'M', 7373535614, 'cse3@vcet.ac.in', '2010-12-12'),
('Csehod', 'CSEHOD', 10, 'LI', 'CSE', 'Professor', 'T', 'M', 7373535614, 'csehod@vcet.ac.in', '2010-12-12'),
('Ecestaff1', 'ece1', 13, 'LI', 'ECE', 'Associate Professor', 'T', 'M', 7171271714, 'ece1@vcet.ac.in', '2015-12-12'),
('Ecestaff2', 'ece2', 14, 'LI', 'ECE', 'AP-II', 'T', 'M', 9128287623, 'ecestaff2@vcet.ac.in', '2009-12-12'),
('Ecestaff3', 'ece3', 15, 'LI', 'ECE', 'Professor', 'NT', 'M', 9876543210, 'ece3@vcet.ac.in', '2008-12-12'),
('Ecehod', 'ecehod', 12, 'LI', 'ECE', 'Professor', 'T', 'M', 7373535614, 'ecehod@vcet.ac.in', '2020-12-12'),
('Eeestaff1', 'eee1', 17, 'LI', 'EEE', 'Associate Professor', 'T', 'M', 9876543210, 'eee1@vcet.ac.in', '2008-01-15'),
('Eeestaff2', 'eee2', 18, 'LI', 'EEE', 'AP-I', 'T', 'F', 9876543210, 'eee2@vcet.ac.in', '2007-12-14'),
('Eeestaff3', 'eee3', 19, 'LI', 'EEE', 'SYSTEM ADMIN', 'NT', 'F', 7272525513, 'eee3@vcet.ac.in', '2008-12-12'),
('Eeehod', 'eeehod', 16, 'LI', 'EEE', 'Professor', 'T', 'M', 9876543209, 'eeehod@vcet.ac.in', '2008-12-15'),
('Englishstaff1', 'english1', 45, 'LI', 'ENGLISH', 'Associate Professor', 'T', 'M', 9876543210, 'english1@vcet.ac.in', '2015-03-03'),
('Englishstaff2', 'english2', 46, 'LI', 'ENGLISH', 'SYSTEM ADMIN', 'NT', 'M', 9890098900, 'english2@vcet.ac.in', '2008-06-06'),
('Englishhod', 'ENGLISHHOD', 44, 'RI', 'ENGLISH', 'Professor', 'T', 'M', 9128287623, 'englishhod@vcet.ac.in', '2009-08-09'),
('Prasanna', 'IT02', 3, 'LI', 'IT', 'AP-I', 'T', 'M', 1234567890, 'prasanna@vcet.ac.in', '2011-02-23'),
('Arun', 'IT04', 4, 'LI', 'IT', 'LAB ATTENDER', 'NT', 'M', 9876543201, 'arun@vcet.ac.in', '2008-12-12'),
('Yogesh T S', 'IT05', 2, 'LI', 'IT', 'AP-I', 'T', 'M', 7373535614, 'yogesh@vcet.ac.in', '2010-10-10'),
('Ithod', 'ITHOD', 1, 'LI', 'IT', 'Professor', 'T', 'M', 9876543210, 'hod@vcet.ac.in', '2010-12-12'),
('Mathsstaff1', 'maths1', 41, 'LI', 'MATHS', 'Associate Professor', 'T', 'M', 9876543241, 'maths1@vcet.ac.in', '2013-07-07'),
('Mathsstaff2', 'maths2', 45, 'LI', 'MATHS', 'SYSTEM ADMIN', 'NT', 'M', 7373535614, 'maths2@vcet.ac.in', '2010-12-12'),
('Mathshod', 'MATHSHOD', 39, 'LI', 'MATHS', 'Professor', 'T', 'F', 9890098900, 'mathshod@vcet.ac.in', '2010-09-09'),
('Mechstaff1', 'mech1', 22, 'LI', 'MECH', 'Associate Professor', 'T', 'M', 7373535614, 'mech1@vcet.ac.in', '2009-11-13'),
('Mechstaff2', 'mech2', 23, 'LI', 'MECH', 'AP-II', 'T', 'F', 7373535614, 'mech2@vcet.ac.in', '2005-12-13'),
('Mechstaff3', 'mech3', 24, 'LI', 'MECH', 'LAB INSTRUCTOR', 'NT', 'M', 7373535614, 'mech3@vcet.ac.in', '2010-12-12'),
('Mechhod', 'mechhod', 20, 'LI', 'MECH', 'Professor', 'T', 'M', 1234567890, 'mechhod@vcet.ac.in', '2007-12-12'),
('Officestaff1', 'office1', 45, 'LI', 'OFFICE', 'CASHIER', 'NT', 'M', 9876543241, 'office1@vcet.ac.in', '2010-03-31'),
('Physicsstaff1', 'physics1', 34, 'LI', 'PHYSICS', 'Associate Professor', 'T', 'F', 9876543241, 'physics1@vcet.ac.in', '2009-02-22'),
('Physicsstaff2', 'physics2', 35, 'LI', 'PHYSICS', 'LAB INSTRUCTOR', 'NT', 'F', 9876543241, 'physics2@vcet.ac.in', '2009-02-22'),
('Physicshod', 'PHYSICSHOD', 31, 'LI', 'PHYSICS', 'Professor', 'T', 'M', 9890098900, 'physicshod@vcet.ac.in', '2007-11-18'),
('Principal', 'PRIN', 9, 'LI', 'OFFICE', 'Professor', 'T', 'F', 7373535614, 'principal@vcet.ac.in', '2010-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 12:13:33'),
(2, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 12:34:22'),
(3, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 12:37:03'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 12:42:04'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-17 14:20:37'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 09:38:44'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 09:52:23'),
(8, 2, '{\"role\":\"2\",\"roleText\":\"Principal\",\"name\":\"Manager\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 10:35:59'),
(9, 3, '{\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Employee\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 10:36:18'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 10:40:17'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 10:48:39'),
(12, 9, '{\"staff_id\":null,\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:15:54'),
(13, 9, '{\"staff_id\":null,\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:18:09'),
(14, 1, '{\"staff_id\":\"IT01\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:29:03'),
(15, 3, '{\"staff_id\":\"IT03\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Employee\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:33:07'),
(16, 1, '{\"staff_id\":\"IT01\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 12:35:50'),
(17, 3, '{\"staff_id\":\"IT03\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Employee\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-18 21:54:56'),
(18, 1, '{\"staff_id\":\"IT01\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 11:10:10'),
(19, 11, '{\"staff_id\":\"ITST33\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Staff\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 11:14:50'),
(20, 11, '{\"staff_id\":\"ITST33\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"9876543241\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Staff\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 11:58:06'),
(21, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 12:03:02'),
(22, 11, '{\"staff_id\":\"ITST33\",\"in_time\":\"08:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-19\",\"status\":\"ONTIME\",\"phone\":\"9876543241\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 12:03:59'),
(23, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 13:42:17'),
(24, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 13:43:26'),
(25, 11, '{\"staff_id\":\"ITST33\",\"in_time\":\"08:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-19\",\"status\":\"ONTIME\",\"phone\":\"9876543241\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 14:00:36'),
(26, 11, '{\"staff_id\":\"ITST33\",\"in_time\":\"08:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-19\",\"status\":\"ONTIME\",\"phone\":\"9876543241\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 15:13:50'),
(27, 11, '{\"staff_id\":\"ITST33\",\"in_time\":\"08:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-19\",\"status\":\"ONTIME\",\"phone\":\"9876543240\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 16:57:49'),
(28, 11, '{\"staff_id\":\"ITST33\",\"in_time\":\"08:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-19\",\"status\":\"ONTIME\",\"phone\":\"9876543111\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 20:58:59'),
(29, 11, '{\"staff_id\":\"ITST33\",\"in_time\":\"08:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-19\",\"status\":\"ONTIME\",\"phone\":\"987654319\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 20:59:32'),
(30, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 21:46:07'),
(31, 11, '{\"staff_id\":\"ITST33\",\"in_time\":\"08:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-19\",\"status\":\"ONTIME\",\"phone\":\"8667763095\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 21:47:02'),
(32, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 22:08:51'),
(33, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 22:10:25'),
(34, 11, '{\"staff_id\":\"ITST33\",\"in_time\":\"08:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-19\",\"status\":\"ONTIME\",\"phone\":\"8667763095\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 22:10:46'),
(35, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-19 22:12:05'),
(36, 11, '{\"staff_id\":\"ITST33\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"8667763095\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-20 11:17:06'),
(37, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-20 14:34:46'),
(38, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-20 19:03:00'),
(39, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"employee@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-20 19:04:39'),
(40, 11, '{\"staff_id\":\"ITST33\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"8667763095\",\"designation\":\"AP-I\",\"email\":\"staff@gmail.com\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Dummy\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-20 19:23:08'),
(41, 2, '{\"staff_id\":\"IT02\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"manager@vcet.ac.in\",\"role\":\"2\",\"roleText\":\"Principal\",\"name\":\"Principal\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-20 19:27:49'),
(42, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"employee@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-20 21:33:02'),
(43, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"employee@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-21 07:58:49'),
(44, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-21 14:31:57'),
(45, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-22 07:40:16'),
(46, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-22 11:06:34'),
(47, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-22 11:31:29'),
(48, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-22 11:35:01'),
(49, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 00:04:25'),
(50, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 07:30:07'),
(51, 3, '{\"staff_id\":\"IT03\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"AP-II\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Hod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 09:18:11'),
(52, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Admin\",\"email\":\"admin@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 10:59:30'),
(53, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":\"09:00:00\",\"out_time\":\"04:00:00\",\"date\":\"2018-02-23\",\"status\":\"ONTIME\",\"phone\":\"9876543210\",\"designation\":\"P\",\"email\":\"hod@vcet.ac.in\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 11:37:58'),
(54, 1, '{\"staff_id\":\"IT01\",\"in_time\":\"09:00:00\",\"out_time\":\"04:00:00\",\"date\":\"2018-02-23\",\"status\":\"ONTIME\",\"phone\":\"1234567890\",\"designation\":\"AP-I\",\"email\":\"yogesh@vcet.ac.in\",\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 11:57:01'),
(55, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 11:59:02'),
(56, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":\"09:00:00\",\"out_time\":\"04:00:00\",\"date\":\"2018-02-23\",\"status\":\"ONTIME\",\"phone\":\"9876543210\",\"designation\":\"P\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 11:59:44'),
(57, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":\"09:00:00\",\"out_time\":\"04:00:00\",\"date\":\"2018-02-23\",\"status\":\"ONTIME\",\"phone\":\"9876543210\",\"designation\":\"P\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-23 17:07:02'),
(58, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"9876543210\",\"designation\":\"P\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-24 08:26:38'),
(59, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-24 08:27:50'),
(60, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-24 13:45:00'),
(61, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-24 18:02:54'),
(62, 33, '{\"staff_id\":\"CIVILHOD\",\"in_time\":\"09:00:00\",\"out_time\":\"15:00:00\",\"date\":\"2018-02-24\",\"status\":\"ONTIME\",\"phone\":\"7373535614\",\"designation\":\"Professor\",\"email\":\"civilhod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Civilhod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-24 22:49:31'),
(63, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 07:37:53'),
(64, 25, '{\"staff_id\":\"eeehod\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"9876543209\",\"designation\":\"Professor\",\"email\":\"eeehod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Eeehod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 08:07:48'),
(65, 25, '{\"staff_id\":\"eeehod\",\"in_time\":\"09:00:00\",\"out_time\":\"15:00:00\",\"date\":\"2018-02-25\",\"status\":\"ONTIME\",\"phone\":\"9876543209\",\"designation\":\"Professor\",\"email\":\"eeehod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Eeehod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 08:23:02'),
(66, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 08:29:38'),
(67, 21, '{\"staff_id\":\"ecehod\",\"in_time\":\"09:00:00\",\"out_time\":\"15:00:00\",\"date\":\"2018-02-25\",\"status\":\"ONTIME\",\"phone\":\"7373535614\",\"designation\":\"Professor\",\"email\":\"ecehod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ecehod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 08:41:59'),
(68, 16, '{\"staff_id\":\"PRIN\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Professor\",\"email\":\"principal@vcet.ac.in\",\"role\":\"2\",\"roleText\":\"Principal\",\"name\":\"Principal\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 08:45:29'),
(69, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 12:57:06'),
(70, 16, '{\"staff_id\":\"PRIN\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Professor\",\"email\":\"principal@vcet.ac.in\",\"role\":\"2\",\"roleText\":\"Principal\",\"name\":\"Principal\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 18:09:53'),
(71, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":\"09:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-25\",\"status\":\"ONTIME\",\"phone\":\"9876543210\",\"designation\":\"Professor\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-25 21:17:30'),
(72, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-26 07:35:41'),
(73, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"9876543210\",\"designation\":\"Professor\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-26 09:56:53'),
(74, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-26 10:03:24'),
(75, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-26 13:43:35'),
(76, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"9876543210\",\"designation\":\"Professor\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-26 15:22:40'),
(77, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-26 15:43:57'),
(78, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 07:57:38'),
(79, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"9876543210\",\"designation\":\"Professor\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 09:14:29'),
(80, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 09:22:50'),
(81, 13, '{\"staff_id\":\"IT05\",\"in_time\":\"09:00:00\",\"out_time\":\"12:00:00\",\"date\":\"2018-02-27\",\"status\":\"ONTIME\",\"phone\":\"7373535614\",\"designation\":\"AP-I\",\"email\":\"yogesh@vcet.ac.in\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Yogesh T S\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 09:36:41'),
(82, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Mobile Safari/537.36', 'Android', '2018-02-27 09:40:09'),
(83, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":\"09:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-27\",\"status\":\"ONTIME\",\"phone\":\"9876543210\",\"designation\":\"Professor\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 09:42:01'),
(84, 16, '{\"staff_id\":\"PRIN\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":\"7373535614\",\"designation\":\"Professor\",\"email\":\"principal@vcet.ac.in\",\"role\":\"2\",\"roleText\":\"Principal\",\"name\":\"Principal\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 09:47:04'),
(85, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 10:56:53'),
(86, 13, '{\"staff_id\":\"IT05\",\"in_time\":\"09:00:00\",\"out_time\":\"12:00:00\",\"date\":\"2018-02-27\",\"status\":\"ONTIME\",\"phone\":\"7373535614\",\"designation\":\"AP-I\",\"email\":\"yogesh@vcet.ac.in\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Yogesh T S\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 11:15:03'),
(87, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-27 19:44:09'),
(88, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-28 08:04:58'),
(89, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":\"09:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-02-28\",\"status\":\"ONTIME\",\"phone\":\"9876543210\",\"designation\":\"Professor\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-28 09:32:25'),
(90, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-28 09:35:02'),
(91, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-01 07:55:47'),
(92, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-01 09:29:47'),
(93, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-01 19:36:08'),
(94, 12, '{\"staff_id\":\"ITHOD\",\"in_time\":\"09:00:00\",\"out_time\":\"16:00:00\",\"date\":\"2018-03-01\",\"status\":\"ONTIME\",\"phone\":\"9876543210\",\"designation\":\"Professor\",\"email\":\"hod@vcet.ac.in\",\"role\":\"3\",\"roleText\":\"HOD\",\"name\":\"Ithod\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-01 19:38:27'),
(95, 17, '{\"staff_id\":\"cse1\",\"in_time\":\"10:00:00\",\"out_time\":\"13:00:00\",\"date\":\"2018-03-02\",\"status\":\"LATE\",\"phone\":\"7373535614\",\"designation\":\"Associate Professor\",\"email\":\"cse1@vcet.ac.in\",\"role\":\"4\",\"roleText\":\"Staff\",\"name\":\"Csestaff1\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-02 10:50:29'),
(96, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-02 11:03:19'),
(97, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-02 17:31:32'),
(98, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-03 17:11:51'),
(99, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-04 11:31:20'),
(100, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-05 09:34:47'),
(101, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-06 09:03:58'),
(102, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-06 19:31:39'),
(103, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-07 09:11:20'),
(104, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-03-07 13:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', 'jas1CcGokf483Nw', 'Chrome 64.0.3282.119', '::1', 0, 1, '2018-02-18 09:39:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Admin'),
(2, 'Principal'),
(3, 'HOD'),
(4, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `staff_id` varchar(12) DEFAULT NULL,
  `cadre` enum('T','NT') NOT NULL,
  `dept` enum('IT','CSE','MECH','ECE','EEE','CIVIL','PHYSICS','CHEMISTRY','MATHS','ENGLISH','OFFICE') NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `staff_id`, `cadre`, `dept`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'IT01', 'T', 'IT', 'admin@vcet.ac.in', '$2y$10$j9HPTqIJOp0/9TbRA5T8A.oIF6SxeC5b4xsXPBCOKX8iLwomItcya', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-02-19 12:03:18'),
(12, 'ITHOD', 'T', 'IT', 'hod@vcet.ac.in', '$2y$10$6e7ywIoJPkP42romAvrv..RAfdmu/OuCdRXWFdxg1dUvms1aUL1G2', 'Ithod', '9876543210', 3, 0, 1, '2018-02-23 11:22:47', 1, '2018-02-24 13:41:21'),
(13, 'IT05', 'T', 'IT', 'yogesh@vcet.ac.in', '$2y$10$tETgcHUKCjrxoHWlVEZFXOguKDTBaB7Q/ybOghUYYLTEhztu1C27i', 'Yogesh T S', '7373535614', 4, 0, 1, '2018-02-23 11:27:10', 1, '2018-03-02 11:06:03'),
(14, 'IT02', 'T', 'IT', 'prasanna@vcet.ac.in', '$2y$10$QXt9paOy33vZf8ghYJ62OuPN9/iObMlzF9jupTzzd3m6xi4O77q4G', 'Prasanna', '1234567890', 4, 0, 1, '2018-02-23 11:30:07', 1, '2018-02-24 13:51:29'),
(15, 'IT04', 'NT', 'IT', 'arun@vcet.ac.in', '$2y$10$fNGD6YiUAdtzyZJCvAwo7.BkoOOuMfxhNn9.sNOf2Eaur5z5ktj0e', 'Arun', '9876543201', 4, 0, 1, '2018-02-23 11:31:17', NULL, NULL),
(16, 'PRIN', 'T', 'OFFICE', 'principal@vcet.ac.in', '$2y$10$mt/KsfUC1aZv6fG9pwcOS.F3DsFwYYpE5IuX9PKjQSJ6Q0Ppbjvim', 'Principal', '7373535614', 2, 0, 1, '2018-02-24 08:39:33', NULL, NULL),
(17, 'cse1', 'T', 'CSE', 'cse1@vcet.ac.in', '$2y$10$KYL9muzoGscBUUXYlPW/juc5URjF17rp7M9vWEobiyf5tsj/r1bSy', 'Csestaff1', '7373535614', 4, 0, 1, '2018-02-24 08:40:55', 1, '2018-02-24 22:00:08'),
(18, 'cse2', 'T', 'CSE', 'cse2@vcet.ac.in', '$2y$10$fnvzKJbBS3GZCdFZj3mLL.1aHcS/3o3i/E4N7tYLRNadSuyOm1tq.', 'Csestaff2', '7373535614', 4, 0, 1, '2018-02-24 08:41:58', NULL, NULL),
(19, 'CSEHOD', 'T', 'CSE', 'csehod@vcet.ac.in', '$2y$10$aTOAih2pf4C2kP.G3LuBaOe.ym8/HVMFYQFPOy9mFbrzyBg8DuFYG', 'Csehod', '7373535614', 3, 0, 1, '2018-02-24 08:45:49', NULL, NULL),
(20, 'cse3', 'NT', 'CSE', 'cse3@vcet.ac.in', '$2y$10$6utf1yraJJNhPQceEcfULevVw4IhQK8GWSCzxO13wzB.2w2VAeG/u', 'Csestaff3', '7373535614', 4, 0, 1, '2018-02-24 08:49:51', NULL, NULL),
(21, 'ecehod', 'T', 'ECE', 'ecehod@vcet.ac.in', '$2y$10$OJtCEYngoO0o0JkTald6Guev6Lg2aOPG8bJBhuHQzbSZSNJcQLDsu', 'Ecehod', '7373535614', 3, 0, 1, '2018-02-24 09:16:07', 1, '2018-02-25 08:07:10'),
(22, 'ece1', 'T', 'ECE', 'ece1@vcet.ac.in', '$2y$10$k9lP07srzf1oLec5ir6NEuOnDiXdYa9f3Z3Dh5MYmfGs/9glP6Nd2', 'Ecestaff1', '7171271714', 4, 0, 1, '2018-02-24 19:30:12', 1, '2018-02-24 19:31:45'),
(23, 'ece2', 'T', 'ECE', 'ecestaff2@vcet.ac.in', '$2y$10$8HgOAoDYCDPJ3Mqj/HrkVudMhrxIYIoY/Iw7tcEEv8tvd.m6QCxPa', 'Ecestaff2', '9128287623', 4, 0, 1, '2018-02-24 19:32:47', NULL, NULL),
(24, 'ece3', 'T', 'ECE', 'ece3@vcet.ac.in', '$2y$10$aPJD5mIXPgMte/FC8jN4w.lpHU85LHWySafUTjWTQL3diGNNxKbjO', 'Ecestaff3', '9876543210', 4, 0, 1, '2018-02-24 19:34:05', 1, '2018-02-24 19:54:12'),
(25, 'eeehod', 'T', 'EEE', 'eeehod@vcet.ac.in', '$2y$10$npHLxMSJqnv4tgWBX8GJCO06u7TQv.Y7t2mdnYYmbcosAbtJU1pFu', 'Eeehod', '9876543209', 3, 0, 1, '2018-02-24 19:36:06', NULL, NULL),
(26, 'eee1', 'T', 'EEE', 'eee1@vcet.ac.in', '$2y$10$HYG48JEwAh94CE1zVIVK1.ct84W2trw2Aeu55ZGknBeDHD0VXzJu6', 'Eeestaff1', '9876543210', 4, 0, 1, '2018-02-24 19:38:48', 1, '2018-02-24 20:28:12'),
(27, 'eee2', 'T', 'EEE', 'eee2@vcet.ac.in', '$2y$10$ukh2H4i/v/ClgBluc7cR2u9wYKc36.LRy6OpShnEYk58RkzDwDpOG', 'Eeestaff2', '9876543210', 4, 0, 1, '2018-02-24 19:39:55', 1, '2018-02-24 20:32:15'),
(28, 'eee3', 'NT', 'EEE', 'eee3@vcet.ac.in', '$2y$10$bNkgoq.CV1CW1niIIs7Qj.0L/Kgx6AmIAn1hEWLD9DgxKAfHEl0vG', 'Eeestaff3', '7272525513', 4, 0, 1, '2018-02-24 19:43:58', 1, '2018-02-24 20:30:22'),
(29, 'mechhod', 'T', 'MECH', 'mechhod@vcet.ac.in', '$2y$10$fXl6X7RjnL6joY8pmUf5WeFtycQAiqett4vdM1gPLRg.3DoNpSQ7a', 'Mechhod', '1234567890', 3, 0, 1, '2018-02-24 20:51:24', NULL, NULL),
(30, 'mech1', 'T', 'MECH', 'mech1@vcet.ac.in', '$2y$10$SeWQgFqhCoPeSuj/85SP/..MFdCovYrdPk7GBdQpJyVlgD4306VNq', 'Mechstaff1', '7373535614', 4, 0, 1, '2018-02-24 20:52:17', NULL, NULL),
(31, 'mech2', 'T', 'MECH', 'mech2@vcet.ac.in', '$2y$10$c/L0zKQdoUi7hQRBIDlTkeTkCuwwSHqW0LuuRNN4aEYMBFM0GVxaq', 'Mechstaff2', '7373535614', 4, 0, 1, '2018-02-24 20:53:15', NULL, NULL),
(32, 'mech3', 'NT', 'MECH', 'mech3@vcet.ac.in', '$2y$10$fdXEFOYpX4vvUuOs59kog.bPcmX4fljG5RYpnKxc0VCsEQwk/9dUm', 'Mechstaff3', '7373535614', 4, 0, 1, '2018-02-24 20:54:12', 1, '2018-02-24 20:54:34'),
(33, 'CIVILHOD', 'T', 'CIVIL', 'civilhod@vcet.ac.in', '$2y$10$T.ctEJSt3zjxH/zqOPHL9.h8uQDHFn/OpHpOZKKj6.gaChuxIPCZ2', 'Civilhod', '7373535614', 3, 0, 1, '2018-02-24 20:59:43', NULL, NULL),
(34, 'civil1', 'T', 'CIVIL', 'civil1@vcet.ac.in', '$2y$10$UjWPxB/4hOHR9Huyzbt7lOE6puWKTiuxyczOEPUzE3YjAWHG7R32m', 'Civilstaff1', '7373535614', 4, 0, 1, '2018-02-24 21:01:36', 1, '2018-02-24 22:40:53'),
(35, 'civil2', 'T', 'CIVIL', 'civil2@vcet.ac.in', '$2y$10$dXc1OrRU7FUUl3HSWWRNmO5X53aJ6q9AhrYvma8a/wtmxWbM63/su', 'Civilstaff2', '7373535614', 4, 0, 1, '2018-02-24 21:02:35', NULL, NULL),
(36, 'civil3', 'NT', 'CIVIL', 'civil3@vcet.ac.in', '$2y$10$13jrQHJefvHKh0.lsiNajOTOBVYHOdpGm1bR868lqXjoOZbzkAqxK', 'Civilstaff3', '9994011735', 4, 0, 1, '2018-02-24 21:03:32', 1, '2018-02-24 21:06:07'),
(37, 'PHYSICSHOD', 'T', 'PHYSICS', 'physicshod@vcet.ac.in', '$2y$10$62wgnTv3osr5fLtrKtiK4OYWYwq68ovTKz0mq3/ht1Ib8319nckja', 'Physicshod', '9890098900', 3, 0, 1, '2018-02-24 21:09:02', NULL, NULL),
(38, 'physics1', 'T', 'PHYSICS', 'physics1@vcet.ac.in', '$2y$10$C35LIGbUaQxqMa2./eUExOKxxSiU/YJZ4699GBeODP0bmniBU.W9.', 'Physicsstaff1', '9876543241', 4, 0, 1, '2018-02-24 21:11:14', NULL, NULL),
(39, 'physics2', 'NT', 'PHYSICS', 'physics2@vcet.ac.in', '$2y$10$ndQ6orxMW3dtMRO7cksa7.CpEjjU14yOicGBasHOCQKrrRQmK4fXu', 'Physicsstaff2', '9876543241', 4, 0, 1, '2018-02-24 21:12:58', 1, '2018-02-24 21:13:21'),
(40, 'CHEMISTRYHOD', 'T', 'CHEMISTRY', 'chemistryhod@vcet.ac.in', '$2y$10$t006KyWyF2heJR1tbvx/UORpdTSj1y7917ZViju4aiwHGilzCASCe', 'Chemistryhod', '7373535614', 3, 0, 1, '2018-02-24 21:17:50', 1, '2018-02-24 21:24:12'),
(41, 'chemistry1', 'T', 'CHEMISTRY', 'chemistry1@vcet.ac.in', '$2y$10$.4/Ukw7EyP0bLv4921MgEejA69O8Z2UB8PoZMYZjmSyHRiRzf1Y.S', 'Chemistrystaff1', '9876543241', 4, 0, 1, '2018-02-24 21:23:09', 1, '2018-02-24 21:58:27'),
(42, 'chemistry2', 'NT', 'CHEMISTRY', 'chemistry2@vcet.ac.in', '$2y$10$pc6HfLF462ieEdrvSgxHf.uPMBK8.uvhnkSqztuorBJq7Bd5wm1a.', 'Chemistrystaff2', '9128287623', 4, 0, 1, '2018-02-24 21:26:23', NULL, NULL),
(43, 'MATHSHOD', 'T', 'MATHS', 'mathshod@vcet.ac.in', '$2y$10$F8K./QQ342bwmu6.I6jZNOGzGHgtiN5ZJwiubGkNM9G3xYtCrxeWu', 'Mathshod', '9890098900', 3, 0, 1, '2018-02-24 21:28:03', NULL, NULL),
(44, 'maths1', 'T', 'MATHS', 'maths1@vcet.ac.in', '$2y$10$e0SEZdEoX42FzpK2IlkILOjGJysbn92EsH.2mgpx9AjXpDnMAguKa', 'Mathsstaff1', '9876543241', 4, 0, 1, '2018-02-24 21:29:17', NULL, NULL),
(46, 'ENGLISHHOD', 'T', 'ENGLISH', 'englishhod@vcet.ac.in', '$2y$10$kfVhs5jjOTNRjNGXE1jUk.fSQ1C124Ik2H/DYBCGpvHKdHvO8slE6', 'Englishhod', '9128287623', 3, 0, 1, '2018-02-24 21:31:17', NULL, NULL),
(47, 'english1', 'T', 'ENGLISH', 'english1@vcet.ac.in', '$2y$10$7zlOM08a6gs.qfivYyf7ZO2ZS7MZUBVIHxuHo1.cyORekk1hKfnFO', 'Englishstaff1', '9876543210', 4, 0, 1, '2018-02-24 21:32:01', NULL, NULL),
(48, 'english2', 'NT', 'ENGLISH', 'english2@vcet.ac.in', '$2y$10$Xon1SWColiVzWBkgGE.NRemkCyBFF46PMajJlqSDnpLWbQ3NQ2vFe', 'Englishstaff2', '9890098900', 4, 0, 1, '2018-02-24 21:36:39', NULL, NULL),
(49, 'maths2', 'NT', 'MATHS', 'maths2@vcet.ac.in', '$2y$10$2jHEm29nVsbzmS1jUzkoD.nmPdd5UvC7t2HLvilNEl3oolILh.U4O', 'Mathsstaff2', '7373535614', 4, 0, 1, '2018-02-24 22:38:07', NULL, NULL),
(50, 'office1', 'NT', 'OFFICE', 'office1@vcet.ac.in', '$2y$10$y9eHMoqEUKrKLJ1XFnfdUezvsUZF9J5xQUpMKvv9g6eW8hJ5xsMe2', 'Officestaff1', '9876543241', 4, 0, 1, '2018-02-25 08:04:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temp_entry`
--

CREATE TABLE `temp_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(3) NOT NULL,
  `dept` enum('IT','CSE','MECH','ECE','EEE','CIVIL','PHYSICS','CHEMISTRY','MATHS','ENGLISH','OFFICE') NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `p_value` int(2) NOT NULL DEFAULT '0',
  `no_of_entry` int(1) NOT NULL DEFAULT '0',
  `status` enum('LATE','ONTIME','OD','LEAVE','PERMISSION') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_entry`
--

INSERT INTO `temp_entry` (`cadre`, `name`, `staff_id`, `store_id`, `dept`, `in_time`, `out_time`, `p_value`, `no_of_entry`, `status`, `date`, `semester`, `year`) VALUES
('T', 'Ithod', 'ITHOD', 1, 'IT', '09:00:00', '16:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, 'IT', '09:15:00', '17:00:00', 2, 2, 'LATE', '2018-03-07', 'ODD', 2018),
('T', 'Yogesh T S ', 'IT05', 2, 'IT', '09:00:00', '12:00:00', 1, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, 'IT', '09:03:00', '17:00:00', 2, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('T', 'PhysicsHOD', 'PHYSICSHOD', 31, 'PHYSICS', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'physicsstaff1', 'physics1', 34, 'PHYSICS', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('NT', 'physicsstaff2', 'physics2', 35, 'PHYSICS', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'Chemitryhod', 'CHEMISTRYHOD', 37, 'CHEMISTRY', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'chemistrystaff1', 'chemistry1', 38, 'CHEMISTRY', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('NT', 'chemistrystaff2', 'chemistry2', 39, 'CHEMISTRY', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'Englishhod', 'ENGLISHHOD', 37, 'ENGLISH', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'englishstaff1', 'english1', 38, 'ENGLISH', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('NT', 'englishstaff2', 'english2', 39, 'ENGLISH', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'Mathshod', 'MATHSHOD', 37, 'MATHS', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'mathsstaff1', 'maths1', 38, 'MATHS', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('NT', 'mathsstaff2', 'maths2', 39, 'MATHS', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'csehod', 'CSEHOD', 37, 'CSE', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'csestaff1', 'cse1', 38, 'CSE', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('T', 'csestaff2', 'cse2', 39, 'CSE', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('NT', 'csestaff3', 'cse3', 38, 'CSE', '10:00:00', '13:00:00', 0, 2, 'LEAVE', '2018-03-07', 'EVEN', 2018),
('T', 'ecehod', 'eceHOD', 37, 'ECE', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'ecestaff1', 'ece1', 38, 'ECE', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('T', 'ecestaff2', 'ece2', 39, 'ECE', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('NT', 'ecestaff3', 'ece3', 38, 'ECE', '10:00:00', '13:00:00', 0, 2, 'LEAVE', '2018-03-07', 'EVEN', 2018),
('T', 'eeehod', 'eeeHOD', 37, 'EEE', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'eeestaff1', 'eee1', 38, 'EEE', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('T', 'eeestaff2', 'eee2', 39, 'EEE', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('NT', 'eeestaff3', 'eee3', 38, 'EEE', '10:00:00', '13:00:00', 0, 2, 'LEAVE', '2018-03-07', 'EVEN', 2018),
('T', 'mechhod', 'mechHOD', 37, 'MECH', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'mechstaff1', 'mech1', 38, 'MECH', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('T', 'mechstaff2', 'mech2', 39, 'MECH', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('NT', 'mechstaff3', 'mech3', 38, 'MECH', '10:00:00', '13:00:00', 0, 2, 'LEAVE', '2018-03-07', 'EVEN', 2018),
('T', 'civilhod', 'CIVILHOD', 37, 'CIVIL', '09:00:00', '15:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('T', 'civilstaff1', 'civil1', 38, 'CIVIL', '10:00:00', '13:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('T', 'civilstaff2', 'civil2', 39, 'CIVIL', '08:30:00', '17:00:00', 2, 2, 'ONTIME', '2018-03-07', 'EVEN', 2018),
('NT', 'civilstaff3', 'civil3', 38, 'CIVIL', '10:00:00', '13:00:00', 0, 2, 'LEAVE', '2018-03-07', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, 'OFFICE', '10:00:00', '17:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018),
('NT', 'office1', 'office1', 45, 'OFFICE', '10:00:00', '17:00:00', 1, 2, 'LATE', '2018-03-07', 'EVEN', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `temp_permission`
--

CREATE TABLE `temp_permission` (
  `date` date NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `cadre` enum('T','NT') NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `type` enum('PER','LEV','OD') DEFAULT NULL,
  `Reason` varchar(1000) NOT NULL DEFAULT 'Not Given '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_credentials`
--

CREATE TABLE `user_credentials` (
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `priority` enum('P','H','S','A') NOT NULL COMMENT 'P-PRINCIPAL , H- HOD, S- STAFFS,A- admin',
  `last_login` time DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `altered_time`
--
ALTER TABLE `altered_time`
  ADD KEY `cadre_ref` (`cadre`);

--
-- Indexes for table `CHEMISTRY_entry`
--
ALTER TABLE `CHEMISTRY_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `CIVIL_entry`
--
ALTER TABLE `CIVIL_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD UNIQUE KEY `staff_id` (`staff_id`);

--
-- Indexes for table `CSE_entry`
--
ALTER TABLE `CSE_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `default_time`
--
ALTER TABLE `default_time`
  ADD PRIMARY KEY (`cadre`);

--
-- Indexes for table `ECE_entry`
--
ALTER TABLE `ECE_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `EEE_entry`
--
ALTER TABLE `EEE_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `ENGLISH_entry`
--
ALTER TABLE `ENGLISH_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `fingerprint_details`
--
ALTER TABLE `fingerprint_details`
  ADD KEY `reference` (`staff_id`);

--
-- Indexes for table `IT_entry`
--
ALTER TABLE `IT_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `MATHS_entry`
--
ALTER TABLE `MATHS_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `MECH_entry`
--
ALTER TABLE `MECH_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `OFFICE_entry`
--
ALTER TABLE `OFFICE_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `overall_presence`
--
ALTER TABLE `overall_presence`
  ADD KEY `staffid_ref_overall_presence` (`staff_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD KEY `staffid_ref_permission` (`staff_id`);

--
-- Indexes for table `PHYSICS_entry`
--
ALTER TABLE `PHYSICS_entry`
  ADD KEY `staffid_ref_IT` (`staff_id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `temp_entry`
--
ALTER TABLE `temp_entry`
  ADD KEY `staffid_ref` (`staff_id`),
  ADD KEY `cadre_ref_temp` (`cadre`);

--
-- Indexes for table `temp_permission`
--
ALTER TABLE `temp_permission`
  ADD KEY `staffid_ref_permission` (`staff_id`);

--
-- Indexes for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD KEY `staffid_ref_user_credentials` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `altered_time`
--
ALTER TABLE `altered_time`
  ADD CONSTRAINT `cadre_ref` FOREIGN KEY (`cadre`) REFERENCES `default_time` (`cadre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CHEMISTRY_entry`
--
ALTER TABLE `CHEMISTRY_entry`
  ADD CONSTRAINT `CHE_REF` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CIVIL_entry`
--
ALTER TABLE `CIVIL_entry`
  ADD CONSTRAINT `staffid_ref_CIVIL` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counter`
--
ALTER TABLE `counter`
  ADD CONSTRAINT `staffid_ref_counter` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CSE_entry`
--
ALTER TABLE `CSE_entry`
  ADD CONSTRAINT `staffid_ref_CSE` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ECE_entry`
--
ALTER TABLE `ECE_entry`
  ADD CONSTRAINT `staffid_ref_ECE` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EEE_entry`
--
ALTER TABLE `EEE_entry`
  ADD CONSTRAINT `staffid_ref_EEE` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ENGLISH_entry`
--
ALTER TABLE `ENGLISH_entry`
  ADD CONSTRAINT `Eng_ref` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fingerprint_details`
--
ALTER TABLE `fingerprint_details`
  ADD CONSTRAINT `reference` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `IT_entry`
--
ALTER TABLE `IT_entry`
  ADD CONSTRAINT `staffid_ref_IT` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MATHS_entry`
--
ALTER TABLE `MATHS_entry`
  ADD CONSTRAINT `maths_ref` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MECH_entry`
--
ALTER TABLE `MECH_entry`
  ADD CONSTRAINT `staffid_ref_MECH` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `OFFICE_entry`
--
ALTER TABLE `OFFICE_entry`
  ADD CONSTRAINT `staffid_ref_office` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `overall_presence`
--
ALTER TABLE `overall_presence`
  ADD CONSTRAINT `staffid_ref_overall_presence` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission`
--
ALTER TABLE `permission`
  ADD CONSTRAINT `staffid_ref_permission` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PHYSICS_entry`
--
ALTER TABLE `PHYSICS_entry`
  ADD CONSTRAINT `PHY_ref` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `temp_entry`
--
ALTER TABLE `temp_entry`
  ADD CONSTRAINT `staffid_ref_temp` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `temp_permission`
--
ALTER TABLE `temp_permission`
  ADD CONSTRAINT `staffid_ref_temp_permission` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD CONSTRAINT `staffid_ref_user_credentials` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
