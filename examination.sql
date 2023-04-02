-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2023 at 07:32 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examination`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_name`, `Description`, `Location`) VALUES
(2, 'Faculty of Natural and Computational science', 'Description about natural and computational science faculty.', 'Block 99'),
(3, 'Faculty of Faculty of social science and humanitie', 'Description of Faculty of social science and humanities', 'Block 170'),
(4, 'Faculty of of business and economics', 'Description of Faculty of of business and economics', 'Block 201'),
(5, 'Faculty of agriculture and environmental science', 'Description about Faculty of agriculture and environmental science', 'Block 251'),
(8, 'College of medicine and health-science', 'Description of College of medicine and health-science', 'Block 99'),
(17, 'Faculty of Technology', 'Description of faculty of technology', 'Block 143');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `first_name`, `last_name`, `username`, `email`, `password`) VALUES
(1, 'Zewdie', 'Habtie', 'Zewdie', 'zewdiehabtie26@gmail.com', 'cfbf14ea7c2e3cfbc0bbdf912911b31c');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app`
--

DROP TABLE IF EXISTS `tbl_app`;
CREATE TABLE IF NOT EXISTS `tbl_app` (
  `app_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_app`
--

INSERT INTO `tbl_app` (`app_id`, `app_name`, `email`, `username`, `password`, `contact`, `added_date`, `updated_date`, `image_name`) VALUES
(1, 'Beyond Boundaries test Portal', 'info@beyondboundaries.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '9808778357', '2017-04-03', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

DROP TABLE IF EXISTS `tbl_course`;
CREATE TABLE IF NOT EXISTS `tbl_course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `department_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `study_year` int NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `department_id` (`department_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `study_year` (`study_year`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course_code`, `course_name`, `department_id`, `teacher_id`, `study_year`) VALUES
(2, 'CS101', 'Introduction to Computer', 4, 5, 1),
(3, 'CS201', 'Java programming', 4, 5, 2),
(4, 'CS202', 'Data Structure', 4, 6, 2),
(5, 'MAT201', 'Linear Aljebra', 2, 5, 2),
(6, 'CS202', 'OOP', 4, 7, 2),
(7, 'Em001', 'Emerging Technology', 4, 6, 2),
(8, 'C001', 'C++', 4, 6, 2),
(9, 'CS3021', 'Network and System Admin', 4, 37, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
CREATE TABLE IF NOT EXISTS `tbl_department` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) NOT NULL,
  `faculty_id` int NOT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `faculty_id` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `department_name`, `faculty_id`) VALUES
(2, 'Civil Engineering', 17),
(3, 'Information Technology', 17),
(4, 'Computer Science', 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_head`
--

DROP TABLE IF EXISTS `tbl_department_head`;
CREATE TABLE IF NOT EXISTS `tbl_department_head` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_head`
--

INSERT INTO `tbl_department_head` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `department_id`) VALUES
(1, 'Moges', 'Tsegaw', 'Moges', 'mogestsegaw@gmail.com', 'cfbf14ea7c2e3cfbc0bbdf912911b31c', 4),
(2, 'Mulatu', 'Gebeyaw', 'Mulatu', 'mulatu@gmail.com', 'cfbf14ea7c2e3cfbc0bbdf912911b31c', 2),
(3, 'Belaynew', 'Tesema', 'Belaynew', 'belay@gmail.com', 'cfbf14ea7c2e3cfbc0bbdf912911b31c', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam`
--

DROP TABLE IF EXISTS `tbl_exam`;
CREATE TABLE IF NOT EXISTS `tbl_exam` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `time_duration` int NOT NULL,
  `qns_per_set` int NOT NULL,
  `status` enum('created','started','completed') NOT NULL,
  `added_date` date NOT NULL,
  `exam_date` datetime NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exam`
--

INSERT INTO `tbl_exam` (`exam_id`, `course_id`, `time_duration`, `qns_per_set`, `status`, `added_date`, `exam_date`, `exam_type`) VALUES
(1, 3, 5, 36, 'completed', '2023-03-23', '2023-03-23 14:40:00', 'Exit Exam'),
(2, 4, 180, 10, 'completed', '2023-03-23', '2021-05-28 10:45:00', 'Exit Exam'),
(3, 2, 30, 4, 'completed', '2023-03-23', '2023-03-23 10:30:00', 'Exit Exam'),
(5, 5, 30, 5, 'completed', '2023-03-23', '2022-03-19 16:05:00', 'Exit Exam'),
(7, 6, 5, 2, 'completed', '2022-03-19', '2022-03-19 12:05:00', 'Test'),
(8, 5, 60, 5, 'completed', '2023-03-23', '2022-05-28 17:40:00', 'Exit Exam'),
(10, 3, 5, 5, 'completed', '2023-03-23', '2023-03-23 11:20:00', 'Exit Exam'),
(12, 7, 5, 2, 'completed', '2023-03-23', '2023-03-23 11:00:00', 'Exit Exam'),
(13, 4, 30, 5, 'completed', '2023-03-23', '2023-03-23 13:25:00', 'Exit Exam'),
(14, 3, 30, 3, 'completed', '2023-03-23', '2023-03-23 14:30:00', 'Quiz'),
(15, 9, 30, 14, 'completed', '2023-03-31', '2023-03-31 14:15:00', 'Exit Exam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam_activation_request`
--

DROP TABLE IF EXISTS `tbl_exam_activation_request`;
CREATE TABLE IF NOT EXISTS `tbl_exam_activation_request` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `request_time` datetime NOT NULL,
  `exam_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `request_status` varchar(255) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exam_activation_request`
--

INSERT INTO `tbl_exam_activation_request` (`request_id`, `student_id`, `request_time`, `exam_id`, `teacher_id`, `request_status`) VALUES
(23, 14, '2022-05-29 17:41:53', 1, 5, 'Activated'),
(22, 14, '2022-05-29 17:31:21', 1, 5, 'Discarded'),
(24, 14, '2022-05-29 20:26:45', 1, 5, 'Activated'),
(25, 14, '2022-05-29 20:52:35', 1, 5, 'Activated'),
(26, 14, '2022-05-29 20:52:39', 1, 5, 'Activated'),
(27, 14, '2022-05-29 20:52:45', 1, 5, 'Activated'),
(33, 14, '2022-05-29 21:08:47', 1, 5, 'Activated'),
(32, 14, '2022-05-29 21:08:43', 1, 5, 'Activated'),
(31, 14, '2022-05-29 21:08:39', 1, 5, 'Activated'),
(34, 14, '2022-05-29 21:08:49', 1, 5, 'Activated'),
(35, 14, '2022-05-30 13:15:20', 1, 5, 'Activated'),
(36, 14, '2022-05-30 13:15:23', 1, 5, 'Activated'),
(39, 14, '2022-06-03 15:05:12', 1, 5, 'Activated'),
(40, 14, '2022-06-03 15:07:42', 1, 5, 'Activated'),
(41, 14, '2022-06-03 16:28:14', 1, 5, 'Activated'),
(42, 14, '2022-06-03 16:28:18', 1, 5, 'Activated'),
(43, 14, '2022-06-03 19:07:16', 1, 5, 'Activated'),
(44, 14, '2022-06-03 19:07:35', 1, 5, 'Activated'),
(45, 14, '2022-06-03 19:08:28', 1, 5, 'Activated'),
(46, 14, '2022-06-03 19:08:32', 1, 5, 'Activated'),
(47, 14, '2022-06-03 19:56:23', 1, 5, 'Activated'),
(48, 8, '2023-03-23 09:58:41', 11, 5, 'Activated'),
(49, 8, '2023-03-23 10:00:09', 11, 5, 'Activated'),
(50, 8, '2023-03-23 10:02:09', 11, 5, 'Activated'),
(51, 8, '2023-03-23 10:03:51', 11, 5, 'Activated'),
(68, 8, '2023-03-23 16:11:19', 14, 5, 'Activated'),
(69, 9, '2023-03-30 16:50:54', 15, 37, 'Activated'),
(70, 9, '2023-03-30 16:56:07', 15, 37, 'Activated'),
(71, 57, '2023-03-31 11:33:43', 15, 37, 'Activated'),
(72, 57, '2023-03-31 11:34:20', 15, 37, 'Activated'),
(73, 57, '2023-03-31 12:45:54', 15, 37, 'Activated'),
(74, 57, '2023-03-31 14:09:45', 15, 37, 'Activated');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty`
--

DROP TABLE IF EXISTS `tbl_faculty`;
CREATE TABLE IF NOT EXISTS `tbl_faculty` (
  `faculty_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(150) NOT NULL,
  `time_duration` int NOT NULL,
  `qns_per_set` int NOT NULL,
  `total_english` int UNSIGNED NOT NULL,
  `total_math` int UNSIGNED NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_faculty`
--

INSERT INTO `tbl_faculty` (`faculty_id`, `faculty_name`, `time_duration`, `qns_per_set`, `total_english`, `total_math`, `is_active`, `added_date`, `updated_date`) VALUES
(1, 'Computer Science', 20, 8, 6, 2, 'yes', '2017-04-04', '2017-06-13'),
(2, 'Information Technology', 180, 8, 1, 7, 'yes', '2017-04-04', '2021-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty_dean`
--

DROP TABLE IF EXISTS `tbl_faculty_dean`;
CREATE TABLE IF NOT EXISTS `tbl_faculty_dean` (
  `dean_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `faculty_id` int NOT NULL,
  PRIMARY KEY (`dean_id`),
  KEY `faculty_id` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faculty_dean`
--

INSERT INTO `tbl_faculty_dean` (`dean_id`, `first_name`, `last_name`, `email`, `username`, `password`, `faculty_id`) VALUES
(3, 'Addisu', 'Worku', 'addisuworku@gmail.com', 'Addisu', 'cfbf14ea7c2e3cfbc0bbdf912911b31c', 17),
(8, 'Demlew', 'Melese', 'demlew@gmail.com', 'Demlew', 'cfbf14ea7c2e3cfbc0bbdf912911b31c', 8),
(9, 'Tadese', 'Kassa', 'tadese@gmail.com', 'Tadese', 'cfbf14ea7c2e3cfbc0bbdf912911b31c', 2),
(10, 'Yirga', 'Tadele', 'yrga@gmail.ocm', 'Yirga', 'cfbf14ea7c2e3cfbc0bbdf912911b31c', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invigilator`
--

DROP TABLE IF EXISTS `tbl_invigilator`;
CREATE TABLE IF NOT EXISTS `tbl_invigilator` (
  `exam_id` int NOT NULL,
  `teacher_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

DROP TABLE IF EXISTS `tbl_question`;
CREATE TABLE IF NOT EXISTS `tbl_question` (
  `question_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_id` varchar(50) NOT NULL,
  `question` longtext NOT NULL,
  `first_answer` varchar(255) NOT NULL,
  `second_answer` varchar(255) NOT NULL,
  `third_answer` varchar(255) NOT NULL,
  `fourth_answer` varchar(255) NOT NULL,
  `fifth_answer` varchar(255) NOT NULL,
  `answer` int NOT NULL,
  `reason` longtext NOT NULL,
  `marks` decimal(10,0) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` blob NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`question_id`, `exam_id`, `question`, `first_answer`, `second_answer`, `third_answer`, `fourth_answer`, `fifth_answer`, `answer`, `reason`, `marks`, `is_active`, `added_date`, `updated_date`, `image_name`) VALUES
(22, '1', '<p><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#333333\">In baseball, the batting average is defined as the ratio of a player&rsquo;s&nbsp;<em>hits</em>&nbsp;to&nbsp;<em>at bats</em>. If a player had anywhere from 4 to 6&nbsp;<em>at bats</em>&nbsp;in a recent game and had anywhere from 2 to 3&nbsp;<em>hits</em>&nbsp;in the same game, the player&rsquo;s actual batting average for that game could fall anywhere between</span></span></span></p>\r\n', '0.25 and 1.00  ', '0.25 and 0.75  ', '0.33 and 0.75  ', '0.33 and 0.50  ', '0.50 and 0.66  ', 3, '<p>1. The ratio of a batting average is a fraction. As you decrease the numerator or increase the denominator, the fraction becomes smaller. Likewise, as you increase the numerator or decrease the denominator, the fraction becomes larger. 2. In the case of a batting average, the numerator is &quot;hits&quot; (H) while the denominator is &quot;at bats&quot; (B). Thus, the ratio we are looking at is: H/B, where 2</p>\r\n', '2', 'yes', '2022-02-17', '2022-02-17', ''),
(23, '1', '<p><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#333333\">In a recent head-to-head run-off election, 12,000 absentee ballets were cast. 1/3 of the absentee ballets were thrown out and 1/4 of the remaining absentee ballets were cast for Candidate A. How many absentee votes did Candidate B receive?</span></span></span></span></p>\r\n', '2,000 ', '3,000  ', '6,000 ', '8,000  ', '9,000', 3, '1.	Starting with 12,000 ballets, 1/3 were thrown out, leaving 2/3 still valid:\r\n12,000 * (2/3) = 8,000 valid ballets.\r\n2.	Of those valid ballets, since 1/4 went to A, the other 3/4 must have gone to B since this is a head-to-head run-off election.\r\n8,000 * (3/4) = 6,000 valid ballets for Candidate B.\r\nThe correct answer is C.\r\n', '1', 'yes', '2017-06-15', '0000-00-00', ''),
(24, '1', '<p><span style=\"font-family:Times New Roman,Times,serif\">Last month a certain music club offered a discount to preferred customers. After&nbsp;the first compact disc purchased, preferred customers paid $3.99 for each<br />\r\nadditional compact disc purchased. If a preferred customer purchased a total of 6&nbsp;compact discs and paid $15.95 for the first compact disc, then the dollar amount<br />\r\nthat the customer paid for the 6 compact discs is equivalent to which of the&nbsp;following?</span></p>\r\n', '5(4,00)+15.90', '5(4,00)+15.95', '5(4,00)+16.00', '5(4,00-0.01)+15.90', '5(4,00-0.05)+15.95', 1, 'The cost of the 6 compact discs, with $15.95 for the first one and $3.99 for the other 5 discs, can be expressed as 5(3.99)+15.95 . It is clear from looking at the answer choices that some regrouping of the values is needed because none of the answer\r\nchoices uses $3.99 in the calculation. If $4.00 is used instead of $3.99, each one of the 5 additional compact discs is calculated at $0.01 too much, and the total cost is 5(0.01)=$0.05 too high. There is an\r\noverage of $0.05 that must be subtracted from the $15.95, or thus $15.95-$0.05=$15.90. Therefore, the cost can be expressed as 5(4.00) + 15.90.', '2', 'yes', '2017-06-15', '2017-06-15', ''),
(25, '1', '<p>The average (arithmetic mean) of the integers from 200 to 400, inclusive, is how<br />\r\nmuch greater than the average of the integers from 50 to 100, inclusive?</p>\r\n', '150', '175', '200', '225', '300', 4, 'In the list of integers from 200 to 400 inclusive, the middle value is 300. For every\r\ninteger above 300, there exists an integer below 300 that is the same distance away\r\nfrom 300; thus the average of the integers from 200 to 400, inclusive, will be kept\r\nat 300. In the same manner, the average of the integers from 50 to 100, inclusive,\r\nis 75. The difference is 300-75=225.', '2', 'yes', '2017-06-15', '2017-06-15', ''),
(27, '1', '<p>The product of all the prime numbers less than 20 is closest to which of the<br />\r\nfollowing powers of 10?</p>\r\n', '109 ', '108', '107 ', '106 ', '105', 3, 'The prime numbers less than 20 are 2, 3, 5, 7, 11, 13, 17, and 19. Their product is 9,699,690. This is closest to 10000000\r\n', '4', 'yes', '2017-06-15', '0000-00-00', ''),
(28, '1', '<p>If<strong><span style=\"color:#1abc9c\"> n</span></strong> is the product of the integers from <strong><span style=\"color:#1abc9c\">1</span></strong> to <strong><span style=\"color:#1abc9c\">8</span></strong>, inclusive, how many different prime<br />\nfactors greater than 1 does <span style=\"color:#1abc9c\"><strong>n</strong></span> have?</p>\n', 'Four', 'Five ', 'Six ', 'Seven', 'Eight', 1, '<p>If n is the product of the integers from 1 to 8, then its prime factors will be the prime numbers from 1 to 8. There are four prime numbers between <strong><span style=\"color:#1abc9c\">1 </span></strong>and <strong><span style=\"color:#1abc9c\">8</span></strong>: <span style=\"color:#e74c3c\">2, 3, 5</span>, and <span style=\"color:#e74c3c\">7</span>.</p>\n', '2', 'yes', '2021-06-05', '0000-00-00', ''),
(35, '1', '<p>Of the 50 researchers in a workgroup, 40 percent will be assigned to Team A and<br />\r\nthe remaining 60 percent to Team B. However, 70 percent of the researchers prefer<br />\r\nTeam A and 30 percent prefer Team B. What is the lowest possible number of<br />\r\nresearchers who will NOT be assigned to the team they prefer?</p>\r\n', '15', '17', '20', '25 ', '30', 1, 'The number of researchers assigned to Team A will be (0.40)(50)=20, and so 30 will be assigned to Team B. The number of researchers who prefer Team A (0.70)(50)=35 is , and the rest, 15, prefer Team B. If all 15 who prefer Team B are assigned to Team B, which is to have 30 researchers, then 15 who prefer Team A will need to be assigned to Team B. Alternatively, since there are only 20 spots on Team A, 35 âˆ’ 20 = 15 who prefer Team A but will have to go to Team B instead.', '4', 'yes', '2017-06-15', '0000-00-00', ''),
(36, '1', '<p>The positive two-digit integers x and y have the same digits, but in reverse order.<br />\r\nWhich of the following must be a factor of x + y?</p>\r\n', '6', '9', '10', '11', '14', 4, 'Let m and n be digits. If x = 10m + n, then y = 10n + m. Adding x and y gives x + y = (10m + n) + (10n + m) = 11m + 11n = 11(m + n), and therefore 11 is a factor of x + y.', '1', 'yes', '2017-06-15', '0000-00-00', ''),
(63, '1', '<p>Asurge in new home sales and a drop in weekly<br />\r\nunemployment <u>claims suggest that the economy might<br />\r\nnot be as weak as some analysts previously thought.</u></p>\r\n', 'claims suggest that the economy might not be as weak as some analysts previouslycthought', ' claims suggests that the economy might not be so weak as some analysts have previously thought ', 'claims suggest that the economy might not be as weak as have been previously thought by some analysts ', 'claims, suggesting about the economy that it might not be so weak as previously thought by some analysts ', 'claims, suggesting the economy might not be as weak as previously thought to be by some analysts', 1, 'The plural subject of this sentence {surge and drop)\r\nrequires a plural verb, suggest. The object of this\r\nverb, the clause beginning with that, should be\r\npresented in as clear and direct a manner as\r\npossible.\r\nA Correct. The plural subject is matched with\r\na plural verb.\r\nB The singular verb suggests does not match\r\nthe plural subject of the sentence.\r\nC The sentence offers no plural subject to fit\r\nthe passive verb have been thought.\r\nD This construction is awkward, wordy, and\r\nimprecise; it also lacks a main verb; there is\r\nno reason to use passive voice, and suggesting\r\nabout the economy that it might... introduces\r\nextra words that contribute nothing to the\r\nmeaning of this sentence fragment.\r\nE The passive construction makes this\r\nunnecessarily wordy; the lack of a main verb\r\nmakes this a sentence fragment.\r\nThe correct answer is A.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(65, '1', '<p>Warning that computers in the United States are not<br />\r\nsecure, the National Academy of Sciences has urged<br />\r\nthe nation to revamp computer security procedures,<br />\r\ninstitute new emergency response teams, <u>creating a<br />\r\nspecial nongovernment organization to take</u> charge of<br />\r\ncomputer security planning.</p>\r\n', 'creating a special nongovernment organization to take', 'creating a special non government organization that takes ', 'creating a special non government organization for taking ', 'and create a special non government organization for taking ', 'and create a special nongovernment organization to take', 5, 'This sentence contains a list of three elements,\r\nall of which should be parallel. The last element\r\nshould be preceded by the conjunction and. In\r\nthis sentence, the last element must be made\r\nparallel to the previous two: to (1) revamp computer\r\nsecurity procedures, (2) institute new emergency\r\nresponse iteams,,and{3) create a special\r\nnon government organization to take charge of\r\ncomputer security planning. Omitting and causes\r\nthe reader to anticipate still another element in\r\nthe series when there is none. Using the participle\r\ncreating not only violates parallelism but also\r\ncauses misreading since the participial phrase\r\ncould modify the first part of the sentence. To\r\ndoes not need to be repeated with institute and\r\ncreate because it is understood.\r\nCreating is not parallel to to revamp and\r\ninstitute; and is needed in this series.\r\nB Creating violates the parallelism of the\r\nprevious two elements; and is needed in this\r\nseries; since the organization does not yet\r\nexist, that takes is illogical.\r\nC Creating is not parallel to to revamp and\r\ninstitute\', and is needed in this series; to has\r\nthe sense of in order to, but/or taking is\r\nneither precise nor idiomatic.\r\nD In the construction create ...to take, the\r\nsense of to is in order to;for taking is not\r\nidiomatically correct.\r\nCorrect. The three elements in the series are\r\nparallel in this sentence, and the last is\r\npreceded by and.\r\nThe correct answer is E.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(67, '1', '<p>Retail sales rose 0.8 of 1 percent in August,<br />\r\nintensifying expectations <u>that personal spending in<br />\r\nthe Julv-September quarter more than doubled that<br />\r\nof</u> the 1.4 percent growth rate in personal spending<br />\r\nfor the previous quarter.</p>\r\n', 'that personal spending in the July-September quarter more than doubled that of ', 'that personal spending in the July-September quarter would more than double ', 'of personal spending in the July-September quarter, that it more than doubled ', 'of personal spending in the July-September quarter more than doubling that of ', 'of personal spending in the July-September quarter, that it would more than double that of', 2, 'The sentence explains the expectations that\r\nresulted from a past retail sales trend. Since\r\nexpectations look to the future but are not yet\r\nrealized, the relative clause explaining these\r\nexpectations should be conditional, employing\r\nthe auxiliary verb would.\r\nA The simple past-tense verb form does not\r\nexpress the forward-looking sense of\r\nexpectations.\r\nB Correct. By using the verb would double,\r\nthis concise sentence indicates that the\r\nexpectation has not yet been realized.\r\nC This construction is awkward, announcing\r\nthe topic { personal spending) and then\r\nelaborating in a relative clause that restates\r\nthis topic as //.\r\nD Although this option is not technically\r\nwrong,it is less clear and graceful than (B).\r\nE Like (C), this sentence is awkward and\r\nunnecessarily wordy, announcing the topic\r\nand then using an additional clause to\r\nelaborate on it.\r\nThe correct answer is B.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(68, '1', '<p>The Iroquois were primarily planters, <u>but supplementing</u><br />\r\ntheir cultivation of maize, squash, and beans with<br />\r\nfishing and hunting.</p>\r\n', 'but supplementing ', 'and had supplemented ', 'and even though they supplemented ', 'although they;supplemented ', 'but with supplementing', 4, 'The participle supplementing would normally be\r\nexpected to modify the first clause, describing or\r\nextending its meaning, but the logic of this\r\nsentence demands a contrast, not an extension.\r\nConsequently, the second part of the sentence\r\nmust be revised to emphasize the contrast\r\nproperly. The logic of the sentence also argues\r\nagainst a construction that would set the two\r\nclauses and the importance of their content equal\r\nwhen they clearly should not be. The best\r\nsolution is to have the main clause describe the\r\nprimary activity, and a subordinate clause,\r\nalthough they supplemented, describe the\r\nsupplementary activity.\r\nThe construction using supplementing\r\nfails to support the intended meaning of\r\nthe sentence.\r\nB And does not convey contrast; had\r\nsupplemented is the past perfect tense but\r\nthe simple past is required to match were.\r\nC And does not convey contrast and should be\r\nomitted; and even though creates a sentence\r\nfragment.\r\nD Correct. Using although creates a subordinate\r\nclause in this sentence and logically links that\r\nclause with the main clause; the simple past\r\nsupplemented parallels the simple past were.\r\nE But with is awkward and unclear*\r\nsupplementing is a modifier when a\r\ncontrasting clause is needed.\r\nThe correct answer is D.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(69, '1', '<p><u>As contrasted with the honevbee,</u>&nbsp;the yellow jacket<br />\r\ncan sting repeatedly without dying and carries a<br />\r\npotent venom that can cause intense pain.</p>\r\n', 'As contrasted with the honeybee, ', 'In contrast to the honeybee\'s,', 'Unlike the sting of the honeybee,', 'Unlike that of the honeybee, ', 'nlike the honeybee,', 5, 'The intent of the sentence is to contrast the\r\nhoneybee and the yellow jacket. Correct idioms\r\nfor such a contrast include in contrast with x,y; in\r\ncontrast to x,y; and unlike x,y. In all these idioms,\r\nx and y must be grammatically and logically\r\nparallel.As contrasted with is not a correct idiom.\r\nA As contrasted with is not a correct idiom.\r\nB Because of its apostrophe, the honeybee\'s is\r\nnot parallel to theyellow jacket.\r\nC The sting of the honeybee is not parallel to the\r\nyellow jacket.\r\nD That of the honeybee is not parallel to the\r\nyellow jacket.\r\nE Correct. This sentence uses a correct idiom,\r\nand the honeybee is properly parallel to the\r\nyellow jacket.\r\nThe correct answer is E.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(71, '1', '<p>New data from United States Forest Service ecologists show <u>that for every dollar<br />\r\nspent on controlled small-scale burning, forest thinning, and the training of firemanagement<br />\r\npersonnel, it saves seven dollars that would not be spent on having to<br />\r\nextinguish</u> big fires.</p>\r\n', 'that for every dollar spent on controlled small-scale burning, forest thinning, and the training of fire-management personnel, it saves seven dollars that would not be spent on having to extinguish ', 'that for every dollar spent on controlled small-scale burning, forest thinning, and the training of fire-management personnel, seven dollars are saved that would have been spent on extinguishing ', 'that for every dollar spent on controlled small-scale burning, forest thinning, and the training of fire-management personnel saves seven dollars on not having to extinguish ', 'for every dollar spent on controlled small-scale burning, forest thinning, and the training of fire-management personnel, that it saves seven dollars on not having to extinguish ', 'for every dollar spent on controlled small-scale burning, forest thinning, and the training of fire-management personnel, that seven dollars are saved that would not have been spent on extinguishing', 2, 'The pronoun it (it saves seven dollars) has no referent. Making seven dollars the\r\nsubject of the clause eliminates this problem, and it also fulfills a readerâ€™s\r\nexpectation that after the phrase beginning for every dollar another specific\r\namount will be given to balance it. This change in structure also allows the\r\nawkward and wordy clause that would not be spent on having to extinguish to be\r\nrewritten so that spent balances saved: seven dollars are saved that would have\r\nbeen spent on extinguishing, and the unnecessary having to is omitted.\r\nA It has no referent; not be spent is awkward; on having to extinguish is\r\nwordy.\r\nB Correct. This sentence properly uses seven dollars as the subject of the\r\nclause to balance every dollar in the introductory phrase; the phrasing is\r\nconcise and parallel.\r\nC Saves does not have a subject; construction is not a complete sentence;\r\nnot having to extinguish is wordy and awkward.\r\nD That introduces a subordinate rather than main clause, making a sentence\r\nfragment; it has no referent; not having to extinguish is wordy and\r\nawkward.\r\nE Introductory that makes a sentence fragment; that would not have been\r\nspent on extinguishing is awkward and illogical.\r\nThe correct answer is B.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(72, '1', '<p>Like the grassy fields and old pastures that the upland sandpiper needs for feeding<br />\r\nand nesting when it returns in May after wintering in the Argentine Pampas,<u> the<br />\r\nsandpipers vanishing in the northeastern United States is a result of residential<br />\r\nand industrial development and of changes in</u> farming practices.</p>\r\n', 'the sandpipers vanishing in the northeastern United States is a result of residential and industrial development and of changes in ', 'the bird itself is vanishing in the northeastern United States as a result of residential and industrial development and of changes in', 'that the birds themselves are vanishing in the northeastern United States is due to residential and industrial development and changes to ', 'in the northeastern United States, sandpipersâ€™ vanishing due to residential and industrial development and to changes in ', 'in the northeastern United States, the sandpipersâ€™ vanishing, a result of residential and industrial development and changing', 2, 'The comparison introduced by like must be logical and clear; the point of this\r\ncomparison is that both the habitat and the bird are disappearing for similar\r\nreasons. The comparison must use comparable grammatical components; the bird\r\nitself is a noun phrase and matches the noun phrases grassy fields and old\r\npastures.\r\nA Illogically compares the sandpipers vanishing to grassy fields and old\r\npastures; omits apostrophe in sandpipersâ€™ vanishing; wordy.\r\nB Correct. This sentence properly compares the bird itself to grassy fields\r\nand old pastures; is vanishing as the verb strengthens the sentence by\r\nmaking the comparison clearer.\r\nC Does not finish the comparison begun with like but instead substitutes a\r\nclause (that the birds themselves are vanishing).\r\nD Illogically compares the sandpipersâ€™ vanishing to grassy fields and old\r\npastures; creates a sentence fragment.\r\nE Illogically compares the sandpipersâ€™ vanishing to grassy fields and old\r\npastures; creates a sentence fragment.\r\nThe correct answer is B.', '4', 'yes', '2017-06-16', '0000-00-00', ''),
(74, '1', '<p>Paleontologists believe that fragments of a primate<br />\r\njawbone unearthed in Burma and estimated <u>at 40 to<br />\r\n44 million years old provide evidence of</u> a crucial step<br />\r\nalong the evolutionary path that led to human beings.</p>\r\n', 'at 40 to 44 million years old provide evidence of ', 'as being 40 to 44 million years old provides evidence of ', 'that it is 40 to 44 million years old provides evidence of what was ', 'to be 40 to 44 million years old provide evidence of ', 'as 40 to 44 million years old provides evidence of what was', 4, 'The verb estimated should be followed by the\r\ninfinitive to be, not the prepositionatâ€”unless the\r\nwriter intends to indicate a location at which\r\nsomeone made the estimate. The jawbone\r\nfragments were estimated to be a certain age. The\r\nplural subject fragments requires the plural verb\r\nprovide.\r\nA Estimated is incorrectly followed by at.\r\nB Estimated should be followed by to be, not as\r\nbeing;, the singular verb provides incorrectly\r\nfollows the plural subject fragments.\r\nC Introducing a clause, that it is... , creates an\r\nungrammatical sentence; the singular verb\r\nprovides does not agree with the plural\r\nsubject fragments.\r\nD Correct. In this sentence, the verb estimated\r\nis correctly followed by the infinitive to be.\r\nE The singular verb provides does not match\r\nthe plural subject fragments.\r\nThe correct answer is D.', '4', 'yes', '2017-06-16', '0000-00-00', ''),
(77, '1', '<p>The Supreme Court has ruled that public universities can collect student activity<br />\r\nfees even <u>with students&rsquo; objections to particular activities, so long as the groups<br />\r\nthey give money to will be</u> chosen without regard to their views.</p>\r\n', 'with studentsâ€™ objections to particular activities, so long as the groups they give money to will be ', 'if they have objections to particular activities and the groups that are given the money are', 'if they object to particular activities, but the groups that the money is given to have to be ', 'from students who object to particular activities, so long as the groups given money are ', 'though students have an objection to particular activities, but the groups that are given the money be', 4, 'The underlined portion of the sentence fails to establish a clear relationship among\r\nuniversities, students, and groups. To which of these three does they refer? It\r\nwould appear that the universities must give the money, but they does not have a\r\nreferent. Furthermore, they is followed by their views, and in this case their must\r\nrefer to groups. Wordy and awkward phrasing as well as an unnecessary shift in\r\nverb tense (will be chosen) compound the difficulty of understanding this sentence\r\nin its original form.\r\nA With studentsâ€™ objections . . . is awkward and dense; they does not have a\r\nreferent; the future will be is incorrect since the Supreme Court has already\r\nruled.\r\nB Referent for they is student activity fees, which cannot possibly have\r\nobjections . . .; the use of and is illogical.\r\nC They refers to student activity fees rather than students; but does not\r\nhave the requisite sense of with the provision that; have to be is wordy.\r\nD Correct. In this sentence, from students who object is clear and\r\nidiomatic; so long as is used appropriately; groups given money eliminates\r\nthe problem of a pronoun without a referent; are is the proper tense.\r\nE Have an objection is an unnecessarily wordy way to say object; the verb be\r\ndoes not complete the latter part of the sentence.\r\nThe correct answer is D.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(79, '1', '<p>As an actress and, more importantly, as a teacher of acting, <u>Stella Adler was one of<br />\r\nthe most influential artists in the American theater, who trained several<br />\r\ngenerations of actors including Marlon</u> Brando and Robert De Niro.</p>\r\n', '(A) Stella Adler was one of the most influential artists in the American theater, who trained several generations of actors including ', '(B) Stella Adler, one of the most influential artists in the American theater, trained several generations of actors who include ', '(C) Stella Adler was one of the most influential artists in the American theater, training several generations of actors whose ranks included ', '(D) one of the most influential artists in the American theater was Stella Adler, who trained several generations of actors including ', '(E) one of the most influential artists in the American theater, Stella Adler, trained several generations of actors whose ranks included', 3, 'The original sentence contains a number of modifiers, but not all of them are\r\ncorrectly expressed. The clause who trained . . . describes Stella Adler, yet a relative\r\nclause such as this one must be placed immediately after the noun or pronoun it\r\nmodifies, and this clause follows theater rather than Adler. Replacing who trained\r\nwith training corrects the error because the phrase training . . . modifies the whole\r\npreceding clause rather than the single preceding noun. Several generations of\r\nactors including shows the same error in reverse; including modifies the whole\r\nphrase, but the two actors named are not generations of actors. The more limiting\r\nclause whose ranks included (referring to actors) is appropriate here.\r\nA Relative (who) clause follows theater rather than Adler; including refers\r\nto generations of actors, when the reference should be to actors only.\r\nB This construction, in which the subject is both preceded and followed by\r\nmodifiers, is awkward; the verbs should be consistently in the past tense,\r\nbut include is present tense.\r\nC Correct. In this sentence, substituting training for who trained and\r\nwhose ranks included for including eliminates the modification errors.\r\nD Introductory modifier must be immediately followed by Stella Adler, not\r\none . . .; including refers to generations of actors rather than to actors only.\r\nE Introductory modifier must be immediately followed by Stella Adler, not\r\none.\r\nThe correct answer is C.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(80, '1', '<p>In the past the country of Malvernia has relied heavily on imported oil. Malvernia<br />\r\nrecently implemented a program to convert heating systems from oil to natural<br />\r\ngas. Malvernia currently produces more natural gas each year than it uses, and oil<br />\r\nproduction in Malvernian oil fields is increasing at a steady pace. If these trends in<br />\r\nfuel production and usage continue, therefore, Malvernian reliance on foreign<br />\r\nsources for fuel is likely to decline soon.<br />\r\nWhich of the following would it be most useful to establish in evaluating the<br />\r\nargument?</p>\r\n', 'When, if ever, will production of oil in Malvernia outstrip production of natural gas?', 'Is Malvernia among the countries that rely most on imported oil? ', 'What proportion of Malverniaâ€™s total energy needs is met by hydroelectric, solar, and nuclear power? ', 'Is the amount of oil used each year in Malvernia for generating electricity and fuel for transportation increasing? ', 'Have any existing oil-burning heating systems in Malvernia already been converted to natural-gas-burning heating systems?', 4, 'Situation:-\r\nMalvernia has relied heavily on imported oil, but recently began a\r\nprogram to convert heating systems from oil to natural gas.\r\nMalvernia produces more natural gas than it uses, so it will\r\nprobably reduce its reliance on imported oils if these trends continue.\r\nReasoning:-\r\nWhich option provides the information that it would be most\r\nuseful to know in evaluating the argument? In other words, we are\r\nlooking for the option whichâ€”depending on whether it was\r\nanswered yes or noâ€”would either most weaken or most strengthen\r\nthe argument. The argument indicates that Malvernia will be using\r\nless oil for heating and will be producing more oil domestically. But\r\nthe conclusion that Malverniaâ€™s reliance on foreign oil will decline,\r\nassuming the current trends mentioned continue, would be\r\nseriously undermined if there was something in the works that was\r\nbound to offset these trends, for instance, if it turned out that the\r\ncountryâ€™s need for oil was going to rise drastically in the coming\r\nyears.\r\nA Since both counteract the need for imported oil, it makes little difference\r\nto the argument whether domestic oil production exceeds domestic natural\r\ngas.\r\nB Whether there are many countries that rely more on foreign oil than\r\nMalvernia would have little impact on whether Malverniaâ€™s need for foreign\r\noil can be expected to decline.\r\nC Since there is no information in the argument about whether Malvernia\r\ncan expect an increase or decrease from these other energy sources, it does\r\nnot matter how much they now provide.\r\nD Correct. This option provides the information that it would be most\r\nuseful to know in evaluating the argument.\r\nE The argument tells us that a program has begun recently to convert\r\nheating systems from oil to gas. So, even if no such conversions have been\r\ncompleted, the argument still indicates that they can be expected to occur.\r\nThe correct answer is D.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(81, '1', '<p>Exposure to certain chemicals commonly used in elementary schools as cleaners or<br />\r\npesticides causes allergic reactions in some children. Elementary school nurses in<br />\r\nRenston report that the proportion of schoolchildren sent to them for treatment of<br />\r\nallergic reactions to those chemicals has increased significantly over the past ten<br />\r\nyears. Therefore, either Renston&rsquo;s schoolchildren have been exposed to greater<br />\r\nquantities of the chemicals, or they are more sensitive to them than schoolchildren<br />\r\nwere ten years ago.<br />\r\nWhich of the following is an assumption on which the argument depends?</p>\r\n', 'The number of school nurses employed by Renstonâ€™s elementary schools has not decreased over the past ten years. ', 'Children who are allergic to the chemicals are no more likely than other children to have allergies to other substances. ', 'Children who have allergic reactions to the chemicals are not more likely to be sent to a school nurse now than they were ten years ago. ', 'The chemicals are not commonly used as cleaners or pesticides in houses and apartment buildings in Renston. ', 'Children attending elementary school do not make up a larger proportion of Renstonâ€™s population now than they did ten years ago.', 3, 'Argument Construction\r\nSituation:-\r\nSome children have allergic reactions to some of the chemicals\r\ncommonly used in elementary schools as cleaners and pesticides.\r\nThe number of children sent to elementary school nurses in\r\nRenston for allergic reactions to such chemicals has risen\r\nsignificantly over the past ten years.\r\nReasonong:-\r\nWhat must the argument assume? The argumentâ€™s conclusion\r\npresents just two alternatives: either the children are exposed to\r\nmore of the chemicals than children in earlier years, or they are\r\nmore sensitive. But there is a third possible explanation for the\r\nsignificant increase in school-nurse visits that the school nurses\r\nhave reported: that children are just more inclined to go to the\r\nschool nurse when they experience an allergic reaction than were\r\nchildren several years ago. For the conclusion to follow from its\r\npremises, the argument must assume that this is not the correct explanation.\r\n\r\nA If the number of elementary school nurses in Renston elementary schools\r\nhad decreased over the past ten years, that would in no way explain the rise\r\nin the proportion of children reporting to school nurses for allergic\r\nreactions.\r\nB Only school-nurse visits for allergic reactions to the cleaners and\r\npesticides used in elementary schools are in question in the argument. Of\r\ncourse there could be school-nurse visits for allergic reactions to other\r\nthings, but that issue does not arise in the argument.\r\nC Correct. This can be seen by considering whether the argument would\r\nwork if we assume that this were false, i.e., that a school-nurse visit is more\r\nlikely in such cases. As noted above, this provides an alternative to the two\r\nexplanations that the conclusion claims are the sole possibilities.\r\nD This does not need to be assumed by the argument. The argumentâ€™s\r\nconclusion suggests that children may in recent years have had greater\r\nexposure to the chemicals, not that this exposure has occurred exclusively in\r\nthe schools. The argument does not rely on this latter assumption.\r\nE The argument does not need to make this assumption. The argument is\r\nframed in terms of proportions of children having school-nurse visits for\r\ncertain allergic reactions. How many children there are or what proportion\r\nsuch children are of Renstonâ€™s total population is not directly relevant to the\r\nargument.\r\nThe correct answer is C.\r\n', '4', 'yes', '2017-06-16', '0000-00-00', ''),
(82, '1', '<p>Commentator: The theory of trade retaliation states that countries closed out of<br />\r\nany of another country&rsquo;s markets should close some of their own markets to the<br />\r\nother country in order to pressure the other country to reopen its markets. If every<br />\r\ncountry acted according to this theory, no country would trade with any other.<br />\r\nThe commentator&rsquo;s argument relies on which of the following assumptions?</p>\r\n', 'No country actually acts according to the theory of trade retaliation. ', 'No country should block any of its markets to foreign trade. ', 'Trade disputes should be settled by international tribunal. ', 'For any two countries, at least one has some market closed to the other. ', 'Countries close their markets to foreigners to protect domestic producers.', 4, 'Situation:- \r\nThe theory of trade retaliation is explained as the action and\r\nreaction of closing markets between trading nations; no country\r\nwould ever trade with another, the observation is offered, if every\r\ncountry acted according to the theory.\r\nReasoning:-\r\nWhat assumption underlies this argument? What makes the\r\ncommentator conclude that no country would be trading if the\r\ntheory were operative? The commentator must perceive of some\r\ncondition as a given here. The argument assumes an initial action,\r\na countryâ€™s closing of a market to a trading partner, that is followed\r\nby a reaction, the retaliatory closing of a market by that partner. In\r\nthis unending pattern of action-reaction, at least one of the two\r\ncountries must have a market closed to the other.\r\n\r\nA The argument does not assume that no country acts according to the\r\ntheory, just that not all countries do so.\r\nB The commentatorâ€™s argument is about what the theory of trade retaliation\r\npredicts, not about what trade policies countries ought to follow, and a\r\nstatement about the latter is not an assumption for the former.\r\nC This alternative scenarioâ€”trade disputes settled by international tribunal\r\nrather than by trade retaliationâ€”plays no role in the argument.\r\nD Correct. This statement properly identifies the assumption required to\r\ncreate the never-ending action-reaction pattern.\r\nE The argument does not pertain to countriesâ€™ initial reasons for closing\r\ntheir markets to foreign trade, only to the consequences of doing so.\r\nThe correct answer is D.', '3', 'yes', '2017-06-16', '0000-00-00', ''),
(85, '1', '<p>Networks of blood vessels in bats&rsquo; wings serve only to disperse heat generated in<br />\r\nflight. This heat is generated only because bats flap their wings. Thus<br />\r\npaleontologists&rsquo; recent discovery that the winged dinosaur Sandactylus had similar<br />\r\nnetworks of blood vessels in the skin of its wings provides evidence for the<br />\r\nhypothesis that Sandactylus flew by flapping its wings, not just by gliding.<br />\r\nIn the passage, the author develops the argument by</p>\r\n', 'forming the hypothesis that best explains several apparently conflicting pieces of evidence ', 'reinterpreting evidence that had been used to support an earlier theory', 'using an analogy with a known phenomenon to draw a conclusion about an unknown phenomenon ', 'speculating about how structures observed in present-day creatures might have developed from similar structures in creatures now extinct ', 'pointing out differences in the physiological demands that flight makes on large, as opposed to small, creatures', 3, 'Argument Evaluation\r\nSituation:-\r\nThe network of blood vessels in batsâ€™ wings is compared with a\r\nsimilar structure in the wings of the dinosaur Sandactylus to\r\nexplain how the dinosaur flew.\r\nReasoning:-\r\nHow is this argument developed? The author first shows that a\r\nphysical characteristic of batsâ€™ wings is directly related to their style\r\nof flight. The author then argues that the similar structure found in\r\nthe wings of Sandactylus is evidence that the dinosaur had a style\r\nof flight similar to that of bats. The structure of this argument is a\r\ncomparison, or analogy, between a known phenomenon (bats) and\r\nan unknown one (Sandactylus).\r\nA The evidence of the blood vessels in the wings does not conflict with other\r\nevidence.\r\nB The evidence of the blood vessels in the wings is used to support only one\r\ntheoryâ€”that Sandactylus flew by flapping its wings as well as by gliding; no\r\nevidence is discussed in relation to any earlier theory.\r\nC Correct. This statement properly identifies how the argument compares\r\nthe wings of bats and of Sandactylus in order to draw a conclusion about\r\nhow the dinosaur flew.\r\nD The argument is not about how the structures in the bats developed from\r\nthe structures in the dinosaurs, but rather about how Sandactylus flew.\r\nE The comparison between bats and Sandactylus points out similarities, not\r\ndifferences.\r\nThe correct answer is C.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(86, '1', '<p>Keith: Compliance with new government regulations requiring the installation of<br />\r\nsmoke alarms and sprinkler systems in all theaters and arenas will cost the<br />\r\nentertainment industry $25 billion annually. Consequently, jobs will be lost and<br />\r\nprofits diminished. Therefore, these regulations will harm the country&rsquo;s economy.<br />\r\nLaura: The $25 billion spent by some businesses will be revenue for others. Jobs<br />\r\nand profits will be gained as well as lost.<br />\r\nLaura responds to Keith by</p>\r\n', 'demonstrating that Keithâ€™s conclusion is based on evidence that is not relevant to the issue at hand', 'challenging the plausibility of the evidence that serves as the basis for Keithâ€™s argument ', 'suggesting that Keithâ€™s argument overlooks a mitigating consequence ', 'reinforcing Keithâ€™s conclusion by supplying a complementary interpretation of the evidence Keith cites ', 'agreeing with the main conclusion of Keithâ€™s argument but construing that conclusion as grounds for optimism rather than for pessimism', 3, 'Argument Construction\r\nSituation:-\r\nKeith argues that the cost of new regulations will result in a loss of\r\njobs and profits, hurting the national economy. Laura points out\r\nthat while one industry will suffer, others will gain by supplying the\r\ngoods and services required by the regulations.\r\nResoning:-\r\nWhat is the strategy Laura uses in the counterargument? Laura\r\nuses the same evidence, the $25 billion spent on meeting new\r\nregulations, but comes to a different conclusion. While Keith\r\nfocuses on the losses to one industry, Laura looks at the gains to\r\nother industries. By suggesting a consequence that Keith did not\r\nmention, she places the outcome in a more positive light.\r\nA Laura accepts the relevance of Keithâ€™s evidence and uses it herself when\r\nshe replies that the $25 billion spent by some businesses will be revenue for\r\nothers.\r\nB Laura does not challenge Keithâ€™s evidence; she uses the same evidence as\r\nthe basis of her own argument.\r\nC Correct. This statement properly identifies the strategy Laura employs in\r\nher counterargument. Laura points out that Keith did not consider that, in\r\nthis case, losses for one industry mean gains for others.\r\nD Laura rejects rather than reinforces Keithâ€™s conclusion; while he notes the\r\nlosses in jobs and profits that will harm the economy, she points out that\r\njobs and profits will be gained as well as lost.\r\nE Laura does not agree with Keithâ€™s main conclusion that the regulations\r\nwill harm the national economy; she argues instead that gains in other\r\nindustries will compensate for the losses in one industry.\r\nThe correct answer is C.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(87, '1', '<p>A certain cultivated herb is one of a group of closely related plants that thrive in<br />\r\nsoil with high concentrations of metals that are toxic to most other plants.<br />\r\nAgronomists studying the growth of this herb have discovered that it produces<br />\r\nlarge amounts of histidine, an amino acid that, in test-tube solutions, renders these<br />\r\nmetals chemically inert. Hence, the herb&rsquo;s high histidine production must be the<br />\r\nkey feature that allows it to grow in metal-rich soils.<br />\r\nIn evaluating the argument, it would be most important to determine which of the<br />\r\nfollowing?</p>\r\n', '(A) Whether the herb can thrive in soil that does not have high concentrations of the toxic metals ', '(B) Whether others of the closely related group of plants also produce histidine in large quantities ', '(C) Whether the herbâ€™s high level of histidine production is associated with an unusually low level of production of some other amino acid ', '(D) Whether growing the herb in soil with high concentrations of the metals will, over time, reduce their concentrations in the soil ', '(E) Whether the concentration of histidine in the growing herb declines as the plant approaches maturity', 2, 'Argument Evaluation\r\nSituation:-\r\nA certain herb and closely related species thrive in soil full of\r\nmetals toxic to most plants. The herb produces much histidine,\r\nwhich makes those metals chemically inert. Histidine production,\r\ntherefore, is largely what accounts for the herbâ€™s thriving in metalrich\r\nsoils.\r\nReasoning:-\r\nWhat evidence would help determine whether the herbâ€™s histidine\r\nproduction is what enables it to thrive in metal-rich soils? The\r\nargument is that since the herbâ€™s histidine chemically neutralizes\r\nthe metals that are toxic to most plants, it must explain why the\r\nherb can thrive in metal-rich soils. To evaluate this argument, it\r\nwould be helpful to know about the relationship between other\r\nclosely related plant speciesâ€™ histidine production and the ability to\r\nthrive in metal-rich soils. It would also be helpful to know about\r\nany other factors that might plausibly explain why the herb can thrive in those soils.\r\n\r\nA Whether or not the herb thrives in metal-free soils, histidine production\r\ncould enable it to thrive in soils that contain toxic metals.\r\nB Correct. If the closely related plants do not produce much histidine,\r\nwhatever other factor allows them to thrive in metal-rich soils would likely\r\naccount for why the herb thrives in those soils as well.\r\nC The given information suggests no particular reason to suppose that a low\r\nlevel of some unspecified amino acid would enable a plant to thrive in\r\nmetal-rich soils.\r\nD The herb might absorb metals from any metal-rich soil it grows in,\r\nregardless of why it thrives in that soil.\r\nE Whether or not histidine concentrations in the herb decline as it\r\napproaches maturity, there could still be enough histidine in the growing\r\nherb to neutralize the metals and explain why it can grow in metal-rich soil.\r\nThe correct answer is B.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(88, '1', '<p>Many people suffer an allergic reaction to certain sulfites, including those that are<br />\r\ncommonly added to wine as preservatives. However, since there are several<br />\r\nwinemakers who add sulfites to none of the wines they produce, people who would<br />\r\nlike to drink wine but are allergic to sulfites can drink wines produced by these<br />\r\nwinemakers without risking an allergic reaction to sulfites.<br />\r\nWhich of the following is an assumption on which the argument depends?</p>\r\n', 'These winemakers have been able to duplicate the preservative effect produced by adding sulfites by means that do not involve adding any potentially allergenic substances to their wine. ', 'Not all forms of sulfite are equally likely to produce the allergic reaction. ', 'Wine is the only beverage to which sulfites are commonly added. ', 'Apart from sulfites, there are no substances commonly present in wine that give rise to an allergic reaction. ', 'Sulfites are not naturally present in the wines produced by these winemakers in amounts large enough to produce an allergic reaction in someone who drinks these wines.', 5, 'Argument Construction\r\nSituation:-\r\nPeople who are allergic to certain sulfites can avoid risking an\r\nallergic reaction by drinking wine from one of the several producers\r\nthat does not add sulfites.\r\nReasoning:-\r\nOn what assumption does the argument depend? Drinking wine to\r\nwhich no sulfites have been added will not prevent exposure to\r\nsulfites if, for instance, sulfites occur naturally in wines. In\r\nparticular, if the wines that do not have sulfites added have sulfites\r\npresent naturally in quantities sufficient to produce an allergic\r\nreaction, drinking these wines will not prevent an allergic reaction.\r\nThe argument therefore depends on assuming that this is not the\r\ncase.\r\nA The argument does not require this because the conclusion does not\r\naddress allergic reactions to substances other than sulfites.\r\nB The argument specifically refers to â€œcertain sulfitesâ€ producing allergic\r\nreactions. It is entirely compatible with certain other forms of sulfites not\r\nproducing allergic reactions in anyone.\r\nC This is irrelevant. The argument does not claim that one can avoid having\r\nan allergic reaction to sulfites from any source just by restricting oneâ€™s wine\r\nconsumption to those varieties to which no sulfites have been added.\r\nD Once again, the argumentâ€™s conclusion does not address allergic reactions\r\nto substances other than sulfites in wine.\r\nE Correct. The argument relies on this assumption.\r\nThe correct answer is E.', '2', 'yes', '2017-06-16', '0000-00-00', '');
INSERT INTO `tbl_question` (`question_id`, `exam_id`, `question`, `first_answer`, `second_answer`, `third_answer`, `fourth_answer`, `fifth_answer`, `answer`, `reason`, `marks`, `is_active`, `added_date`, `updated_date`, `image_name`) VALUES
(89, '1', '<p>Businesses are suffering because of a lack of money available for development<br />\r\nloans. To help businesses, the government plans to modify the income-tax<br />\r\nstructure in order to induce individual taxpayers to put a larger portion of their<br />\r\nincomes into retirement savings accounts, because as more money is deposited in<br />\r\nsuch accounts, more money becomes available to borrowers.<br />\r\nWhich of the following, if true, raises the most serious doubt regarding the<br />\r\neffectiveness of the government&rsquo;s plan to increase the amount of money available<br />\r\nfor development loans for businesses?</p>\r\n', '(A) When levels of personal retirement savings increase, consumer borrowing always increases correspondingly. ', '(B) The increased tax revenue the government would receive as a result of business expansion would not offset the loss in revenue from personal income taxes during the first year of the plan. ', '(C) Even with tax incentives, some people will choose not to increase their levels of retirement savings. ', '(D) Bankers generally will not continue to lend money to businesses whose prospective earnings are insufficient to meet their loan repayment schedules. ', '(E) The modified tax structure would give all taxpayers, regardless of their incomes, the same tax savings for a given increase in their retirement savings.', 1, 'Evaluation of plan\r\nSituation:-\r\nBecause the lack of available money for development loans is\r\nharming businesses, the government plans to modify the incometax\r\nstructure, encouraging taxpayers to put more money into\r\nretirement accounts. This plan is intended to ensure that with more\r\nmoney put into these accounts, more money will in turn be\r\navailable to business borrowers.\r\nReasoning:-\r\nWhat potential flaw in this plan might prevent it from being\r\neffective? What is the expectation behind the plan? The\r\ngovernmentâ€™s plan supposes that the money invested in retirement\r\naccounts will be available to business borrowers in the form of\r\ndevelopment loans. Consider what circumstances might hinder that\r\navailability. What if consumer borrowers compete with businesses?\r\nIf it is known that, historically, increased savings in personal\r\nretirement accounts corresponds with increased consumer\r\nborrowing, then the governmentâ€™s effort to target businesses as the\r\nbeneficiaries of this plan could well fail.\r\nA Correct. This statement properly identifies a reason that the\r\ngovernmentâ€™s plan could be less effective in meeting its goal.\r\nB A predicted revenue shortfall does not directly affect the planâ€™s\r\neffectiveness in reaching its stated goal, and might be deemed an acceptable\r\ncost of achieving that goal.\r\nC As long as the total amount deposited in personal retirement accounts\r\nincreases sufficiently, the decision of some people not to increase their\r\ncontributions will not keep the plan from achieving its goal.\r\nD The plan would increase the money available specifically for development\r\nloans, not existing loans.\r\nE The universal tax savings does not affect the effectiveness of the plan.\r\nThe correct answer is A.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(91, '1', '<p>Environmentalist: The commissioner of the Fish and Game Authority would have<br />\r\nthe public believe that increases in the number of marine fish caught demonstrate<br />\r\nthat this resource is no longer endangered. This is a specious argument, as<br />\r\nunsound as it would be to assert that the ever-increasing rate at which rain forests<br />\r\nare being cut down demonstrates a lack of danger to that resource. The real cause<br />\r\nof the increased fish-catch is a greater efficiency in using technologies that deplete<br />\r\nresources.<br />\r\nThe environmentalist&rsquo;s statements, if true, best support which of the following as a<br />\r\nconclusion?</p>\r\n', 'The use of technology is the reason for the increasing encroachment of people on nature. ', 'It is possible to determine how many fish are in the sea in some way other than by catching fish. ', 'The proportion of marine fish that are caught is as high as the proportion of rain forest trees that are cut down each year. ', 'Modern technologies waste resources by catching inedible fish. ', 'Marine fish continue to be an endangered resource.', 5, 'Argument Construction\r\nSituation:-\r\nA public official argues that increased catches show that marine\r\nfish are no longer endangered. An environmentalist attacks the\r\nposition and cites technology as the cause of the increased catch.\r\nReasoning:-\r\nWhat conclusion do the environmentalistâ€™s statements support?\r\nThe environmentalist casts doubt by saying the commissioner\r\nwould have the public believe that the increased catch shows that\r\nthe fish are no longer endangered; the phrasing indicates that the\r\nenvironmentalist believes just the reverse. The environmentalist\r\ndoes believe the marine fish are endangered, and, after attacking\r\nthe commissionerâ€™s argument as specious, or false, and offering an\r\nanalogy to make that argument look ridiculous, the\r\nenvironmentalist gives an alternate explanation for the increased\r\ncatch that is consistent with that belief.\r\nA Although the environmentalist claims that technology causes peopleâ€™s\r\ngreater encroachment on nature in this single instance, there is nothing in\r\nthe argument to suggest that such encroachment caused by technology is a\r\ngeneral trend.\r\nB The environmentalistâ€™s claims imply that the number of fish caught is not\r\na reliable indicator of how many are left in the ocean but do not give any\r\nindication that it is possible to find out by any other means, either.\r\nC The environmentalist creates an analogy between fish caught and rain\r\nforest trees cut down but does not compare their proportion.\r\nD Nothing about how the fish can be used, including whether they are edible\r\nor inedible, plays any role in the environmentalistâ€™s argument.\r\nE Correct. This statement properly identifies a conclusion supported by the\r\nenvironmentalistâ€™s statements: The marine fish are endangered.\r\nThe correct answer is E.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(94, '1', '<p>Studies in restaurants show that the tips left by customers who pay their bill in<br />\r\ncash tend to be larger when the bill is presented on a tray that bears a credit-card<br />\r\nlogo. Consumer psychologists hypothesize that simply seeing a credit-card logo<br />\r\nmakes many credit-card holders willing to spend more because it reminds them<br />\r\nthat their spending power exceeds the cash they have immediately available.<br />\r\nWhich of the following, if true, most strongly supports the psychologists&rsquo;<br />\r\ninterpretation of the studies?</p>\r\n', 'The effect noted in the studies is not limited to patrons who have credit cards. ', 'Patrons who are under financial pressure from their credit-card obligations tend to tip less when presented with a restaurant bill on a tray with a credit-card logo than when the tray has no logo. ', 'In virtually all of the cases in the studies, the patrons who paid bills in cash did not possess credit cards. ', 'In general, restaurant patrons who pay their bills in cash leave larger tips than do those who pay by credit card. ', 'The percentage of restaurant bills paid with a given brand of credit card increases when that credit cardâ€™s logo is displayed on the tray with which the bill is presented.', 2, 'Argument Evaluation:-\r\nSituation\r\nStudies have found that restaurant customers give more generous\r\ntips when their bills are brought on trays bearing a credit-card logo.\r\nPsychologists speculate that this is because the logo reminds\r\ncustomers of their ability to spend more money than they have.\r\nReasoning:-\r\nWhich of the options most helps to support the psychologistsâ€™\r\nexplanation of the studies? The psychologistsâ€™ hypothesis is that\r\nthe credit-card logos on the trays bring to the minds of those who\r\ntip more the fact that they have more purchasing power than\r\nmerely the cash that they have at hand. This explanation would not\r\nbe valid even if those people who are not reminded of their own\r\nexcess purchasing powerâ€”if in fact they have any such powerâ€”\r\nwhen they see such a logo nonetheless tip more in such trays.\r\nThus, if restaurant patrons who are under financial pressure from\r\ntheir credit-card obligations do not tip more when their bills are\r\npresented on trays bearing credit-card logos, then the\r\npsychologistsâ€™ interpretation of the studies is supported.\r\nA This undermines the psychologistsâ€™ interpretation, for it shows that the\r\nsame phenomenon occurs even when the alleged cause has been removed.\r\nB Correct. This option identifies the result that would most strengthen the\r\npsychologistsâ€™ interpretation.\r\nC This undermines the psychologistsâ€™ interpretation by showing that the\r\nsame phenomenon occurs even when the alleged cause has been removed;\r\npatrons cannot be reminded of something that is not there.\r\nD To the extent that this bears on the interpretation of the study, it weakens\r\nit. Patrons using credit cards are surely aware that they have credit, and yet\r\nthey spend less generously.\r\nE This does not support the idea that being reminded that one has a credit\r\ncard induces one to be more generous, only that it induces one to use that\r\ncredit card.\r\nThe correct answer is B.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(95, '1', '<p>In an experiment, each volunteer was allowed to choose between an easy task and<br />\r\na hard task and was told that another volunteer would do the other task. Each<br />\r\nvolunteer could also choose to have a computer assign the two tasks randomly.<br />\r\nMost volunteers chose the easy task for themselves and under questioning later<br />\r\nsaid they had acted fairly. But when the scenario was described to another group of<br />\r\nvolunteers, almost all said choosing the easy task would be unfair. This shows that<br />\r\nmost people apply weaker moral standards to themselves than to others.<br />\r\nWhich of the following is an assumption required by this argument?</p>\r\n', '(A) At least some volunteers who said they had acted fairly in choosing the easy task would have said that it was unfair for someone else to do so. ', '(B) The most moral choice for the volunteers would have been to have the computer assign the two tasks randomly. ', '(C) There were at least some volunteers who were assigned to do the hard task and felt that the assignment was unfair. ', '(D) On average, the volunteers to whom the scenario was described were more accurate in their moral judgments than the other volunteers were. ', '(E) At least some volunteers given the choice between assigning the tasks themselves and having the computer assign them felt that they had made the only fair choice available to them.', 1, 'Argument Construction\r\nSituation:-\r\nIn an experiment, most volunteers chose to do an easy task\r\nthemselves and leave a hard task for someone else. They later said\r\nthey had acted fairly, but almost all volunteers in another group to\r\nwhich the scenario was described said choosing the easy task would\r\nbe unfair, indicating that most people apply weaker moral\r\nstandards to themselves.\r\nReasoning:-\r\nWhat must be true in order for the facts presented to support the\r\nconclusion that most people apply weaker moral standards to\r\nthemselves than to others? One set of volunteers said they had\r\nacted fairly in taking the easy task, whereas different volunteers\r\nsaid that doing so would be unfair. In neither case did any of the\r\nvolunteers actually judge their own behavior differently from how\r\nthey judged anyone elseâ€™s. So the argument implicitly infers from\r\nthe experimental results that most of the volunteers would judge\r\ntheir own behavior differently from someone elseâ€™s if given the\r\nchance. This inference assumes that the volunteers in the second\r\ngroup would have applied the same moral standards that those in\r\nthe first group did if they had been in the first groupâ€™s position, and\r\nvice versa.\r\nA Correct. If none of the volunteers who said their own behavior was fair\r\nwould have judged someone elseâ€™s similar behavior as unfair, then their\r\nrelaxed moral judgment of themselves would not suggest that they applied\r\nweaker moral standards to themselves than to others.\r\nB Even if this is so, the experimental results could still suggest that the\r\nvolunteers would apply weaker moral standards to themselves than to\r\nothers.\r\nC The argument would be equally strong even if volunteers who were\r\nassigned the hard task did not know that someone else had gotten an easier\r\ntaskâ€”or even if no volunteers were actually assigned the hard task at all.\r\nD Even if the moral standards applied by the volunteers who judged\r\nthemselves were as accurate as those applied by the volunteers to whom the\r\nscenario was described, the former standards were still weaker.\r\nE Even if all the volunteers in the first group had felt that all the choices\r\navailable to them would have been fair for them to make personally, they\r\nmight have applied stricter moral standards to someone else in the same\r\nposition.\r\nThe correct answer is A.', '2', 'yes', '2017-06-16', '0000-00-00', ''),
(96, '1', '<p>hich of the following most logically completes the argument?<br />\r\nThe irradiation of food kills bacteria and thus retards spoilage. However, it also<br />\r\nlowers the nutritional value of many foods. For example, irradiation destroys a<br />\r\nsignificant percentage of whatever vitamin B1 a food may contain. Proponents of<br />\r\nirradiation point out that irradiation is no worse in this respect than cooking.<br />\r\nHowever, this fact is either beside the point, since much irradiated food is eaten<br />\r\nraw, or else misleading, since .</p>\r\n', 'many of the proponents of irradiation are food distributors who gain from foodsâ€™ having a longer shelf life ', 'it is clear that killing bacteria that may be present on food is not the only effect that irradiation has ', 'cooking is usually the final step in preparing food for consumption, whereas irradiation serves to ensure a longer shelf life for perishable foods ', 'certain kinds of cooking are, in fact, even more destructive of vitamin B1 than carefully controlled irradiation is ', 'for food that is both irradiated and cooked, the reduction of vitamin B1 associated with either process individually is compounded', 5, 'Argument Construction\r\nSituation:-\r\nIrradiation kills bacteria but it also lowers the amount of nutrients\r\nâ€”including vitamin B1â€”in foods. Proponents try to dismiss this\r\nconcern by arguing that cooking destroys B1 as well. That point is\r\nsaid to be misleading.\r\nReasoning:-\r\nWhich option most logically completes the argument? For the\r\nproponentsâ€™ claim to be misleading it needs to be suggesting\r\nsomething about irradiation that is false. By stating that irradiation\r\ndestroys no more B1 than cooking does, the proponent seems to be\r\nsuggesting that any food that is going to be cooked might as well be\r\nirradiated because it will end up with the same amount of B1 either\r\nway. But if the effects of radiation and cooking combine to destroy\r\nmore B1 than cooking or irradiation alone would, then the\r\nproponentsâ€™ claim suggests something that is false.\r\nA This might make the assurances of the proponents less credible but it\r\ndoes not make their claim misleading.\r\nB Nothing about the proponentsâ€™ claim suggests that the only effect\r\nirradiation has is to kill bacteria.\r\nC The fact that cooking and irradiation have different purposes does not\r\nindicate that the proponentsâ€™ claim suggests something that is false.\r\nD If anything, this strengthens the proponentsâ€™ point by minimizing the\r\nrelative damage caused by irradiation.\r\nE Correct. This option most logically completes the argument.\r\nThe correct answer is E.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(97, '1', '<p>Theater Critic: The play La Finestrina, now at Central Theater, was written in Italy<br />\r\nin the eighteenth century. The director claims that this production is as similar to<br />\r\nthe original production as is possible in a modern theater. Although the actor who<br />\r\nplays Harlequin the clown gives a performance very reminiscent of the twentiethcentury<br />\r\nAmerican comedian Groucho Marx, Marx&rsquo;s comic style was very much<br />\r\nwithin the comic acting tradition that had begun in sixteenth-century Italy.<br />\r\nThe considerations given best serve as part of an argument that</p>\r\n', 'modern audiences would find it hard to tolerate certain characteristics of a historically accurate performance of an eighteenth-century play ', 'Groucho Marx once performed the part of the character Harlequin in La Finestrina ', ' in the United States the training of actors in the twentieth century is based on principles that do not differ radically from those that underlay the training of actors in eighteenth-century Italy ', ' the performance of the actor who plays Harlequin in La Finestrina does not serve as evidence against the directorâ€™s claim ', ' the director of La Finestrina must have advised the actor who plays Harlequin to model his performance on comic performances of Groucho Marx', 4, 'Argument Construction\r\nSituation:-\r\nThe director of the local production of La Finestrina says it is as\r\nsimilar to the original production as is possible in a modern\r\ntheater. The actor playing Harlequin gives a performance\r\nreminiscent of Groucho Marx, whose comic style falls within an\r\nacting tradition which began in sixteenth-century Italy.\r\nReasoning:-\r\nFor which of the options would the consideration given best serve\r\nas an argument? The actorâ€™s performance was reminiscent of\r\nsomeone who fell within a tradition going back to sixteenthcentury\r\nItaly. The play was written, and therefore was likely first\r\nperformed, in eighteenth-century Italy. All of this suggests that\r\nthere could be a similarity between the performances of Harlequin\r\nin the local production and in the original production. While the\r\ntwo performances might have been quite dissimilar, there is\r\nnothing here that supports that.\r\nA Regardless of how plausible this option might be on its own merits, the\r\npassage provides no support for it because the passage provides no\r\ninformation about the characteristics of a historically accurate performance\r\nof an eighteenth-century play.\r\nB The passage neither says this nor implies it.\r\nC The passage says nothing about the training of actors, so this option\r\nwould be supported by the passage only in a very roundabout, indirect way.\r\nD Correct. This is the option that the considerations most support.\r\nE That the performance reminded the theater critic of Groucho Marx hardly\r\nshows that the similarity was intentional, let alone that it was at the\r\ndirectorâ€™s instruction.\r\nThe correct answer is D.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(98, '1', '<p>Although the discount stores in Goreville&rsquo;s central shopping district are expected to<br />\r\nclose within five years as a result of competition from a SpendLess discount<br />\r\ndepartment store that just opened, those locations will not stay vacant for long. In<br />\r\nthe five years since the opening of Colson&rsquo;s, a nondiscount department store, a new<br />\r\nstore has opened at the location of every store in the shopping district that closed<br />\r\nbecause it could not compete with Colson&rsquo;s.<br />\r\nWhich of the following, if true, most seriously weakens the argument?</p>\r\n', '(A) Many customers of Colsonâ€™s are expected to do less shopping there than they did before the SpendLess store opened.', ' (B) Increasingly, the stores that have opened in the central shopping district since Colsonâ€™s opened have been discount stores. ', '(C) At present, the central shopping district has as many stores operating in it as it ever had. ', '(D) Over the course of the next five years, it is expected that Gorevilleâ€™s population will grow at a faster rate than it has for the past several decades. ', '(E) Many stores in the central shopping district sell types of merchandise that are not available at either SpendLess or Colsonâ€™s.', 2, 'Argument Evaluation\r\nSituation:-\r\nDue to competition from a recently opened SpendLess discount\r\ndepartment store, discount stores in Gorevilleâ€™s central shopping\r\ndistrict are expected to close within five years. But those locations\r\nwill not be vacant long, for new stores have replaced all those that\r\nclosed because of the opening five years ago of a Colsonâ€™s\r\nnondiscount department store.\r\nReasoning:-\r\nThe question is which option would most weaken the argument?\r\nThe arguer infers that stores that leave because of the SpendLess\r\nwill be replaced in their locations by other stores because that is\r\nwhat happened after the Colsonâ€™s department came in. Since the\r\nreasoning relies on a presumed similarity between the two cases,\r\nany information that brings to light a relevant dissimilarity would\r\nweaken the argument. If the stores that were driven out by\r\nColsonâ€™s were replaced mostly by discount stores, that suggests\r\nthat the stores were replaced because of a need that no longer\r\nexists after the opening of SpendLess.\r\nA The fact that Colsonâ€™s may be seeing fewer customers does not mean that\r\nthe discount stores that close will not be replaced; they might be replaced by\r\nstores that in no way compete with Colsonâ€™s or SpendLess.\r\nB Correct. This option most seriously weakens the argument.\r\nC If anything, this strengthens the argument by indicating that Gorevilleâ€™s\r\ncentral shopping district is thriving.\r\nD This, too, strengthens the argument because one is more likely to open a\r\nnew store in an area with a growing population.\r\nE Because this statement does not indicate whether any of these stores that\r\noffer goods not sold at SpendLess or Colsonâ€™s will be among those that are\r\nclosing, it is not possible to determine what effect it has on the strength of\r\nthe argument.\r\nThe correct answer is B.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(99, '1', '<p>Last year all refuse collected by Shelbyville city services was incinerated. This<br />\r\nincineration generated a large quantity of residual ash. In order to reduce the<br />\r\namount of residual ash Shelbyville generates this year to half of last year&rsquo;s total,<br />\r\nthe city has revamped its collection program. This year city services will separate<br />\r\nfor recycling enough refuse to reduce the number of truckloads of refuse to be<br />\r\nincinerated to half of last year&rsquo;s number.<br />\r\nWhich of the following is required for the revamped collection program to achieve<br />\r\nits aim?</p>\r\n', 'This year, no materials that city services could separate for recycling will be incinerated. ', 'Separating recyclable materials from materials to be incinerated will cost Shelbyville less than half what it cost last year to dispose of the residual ash. ', 'Refuse collected by city services will contain a larger proportion of recyclable materials this year than it did last year. ', 'The refuse incinerated this year will generate no more residual ash per truckload incinerated than did the refuse incinerated last year. ', 'The total quantity of refuse collected by Shelbyville city services this year will be no greater than that collected last year.', 4, 'A This merely indicates that no further reduction of ash through recycling\r\ncould be achieved this year; it indicates nothing about how much the ash\r\nwill be reduced.\r\nB This suggests a further benefit from recycling, but does not bear on the\r\namount of ash that will be produced.\r\nC Since no information is provided about how much, if any, recyclable\r\nmaterials were removed from the refuse last year, this does not affect the\r\nreasoning.\r\nD Correct. This states a requirement for the collection program to achieve\r\nits aim.\r\nE This is not a requirement because even if the city collects more refuse this\r\nyear, it could still cut in half the amount of residual ash by cutting in half\r\nthe number of truckloads going to the incinerator.\r\nThe correct answer is D.', '1', 'yes', '2017-06-16', '0000-00-00', ''),
(124, '1', '<p>What is the ouput of the following java code?</p>\n', '1 2 3 4 5 6 7 8', '1 2 3 4 5 6 7 8 9', '1 2 3 5 6 7 8 9', '0 1 2 3 5 6 7 8 9', 'None', 4, '<p>Continue statement in java skips everything inside the loop which resides below it and starts over the iteration. So, 4 is not printed in the ouput.</p>\n', '5', 'yes', '2021-05-25', '0000-00-00', 0x4454555f6578616d5f63626133633639356535346333616535623937336464346632303165623331662e504e47),
(128, '1', '<p><span style=\"color:#1abc9c\"><strong>The answer to the following question is?</strong></span></p>\n', 'A', 'B', 'C', 'D', 'E', 3, '<p>using the equation formula for a straight line, the answer is C</p>\n', '6', 'yes', '2021-05-27', '0000-00-00', 0x4454555f6578616d5f66666665353164303838663335336234643838633465333039646634383337612e6a7067),
(133, '1', '<p>what is the <span style=\"color:#1abc9c\"><strong>architecture</strong></span> of&nbsp;the following diagram?</p>\n', '2', '4', '3', '5', 'None', 3, '<p>No reason</p>\n', '2', 'yes', '2021-05-27', '0000-00-00', 0x4454555f6578616d5f36336462373334356566656434316533333961333133633831663435383434352e706e67),
(134, '3', '<p><strong>What is the name&nbsp;of the <span style=\"color:#1abc9c\">device </span>you see ?</strong></p>\n', 'Keyboard', 'Screen', 'mouse', 'mouth', 'speaker', 3, '<p>The name of the device on the screen is a <strong><span style=\"color:#e74c3c\">computer </span><span style=\"color:#1abc9c\">mouse</span></strong>.</p>\n', '2', 'yes', '2021-06-05', '0000-00-00', 0x4454555f6578616d5f63653933313233333130393961333730636237366339353639383634643363312e6a7067),
(139, '3', '<p><strong>What is the <span style=\"color:#2980b9\">name&nbsp;</span>of the <span style=\"color:#1abc9c\">device </span>you see </strong>?</p>\n', 'Keyboard', 'Screen', 'mouse', 'mouth', 'speaker', 1, '<p><strong>The name of the device on the screen is a computer <span style=\"color:#1abc9c\">keyboard</span>.</strong></p>\n', '3', 'yes', '2021-06-05', '0000-00-00', 0x4454555f6578616d5f30646265613936386265613234656135643461376262363765326631373635642e6a7067),
(140, '3', '<p>What is the <u><strong><span style=\"color:#1abc9c\">name&nbsp;</span></strong></u>of the <span style=\"color:#1abc9c\"><strong>device </strong></span>you see ?</p>\n', 'Keyboard', 'Screen', 'mouse', 'mouth', 'speaker', 2, '<p>The name of the device on the screen is a computer <strong><span style=\"color:#1abc9c\">monitor</span></strong>.</p>\n', '5', 'yes', '2021-06-05', '0000-00-00', 0x4454555f6578616d5f30313161643236366464383866343232626337326264653665623466373937302e6a7067),
(141, '3', '<p>What is the name of the device you see in the picture?</p>\n', 'Keyboard', 'Mouse', 'Monitor', 'System Unit', 'Cable', 4, '<p>The name of the device on the screen just a<strong><span style=\"color:#1abc9c\"> system unit</span></strong>.</p>\n', '4', 'yes', '2021-06-05', '0000-00-00', 0x4454555f6578616d5f32636366626363376535636633373637613965363537303734353265386533652e6a7067),
(142, '3', '<p>Who is the one you see on the screen?</p>\n', 'Meles Zenawi', 'Abyi Ahmed', 'Debretsion G/micheal', 'Getachew Reda', 'Getachew Assefa', 2, '<p>That is just <strong><span style=\"color:#c0392b\">Abyi Ahmed</span></strong></p>\n', '15', 'yes', '2021-06-08', '0000-00-00', 0x4454555f6578616d5f63386239623437616263626435383835353635356364316334333962343233632e6a7067),
(143, '7', '<p>Go to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hellGo to the hell</p>\r\n', 'we', 'we', 'we', 'we', 'we', 3, '<p>ef</p>\r\n', '2', 'yes', '2022-03-18', '2022-03-18', ''),
(144, '7', '<p>Which one of the following is true about <strong>Vision Transformer</strong> in Deep Learning?</p>\r\n', 'It is used in NLP', 'It is based only on local attention', 'It doesn\'t applying patches in training', 'Input images is split into patches of equal size', 'It was introduced in 1990', 4, '<p>Look at <strong><a href=\"https://paperswithcode.com/paper/an-image-is-worth-16x16-words-transformers-1\">this paper</a></strong>&nbsp;for more detail.</p>\r\n', '10', 'yes', '2022-03-19', '2022-03-19', 0x4454555f6578616d5f65633166393639656466316562646436306665333734353232386532366366362e706e67),
(145, '5', '<p>Which Equation is correct in linear algebra?</p>\r\n', 'ax2 + bx + c = 0', 'ax2 + bx + c = 0', 'ax2 + bx + c = 0', 'ax2 + bx + c = 0', 'ax2 + bx + c = 0', 3, '<p>ax<sup>2</sup>&nbsp;+ bx + c = 0</p>\r\n', '2', 'yes', '2022-03-19', '2022-03-19', ''),
(146, '10', '<p>what is this meaning of theat</p>\r\n', 'AAA', 'y', 'CCCC', 'NNNN', 'Oh', 3, '<p>sfdsfdsfsafsaf</p>\r\n', '3', 'yes', '2022-05-28', '2022-05-28', ''),
(150, '11', '<p>What is the output of the code?</p>\r\n', 'Prints nothing', 'prints \"hi\"', 'Prints \"bye\"', 'The code does not compile', 'None', 3, '<p>In java, local methods are given priority over inherited methods.&nbsp; Please read more about this <a href=\"https://www.javatpoint.com/inheritance-in-java\">here</a>.</p>\r\n', '5', 'yes', '2023-03-23', '2023-03-23', 0x4454555f6578616d5f63383837366234656437336330623533353338356537386466303630666237332e706e67),
(151, '11', '<p>What is the output of the code?</p>\r\n', 'Prints nothing', 'prints \"hi\"', 'Prints \"bye\"', 'The code does not compile', 'None', 3, '<p>In java, local methods are given priority over inherited methods.&nbsp; Please read more about this <a href=\"https://www.javatpoint.com/inheritance-in-java\">here</a>.</p>\r\n', '5', 'yes', '2023-03-23', '2023-03-23', 0x4454555f6578616d5f62393336323563643063316662623861336632313233626130343433626536392e4a5047),
(153, '11', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Which one of the following statements is false about object-oriented programming? </span></span></span></span></p>\r\n', 'class defines the template for defining fields and methods of object.', 'Objects are instances of methods.', 'Methods defines behaviors of objects. ', 'Fields are variables that stores object\'s state.', 'None', 2, '', '1', 'yes', '2023-03-23', '2023-03-23', ''),
(154, '11', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Abstraction in java is achieved using </span></span></span></span></p>\r\n', 'method overloading Â Â Â ', 'method overriding Â ', 'Abstract class', ' Instance class', 'None', 3, '<p>Is correct answer</p>\r\n', '2', 'yes', '2023-03-23', '2023-03-23', ''),
(155, '12', '<p>What is AI?</p>\r\n', 'is machine learning', 'is NLP', 'is agumented technology', 'cloud computing', 'All', 5, '<p>All are best answers</p>\r\n', '2', 'yes', '2023-03-23', '2023-03-23', ''),
(156, '12', '<p>What is cloud computing?</p>\r\n', 'a', 'b', 'c', 'd', 'all', 5, '<p>All are best answers</p>\r\n', '2', 'yes', '2023-03-23', '2023-03-23', ''),
(157, '13', '<p>What is data structure?</p>\r\n', 'soeting', 'anything', 'nothing', 'other thing', 'all', 5, '<p>ds is something like that.</p>\r\n', '2', 'yes', '2023-03-23', '2023-03-23', ''),
(158, '13', '<p>What is data structure?</p>\r\n', 'soeting', 'anything', 'nothing', 'other thing', 'all', 5, '<p>ds is something like that.</p>\r\n', '2', 'yes', '2023-03-23', '2023-03-23', ''),
(159, '13', '<p>What is linkedlist?</p>\r\n', 'a', 'b', 'd', 'd', 'd', 3, '<p>you describe your asnwer here.</p>\r\n', '5', 'yes', '2023-03-23', '2023-03-23', ''),
(160, '13', '<p>What is doublyLinkedList?</p>\r\n', 'ad', 'sds', 'sdfs', 'dsfs', 'sfdsfs', 3, '<p>Put your reason for the answer here.</p>\r\n', '5', 'yes', '2023-03-23', '2023-03-23', ''),
(161, '13', '<p>What is pointer?</p>\r\n', 'sfdsf', 'sdfsdf', 'sdfsf', 'sfsdfs', 'sdfsdfs', 3, '<p>Description goes here.</p>\r\n', '4', 'yes', '2023-03-23', '2023-03-23', ''),
(162, '14', '<p>What is Java</p>\r\n', 'aaa', 'bb', 'gg', 'dd', 'jj', 2, '<p>Becaus ethis best <a href=\"https://stackoverflow.com/questions/1969476/ajax-success-event-not-working\">answer&nbsp;</a></p>\r\n', '2', 'yes', '2023-03-23', '2023-03-23', ''),
(165, '15', '<p><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\"><span style=\"color:black\">The actors or system users which are outside of our system and interact with the system are always human beings??</span></span></span></p>\r\n', 'False', 'True', 'All', 'None', '', 1, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(166, '15', '<p><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\"><span style=\"color:black\">Linux OS is recommended for system administration because Linux system is more secure than Windows OS. (1pt)</span></span></span></p>\r\n', 'True', 'False', 'All', 'None', '', 1, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(167, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">What is the disadvantage of using a shell script in a Linux system? (1.5 pts)</span></span></span></span></p>\r\n', 'It exposes the system to hackers or crackers.', 'It is difficult to use for system administrator', 'It affects system performance', 'None of the above.', '', 2, '', '2', 'yes', '2023-03-30', '2023-03-30', ''),
(168, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">Which of the following symbolic method command changes file permission to <strong>read</strong> and <strong>excute</strong> for <strong>owners</strong>, <strong>read</strong> and <strong>write</strong> for <strong>group</strong>, <strong>write</strong> and <strong>execute</strong> for <strong>other(world)</strong> attributes?</span></span></span></span>(1.5 pts)</p>\r\n', 'Chmod 613 file-name', 'Chmod 527 file-name', 'Chmod 563 file-name', 'Chmod 643 file-name', '', 3, '', '2', 'yes', '2023-03-30', '2023-03-30', ''),
(169, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">Which of the following is/are the role of network admin in a small organization?&nbsp;</span></span></span></span>(1.5 pts)</p>\r\n', 'Managing the userâ€™s account', 'Allocating storage space for each user', 'Configuring Network services like DHCP, DNS, FTP, and SMTP', 'All are role of network admin.', '', 4, '', '2', 'yes', '2023-03-30', '2023-03-30', ''),
(170, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">Which component of Linux OS provides the abstraction to hide the complexity of hardware detail?</span></span></span></span></p>\r\n', 'System library', 'System Utility', 'Kernel', ' Compiler', '', 3, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(171, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">Let&rsquo;s assume that you are using Linux OS for managing users and file of your organization, but the OS doesn&rsquo;t allow you to create other or new directors under the root directory. So, in which type of file system is classified? It is classified in: -</span></span></span></span></p>\r\n', 'Seamless', 'Extensible', 'Single rooted', 'Seamless and Extensible', '', 3, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(172, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">Let&rsquo;s assume that you install MYSQL and other DB to your Linux OS. So, in which directory the file of MYSQL can be stored?</span></span></span></span></p>\r\n', '/tmp', '/var', '/bin', '/MYSQL', '', 2, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(173, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">Which of the following Linux command adds write, execute &amp; remove read permission to the <strong>world</strong> attribute file named my_file?</span></span></span></span></p>\r\n', 'Chmod U+wx my_file.', 'Chmod U=wx my_file.', 'Chmod O+wx my_file.', 'Chmod O=wx my_file.', '', 4, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(174, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">_________________<strong> </strong>is a limit set by a system administrator that restricts certain aspects of file system usage on modern operating systems.</span></span></span></span></p>\r\n', 'Disk quota ', 'Disk storage', 'File management', 'Password Aging', '', 1, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(175, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">All of the following are <strong>TRUE</strong> about the difference between Unix OS and Windows OS <strong>EXCEPT</strong>?</span></span></span></span></p>\r\n', 'Unix uses CLI while Windows uses GUI.', 'Unix OS is licensed while Windows OS is free.', 'Unix supports multiprocessing while Windows not', 'Unix OS is case-sensitive by default while Window is not case-sensitive.', '', 2, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(176, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">Which of the following is the responsibility of Network Admin in Large organizations? (1.5 pts)</span></span></span></span></p>\r\n', 'Determining disk usage', 'Configuring password aging for the userâ€™s account', 'Keeping organizations computer network up-to-date.', 'Managing users file', '', 3, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(177, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">In which Linux distribution is Ubuntu OS is categorized?(1.5 pts)</span></span></span></span></p>\r\n', 'Debian', 'Red Hat', 'Fedora', 'SUSE Linux', '', 1, '', '1', 'yes', '2023-03-30', '2023-03-30', ''),
(178, '15', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Comic Sans MS&quot;\">You know that the role of system and Network admin was depend on the size of the organization (large, medium, or small), so what are the charitarian used to classify the size of the organization as large, medium, or smallest?(1.5 pts)</span></span></span></span></p>\r\n', 'Geographical area covered by the organization.', 'Number of employers in the organization', 'Physical location of the organization', 'The number of buildings in the organization', '', 2, '', '1', 'yes', '2023-03-30', '2023-03-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

DROP TABLE IF EXISTS `tbl_result`;
CREATE TABLE IF NOT EXISTS `tbl_result` (
  `result_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_id` int NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `question_id` int UNSIGNED NOT NULL,
  `user_answer` int UNSIGNED NOT NULL,
  `right_answer` int UNSIGNED NOT NULL,
  `marks` varchar(20) NOT NULL,
  `added_date` date NOT NULL,
  PRIMARY KEY (`result_id`),
  KEY `exam_id` (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`result_id`, `exam_id`, `student_id`, `question_id`, `user_answer`, `right_answer`, `marks`, `added_date`) VALUES
(5, 3, 8, 141, 3, 4, '4', '2021-06-08'),
(6, 3, 8, 139, 2, 1, '3', '2021-06-08'),
(7, 3, 8, 134, 1, 3, '2', '2021-06-08'),
(8, 3, 8, 140, 2, 2, '5', '2021-06-08'),
(9, 3, 8, 142, 2, 2, '15', '2021-06-08'),
(10, 1, 8, 23, 3, 3, '1', '2022-02-11'),
(11, 1, 8, 25, 2, 4, '2', '2022-02-11'),
(12, 1, 8, 72, 2, 2, '4', '2022-02-11'),
(13, 1, 8, 65, 3, 5, '2', '2022-02-11'),
(14, 1, 8, 77, 2, 4, '2', '2022-02-11'),
(15, 1, 8, 81, 5, 3, '4', '2022-03-02'),
(16, 1, 8, 94, 4, 2, '2', '2022-02-11'),
(17, 1, 8, 99, 4, 4, '1', '2022-02-11'),
(18, 1, 8, 22, 4, 3, '2', '2023-03-23'),
(19, 1, 8, 24, 2, 1, '2', '2022-03-02'),
(20, 1, 8, 28, 4, 1, '2', '2022-02-17'),
(21, 1, 8, 79, 4, 3, '1', '2022-02-17'),
(22, 1, 8, 128, 3, 3, '6', '2022-02-17'),
(23, 1, 8, 89, 1, 1, '1', '2022-02-17'),
(24, 1, 8, 91, 4, 5, '2', '2022-02-17'),
(25, 1, 8, 69, 2, 5, '2', '2022-02-17'),
(26, 1, 8, 95, 3, 1, '2', '2023-03-23'),
(27, 1, 8, 96, 1, 5, '1', '2022-02-17'),
(28, 1, 8, 133, 4, 3, '2', '2023-03-23'),
(29, 1, 8, 82, 3, 4, '3', '2022-02-17'),
(46, 7, 8, 143, 3, 3, '2', '2022-03-18'),
(47, 7, 8, 144, 4, 4, '10', '2022-03-19'),
(48, 3, 14, 134, 4, 3, '2', '2022-05-28'),
(49, 3, 14, 139, 1, 1, '3', '2022-05-28'),
(50, 3, 14, 140, 2, 2, '5', '2022-05-28'),
(51, 3, 14, 141, 4, 4, '4', '2022-05-28'),
(52, 3, 14, 142, 4, 2, '15', '2022-05-28'),
(53, 11, 8, 150, 3, 3, '5', '2023-03-23'),
(54, 11, 8, 151, 3, 3, '5', '2023-03-23'),
(55, 11, 8, 153, 1, 2, '1', '2023-03-23'),
(56, 11, 8, 154, 1, 3, '2', '2023-03-23'),
(57, 12, 8, 155, 5, 5, '2', '2023-03-23'),
(58, 12, 8, 156, 5, 5, '2', '2023-03-23'),
(59, 10, 8, 146, 4, 3, '3', '2023-03-23'),
(60, 1, 8, 85, 4, 3, '1', '2023-03-23'),
(61, 1, 8, 86, 1, 3, '2', '2023-03-23'),
(62, 1, 8, 87, 2, 2, '1', '2023-03-23'),
(63, 1, 8, 88, 4, 5, '2', '2023-03-23'),
(64, 1, 8, 124, 4, 4, '5', '2023-03-23'),
(65, 1, 8, 98, 2, 2, '1', '2023-03-23'),
(66, 1, 8, 97, 4, 4, '1', '2023-03-23'),
(67, 1, 8, 27, 4, 3, '4', '2023-03-23'),
(68, 1, 8, 35, 4, 1, '4', '2023-03-23'),
(69, 1, 8, 36, 4, 4, '1', '2023-03-23'),
(70, 1, 8, 63, 2, 1, '2', '2023-03-23'),
(71, 1, 8, 67, 4, 2, '1', '2023-03-23'),
(72, 1, 8, 68, 4, 4, '1', '2023-03-23'),
(73, 1, 8, 71, 4, 2, '2', '2023-03-23'),
(74, 1, 8, 74, 4, 4, '4', '2023-03-23'),
(75, 1, 8, 80, 4, 4, '2', '2023-03-23'),
(76, 15, 9, 165, 2, 1, '1', '2023-03-30'),
(77, 15, 9, 166, 1, 1, '1', '2023-03-30'),
(78, 15, 9, 167, 3, 2, '2', '2023-03-30'),
(79, 15, 9, 168, 2, 3, '2', '2023-03-30'),
(80, 15, 9, 169, 1, 4, '2', '2023-03-30'),
(81, 15, 9, 171, 1, 3, '1', '2023-03-30'),
(82, 15, 9, 172, 4, 2, '1', '2023-03-30'),
(83, 15, 9, 173, 4, 4, '1', '2023-03-30'),
(84, 15, 9, 175, 4, 2, '1', '2023-03-30'),
(85, 15, 9, 176, 4, 3, '1', '2023-03-30'),
(86, 15, 9, 177, 4, 1, '1', '2023-03-30'),
(87, 15, 9, 178, 3, 2, '1', '2023-03-30'),
(88, 15, 9, 170, 2, 3, '1', '2023-03-30'),
(89, 15, 9, 174, 2, 1, '1', '2023-03-30'),
(90, 15, 57, 165, 1, 1, '1', '2023-03-31'),
(91, 15, 57, 166, 1, 1, '1', '2023-03-31'),
(92, 15, 57, 167, 3, 2, '2', '2023-03-31'),
(93, 15, 57, 168, 2, 3, '2', '2023-03-31'),
(94, 15, 57, 169, 4, 4, '2', '2023-03-31'),
(95, 15, 57, 170, 3, 3, '1', '2023-03-31'),
(96, 15, 57, 171, 3, 3, '1', '2023-03-31'),
(97, 15, 57, 172, 3, 2, '1', '2023-03-31'),
(98, 15, 57, 173, 4, 4, '1', '2023-03-31'),
(99, 15, 57, 174, 1, 1, '1', '2023-03-31'),
(100, 15, 57, 175, 2, 2, '1', '2023-03-31'),
(101, 15, 57, 176, 3, 3, '1', '2023-03-31'),
(102, 15, 57, 177, 1, 1, '1', '2023-03-31'),
(103, 15, 57, 178, 4, 2, '1', '2023-03-31'),
(104, 15, 70, 165, 1, 1, '1', '2023-03-31'),
(105, 15, 72, 165, 1, 1, '1', '2023-03-31'),
(106, 15, 66, 165, 1, 1, '1', '2023-03-31'),
(107, 15, 71, 165, 1, 1, '1', '2023-03-31'),
(108, 15, 78, 165, 1, 1, '1', '2023-03-31'),
(109, 15, 64, 165, 1, 1, '1', '2023-03-31'),
(110, 15, 85, 165, 1, 1, '1', '2023-03-31'),
(111, 15, 84, 165, 1, 1, '1', '2023-03-31'),
(112, 15, 70, 166, 1, 1, '1', '2023-03-31'),
(113, 15, 75, 165, 1, 1, '1', '2023-03-31'),
(114, 15, 77, 165, 1, 1, '1', '2023-03-31'),
(115, 15, 86, 165, 1, 1, '1', '2023-03-31'),
(116, 15, 71, 166, 2, 1, '1', '2023-03-31'),
(117, 15, 60, 165, 1, 1, '1', '2023-03-31'),
(118, 15, 85, 166, 2, 1, '1', '2023-03-31'),
(119, 15, 68, 165, 2, 1, '1', '2023-03-31'),
(120, 15, 81, 165, 1, 1, '1', '2023-03-31'),
(121, 15, 69, 165, 1, 1, '1', '2023-03-31'),
(122, 15, 61, 165, 1, 1, '1', '2023-03-31'),
(123, 15, 62, 165, 1, 1, '1', '2023-03-31'),
(124, 15, 63, 165, 1, 1, '1', '2023-03-31'),
(125, 15, 60, 166, 1, 1, '1', '2023-03-31'),
(126, 15, 65, 165, 1, 1, '1', '2023-03-31'),
(127, 15, 86, 166, 1, 1, '1', '2023-03-31'),
(128, 15, 77, 166, 1, 1, '1', '2023-03-31'),
(129, 15, 84, 166, 1, 1, '1', '2023-03-31'),
(130, 15, 78, 166, 1, 1, '1', '2023-03-31'),
(131, 15, 61, 166, 1, 1, '1', '2023-03-31'),
(132, 15, 75, 166, 1, 1, '1', '2023-03-31'),
(133, 15, 68, 166, 2, 1, '1', '2023-03-31'),
(134, 15, 66, 166, 1, 1, '1', '2023-03-31'),
(135, 15, 74, 165, 1, 1, '1', '2023-03-31'),
(136, 15, 83, 165, 1, 1, '1', '2023-03-31'),
(137, 15, 69, 166, 1, 1, '1', '2023-03-31'),
(138, 15, 82, 165, 1, 1, '1', '2023-03-31'),
(139, 15, 60, 167, 1, 2, '2', '2023-03-31'),
(140, 15, 81, 166, 1, 1, '1', '2023-03-31'),
(141, 15, 71, 167, 1, 2, '2', '2023-03-31'),
(142, 15, 62, 166, 1, 1, '1', '2023-03-31'),
(143, 15, 74, 166, 1, 1, '1', '2023-03-31'),
(144, 15, 58, 165, 1, 1, '1', '2023-03-31'),
(145, 15, 77, 167, 2, 2, '2', '2023-03-31'),
(146, 15, 79, 165, 1, 1, '1', '2023-03-31'),
(147, 15, 64, 167, 4, 2, '2', '2023-03-31'),
(148, 15, 66, 167, 4, 2, '2', '2023-03-31'),
(149, 15, 67, 166, 1, 1, '1', '2023-03-31'),
(150, 15, 83, 166, 1, 1, '1', '2023-03-31'),
(151, 15, 65, 166, 1, 1, '1', '2023-03-31'),
(152, 15, 58, 166, 1, 1, '1', '2023-03-31'),
(153, 15, 80, 165, 1, 1, '1', '2023-03-31'),
(154, 15, 72, 166, 1, 1, '1', '2023-03-31'),
(155, 15, 74, 167, 4, 2, '2', '2023-03-31'),
(156, 15, 82, 166, 1, 1, '1', '2023-03-31'),
(157, 15, 83, 167, 4, 2, '2', '2023-03-31'),
(158, 15, 84, 167, 2, 2, '2', '2023-03-31'),
(159, 15, 81, 167, 4, 2, '2', '2023-03-31'),
(160, 15, 76, 165, 1, 1, '1', '2023-03-31'),
(161, 15, 62, 167, 1, 2, '2', '2023-03-31'),
(162, 15, 76, 166, 1, 1, '1', '2023-03-31'),
(163, 15, 70, 168, 3, 3, '2', '2023-03-31'),
(164, 15, 60, 168, 3, 3, '2', '2023-03-31'),
(165, 15, 80, 166, 1, 1, '1', '2023-03-31'),
(166, 15, 58, 167, 3, 2, '2', '2023-03-31'),
(167, 15, 72, 167, 1, 2, '2', '2023-03-31'),
(168, 15, 75, 167, 2, 2, '2', '2023-03-31'),
(169, 15, 73, 166, 1, 1, '1', '2023-03-31'),
(170, 15, 65, 167, 3, 2, '2', '2023-03-31'),
(171, 15, 60, 169, 4, 4, '2', '2023-03-31'),
(172, 15, 85, 168, 3, 3, '2', '2023-03-31'),
(173, 15, 63, 167, 4, 2, '2', '2023-03-31'),
(174, 15, 79, 166, 1, 1, '1', '2023-03-31'),
(175, 15, 83, 169, 3, 4, '2', '2023-03-31'),
(176, 15, 83, 170, 2, 3, '1', '2023-03-31'),
(177, 15, 61, 167, 3, 2, '2', '2023-03-31'),
(178, 15, 60, 170, 3, 3, '1', '2023-03-31'),
(179, 15, 77, 168, 3, 3, '2', '2023-03-31'),
(180, 15, 69, 169, 1, 4, '2', '2023-03-31'),
(181, 15, 85, 169, 3, 4, '2', '2023-03-31'),
(182, 15, 84, 169, 4, 4, '2', '2023-03-31'),
(183, 15, 59, 167, 4, 2, '2', '2023-03-31'),
(184, 15, 73, 167, 3, 2, '2', '2023-03-31'),
(185, 15, 64, 168, 3, 3, '2', '2023-03-31'),
(186, 15, 84, 170, 3, 3, '1', '2023-03-31'),
(187, 15, 78, 169, 3, 4, '2', '2023-03-31'),
(188, 15, 69, 170, 3, 3, '1', '2023-03-31'),
(189, 15, 77, 169, 3, 4, '2', '2023-03-31'),
(190, 15, 83, 171, 3, 3, '1', '2023-03-31'),
(191, 15, 75, 168, 3, 3, '2', '2023-03-31'),
(192, 15, 60, 171, 3, 3, '1', '2023-03-31'),
(193, 15, 78, 170, 3, 3, '1', '2023-03-31'),
(194, 15, 60, 172, 2, 2, '1', '2023-03-31'),
(195, 15, 77, 170, 3, 3, '1', '2023-03-31'),
(196, 15, 71, 168, 3, 3, '2', '2023-03-31'),
(197, 15, 82, 167, 2, 2, '2', '2023-03-31'),
(198, 15, 74, 168, 3, 3, '2', '2023-03-31'),
(199, 15, 86, 168, 3, 3, '2', '2023-03-31'),
(200, 15, 83, 172, 4, 2, '1', '2023-03-31'),
(201, 15, 68, 169, 3, 4, '2', '2023-03-31'),
(202, 15, 64, 169, 4, 4, '2', '2023-03-31'),
(203, 15, 75, 169, 4, 4, '2', '2023-03-31'),
(204, 15, 76, 167, 4, 2, '2', '2023-03-31'),
(205, 15, 78, 171, 3, 3, '1', '2023-03-31'),
(206, 15, 85, 170, 3, 3, '1', '2023-03-31'),
(207, 15, 66, 168, 3, 3, '2', '2023-03-31'),
(208, 15, 59, 165, 1, 1, '1', '2023-03-31'),
(209, 15, 67, 167, 2, 2, '2', '2023-03-31'),
(210, 15, 59, 166, 1, 1, '1', '2023-03-31'),
(211, 15, 70, 169, 4, 4, '2', '2023-03-31'),
(212, 15, 84, 171, 3, 3, '1', '2023-03-31'),
(213, 15, 80, 168, 3, 3, '2', '2023-03-31'),
(214, 15, 61, 168, 3, 3, '2', '2023-03-31'),
(215, 15, 75, 170, 3, 3, '1', '2023-03-31'),
(216, 15, 81, 169, 4, 4, '2', '2023-03-31'),
(217, 15, 74, 169, 4, 4, '2', '2023-03-31'),
(218, 15, 63, 166, 1, 1, '1', '2023-03-31'),
(219, 15, 64, 170, 3, 3, '1', '2023-03-31'),
(220, 15, 84, 172, 2, 2, '1', '2023-03-31'),
(221, 15, 60, 173, 3, 4, '1', '2023-03-31'),
(222, 15, 68, 170, 3, 3, '1', '2023-03-31'),
(223, 15, 81, 170, 3, 3, '1', '2023-03-31'),
(224, 15, 78, 172, 3, 2, '1', '2023-03-31'),
(225, 15, 71, 169, 4, 4, '2', '2023-03-31'),
(226, 15, 80, 169, 3, 4, '2', '2023-03-31'),
(227, 15, 74, 170, 3, 3, '1', '2023-03-31'),
(228, 15, 79, 167, 4, 2, '2', '2023-03-31'),
(229, 15, 69, 171, 3, 3, '1', '2023-03-31'),
(230, 15, 62, 168, 3, 3, '2', '2023-03-31'),
(231, 15, 83, 173, 3, 4, '1', '2023-03-31'),
(232, 15, 68, 171, 3, 3, '1', '2023-03-31'),
(233, 15, 73, 168, 3, 3, '2', '2023-03-31'),
(234, 15, 83, 174, 1, 1, '1', '2023-03-31'),
(235, 15, 85, 171, 3, 3, '1', '2023-03-31'),
(236, 15, 86, 169, 4, 4, '2', '2023-03-31'),
(237, 15, 68, 172, 2, 2, '1', '2023-03-31'),
(238, 15, 71, 170, 3, 3, '1', '2023-03-31'),
(239, 15, 62, 169, 4, 4, '2', '2023-03-31'),
(240, 15, 72, 168, 3, 3, '2', '2023-03-31'),
(241, 15, 85, 172, 3, 2, '1', '2023-03-31'),
(242, 15, 86, 170, 3, 3, '1', '2023-03-31'),
(243, 15, 83, 175, 2, 2, '1', '2023-03-31'),
(244, 15, 59, 168, 3, 3, '2', '2023-03-31'),
(245, 15, 60, 174, 1, 1, '1', '2023-03-31'),
(246, 15, 75, 171, 3, 3, '1', '2023-03-31'),
(247, 15, 61, 169, 4, 4, '2', '2023-03-31'),
(248, 15, 76, 168, 3, 3, '2', '2023-03-31'),
(249, 15, 64, 171, 3, 3, '1', '2023-03-31'),
(250, 15, 80, 170, 3, 3, '1', '2023-03-31'),
(251, 15, 62, 170, 3, 3, '1', '2023-03-31'),
(252, 15, 65, 168, 3, 3, '2', '2023-03-31'),
(253, 15, 69, 172, 2, 2, '1', '2023-03-31'),
(254, 15, 66, 169, 4, 4, '2', '2023-03-31'),
(255, 15, 64, 172, 2, 2, '1', '2023-03-31'),
(256, 15, 75, 172, 2, 2, '1', '2023-03-31'),
(257, 15, 71, 171, 3, 3, '1', '2023-03-31'),
(258, 15, 68, 173, 4, 4, '1', '2023-03-31'),
(259, 15, 73, 169, 4, 4, '2', '2023-03-31'),
(260, 15, 60, 175, 2, 2, '1', '2023-03-31'),
(261, 15, 66, 170, 3, 3, '1', '2023-03-31'),
(262, 15, 83, 176, 3, 3, '1', '2023-03-31'),
(263, 15, 58, 169, 4, 4, '2', '2023-03-31'),
(264, 15, 78, 173, 4, 4, '1', '2023-03-31'),
(265, 15, 72, 169, 4, 4, '2', '2023-03-31'),
(266, 15, 59, 169, 4, 4, '2', '2023-03-31'),
(267, 15, 82, 168, 3, 3, '2', '2023-03-31'),
(268, 15, 83, 177, 1, 1, '1', '2023-03-31'),
(269, 15, 61, 170, 3, 3, '1', '2023-03-31'),
(270, 15, 78, 174, 1, 1, '1', '2023-03-31'),
(271, 15, 62, 171, 3, 3, '1', '2023-03-31'),
(272, 15, 68, 174, 1, 1, '1', '2023-03-31'),
(273, 15, 71, 172, 2, 2, '1', '2023-03-31'),
(274, 15, 64, 173, 4, 4, '1', '2023-03-31'),
(275, 15, 63, 168, 4, 3, '2', '2023-03-31'),
(276, 15, 59, 170, 3, 3, '1', '2023-03-31'),
(277, 15, 79, 168, 3, 3, '2', '2023-03-31'),
(278, 15, 80, 171, 3, 3, '1', '2023-03-31'),
(279, 15, 58, 170, 3, 3, '1', '2023-03-31'),
(280, 15, 68, 175, 2, 2, '1', '2023-03-31'),
(281, 15, 83, 178, 1, 2, '1', '2023-03-31'),
(282, 15, 81, 168, 3, 3, '2', '2023-03-31'),
(283, 15, 86, 172, 2, 2, '1', '2023-03-31'),
(284, 15, 85, 173, 4, 4, '1', '2023-03-31'),
(285, 15, 76, 169, 4, 4, '2', '2023-03-31'),
(286, 15, 70, 174, 1, 1, '1', '2023-03-31'),
(287, 15, 59, 171, 3, 3, '1', '2023-03-31'),
(288, 15, 80, 172, 2, 2, '1', '2023-03-31'),
(289, 15, 65, 169, 4, 4, '2', '2023-03-31'),
(290, 15, 62, 172, 2, 2, '1', '2023-03-31'),
(291, 15, 84, 173, 3, 4, '1', '2023-03-31'),
(292, 15, 77, 171, 4, 3, '1', '2023-03-31'),
(293, 15, 68, 176, 3, 3, '1', '2023-03-31'),
(294, 15, 70, 175, 2, 2, '1', '2023-03-31'),
(295, 15, 74, 172, 2, 2, '1', '2023-03-31'),
(296, 15, 65, 170, 3, 3, '1', '2023-03-31'),
(297, 15, 85, 174, 1, 1, '1', '2023-03-31'),
(298, 15, 73, 170, 2, 3, '1', '2023-03-31'),
(299, 15, 75, 173, 4, 4, '1', '2023-03-31'),
(300, 15, 60, 176, 3, 3, '1', '2023-03-31'),
(301, 15, 64, 174, 1, 1, '1', '2023-03-31'),
(302, 15, 63, 169, 4, 4, '2', '2023-03-31'),
(303, 15, 67, 168, 3, 3, '2', '2023-03-31'),
(304, 15, 60, 177, 1, 1, '1', '2023-03-31'),
(305, 15, 66, 171, 3, 3, '1', '2023-03-31'),
(306, 15, 79, 169, 4, 4, '2', '2023-03-31'),
(307, 15, 59, 172, 3, 2, '1', '2023-03-31'),
(308, 15, 84, 174, 1, 1, '1', '2023-03-31'),
(309, 15, 76, 170, 3, 3, '1', '2023-03-31'),
(310, 15, 61, 171, 3, 3, '1', '2023-03-31'),
(311, 15, 78, 176, 1, 3, '1', '2023-03-31'),
(312, 15, 75, 174, 1, 1, '1', '2023-03-31'),
(313, 15, 77, 172, 2, 2, '1', '2023-03-31'),
(314, 15, 68, 177, 1, 1, '1', '2023-03-31'),
(315, 15, 81, 172, 2, 2, '1', '2023-03-31'),
(316, 15, 60, 178, 2, 2, '1', '2023-03-31'),
(317, 15, 85, 175, 2, 2, '1', '2023-03-31'),
(318, 15, 65, 171, 3, 3, '1', '2023-03-31'),
(319, 15, 70, 176, 3, 3, '1', '2023-03-31'),
(320, 15, 84, 175, 2, 2, '1', '2023-03-31'),
(321, 15, 64, 175, 2, 2, '1', '2023-03-31'),
(322, 15, 70, 177, 1, 1, '1', '2023-03-31'),
(323, 15, 82, 169, 3, 4, '2', '2023-03-31'),
(324, 15, 75, 175, 2, 2, '1', '2023-03-31'),
(325, 15, 72, 171, 3, 3, '1', '2023-03-31'),
(326, 15, 59, 173, 4, 4, '1', '2023-03-31'),
(327, 15, 79, 170, 3, 3, '1', '2023-03-31'),
(328, 15, 66, 172, 3, 2, '1', '2023-03-31'),
(329, 15, 58, 171, 3, 3, '1', '2023-03-31'),
(330, 15, 86, 173, 4, 4, '1', '2023-03-31'),
(331, 15, 68, 178, 1, 2, '1', '2023-03-31'),
(332, 15, 61, 172, 2, 2, '1', '2023-03-31'),
(333, 15, 73, 171, 3, 3, '1', '2023-03-31'),
(334, 15, 84, 176, 3, 3, '1', '2023-03-31'),
(335, 15, 78, 177, 1, 1, '1', '2023-03-31'),
(336, 15, 80, 173, 4, 4, '1', '2023-03-31'),
(337, 15, 59, 174, 1, 1, '1', '2023-03-31'),
(338, 15, 86, 174, 1, 1, '1', '2023-03-31'),
(339, 15, 62, 173, 4, 4, '1', '2023-03-31'),
(340, 15, 58, 172, 2, 2, '1', '2023-03-31'),
(341, 15, 74, 173, 4, 4, '1', '2023-03-31'),
(342, 15, 77, 173, 3, 4, '1', '2023-03-31'),
(343, 15, 75, 176, 1, 3, '1', '2023-03-31'),
(344, 15, 67, 170, 3, 3, '1', '2023-03-31'),
(345, 15, 65, 172, 3, 2, '1', '2023-03-31'),
(346, 15, 84, 177, 1, 1, '1', '2023-03-31'),
(347, 15, 63, 170, 3, 3, '1', '2023-03-31'),
(348, 15, 77, 174, 1, 1, '1', '2023-03-31'),
(349, 15, 80, 174, 1, 1, '1', '2023-03-31'),
(350, 15, 72, 172, 4, 2, '1', '2023-03-31'),
(351, 15, 62, 174, 1, 1, '1', '2023-03-31'),
(352, 15, 69, 173, 3, 4, '1', '2023-03-31'),
(353, 15, 82, 170, 2, 3, '1', '2023-03-31'),
(354, 15, 86, 175, 2, 2, '1', '2023-03-31'),
(355, 15, 81, 173, 4, 4, '1', '2023-03-31'),
(356, 15, 79, 171, 3, 3, '1', '2023-03-31'),
(357, 15, 70, 178, 2, 2, '1', '2023-03-31'),
(358, 15, 71, 173, 2, 4, '1', '2023-03-31'),
(359, 15, 77, 175, 2, 2, '1', '2023-03-31'),
(360, 15, 75, 177, 1, 1, '1', '2023-03-31'),
(361, 15, 80, 175, 2, 2, '1', '2023-03-31'),
(362, 15, 58, 168, 3, 3, '2', '2023-03-31'),
(363, 15, 81, 174, 1, 1, '1', '2023-03-31'),
(364, 15, 61, 173, 4, 4, '1', '2023-03-31'),
(365, 15, 74, 174, 1, 1, '1', '2023-03-31'),
(366, 15, 85, 176, 3, 3, '1', '2023-03-31'),
(367, 15, 71, 174, 1, 1, '1', '2023-03-31'),
(368, 15, 77, 176, 3, 3, '1', '2023-03-31'),
(369, 15, 69, 174, 1, 1, '1', '2023-03-31'),
(370, 15, 85, 177, 1, 1, '1', '2023-03-31'),
(371, 15, 78, 178, 2, 2, '1', '2023-03-31'),
(372, 15, 61, 174, 1, 1, '1', '2023-03-31'),
(373, 15, 59, 175, 2, 2, '1', '2023-03-31'),
(374, 15, 62, 175, 2, 2, '1', '2023-03-31'),
(375, 15, 80, 176, 3, 3, '1', '2023-03-31'),
(376, 15, 84, 178, 2, 2, '1', '2023-03-31'),
(377, 15, 71, 175, 2, 2, '1', '2023-03-31'),
(378, 15, 73, 172, 1, 2, '1', '2023-03-31'),
(379, 15, 77, 177, 1, 1, '1', '2023-03-31'),
(380, 15, 76, 171, 3, 3, '1', '2023-03-31'),
(381, 15, 80, 177, 1, 1, '1', '2023-03-31'),
(382, 15, 79, 172, 2, 2, '1', '2023-03-31'),
(383, 15, 65, 173, 4, 4, '1', '2023-03-31'),
(384, 15, 76, 172, 2, 2, '1', '2023-03-31'),
(385, 15, 74, 175, 2, 2, '1', '2023-03-31'),
(386, 15, 67, 171, 3, 3, '1', '2023-03-31'),
(387, 15, 66, 173, 4, 4, '1', '2023-03-31'),
(388, 15, 64, 177, 1, 1, '1', '2023-03-31'),
(389, 15, 69, 175, 2, 2, '1', '2023-03-31'),
(390, 15, 59, 176, 3, 3, '1', '2023-03-31'),
(391, 15, 66, 174, 1, 1, '1', '2023-03-31'),
(392, 15, 86, 176, 3, 3, '1', '2023-03-31'),
(393, 15, 77, 178, 2, 2, '1', '2023-03-31'),
(394, 15, 75, 178, 1, 2, '1', '2023-03-31'),
(395, 15, 67, 172, 2, 2, '1', '2023-03-31'),
(396, 15, 70, 167, 4, 2, '2', '2023-03-31'),
(397, 15, 59, 177, 1, 1, '1', '2023-03-31'),
(398, 15, 65, 174, 1, 1, '1', '2023-03-31'),
(399, 15, 61, 175, 2, 2, '1', '2023-03-31'),
(400, 15, 66, 175, 2, 2, '1', '2023-03-31'),
(401, 15, 79, 173, 4, 4, '1', '2023-03-31'),
(402, 15, 71, 176, 3, 3, '1', '2023-03-31'),
(403, 15, 72, 173, 4, 4, '1', '2023-03-31'),
(404, 15, 71, 177, 1, 1, '1', '2023-03-31'),
(405, 15, 63, 171, 3, 3, '1', '2023-03-31'),
(406, 15, 65, 175, 2, 2, '1', '2023-03-31'),
(407, 15, 85, 178, 2, 2, '1', '2023-03-31'),
(408, 15, 68, 167, 3, 2, '2', '2023-03-31'),
(409, 15, 63, 172, 2, 2, '1', '2023-03-31'),
(410, 15, 82, 171, 2, 3, '1', '2023-03-31'),
(411, 15, 69, 176, 3, 3, '1', '2023-03-31'),
(412, 15, 58, 173, 3, 4, '1', '2023-03-31'),
(413, 15, 71, 178, 1, 2, '1', '2023-03-31'),
(414, 15, 72, 174, 1, 1, '1', '2023-03-31'),
(415, 15, 62, 176, 3, 3, '1', '2023-03-31'),
(416, 15, 70, 170, 3, 3, '1', '2023-03-31'),
(417, 15, 66, 176, 3, 3, '1', '2023-03-31'),
(418, 15, 84, 168, 2, 3, '2', '2023-03-31'),
(419, 15, 65, 176, 3, 3, '1', '2023-03-31'),
(420, 15, 80, 178, 2, 2, '1', '2023-03-31'),
(421, 15, 78, 168, 3, 3, '2', '2023-03-31'),
(422, 15, 65, 177, 1, 1, '1', '2023-03-31'),
(423, 15, 58, 174, 1, 1, '1', '2023-03-31'),
(424, 15, 69, 177, 1, 1, '1', '2023-03-31'),
(425, 15, 76, 173, 3, 4, '1', '2023-03-31'),
(426, 15, 73, 173, 2, 4, '1', '2023-03-31'),
(427, 15, 61, 176, 3, 3, '1', '2023-03-31'),
(428, 15, 66, 177, 1, 1, '1', '2023-03-31'),
(429, 15, 79, 174, 1, 1, '1', '2023-03-31'),
(430, 15, 76, 174, 1, 1, '1', '2023-03-31'),
(431, 15, 62, 177, 1, 1, '1', '2023-03-31'),
(432, 15, 61, 177, 1, 1, '1', '2023-03-31'),
(433, 15, 86, 177, 1, 1, '1', '2023-03-31'),
(434, 15, 73, 174, 1, 1, '1', '2023-03-31'),
(435, 15, 81, 175, 2, 2, '1', '2023-03-31'),
(436, 15, 74, 176, 3, 3, '1', '2023-03-31'),
(437, 15, 80, 167, 2, 2, '2', '2023-03-31'),
(438, 15, 67, 173, 4, 4, '1', '2023-03-31'),
(439, 15, 66, 178, 2, 2, '1', '2023-03-31'),
(440, 15, 72, 170, 2, 3, '1', '2023-03-31'),
(441, 15, 83, 168, 2, 3, '2', '2023-03-31'),
(442, 15, 79, 175, 2, 2, '1', '2023-03-31'),
(443, 15, 72, 175, 2, 2, '1', '2023-03-31'),
(444, 15, 85, 167, 2, 2, '2', '2023-03-31'),
(445, 15, 62, 178, 2, 2, '1', '2023-03-31'),
(446, 15, 63, 173, 3, 4, '1', '2023-03-31'),
(447, 15, 73, 175, 2, 2, '1', '2023-03-31'),
(448, 15, 74, 177, 1, 1, '1', '2023-03-31'),
(449, 15, 67, 174, 1, 1, '1', '2023-03-31'),
(450, 15, 65, 178, 2, 2, '1', '2023-03-31'),
(451, 15, 79, 176, 3, 3, '1', '2023-03-31'),
(452, 15, 76, 175, 2, 2, '1', '2023-03-31'),
(453, 15, 64, 178, 2, 2, '1', '2023-03-31'),
(454, 15, 69, 178, 1, 2, '1', '2023-03-31'),
(455, 15, 73, 176, 2, 3, '1', '2023-03-31'),
(456, 15, 79, 177, 1, 1, '1', '2023-03-31'),
(457, 15, 82, 172, 3, 2, '1', '2023-03-31'),
(458, 15, 63, 174, 1, 1, '1', '2023-03-31'),
(459, 15, 74, 178, 2, 2, '1', '2023-03-31'),
(460, 15, 73, 177, 1, 1, '1', '2023-03-31'),
(461, 15, 58, 175, 2, 2, '1', '2023-03-31'),
(462, 15, 86, 171, 3, 3, '1', '2023-03-31'),
(463, 15, 81, 176, 3, 3, '1', '2023-03-31'),
(464, 15, 72, 176, 3, 3, '1', '2023-03-31'),
(465, 15, 81, 177, 1, 1, '1', '2023-03-31'),
(466, 15, 64, 166, 1, 1, '1', '2023-03-31'),
(467, 15, 72, 177, 1, 1, '1', '2023-03-31'),
(468, 15, 74, 171, 3, 3, '1', '2023-03-31'),
(469, 15, 58, 176, 3, 3, '1', '2023-03-31'),
(470, 15, 67, 175, 2, 2, '1', '2023-03-31'),
(471, 15, 78, 175, 2, 2, '1', '2023-03-31'),
(472, 15, 58, 177, 1, 1, '1', '2023-03-31'),
(473, 15, 72, 178, 1, 2, '1', '2023-03-31'),
(474, 15, 86, 167, 1, 2, '2', '2023-03-31'),
(475, 15, 58, 178, 2, 2, '1', '2023-03-31'),
(476, 15, 82, 173, 3, 4, '1', '2023-03-31'),
(477, 15, 69, 167, 2, 2, '2', '2023-03-31'),
(478, 15, 76, 176, 2, 3, '1', '2023-03-31'),
(479, 15, 79, 178, 2, 2, '1', '2023-03-31'),
(480, 15, 63, 175, 2, 2, '1', '2023-03-31'),
(481, 15, 76, 177, 1, 1, '1', '2023-03-31'),
(482, 15, 61, 178, 1, 2, '1', '2023-03-31'),
(483, 15, 70, 172, 2, 2, '1', '2023-03-31'),
(484, 15, 70, 173, 4, 4, '1', '2023-03-31'),
(485, 15, 68, 168, 3, 3, '2', '2023-03-31'),
(486, 15, 70, 171, 3, 3, '1', '2023-03-31'),
(487, 15, 64, 176, 2, 3, '1', '2023-03-31'),
(488, 15, 63, 176, 3, 3, '1', '2023-03-31'),
(489, 15, 67, 165, 1, 1, '1', '2023-03-31'),
(490, 15, 82, 174, 1, 1, '1', '2023-03-31'),
(491, 15, 63, 177, 1, 1, '1', '2023-03-31'),
(492, 15, 86, 178, 1, 2, '1', '2023-03-31'),
(493, 15, 78, 167, 3, 2, '2', '2023-03-31'),
(494, 15, 82, 175, 4, 2, '1', '2023-03-31'),
(495, 15, 67, 176, 3, 3, '1', '2023-03-31'),
(496, 15, 67, 177, 1, 1, '1', '2023-03-31'),
(497, 15, 69, 168, 3, 3, '2', '2023-03-31'),
(498, 15, 76, 178, 2, 2, '1', '2023-03-31'),
(499, 15, 82, 176, 2, 3, '1', '2023-03-31'),
(500, 15, 81, 178, 1, 2, '1', '2023-03-31'),
(501, 15, 63, 178, 2, 2, '1', '2023-03-31'),
(502, 15, 82, 177, 1, 1, '1', '2023-03-31'),
(503, 15, 67, 178, 1, 2, '1', '2023-03-31'),
(504, 15, 82, 178, 1, 2, '1', '2023-03-31'),
(505, 15, 67, 169, 4, 4, '2', '2023-03-31'),
(506, 15, 73, 165, 2, 1, '1', '2023-03-31'),
(507, 15, 81, 171, 1, 3, '1', '2023-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_summary`
--

DROP TABLE IF EXISTS `tbl_result_summary`;
CREATE TABLE IF NOT EXISTS `tbl_result_summary` (
  `summary_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int UNSIGNED NOT NULL,
  `marks` decimal(10,2) NOT NULL,
  `added_date` date NOT NULL,
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_result_summary`
--

INSERT INTO `tbl_result_summary` (`summary_id`, `student_id`, `marks`, `added_date`) VALUES
(17, 2, '0.00', '2020-09-23'),
(18, 2, '8.00', '2021-03-14'),
(19, 2, '4.00', '2021-03-15'),
(20, 2, '0.00', '2021-03-15'),
(21, 2, '0.00', '2021-03-15'),
(22, 2, '0.00', '2021-03-15'),
(23, 2, '0.00', '2021-03-15'),
(24, 2, '5.00', '2021-03-16'),
(25, 2, '0.00', '2021-03-16'),
(26, 2, '0.00', '2021-03-16'),
(27, 2, '4.00', '2021-03-16'),
(28, 2, '1.00', '2021-03-16'),
(29, 2, '0.00', '2021-03-16'),
(30, 0, '0.00', '2021-03-16'),
(31, 2, '0.00', '2021-03-16'),
(32, 2, '6.00', '2021-03-16'),
(33, 2, '3.00', '2021-03-16'),
(34, 2, '3.00', '2021-03-16'),
(35, 2, '0.00', '2021-03-16'),
(36, 2, '0.00', '2021-03-16'),
(37, 2, '0.00', '2021-03-17'),
(38, 2, '0.00', '2021-03-17'),
(39, 2, '0.00', '2021-03-17'),
(40, 2, '0.00', '2021-03-17'),
(41, 2, '1.00', '2021-03-17'),
(42, 2, '10.00', '2021-03-17'),
(43, 2, '1.00', '2021-03-17'),
(44, 2, '2.00', '2021-03-17'),
(45, 2, '1.00', '2021-03-17'),
(46, 2, '1.00', '2021-03-17'),
(67, 2, '0.00', '2021-03-22'),
(68, 0, '0.00', '2021-03-22'),
(69, 2, '0.00', '2021-03-22'),
(70, 0, '0.00', '2021-03-22'),
(71, 2, '0.00', '2021-03-22'),
(72, 0, '0.00', '2021-03-22'),
(73, 2, '0.00', '2021-03-22'),
(74, 2, '0.00', '2021-03-22'),
(75, 2, '0.00', '2021-03-22'),
(76, 2, '0.00', '2021-03-22'),
(77, 2, '0.00', '2021-03-22'),
(78, 2, '0.00', '2021-03-22'),
(79, 2, '0.00', '2021-03-22'),
(80, 0, '0.00', '2021-03-22'),
(81, 2, '0.00', '2021-03-22'),
(82, 2, '3.00', '2021-03-22'),
(83, 2, '6.00', '2021-03-23'),
(84, 4, '0.00', '2021-04-07'),
(85, 4, '0.00', '2021-04-07'),
(86, 4, '0.00', '2021-04-07'),
(87, 5, '0.00', '2021-04-07'),
(88, 5, '0.00', '2021-04-07'),
(89, 5, '0.00', '2021-04-07'),
(90, 5, '0.00', '2021-04-07'),
(91, 5, '0.00', '2021-04-07'),
(92, 5, '0.00', '2021-04-07'),
(93, 5, '1.00', '2021-04-07'),
(94, 5, '1.00', '2021-04-07'),
(95, 5, '1.00', '2021-04-07'),
(96, 5, '1.00', '2021-04-07'),
(97, 5, '1.00', '2021-04-07'),
(98, 5, '1.00', '2021-04-07'),
(99, 0, '0.00', '2021-04-07'),
(100, 8, '0.00', '2021-05-21'),
(101, 8, '0.00', '2021-05-21'),
(102, 0, '0.00', '2021-05-21'),
(103, 8, '0.00', '2021-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
CREATE TABLE IF NOT EXISTS `tbl_student` (
  `student_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_id` int DEFAULT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `study_year` int NOT NULL,
  `department_id` int NOT NULL,
  `academic_year` year NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `department_id` (`department_id`),
  KEY `study_year` (`study_year`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `exam_id`, `first_name`, `last_name`, `email`, `username`, `password`, `contact`, `gender`, `study_year`, `department_id`, `academic_year`, `is_active`, `added_date`, `updated_date`) VALUES
(8, 1, 'Nathan', 'Zewdie', 'nathan@gmail.com', 'Nathan', 'dtu1234', '123151555', 'Male', 2, 4, 2021, 'yes', '2021-05-19', '2021-05-19'),
(57, NULL, 'ABEL', 'FASIL', 'abel12@gmail.com', 'DTU12R1278', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(58, NULL, 'ANDEBET', 'SISAY', 'abel12@gmail.com', 'DTU12R0572', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(59, NULL, 'BEKALU', 'MULUYE', 'abel12@gmail.com', 'DTU12R1699', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(60, NULL, 'BEREKET', 'ABERA', 'abel12@gmail.com', 'DTU12R1701', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(61, NULL, 'BIZUAYEHU', 'FEREDE', 'abel12@gmail.com', 'DTU12R0356', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(62, NULL, 'DAGIMAWI', 'ENGIDAWORK', 'abel12@gmail.com', 'DTU12R0468', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(63, NULL, 'DANIEL', 'GETAHUN', 'abel12@gmail.com', 'DTU12R0640', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(64, NULL, 'DAWIT', 'ASSAYE', 'abel12@gmail.com', 'DTU12R1601', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(65, NULL, 'DAWIT', 'TEWODROS', 'abel12@gmail.com', 'DTU12R0470', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(66, NULL, 'EDEN', 'MISGANAW', 'abel12@gmail.com', 'DTU12R0643', 'computer4', '9000000', 'F', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(67, NULL, 'ESTIFANOS', 'ABABU', 'abel12@gmail.com', 'DTU12R1502', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(68, NULL, 'FEYSEL', 'MOHAMMED', 'abel12@gmail.com', 'DTU12R0917', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(69, NULL, 'GIZEWORK', 'MARYE', 'abel12@gmail.com', 'DTU12R0256', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(70, NULL, 'HAILEMESKEL', 'YILMA', 'abel12@gmail.com', 'DTU12R1766', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(71, NULL, 'HANAN', 'HUSSEN', 'abel12@gmail.com', 'DTU12R1298', 'computer4', '9000000', 'F', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(72, NULL, 'MAMARU', 'ANMAW', 'abel12@gmail.com', 'DTU12R0539', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(73, NULL, 'MULAT', 'ASMARE', 'abel12@gmail.com', 'COM(R)130 /11', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(74, NULL, 'NAHOM', 'ADANE', 'abel12@gmail.com', 'DTU12R1154', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(75, NULL, 'SEWLESEW', 'TILAHUN', 'abel12@gmail.com', 'DTU12R1422', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(76, NULL, 'SINTAYEHU', 'ADIMASU', 'abel12@gmail.com', 'DTU12R0222', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(77, NULL, 'SURAFEL', 'ABDELA', 'abel12@gmail.com', 'DTU12R0495', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(78, NULL, 'TEMESGEN', 'TEFERI', 'abel12@gmail.com', 'DTU12R0163', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(79, NULL, 'TEMESGEN', 'YILMA', 'abel12@gmail.com', 'DTU12R1267', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(80, NULL, 'TINSEA', 'TEREFE', 'abel12@gmail.com', 'DTU12R1634', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(81, NULL, 'WONDIMAGEGN', 'MEKONNEN', 'abel12@gmail.com', 'DTU12R1105', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(82, NULL, 'WONDWOSEN', 'BEWKETU', 'abel12@gmail.com', 'DTU12R0615', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(83, NULL, 'YARED', 'MEKONNEN', 'abel12@gmail.com', 'DTU12R0789', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(84, NULL, 'YEABSIRA', 'HAILE', 'abel12@gmail.com', 'DTU12R1483', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(85, NULL, 'YOHANNES', 'MULAT', 'abel12@gmail.com', 'DTU12R1275', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31'),
(86, NULL, 'YORDANOS', 'FIKADU', 'abel12@gmail.com', 'DTU12R0172', 'computer4', '9000000', 'M', 4, 4, 2023, 'yes', '2023-03-31', '2023-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_exam_enrol`
--

DROP TABLE IF EXISTS `tbl_student_exam_enrol`;
CREATE TABLE IF NOT EXISTS `tbl_student_exam_enrol` (
  `student_exam_enrol_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `attendance_status` varchar(100) NOT NULL DEFAULT 'Absent',
  `login_history` int DEFAULT NULL,
  PRIMARY KEY (`student_exam_enrol_id`),
  KEY `student_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student_exam_enrol`
--

INSERT INTO `tbl_student_exam_enrol` (`student_exam_enrol_id`, `student_id`, `exam_id`, `attendance_status`, `login_history`) VALUES
(73, 8, 1, 'Present', 1),
(75, 8, 7, 'Absent', 0),
(76, 8, 6, 'Absent', 0),
(77, 13, 1, 'Absent', 0),
(90, 14, 1, 'Present', 0),
(91, 8, 11, 'Present', 0),
(92, 8, 12, 'Present', 1),
(93, 8, 10, 'Present', 0),
(97, 8, 13, 'Present', 1),
(98, 8, 14, 'Present', 0),
(99, 9, 15, 'Present', 1),
(100, 57, 15, 'Present', 1),
(101, 58, 15, 'Present', 1),
(102, 63, 15, 'Present', 1),
(103, 67, 15, 'Present', 1),
(104, 65, 15, 'Present', 1),
(105, 71, 15, 'Present', 1),
(106, 85, 15, 'Present', 1),
(107, 62, 15, 'Present', 1),
(108, 69, 15, 'Present', 1),
(109, 83, 15, 'Present', 1),
(110, 78, 15, 'Present', 1),
(111, 66, 15, 'Present', 1),
(112, 60, 15, 'Present', 1),
(113, 68, 15, 'Present', 1),
(114, 77, 15, 'Present', 1),
(115, 75, 15, 'Present', 1),
(116, 73, 15, 'Present', 1),
(117, 84, 15, 'Present', 1),
(118, 72, 15, 'Present', 1),
(119, 80, 15, 'Present', 1),
(120, 79, 15, 'Present', 1),
(121, 81, 15, 'Present', 1),
(122, 61, 15, 'Present', 1),
(123, 86, 15, 'Present', 1),
(124, 74, 15, 'Present', 1),
(125, 59, 15, 'Present', 1),
(126, 82, 15, 'Present', 1),
(127, 64, 15, 'Present', 1),
(128, 70, 15, 'Present', 1),
(129, 76, 15, 'Present', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

DROP TABLE IF EXISTS `tbl_teacher`;
CREATE TABLE IF NOT EXISTS `tbl_teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `department_id`) VALUES
(3, 'Abaynew', 'Takele', 'Abaynew', 'abaynew@gmail.com', 'dtu1234', 2),
(5, 'Gizatie', 'Desalegn', 'Gizatie', 'gizatie@gmail.com', 'dtu1234', 4),
(6, 'Adane', 'Belay', 'Adane', 'adane@gmail.com', 'dtu1234', 4),
(7, 'Fiseha', 'H/Slassie', 'Fiseha', 'fish@gmail.com', 'dtu1234', 4),
(8, 'Maru', 'Tesfaye', 'Maru', 'marutcomp@gmail.com', 'dtu1234', 4),
(9, 'Getasew', 'Nibretu', 'Getasew', 'getanib1978@gamil.com', 'dtu1234', 4),
(10, 'Endeshaw', 'Admassie', 'Endeshaw', 'endeshad@gmail.com', 'dtu1234', 4),
(12, 'Aragaw', 'Mehabie', 'Aragaw', 'amaragaw@gmail.com', 'dtu1234', 4),
(14, 'Sisay', 'Yemata', 'Sisay', 'yemata2004@gmail.com', 'dtu1234', 4),
(15, 'Worku', 'Mekonnen', 'Worku', 'workumt@gmail.com', 'dtu1234', 4),
(16, 'Fikir', 'Setie', 'Fikir', 'Fikiresetie@gmail.com ', 'dtu1234', 4),
(17, 'Melese', 'Bitew', 'Melese', 'melestheagew@gmail.com', 'dtu1234', 4),
(18, 'Wondwessen', 'Haile', 'Wondwessen', 'wondwessen533@gmail.com', 'dtu1234', 4),
(19, 'Moges', 'Tsegaw', 'Moges', 'moges.dtu@gmail.com ', 'dtu1234', 4),
(20, 'Yonathan', 'Misgan', 'Yonathan', 'yonathanmisgan99@gmail.com', 'dtu1234', 4),
(21, 'Huluager', 'Wale', 'Huluager', 'huleaw21@gmail.com ', 'dtu1234', 4),
(22, 'Habtamu', 'Kassa', 'Habtamu', 'habtemaryam16@gmail.com', 'dtu1234', 4),
(23, 'Abebe', 'Kindie', 'Abebe', 'abebedtu@gmail.com', 'dtu1234', 4),
(24, 'Genet', 'Worku', 'Genet', 'heavenworku21@gmail.com', 'dtu1234', 4),
(25, 'Habtamu', 'Asmare', 'Habtamu', '2gethas@gmail.com ', 'dtu1234', 4),
(26, 'Anduamlak', 'Abebe', 'Anduamlak', 'anduamlak09@gmail.com ', 'dtu1234', 4),
(27, 'Yaregal', 'Tadesse', 'Yaregal', 'yayasoles@gmail.com', 'dtu1234', 4),
(28, 'Zewdie', 'Habtie', 'Zewdie', 'zewdiehabtie26@gmail.com', 'dtu1234', 4),
(29, 'Fitehalew', 'Ashagrie', 'Fitehalew', 'leave dtu', 'dtu1234', 4),
(30, 'Mulugata', 'Yikuno', 'Mulugata', 'mulugeta.yikuno@gmail.com', 'dtu1234', 4),
(31, 'Belete', 'Getachew', 'Belete', 'beletegetachew44@gmail.com', 'dtu1234', 4),
(32, 'Wondifraw', 'Manaye', 'Wondifraw', 'wondebdu@gmail.com', 'dtu1234', 4),
(33, 'Enkusilasie', 'Tegegne', 'Enkusilasie', 'enkuteg2007@gmail.com', 'dtu1234', 4),
(34, 'Erimiyas', 'Tefera', 'Erimiyas', 'wteffera11@gmail.com', 'dtu1234', 4),
(35, 'Yonas', 'Belay', 'Yonas', 'yonasbelaygn@gmail.com', 'dtu1234', 4),
(36, 'Yared', 'Yenealem', 'Yared', 'yaryene@gmail.com', 'dtu1234', 4),
(37, 'Gergeto', 'Kusie', 'Gergeto', 'gergito2@gmail.com', 'dtu1234', 4),
(38, 'Tarke', 'Silshe', 'Tarke', 'ttsilesh87@gmail.com', 'dtu1234', 4),
(39, 'Gezahegn', 'Gobeze', 'Gezahegn', 'geze112439@gmail.com', 'dtu1234', 4),
(40, 'yerga', 'kene', 'yerga', 'yirga2274@gmail.com', 'dtu1234', 4),
(41, 'Muluken', 'Tilahun', 'Muluken', 'mulukentilahun1802@gmail.com', 'dtu1234', 4),
(42, 'Gebrerufael', 'Wondie', 'Gebrerufael', 'rufaelyaya@gmail.com', 'dtu1234', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_year_study`
--

DROP TABLE IF EXISTS `tbl_year_study`;
CREATE TABLE IF NOT EXISTS `tbl_year_study` (
  `study_year_id` int NOT NULL AUTO_INCREMENT,
  `year` varchar(50) NOT NULL,
  PRIMARY KEY (`study_year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_year_study`
--

INSERT INTO `tbl_year_study` (`study_year_id`, `year`) VALUES
(1, '1st'),
(2, '2nd'),
(3, '3rd'),
(4, '4th'),
(5, '5th'),
(6, '6th');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD CONSTRAINT `tbl_course_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_course_ibfk_5` FOREIGN KEY (`department_id`) REFERENCES `tbl_department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_course_ibfk_6` FOREIGN KEY (`study_year`) REFERENCES `tbl_year_study` (`study_year_id`);

--
-- Constraints for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD CONSTRAINT `tbl_department_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_department_head`
--
ALTER TABLE `tbl_department_head`
  ADD CONSTRAINT `tbl_department_head_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `tbl_department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_exam`
--
ALTER TABLE `tbl_exam`
  ADD CONSTRAINT `tbl_exam_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_faculty_dean`
--
ALTER TABLE `tbl_faculty_dean`
  ADD CONSTRAINT `tbl_faculty_dean_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD CONSTRAINT `tbl_student_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `tbl_department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_student_ibfk_2` FOREIGN KEY (`study_year`) REFERENCES `tbl_year_study` (`study_year_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD CONSTRAINT `tbl_teacher_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `tbl_department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
