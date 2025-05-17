-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 06:16 PM
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
-- Table structure for table `app_infos`
--

CREATE TABLE `app_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_infos`
--

INSERT INTO `app_infos` (`id`, `user_id`, `name`, `description`, `phone`, `email`, `address`, `website`, `facebook`, `whatsapp`, `instagram`, `linkedin`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 3, 'Network', 'descppnr', 'Netrk Resilience', 'rk Resilience', 'Neponponesilience', 'www', 'NetworkonpResilience', 'Network Reslnpnlience', 'insta', 'gh', 'NetworkkonResilience', '2025-05-16 10:23:06', '2025-05-16 10:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, '3', 'Dell', '2025-05-16 08:48:09', '2025-05-16 09:06:14'),
(2, '3', 'HP', '2025-05-16 09:06:31', '2025-05-16 09:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(5, '3', 'Wired Networking', '2025-05-17 15:13:13', '2025-05-17 15:13:13'),
(6, '3', 'Wireless Networking', '2025-05-17 15:13:13', '2025-05-17 15:13:13'),
(7, '3', 'Fiber', '2025-05-17 15:13:13', '2025-05-17 15:13:13'),
(8, '3', 'Accesories', '2025-05-17 15:13:13', '2025-05-17 15:13:13'),
(9, '3', 'Voice Over IP', '2025-05-17 15:13:13', '2025-05-17 15:13:13'),
(10, '3', 'CCTV', '2025-05-17 15:13:13', '2025-05-17 15:13:13'),
(11, '3', 'Backup Power', '2025-05-17 15:13:13', '2025-05-17 15:13:13');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_19_081444_create_personal_access_tokens_table', 1),
(5, '2025_05_14_130306_create_app_infos_table', 1),
(6, '2025_05_14_130330_create_brands_table', 1),
(7, '2025_05_14_130342_create_categories_table', 1),
(8, '2025_05_14_130403_create_products_table', 1),
(9, '2025_05_14_130421_create_orders_table', 1),
(10, '2025_05_14_130441_create_partners_table', 1),
(11, '2025_05_14_130453_create_messages_table', 1),
(12, '2025_05_14_130529_create_order_items_table', 1),
(13, '2025_05_14_130540_create_order_details_table', 1),
(14, '2025_05_14_132457_create_product_images_table', 1),
(15, '2025_05_14_132508_create_product_specs_table', 1),
(16, '2025_05_14_144530_create_product_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` mediumint(9) DEFAULT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `order_id` mediumint(9) DEFAULT NULL,
  `product_id` mediumint(9) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` mediumint(9) DEFAULT NULL,
  `quantity` mediumint(9) DEFAULT NULL,
  `total` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 3, 'boo', 'assets/img/partner/partner_202505163540.jpg', '2025-05-16 12:11:21', '2025-05-16 12:11:21');

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
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'admin@email.com', '7beb5caa1ea17889d47bcdbd22743e1fdf21b71c4d8006b8902f7894107892e7', '[\"*\"]', NULL, NULL, '2025-05-15 12:32:28', '2025-05-15 12:32:28'),
(4, 'App\\Models\\User', 3, 'admin@email.com', '3726b60740e706acbe69d56e2a02979801f226aa3e915ef4a697792f4b322f78', '[\"*\"]', '2025-05-17 14:13:44', NULL, '2025-05-15 14:19:46', '2025-05-17 14:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `brand_id` mediumint(9) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `quantity` mediumint(9) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `brand_id`, `name`, `description`, `price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(38, NULL, NULL, '24 Port Cuddy PoE', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(39, NULL, NULL, '16 Port Cuddy PoE Switch', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(40, NULL, NULL, '24 Port reyee gig poe switch', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(41, NULL, NULL, '16 port reyee gig poe switch', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(42, NULL, NULL, '8 port gig poe switch', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(43, NULL, NULL, '24 port cat6 patch panel', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(44, NULL, NULL, '1u brudh tide', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(45, NULL, NULL, 'double faceplates cat6', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(46, NULL, NULL, 'single faceplate cat6 ', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(47, NULL, NULL, 'cat6 utp indoor cable', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(48, NULL, NULL, '3m flyleads cat6', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(49, NULL, NULL, '1m patch cords cat6 ', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(50, NULL, NULL, '0.5 patch cord cat6 ', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(51, NULL, NULL, 'rj45 connectors ', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(52, NULL, NULL, 'Boots', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(53, NULL, NULL, 'Ubiquiti U6 Pro', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(54, NULL, NULL, 'Ubiquiti U6 LR', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(55, NULL, NULL, 'Ubiquiti U6 +', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(56, NULL, NULL, 'Ubiquiti U6 Lite', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(57, NULL, NULL, 'Nanostation M5', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(58, NULL, NULL, 'Nanostation M2', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(59, NULL, NULL, 'Tp-link adsl modem+router', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(60, NULL, NULL, 'gpon huawei router', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(61, NULL, NULL, 'ruckus t310', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(62, NULL, NULL, 'ruckus r510', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(63, NULL, NULL, 'mikrotik routers', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(64, NULL, NULL, 'Tenda Dual Band AC 6dBi 4 Port Gigabit Router', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(65, NULL, NULL, 'Reyee Dual Band WiFi 6 3000Mbps Gigabit Ceiling Mount AP', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(66, NULL, NULL, 'Ubiquiti UISP airMAX PowerBeam AC 5GHz 25dBi Radio', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(67, NULL, NULL, 'Gigabit Ethernet Media Converter', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(68, NULL, NULL, 'fiber patch panel', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(69, NULL, NULL, 'fiber patch cords', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(70, NULL, NULL, 'gpon huawei modems', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(71, NULL, NULL, 'pigtails', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(72, NULL, NULL, 'midcouplers', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(73, NULL, NULL, 'splice protectors', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(74, NULL, NULL, 'RJ 45 Connector', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(75, NULL, NULL, 'Grandstream UCM 6302', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(76, NULL, NULL, 'yealink t31p', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(77, NULL, NULL, 'yealink t46u', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(78, NULL, NULL, 'grandstream 1625', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(79, NULL, NULL, 'yeaster s20', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(80, NULL, NULL, 'yeaster p550', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(81, NULL, NULL, 'fxo modules', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(82, NULL, NULL, 'fxs modules', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(83, NULL, NULL, 'krone modules', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(84, NULL, NULL, 'rj11 connectors', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(85, NULL, NULL, 'line cord', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(86, NULL, NULL, 'panasonic ts500', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(87, NULL, NULL, 'hmt cable', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(88, NULL, NULL, 'rj11 sockets', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(89, NULL, NULL, 'Hikvision 8 CH DVR', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(90, NULL, NULL, 'Growatt 5kva Invertor', NULL, NULL, NULL, NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `product_id` mediumint(9) DEFAULT NULL,
  `category_id` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `user_id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(50, NULL, 38, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(51, NULL, 39, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(52, NULL, 40, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(53, NULL, 41, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(54, NULL, 42, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(55, NULL, 43, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(56, NULL, 44, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(57, NULL, 45, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(58, NULL, 46, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(59, NULL, 47, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(60, NULL, 48, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(61, NULL, 49, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(62, NULL, 50, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(63, NULL, 51, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(64, NULL, 52, 5, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(65, NULL, 53, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(66, NULL, 54, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(67, NULL, 55, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(68, NULL, 56, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(69, NULL, 57, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(70, NULL, 58, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(71, NULL, 59, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(72, NULL, 60, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(73, NULL, 61, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(74, NULL, 62, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(75, NULL, 63, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(76, NULL, 64, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(77, NULL, 65, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(78, NULL, 66, 6, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(79, NULL, 67, 7, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(80, NULL, 68, 7, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(81, NULL, 69, 7, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(82, NULL, 70, 7, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(83, NULL, 71, 7, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(84, NULL, 72, 7, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(85, NULL, 73, 7, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(86, NULL, 74, 8, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(87, NULL, 75, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(88, NULL, 76, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(89, NULL, 77, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(90, NULL, 78, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(91, NULL, 79, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(92, NULL, 80, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(93, NULL, 81, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(94, NULL, 82, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(95, NULL, 83, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(96, NULL, 84, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(97, NULL, 85, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(98, NULL, 86, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(99, NULL, 87, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(100, NULL, 88, 9, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(101, NULL, 89, 10, '2025-05-17 16:13:04', '2025-05-17 16:13:04'),
(102, NULL, 90, 11, '2025-05-17 16:13:04', '2025-05-17 16:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `product_id` mediumint(9) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_specs`
--

CREATE TABLE `product_specs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `product_id` mediumint(9) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('08EAKGWDfeUN8T2HSltmbMtGkRQqNE02jwNA8g7k', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTDNOdXF1ZDF5cFkzY3kyUkVlWlBFalZCNnpibFFsZFE4S0tKVk5mQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747325142),
('5BkVDb1f4nZHzuFCuWpfhJf51ruQmvKDLf8S0neT', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZmE5TVBCdlVSUTdUNjNnZm1HY2U4RGRuV3l5U2twMUFWTWRWWTRyVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747325151),
('9NpWc7A6AT07qCC8d9YjusptRinMXyiHJw1Dac0Q', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYWY0dXVHN1BwTTA1R29Edkd1d25oZGo4RjBjSTRpQWt4NlA3bjRSNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747319496),
('EFBzorr3cGcs2sVGz1iBaa4oyr4hL3VbDNxagsjy', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN3FGencwTkFLMm1hQm1MeU96enNJcWo3bFRBNWgyVmE4dzZUdHNSbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747489084),
('ELk21OCy5dCOaxXMl6xiraIkhdWqeSoB1CVZyX34', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiczltM3lqVUFVbVVoZzRrYjRrclhLRmVCcTdIcUhQUHg5TlBXRGZzRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747490850),
('EpzDpwH8iaju04W3i0eiX2h5ZEgolDxuCYAohGfJ', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT2JJMTBrVFpLSDN4N01YaHJkU1N3Y2NPejNNS3REcTNCRXZvbWdjayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747319445),
('mdVz4YMmquemh9m8MF03bIoLSRZkckZQOPyusfE8', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYkZ4OHk0b0tDT3RwaEJQYTh3STFhTzdBMUtyQXpnWndNSmR2dDhPYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747319589),
('qgAzHHqcaXvGlgfoSQKpqwRxkCAlflXOFcYkMish', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNTBYRUxuVWhtWjlsSEdoNkNsRUQwZURMeGxVdEVEOU90RDB0WDNrdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747490894),
('R3V7XXlDssLxVwZJbdIazV2MSdDZsqAigIs2aZoc', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaUdLdlNVUFh5Q05ubWhYVlNzMUt1R3BDN3IxVjJXN2Z3aldjVHdCeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747490857),
('RSlXBw6rrJ8nyZ5Lm2Vc6dI7TF5XdTsx7F4hBco1', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiakxSOUN1QXZxWmw5YzFkcjdReEU1ZUdVWHpvcHBOM2JBRm5KWFJrayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747325986),
('tkMkAl9oLzlnuyDpF2ttITxkfRjxoammkGJpo3cg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjdhT0ZEblVtZUxtWVRJbmJUM1VWMDZKVmhNWlVTaFdBWGNhdGNYMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWNhdGVnb3J5LzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747488491),
('u02GTSjAa2dy0KtrvFzkKZcqvNhyNOyRELwN2vfC', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRGRMM3hkZHBUbVhDRzZ2NTRSS29RU0w5ZWEyQXU4dDRzTXA4UEhKMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747490977),
('UAWb9Kr1q2jJb6188ukWkkptCbd2CF7QNvsmIWhX', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWE1sNWV4M0ltOHZtU0I5Y2pkVGtrVHVMaXNhS0JlZnZhcWNpUXVkSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747490935),
('x2Gmj5xZzs9rtMu9aATQ3Ivn7pd2pGhXV0n0xrv6', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMlNocEJ4R2NzQWZwbGJiWERzSGlMWkRRbU0zbUc2bnNuYTZVUzRudiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747319548);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_admin` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `is_admin`, `phone`, `address`, `code`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'Yes', '123', '88 Piers Road, Borrowdale', '12345678', 'admin@email.com', NULL, '$2y$12$Eyfqp9TGZ1WtM/49lMyFT.Klf52KomLObkU09FpLltkxiK0uugHDK', NULL, '2025-05-15 09:39:13', '2025-05-15 14:35:26'),
(5, 'Mark', 'Yes', '0782210021', '14949  Tynwald South, Harare, Zimbabwe', 'z8Bmf1EA', 'mark@email.com', NULL, '$2y$12$uHvgW/SqoNJUaRqRrZgDcetGDL/04IbeZK8yl706f8KUmGbDfBRAy', NULL, '2025-05-16 07:33:39', '2025-05-16 08:09:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_infos`
--
ALTER TABLE `app_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specs`
--
ALTER TABLE `product_specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_infos`
--
ALTER TABLE `app_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_specs`
--
ALTER TABLE `product_specs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
