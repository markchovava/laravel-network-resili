-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 09:53 AM
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
-- Database: `laravel_networkresilience`
--

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `user_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(2, 3, 'Cisco', 'assets/img/partner/partner_202505211145.png', '2025-05-16 12:11:21', '2025-05-21 16:51:53'),
(3, 3, 'Dahua', 'assets/img/partner/partner_202505217892.png', '2025-05-21 16:52:48', '2025-05-21 16:52:48'),
(4, 3, 'Grandstream', 'assets/img/partner/partner_202505219744.png', '2025-05-21 16:54:15', '2025-05-21 16:54:15'),
(5, 3, 'Hikvision', 'assets/img/partner/partner_202505215392.png', '2025-05-21 16:54:47', '2025-05-21 16:54:47'),
(6, 3, 'Huawei', 'assets/img/partner/partner_202505216119.png', '2025-05-21 16:55:36', '2025-05-21 16:55:36'),
(7, 3, 'Mikrotik', 'assets/img/partner/partner_20250521704.png', '2025-05-21 16:56:06', '2025-05-21 16:56:06'),
(8, 3, 'Milesight', 'assets/img/partner/partner_202505217743.png', '2025-05-21 16:57:13', '2025-05-21 16:57:13'),
(9, 3, 'Molex', 'assets/img/partner/partner_202505213762.png', '2025-05-21 16:57:35', '2025-05-21 16:57:35'),
(10, 3, 'NEC Technologies', 'assets/img/partner/partner_202505211834.png', '2025-05-21 16:58:06', '2025-05-21 16:58:06'),
(11, 3, 'Ruckus', 'assets/img/partner/partner_202505212427.png', '2025-05-21 16:58:35', '2025-05-21 16:58:35'),
(12, 3, 'Ruijie', 'assets/img/partner/partner_202505218574.png', '2025-05-21 16:58:56', '2025-05-21 16:58:56'),
(13, 3, 'TP Link', 'assets/img/partner/partner_202505217309.png', '2025-05-21 16:59:26', '2025-05-21 16:59:26'),
(14, 3, 'Trendnet', 'assets/img/partner/partner_202505216779.png', '2025-05-21 16:59:51', '2025-05-21 16:59:51'),
(15, 3, 'Ubiquiti', 'assets/img/partner/partner_202505215465.png', '2025-05-21 17:00:19', '2025-05-21 17:00:19'),
(16, 3, 'Yeastar', 'assets/img/partner/partner_20250521310.png', '2025-05-21 17:00:42', '2025-05-21 17:00:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
