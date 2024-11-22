-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 09:41 PM
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
-- Database: `nodelogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(10) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient_name`, `department`, `doctor_name`, `date`, `time`, `email`, `phone`) VALUES
(6, 'Test', 'Orthopedics', 'B.rabbit', '26/03/2020', '10:43 AM', 'gmhs13@yopmail.com', '7865641399'),
(10, 'Test123', 'Orthopedics', 'doc test', '18/03/2020', '1:41 AM', 'gmhs13@yopmail.com', '7865641399'),
(15, 'ads', 'Dentists', 'asdf', '10/11/2024', '1:54 AM', 'fasjd@smklnfad', 'asdf'),
(16, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(10) NOT NULL,
  `message` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `message`, `name`, `email`, `subject`) VALUES
(1, 'wdawdws', 'awdawd', 'awdw', 'adwwd'),
(2, 'Definition of complain. intransitive verb. 1 : to express grief, pain, or discontent complaining about the weather. 2 : to make a formal accusation or charge He threatened to complain of him to the captain.', 'Isaiah L. Smith', 'gmhs13@yopmail.com', 'dafsgd'),
(3, 'redtfyguhijo', 'simanto', 'gmhs13@yopmail.com', 'ytguijopk['),
(4, 'abcabcbacbacbabc', 'Isaiah L. Smith', 'gmhs13@yopmail.com', 'dadsvfbgfng');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `department_desc`) VALUES
(11, 'Intensive Care Unit (ICU)', 'What is an intensive care unit (ICU)? Intensive care refers to the specialised treatment given to patients who are acutely unwell and require critical medical care. An intensive care unit (ICU) provides the critical care and life support for acutely ill a'),
(16, 'Neurology', 'Neurology is a branch of medicine dealing with disorders of the nervous system. Neurology deals with the diagnosis and treatment of all categories of conditions and disease involving the central and peripheral nervous systems, including their coverings'),
(17, 'Opthalmology', 'dfvgbhjnkml'),
(18, 'Orthopedics', 'dfyuyuo'),
(19, 'Cancer Department', 'asyckuauhcioa'),
(20, 'ENT department', 'savcjaub');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` text NOT NULL,
  `department` varchar(50) NOT NULL,
  `biography` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `first_name`, `last_name`, `email`, `dob`, `gender`, `address`, `phone`, `image`, `department`, `biography`) VALUES
(39, 'AV', 'Stranger', 'gmhs13@yopmail.com', '18/03/2020', 'male', '3125  Elkview Drive, Miami,33169', '7865641399', 'user-02.jpg', 'Intensive Care Unit (ICU)', 'dawfesgrthy'),
(41, 'SHAHID AFRIDI', 'ZIHAD', 'gmhs13@yopmail.com', '18/03/2020', 'male', '3125  Elkview Drive, Miami,33169', '7865641399', 'reservation.png', 'Intensive Care Unit (ICU)', 'awdsaef');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `salary` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `contact`, `join_date`, `role`, `salary`) VALUES
(18, 'user2', 'gmhs13@yopmail.com', '1568496', '26/03/2020', 'Receptionist', '3000'),
(19, 'abc', 'gmhs13@yopmail.com', '7865641399', '26/03/2020', 'Pharmacist', '3000'),
(20, 'Abc', 'gmhs13@yopmail.com', '0159653', '26/03/2020', 'Pharmacist', '651320');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `date_from` varchar(255) NOT NULL,
  `date_to` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee`, `emp_id`, `leave_type`, `date_from`, `date_to`, `reason`) VALUES
(7, 'Isaiah L. Smith', 4, 'Medical Leave', '26/03/2020', '31/03/2020', 'acdsvfbgnh');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`) VALUES
(1, 'test', 'test', 'gmhs13@yopmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `maintenancelog`
--

CREATE TABLE `maintenancelog` (
  `log_id` int(11) NOT NULL,
  `date_completed` date DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `student_id` varchar(8) DEFAULT NULL,
  `action_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenancelog`
--

INSERT INTO `maintenancelog` (`log_id`, `date_completed`, `request_id`, `student_id`, `action_type`) VALUES
(1, '2024-09-22', 19, '23BDS123', 'Approved'),
(2, '2024-09-22', 19, '23BDS123', 'Approved'),
(3, '2024-10-23', 19, '23BDS123', 'Approved'),
(12, '2024-11-10', 27, '23BCS282', 'Accepted Request'),
(13, '2024-11-10', 27, '23BCS282', 'Rejected Request'),
(14, '2024-02-11', 8, '23BCS294', 'Accepted Request'),
(15, '2024-02-11', 8, '23BCS294', 'Accepted Request'),
(16, '2023-12-11', 28, '22BDS065', 'Added Pending'),
(17, '2024-11-16', 29, '23BEC011', 'Added Pending'),
(18, '0000-00-00', 30, 'fansdams', 'Added Pending'),
(19, '0000-00-00', 30, 'fansdams', 'Rejected Request'),
(20, '0000-00-00', 30, 'fansdams', 'Accepted Request'),
(21, '0000-00-00', 30, 'fansdams', 'Rejected Request'),
(22, '0000-00-00', 30, 'fansdams', 'Accepted Request'),
(23, '2024-11-10', 31, '23BCS293', 'Added Pending'),
(24, '2024-11-10', 31, '23BCS293', 'Accepted Request'),
(25, '2024-11-20', 32, '23BCS281', 'Added Pending'),
(26, '2024-11-20', 32, '23BCS281', 'Accepted Request'),
(27, '2024-11-10', 11, '23BCS295', 'Accepted Request');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `resource_id` int(11) NOT NULL,
  `resource_name` varchar(100) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `p_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`resource_id`, `resource_name`, `quantity`, `price`, `p_date`) VALUES
