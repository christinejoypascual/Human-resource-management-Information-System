-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 10:51 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_user` varchar(30) NOT NULL,
  `admin_pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_rank`
--

CREATE TABLE `tbl_academic_rank` (
  `rank_id` int(3) NOT NULL,
  `rank_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_academic_rank`
--

INSERT INTO `tbl_academic_rank` (`rank_id`, `rank_name`) VALUES
(1, 'Instructor I'),
(2, 'Instructor II'),
(3, 'Instructor III'),
(9, 'Assistant Professor I'),
(10, 'Assistant Professor II'),
(11, 'Assistant Professor III'),
(12, 'Assistant Professor IV'),
(13, 'Associate Professor II'),
(14, 'Associate Professor I'),
(15, 'Associate Professor III'),
(16, 'Associate Professor IV'),
(17, 'Associate Professor V'),
(18, 'Professor I'),
(19, 'Professor II'),
(20, 'Professor III'),
(21, 'Professor IV'),
(22, 'Professor V'),
(23, 'Professor VI'),
(24, 'Professor VII'),
(26, 'Professor VIII');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dept_id` int(3) NOT NULL,
  `dept_name` char(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `dept_name`) VALUES
(2, 'Army'),
(3, 'Navy'),
(4, 'Marines'),
(5, 'Air Force');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(7) NOT NULL,
  `file_name` varchar(500) NOT NULL,
  `per_id` int(6) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `date_uploaded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_name`, `per_id`, `filetype`, `date_uploaded`) VALUES
