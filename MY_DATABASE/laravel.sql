-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 01:51 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `street_address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `order_id`, `first_name`, `last_name`, `phone`, `street_address`, `city`, `state`, `zip_code`, `created_at`, `updated_at`) VALUES
(2, 2, 'Lexer Johnds', 'amorcillods', '023201972193', 'Basaksd, Sudtunggan Purok II LLC\nBasak, Sudtunggan Purok II LLC', 'Cebu Citysd', 'Cebuds', '5553', '2024-05-29 03:02:08', '2024-05-29 03:06:01'),
(3, 1, 'Francesco', 'Pfannerstill', '343-478-4851', '1800 Hammes Springs', 'Fort Myers', 'West Virginia', '558', '2024-05-29 03:10:15', '2024-05-29 03:10:15'),
(4, 5, 'Santiago', 'Wiegand', '677-135-4823', '9934 Brekke Keys', 'Parma', 'Texas', '96217-2354', '2024-05-30 23:34:42', '2024-05-30 23:34:42'),
(5, 6, 'Lexer John', 'amorcillo', '09201972193', 'Basak, Sudtunggan Purok II LLC', 'Cebu City', 'Cebu', '6015', '2024-05-30 23:41:09', '2024-05-30 23:41:09'),
(6, 7, 'Lexer John', 'amorcillo', '09201972193', 'Basak, Sudtunggan Purok II LLC', 'Cebu City', 'Cebu', '6015', '2024-05-30 23:42:59', '2024-05-30 23:42:59'),
(7, 8, 'Lexer John', 'amorcillo', '09201972193', 'Basak, Sudtunggan Purok II LLC', 'Cebu City', 'Cebu', '6015', '2024-05-30 23:43:57', '2024-05-30 23:43:57'),
(8, 9, 'Lexer John', 'amorcillo', '09201972193', 'Basak, Sudtunggan Purok II LLC', 'Cebu City', 'Cebu', '6015', '2024-05-31 02:02:49', '2024-05-31 02:02:49'),
(9, 10, 'Lexer John', 'amorcillo', '09201972193', 'Basak, Sudtunggan Purok II LLC', 'Cebu City', 'Cebu', '6015', '2024-05-31 02:08:31', '2024-05-31 02:08:31'),
(10, 11, 'Lexer John', 'amorcillo', '09201972193', 'Basak, Sudtunggan Purok II LLC', 'Cebu City', 'Cebu', '6015', '2024-05-31 02:16:49', '2024-05-31 02:16:49'),
(11, 12, 'Lexer John', 'amorcillo', '09201972193', 'Basak, Sudtunggan Purok II LLC', 'Cebu City', 'Cebu', '6015', '2024-05-31 02:36:46', '2024-05-31 02:36:46'),
(12, 13, 'Lexer John', 'amorcillo', '09201972193', 'Basak, Sudtunggan Purok II LLC', 'Cebu City', 'Cebu', '6015', '2024-05-31 02:41:42', '2024-05-31 02:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Apple', 'apple', 'brands/01HZ47WEV8AACWKWXQDMTE4WYC.webp', 1, '2024-05-26 07:45:58', '2024-05-29 23:54:27'),
(3, 'Samsung', 'samsung', 'brands/01HZ47Y322QS89JHRWQXKV2ME7.jpg', 1, '2024-05-26 07:46:29', '2024-05-29 23:55:20'),
(4, 'Xiaomi', 'xiaomi', 'brands/01HYX3MYK9VFT12EW7ZTAH6DG5.png', 1, '2024-05-27 05:25:45', '2024-05-27 05:25:45'),
(5, 'Oppo', 'oppo', 'brands/01HZ47T0HB9C4DGCVT7C5DNBTJ.png', 1, '2024-05-29 23:53:06', '2024-05-29 23:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Laptops', 'laptops', 'categories/01HYTJ3PAFANYR82BDRTBVTZSX.png', 1, '2024-05-26 05:40:45', '2024-05-26 05:40:45'),
(3, 'Mobile', 'mobile', 'categories/01HYTV3HRNNDEN5H4EA20YEQST.png', 1, '2024-05-26 08:17:58', '2024-05-26 08:17:58'),
(4, 'Smart Watch', 'smart-watch', 'categories/01HYZNQ6F5DPNWVYWNQZHB35A2.jpg', 1, '2024-05-28 05:20:02', '2024-05-28 05:20:02'),
(5, 'Smart TV', 'smart-tv', 'categories/01HYZNS2Z2GRS0942JGFK1CJ29.webp', 1, '2024-05-28 05:21:04', '2024-05-28 05:21:04');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_25_083943_create_categories_table', 1),
(6, '2024_05_25_084025_create_brands_table', 1),
(7, '2024_05_25_084031_create_products_table', 1),
(8, '2024_05_25_084038_create_orders_table', 2),
(9, '2024_05_25_084045_create_order_items_table', 3),
(10, '2024_05_25_084052_create_addresses_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `status` enum('new','processing','shipped','deliverd','canceled') NOT NULL DEFAULT 'new',
  `currency` varchar(255) DEFAULT NULL,
  `shipping_amount` decimal(10,2) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `grand_total`, `payment_method`, `payment_status`, `status`, `currency`, `shipping_amount`, `shipping_method`, `notes`, `created_at`, `updated_at`) VALUES
(1, 5, 222944.00, 'gcash', 'pending', 'deliverd', 'php', NULL, 'ninja', 'Testtest', '2024-05-28 07:18:40', '2024-05-29 04:23:25'),
(2, 6, 200800.00, 'cod', 'paid', 'shipped', 'php', NULL, 'ninja', 'testttt', '2024-05-28 07:48:40', '2024-05-29 04:07:42'),
(3, 6, 118796.00, 'cod', 'pending', 'new', 'php', NULL, 'fedex', 'Tesdsdadad', '2024-05-29 04:45:20', '2024-05-29 04:45:20'),
(4, 7, 47724.00, 'stripe', 'pending', 'processing', 'php', NULL, 'ninja', '116ddwdddwdwd', '2024-05-30 23:00:23', '2024-05-30 23:00:47'),
(5, 15, 196128.00, 'cod', 'pending', 'canceled', 'php', 0.00, 'none', 'Order placed by test', '2024-05-30 23:34:42', '2024-05-31 03:10:17'),
(6, 15, 545540.00, 'cod', 'pending', 'processing', 'php', 0.00, 'none', 'Order placed by test', '2024-05-30 23:41:09', '2024-05-31 03:10:15'),
(7, 15, 43998.00, 'cod', 'pending', 'processing', 'php', 0.00, 'none', 'Order placed by test', '2024-05-30 23:42:59', '2024-05-31 03:09:59'),
(8, 15, 36044.00, 'stripe', 'pending', 'shipped', 'php', 0.00, 'none', 'Order placed by test', '2024-05-30 23:43:57', '2024-05-31 03:09:56'),
(9, 15, 230898.00, 'cod', 'pending', 'deliverd', 'php', 0.00, 'none', 'Order placed by test', '2024-05-31 02:02:49', '2024-05-31 03:09:54'),
(10, 15, 230898.00, 'stripe', 'failed', 'canceled', 'php', 0.00, 'none', 'Order placed by test', '2024-05-31 02:08:31', '2024-05-31 03:11:49'),
(11, 15, 59398.00, 'cod', 'pending', 'shipped', 'php', 0.00, 'none', 'Order placed by test', '2024-05-31 02:16:49', '2024-05-31 03:10:24'),
(12, 15, 215498.00, 'cod', 'pending', 'canceled', 'php', 0.00, 'none', 'Order placed by test', '2024-05-31 02:36:46', '2024-05-31 03:10:25'),
(13, 15, 36044.00, 'stripe', 'paid', 'deliverd', 'php', 0.00, 'ninja', 'Order placed by test', '2024-05-31 02:41:42', '2024-05-31 03:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_amount`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 86500.00, 86500.00, '2024-05-28 07:18:40', '2024-05-28 07:18:40'),
(2, 1, 6, 1, 36044.00, 36044.00, '2024-05-28 07:18:40', '2024-05-28 07:18:40'),
(3, 1, 3, 1, 85000.00, 85000.00, '2024-05-28 07:18:40', '2024-05-28 07:18:40'),
(4, 1, 4, 1, 15400.00, 15400.00, '2024-05-28 07:19:49', '2024-05-28 07:19:49'),
(5, 2, 4, 2, 15400.00, 30800.00, '2024-05-28 07:48:40', '2024-05-28 07:48:40'),
(6, 2, 3, 2, 85000.00, 170000.00, '2024-05-28 07:48:40', '2024-05-28 07:48:40'),
(7, 3, 4, 2, 15400.00, 30800.00, '2024-05-29 04:45:20', '2024-05-29 04:45:20'),
(8, 3, 6, 2, 36044.00, 72088.00, '2024-05-29 04:45:20', '2024-05-29 04:45:20'),
(9, 3, 5, 2, 7954.00, 15908.00, '2024-05-29 04:45:20', '2024-05-29 04:45:20'),
(10, 4, 5, 6, 7954.00, 47724.00, '2024-05-30 23:00:23', '2024-05-30 23:00:23'),
(11, 5, 6, 5, 36044.00, 180220.00, '2024-05-30 23:34:42', '2024-05-30 23:34:42'),
(12, 5, 5, 2, 7954.00, 15908.00, '2024-05-30 23:34:42', '2024-05-30 23:34:42'),
(13, 6, 6, 3, 36044.00, 108132.00, '2024-05-30 23:41:09', '2024-05-30 23:41:09'),
(14, 6, 5, 2, 7954.00, 15908.00, '2024-05-30 23:41:09', '2024-05-30 23:41:09'),
(15, 6, 4, 5, 15400.00, 77000.00, '2024-05-30 23:41:09', '2024-05-30 23:41:09'),
(16, 6, 3, 7, 85000.00, 85000.00, '2024-05-30 23:41:09', '2024-05-30 23:41:09'),
(17, 6, 2, 3, 86500.00, 259500.00, '2024-05-30 23:41:09', '2024-05-30 23:41:09'),
(18, 7, 6, 1, 36044.00, 36044.00, '2024-05-30 23:42:59', '2024-05-30 23:42:59'),
(19, 7, 5, 1, 7954.00, 7954.00, '2024-05-30 23:42:59', '2024-05-30 23:42:59'),
(20, 8, 6, 1, 36044.00, 36044.00, '2024-05-30 23:43:57', '2024-05-30 23:43:57'),
(21, 9, 6, 1, 36044.00, 36044.00, '2024-05-31 02:02:49', '2024-05-31 02:02:49'),
(22, 9, 5, 1, 7954.00, 7954.00, '2024-05-31 02:02:49', '2024-05-31 02:02:49'),
(23, 9, 4, 1, 15400.00, 15400.00, '2024-05-31 02:02:49', '2024-05-31 02:02:49'),
(24, 9, 2, 1, 86500.00, 86500.00, '2024-05-31 02:02:49', '2024-05-31 02:02:49'),
(25, 9, 3, 1, 85000.00, 85000.00, '2024-05-31 02:02:49', '2024-05-31 02:02:49'),
(26, 10, 6, 1, 36044.00, 36044.00, '2024-05-31 02:08:31', '2024-05-31 02:08:31'),
(27, 10, 5, 1, 7954.00, 7954.00, '2024-05-31 02:08:31', '2024-05-31 02:08:31'),
(28, 10, 4, 1, 15400.00, 15400.00, '2024-05-31 02:08:31', '2024-05-31 02:08:31'),
(29, 10, 2, 1, 86500.00, 86500.00, '2024-05-31 02:08:31', '2024-05-31 02:08:31'),
(30, 10, 3, 1, 85000.00, 85000.00, '2024-05-31 02:08:31', '2024-05-31 02:08:31'),
(31, 11, 6, 1, 36044.00, 36044.00, '2024-05-31 02:16:49', '2024-05-31 02:16:49'),
(32, 11, 5, 1, 7954.00, 7954.00, '2024-05-31 02:16:49', '2024-05-31 02:16:49'),
(33, 11, 4, 1, 15400.00, 15400.00, '2024-05-31 02:16:49', '2024-05-31 02:16:49'),
(34, 12, 6, 3, 36044.00, 36044.00, '2024-05-31 02:36:46', '2024-05-31 02:36:46'),
(35, 12, 5, 1, 7954.00, 7954.00, '2024-05-31 02:36:46', '2024-05-31 02:36:46'),
(36, 12, 2, 1, 86500.00, 86500.00, '2024-05-31 02:36:46', '2024-05-31 02:36:46'),
(37, 12, 3, 1, 85000.00, 85000.00, '2024-05-31 02:36:46', '2024-05-31 02:36:46'),
(38, 13, 6, 1, 36044.00, 36044.00, '2024-05-31 02:41:42', '2024-05-31 02:41:42');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `description` longtext DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `in_stock` tinyint(1) NOT NULL DEFAULT 1,
  `on_sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `slug`, `images`, `description`, `price`, `is_active`, `is_featured`, `in_stock`, `on_sale`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 'Apple 15 Pro Max 255gb', 'apple-15-pro-max-255gb', '[\"products\\/01HYTWA6NNZBZ1M9AXGRCDZPK6.jpg\",\"products\\/01HYTWA6V0B0W6JN8VFPBPV7ET.jpg\",\"products\\/01HYTWA6X2GRE9GX83N4D7NPEP.jpg\",\"products\\/01HYTWA6YTG6QZW6HNY69HQ30N.jpg\",\"products\\/01HYTWA70JEMYXP6FR7XCK8WMN.jpg\"]', 'The iPhone 15 Pro Max is a powerful and feature packed smartphone with enhanced overall performance. But, it\'s an expensive phone to own and operate when you consider the cost of the phone itself, AppleCare+, cellular phone service and any accessories (such as a case, wireless charging pad and extra USB Type-C cables).', 86500.00, 1, 1, 1, 0, '2024-05-26 08:39:05', '2024-05-26 08:49:24'),
(3, 3, 3, 'Samsung Galaxy s24 ultra', 'samsung-galaxy-s24-ultra', '[\"products\\/01HYTWVZYAD2JGEJFHCMFVBGWA.jpg\",\"products\\/01HYTWW0RBBDTD5Y5X3KN5P8WX.jpg\",\"products\\/01HYTWW0T2NKHQBXMFAD2Z3PSB.jpg\",\"products\\/01HYTWW0VTV2E6NQDC45G1BGYD.jpg\",\"products\\/01HYTWW0XJEGVH3B4G8K2TKEAD.jpg\"]', 'The S24 Ultra has the slimmest and fully symmetrical bezels and combines with a better and brighter display—up to 2600 nits—with Vision Booster, that makes it easier to read your phone in any lighting conditions. And the flat edge-to-edge display lets the S Pen work across the entire surface for the first time.', 85000.00, 1, 1, 1, 0, '2024-05-26 08:48:48', '2024-05-26 08:48:48'),
(4, 3, 4, 'Xiaomi 13T', 'xiaomi-13t', '[\"products\\/01HYZNMDTJF93W2R5SY86W8JEC.webp\",\"products\\/01HYZNMDVKENHFC24JQN5GTG42.webp\",\"products\\/01HYZNMDVNFFJJCG69VW5Q8402.webp\",\"products\\/01HYZNMDVR2S3YZEW9AFB948TP.webp\",\"products\\/01HYZNMDVW7QWZ937RKDNFGPR2.webp\"]', 'Global Version Xiaomi Redmi Note 13 Smartphone 128/256GB Snapdragon 108MP Camera 120Hz FHD+ 6.67 Inch AMOLED 33W Charging', 15400.00, 1, 0, 1, 0, '2024-05-28 05:18:33', '2024-05-28 05:18:33'),
(5, 4, 4, 'Fitpolo Smart Watch', 'fitpolo-smart-watch', '[\"products\\/01HYZPM72CQ5088Z4RX323R0HA.jpg\",\"products\\/01HYZPM8NG71QHWJQQQZ9EJ593.jpg\",\"products\\/01HYZPM8NQ2NEZMG7QN9GQRDTQ.jpg\",\"products\\/01HYZPM8NWP9SS1SS14NNYQFNR.jpg\",\"products\\/01HYZPM8P0BFDQ6T06JKBB4KJP.jpg\"]', 'Fitpolo Smart Watch for Men Women,1.8\" Touchscreen Fitness Tracker Bluetooth Call Alexa SpO2 Heart Rate Monitor Sleep Calorie Step Counter Waterproof Activity Tracker and Smartwatch for Android iPhone', 7954.00, 1, 0, 1, 1, '2024-05-28 05:35:55', '2024-05-28 05:35:55'),
(6, 5, 3, 'Samsumg Smart TV', 'samsumg-smart-tv', '[\"products\\/01HYZQAWPJSDA2EB1XDC6TFWNY.webp\",\"products\\/01HYZQAY71NAW4YRGVQ9NWVZ2A.webp\",\"products\\/01HYZQAY74RSDHH8JYR5F11VPE.webp\",\"products\\/01HYZQAY778NZ1AGVKPVAFE7QS.webp\",\"products\\/01HYZQAY7AXC6CPK2ZQRP7HDVP.webp\"]', 'OLED65A3PSA.APH\nLG OLED A3 65 inch 4K Smart TV 2023\nA smarter viewing experience with the α7 AI Processor 4K Gen6\nIncredibly defined visuals with Infinite Contrast\nSmart Functionality, including ThinQ AI and WebOS\nAn immersive cinema experience with Dolby Atmos and Vision\nStreaming built-in, including LG Channels, Netflix, Apple TV+, and Disney+', 36044.00, 1, 1, 1, 0, '2024-05-28 05:48:18', '2024-05-28 05:48:18'),
(7, 2, 4, 'Predator 6000x NT', 'predator-6000x-nt', '[\"products\\/01HZ4ACXTW7T0MR128MTAG14JE.jpg\",\"products\\/01HZ4ACZ6ESPHZA1PMFR8T7BJQ.webp\",\"products\\/01HZ4ACZ6J15XYRPECFMPQ23RN.webp\",\"products\\/01HZ4ACZ6NZQ4T3Y31QHQ9EVYX.webp\",\"products\\/01HZ4ACZ6RRAJ25M12C2JX9MG6.webp\"]', 'Testttssdadawd', 849944.00, 1, 1, 1, 1, '2024-05-30 00:38:25', '2024-05-30 00:38:25'),
(8, 5, 3, 'Smart TV 3223X baracuda', 'smart-tv-3223x-baracuda', '[\"products\\/01HZ4AFDP0FNP6Y3EP7ZD227T0.webp\",\"products\\/01HZ4AFDPDA6K6N9Z9TH1XHBYA.webp\",\"products\\/01HZ4AFDQ0FQ81HY7J74TR3CJ9.webp\",\"products\\/01HZ4AFDQ59DAWM9E9F9MN4MDN.webp\",\"products\\/01HZ4AFDQAZ85G9KA7AS5ZA29P.webp\"]', 'Testttewte', 932333.00, 1, 1, 1, 0, '2024-05-30 00:39:45', '2024-05-30 00:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@gmail.com', NULL, '$2y$10$nIWyZgVezL8pjFzf/mRYXebhiLPGuiAlFD7P.Dg5U4EinT6NL3Pwe', 'nL70I5hRolXYswaiqJanDRBQVCOZZKKaFBXJ706DU2sZZErlEY2tdSBC900I', '2024-05-26 04:59:01', '2024-05-26 04:59:01'),
(5, 'testaccount', 'testacc@gmail.com', '2024-05-26 05:00:26', '1234', NULL, '2024-05-26 05:00:40', '2024-05-26 05:00:40'),
(6, 'kawkaw33', 'kawkaw333@gmail.com', '2024-05-28 07:47:38', '1234', NULL, '2024-05-28 07:47:50', '2024-05-28 07:47:50'),
(7, 'ffdfdf', 'fdff@gmail.com', '2024-05-29 04:36:24', '1234', NULL, '2024-05-29 04:36:31', '2024-05-29 04:36:31'),
(8, 'Gretchen Baumbach', 'your.email+fakedata17680@gmail.com', '2023-11-02 19:32:00', 'BKMsr1L8Lz2gORk', NULL, '2024-05-29 18:44:21', '2024-05-29 18:44:21'),
(9, 'Mable Block', 'your.email+fakedata84065@gmail.com', NULL, '$2y$10$PYTCwWIORMzlunUVb6y5Aeu5f5WErKPl8j6CRfXTRBb.tHM3c.xVq', NULL, '2024-05-30 19:41:38', '2024-05-30 19:41:38'),
(10, 'Jacynthe Keeling', 'your.email+fakedata69696@gmail.com', NULL, '$2y$10$H9jpu49C3c6cC227uChJBO5ayu6mMC2AfdOznlhAYNY2QBfgJbYOm', NULL, '2024-05-30 19:41:54', '2024-05-30 19:41:54'),
(11, 'Lindsay McDermott-Waters', 'your.email+fakedata23339@gmail.com', NULL, '$2y$10$Y7fIqpI9zMBexVS/g5D/sO8O0LWRcYAmosnAcnbysZGyEDDZAjXu.', NULL, '2024-05-30 19:42:22', '2024-05-30 19:42:22'),
(12, 'kawkawd', 'kawkawd@gmail.com', NULL, '$2y$10$q0pXmu4OiNMqwR.TZWXSJ.lT.xYY1jLYaN/ucHfDwO6xapYw2dSi6', NULL, '2024-05-30 19:42:46', '2024-05-30 19:42:46'),
(13, 'Iliana Thiel', 'your.email+fakedata18325@gmail.com', NULL, '$2y$10$vJhf7hqpkIRAdBiVOqTPjuvC9JpfkiAdObXRJpHIjqa4zdSNZwZh6', NULL, '2024-05-30 19:55:42', '2024-05-30 19:55:42'),
(14, 'kawkawd123', 'admind@gmail.com', NULL, '$2y$10$S5BFHkl47q4ISZ3BBPIO5OcvlCcRGzG7yKqktb0b6jbIy1KsL9mJ.', NULL, '2024-05-30 20:18:24', '2024-05-30 20:18:24'),
(15, 'test', 'test@gmail.com', NULL, '$2y$10$vc.ke1Aad07xuoRtzX02aOKo67DWABZIah7HRXH/6veOwGgpAcFke', 'DMEHYAXrT0OgPkxbPfNpgRlo70y8iDVW6zjGEJOjQKBkAtMHEnh0BMhTmcqI', '2024-05-30 20:33:50', '2024-05-30 21:28:32'),
(16, 'Enrico Balistreri-VonRueden', 'your.email+fakedata33545@gmail.com', NULL, '$2y$10$MuW5u.IKi3PhqZ5.Q7nF/eTuevpjCKkXX3CSPZBCha0LUC1Eatany', NULL, '2024-05-30 20:34:43', '2024-05-30 20:34:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
