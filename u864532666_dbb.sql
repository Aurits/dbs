-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 03, 2025 at 09:55 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u864532666_dbb`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Best Quality ', 'lorem-ipsum-is', '/storage/photos/2/banner01.jpeg', '<h2><span style=\"font-weight: bold; color: rgb(99, 99, 99);\">Up to 10%</span></h2>', 'active', '2020-08-14 01:47:38', '2020-08-14 01:48:21'),
(2, 'Best Prices in Town', 'lorem-ipsum', '/storage/photos/2/banner02.jpeg', '<p>Up to 90%</p>', 'active', '2020-08-14 01:50:23', '2020-08-14 01:50:23'),
(4, 'Fastest Delieveries', 'banner', '/storage/photos/2/banner03.jpeg', '<h2><span style=\"color: rgb(156, 0, 255); font-size: 2rem; font-weight: bold;\">Up to 40%</span><br></h2><h2><span style=\"color: rgb(156, 0, 255);\"></span></h2>', 'active', '2020-08-17 20:46:59', '2020-08-17 20:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'G&T', 'g&t', 'active', '2020-08-14 04:23:00', '2020-08-14 04:23:00'),
(2, 'Philips', 'phillips', 'active', '2020-08-14 04:23:08', '2020-08-14 04:23:08'),
(3, 'Power King', 'power-king', 'active', '2020-08-14 04:23:48', '2020-08-14 04:23:48'),
(4, 'LG', 'lg', 'active', '2020-08-14 04:24:08', '2020-08-14 04:24:08'),
(6, 'Bosch', 'bosch', 'active', '2020-08-17 20:50:31', '2020-08-17 20:50:31');

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
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') NOT NULL DEFAULT 'new',
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(12, 9, NULL, 31, 76000.00, 'new', 1, 76000.00, '2024-09-30 05:48:35', '2024-09-30 05:49:41'),
(13, 9, NULL, 31, 76000.00, 'new', 1, 76000.00, '2024-09-30 14:16:00', '2024-09-30 14:16:00'),
(22, 1, 66, 30, 500.00, 'new', 1, 500.00, '2024-10-07 12:03:47', '2024-10-07 13:37:38'),
(26, 1, NULL, 30, 500.00, 'new', 1, 500.00, '2024-10-07 14:17:12', '2024-10-07 14:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `summary` text DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electric Appliances', 'electric-appliances', NULL, '/storage/photos/1/Category/new_category/cooker_unit_sockets.jpeg', 1, NULL, NULL, 'active', '2020-08-14 04:26:15', '2020-08-14 04:26:15'),
(2, 'Construction Materials', 'construction-materials', NULL, '/storage/photos/1/Category/new_category/concrete_nails.jpeg', 1, NULL, NULL, 'active', '2020-08-14 04:26:40', '2020-08-14 04:26:40'),
(3, 'Machinery', 'machinery', NULL, '/storage/photos/1/Category/new_category/polishing_machinery.jpeg', 1, NULL, NULL, 'active', '2020-08-14 04:27:10', '2020-08-14 04:27:42'),
(4, 'Tiling', 'tiling', NULL, '/storage/photos/30/tile_bath.jpeg', 0, 2, NULL, 'active', '2020-08-14 04:32:14', '2024-09-30 05:13:37'),
(5, 'Lighting', 'lighting', NULL, '/storage/photos/31/mosquito_killer.jpeg', 0, 1, NULL, 'active', '2020-08-14 04:32:49', '2024-09-30 10:44:12'),
(6, 'Kitchenware', 'kitchenware', NULL, NULL, 0, 1, NULL, 'active', '2020-08-14 04:33:37', '2020-08-14 04:33:37'),
(7, 'Security', 'security', NULL, NULL, 0, 1, NULL, 'active', '2020-08-14 04:34:04', '2020-08-14 04:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 'fixed', 300.00, 'active', NULL, NULL),
(2, '111111', 'percent', 10.00, 'active', NULL, NULL),
(5, 'abcd', 'fixed', 250.00, 'active', '2020-08-17 20:54:58', '2020-08-17 20:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` text NOT NULL,
  `email` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `message` longtext NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'Prajwal Rai', 'About price', 'prajwal.iar@gmail.com', NULL, '9807009999', 'Hello sir i am from kathmandu nepal.', '2020-08-14 08:25:46', '2020-08-14 08:00:01', '2020-08-14 08:25:46'),
