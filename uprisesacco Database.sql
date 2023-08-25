-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 08:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uprisesacco`
--

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `receipt_no` int(10) NOT NULL,
  `client_id` int(8) NOT NULL,
  `client_pledge_cleared` int(8) NOT NULL,
  `deposit_date` date DEFAULT NULL,
  `contribution_progress` int(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contributions`
--

INSERT INTO `contributions` (`receipt_no`, `client_id`, `client_pledge_cleared`, `deposit_date`, `contribution_progress`, `created_at`, `updated_at`) VALUES
(12345, 7, 60000, '2023-06-15', 5, NULL, NULL),
(23412, 6, 51000, '2023-06-30', 4, NULL, NULL),
(23456, 8, 35000, '2023-07-15', 3, NULL, NULL),
(24536, 1, 70000, '2023-08-07', 6, '2023-12-22 21:00:00', '2024-12-03 21:00:00'),
(34561, 1, 59000, '2023-07-20', 5, NULL, NULL),
(34567, 9, 54000, '2023-08-03', 5, NULL, NULL),
(41232, 3, 50000, '2023-06-07', 4, '2023-09-12 21:00:00', '2024-09-18 21:00:00'),
(41233, 15, 75000, '2023-02-15', 6, '2023-09-12 18:00:00', '2023-09-18 18:00:00'),
(41234, 28, 100000, '2023-04-03', 8, '2023-10-05 09:00:00', '2023-10-18 15:00:00'),
(41235, 42, 30000, '2023-05-20', 3, '2023-11-10 06:00:00', '2023-11-15 13:00:00'),
(41236, 57, 50000, '2023-07-08', 4, '2023-12-02 11:00:00', '2023-12-10 17:00:00'),
(41237, 66, 80000, '2023-09-21', 7, '2023-12-15 08:00:00', '2023-12-20 14:00:00'),
(41238, 73, 15000, '2023-11-05', 1, '2023-12-28 06:00:00', '2024-01-01 09:00:00'),
(41239, 22, 60000, '2023-01-22', 5, '2023-01-28 07:00:00', '2023-02-02 12:00:00'),
(41240, 39, 45000, '2023-03-18', 4, '2023-02-08 10:00:00', '2023-02-14 16:00:00'),
(41241, 47, 20000, '2023-05-11', 2, '2023-02-18 05:00:00', '2023-02-24 11:00:00'),
(41242, 58, 30000, '2023-07-03', 3, '2023-03-01 13:00:00', '2023-03-07 19:00:00'),
(41243, 67, 70000, '2023-09-25', 6, '2023-03-12 07:00:00', '2023-03-18 13:00:00'),
(41244, 75, 55000, '2023-11-17', 5, '2023-03-25 08:00:00', '2023-03-31 14:00:00'),
(41245, 12, 90000, '2023-02-01', 8, '2023-04-02 09:00:00', '2023-04-08 15:00:00'),
(41246, 33, 12000, '2023-04-28', 1, '2023-04-10 11:00:00', '2023-04-16 17:00:00'),
(41247, 49, 25000, '2023-06-19', 2, '2023-04-18 06:00:00', '2023-04-24 12:00:00'),
(41248, 63, 40000, '2023-08-11', 3, '2023-05-01 05:00:00', '2023-05-07 11:00:00'),
(41249, 7, 35000, '2023-10-03', 3, '2023-05-10 10:00:00', '2023-05-16 16:00:00'),
(41250, 26, 60000, '2023-12-23', 5, '2023-05-19 07:00:00', '2023-05-25 13:00:00'),
(41251, 38, 18000, '2023-02-14', 2, '2023-06-02 08:00:00', '2023-06-08 14:00:00'),
(41252, 53, 32000, '2023-04-09', 3, '2023-06-10 09:00:00', '2023-06-16 15:00:00'),
(41253, 68, 29000, '2023-06-02', 2, '2023-06-18 06:00:00', '2023-06-24 12:00:00'),
(41254, 9, 80000, '2023-08-04', 7, '2023-06-26 07:00:00', '2023-07-02 13:00:00'),
(41255, 25, 70000, '2023-10-16', 6, '2023-07-04 10:00:00', '2023-07-10 16:00:00'),
(41256, 40, 50000, '2023-12-09', 4, '2023-07-12 11:00:00', '2023-07-18 17:00:00'),
(41257, 56, 27000, '2023-02-28', 2, '2023-07-20 08:00:00', '2023-07-26 14:00:00'),
(41258, 71, 42000, '2023-04-21', 4, '2023-07-28 09:00:00', '2023-08-03 15:00:00'),
(41259, 10, 13000, '2023-06-14', 1, '2023-08-05 05:00:00', '2023-08-11 11:00:00'),
(41260, 30, 23000, '2023-08-06', 2, '2023-08-13 06:00:00', '2023-08-19 12:00:00'),
(41261, 46, 36000, '2023-10-18', 3, '2023-08-21 07:00:00', '2023-08-27 13:00:00'),
(41262, 60, 60000, '2023-12-10', 5, '2023-08-29 08:00:00', '2023-09-04 14:00:00'),
(41263, 72, 20000, '2023-01-02', 2, '2023-09-06 05:00:00', '2023-09-12 11:00:00'),
(41264, 5, 45000, '2023-03-06', 4, '2023-09-14 06:00:00', '2023-09-20 12:00:00'),
(41265, 18, 29000, '2023-05-07', 4, '2023-09-22 07:00:00', '2023-09-28 13:00:00'),
(41266, 31, 36000, '2023-07-09', 3, '2023-09-30 08:00:00', '2023-10-06 14:00:00'),
(41267, 44, 24000, '2023-09-01', 2, '2023-10-08 09:00:00', '2023-10-14 15:00:00'),
(41268, 59, 42000, '2023-11-11', 1, '2023-10-16 06:00:00', '2023-10-22 12:00:00'),
(41269, 70, 32000, '2023-01-14', 4, '2023-10-24 07:00:00', '2023-10-30 13:00:00'),
(41270, 8, 50000, '2023-03-16', 3, '2023-11-01 08:00:00', '2023-11-07 14:00:00'),
(41271, 23, 27000, '2023-05-18', 2, '2023-11-09 09:00:00', '2023-11-15 15:00:00'),
(41272, 36, 38000, '2023-07-20', 1, '2023-11-17 06:00:00', '2023-11-23 12:00:00'),
(41273, 50, 46000, '2023-09-22', 4, '2023-11-25 07:00:00', '2023-12-01 13:00:00'),
(41274, 61, 15000, '2023-11-24', 3, '2023-12-03 08:00:00', '2023-12-09 14:00:00'),
(41275, 74, 43000, '2023-01-26', 2, '2023-12-11 09:00:00', '2023-12-17 15:00:00'),
(41276, 16, 28000, '2023-03-29', 1, '2023-12-19 06:00:00', '2023-12-25 12:00:00'),
(41277, 29, 33000, '2023-06-01', 4, '2023-12-27 07:00:00', '2024-01-02 13:00:00'),
(41278, 43, 39000, '2023-08-03', 3, '2024-01-04 08:00:00', '2024-01-10 14:00:00'),
(41279, 55, 22000, '2023-10-05', 2, '2024-01-12 09:00:00', '2024-01-18 15:00:00'),
(41280, 69, 47000, '2023-12-07', 1, '2024-01-20 06:00:00', '2024-01-26 12:00:00'),
(41281, 17, 35000, '2023-02-09', 4, '2024-01-28 07:00:00', '2024-02-03 13:00:00'),
(41282, 32, 18000, '2023-04-12', 3, '2024-02-05 08:00:00', '2024-02-11 14:00:00'),
(41283, 48, 41000, '2023-06-15', 2, '2024-02-13 09:00:00', '2024-02-19 15:00:00'),
(41284, 62, 26000, '2023-08-18', 1, '2024-02-21 06:00:00', '2024-02-27 12:00:00'),
(41285, 76, 39000, '2023-10-20', 4, '2024-02-29 07:00:00', '2024-03-06 13:00:00'),
(42723, 12, 50000, '2023-08-05', 4, NULL, NULL),
(43572, 2, 60000, '2022-08-09', 5, '2023-06-29 21:00:00', '2024-04-26 21:00:00'),
(45678, 15, 52000, '2023-08-08', 4, NULL, NULL),
(46323, 19, 50000, '2023-08-05', 4, NULL, NULL),
(48172, 12, 698000, '2022-09-09', 58, NULL, NULL),
(56247, 3, 500000, '2023-08-29', 42, '2024-02-13 21:00:00', '2024-08-20 21:00:00'),
(56782, 4, 45000, '2023-07-05', 4, NULL, NULL),
(56789, 2, 62000, '2023-07-10', 5, NULL, NULL),
(57423, 1, 9800, '2023-05-05', 1, '2023-11-02 21:00:00', '2024-04-08 21:00:00'),
(67890, 10, 47000, '2023-08-06', 4, NULL, NULL),
(67894, 18, 42000, '2023-06-20', 4, NULL, NULL),
(77665, 7, 70000, '2023-08-06', 6, '2024-11-05 21:00:00', '2024-06-06 21:00:00'),
(78901, 3, 48000, '2023-07-25', 4, NULL, NULL),
(78903, 14, 53000, '2023-08-02', 4, NULL, NULL),
(84623, 2, 7000, '2023-12-12', 1, '2024-08-14 21:00:00', '2024-10-20 21:00:00'),
(87901, 5, 75000, '2023-08-01', 6, NULL, NULL),
(89012, 11, 58000, '2023-08-10', 5, NULL, NULL),
(98762, 3, 700000, '2023-08-25', 58, '2023-02-28 21:00:00', '2024-05-24 21:00:00'),
(98765, 2, 40000, '2023-08-18', 3, '2023-07-01 21:00:00', '2023-04-20 21:00:00'),
(491921, 18, 6980800, '2022-09-09', 582, NULL, NULL),
(566776, 6, 789000, '2022-02-17', 66, '2023-01-05 21:00:00', '2024-02-28 21:00:00'),
(654309, 4, 300000, '2023-08-16', 25, '2024-10-07 21:00:00', '2024-05-13 21:00:00'),
(1253478, 4, 300000, '2023-08-21', 25, '2024-07-11 21:00:00', '2024-07-17 21:00:00'),
(3452468, 6, 100000, '2023-08-15', 8, '2024-02-19 21:00:00', '2024-01-21 21:00:00'),
(4817921, 14, 698000, '2022-09-09', 58, NULL, NULL),
(4917921, 16, 698000, '2022-09-09', 58, NULL, NULL),
(6753876, 4, 45900, '2023-08-03', 4, '2024-11-13 21:00:00', '2023-03-10 21:00:00'),
(87654321, 1, 100000, '2023-07-02', 8, '2024-04-29 21:00:00', '2023-01-28 21:00:00'),
(564673839, 4, 500000, '2023-08-23', 42, '2023-05-26 21:00:00', '2024-10-09 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_application_no` int(8) NOT NULL,
  `client_id` int(8) NOT NULL,
  `payment_period` int(10) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `clearance_date` date DEFAULT NULL,
  `grant_status` varchar(15) DEFAULT 'No Action Yet',
  `clearance_status` double(10,2) DEFAULT 0.00,
  `monthly_payment_plan` double(10,2) NOT NULL DEFAULT 0.00,
  `loan_request_amount` int(10) NOT NULL,
  `client_decision` varchar(10) NOT NULL DEFAULT 'No Action',
  `interest_rate` double(5,1) DEFAULT NULL,
  `interest` double(7,1) GENERATED ALWAYS AS (case when `interest_rate` is not null and `interest_rate` <> 0 then ifnull(`loan_request_amount` * (`payment_period` / 12) * (`interest_rate` / 100),0) else NULL end) STORED,
  `loan_performance` double(5,2) DEFAULT 0.00,
  `amount` double(10,2) GENERATED ALWAYS AS (case when `interest` is not null and `interest` <> 0 then ifnull(`interest` + `loan_request_amount`,0) else NULL end) STORED,
  `loan_progress_status` double(5,2) GENERATED ALWAYS AS (case when `amount` is not null and `amount` <> 0 then ifnull(`clearance_status` / `amount`,0) * 100 else NULL end) STORED,
  `req_sub_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_application_no`, `client_id`, `payment_period`, `start_date`, `end_date`, `clearance_date`, `grant_status`, `clearance_status`, `monthly_payment_plan`, `loan_request_amount`, `client_decision`, `interest_rate`, `loan_performance`, `req_sub_date`) VALUES
