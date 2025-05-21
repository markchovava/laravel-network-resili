-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 02:51 PM
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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_ref` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `cart_id` mediumint(11) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `title`, `message`, `phone`, `email`, `status`, `created_at`, `updated_at`) VALUES
(7, 3, 'James', 'FROM CONTACT FORM', 'k[pkp[', '0782210021', 'james.com', 'Read', '2025-05-21 08:35:46', '2025-05-21 09:07:48'),
(8, NULL, 'Mark Chovava', 'FROM CONTACT FORM', 'mn[o[n[', '0782210021', 'markchovava@gmail.com', 'Unread', '2025-05-21 09:08:18', '2025-05-21 09:08:18');

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
(12, '2025_05_14_130529_create_order_items_table', 1),
(13, '2025_05_14_130540_create_order_details_table', 1),
(14, '2025_05_14_132457_create_product_images_table', 1),
(15, '2025_05_14_132508_create_product_specs_table', 1),
(16, '2025_05_14_144530_create_product_categories_table', 1),
(17, '2025_05_19_164823_create_carts_table', 2),
(18, '2025_05_19_164828_create_cart_items_table', 2),
(20, '2025_05_14_130453_create_messages_table', 3);

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
  `is_agree` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `quantity`, `status`, `is_agree`, `notes`, `ref_no`, `created_at`, `updated_at`) VALUES
(6, 3, 2.00, 2, 'Processing', 'Yes', 'Test', 'REF20250520hJ37', '2025-05-19 11:51:27', '2025-05-20 11:51:27'),
(7, 3, 4.00, 4, 'In-Transit', 'Yes', 'fasydf', 'REF20250520MPUy', '2025-05-20 13:18:16', '2025-05-20 13:31:55');

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

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `user_id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(6, 6, 3, 'Admin', '123', 'admin@email.com', '88 Piers Road, Borrowdale', '2025-05-20 11:51:27', '2025-05-20 11:51:27'),
(7, 7, 3, 'Admin', '123', 'admin@email.com', '88 Piers Road, Borrowdale', '2025-05-20 13:18:16', '2025-05-20 13:18:16');

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

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_id`, `name`, `price`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(3, 3, 6, 39, NULL, 1, 2, 2, '2025-05-20 11:51:27', '2025-05-20 11:51:27'),
(4, 3, 7, 42, NULL, 1, 2, 2, '2025-05-20 13:18:16', '2025-05-20 13:18:16'),
(5, 3, 7, 38, NULL, 1, 2, 2, '2025-05-20 13:18:16', '2025-05-20 13:18:16');

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
(4, 'App\\Models\\User', 3, 'admin@email.com', '3726b60740e706acbe69d56e2a02979801f226aa3e915ef4a697792f4b322f78', '[\"*\"]', '2025-05-21 10:02:28', NULL, '2025-05-15 14:19:46', '2025-05-21 10:02:28');

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
  `priority` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `brand_id`, `name`, `description`, `price`, `quantity`, `status`, `priority`, `created_at`, `updated_at`) VALUES
(38, NULL, NULL, '24 Port Cuddy PoE', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(39, NULL, NULL, '16 Port Cuddy PoE Switch', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(40, NULL, NULL, '24 Port reyee gig poe switch', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(41, NULL, NULL, '16 port reyee gig poe switch', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(42, NULL, NULL, '8 port gig poe switch', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(43, NULL, NULL, '24 port cat6 patch panel', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(44, NULL, NULL, '1u brudh tide', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(45, NULL, NULL, 'double faceplates cat6', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(46, NULL, NULL, 'single faceplate cat6 ', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(47, NULL, NULL, 'cat6 utp indoor cable', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(48, NULL, NULL, '3m flyleads cat6', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(49, NULL, NULL, '1m patch cords cat6 ', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(50, NULL, NULL, '0.5 patch cord cat6 ', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(51, NULL, NULL, 'rj45 connectors ', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(52, NULL, NULL, 'Boots', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(53, NULL, NULL, 'Ubiquiti U6 Pro', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(54, NULL, NULL, 'Ubiquiti U6 LR', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(55, NULL, NULL, 'Ubiquiti U6 +', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(56, NULL, NULL, 'Ubiquiti U6 Lite', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(57, NULL, NULL, 'Nanostation M5', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(58, NULL, NULL, 'Nanostation M2', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(59, NULL, NULL, 'Tp-link adsl modem+router', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(60, NULL, NULL, 'gpon huawei router', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(61, NULL, NULL, 'ruckus t310', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(62, NULL, NULL, 'ruckus r510', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(63, NULL, NULL, 'mikrotik routers', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(64, NULL, NULL, 'Tenda Dual Band AC 6dBi 4 Port Gigabit Router', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(65, NULL, NULL, 'Reyee Dual Band WiFi 6 3000Mbps Gigabit Ceiling Mount AP', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(66, NULL, NULL, 'Ubiquiti UISP airMAX PowerBeam AC 5GHz 25dBi Radio', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(67, NULL, NULL, 'Gigabit Ethernet Media Converter', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(68, NULL, NULL, 'fiber patch panel', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(69, NULL, NULL, 'fiber patch cords', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(70, NULL, NULL, 'gpon huawei modems', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(71, NULL, NULL, 'pigtails', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(72, NULL, NULL, 'midcouplers', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(73, NULL, NULL, 'splice protectors', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(74, NULL, NULL, 'RJ 45 Connector', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(75, NULL, NULL, 'Grandstream UCM 6302', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(76, NULL, NULL, 'yealink t31p', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(77, NULL, NULL, 'yealink t46u', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(78, NULL, NULL, 'grandstream 1625', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(79, NULL, NULL, 'yeaster s20', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(80, NULL, NULL, 'yeaster p550', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(81, NULL, NULL, 'fxo modules', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(82, NULL, NULL, 'fxs modules', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(83, NULL, NULL, 'krone modules', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(84, NULL, NULL, 'rj11 connectors', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(85, NULL, NULL, 'line cord', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(86, NULL, NULL, 'panasonic ts500', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(87, NULL, NULL, 'hmt cable', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(88, NULL, NULL, 'rj11 sockets', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(89, NULL, NULL, 'Hikvision 8 CH DVR', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09'),
(90, NULL, NULL, 'Growatt 5kva Invertor', NULL, 1.00, NULL, 'IN-STOCK', NULL, '2025-05-17 15:48:09', '2025-05-17 15:48:09');

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
('0m5wHkCyHig6VgIIGPwyP7WesHMnUFU3Zwth64ey', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRmd1NVdWb0V2TTc0MU9CZE83M1hIU0dVRFVvU0RBcXhYaHByc3lGTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754249),
('21Ns57gK016JOQZ3Y94pj5SHKaCmpoLX9syBdwKt', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUQyMXY4M2tYbFFUTjZVMXF5MkoyZWdtWE5jUjN5anJ0anVoTUl5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWJ5LXByaW9yaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754242),
('2HdKnuCPmpHnOF0qnGSa3PP6sf7x4bn2TKoPRV8N', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT0huWTZGV25DVHc2SWluNXJXNkhnQlpBY2hxYUVENWQyRXJwQmZ4MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747822348),
('33gvE5JB1ilxiwBQx5jbiQ4IdlDY9Whd1jFMqmmc', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0xOUWh1OWFrc2NNR3gwNHM5WHY5TXRvcFEzNUNOWG15VU9tZVY1ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749059),
('5l40a6xo8h6A9JOGDU0dx7BI5h6VK9pK7BAUrfLV', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHpPRjdQUUFFWktzQkVNMzlDakE2RXdyYWtxOElFNk1sdU10Mm9WZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LzM5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749037),
('64N1LJnziRZbcv4sjV9W7UaFp2BMHUxP7Qoh9y4P', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRndMSDVzV2JCeXI5dTBNbDRGQU1xU1g3anV3UzhKb3VjZU93bWJPQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LzQyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754268),
('6X3GzqXJfmJf7Nvvd9fAIE4zguEkHAGnU4tIqH8A', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUJETGQ3Qm1pTGpqUTVFYlMyOXR2VVBFWWdEcWRHOWpuNjBTelhxdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LzM4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754249),
('9vadtiQJgq5WSSE7qzNcp0xkJgi1xZ5sVu6KEFCr', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ0lqUm1ub2pMbGNOYnZoaXE0ZFpuZUlYTTNMR3BuN0tvUzZsdmk3cSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747823673),
('aVAw8Ob0hqg7PshUHe8GxSTp0lYRuUGadnS3v4QP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaG1SeFpaUm8xbExMSDhzVUJKaHpObmg2eW43eTdJV3R4Q2JrSXo1eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tZXNzYWdlLWJ5LXN0YXR1cy9VbnJlYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747827041),
('b0gouP2ul1haNTzeaWavcz7VGXQk8zJvuRbd4sEr', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDhRWHhPQk5mYkdMNVBuWUJVUWRpWHU3YWl6Z01KR2lyY1VNR21mZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleC1ieS1wcm9kdWN0LzQyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754263),
('Bf0CPgGWbcwWA7oXX8IJFIHNQnzmIwnGCl2QrhXs', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDRCS0czczY3OWRFVFV6NWlvSXdXUW9hYmpoUlp3ajVTeFVCRENMTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749067),
('BqqoYmKgIxVsOKNEYp3mvZRI6KtZ8ehbdCPpNCW5', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVlRaERMMlB3YnpKTkFMRVdjZTFuOERpWnNTbnJNOEtjSzJyQjhXcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleC1ieS1wcm9kdWN0LzM5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749037),
('bsWWP8c42zwRUn7F0EFYKSVkEhKhWd1RXcxWc58u', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXJlSXJyMzZHcDJ1eEU2Y2JmeDAzWlZwTkNaeUtZaTM5NTBnMjFPeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS1hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747747405),
('cJr40GfHn99HOWnt8Gtw6qYfMXPzp9kLKHxRmtCP', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXY3b3ZxNWVwWWFzdENLZzgyZHpDTTc4MUJLRzdOZXdMcldhMXdIVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LzM4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754241),
('CJz8Hd5eoJD5yvXbwiJUXmYTayT63spyxOZ4hOWm', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienJMb1hQZDJrQXEzUG5FdTNPYUtzNDd6dW83bmhONGppdUlHQTJTRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS1hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747749008),
('CqGcY1t7Bptu0l71VLs02p7UORYEN5PrBf5jELyu', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWVrdFNQYmp0NUdTQ0l5SjdzbmE2eUcySnllRlJHejBQS0NhcWRSYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747829104),
('DAh34kL1zTG2NZtsOTDCPSDwuIGH1X20uRLmNaDw', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2JPSGpQOU1Fa25WR0ZxVzdlckRld2FzM1ZEWnFZQnhSYnRpSlpveiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LzM5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749048),
('dAYiY4mwwcFv8gVPNkH0dPTPjWmRKS5r71H0Ombs', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEZXNEpUbnByZmVZSTBhY1BGekdGRXU3d3pOekVtMHJpNElqaTc5NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754277),
('dChAIiWIN0LLdp3iAG8RCtEKBCMiAjoV60rruLHy', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0V1YU9ZbWxRV2JMWVU1N0RxNTFTUllqUlFhQTc0NlFQS0kzcEFqTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754296),
('DFpR0has7kGtMcshH0zZw99fDfBVIMvsnKdFiSk0', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmJpcnBJcVp3V3pGRFd4Y294ckoyWHRnZmN6SUZTVGREa3JoR3ZRZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754237),
('DJYxZZYXIVqEGQwFPKGX259bu9vDO9joEfjVPrR6', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjVjWE1TQ3lob202d2xiSXBxUGVaMjhURjB6cExlckhrdjB0cXEwZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749060),
('ePuO3Pf1wBhFVCwfYtPGygjmh385nGPQejyqIPlM', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVGdtR0s1d3BxVGlTNEJDNHl5TVQzYnNNN1hZempRODRBaVlCUVVYVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749066),
('EQCc77DFRM6ClXMeu1XimRlv8SPUm7cCeY83KR7i', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTnBITXgwR1FIbjhOYkRqYTdMQTRxeXFEQXpmYXU1bjh3TmFnZW9JQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754276),
('fpTWqltnA7vVIQM2Ie8UebXDj0F9BnWh9JasS5OS', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3B5MGZnV0x3Z1FCRlBqOExZNk5NQVNQMlRtbGFic1VHaEpHV0dxOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleC1ieS1wcm9kdWN0LzM4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754250),
('gcYDkD7UIpdApWhB78ugpMJ98tmOQ1Qc1oY4KfmG', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR21yY1FyQWtEY3FsMmtRU1pjekNUMEEyZ014YzV1aWRKYlZNb2dZTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleC1ieS1wcm9kdWN0LzM5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749049),
('GHfCXzEouq27R33desSagj1U90QjxW52UvPoU0YS', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFhtR1JBOTNVN1ZqNk83dnBJMTV2a0VySFVScVZidmdTR251OVk5TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749077),
('GrwJQqzUNn7j0gUNmzPCdUpkobWrSV3W9oBnuVPt', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibEtnbWJnZWFUR0FodGZ4bFM2ZEVKb3ZHbm9SOURCbjh4VHBIZVc5RyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747822274),
('hEqRMQMwHVHK5WpCX7JwB9jUTDFnXNTRh5CU0RLY', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVdTRjQ3bnZOQnByazBEQXdIbVJUSmZmQmNObHk3YUVNR1JxV3VqViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754271),
('HQ5at0WP0KW7mbTQ9Xf9LvMZlMOFHpzRpQPspYtT', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODR3UGRWSUd1RTVTQVFPMzlCYkljcHN5S0k1NURXNlFlczBOS1BxeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWJ5LXByaW9yaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749036),
('izT1RlpoEbUbNGue70o3tr5mpqgPpItIUlwCE0gh', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY2hCYXZwNXdZWEVDWEQ1Wklrb0VUNWNsWUYwa1pOVVoybTBXc1p3WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749048),
('j0zPHAjhiUIHnUvMpWA6YGedy6zpxKusgV860zdh', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0Zpc0RwcVRLd09PbGtHTjFnTXhZQ284bXdiTGZQUWNkZFlOdHRjayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754270),
('jGtzlFjLeEv1SDnrJsrDOKnL4qMHehwv5GcrRdWJ', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVEN1cHFwMHpVSHVkM2VwdGNrMDN5ZkdiTWltUVhTNXBUb2h3UENWeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747822661),
('jMtme5dMY0lmqit0IAZTaN5ZiD99vxvMV9itR8Ok', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHg4REtBeU9EbnpFRjEzRmgyME82dkxyYzdUUDBqa0pERnJwd3Z6UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754257),
('jNLiwRx0klUs6CS29cqx5K26wafpc0QbKVpbl9eL', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicElNY3RVcGU3YnJyMkFsZlB3amc3OUM5d2liMDg1bkduY2Zmc25WMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LzM5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749035),
('KekXVTVyPVYwVKq7m1YkypYaMkVtohpJBHFPmH5o', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHpzcml2NVI1dkpKelJWOUcxQkFOVzNRQ3FsZmdSOHZqZkFvdktWZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749072),
('lPyPaYGmMazvKahjQJobkEd7viQaMBuoAMMws7Vn', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGtTQlJob0VXUXRIdTBCaTlQRldsR1MwUmZZa1NpSVl3VzIwWFd1cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747747239),
('MirZOEIJbfcn2c7OKyQz4sYxsyW11wPCffemEPmN', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVzRoQXhjQko2Z1RXZlNKeDlPbzRpTVN4UXNvSGVRdFA4TDJvOUZLSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747822411),
('nELBG5ybVIYVXQ8ojlP80iW57IYEWN9xkfpTnzLK', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDhXSlNjMjFDcXBDRUFmQ25zcndxcHhYVVJERnV6bVRLUEdQV3ZmTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS1hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747747133),
('nmcOgpu5pb8N13GbAzUQsra5SCjDES1R0SmgLMjh', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWphMmpCZmJJekdYWUJtWkRFZjRhT0ltWUg4YUcydzJTbk92SnMxUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS1hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747747238),
('noUBg6GFAWRvA1AVc3RLXrYo3J4t5UxZz4qAt49s', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYU5GMU5QUmVZZnMwVmZLUmlIRHZmVlZCNlcwZlpRUXA4OVR5R2NjQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS1hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747829103),
('nqLbWOTvcpRTvEte61V4OCQ0v77gPHcqF5WrW1DK', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVgzV1FoYzlZaGRsVWhjVlhhWmVxM2tCanRjeGxjbW56SkE4czdGSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleC1ieS1wcm9kdWN0LzM5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749035),
('nxgAsoYFc7JMh4VNlo5mk4iy6MlkHLKEfGcubbYg', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWDdtRWtHVkFoU1hFN3pVcWdrbGdwemFpV0dLYkM2blhEREZ5UkNiYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754268),
('Ocq60DyrUSxX726aGBarcqyU2Q8HmTGqXZYREItS', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWldCeUVmS0V5RGd0ZE1Vc1hXSkpvUGZQZDZjcTQ4UkFDRlp5UDZSMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754252),
('PE29PeQPju2k6pWVkRwKrPUurFIDTbTgH0IunFjS', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnFSYmdlRDI1SW1EZFlFWnNRaUFSN0JuU09yeUF5clM2dzJJTlFYMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWJ5LXByaW9yaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749049),
('Pikty9dcL9LW08Cmb53jT6ymKELSP97TQ5gSVzBk', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0w5OXp4eWI2QUdSWXpjV2lFbGpXSFJ4bDdiWWt3RmpXMTF1aUhvayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754279),
('QBorzFabas3u964ychxMrhZMHuZjGrPTRJYRtZeT', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGhaRmlzYk5KclIzOTZOajBnNWI0N1VwRjJRT3JuWnlCcjRlZ0plVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754276),
('QBRflmedcf8Krsmnzs3uIOt3bUHcHWWWSYsoIys3', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2tkYVk4SkRwM2VvenduRmtRWE9Qbjk2WUpmRHlmRGUxQjZKeVZMQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWJ5LXByaW9yaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754269),
('qfq882Rmtm0i5aNhBB6sw0PJZBIKxoMu7i3Ry24f', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkhNT3BNYnZHOWJ3NEZGTXlJc2N3VW1oMFRhSVlseFEwMGJKNVZQOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWJ5LXByaW9yaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754263),
('sgLDZfLO3J9mpdkSojSkozjIVH97dCOzltVvlUqx', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVGVZWFhIRzZ1alhBSWlsbnZzbDBwQU80Q0E1TGZiSGg3azd4ejA3RCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747823746),
('UG8fcUVSe7vTfsYGIMNLV1xMMfgCNuCu4NflO8Ag', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1hDNnI3bWw3aEN1bjdYSjdZRnU0cFFSNkhMUU83T3JSb0c0ZjBpYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LzQyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754262),
('uKwWZu7imF4IEB6KIpII362K5Vq0oN6alPwG8GO8', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHU0bTVpU0YzVUtKZXFubmM0M1FJOVJnVmhxZTdjZHNXVlBrZE1wciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWJ5LXByaW9yaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749038),
('VNV2Id9KfhDR8z1LHqDS4rES4DopFSZo2twh3yzB', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUQwZlo2WDl2QUMwOE1GUHhTTUp1TTBWeDdtR21wOUNPeUtlQm5vayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleC1ieS1wcm9kdWN0LzQyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754269),
('wwbK74xgMYiHFZQQVhfFYNrnWdUmlWwCDPSntJux', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW85UTVId3g0d3NHNk1xVklIbzN2S1hmWUhweFRvRTFCSVFueG1NSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LWJ5LXByaW9yaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754250),
('xdn8oKszGZTJdDmJk3GC5w0d6qZoBreZCfw5R7X2', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlJSeXRCTXZ1dHBzTnMzOUlJa2ZjVkNjWUJnOU9tZXIyU1h2RlltRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleC1ieS1wcm9kdWN0LzM4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754242),
('Xf5n6qtGqDSLLEo8wJnz9odXFJId7a6OwNueUJUN', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzlzb3pIQWJhUzZRUDVhUjhlMjBRSUpZa1NNWmVXSzlHeTdFVkpQbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749008),
('xkDnpsf3gn7EtKuKQY8Zn6NRvLtPstVi1jyj0SQg', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVUxlNm5sV0tOdFVWZUpnTVhwRTlVbWlHWmhwSGhLZ3dQZHBQTWdqNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747822437),
('xkJgaXKfTVuOPxEnGHIBgrfRodvnHJfTrgs9DyLj', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1dpUmg4VGt6MzZCM2Zhb0dEeHhodEJaRXF3dnZhdHBlTFdLQlpLbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747747134),
('xNqlLMQ7S9qfuz0gugt5RyjYkNAuJ5ZZctpHd1X9', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1NqWWlYeW1wV09UOVRtbm83cDFvSk1SZXQ2RDU4Q1lRUzRrVnE0NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS1hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747754258),
('yE9DBPUmUM8WbVeHQzlU8SpjhSmJQ0PX2mEQpKuQ', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkRZQ3RwVER5aUdscVBYVHg4eGdqeUhFRGhvTVB1OXBtRzZCMUN5byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747749088),
('yvhr0dAr6KvHBgUinA2hhMhxGsJEP1YVDVcI6BvJ', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU1NQUc2WmdUMDZobksyc3lvV0ZjQlhpSHNFSjZrTGcyQzhMQW1NcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747747404),
('zdHNHMWG4ZbHqlkqIcBDiqn1N0SMx746fXy9gbfw', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibndwa2xXMjk1MjF4MmxINnlPQm12WDF3UWRlRUt0aGloY1BvVGlDZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS1hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747754238),
('ZJcV5IyfkAxO2rcPWNQEgahNb93jVFd9zXIwKxcX', NULL, '127.0.0.1', 'node', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVlVxVzlyck1qUU11ZTJYSGxuQUpEbGpZbTIzQ094Z0lVWlNQUWlzayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747825698),
('zNDbwSe7SzTqjMNNiMIvjoAcYusyUN2AbXBri8RT', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjRZcFF5VGRFWXBZNmJWRjNJTk1nRjdKY0UxS3NUaUU5SVFRa3lsSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0LzU3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747754251);

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