(45, 'uploads/BARCODES.docx', 165, 'docx', '2020-06-09'),
(46, 'uploads/AUTHORIZATION LETTER.docx', 166, 'docx', '2020-06-09'),
(47, 'uploads/aboutme.docx', 165, 'docx', '2020-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gass_rank`
--

CREATE TABLE `tbl_gass_rank` (
  `gass_id` int(3) NOT NULL,
  `gass_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gass_rank`
--

INSERT INTO `tbl_gass_rank` (`gass_id`, `gass_name`) VALUES
(1, 'Administrative Aide I'),
(2, 'Administrative Aide II'),
(3, 'Administrative Aide III'),
(4, 'Administrative Aide IV'),
(5, 'Administrative Aide V'),
(6, 'Administrative Aide VI'),
(7, 'Administrative Assistant I'),
(8, 'Administrative Assistant II'),
(9, 'Administrative Assistant III'),
(10, 'Administrative Assistant IV'),
(11, 'Administrative Assistant V'),
(12, 'Administrative Officer I'),
(13, 'Administrative Officer II'),
(14, 'Administrative Officer III'),
(15, 'Administrative Officer IV'),
(16, 'Administrative Officer V'),
(17, 'Chief Administrative Officer'),
(18, 'SUC President I'),
(19, 'SUC President II'),
(20, 'SUC President III'),
(21, 'SUC President IV'),
(22, 'SUC President V'),
(23, 'Guidance Counselor I'),
(24, 'Guidance Counselor II'),
(25, 'Guidance Counselor III'),
(26, 'Dentist I'),
(27, 'Dentist II'),
(28, 'Dentist III'),
(29, 'Nurse I'),
(30, 'Nurse II'),
(31, 'Nurse III'),
(32, 'Registrar I'),
(33, 'Registrar II'),
(34, 'Registrar III'),
(35, 'Registrar IV'),
(36, 'Registrar V'),
(37, 'Security Guard I'),
(38, 'Security Guard II'),
(39, 'Security Guard III'),
(40, 'Security Guard IV'),
(42, 'College Librarian I');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personnel`
--

CREATE TABLE `tbl_personnel` (
  `per_id` int(6) NOT NULL,
  `per_firstname` char(20) NOT NULL,
  `per_middlename` char(20) NOT NULL,
  `per_lastname` char(20) NOT NULL,
  `per_suffix` char(2) NOT NULL,
  `pos_id` int(3) NOT NULL,
  `per_gender` char(6) NOT NULL,
  `per_status` char(8) NOT NULL,
  `per_address` varchar(150) NOT NULL,
  `per_date_of_birth` date NOT NULL,
  `per_place_of_birth` varchar(150) NOT NULL,
  `per_date_of_original_appointment` date NOT NULL,
  `per_eligibility` varchar(20) NOT NULL,
  `per_campus` char(14) NOT NULL,
  `dept_id` int(3) NOT NULL,
  `per_designation` varchar(50) NOT NULL,
  `per_tin_no` varchar(20) NOT NULL,
  `per_gsis_bp_no` varchar(15) NOT NULL,
  `per_pagibig_no` varchar(14) NOT NULL,
  `per_plantilla_no` int(25) NOT NULL,
  `promote_id` int(5) NOT NULL,
  `per_contact_no` varchar(20) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `bs_name` varchar(50) NOT NULL,
  `bs_year` year(4) NOT NULL,
  `bs_school` varchar(50) NOT NULL,
  `ms_name` varchar(50) NOT NULL,
  `ms_with_unit` varchar(12) NOT NULL,
  `ms_year` year(4) NOT NULL,
  `ms_school` varchar(50) NOT NULL,
  `dr_name` varchar(50) NOT NULL,
  `dr_year` year(4) NOT NULL,
  `dr_with_unit` varchar(12) NOT NULL,
  `dr_school` varchar(50) NOT NULL,
  `other_degree` varchar(50) NOT NULL,
  `other_year` year(4) NOT NULL,
  `other_school` varchar(50) NOT NULL,
  `per_image` varchar(1000) NOT NULL,
  `date_modified` date NOT NULL,
  `gass_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_personnel`
--

INSERT INTO `tbl_personnel` (`per_id`, `per_firstname`, `per_middlename`, `per_lastname`, `per_suffix`, `pos_id`, `per_gender`, `per_status`, `per_address`, `per_date_of_birth`, `per_place_of_birth`, `per_date_of_original_appointment`, `per_eligibility`, `per_campus`, `dept_id`, `per_designation`, `per_tin_no`, `per_gsis_bp_no`, `per_pagibig_no`, `per_plantilla_no`, `promote_id`, `per_contact_no`, `rank_id`, `bs_name`, `bs_year`, `bs_school`, `ms_name`, `ms_with_unit`, `ms_year`, `ms_school`, `dr_name`, `dr_year`, `dr_with_unit`, `dr_school`, `other_degree`, `other_year`, `other_school`, `per_image`, `date_modified`, `gass_id`) VALUES
(165, 'Christopher', 'John', 'Pascual', '', 43, 'Male', 'Married', 'Guimba', '1992-06-11', 'Makati City', '2020-06-24', '123123123123', 'Navy', 3, 'Permanent', '123-123-123', '123-123-123', '123-123-   ', 2147483647, 0, '+639 090-557-120', 2, 'Bachelor of Science and Information Technology', 2015, 'CRT', 'N/A', 'N/A', 0000, 'N/A', 'N/A', 0000, 'N/A', 'N/A', 'N/A', 0000, 'N/A', '', '2020-06-09', 18),
(166, 'Christine', 'Joy', 'Pascual', '', 51, 'Female', 'Married', 'Cabanatuan', '1955-07-11', 'Makati City', '1980-07-11', '123123123123', 'Air Force', 3, 'Permanent', '324-123-131', '123-412-341', '124-124-124', 2147483647, 0, '+639 090-557-120', 22, 'Hotel and Restaurant Management', 2016, 'CRT', 'N/A', 'N/A', 0000, 'N/A', 'N/A', 0000, 'N/A', 'N/A', 'N/A', 0000, 'N/A', '', '2020-06-11', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personnel_master_file`
--

CREATE TABLE `tbl_personnel_master_file` (
  `per_id` int(7) NOT NULL,
  `per_firstname` char(20) NOT NULL,
  `per_middlename` char(20) NOT NULL,
  `per_lastname` char(20) NOT NULL,
  `per_suffix` char(2) NOT NULL,
  `pos_id` int(3) NOT NULL,
  `per_gender` char(6) NOT NULL,
  `per_status` char(8) NOT NULL,
  `per_address` varchar(150) NOT NULL,
  `per_date_of_birth` date NOT NULL,
  `per_place_of_birth` varchar(150) NOT NULL,
  `per_date_of_original_appointment` date NOT NULL,
  `per_eligibility` varchar(20) NOT NULL,
  `per_campus` char(14) NOT NULL,
  `dept_id` int(3) NOT NULL,
  `per_designation` varchar(50) NOT NULL,
  `per_tin_no` varchar(20) NOT NULL,
  `per_gsis_bp_no` varchar(15) NOT NULL,
  `per_pagibig_no` varchar(14) NOT NULL,
  `per_plantilla_no` int(25) NOT NULL,
  `promote_id` int(5) NOT NULL,
  `per_contact_no` varchar(20) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `bs_name` varchar(50) NOT NULL,
  `bs_year` year(4) NOT NULL,
  `bs_school` varchar(50) NOT NULL,
  `ms_name` varchar(50) NOT NULL,
  `ms_with_unit` varchar(12) NOT NULL,
  `ms_year` year(4) NOT NULL,
  `ms_school` varchar(50) NOT NULL,
  `dr_name` varchar(50) NOT NULL,
  `dr_with_unit` varchar(12) NOT NULL,
  `dr_year` year(4) NOT NULL,
  `dr_school` varchar(50) NOT NULL,
  `other_degree` varchar(50) NOT NULL,
  `other_year` year(4) NOT NULL,
  `other_school` varchar(50) NOT NULL,
  `per_image` varchar(1000) NOT NULL,
  `date_modified` date NOT NULL,
  `gass_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_personnel_master_file`
--

INSERT INTO `tbl_personnel_master_file` (`per_id`, `per_firstname`, `per_middlename`, `per_lastname`, `per_suffix`, `pos_id`, `per_gender`, `per_status`, `per_address`, `per_date_of_birth`, `per_place_of_birth`, `per_date_of_original_appointment`, `per_eligibility`, `per_campus`, `dept_id`, `per_designation`, `per_tin_no`, `per_gsis_bp_no`, `per_pagibig_no`, `per_plantilla_no`, `promote_id`, `per_contact_no`, `rank_id`, `bs_name`, `bs_year`, `bs_school`, `ms_name`, `ms_with_unit`, `ms_year`, `ms_school`, `dr_name`, `dr_with_unit`, `dr_year`, `dr_school`, `other_degree`, `other_year`, `other_school`, `per_image`, `date_modified`, `gass_id`) VALUES
(165, 'John Elton', 'Libao', 'Mackay', '', 43, 'Male', 'Married', 'Sumacab Norte', '2020-06-11', 'Makati City', '2020-06-24', '123123123123', 'Fortune Towne', 3, 'Job-Order', '123-123-123', '123-123-123', '123-123-   ', 2147483647, 0, '09055712024', 2, 'BSIT', 2015, 'CRT', 'N/A', 'N/A', 0000, 'N/A', 'N/A', '0', 0000, 'N/A', 'N/A', 0000, 'N/A', '', '2020-06-09', 18),
(166, 'Cherry Ann', 'Hipolito', 'Mackay', '', 56, 'Female', 'Married', 'Sumacab Norte', '2020-07-01', 'Makati City', '2020-06-25', '123123123123', 'Fortune Towne', 3, 'Permanent', '324-123-131', '123-412-341', '124-124-124', 2147483647, 0, '09055712024', 22, 'Hotel and Restaurant Management', 2016, 'CRT', 'N/A', 'N/A', 0000, 'N/A', 'N/A', '0', 0000, 'N/A', 'N/A', 0000, 'N/A', '', '2020-06-09', 14),
(166, 'Cherry Ann', 'Hipolito', 'Mackay', '', 56, 'Female', 'Married', 'Sumacab Norte', '2020-07-01', 'Makati City', '2020-06-25', '123123123123', 'Binalbagan', 3, 'Permanent', '324-123-131', '123-412-341', '124-124-124', 2147483647, 0, '+639 090-557-120', 22, 'Hotel and Restaurant Management', 2016, 'CRT', 'N/A', 'N/A', 0000, 'N/A', 'N/A', '0', 0000, 'N/A', 'N/A', 0000, 'N/A', '', '2020-06-09', 14),
(166, 'Cherry Ann', 'Hipolito', 'Mackay', '', 56, 'Female', 'Married', 'Sumacab Norte', '1970-07-11', 'Makati City', '2020-06-25', '123123123123', 'Binalbagan', 3, 'Permanent', '324-123-131', '123-412-341', '124-124-124', 2147483647, 0, '+639 090-557-120', 22, 'Hotel and Restaurant Management', 2016, 'CRT', 'N/A', 'N/A', 0000, 'N/A', 'N/A', '0', 0000, 'N/A', 'N/A', 0000, 'N/A', '', '2020-06-09', 14),
(166, 'Cherry Ann', 'Hipolito', 'Mackay', '', 56, 'Female', 'Married', 'Sumacab Norte', '1970-07-11', 'Makati City', '1980-07-11', '123123123123', 'Binalbagan', 3, 'Permanent', '324-123-131', '123-412-341', '124-124-124', 2147483647, 0, '+639 090-557-120', 22, 'Hotel and Restaurant Management', 2016, 'CRT', 'N/A', 'N/A', 0000, 'N/A', 'N/A', '0', 0000, 'N/A', 'N/A', 0000, 'N/A', '', '2020-06-09', 14),
(166, 'Christine', 'Joy', 'Pascual', '', 56, 'Female', 'Married', 'Cabanatuan', '1955-07-11', 'Makati City', '1980-07-11', '123123123123', 'Air Force', 3, 'Permanent', '324-123-131', '123-412-341', '124-124-124', 2147483647, 0, '+639 090-557-120', 22, 'Hotel and Restaurant Management', 2016, 'CRT', 'N/A', 'N/A', 0000, 'N/A', 'N/A', '0', 0000, 'N/A', 'N/A', 0000, 'N/A', '', '2020-06-09', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `pos_id` int(3) NOT NULL,
  `pos_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`pos_id`, `pos_name`) VALUES
(41, 'Private'),
(42, 'Private First Class'),
(43, 'Corporal'),
(44, 'Sergeant'),
(45, 'Staff Sergeant'),
(46, 'Technical Sergeant'),
(47, 'Lieutenant Colonel'),
(48, 'Master Sergeant'),
(49, 'Senior Master Sergeant'),
(50, 'Chief Master Sergeant'),
(51, 'First Chief Master Sergeant'),
(52, 'Second Lieutenant'),
(53, 'First Lieutenant'),
(54, 'Captain'),
(55, 'Major'),
(82, 'Lieutenant Colonel'),
(83, 'Colonel'),
(84, 'Brigadier General'),
(85, 'Major General'),
(86, 'Lieutenant General'),
(87, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotion`
--

CREATE TABLE `tbl_promotion` (
  `promote_id` int(5) NOT NULL,
  `per_id` int(6) NOT NULL,
  `rank_id` int(3) NOT NULL,
  `date_promoted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_promotion`
--

INSERT INTO `tbl_promotion` (`promote_id`, `per_id`, `rank_id`, `date_promoted`) VALUES
(1, 67, 2, '2015-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_academic_rank`
--
ALTER TABLE `tbl_academic_rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_gass_rank`
--
ALTER TABLE `tbl_gass_rank`
  ADD PRIMARY KEY (`gass_id`);

--
-- Indexes for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  ADD PRIMARY KEY (`promote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_academic_rank`
--
ALTER TABLE `tbl_academic_rank`
  MODIFY `rank_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tbl_gass_rank`
--
ALTER TABLE `tbl_gass_rank`
  MODIFY `gass_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  MODIFY `per_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `pos_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  MODIFY `promote_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