(2, 'Prajwal Rai', 'About Price', 'prajwal.iar@gmail.com', NULL, '9800099000', 'Hello i am Prajwal Rai', '2020-08-18 03:04:15', '2020-08-15 07:52:39', '2020-08-18 03:04:16'),
(3, 'Prajwal Rai', 'lorem ipsum', 'prajwal.iar@gmail.com', NULL, '1200990009', 'hello sir sdfdfd dfdjf ;dfjd fd ldkfd', NULL, '2020-08-17 21:15:12', '2020-08-17 21:15:12'),
(4, 'jsnsjsjwnwjwjw', 'snnsisnskznsns', 'tumusiimepius01@gmail.Com', NULL, '0761715006', 'Consequences slkdmsosqkq', NULL, '2024-09-30 08:55:08', '2024-09-30 08:55:08'),
(5, 'Thank you for registering - it was incredible and pleasant all the best http://yandex.ru ladonna  cucumber', 'Thank you for registering - it was incredible and pleasant all the best http://onlinehardwareshopuganda.com ladonna cucumber', 'xrum003@24red.ru', NULL, '85864268972', 'Thank you for registering - it was incredible and pleasant all the best http://yandex.ru ladonna  cucumber', NULL, '2024-12-09 08:13:15', '2024-12-09 08:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(22, '2023_06_21_164432_create_jobs_table', 2),
(23, '2024_10_01_151858_create_pesapal_transactions_table', 3),
(24, '2024_10_05_085832_create_pesapal_ipn_urls_table', 4),
(25, '2024_10_05_090129_add_errors_column_to_pesapal_transactions_table', 5),
(26, '2024_10_05_090520_add_errors_column_to_pesapal_transactions_table', 6),
(27, '2024_10_05_094043_add_status_code_column_to_pesapal_transactions_table', 7),
(28, '2024_10_07_111326_add_created_date_to_pesapal_transactions', 8),
(29, '2024_10_07_113013_add_payment_account_to_pesapal_transactions_table', 9),
(30, '0001_01_01_000000_create_users_table', 10),
(31, '0001_01_01_000001_create_cache_table', 10),
(32, '0001_01_01_000002_create_jobs_table', 11),
(33, '2024_12_16_175612_create_products_table', 12),
(34, '2024_12_17_081823_add_roles_to_users_table', 12),
(35, '2024_12_17_084052_add_status_and_role_to_users_table', 12),
(36, '2024_12_27_061120_create_orders_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('003f7451-0f46-4e7d-adc5-f9cf080c98f5', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/45\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 10:26:07', '2024-10-07 10:26:07'),
('07bc88a1-7272-4f23-90d3-b0ac6c9bc7a0', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/24\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 08:34:38', '2024-10-05 08:34:38'),
('0e6cbdfe-f1fe-49db-89ad-e961e6069d13', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/55\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 11:39:53', '2024-10-07 11:39:53'),
('11c62470-32e2-45e6-9e1e-c3165e3b521d', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/31\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 08:33:59', '2024-10-07 08:33:59'),
('126f4061-8004-418e-9dcd-8c757c9240a8', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/37\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:39:39', '2024-10-07 09:39:39'),
('19e1c395-a68d-4d5b-8cea-952cc73584e3', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/22\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 08:27:15', '2024-10-05 08:27:15'),
('1b6c6147-d8cb-4c54-84fe-963fc16e68b7', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/63\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 12:41:42', '2024-10-07 12:41:42'),
('202b99ac-37d0-481a-bc99-e3d6f6f71217', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/52\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 11:06:21', '2024-10-07 11:06:21'),
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:31:21', '2020-08-15 07:31:21'),
('2b2900f3-bdc1-45c9-b0f1-12ac00900e4e', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/46\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 10:30:23', '2024-10-07 10:30:23'),
('2bfaf2a1-a09d-41f0-83ce-ae12fe853dc1', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/19\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 15:16:33', '2024-10-01 15:16:33'),
('2dc8062a-ab8a-4028-9889-aaa2ee34247d', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/49\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 10:53:25', '2024-10-07 10:53:25'),
('343d6e55-222c-4008-a45f-c0caf88fa09c', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/23\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 08:31:43', '2024-10-05 08:31:43'),
('372dca36-450c-479c-b31e-e39766de20a2', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/7\",\"fas\":\"fa-file-alt\"}', NULL, '2024-09-30 14:22:18', '2024-09-30 14:22:18'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 07:54:52', '2020-08-15 07:54:52'),
('3bdaf3b8-4784-4699-9f3d-3c9d4a89602e', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/order\\/59\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 12:21:32', '2024-10-07 12:21:32'),
('3c53e766-78f5-4c89-8e3d-4c60a4e2f993', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/56\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 12:04:21', '2024-10-07 12:04:21'),
('3fc7112c-3fcd-424e-b4ce-6ac8dd4c5846', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/order\\/9\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 12:14:34', '2024-10-01 12:14:34'),
('414b6597-f624-4e44-a24a-a0a23ca9ed3d', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/25\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 08:56:17', '2024-10-05 08:56:17'),
('4a0afdb0-71ad-4ce6-bc70-c92ef491a525', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:51', '2020-08-17 21:13:51'),
('52a839dd-096f-439d-8b55-d9dda9be2ed0', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/14\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 14:05:15', '2024-10-01 14:05:15'),
('53a8bf7a-af3f-4cc2-a8d2-dd33f481a792', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/42\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:52:51', '2024-10-07 09:52:51'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 07:30:44', '2020-08-14 07:12:28', '2020-08-15 07:30:44'),
('5a33f1c7-faf2-4917-8024-1c7f9d59a324', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/16\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 14:12:17', '2024-10-01 14:12:17'),
('5a7d9eda-722f-4739-93fb-a3a6a0a53964', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/69\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 14:17:44', '2024-10-07 14:17:44'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:51:02', '2020-08-15 07:51:02'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', NULL, '2020-08-15 07:44:07', '2020-08-15 07:44:07'),
('5f0bcef5-4b40-4bbd-a727-1441e7a48dc6', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/29\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 09:42:04', '2024-10-05 09:42:04'),
('69892187-dd50-40f3-82a3-93c36b67ed27', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/61\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 12:30:49', '2024-10-07 12:30:49'),
('6bbb5d35-1b7c-4b44-81e9-c13bb773a048', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/44\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 10:19:21', '2024-10-07 10:19:21'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
('7d978c79-67ff-40c4-9324-d46031218445', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/28\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 09:21:23', '2024-10-05 09:21:23'),
('7e552009-6695-49a1-af43-0ac30465d43f', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/32\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:15:15', '2024-10-07 09:15:15'),
('7ef78dd1-078a-4fa3-9508-6714d8eda060', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/order\\/64\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 13:03:26', '2024-10-07 13:03:26'),
('80bc4f19-7f40-4ca7-b003-a4018efe92cf', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/34\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:18:39', '2024-10-07 09:18:39'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-14 07:20:44', '2020-08-14 07:20:44'),
('870356a0-12a3-425d-8376-cf013a138283', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/26\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 09:10:17', '2024-10-05 09:10:17'),
('88742f77-2ef5-4c1e-a634-dd48d63a15fc', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/50\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 10:55:05', '2024-10-07 10:55:05'),
('92bb699c-b815-4c8c-a888-4c788c0721af', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/40\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:48:14', '2024-10-07 09:48:14'),
('9576c57b-f363-41e5-bffb-9e2836f700e8', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/10\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 12:20:37', '2024-10-01 12:20:37'),
('99352d53-b34a-44e1-a3e7-1ebdcf283d28', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/20\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 15:25:11', '2024-10-01 15:25:11'),
('99757638-ca73-4372-96fe-9d89863abaf7', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/12\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 13:04:27', '2024-10-01 13:04:27'),
('9a6b7f80-82ee-4570-9da0-8f147a347623', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/39\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:45:42', '2024-10-07 09:45:42'),
('9a89504d-5223-49fb-9800-504fc91960c0', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/38\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:44:22', '2024-10-07 09:44:22'),
('9ce012aa-f58a-41af-99a1-54abbb36282a', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/30\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 10:05:59', '2024-10-05 10:05:59'),
('9d341af2-b567-4908-9010-336f0b36b0f7', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/18\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 15:15:01', '2024-10-01 15:15:01'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-17 21:17:03', '2020-08-17 21:17:03'),
('a7fe676e-6430-44c6-af47-13049eed8cc1', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/33\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:18:12', '2024-10-07 09:18:12'),
('a80c7045-6263-4412-a1e7-0d83d896e715', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/36\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:30:21', '2024-10-07 09:30:21'),
('a9d59859-a24b-41aa-b38d-1537d000449b', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/68\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 14:11:50', '2024-10-07 14:11:50'),
('aa3cd559-5490-4d8a-893c-0ce32023f5ca', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/6\",\"fas\":\"fa-file-alt\"}', NULL, '2024-09-30 05:49:41', '2024-09-30 05:49:41'),
('ae0dbd77-45d4-4844-a0be-acfbaf85355a', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/21\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 15:40:54', '2024-10-01 15:40:54'),
('af7f9a64-7910-42e5-a5ee-45a0c6c22a44', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/70\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 14:20:15', '2024-10-07 14:20:15'),
('b124c492-2993-4839-ba5d-edebe5a71bac', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/27\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-05 09:18:45', '2024-10-05 09:18:45'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-15 04:17:24', '2020-08-14 22:14:55', '2020-08-15 04:17:24'),
('b322dc89-cd6a-478f-a98e-6de9b80be5e5', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/57\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 12:06:30', '2024-10-07 12:06:30'),
('baa9eb93-cc78-433c-a73b-8b15d3a81bcc', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/58\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 12:08:39', '2024-10-07 12:08:39'),
('bc38a9b6-5807-4397-b1f8-e00d81dec25b', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/15\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 14:09:10', '2024-10-01 14:09:10'),
('bee13c0a-ef4f-4dea-bd8c-db3e46365e52', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/13\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 13:51:37', '2024-10-01 13:51:37'),
('c1fdc944-36a7-454c-b71a-6aaa8c872828', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/43\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:56:54', '2024-10-07 09:56:54'),
('c40c3067-777c-4429-9140-7bdb64d0a871', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/66\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 13:37:38', '2024-10-07 13:37:38'),
('c91534d0-d40a-4ace-bd09-02d58505dac5', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/47\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 10:40:41', '2024-10-07 10:40:41'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:08:50', '2020-08-14 07:08:50'),
('d465ecc1-d321-4e0a-9d99-b0783ab9a4a8', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/54\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 11:26:08', '2024-10-07 11:26:08'),
('d5e6f72b-1afc-414c-9b8f-2a3b40d9b758', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/53\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 11:20:50', '2024-10-07 11:20:50'),
('db91df01-0ab7-4ff9-b0ae-76c613cd5e12', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/41\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:52:07', '2024-10-07 09:52:07'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 06:40:54', '2020-08-15 06:40:54'),
('e25b3336-5e74-4e4a-99a1-ff11d7bf2657', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/60\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 12:29:24', '2024-10-07 12:29:24'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', NULL, '2020-08-17 21:08:16', '2020-08-17 21:08:16'),
('e36542de-61e6-4fc9-8a9a-7d0b5cf5da06', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/51\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 10:57:47', '2024-10-07 10:57:47'),
('e40d4e1f-c3c0-4a5f-80ff-50425f9eb257', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/8\",\"fas\":\"fa-file-alt\"}', NULL, '2024-09-30 14:31:13', '2024-09-30 14:31:13'),
('e7685335-1235-4dbc-8c78-12c8b3d9f810', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/17\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 14:16:16', '2024-10-01 14:16:16'),
('e855e4a7-e5cb-44ea-bfbf-4d028bd359b0', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/35\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 09:23:33', '2024-10-07 09:23:33'),
('eb2f3bc5-58c5-4a1a-a5fa-a25ee71542c4', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/65\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 13:28:34', '2024-10-07 13:28:34'),
('f8b730d0-4b35-4011-907c-e481c58dbcb3', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/onlinehardwareshopuganda.com\\/admin\\/order\\/62\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 12:35:16', '2024-10-07 12:35:16'),
('f9db0c59-7513-45e0-a742-3b5c7531a409', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/48\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-07 10:49:56', '2024-10-07 10:49:56'),
('fc6ceaea-6755-4e21-9b17-8facdb2a4859', 'App\\Notifications\\StatusNotification', 'App\\User', 30, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/11\",\"fas\":\"fa-file-alt\"}', NULL, '2024-10-01 12:35:05', '2024-10-01 12:35:05'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_method` enum('cod','pesapal') NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid','pending') DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') NOT NULL DEFAULT 'new',
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `post_code` varchar(191) DEFAULT NULL,
  `address1` text NOT NULL,
  `address2` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `sub_total`, `shipping_id`, `coupon`, `total_amount`, `quantity`, `payment_method`, `payment_status`, `status`, `first_name`, `last_name`, `email`, `phone`, `country`, `post_code`, `address1`, `address2`, `created_at`, `updated_at`) VALUES
(9, 'ORD-45I959CQBR', 30, 152700.00, NULL, NULL, 152700.00, 4, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0788200916', 'UG', NULL, 'St Andrew', NULL, '2024-10-01 12:14:33', '2024-10-01 12:14:33'),
(10, 'ORD-R0CJB2KUAW', 30, 13500.00, NULL, NULL, 13500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'tumusiimepius01@gmail.com', '0788200916', 'UG', NULL, 'St Andrew', NULL, '2024-10-01 12:20:36', '2024-10-01 12:20:36'),
(11, 'ORD-KJY43YNVUL', 30, 13500.00, NULL, NULL, 13500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'tumusiimepius01@gmail.com', '0788200916', 'UG', NULL, 'St Andrew', NULL, '2024-10-01 12:35:03', '2024-10-01 12:35:03'),
(12, 'ORD-ELMTWBHFHM', 30, 13500.00, NULL, NULL, 13500.00, 1, 'cod', 'unpaid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0788200916', 'UG', NULL, 'St Andrew', NULL, '2024-10-01 13:04:26', '2024-10-01 13:04:26'),
(13, 'ORD-YSTCIBJC4K', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Kevin', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'Luwafu', NULL, '2024-10-01 13:51:36', '2024-10-01 13:51:36'),
(14, 'ORD-DUI616L658', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'KEVIN', 'KEVIN', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'Kampala', NULL, '2024-10-01 14:05:14', '2024-10-01 14:05:14'),
(15, 'ORD-EW212CHHR3', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'KEVIN', 'KEVIN', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'Kampala', NULL, '2024-10-01 14:09:08', '2024-10-01 14:09:08'),
(16, 'ORD-YHUQLBO8LA', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'KEVIN', 'KEVIN', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'Kampala', NULL, '2024-10-01 14:12:16', '2024-10-01 14:12:16'),
(17, 'ORD-DQOVKIVOBJ', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'KEVIN', 'KEVIN', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'Kampala', NULL, '2024-10-01 14:16:15', '2024-10-01 14:16:15'),
(18, 'ORD-LVG7D5JUB7', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Kevin', 'Kevin', 'kevinmuarura051@gmail.com', '0772931647', 'UG', NULL, 'Luwafu', NULL, '2024-10-01 15:14:59', '2024-10-01 15:14:59'),
(19, 'ORD-PJF4QDEUSO', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'kevin', 'kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'Luwafu', NULL, '2024-10-01 15:16:32', '2024-10-01 15:16:32'),
(20, 'ORD-EQB9ZVKOXY', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Kevn', 'kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'luwafu', NULL, '2024-10-01 15:25:09', '2024-10-01 15:25:09'),
(21, 'ORD-C9H9AO8A8J', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Kevin', 'kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'luwafu', NULL, '2024-10-01 15:40:53', '2024-10-01 15:40:53'),
(22, 'ORD-YAD8WG7MPS', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 08:27:14', '2024-10-05 08:27:14'),
(23, 'ORD-SOGOSKUNEF', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 08:31:42', '2024-10-05 08:31:42'),
(24, 'ORD-HIDMXLNUUJ', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 08:34:37', '2024-10-05 08:34:37'),
(25, 'ORD-PCJ7BMZPMG', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 08:56:16', '2024-10-05 08:56:16'),
(26, 'ORD-1ALQ9CCVIN', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 09:10:17', '2024-10-05 09:10:17'),
(27, 'ORD-L72R83O4QM', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 09:18:44', '2024-10-05 09:18:44'),
(28, 'ORD-SFEXWBL6TP', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 09:21:22', '2024-10-05 09:21:22'),
(29, 'ORD-Z8ADUL5WKR', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'paid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0788200916', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 09:42:03', '2024-10-05 09:42:03'),
(30, 'ORD-ZRRFIW98NC', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-05 10:05:57', '2024-10-05 10:05:57'),
(31, 'ORD-2OJNW68QXR', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 08:33:57', '2024-10-07 08:33:57'),
(32, 'ORD-DERGIVMWET', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:15:14', '2024-10-07 09:15:14'),
(33, 'ORD-0DWWXGLSFX', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:18:11', '2024-10-07 09:18:11'),
(34, 'ORD-UGB3ASY0FT', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:18:38', '2024-10-07 09:18:38'),
(35, 'ORD-IDSBAIHY7T', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:23:32', '2024-10-07 09:23:32'),
(36, 'ORD-SOSG1PV8AM', 30, 4500.00, NULL, NULL, 4500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:30:20', '2024-10-07 09:30:20'),
(37, 'ORD-LSC4WLGDKF', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:39:38', '2024-10-07 09:39:38'),
(38, 'ORD-VWFZ4GG7JA', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:44:21', '2024-10-07 09:44:21'),
(39, 'ORD-E0MTX8LGPP', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'tumusiimepius01@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:45:41', '2024-10-07 09:45:41'),
(40, 'ORD-AP94QHIA2R', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'tumusiimepius01@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:48:13', '2024-10-07 09:48:13'),
(41, 'ORD-G6Y3QQK3Z7', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:52:06', '2024-10-07 09:52:06'),
(42, 'ORD-I31NOAUEYP', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'paid', 'process', 'Mugarura', 'Kevin', 'tumusiimepius01@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:52:50', '2024-10-07 09:54:09'),
(43, 'ORD-4IJPRAKVWD', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'tumusiimepius01@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 09:56:53', '2024-10-07 09:56:53'),
(44, 'ORD-EVTYMHCPLI', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 10:19:20', '2024-10-07 10:19:20'),
(45, 'ORD-RYGBHPHCSK', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 10:26:06', '2024-10-07 10:26:06'),
(46, 'ORD-GUVTGRHGOL', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 10:30:22', '2024-10-07 10:30:22'),
(47, 'ORD-ORVLKXALCE', 30, 500.00, NULL, NULL, 500.00, 1, 'cod', 'unpaid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 10:40:40', '2024-10-07 10:40:40'),
(48, 'ORD-GF84UKO1SF', 30, 13500.00, NULL, NULL, 13500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 10:49:55', '2024-10-07 10:49:55'),
(49, 'ORD-XOYFXBWF1O', 30, 13500.00, NULL, NULL, 13500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 10:53:24', '2024-10-07 10:53:24'),
(50, 'ORD-I0LNFNPFVZ', 30, 13500.00, NULL, NULL, 13500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 10:55:04', '2024-10-07 10:55:04'),
(51, 'ORD-DCFIFMDXX0', 30, 13500.00, NULL, NULL, 13500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 10:57:46', '2024-10-07 10:57:46'),
(52, 'ORD-E1F1ICRST0', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'paid', 'process', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 11:06:20', '2024-10-07 11:08:01'),
(53, 'ORD-UPADO3RFDE', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'paid', 'process', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 11:20:49', '2024-10-07 11:22:45'),
(54, 'ORD-F7BC3MS4RR', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'paid', 'process', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 11:26:07', '2024-10-07 11:28:02'),
(55, 'ORD-HGSHFCKXUD', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'paid', 'process', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 11:39:52', '2024-10-07 11:41:48'),
(56, 'ORD-GFV4DOFVYH', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 12:04:21', '2024-10-07 12:04:21'),
(57, 'ORD-UYJXCGFNDL', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 12:06:29', '2024-10-07 12:06:29'),
(58, 'ORD-FCG3PZV22O', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 12:08:38', '2024-10-07 12:08:38'),
(59, 'ORD-NEMD2LCJGS', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 12:21:29', '2024-10-07 12:21:29'),
(60, 'ORD-IBZGIW8HEI', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 12:29:24', '2024-10-07 12:29:24'),
(61, 'ORD-AHXY2CW0YL', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 12:30:49', '2024-10-07 12:30:49'),
(62, 'ORD-A5WLEYXE3I', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 12:35:16', '2024-10-07 12:35:16'),
(63, 'ORD-Z8A0KVJWVP', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 12:41:42', '2024-10-07 12:41:42'),
(64, 'ORD-XBJLF6V6AO', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 13:03:25', '2024-10-07 13:03:25'),
(65, 'ORD-QMXXDFMT5G', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'paid', 'process', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 13:28:34', '2024-10-07 13:30:12'),
(66, 'ORD-Q1CDPWWGM8', 30, 500.00, NULL, NULL, 500.00, 1, 'cod', 'unpaid', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 13:37:38', '2024-10-07 13:37:38'),
(67, 'ORD-CVA75F3BPY', 30, 300.00, NULL, NULL, 300.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 14:08:17', '2024-10-07 14:08:17'),
(68, 'ORD-KZJOJSWKJX', 30, 300.00, NULL, NULL, 300.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 14:11:50', '2024-10-07 14:11:50'),
(69, 'ORD-0QZTIUGNCH', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'paid', 'process', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '077291647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 14:17:44', '2024-10-07 14:19:45'),
(70, 'ORD-WPSSHOTVIX', 30, 500.00, NULL, NULL, 500.00, 1, 'pesapal', 'pending', 'new', 'Mugarura', 'Kevin', 'kevinmugarura051@gmail.com', '0772931647', 'UG', NULL, 'St Andrew', NULL, '2024-10-07 14:20:15', '2024-10-07 14:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesapal_ipn_urls`
--

CREATE TABLE `pesapal_ipn_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ipn_id` char(36) NOT NULL,
  `url` text NOT NULL,
  `http_method` varchar(10) NOT NULL,
  `created_date` timestamp NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesapal_ipn_urls`
--

INSERT INTO `pesapal_ipn_urls` (`id`, `ipn_id`, `url`, `http_method`, `created_date`, `created_by`, `status`, `error`, `created_at`, `updated_at`) VALUES
(1, '5cfb764f-b27b-475f-8e89-dcacfbbf0c13', 'http://localhost/pesapal/ipn', 'GET', '2024-10-05 08:56:24', 30, 200, '', NULL, NULL),
(15, '75b972ff-4287-46d6-ba32-dcaa91a0b6e2', 'http://localhost/pesapal/ipn', 'GET', '2024-10-07 10:30:28', 30, 200, '', NULL, NULL),
(28, '5184643f-5754-4013-b4bb-dcaae748773e', 'https://onlinehardwareshopuganda.com/pesapal/ipn', 'GET', '2024-10-07 12:35:19', 30, 200, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pesapal_transactions`
--

CREATE TABLE `pesapal_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `our_ref` varchar(191) NOT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_account` varchar(191) DEFAULT NULL,
  `order_tracking_id` varchar(191) DEFAULT NULL,
  `merchant_reference` varchar(191) NOT NULL,
  `redirect_url` text DEFAULT NULL,
  `errors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`errors`)),
  `status_code` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `confirmation_code` varchar(191) DEFAULT NULL,
  `payment_status_description` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `reference` varchar(191) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `status` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `narration` text NOT NULL,
  `ipn_id` varchar(191) DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesapal_transactions`
--

INSERT INTO `pesapal_transactions` (`id`, `created_date`, `our_ref`, `payment_method`, `payment_account`, `order_tracking_id`, `merchant_reference`, `redirect_url`, `errors`, `status_code`, `notes`, `confirmation_code`, `payment_status_description`, `description`, `reference`, `amount`, `currency`, `status`, `email`, `phone`, `first_name`, `last_name`, `narration`, `ipn_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ORD-66FC145BBA461', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-66FC145BBA461', '', 'NEW Transaction', 'Order #ORD-66FC145BBA461', 'ORD-66FC145BBA461', 4500.00, 'UG', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-66FC145BBA461', '', 30, NULL, NULL),
(2, NULL, 'ORD-66FC180BED2F2', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-66FC180BED2F2', '', 'NEW Transaction', 'Order #ORD-66FC180BED2F2', 'ORD-66FC180BED2F2', 4500.00, 'UG', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-66FC180BED2F2', '', 30, NULL, NULL),
(3, NULL, 'ORD-6700F8675BF82', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-6700F8675BF82', '', 'NEW Transaction', 'Order #ORD-6700F8675BF82', 'ORD-6700F8675BF82', 4500.00, 'UG', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-6700F8675BF82', '', 30, NULL, NULL),
(4, NULL, 'ORD-6700F972CC041', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-6700F972CC041', '', 'NEW Transaction', 'Order #ORD-6700F972CC041', 'ORD-6700F972CC041', 4500.00, 'UG', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-6700F972CC041', '', 30, NULL, NULL),
(5, NULL, 'ORD-6700FA22485CE', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-6700FA22485CE', '', 'NEW Transaction', 'Order #ORD-6700FA22485CE', 'ORD-6700FA22485CE', 4500.00, 'UG', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-6700FA22485CE', '', 30, NULL, NULL),
(6, NULL, 'ORD-6700FF35E97AF', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-6700FF35E97AF', '', 'NEW Transaction', 'Order #ORD-6700FF35E97AF', 'ORD-6700FF35E97AF', 4500.00, 'UG', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-6700FF35E97AF', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(7, NULL, 'ORD-6701027D8DA73', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-6701027D8DA73', '', 'NEW Transaction', 'Order #ORD-6701027D8DA73', 'ORD-6701027D8DA73', 4500.00, 'UG', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-6701027D8DA73', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(8, NULL, 'ORD-67010478B6E96', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-67010478B6E96', '', 'NEW Transaction', 'Order #ORD-67010478B6E96', 'ORD-67010478B6E96', 4500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-67010478B6E96', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(9, NULL, 'ORD-67010516F1EAE', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-67010516F1EAE', '', 'NEW Transaction', 'Order #ORD-67010516F1EAE', 'ORD-67010516F1EAE', 4500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-67010516F1EAE', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(10, NULL, 'ORD-670109F0B6E7F', '', NULL, 'ef10c4e8-f931-4de7-b75d-dcac2dd34e3d', 'ORD-670109F0B6E7F', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=ef10c4e8-f931-4de7-b75d-dcac2dd34e3d', 'null', 200, 'Order #ORD-670109F0B6E7F', '', 'NEW Transaction', 'Order #ORD-670109F0B6E7F', 'ORD-670109F0B6E7F', 4500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '', 'Kevin Mugarura', '', 'Order #ORD-670109F0B6E7F', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(11, NULL, 'ORD-DERGIVMWET', '', NULL, 'e194a0d1-b430-457a-85a6-dcaa8abcab28', 'ORD-DERGIVMWET', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=e194a0d1-b430-457a-85a6-dcaa8abcab28', 'null', 200, 'Order #ORD-DERGIVMWET', '', 'NEW Transaction', 'Order #ORD-DERGIVMWET', 'ORD-DERGIVMWET', 4500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-DERGIVMWET', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(12, NULL, 'ORD-UGB3ASY0FT', '', NULL, 'd0b4dfc6-c7fb-466b-b5f2-dcaab7ed42ec', 'ORD-UGB3ASY0FT', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=d0b4dfc6-c7fb-466b-b5f2-dcaab7ed42ec', 'null', 200, 'Order #ORD-UGB3ASY0FT', '', 'NEW Transaction', 'Order #ORD-UGB3ASY0FT', 'ORD-UGB3ASY0FT', 4500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-UGB3ASY0FT', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(13, NULL, 'ORD-IDSBAIHY7T', '', NULL, '39848815-c140-462e-8f7d-dcaa2bb0c64f', 'ORD-IDSBAIHY7T', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=39848815-c140-462e-8f7d-dcaa2bb0c64f', 'null', 200, 'Order #ORD-IDSBAIHY7T', '', 'NEW Transaction', 'Order #ORD-IDSBAIHY7T', 'ORD-IDSBAIHY7T', 4500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-IDSBAIHY7T', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(14, NULL, 'ORD-SOSG1PV8AM', '', NULL, '354c230b-df22-4cf1-bd98-dcaa0c7949ad', 'ORD-SOSG1PV8AM', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=354c230b-df22-4cf1-bd98-dcaa0c7949ad', 'null', 200, 'Order #ORD-SOSG1PV8AM', '', 'NEW Transaction', 'Order #ORD-SOSG1PV8AM', 'ORD-SOSG1PV8AM', 4500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-SOSG1PV8AM', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(15, NULL, 'ORD-VWFZ4GG7JA', '', NULL, 'bd107c64-9478-4007-9807-dcaa7ae66a24', 'ORD-VWFZ4GG7JA', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=bd107c64-9478-4007-9807-dcaa7ae66a24', 'null', 200, 'Order #ORD-VWFZ4GG7JA', '', 'NEW Transaction', 'Order #ORD-VWFZ4GG7JA', 'ORD-VWFZ4GG7JA', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-VWFZ4GG7JA', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(16, NULL, 'ORD-E0MTX8LGPP', '', NULL, '750cd244-2b3b-4289-9913-dcaabb0d88e2', 'ORD-E0MTX8LGPP', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=750cd244-2b3b-4289-9913-dcaabb0d88e2', 'null', 200, 'Order #ORD-E0MTX8LGPP', '', 'NEW Transaction', 'Order #ORD-E0MTX8LGPP', 'ORD-E0MTX8LGPP', 500.00, 'UGX', 'PROCESSING', 'tumusiimepius01@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-E0MTX8LGPP', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(17, NULL, 'ORD-AP94QHIA2R', '', NULL, 'b38162de-e943-4ad5-bc9b-dcaa6e8b6c93', 'ORD-AP94QHIA2R', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=b38162de-e943-4ad5-bc9b-dcaa6e8b6c93', 'null', 200, 'Order #ORD-AP94QHIA2R', '', 'NEW Transaction', 'Order #ORD-AP94QHIA2R', 'ORD-AP94QHIA2R', 500.00, 'UGX', 'PROCESSING', 'tumusiimepius01@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-AP94QHIA2R', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(18, NULL, 'ORD-G6Y3QQK3Z7', '', NULL, '246d7784-4f2e-4737-ab91-dcaa3566501a', 'ORD-G6Y3QQK3Z7', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=246d7784-4f2e-4737-ab91-dcaa3566501a', 'null', 200, 'Order #ORD-G6Y3QQK3Z7', '', 'NEW Transaction', 'Order #ORD-G6Y3QQK3Z7', 'ORD-G6Y3QQK3Z7', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-G6Y3QQK3Z7', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(19, NULL, 'ORD-I31NOAUEYP', '', NULL, 'b235273b-1296-4342-9ce7-dcaa8f13f9cb', 'ORD-I31NOAUEYP', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=b235273b-1296-4342-9ce7-dcaa8f13f9cb', 'null', 200, 'Order #ORD-I31NOAUEYP', '', 'NEW Transaction', 'Order #ORD-I31NOAUEYP', 'ORD-I31NOAUEYP', 500.00, 'UGX', 'PROCESSING', 'tumusiimepius01@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-I31NOAUEYP', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(20, NULL, 'ORD-4IJPRAKVWD', '', NULL, '6eeab871-c39a-47b0-993e-dcaa09222e37', 'ORD-4IJPRAKVWD', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=6eeab871-c39a-47b0-993e-dcaa09222e37', 'null', 200, 'Order #ORD-4IJPRAKVWD', '', 'NEW Transaction', 'Order #ORD-4IJPRAKVWD', 'ORD-4IJPRAKVWD', 500.00, 'UGX', 'PROCESSING', 'tumusiimepius01@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-4IJPRAKVWD', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(21, NULL, 'ORD-EVTYMHCPLI', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-EVTYMHCPLI', '', 'NEW Transaction', 'Order #ORD-EVTYMHCPLI', 'ORD-EVTYMHCPLI', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-EVTYMHCPLI', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(22, NULL, 'ORD-RYGBHPHCSK', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-RYGBHPHCSK', '', 'NEW Transaction', 'Order #ORD-RYGBHPHCSK', 'ORD-RYGBHPHCSK', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-RYGBHPHCSK', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(23, NULL, 'ORD-GUVTGRHGOL', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-GUVTGRHGOL', '', 'NEW Transaction', 'Order #ORD-GUVTGRHGOL', 'ORD-GUVTGRHGOL', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-GUVTGRHGOL', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(24, NULL, 'ORD-GF84UKO1SF', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-GF84UKO1SF', '', 'NEW Transaction', 'Order #ORD-GF84UKO1SF', 'ORD-GF84UKO1SF', 13500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-GF84UKO1SF', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(25, NULL, 'ORD-XOYFXBWF1O', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-XOYFXBWF1O', '', 'NEW Transaction', 'Order #ORD-XOYFXBWF1O', 'ORD-XOYFXBWF1O', 13500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-XOYFXBWF1O', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(26, NULL, 'ORD-I0LNFNPFVZ', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-I0LNFNPFVZ', '', 'NEW Transaction', 'Order #ORD-I0LNFNPFVZ', 'ORD-I0LNFNPFVZ', 13500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-I0LNFNPFVZ', 'c736f67c-7d0c-4956-b95e-dcacdba1cdde', 30, NULL, NULL),
(27, NULL, 'ORD-DCFIFMDXX0', '', NULL, '901c5d06-2d43-4699-84cf-dcaa599b60d9', 'ORD-DCFIFMDXX0', 'https://cybqa.pesapal.com/pesapaliframe/PesapalIframe3/Index?OrderTrackingId=901c5d06-2d43-4699-84cf-dcaa599b60d9', 'null', 200, 'Order #ORD-DCFIFMDXX0', '', 'NEW Transaction', 'Order #ORD-DCFIFMDXX0', 'ORD-DCFIFMDXX0', 13500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-DCFIFMDXX0', '75b972ff-4287-46d6-ba32-dcaa91a0b6e2', 30, NULL, NULL),
(28, NULL, 'ORD-E1F1ICRST0', '', NULL, 'b9529317-3b6d-4181-ad10-dcaae3b2f98d', 'ORD-E1F1ICRST0', 'https://cybqa.pesapal.com/pesapaliframe/PesapalIframe3/Index?OrderTrackingId=b9529317-3b6d-4181-ad10-dcaae3b2f98d', 'null', 200, 'Order #ORD-E1F1ICRST0', '', 'NEW Transaction', 'Order #ORD-E1F1ICRST0', 'ORD-E1F1ICRST0', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-E1F1ICRST0', '75b972ff-4287-46d6-ba32-dcaa91a0b6e2', 30, NULL, NULL),
(29, NULL, 'ORD-UPADO3RFDE', '', NULL, '8a910c96-8218-4a05-a8a3-dcaa81559dc3', 'ORD-UPADO3RFDE', 'https://cybqa.pesapal.com/pesapaliframe/PesapalIframe3/Index?OrderTrackingId=8a910c96-8218-4a05-a8a3-dcaa81559dc3', 'null', 200, 'Order #ORD-UPADO3RFDE', '', 'NEW Transaction', 'Order #ORD-UPADO3RFDE', 'ORD-UPADO3RFDE', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-UPADO3RFDE', '75b972ff-4287-46d6-ba32-dcaa91a0b6e2', 30, NULL, NULL),
(30, NULL, 'ORD-F7BC3MS4RR', '', NULL, 'a3b32440-10fe-4537-ad96-dcaa31a3b34b', 'ORD-F7BC3MS4RR', 'https://cybqa.pesapal.com/pesapaliframe/PesapalIframe3/Index?OrderTrackingId=a3b32440-10fe-4537-ad96-dcaa31a3b34b', 'null', 200, 'Order #ORD-F7BC3MS4RR', '', 'NEW Transaction', 'Order #ORD-F7BC3MS4RR', 'ORD-F7BC3MS4RR', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-F7BC3MS4RR', '75b972ff-4287-46d6-ba32-dcaa91a0b6e2', 30, NULL, NULL),
(31, NULL, 'ORD-HGSHFCKXUD', '', NULL, 'fe153036-e3f8-44d6-b81b-dcaaa26e989e', 'ORD-HGSHFCKXUD', 'https://cybqa.pesapal.com/pesapaliframe/PesapalIframe3/Index?OrderTrackingId=fe153036-e3f8-44d6-b81b-dcaaa26e989e', 'null', 200, 'Order #ORD-HGSHFCKXUD', '', 'NEW Transaction', 'Order #ORD-HGSHFCKXUD', 'ORD-HGSHFCKXUD', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-HGSHFCKXUD', '75b972ff-4287-46d6-ba32-dcaa91a0b6e2', 30, NULL, NULL),
(32, NULL, 'ORD-GFV4DOFVYH', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-GFV4DOFVYH', '', 'NEW Transaction', 'Order #ORD-GFV4DOFVYH', 'ORD-GFV4DOFVYH', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-GFV4DOFVYH', '1d194eb1-3b32-4940-ade0-dcaa959ed714', 30, NULL, NULL),
(33, NULL, 'ORD-UYJXCGFNDL', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-UYJXCGFNDL', '', 'NEW Transaction', 'Order #ORD-UYJXCGFNDL', 'ORD-UYJXCGFNDL', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-UYJXCGFNDL', '1d194eb1-3b32-4940-ade0-dcaa959ed714', 30, NULL, NULL),
(34, NULL, 'ORD-NEMD2LCJGS', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-NEMD2LCJGS', '', 'NEW Transaction', 'Order #ORD-NEMD2LCJGS', 'ORD-NEMD2LCJGS', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-NEMD2LCJGS', '1d194eb1-3b32-4940-ade0-dcaa959ed714', 30, NULL, NULL),
(35, NULL, 'ORD-IBZGIW8HEI', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-IBZGIW8HEI', '', 'NEW Transaction', 'Order #ORD-IBZGIW8HEI', 'ORD-IBZGIW8HEI', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-IBZGIW8HEI', '1d194eb1-3b32-4940-ade0-dcaa959ed714', 30, NULL, NULL),
(36, NULL, 'ORD-AHXY2CW0YL', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-AHXY2CW0YL', '', 'NEW Transaction', 'Order #ORD-AHXY2CW0YL', 'ORD-AHXY2CW0YL', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-AHXY2CW0YL', '1d194eb1-3b32-4940-ade0-dcaa959ed714', 30, NULL, NULL),
(37, NULL, 'ORD-A5WLEYXE3I', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-A5WLEYXE3I', '', 'NEW Transaction', 'Order #ORD-A5WLEYXE3I', 'ORD-A5WLEYXE3I', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-A5WLEYXE3I', '1d194eb1-3b32-4940-ade0-dcaa959ed714', 30, NULL, NULL),
(38, NULL, 'ORD-Z8A0KVJWVP', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-Z8A0KVJWVP', '', 'NEW Transaction', 'Order #ORD-Z8A0KVJWVP', 'ORD-Z8A0KVJWVP', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-Z8A0KVJWVP', '3c79af80-d72e-40a9-bdfd-dcaae7687e45', 30, NULL, NULL),
(39, NULL, 'ORD-XBJLF6V6AO', '', NULL, '4349e677-5f97-47e3-b88d-dcaa5f4fa01a', 'ORD-XBJLF6V6AO', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=4349e677-5f97-47e3-b88d-dcaa5f4fa01a', 'null', 200, 'Order #ORD-XBJLF6V6AO', '', 'NEW Transaction', 'Order #ORD-XBJLF6V6AO', 'ORD-XBJLF6V6AO', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-XBJLF6V6AO', '5cfb764f-b27b-475f-8e89-dcacfbbf0c13', 30, NULL, NULL),
(40, NULL, 'ORD-QMXXDFMT5G', '', NULL, '1ede4a82-c713-484f-b2eb-dcaa2d8d96a2', 'ORD-QMXXDFMT5G', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=1ede4a82-c713-484f-b2eb-dcaa2d8d96a2', 'null', 200, 'Order #ORD-QMXXDFMT5G', '', 'NEW Transaction', 'Order #ORD-QMXXDFMT5G', 'ORD-QMXXDFMT5G', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-QMXXDFMT5G', '5184643f-5754-4013-b4bb-dcaae748773e', 30, NULL, NULL),
(41, NULL, 'ORD-KZJOJSWKJX', '', NULL, 'e47dde6b-14dc-4f33-b8fd-dcaa7672168e', 'ORD-KZJOJSWKJX', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=e47dde6b-14dc-4f33-b8fd-dcaa7672168e', 'null', 200, 'Order #ORD-KZJOJSWKJX', '', 'NEW Transaction', 'Order #ORD-KZJOJSWKJX', 'ORD-KZJOJSWKJX', 300.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-KZJOJSWKJX', '5184643f-5754-4013-b4bb-dcaae748773e', 30, NULL, NULL),
(42, NULL, 'ORD-0QZTIUGNCH', '', NULL, '780163a3-765c-4668-9a7e-dcaac395de94', 'ORD-0QZTIUGNCH', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=780163a3-765c-4668-9a7e-dcaac395de94', 'null', 200, 'Order #ORD-0QZTIUGNCH', '', 'NEW Transaction', 'Order #ORD-0QZTIUGNCH', 'ORD-0QZTIUGNCH', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '077291647', 'Mugarura', 'Kevin', 'Order #ORD-0QZTIUGNCH', '5184643f-5754-4013-b4bb-dcaae748773e', 30, NULL, NULL),
(43, NULL, 'ORD-WPSSHOTVIX', '', NULL, '9fad7bc3-5ae8-45c7-adcb-dcaafa212ff1', 'ORD-WPSSHOTVIX', 'https://pay.pesapal.com/iframe/PesapalIframe3/Index?OrderTrackingId=9fad7bc3-5ae8-45c7-adcb-dcaafa212ff1', 'null', 200, 'Order #ORD-WPSSHOTVIX', '', 'NEW Transaction', 'Order #ORD-WPSSHOTVIX', 'ORD-WPSSHOTVIX', 500.00, 'UGX', 'PROCESSING', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-WPSSHOTVIX', '5184643f-5754-4013-b4bb-dcaae748773e', 30, NULL, NULL),
(44, NULL, 'ORD-FCG3PZV22O', '', NULL, '', '', '', NULL, NULL, 'Order #ORD-FCG3PZV22O', '', 'NEW Transaction', 'Order #ORD-FCG3PZV22O', 'ORD-FCG3PZV22O', 500.00, 'UGX', 'NEW', 'kevinmugarura051@gmail.com', '0772931647', 'Mugarura', 'Kevin', 'Order #ORD-FCG3PZV22O', '1d194eb1-3b32-4940-ade0-dcaa959ed714', 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `summary` text NOT NULL,
  `description` longtext DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `tags` varchar(191) DEFAULT NULL,
  `post_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is trending ?', 'what -is-trending?', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text.&nbsp;</span><br></p>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</span><br></p>', '/storage/photos/1/Blog/blog1.webp', '2024,Trending,Hot', 1, NULL, NULL, 'active', '2020-08-14 01:55:55', '2020-08-14 04:29:56'),
(2, 'How to Build cheaply in Kampala', 'how-to-build-cheaply', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader</span><br></h2>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, '/storage/photos/1/Blog/blog2.jpg', 'Affordable,Trending', 2, NULL, NULL, 'active', '2020-08-14 01:58:52', '2020-08-14 07:08:14'),
(3, 'How to detect fake products?', 'how-to-detect-fake', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', NULL, '/storage/photos/1/Blog/blog3.jpeg', '2024,Duplicate', 3, NULL, NULL, 'active', '2020-08-14 02:59:33', '2020-08-14 04:29:44'),
(5, 'How to upgrade you house with less that 2 million?', 'how-to-upgrade', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><br></p>', '/storage/photos/1/Blog/blog4.jpeg', 'Renovate,Grow,2024', 1, NULL, NULL, 'active', '2020-08-15 06:58:45', '2020-08-15 06:58:45'),
(6, 'Is cheap, cheap?', 'cheap-cheap', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry.</span><br></p>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><hr><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p>', NULL, '/storage/photos/1/Blog/blog4.jpg', 'Affordable,Sustainable,2024', 2, NULL, NULL, 'active', '2020-08-17 20:54:19', '2020-08-17 20:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Travel', 'contrary', 'active', '2020-08-14 01:51:03', '2020-08-14 01:51:39'),
(2, 'Electronics', 'richard', 'active', '2020-08-14 01:51:22', '2020-08-14 01:52:00'),
(3, 'Cloths', 'cloths', 'active', '2020-08-14 01:52:22', '2020-08-14 01:52:22'),
(4, 'enjoy', 'enjoy', 'active', '2020-08-14 03:16:10', '2020-08-14 03:16:10'),
(5, 'Post Category', 'post-category', 'active', '2020-08-15 06:59:04', '2020-08-15 06:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `replied_comment` text DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `status`, `replied_comment`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Testing comment edited', 'active', NULL, NULL, '2020-08-14 07:08:42', '2020-08-15 06:59:58'),
(2, NULL, 2, 'testing 2', 'active', NULL, 1, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
(3, NULL, 2, 'That\'s cool', 'active', NULL, 2, '2020-08-14 07:12:27', '2020-08-14 07:12:27'),
(4, NULL, 2, 'nice', 'active', NULL, NULL, '2020-08-15 07:31:19', '2020-08-15 07:31:19'),
(5, NULL, 5, 'nice blog', 'active', NULL, NULL, '2020-08-15 07:51:01', '2020-08-15 07:51:01'),
(6, NULL, 3, 'nice', 'active', NULL, NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29'),
(7, NULL, 3, 'really', 'active', NULL, 6, '2020-08-17 21:13:51', '2020-08-17 21:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Enjoy', 'enjoy', 'active', '2020-08-14 01:53:52', '2020-08-14 01:53:52'),
(2, '2020', '2020', 'active', '2020-08-14 01:54:09', '2020-08-14 01:54:09'),
(3, 'Visit nepal 2020', 'visit-nepal-2020', 'active', '2020-08-14 01:54:33', '2020-08-14 01:54:33'),
(4, 'Tag', 'tag', 'active', '2020-08-15 06:59:31', '2020-08-15 06:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `summary` text NOT NULL,
  `description` longtext DEFAULT NULL,
  `photo` text NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `size` varchar(191) DEFAULT 'M',
  `condition` enum('default','new','hot') NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Electric Lamp Holder', 'electric-lamp-holder', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Fixable Lamp Holder.</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', '/storage/photos/2/electric_lampholder_straight.jpeg', 5, 'Standard', 'new', 'active', 500.00, 0.00, 1, 1, 4, 4, '2020-08-14 04:38:26', '2020-08-14 04:42:46'),
(2, 'Digital Multimeter', 'digital-mutlimeter-g', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', '/storage/photos/2/digital-multimeter_70k.jpeg', 3, 'XL', 'hot', 'active', 70000.00, 4.00, 1, 1, 4, 2, '2020-08-14 04:40:21', '2020-08-14 06:26:01'),
(3, 'DoorHandles', 'door-handles', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3>', '/storage/photos/2/door_handles.jpeg', 6, 'S,M', 'hot', 'active', 85000.00, 5.00, 1, 2, NULL, 2, '2020-08-14 05:57:48', '2020-08-14 05:57:48'),
(4, 'Mastic Tape', 'mastic-tape', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3>', '/storage/photos/2/short_hammer.jpeg', 5, 'XL', 'default', 'active', 25000.00, 10.00, 0, 2, NULL, 1, '2020-08-14 06:04:13', '2020-08-14 06:04:13'),
(5, 'Short Hammer', 'short-hammer', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', '/storage/photos/2/short_hammer.jpeg', 0, 'M,XL', 'new', 'active', 15000.00, 10.00, 0, 3, NULL, 3, '2020-08-14 06:10:52', '2020-08-14 09:37:36'),
(6, 'Drill Chalks', 'drill-chalks', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', '/storage/photos/2/drill_chalks.jpeg', 6, 'M,L', 'hot', 'active', 50000.00, 3.00, 1, 3, NULL, 4, '2020-08-14 06:13:20', '2020-08-14 06:31:42'),
(7, 'Paper Cutter', 'papers-cutter', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their du</p>', '/storage/photos/2/paper_cutters.jpeg', 0, 'L', 'hot', 'active', 10000.00, 3.00, 0, 3, NULL, 1, '2020-08-14 06:23:33', '2020-08-14 22:15:19'),
(8, 'Hand Pliers', 'hand-pliers', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their du</p>', '/storage/photos/2/hand_pliers.jpeg', 1, 'S', 'new', 'active', 30000.00, 0.00, 0, 3, NULL, 2, '2020-08-14 06:25:42', '2020-08-14 09:37:36'),
(9, 'Mosquito Killer', 'mosquito-killer', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">orem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">orem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">orem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '/storage/photos/2/mosquito_killer.jpeg', 4, 'S,M,XL', 'new', 'active', 80000.00, 5.00, 0, 2, NULL, 3, '2020-08-15 06:52:44', '2020-08-15 06:53:14'),
(10, 'PVC Glue', 'pvc-glue', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '/storage/photos/2/pvc_glue.jpeg', 3, 'L,XL', 'hot', 'active', 15000.00, 10.00, 0, 1, 4, 3, '2020-08-17 20:50:07', '2020-08-17 20:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT 0,
  `review` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 5, 'nice product', 'active', '2020-08-15 07:44:05', '2020-08-15 07:44:05'),
(2, NULL, 9, 5, 'nice', 'active', '2020-08-17 21:08:14', '2020-08-17 21:18:31');

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
('06OVLZQjZ5TmjxTqI0RvTLCgQW90278MhWZYJHpS', NULL, '66.249.72.128', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnRXZ3dBb2NvUTFNMlh1RlM0YnI3bU0wRUR5eEk5RVFRWW9kYmhuaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738427405),
('0i91MinkUq1j6ebGCsvvnoyNjcvIHFgHgTINSwDV', NULL, '40.77.167.77', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHBvcTF0Qm93MDFnUW5pSnczR0kyaGNGTjM2RmhnSTZ0WXppeW0xSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20vcHJvZHVjdC1kZXRhaWxzLzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738528136),
('18UyVVSgcyHDNefjhfqKaPts6mBcvBvmwGwovIfj', NULL, '157.15.134.130', 'python-requests/2.32.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlpUcFVvSWw4Q1lIbG02TFcwSEJZTzJBMWxsTThwRFJ4MGNudGVEdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738538841),
('1KlP1OXOo5GiDN432aIMnnPRUhcOqaQl9Pjcbwzr', NULL, '36.41.75.167', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjFVem1IZHlxY1hXcjh0aENzNmJZMU80TVEzQ0JBWmFUUVEzVHN3OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738465794),
('5VRsRvnX7hLikiLT9QfZyKtanr12X1Jmpjqmakob', NULL, '66.249.72.141', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXhncGhXREc1OXRHYXFIbXJCWWxISVlBZllMbVJGMDlIZEJraHVFeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738436606),
('7myrbuwjPThidLZvH0v5WbGc1NPhkfozCllzErIM', NULL, '114.96.103.33', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWQzRjJwRnd0U0ZEb2IzV1FhOTUwMFp0MnJoNnVQUDVtSk9lc25STCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738429928),
('99rJ5aledYxnYapIfy5VaV0vR3qirHXWZrgI1HsI', NULL, '161.0.28.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmJsTHBRNmM4UVVkNXg0MVFPOXNOcDgwRVFxYWx0bnlEMUtPS3RpRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738371280),
('9edcCipNsI7IAOBSZkHOts96ALqlZLPt6VPBeIOa', NULL, '2001:bc8:1201:61f:569f:35ff:fe15:bc90', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXlXMHdzeUZ3UlBzQjBsVk95ejlnc0lac0czbnlSVU1sY29YYklqdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738548591),
('9yj4RIEbzVJ0cP719lDG2HDhj1ztjR8JBpU6QQOa', NULL, '74.125.216.131', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVJndFhvQTJUaFZNUlZmRmpUYnV3MHJrNUcwWHFyckQ0eDRJNDFKUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738420040),
('Ah6qf5D1HF9KNfJheITbIVIipIOIzb4QfservvMX', NULL, '42.236.17.81', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 6P Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUFWQmZDVjJBTmpVMmpWaUFuWURNWllmNG8yU05DTnJLOEdobkNtWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738509178),
('AVrZgO2CDFJYJaG1Zy5YXX1Hvt2bkCaX8luFUxSV', NULL, '124.70.203.191', 'Mozilla/5.0 (Windows NT 6.4; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3654.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3BuM3I5bmZvSVVabU05ZDJxTENnb2IycVhkbmFkRTRSSGVFZ0F5MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738414446),
('bjjZLfNYtgW2ObJEBtqXj49CkGqPoKoym4WcBjQR', NULL, '66.249.66.167', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXBFUThsVVBQbFB5VG5NRE95MW5aVFE0U0ZiUFpHazh0WUhHRmkxaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738499738),
('bVYZ6kwmtPWKD4bXA93IDH6ODNE8OVfaPz40sItj', NULL, '41.210.154.230', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkt1cTdPbTdIaWFGRXduYWZubXhaM3c0djlPcFhKTFdSOHplZE1QZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738563344),
('CueSnbC9zNBc0ERqet70FV2fo3vTI59e7MS3pyhv', NULL, '135.148.195.11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWRjY1dvaGtITFZWdWhBNDEwWThDR0Ztd25DanE2UG9EVmplVEwyQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738363752),
('DQbkz6KeUtMAW3ddVsTtlspqBKsrs871lY3liloC', NULL, '102.134.149.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUhoanhReWx6MVdrc3dndWNjbTB0TFBtNEtPeEZ6NUllZzVFY3JRcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738550675),
('emtBBgZkSNJ4J5MT0smLMCHjDwNQiItoiwEHuuyY', NULL, '2a02:4780:2d:a621::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTdTaThkajBKbllqUTBZbHZLOXdBd253Z2prME5KcWFla054WnRjcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20vP3Bvc3RfdHlwZT1wcm9kdWN0JnM9Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738355624),
('fjjxGM0X7rEcOXxROg4XP1CeQH12KyBDrg9qhFEb', NULL, '54.36.148.228', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2RDU3FIZ0IyQkg1bHhpTkdNWkhHSU1HVHdsRUJhSUd0TmJIYXozQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbS9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738509715),
('gIROiW4QhgLVoTLoxoCNIPPtk3Y81anUa03UmuxT', NULL, '5.133.192.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmxQZVhQdklrUlc4YzhaTm81UVBYOTN1UWxjaHh6MWJOV3J3TTZncyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738384551),
('hTUf3mZvqHz11B8GnyBhUeVrWzNJNdeFyTr8KJBS', NULL, '186.179.47.214', 'Apache-HttpClient/5.1.4 (Java/11.0.18)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGxFZDNuMEVuSnIzMkQ3SmQwdXF4dkkxcjRlZElpY3R2RnMxRXZzdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738489830),
('KRN1auPK3BWtrN3q3McnMXxbOh9jDJl4e3kbpu2c', NULL, '170.246.54.8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjEzbWZWQlVIcHlYTkVEdU5nc1g4cWM3VDYxWjk1YXp4VWVnRkVrbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738489840),
('KSZBRjCy4OSRabKmsJubRtjpsWXHgiIfNkP28K71', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFFTcm9nYzMwbVZPT2IwMElqZTNUS3IwcEFtZmhpakswNmhrNGYzTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738546027),
('L76luoTnVR0zFvfDOavPjnKrTrDreDMks0WdMU8M', NULL, '41.210.154.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk9XUHdmMlFvazBmWWU0R25qVmQ0U0RCV1NnWVFaWWZpUmtWZ2xrMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbS9wcm9kdWN0cyI7fX0=', 1738563349),
('LIkMTiM3KDUiZXxVwTnWg9prsZVsdRJrh7hCXtMu', NULL, '54.36.148.235', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY016MEdzbEdhMmZFakVTNjlYaXRBM1F1UGZqZWl1V2IwR3RtTVBYbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbS9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738472372),
('M7TuFXl4XXlDSdOrLGHtd5ZqMhUNpeo4zEOedpCu', NULL, '42.236.101.252', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMklDZDRWdmc2eU51ZzFrR1VQOVZmekhqSDBaSG9uZ2VteGZKdlY5RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738352263),
('N7yTlfflvhqupFmHCgKYhtZMjuvcB1W39Qjq2gPN', NULL, '40.77.167.159', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmJqRmg2VmFBU3JXRzYzQUdjRlV4ZFBkSzNpdEFZY3N4WXdRbDcwNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738481424),
('n8AptvAXCiwnY7hEhSW1UdecZaCUGM3K7J7dB44Y', NULL, '66.249.66.162', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHFBYk9Ic1o1Wm9qdXVZUU1LUVNwSGFzM1UzUjJOQW1ZUzdsbnlvNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738403649),
('nApgsqJ8C35A8qMYE2jczf2KUvV1Wzz1yRjDddhD', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVhrSGtueXdJR25ldUtVcWNXaFV2Q01XMUFtcVpETU5YRWk4MXAzeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738389442),
('Njv7cEO24RBx9vPDrfEgXaOcIunBwVsJuWkoa6Ni', NULL, '42.236.17.70', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXpPcWdsMDhjYjZBR3ByU09Na2dBZVJFSHdHQ01JTDRaeEs4Wnd0TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738517838),
('NnMEmSKk2GnVVlN5Gdm9fI9NJmWE0KyamJ2Leesx', NULL, '2a01:4ff:1f0:81ab::1', 'Mozilla/5.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUdYWkRjNE1HR0RtTnVBVFhTV2J3aVhFWmhEY1p1SkpCa21QRXBFcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738552850),
('NQz2AnyaVlR7aMTKjWDgLorHyAAeX9ohpC5KLwzk', NULL, '41.210.154.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2UwMURSeGlZd3N5WDN3Q0dqckZYRDF4aDBLTGxUdTh1T2Zsb21ETyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbS9wcm9kdWN0cyI7fX0=', 1738388470),
('o62XUWXww9GSN9SiACYDhIx9semrQgANZ6vBql3E', NULL, '54.36.149.70', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmRLZU13NjNYWnkyckU2OFpkRjBxcGc0RDEyWVZBSE9OaGpicllkdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738454886),
('Ptqu8cK3PwOUZ1UA6c9r5zBhspIUp49PGgWp5y9T', NULL, '104.152.52.57', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFBRZG5BVGF1WnRxSmloM1pvSkxFNE4wOWo1dG9xSWxBMDAwNDBrUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm9ubGluZWhhcmR3YXJlc2hvcHVnYW5kYS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738522510),
('QpnQyQEWPEXBT1T2Cdf0xmXSCe1zIJeIVKg88LHL', NULL, '170.254.179.232', 'Apache-HttpClient/5.1.4 (Java/11.0.18)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1Y3Mkl5NEZpWk9LR1ZQOEo2RGFYODdDNzJBaDVYTzQ5REtYWDJubiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738368855),
('S5AqjZ5uLZTF0X01779sQe37VH8RUGfoIJTX5cVn', NULL, '42.236.17.25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDBDNFZ4dUx6Vnd0MnR1RzNOVzduSzc3TVFtUFZ1bmJBZUZBYmp0byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738500630),
('sDXe5nOhQbxIQEG5fEOd6wecY4LnuOgsctHLA504', NULL, '66.249.72.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYldiTFFmVUFpUGNYMnl6SHNQRnVqbWxzekhaMFFpTE8xVVB0UUN6UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738436605),
('T4YRRpYntLJAtjsSRpKudd2Mw2bxrPD0oPwpHuKe', NULL, '2a02:4780:2d:a621::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkhzZ25MekJHVmYyMjRyeGRQbWY1d25YVEpGVEVLODhhcUJRU1R1TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbS8/cG9zdF90eXBlPXByb2R1Y3Qmcz0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738355620),
('tJM9xxt7EQ2MPgomdchY0Qfn5N2Gmxx7WO5G1TOU', NULL, '209.127.107.231', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0J3Vm0zcUladU1JQjhVWVY1dWdTb25BREVGM3pBeHR6c2lPZUNKVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738368859),
('tU1QaUcyGyYhsmNYqkKmbRFR7CBmI4Z9WWu13Vrh', NULL, '167.99.61.156', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnV3QUlXQzVkelBSb281QW05ZVV0Q1BrS0E0cnpiQmdjUDE4RWlYYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738412269),
('V1TSsfYADivNIPDMSmimNHegS2xFTXeRmOjVtMVY', NULL, '104.236.44.95', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:66.0) WhatCMS/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVAxOG9XU1dJZWpyUHczbVFVVUcwbWpvcFNXS1FpM0RUdEE3Y0k2MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738561171),
('vAGrA6adYSF1LE3R6ol5PYJuyddkEneNpUkhAlNb', NULL, '42.236.12.200', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkQ0ajFzQnE3dm5DdXUyQnRVMUJmQk81SVp4UmQwYVd5UHdvTThydyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738352255),
('Wsimw97gkEzoFpR15k2K57HOWC3QKm3ve01hi6C1', NULL, '15.206.235.52', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVdCYVFhZ0VmbGhKRlhZVEZ3emE4TVRYSTF6Rmp3V3hxTnRpb3N1ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738437561),
('X42vz9rCiSa2zSH1XS5ylE22qD1jVdFtwvHb0Wmc', NULL, '66.249.72.139', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.6834.159 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1lUU3BjdnRwV3NkSGs0ZFg5b0tCQUZrRDFYUmpHczlRVTFJYXpYOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738395992),
('xwYTn058GAyWt8ZFT3c1odhAaEZE7O0hbVAbJfxM', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQThNOGVqc0k5RDdrbE5meTYxMFRWMmptSmptMEE2dXJqUHVGQmY3TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738463522),
('xZ5F5bJVSpxXVmRe5aumXywN0kHFNLfgKY6sytlk', NULL, '74.125.216.130', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib05Ka2RIZjNUWENRNXI3T0dYN2hFNHlkMnVmQmhWVWZWU1BXTzhDcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738420009),
('Y4TyylMyt9TFEjcDbXjXk4G8NHUGshgBNIndZCQD', NULL, '42.236.12.223', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1dhWW5acndwYUtTM3B4S1NxMkFxY3kzR3lXeExNS01vZ2ZuM3BCSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738544042),
('yLzz4pHt8r9VhDAY9SuR6Qz2KgsyUyuLINlSiy49', NULL, '51.38.103.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2NPVEhZS1RBa3psVHVETWRFeHRwaFBFcWZ6M2hGZXRpVWNtZnVIbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738519597),
('z985e8518B8giAMKzh2UyL2Nt8ZEsjPTJYH1KFEV', NULL, '37.19.223.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1NsMHJRSTFPdWtKZThRSDhzWmZsSEJKQ0QwN2J0NTVZS2FVR0ltViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbS9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738394608),
('ZDa4OE6CJ1N65i0T7a0lg3xUn4S7PvczG4eWsKN2', NULL, '42.236.17.125', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejN0ZVdydHM2QzFWUkx5cmFxTk1SMWM5MTFYM2psNkJIVjZzYlI0byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vb25saW5laGFyZHdhcmVzaG9wdWdhbmRhLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738517883);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `short_des` text NOT NULL,
  `logo` varchar(191) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Online hardware shop, your trusted destination for quality hardware and tools. Whether you\'re a professional contractor or a DIY enthusiast, we offer a wide range of products including power tools, hand tools, construction materials, and home improvement essentials. With top brands, competitive prices, and expert advice, we make it easy to find everything you need to complete your projects with confidence. Shop online and enjoy fast delivery, secure payment options, and exceptional customer service.', 'Welcome to Online hardware shop, your trusted destination for quality hardware and tools. Whether you\'re a professional contractor or a DIY enthusiast, we offer a wide range of products including power tools, hand tools, construction materials, and home improvement essentials. With top brands, competitive prices, and expert advice, we make it easy to find everything you need to complete your projects with confidence. Shop online and enjoy fast delivery, secure payment options, and exceptional customer service.', '/images/logo.jpeg', '/images/colored/png/logo-no-background.png', 'Nakasero Rd, Kampala, Uganda', '0701019510,0778185245,0779824261', 'tumusiimepius01@gmail.com', NULL, '2020-08-14 01:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(30, 'Kevin Mugarura', 'kevinmugarura051@gmail.com', NULL, '$2y$12$KSTnvvgAkGPISXdutLV5YuCFvaAU/Jvd..UxREUGLFvLYoTZMKox2', NULL, 'admin', NULL, NULL, 'active', NULL, '2024-09-30 05:03:37', '2025-01-11 09:38:25'),
(31, 'Tumusiime Pius', 'tumusiimepius01@gmail.com', NULL, '$2y$10$fCdyN/X.OtBJgG0AYSCllOz2x5UyFjldAe/YWDAFoWUj53Zxdh2CG', NULL, 'admin', NULL, NULL, 'active', NULL, '2024-09-30 05:41:07', '2024-09-30 05:41:07'),
(44, 'Veldora Vell Tempest', 'velltempest@gmail.com', NULL, '$2y$12$ghVHINr2aOV0aKadc0AIheovjyWetAfmhFzwkBut8OKG8XmMSFsO6', NULL, 'user', NULL, NULL, 'active', NULL, '2025-01-12 23:25:07', '2025-01-12 23:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesapal_ipn_urls`
--
ALTER TABLE `pesapal_ipn_urls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pesapal_ipn_urls_ipn_id_unique` (`ipn_id`),
  ADD KEY `pesapal_ipn_urls_created_by_foreign` (`created_by`);

--
-- Indexes for table `pesapal_transactions`
--
ALTER TABLE `pesapal_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesapal_ipn_urls`
--
ALTER TABLE `pesapal_ipn_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pesapal_transactions`
--
ALTER TABLE `pesapal_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pesapal_ipn_urls`
--
ALTER TABLE `pesapal_ipn_urls`
  ADD CONSTRAINT `pesapal_ipn_urls_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