(1, 'Table', 99, 1200, '2024-11-16'),
(2, 'Chair', 8, 400, '2020-07-11'),
(3, 'Fan', 14, 2000, '2020-12-11'),
(4, 'Tube light', 86, 1200, '2020-11-11'),
(5, 'Bed', 50, 3000, '2020-10-11'),
(6, 'Cupboard', 39, 3500, '2024-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `resourcerequests`
--

CREATE TABLE `resourcerequests` (
  `request_id` int(11) NOT NULL,
  `room_no` varchar(4) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `student_id` varchar(8) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `request_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resourcerequests`
--

INSERT INTO `resourcerequests` (`request_id`, `room_no`, `resource_id`, `student_id`, `quantity`, `status`, `request_date`) VALUES
(8, 'A405', 6, '23BCS294', 6, 'Approved', '2024-02-11'),
(9, 'B201', 2, '23BCS284', 2, 'Approved', '2024-11-10'),
(11, 'A405', 4, '23BCS295', 2, 'Approved', '2024-11-10'),
(17, 'F302', 6, '23BCS288', 1, 'Approved', '2024-11-12'),
(18, 'pfai', 2, '23BCS293', 4, 'Approved', '2024-11-10'),
(19, 'G102', 5, '23BDS123', 2, 'Approved', '2024-10-11'),
(23, 'A202', 4, '23BCS251', 2, 'Approved', '2024-11-13'),
(25, 'G406', 4, '23BCS105', 2, 'Approved', '2024-02-11'),
(27, 'G104', 2, '23BCS282', 3, 'Rejected', '2024-11-10'),
(28, 'E302', 1, '22BDS065', 2, 'Pending', '2023-12-11'),
(29, 'G403', 3, '23BEC011', 1, 'Pending', '2024-11-16'),
(30, 'sghk', 3, 'fansdams', 3, 'Approved', '0000-00-00'),
(31, 'F401', 1, '23BCS293', 1, 'Approved', '2024-11-10'),
(32, 'G103', 4, '23BCS281', 2, 'Approved', '2024-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` varchar(4) NOT NULL,
  `capacity` int(11) NOT NULL,
  `block_id` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `p_date` varchar(255) NOT NULL,
  `expire` varchar(255) NOT NULL,
  `expire_end` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`, `p_date`, `expire`, `expire_end`, `price`, `quantity`) VALUES
(4, 'Napa', '20/03/2020', '2', '19/03/2020', '8', '100'),
(8, 'Seclo', '24/03/2020', '2', '24/03/2020', '5', '200'),
(9, 'Napa', '24/03/2020', '1 ', '19/03/2020', '10', '20');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `email`, `token`) VALUES
(19, 'test555@yopmail.com', '46fn0pl3'),
(19, 'test555@yopmail.com', 'w6pvf2oq'),
(21, 'te555@yopmail.com', '9sfs6gu8'),
(19, 'test555@yopmail.com', '46fn0pl3'),
(19, 'test555@yopmail.com', 'w6pvf2oq'),
(21, 'te555@yopmail.com', '9sfs6gu8');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `google_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_type` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `google_id`, `email`, `username`, `created_at`, `updated_at`, `user_type`) VALUES
(1, 'fhdjs47382afg876', '23bcs288@iiitdmj.ac.in', 'Joshua Jose Felix', '2024-11-22 20:39:33', '2024-11-22 20:39:33', 'Admin'),
(2, 'afh3543edfgr43dc', '23bcs282@iiitdmj.ac.in', 'Abel Shine Varghese', '2024-11-22 20:39:33', '2024-11-22 20:39:33', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `email_status`) VALUES
(9, 'zihad', 'zihad.1d@yopmail.com', '123', 'verified'),
(19, 'test', 'test555@yopmail.com', '123', 'verified'),
(20, 'abc', 'gmhs13@yopmail.com', '12345', 'not_verified'),
(21, 'alamin', 'te555@yopmail.com', 'abc', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`id`, `username`, `email`, `token`) VALUES
(4, 'zihad', 'zihad.1d@yopmail.com', 'lp5ux5ik'),
(14, 'test', 'test555@yopmail.com', '3udlo9v6'),
(15, 'abc', 'gmhs13@yopmail.com', 'w2px024k'),
(16, 'alamin', 'te555@yopmail.com', 'ix8enxdh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenancelog`
--
ALTER TABLE `maintenancelog`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`resource_id`);

--
-- Indexes for table `resourcerequests`
--
ALTER TABLE `resourcerequests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenancelog`
--
ALTER TABLE `maintenancelog`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `resourcerequests`
--
ALTER TABLE `resourcerequests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintenancelog`
--
ALTER TABLE `maintenancelog`
  ADD CONSTRAINT `maintenancelog_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `resourcerequests` (`request_id`),
  ADD CONSTRAINT `maintenancelog_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `resourcerequests` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
