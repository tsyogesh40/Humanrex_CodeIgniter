-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2018 at 07:04 PM
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
  `mid_time` time DEFAULT NULL,
  `half_wrk` float NOT NULL,
  `full_wrk` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `altered_time`
--

INSERT INTO `altered_time` (`date`, `in_time`, `out_time`, `cadre`, `mid_time`, `half_wrk`, `full_wrk`) VALUES
('2018-02-01', '09:00:00', '17:30:00', 'T', '00:00:00', 0, 0),
('2018-02-01', '08:30:00', '05:30:00', 'NT', '00:00:00', 0, 0);

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('cse1', 'Csestaff1', 0, 0),
('cse2', 'Csestaff2', 0, 0),
('cse3', 'Csestaff3', 0, 0),
('CSEHOD', 'Csehod', 0, 0),
('ecehod', 'Ecehod', 0, 0),
('IT02', 'Prasanna', 0, 0),
('IT04', 'Arun', 0, 0),
('IT05', 'Yogesh T S', 0, 0),
('ITHOD', 'Ithod', 0, 0),
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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `default_time`
--

CREATE TABLE `default_time` (
  `cadre` enum('T','NT') NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `mid_time` time DEFAULT NULL,
  `half_wrk` float NOT NULL,
  `full_wrk` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Default time for Teaching and Non- teaching staffs';

--
-- Dumping data for table `default_time`
--

INSERT INTO `default_time` (`cadre`, `in_time`, `out_time`, `mid_time`, `half_wrk`, `full_wrk`) VALUES
('T', '10:00:00', '17:30:00', NULL, 0, 0),
('NT', '10:00:00', '17:30:00', NULL, 0, 0);

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `status` enum('LATE','ONTIME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `IT_entry`
--

INSERT INTO `IT_entry` (`cadre`, `name`, `staff_id`, `store_id`, `in_time`, `out_time`, `p_value`, `status`, `date`, `semester`, `year`) VALUES
('T', 'Yogesh', 'IT05', 2, '09:00:00', '04:00:00', 2, 'ONTIME', '2018-02-22', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '08:30:00', '13:00:00', 1, 'ONTIME', '2018-02-22', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '04:00:00', 2, 'ONTIME', '2018-02-22', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '08:30:00', '13:00:00', 1, 'ONTIME', '2018-02-22', 'EVEN', 2018),
('T', 'Yogesh', 'IT05', 2, '09:00:00', '04:00:00', 2, 'ONTIME', '2018-02-21', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '08:30:00', '13:00:00', 1, 'ONTIME', '2018-02-21', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '04:00:00', 2, 'ONTIME', '2018-02-21', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '08:30:00', '13:00:00', 1, 'ONTIME', '2018-02-21', 'EVEN', 2018),
('T', 'Yogesh', 'IT05', 2, '09:00:00', '04:00:00', 2, 'ONTIME', '2018-02-20', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, '08:30:00', '13:00:00', 1, 'ONTIME', '2018-02-20', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, '09:00:00', '04:00:00', 2, 'ONTIME', '2018-02-20', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, '08:30:00', '13:00:00', 1, 'ONTIME', '2018-02-20', 'EVEN', 2018);

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('Ecehod', 'ecehod', 'IT', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `date` date NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `in_time` time NOT NULL,
  `mid_time` time NOT NULL,
  `out_time` time NOT NULL,
  `type` enum('PER','LEV','OD') DEFAULT NULL,
  `Reason` varchar(1000) NOT NULL DEFAULT 'Not Given '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `outtime` time NOT NULL,
  `p_value` int(11) NOT NULL,
  `status` enum('LATE','ONTME') NOT NULL,
  `date` date NOT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('Csestaff1', 'cse1', 9, 'LI', 'IT', 'Associate Professor', 'T', 'M', 7373535614, 'cse1@vcet.ac.in', '2010-12-12'),
('Csestaff2', 'cse2', 4, 'LI', 'IT', 'AP-I', 'T', 'M', 7373535614, 'cse2@vcet.ac.in', '2010-12-12'),
('Csestaff3', 'cse3', 10, 'LI', 'IT', 'TA', 'NT', 'M', 7373535614, 'cse3@vcet.ac.in', '2010-12-12'),
('Csehod', 'CSEHOD', 10, 'LI', 'IT', 'Professor', 'T', 'M', 7373535614, 'csehod@vcet.ac.in', '2010-12-12'),
('Ecehod', 'ecehod', 12, 'LI', 'IT', 'Professor', 'T', 'M', 7373535614, 'ecehod@vcet.ac.in', '2020-12-12'),
('Prasanna', 'IT02', 3, 'LI', 'IT', 'AP-I', 'T', 'M', 1234567890, 'prasanna@vcet.ac.in', '2011-02-23'),
('Arun', 'IT04', 4, 'LI', 'IT', 'TA', 'NT', 'M', 9876543201, 'arun@vcet.ac.in', '2008-12-12'),
('Yogesh T S', 'IT05', 2, 'LI', 'IT', 'AP-I', 'T', 'M', 7373535614, 'yogesh@vcet.ac.in', '2010-10-10'),
('Ithod', 'ITHOD', 1, 'LI', 'IT', 'P', 'T', 'M', 9876543210, 'hod@vcet.ac.in', '2010-12-12'),
('Principal', 'PRIN', 9, 'LI', 'IT', 'Professor', 'T', 'F', 7373535614, 'principal@vcet.ac.in', '2010-12-12');

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
(61, 1, '{\"staff_id\":\"IT01\",\"in_time\":null,\"out_time\":null,\"date\":null,\"status\":null,\"phone\":null,\"designation\":null,\"email\":null,\"role\":\"1\",\"roleText\":\"System Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 64.0.3282.119', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', 'Linux', '2018-02-24 18:02:54');

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

INSERT INTO `tbl_users` (`userId`, `staff_id`, `dept`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'IT01', 'IT', 'admin@vcet.ac.in', '$2y$10$j9HPTqIJOp0/9TbRA5T8A.oIF6SxeC5b4xsXPBCOKX8iLwomItcya', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-02-19 12:03:18'),
(12, 'ITHOD', 'IT', 'hod@vcet.ac.in', '$2y$10$6e7ywIoJPkP42romAvrv..RAfdmu/OuCdRXWFdxg1dUvms1aUL1G2', 'Ithod', '9876543210', 3, 0, 1, '2018-02-23 11:22:47', 1, '2018-02-24 13:41:21'),
(13, 'IT05', 'IT', 'yogesh@vcet.ac.in', '$2y$10$tETgcHUKCjrxoHWlVEZFXOguKDTBaB7Q/ybOghUYYLTEhztu1C27i', 'Yogesh T S', '7373535614', 4, 0, 1, '2018-02-23 11:27:10', 1, '2018-02-24 14:12:25'),
(14, 'IT02', 'IT', 'prasanna@vcet.ac.in', '$2y$10$QXt9paOy33vZf8ghYJ62OuPN9/iObMlzF9jupTzzd3m6xi4O77q4G', 'Prasanna', '1234567890', 4, 0, 1, '2018-02-23 11:30:07', 1, '2018-02-24 13:51:29'),
(15, 'IT04', 'IT', 'arun@vcet.ac.in', '$2y$10$fNGD6YiUAdtzyZJCvAwo7.BkoOOuMfxhNn9.sNOf2Eaur5z5ktj0e', 'Arun', '9876543201', 4, 0, 1, '2018-02-23 11:31:17', NULL, NULL),
(16, 'PRIN', 'OFFICE', 'principal@vcet.ac.in', '$2y$10$mt/KsfUC1aZv6fG9pwcOS.F3DsFwYYpE5IuX9PKjQSJ6Q0Ppbjvim', 'Principal', '7373535614', 2, 0, 1, '2018-02-24 08:39:33', NULL, NULL),
(17, 'cse1', 'CSE', 'cse1@vcet.ac.in', '$2y$10$KYL9muzoGscBUUXYlPW/juc5URjF17rp7M9vWEobiyf5tsj/r1bSy', 'Csestaff1', '7373535614', 4, 0, 1, '2018-02-24 08:40:55', 1, '2018-02-24 13:00:34'),
(18, 'cse2', 'CSE', 'cse2@vcet.ac.in', '$2y$10$fnvzKJbBS3GZCdFZj3mLL.1aHcS/3o3i/E4N7tYLRNadSuyOm1tq.', 'Csestaff2', '7373535614', 4, 0, 1, '2018-02-24 08:41:58', NULL, NULL),
(19, 'CSEHOD', 'CSE', 'csehod@vcet.ac.in', '$2y$10$aTOAih2pf4C2kP.G3LuBaOe.ym8/HVMFYQFPOy9mFbrzyBg8DuFYG', 'Csehod', '7373535614', 3, 0, 1, '2018-02-24 08:45:49', NULL, NULL),
(20, 'cse3', 'CSE', 'cse3@vcet.ac.in', '$2y$10$6utf1yraJJNhPQceEcfULevVw4IhQK8GWSCzxO13wzB.2w2VAeG/u', 'Csestaff3', '7373535614', 4, 0, 1, '2018-02-24 08:49:51', NULL, NULL),
(21, 'ecehod', 'ECE', 'ecehod@vcet.ac.in', '$2y$10$OJtCEYngoO0o0JkTald6Guev6Lg2aOPG8bJBhuHQzbSZSNJcQLDsu', 'Ecehod', '7373535614', 3, 0, 1, '2018-02-24 09:16:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temp_entry`
--

CREATE TABLE `temp_entry` (
  `cadre` enum('T','NT') NOT NULL,
  `name` varchar(60) NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `store_id` int(3) NOT NULL,
  `dept` enum('IT','CSE','MECH','ECE','EEE','CIVIL') NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `p_value` int(2) NOT NULL DEFAULT '0' COMMENT '1- Morning entry 2, Evening Entry',
  `no_of_entry` int(1) NOT NULL DEFAULT '0',
  `status` enum('LATE','ONTIME') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `semester` enum('ODD','EVEN') NOT NULL,
  `year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_entry`
--

INSERT INTO `temp_entry` (`cadre`, `name`, `staff_id`, `store_id`, `dept`, `in_time`, `out_time`, `p_value`, `no_of_entry`, `status`, `date`, `semester`, `year`) VALUES
('T', 'Yogesh', 'IT05', 2, 'IT', '09:00:00', '04:00:00', 2, 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'Prasanna', 'IT02', 3, 'IT', '08:30:00', '13:00:00', 1, 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('T', 'Ithod', 'ITHOD', 1, 'IT', '09:00:00', '04:00:00', 2, 2, 'ONTIME', '2018-02-23', 'EVEN', 2018),
('NT', 'arun', 'IT04', 4, 'IT', '08:30:00', '13:00:00', 1, 2, 'ONTIME', '2018-02-23', 'EVEN', 2018);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
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
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
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
-- Constraints for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD CONSTRAINT `staffid_ref_user_credentials` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
