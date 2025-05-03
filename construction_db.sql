-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 12:52 PM
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
-- Database: `construction_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `full_name`, `email`, `phone`, `subject`, `address`, `message`, `submitted_at`) VALUES
(1, 'John Doe', 'johndoe@example.com', '123-456-7890', 'Inquiry about products', '123 Main St, Springfield, IL', 'I would like to know more about your product range.', '2025-04-18 02:00:00'),
(2, 'Jane Smith', 'janesmith@example.com', '987-654-3210', 'Support request', '456 Oak Rd, Dallas, TX', 'I am facing an issue with my account login.', '2025-04-18 02:15:00'),
(3, 'Samuel Brown', 'samuelbrown@example.com', '555-123-4567', 'Feedback on service', '789 Pine Ave, San Francisco, CA', 'The service was great, but there were some delays in delivery.', '2025-04-18 02:30:00'),
(4, 'Emily White', 'emilywhite@example.com', '321-654-9870', 'Complaint about product quality', '321 Birch Blvd, Miami, FL', 'The product I received was damaged upon arrival.', '2025-04-18 02:45:00'),
(5, 'Michael Harris', 'michaelharris@example.com', '444-555-6666', 'General inquiry', '123 Cedar St, New York, NY', 'Can I get more details on your shipping policies?', '2025-04-18 03:00:00'),
(6, 'Linda Clark', 'lindaclark@example.com', '777-888-9999', 'Question about payment options', '987 Maple Ln, Los Angeles, CA', 'What payment methods do you accept on your website?', '2025-04-18 03:15:00'),
(7, 'Chris Lee', 'chrislee@example.com', '111-222-3333', 'Request for discount', '654 Elm St, Chicago, IL', 'Do you offer any discounts for bulk orders?', '2025-04-18 03:30:00'),
(8, 'Patricia Walker', 'patriciawalker@example.com', '444-777-8888', 'Job application inquiry', '321 Oakwood Dr, Boston, MA', 'I am interested in applying for a position with your company. Can you provide more details?', '2025-04-18 03:45:00'),
(9, 'Daniel Martinez', 'danielmartinez@example.com', '555-444-3333', 'Shipping delay', '543 Willow Ln, Austin, TX', 'My order is delayed. Can you provide an update?', '2025-04-18 04:00:00'),
(10, 'Sophia Garcia', 'sophiagarcia@example.com', '888-999-0000', 'Product recommendation request', '432 Pine St, Phoenix, AZ', 'I am looking for recommendations for tech gadgets for my office.', '2025-04-18 04:15:00'),
(11, 'Joshua Pacho', 'jshpch1996@gmail.com', '+639458661216', 'Request Assistance', 'Zone 3 San Mariano Isabela', 'Test Message', '2025-04-18 03:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` longtext DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `contract_package` varchar(255) DEFAULT NULL,
  `contract_amount` decimal(15,2) DEFAULT NULL,
  `status` enum('Completed','On-Going') DEFAULT 'On-Going',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `location`, `client`, `contract_package`, `contract_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hotel 101 Mactan Cebu ', 'Mactan Cebu', 'Bueno Builders and Management Corp.', 'Masonry Works, Painting Works, Ceiling Works', 14000000.00, 'On-Going', '2025-04-18 23:45:57', '2025-04-19 23:59:39'),
(10, 'Keyland New Manila Hotel ', 'Quezon City', 'C-E Construction Corp', 'EIFS, Ceiling, Soundproofing and Heat Insulation', 5750000.00, 'On-Going', '2025-04-20 00:57:55', '2025-04-20 00:57:55'),
(11, 'Agapeya Town House Phase 1', 'Calamba laguna', 'Raemulan Lands Inc.', 'Construction of 12 production units – 6 duplexes ', 3792000.00, 'On-Going', '2025-04-20 00:59:24', '2025-04-20 00:59:24'),
(12, 'RJC CORPORATE SECURITY SERVICES', 'Kapasigan, Pasig City', 'Synergy Construction & Development Corp.', 'Construcion of Temporary Field Office ', 1320000.00, 'On-Going', '2025-04-20 00:59:55', '2025-04-20 01:27:34'),
(13, 'REPAIR OF WALL / WATEPROOFING IN MERALCO TAGAYTAY BUSINESS CENTER', 'Tagaytay City, Cavite', 'Miescor Logistics', 'Waterproofing and Painting Works', 2450000.00, 'Completed', '2025-04-20 01:09:39', '2025-04-20 01:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `project_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Picture2.jpg', '2025-04-18 23:48:44', '2025-04-18 23:49:06'),
(2, 1, 'Picture3.jpg', '2025-04-18 23:48:44', '2025-04-18 23:49:06'),
(3, 1, 'Picture4.jpg', '2025-04-18 23:49:07', '2025-04-18 23:51:56'),
(4, 1, 'Picture5.jpg', '2025-04-18 23:49:07', '2025-04-18 23:51:59'),
(17, 10, '680446935cb303.58029943.jpg', '2025-04-20 00:57:55', '2025-04-20 00:57:55'),
(18, 10, '680446935ed936.65622643.jpg', '2025-04-20 00:57:55', '2025-04-20 00:57:55'),
(19, 10, '680446935f8757.55562136.jpg', '2025-04-20 00:57:55', '2025-04-20 00:57:55'),
(20, 11, '680446ec2e95c5.54265529.jpg', '2025-04-20 00:59:24', '2025-04-20 00:59:24'),
(21, 11, '680446ec2f5e88.55895173.jpg', '2025-04-20 00:59:24', '2025-04-20 00:59:24'),
(22, 11, '680446ec308694.20352349.jpg', '2025-04-20 00:59:24', '2025-04-20 00:59:24'),
(23, 12, '6804470bd5a721.73191824.jpg', '2025-04-20 00:59:55', '2025-04-20 00:59:55'),
(24, 12, '6804470bd6c308.26592003.jpg', '2025-04-20 00:59:55', '2025-04-20 00:59:55'),
(25, 13, '680449535b73c5.55326047.jpg', '2025-04-20 01:09:39', '2025-04-20 01:09:39'),
(26, 13, '680449535c4059.16032280.jpg', '2025-04-20 01:09:39', '2025-04-20 01:09:39'),
(27, 13, '680449535ce2f9.24905233.jpg', '2025-04-20 01:09:39', '2025-04-20 01:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'System Administrator', 'admin@gmail.com', '$2y$10$.GtTCwx7zCygmqSZ8Y4OdeCeNgD8aGFSCcv3BikfdvyN3kZwJJc3y', '2025-04-17 23:34:42', '2025-04-18 00:04:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project_images`
--
ALTER TABLE `project_images`
  ADD CONSTRAINT `project_images_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