(14274597, 12, 13, '2023-08-24', NULL, '2024-09-24', 'Granted', 50000.00, 3846.00, 50000, 'Accepted', 30.0, NULL, NULL),
(16204801, 3, 9, NULL, NULL, NULL, 'No Action Yet', 0.00, 3844.00, 34600, 'No Action', NULL, NULL, NULL),
(19193430, 3, 10, '2023-06-09', '2023-08-17', '2024-04-09', 'Granted', 54167.00, 5000.00, 50000, 'Accepted', 25.0, 76.13, '2023-06-20'),
(30724987, 16, 9, NULL, NULL, NULL, 'No Action Yet', 0.00, 3067.00, 27600, 'No Action', NULL, NULL, NULL),
(35116726, 1, 20, '2023-08-08', '2023-08-25', '2025-04-05', 'Granted', 165608.30, 4250.00, 85000, 'Accepted', 56.9, 95.00, '2023-06-08'),
(48264074, 8, 2, NULL, NULL, NULL, 'No Action Yet', 0.00, 150.00, 300, 'No Action', NULL, NULL, NULL),
(59381444, 1, 10, '2023-08-08', NULL, '2024-06-04', 'Granted', 50000.00, 5000.00, 50000, 'Accepted', 0.0, NULL, '2023-08-13'),
(67692675, 4, 20, '2023-08-24', '2023-08-25', '2025-05-08', 'Granted', 54833.30, 2500.00, 50000, 'Accepted', 5.8, 100.32, NULL),
(70235712, 4, 6, '2023-08-24', '2023-08-25', '2024-02-26', 'Granted', 10500.00, 1667.00, 10000, 'Accepted', 10.0, 99.46, NULL),
(72604310, 3, 12, '2023-08-24', '2023-08-25', '2024-08-24', 'Granted', 60000.00, 4167.00, 50000, 'Accepted', 20.0, 98.12, '2022-09-08'),
(79844794, 1, 4, NULL, NULL, NULL, 'No Action Yet', 0.00, 5250.00, 21000, 'No Action', NULL, NULL, '2023-05-02'),
(81673439, 2, 10, '2023-01-23', '2023-08-25', '2023-11-23', 'Granted', 120833.30, 10000.00, 100000, 'Accepted', 25.0, 29.03, '2023-03-20'),
(83701575, 5, 9, NULL, NULL, NULL, 'No Action Yet', 0.00, 2733.00, 24600, 'No Action', NULL, NULL, '2023-05-06'),
(85793478, 17, 10, '2023-08-24', NULL, '2024-01-26', 'Granted', 156700.00, 27000.00, 270000, 'Accepted', 5.8, NULL, '2023-07-03');

--
-- Triggers `loan`
--
DELIMITER $$
CREATE TRIGGER `update_end_date_trigger` BEFORE UPDATE ON `loan` FOR EACH ROW BEGIN
    IF NEW.loan_progress_status = 100 THEN
        SET NEW.end_date = CURRENT_DATE();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login_reference`
--

CREATE TABLE `login_reference` (
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `ref_number` int(10) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `action` varchar(10) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_reference`
--

INSERT INTO `login_reference` (`client_id`, `phoneNumber`, `ref_number`, `created_at`, `action`) VALUES
(7, '0705664444', 43245, '2023-08-24 11:07:46', 'pending'),
(3, '0789996505', 43567, '2023-08-24 11:07:47', 'pending'),
(2, '07045665418', 46745, '2023-08-13 18:05:15', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clientName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `clientName`, `username`, `phone_number`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Ahaabwe Derrick', 'ahaabwederrick67@gmail.com', '0780765039', '123', '2023-07-21 05:49:39', '2023-07-21 05:49:39'),
(2, 'Ahaabwe Derrick', 'derrick4', '0780992782', 'cr7', '2023-07-21 05:54:19', '2023-07-21 05:54:19'),
(3, 'Nalukwago Hadijjah', 'hadijjah', '0789098980', '123', '2023-07-21 07:27:30', '2023-07-21 07:27:30'),
(4, 'alvin', 'alv', '0777777777', '123', '2023-07-21 09:05:10', '2023-07-21 09:05:10'),
(5, 'carlos', 'car34', '078908788', '2020', '2023-08-09 08:51:50', '2023-08-09 08:51:50'),
(6, 'hajjat', 'hajj', '7583483748', '$2y$10$hCtKaukCwXQZtI2l52OI3ezM9Uv2xaKbUdAkwAoMvXq3m8dHjbbVa', '2023-08-09 09:44:13', '2023-08-09 09:44:13'),
(7, 'carlos1', 'car12', '787878780', '$2y$10$VVyRaCYns18lg6gsntU0tez/.ijItgENtCSX7jMJroxcnGsQJEDcC', '2023-08-09 09:46:40', '2023-08-09 09:46:40'),
(8, 'derrick', 'der@gmail.com', '1234567890', '123', '2023-08-09 10:03:52', '2023-08-09 10:03:52'),
(9, 'William Martinez', 'william.martinez', '666-777-8888', 'hello', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(10, 'Ava Anderson', 'ava.anderson', '333-444-2555', '4536536', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(11, 'James Miller', 'james.miller', '555-666-6777', 'gfe', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(12, 'Sophia Garcia', 'sophia.garcia', '999-000-1111', 'gfew', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(13, 'Daniel Hernandez', 'daniel.hernandez', '222-333-3444', 'oirury', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(14, 'Isabella Brown', 'isabella.brown', '775-888-9999', 'gdfe', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(15, 'Alexander Davis', 'alexander.davis', '888-299-0000', 'mnaf45', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(16, 'Mia Johnson', 'mia.johnson', '666-777-8848', 'ddsa9', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(17, 'Ethan Wilson', 'ethan.wilson', '333-444-5555', 'hashed_password_17', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(18, 'Camila Jackson', 'camila.jackson', '555-666-7777', 'iwr345_19', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(20, 'Charlotte White', 'charlotte.white', '222-333-4444', 'yterq876', '2023-08-24 09:50:06', '2023-08-24 09:50:06'),
(21, 'Jane Smith', 'jane.smith', '444-55425-6667', 'password22', '2023-01-01 21:00:00', '2023-01-01 21:00:00'),
(22, 'Michael Johnson', 'michael.johnson', '787-838-9998', 'secret23', '2023-01-02 21:00:00', '2023-01-02 21:00:00'),
(23, 'Emily Williams', 'emily.williams', '131-222-3335', 'mypassword24', '2023-01-03 21:00:00', '2023-01-03 21:00:00'),
(24, 'William Brown', 'william.brown', '644-535-6668', 'topsecret25', '2023-01-04 21:00:00', '2023-01-04 21:00:00'),
(25, 'Olivia Davis', 'olivia.davis', '737-828-9997', '12345626', '2023-01-05 21:00:00', '2023-01-05 21:00:00'),
(26, 'James Miller', 'james@jescia', '121-222-3336', 'p@ssw0rd27', '2023-01-06 21:00:00', '2023-01-06 21:00:00'),
(27, 'Sophia Wilson', 'sophia.wilson', '474-555-6669', 'secret28', '2023-01-07 21:00:00', '2023-01-07 21:00:00'),
(28, 'Liam Martinez', 'liam.martinez', '777-889-9996', 'password29', '2023-01-08 21:00:00', '2023-01-08 21:00:00'),
(29, 'Emma Garcia', 'emma.garcia', '111-722-3337', 'mypassword30', '2023-01-09 21:00:00', '2023-01-09 21:00:00'),
(30, 'Noah Johnson', 'noah.johnson', '444-515-6670', 'topsecret31', '2023-01-10 21:00:00', '2023-01-10 21:00:00'),
(31, 'Ava Jackson', 'ava.jackson', '797-888-9995', '12345632', '2023-01-11 21:00:00', '2023-01-11 21:00:00'),
(32, 'Oliver Taylor', 'oliver.taylor', '111-222-3138', 'p@ssw0rd33', '2023-01-12 21:00:00', '2023-01-12 21:00:00'),
(33, 'Isabella Brown', 'isabella.Deryk', '444-525-6671', 'secret34', '2023-01-13 21:00:00', '2023-01-13 21:00:00'),
(34, 'Mia Davis', 'mia.davis', '777-828-9994', 'password35', '2023-01-14 21:00:00', '2023-01-14 21:00:00'),
(35, 'Ethan Martinez', 'Roy.martinez', '171-222-3339', 'mypassword36', '2023-01-15 21:00:00', '2023-01-15 21:00:00'),
(36, 'Amelia Johnson', 'amelia.johnson', '414-555-6672', 'topsecret37', '2023-01-16 21:00:00', '2023-01-16 21:00:00'),
(37, 'Liam Jackson', 'liam.jackson', '777-488-9993', '12345638', '2023-01-17 21:00:00', '2023-01-17 21:00:00'),
(38, 'Ava Taylor', 'ava.taylor', '111-242-3340', 'p@ssw0rd39', '2023-01-18 21:00:00', '2023-01-18 21:00:00'),
(39, 'Oliver Smith', 'oliver.smith', '444-455-6673', 'secret40', '2023-01-19 21:00:00', '2023-01-19 21:00:00'),
(61, 'Ella Johnson', 'ella.johnson', '111-222-3334', 'pass123', '2023-01-20 21:00:00', '2023-01-20 21:00:00'),
(62, 'Jackson Smith', 'jackson.smith', '444-555-6667', 'password42', '2023-01-21 21:00:00', '2023-01-21 21:00:00'),
(63, 'Lucas Martinez', 'lucas.martinez', '777-888-9998', 'secret43', '2023-01-22 21:00:00', '2023-01-22 21:00:00'),
(64, 'Scarlett Williams', 'scarlett.williams', '111-222-3335', 'mypassword44', '2023-01-23 21:00:00', '2023-01-23 21:00:00'),
(65, 'Henry Brown', 'henry.brown', '444-555-6668', 'topsecret45', '2023-01-24 21:00:00', '2023-01-24 21:00:00'),
(66, 'Aria Davis', 'aria.davis', '777-888-9997', '12345646', '2023-01-25 21:00:00', '2023-01-25 21:00:00'),
(67, 'Alexander Miller', 'alexander.miller', '111-222-3336', 'p@ssw0rd47', '2023-01-26 21:00:00', '2023-01-26 21:00:00'),
(68, 'Luna Wilson', 'luna.wilson', '444-555-6669', 'secret48', '2023-01-27 21:00:00', '2023-01-27 21:00:00'),
(69, 'Ethan Martinez', 'ethan.martinez', '777-888-9996', 'password49', '2023-01-28 21:00:00', '2023-01-28 21:00:00'),
(70, 'Liam Garcia', 'liam.garcia', '111-222-3337', 'mypassword50', '2023-01-29 21:00:00', '2023-01-29 21:00:00'),
(71, 'Avery Johnson', 'avery.johnson', '444-555-6670', 'topsecret51', '2023-01-30 21:00:00', '2023-01-30 21:00:00'),
(72, 'Ella Jackson', 'ella.jackson', '777-888-9995', '12345652', '2023-01-31 21:00:00', '2023-01-31 21:00:00'),
(73, 'Benjamin Taylor', 'benjamin.taylor', '111-222-3338', 'p@ssw0rd53', '2023-02-01 21:00:00', '2023-02-01 21:00:00'),
(74, 'Amelia Brown', 'amelia.brown', '444-555-6671', 'secret54', '2023-02-02 21:00:00', '2023-02-02 21:00:00'),
(75, 'Sebastian Davis', 'sebastian.davis', '777-888-9994', 'password55', '2023-02-03 21:00:00', '2023-02-03 21:00:00'),
(76, 'Aria Martinez', 'aria.martinez', '111-222-3339', 'mypassword56', '2023-02-04 21:00:00', '2023-02-04 21:00:00'),
(77, 'Oliver Wilson', 'oliver.wilson', '444-555-6672', 'topsecret57', '2023-02-05 21:00:00', '2023-02-05 21:00:00'),
(78, 'Mia Martinez', 'mia.martinez', '777-888-9993', '12345658', '2023-02-06 21:00:00', '2023-02-06 21:00:00'),
(79, 'Ethan Taylor', 'ethan.taylor', '111-222-3340', 'p@ssw0rd59', '2023-02-07 21:00:00', '2023-02-07 21:00:00'),
(80, 'Isabella Smith', 'isabella.smith', '444-555-6673', 'secret60', '2023-02-08 21:00:00', '2023-02-08 21:00:00'),
(100, 'John Doe', 'john.doe', '111-252-3334', 'pass123', '2022-12-31 21:00:00', '2022-12-31 21:00:00'),
(234, 'Olivia Taylor', 'olivia.taylor', '888-999-8000', 'hey', '2023-08-24 09:50:06', '2023-08-24 09:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_07_18_143206_create_alerts_table', 1),
(7, '2023_07_18_143438_create_deposits_table', 1),
(8, '2023_07_18_145522_create_pending_requests_table', 1),
(10, '2023_07_18_163751_create_members_table', 2),
(11, '2023_07_21_091059_deposit', 3),
(12, '2023_07_21_100447_login_reference', 3),
(13, '2023_08_13_130043_create_upload_deposits_table', 4),
(14, '2023_08_13_130056_create_loans_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contributions`
--
ALTER TABLE `contributions`
  ADD PRIMARY KEY (`receipt_no`),
  ADD KEY `contributions` (`client_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_application_no`),
  ADD KEY `loan` (`client_id`);

--
-- Indexes for table `login_reference`
--
ALTER TABLE `login_reference`
  ADD PRIMARY KEY (`ref_number`),
  ADD KEY `login_reference` (`client_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_username_unique` (`username`),
  ADD UNIQUE KEY `members_phone_number_unique` (`phone_number`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_reference`
--
ALTER TABLE `login_reference`
  ADD CONSTRAINT `login_reference` FOREIGN KEY (`client_id`) REFERENCES `members` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
