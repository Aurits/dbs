-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 03, 2025 at 09:57 AM
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
-- Database: `u864532666_waste`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `user_id`, `name`, `phone`, `city`, `zip`, `gender`, `dob`, `created_at`, `updated_at`) VALUES
(1, 3, 'Masaka Agents', '0780592204', 'Jinja', '1188', 'female', 'Mbale', '2024-06-25 03:34:29', '2024-06-25 03:34:29'),
(2, 4, 'KAKOOZA IMRAN HASHIM', '0750807423', NULL, 'Namanve', 'male', NULL, '2024-06-25 10:03:33', '2024-06-25 10:03:33'),
(3, 6, 'TAYEBWA RICKY', '0701776619', 'olympia', 'Kikoni', NULL, 'Wandegeya', '2024-06-25 12:18:17', '2024-06-25 12:18:17'),
(4, 9, 'Anita', '0700000000', NULL, 'Makerere ', 'female', 'Muk', '2024-06-26 16:53:17', '2024-06-26 16:53:17'),
(5, 14, 'Traver ', '0702274496 ', NULL, 'Kikoni ', 'male', NULL, '2024-06-27 10:13:52', '2024-06-27 10:13:52'),
(6, 15, 'John doe', '0788556677', 'Bwaise', 'Kampala ', 'male', 'Nansana', '2024-06-27 10:19:04', '2024-06-27 10:19:04'),
(7, 21, 'gabangula Issa', '0789961122', NULL, 'Kikoni', 'male', 'Wandegeya', '2024-06-27 11:27:31', '2024-06-27 11:27:31'),
(8, 3, 'Masaka Agents', '0780592204', 'Jinja', '1188', 'male', 'Mbale', '2024-06-27 13:57:45', '2024-06-27 13:57:45'),
(9, 30, 'Luzze', '0703316559', NULL, 'Kampala ', NULL, NULL, '2024-07-17 06:02:53', '2024-07-17 06:02:53'),
(10, 31, 'OKENG FERNANDO', '0788451234', NULL, 'Namanve', NULL, NULL, '2024-07-17 06:03:49', '2024-07-17 06:03:49'),
(11, 32, 'KAGIMU FELIX SAMUEL ', '0752404040', NULL, 'Wandegeya', NULL, 'Kikoni ', '2024-07-17 06:06:35', '2024-07-17 06:06:35'),
(12, 34, 'Abakwase  Immaculate', '0704196610', 'Katwe', 'Katwe', 'female', 'Katwe', '2024-10-21 12:12:06', '2024-10-21 12:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('collector@gmail.com|102.134.149.62', 'i:1;', 1719287934),
('collector@gmail.com|102.134.149.62:timer', 'i:1719287934;', 1719287934),
('collector@gmail.com|154.72.205.234', 'i:1;', 1719317417),
('collector@gmail.com|154.72.205.234:timer', 'i:1719317417;', 1719317417),
('collector@gmail.com|41.210.141.110', 'i:1;', 1719491445),
('collector@gmail.com|41.210.141.110:timer', 'i:1719491445;', 1719491445),
('collector@gmail.com|41.75.172.237', 'i:1;', 1719421982),
('collector@gmail.com|41.75.172.237:timer', 'i:1719421982;', 1719421982),
('company1@gmail.com|41.210.141.110', 'i:1;', 1719491552),
('company1@gmail.com|41.210.141.110:timer', 'i:1719491552;', 1719491552),
('gwotakutte@gmail.com|41.75.175.59', 'i:1;', 1724434460),
('gwotakutte@gmail.com|41.75.175.59:timer', 'i:1724434460;', 1724434460),
('molianbagarukayo@gmail.com|41.210.141.127', 'i:3;', 1719307604),
('molianbagarukayo@gmail.com|41.210.141.127:timer', 'i:1719307604;', 1719307604),
('nowenakazibwe7@gmail.com|145.224.73.219', 'i:5;', 1729512807),
('nowenakazibwe7@gmail.com|145.224.73.219:timer', 'i:1729512807;', 1729512807),
('ok100@gmail.com|154.72.204.82', 'i:3;', 1721196324),
('ok100@gmail.com|154.72.204.82:timer', 'i:1721196324;', 1721196324),
('rickienaija@gmail.com|145.224.73.219', 'i:3;', 1729512875),
('rickienaija@gmail.com|145.224.73.219:timer', 'i:1729512875;', 1729512875),
('rickienaija@gmail.com|41.75.172.237', 'i:3;', 1719422063),
('rickienaija@gmail.com|41.75.172.237:timer', 'i:1719422063;', 1719422063),
('rickienaija@gmail.com|41.75.179.48', 'i:1;', 1719469388),
('rickienaija@gmail.com|41.75.179.48:timer', 'i:1719469388;', 1719469388),
('tayebwaricky@gmail.com|41.75.179.48', 'i:2;', 1719469409),
('tayebwaricky@gmail.com|41.75.179.48:timer', 'i:1719469409;', 1719469409);

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
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collection_requests`
--

CREATE TABLE `collection_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requester_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_id` bigint(20) UNSIGNED NOT NULL,
  `request_type` varchar(255) NOT NULL,
  `collection_date` datetime NOT NULL DEFAULT '2024-06-24 18:04:20',
  `collection_location` varchar(255) NOT NULL,
  `quantity_of_plastic` int(11) NOT NULL,
  `type_of_plastic` varchar(255) DEFAULT NULL,
  `amount_for_payment` double DEFAULT NULL,
  `additional_details` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `agreement` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_requests`
--

INSERT INTO `collection_requests` (`id`, `requester_id`, `recipient_id`, `request_type`, `collection_date`, `collection_location`, `quantity_of_plastic`, `type_of_plastic`, `amount_for_payment`, `additional_details`, `status`, `agreement`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Company', '2024-06-26 00:00:00', 'Jinja', 100, '{\"BOTTLES\":\"20\",\"TINS\":\"20\",\"UTENSIL PLASTICS\":\"40\",\"OTHER PLASTICS\":\"20\"}', 12000, 'this', 'Cancelled', 'pending', '2024-06-25 03:38:52', '2024-06-25 03:44:48'),
(2, 3, 1, 'Company', '2024-06-26 00:00:00', 'Jinja', 40, '{\"BOTTLES\":\"10\",\"TINS\":\"10\",\"UTENSIL PLASTICS\":\"10\",\"OTHER PLASTICS\":\"10\"}', 5000, 'gfh', 'Paid', 'pending', '2024-06-25 03:51:22', '2024-06-25 03:54:00'),
(3, 7, 6, 'Agent', '2024-06-27 00:00:00', 'olympia', 26, '{\"OTHER PLASTICS\":\"13\",\"1\":\"13\"}', 13000, NULL, 'pending', 'pending', '2024-06-25 12:30:29', '2024-06-25 12:30:29'),
(4, 8, 10, 'Company', '2024-06-29 00:00:00', 'Kla', 10, '{\"OTHER PLASTICS\":\"10\"}', 0, '10kgs of other plastic available ', 'pending', 'pending', '2024-06-26 17:02:31', '2024-06-26 17:02:31'),
(5, 12, 6, 'Agent', '2024-06-28 00:00:00', 'Olympia', 40, '{\"BOTTLES\":\"40\"}', 20000, NULL, 'pending', 'pending', '2024-06-26 17:19:30', '2024-06-26 17:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `collectors`
--

CREATE TABLE `collectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectors`
--

INSERT INTO `collectors` (`id`, `user_id`, `name`, `phone`, `city`, `zip`, `gender`, `dob`, `created_at`, `updated_at`) VALUES
(1, 2, 'Administrator', '0780592204', 'Jinja', 'Masaka', 'male', 'Mbale', '2024-06-25 03:31:59', '2024-06-25 03:31:59'),
(2, 5, 'KAGIMU FELIX SAMUEL ', '0775203493', 'Nankulabye', 'Wandegeya', 'male', 'Kikoni ', '2024-06-25 10:22:07', '2024-06-25 10:22:07'),
(3, 6, 'TAYEBWA RICKY', '0701776619', 'olympia', 'Kikoni', 'male', 'Wandegeya', '2024-06-25 12:11:07', '2024-06-25 12:11:07'),
(4, 7, 'TAYEBWA RICKY', '0701776619', 'olympia', 'Kikoni', NULL, 'Wandegeya', '2024-06-25 12:25:48', '2024-06-25 12:25:48'),
(5, 8, 'Queen', '0700112233', 'K’la', 'Kla', 'female', 'Kla', '2024-06-25 13:04:31', '2024-06-25 13:04:31'),
(6, 12, 'TAYEBWA RICKY', '0782433062', 'Olympia', 'JJ hostel ', 'male', 'Douglas villa ', '2024-06-26 17:18:23', '2024-06-26 17:18:23'),
(7, 6, 'TAYEBWA RICKY', '0701776619', 'olympia', 'Kikoni', NULL, 'Wandegeya', '2024-06-27 06:23:08', '2024-06-27 06:23:08'),
(8, 16, 'Musinguzi Derrick', '0703778726', NULL, 'Bushenyi ', 'male', 'Ishaka', '2024-06-27 10:20:58', '2024-06-27 10:20:58'),
(9, 17, 'Albert Musinguzi', '0762267605', NULL, 'Kireka', 'male', 'Mbuya', '2024-06-27 10:28:10', '2024-06-27 10:28:10'),
(10, 20, 'KARUNGI SWIZEEN ', '0741075057', 'Mbarara ', 'Kikoni', 'male', 'Senge.', '2024-06-27 11:10:13', '2024-06-27 11:10:13'),
(11, 22, 'Ayebare Phillip Able ', '0702105966', 'Kikoni', 'Bwaise', 'male', 'Wandegeya ', '2024-06-27 11:42:01', '2024-06-27 11:42:01'),
(12, 24, 'Molian Agaba', '0784961112', NULL, 'Kikoni,', 'female', 'Bwaise ', '2024-06-27 13:19:14', '2024-06-27 13:19:14'),
(13, 26, 'Molline Nareeba', '0765287100', NULL, 'Kikoni', 'male', 'Bwaise ', '2024-06-27 13:59:16', '2024-06-27 13:59:16'),
(14, 27, 'Molline Nareeba ', '0765287100', NULL, 'Kikoni', 'male', 'Wandegeya', '2024-06-27 14:01:36', '2024-06-27 14:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `name`, `phone`, `city`, `zip`, `created_at`, `updated_at`) VALUES
(1, 1, 'TLD Company', '0780592204', 'Jinja', '1188', '2024-06-24 18:11:18', '2024-06-24 18:11:18'),
(2, 10, 'Kahunde', '07111111', 'Wandegeya ', 'Kampala', '2024-06-26 16:55:54', '2024-06-26 16:55:54'),
(3, 13, 'Bukoma Juma Moya', '0771234567', NULL, NULL, '2024-06-27 05:43:20', '2024-06-27 05:43:20'),
(4, 23, 'Duncan', '0752222174', NULL, 'Kampala', '2024-06-27 11:55:36', '2024-06-27 11:55:36');

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
(4, '2024_03_22_141953_create_sessions_table', 1),
(5, '2024_03_22_142107_ee', 1),
(6, '2024_03_25_023516_add_roles_to_users_table', 1),
(7, '2024_03_25_030749_create_agents_table', 1),
(8, '2024_03_25_030830_create_collection_requests_table', 1),
(9, '2024_03_25_030912_create_collectors_table', 1),
(10, '2024_03_25_030957_create_companies_table', 1),
(11, '2024_03_25_031040_create_transactions_table', 1),
(12, '2024_03_25_999999_add_active_status_to_users', 1),
(13, '2024_03_25_999999_add_avatar_to_users', 1),
(14, '2024_03_25_999999_add_dark_mode_to_users', 1),
(15, '2024_03_25_999999_add_messenger_color_to_users', 1),
(16, '2024_03_25_999999_create_chatify_favorites_table', 1),
(17, '2024_03_25_999999_create_chatify_messages_table', 1),
(18, '2024_03_26_141501_create_user_balance_rates_table', 1),
(19, '2024_04_03_113657_create_updates_table', 1);

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
('1cyDOculGRJ9s2z07r4QJBe8CX7MGuTPIsc9RdFJ', NULL, '164.92.208.178', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHBndVZacW9OVTlCMDBOZkpqRkZJUlRLdjBJSGZsWDdqSlJZZnJSQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd2FzdGUucGVudGVzdHByby5zaXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736603143),
('1J65eSU07YQcShjufG04SG6iI3KHe33F9q9cPd4Q', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOW5zVnFuQTQyWkVkQzlnOWJhV2V1SlZUNFE2N2dDOGVxdXA2QTRCbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736330154),
('7IxZANE5q6kCCFfUBWqi6wN8bKqwD9QZBIWHNdxa', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNEFzMXdJMWNmcXBrRDFYZUhsMVpiTmx6UHp5bDY4bnhGZUtUMGNCeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736381666),
('7VPWTMIZOuaPV5gA5750im9OOIz0qzxRsDcg8pua', NULL, '41.210.154.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEZjS0dJcVJLbkJCeXRtR25sOExocWZwSTQxMnNPM1JYanB5OWVKSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vcGVudGVzdHByby5zaXRlL3dhc3RlX21hbmFnZW1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737180264),
('GWIsWbSLn6QQuomTpR3NOcAJMkDI6NrOI2z8Rbua', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTHpWZXZxNzl4NEJMak1VVXRxN1ZtQlowYmRUMlFzb0N6ZlJIWEd6YiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736742691),
('H2N3WCEWkfVJab5twCtJTd7ztyiMCClv2gmoGMmQ', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTVpmYkJibkdXcFdtb1lUTmg5eVMzeFQwdnJydzRBYkRRaGRsaDhqeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736814320),
('HWaWsrkl3O4cJQ53uAlBbGhldwDdjOCNyH0AEWTY', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVFmSkVJQ0JLMmlnSjU2V1lSdThvQnU5ZHY3bDA0a0lHR004Y2FDayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736937295),
('M169EiIGwU4s8aTxfV3FqnmSQjqkhbVszYLMbGiH', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWjlYcHJKNnpVRmtHd0Z6eExwejA3ZXdXaVJFcTlmUzdvM1VNU1VUUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736074424),
('Oj3fHPUMcZssL0BZyvfnpln3fwYYw94EB36nBp6H', NULL, '46.17.174.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTlkSUdSak1YN1dtVmpCd1FIbXo1VFdZZGoyY2YyWHpQbVhJaEFCNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd2FzdGUucGVudGVzdHByby5zaXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736300825),
('pLxUrcrA61OudIiMRpjI4wCIFUZeqR2zG7dszusc', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiem1pN3Btdjl2OFh1ZzJoWTlOSnZuWE1Dc2tRNkU4WXgwZFJ3U2ZxQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736237696),
('RUdhJab2IjtIdNRDxR001cy1UK9mAgpDWtI6NyfO', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibW1neWtTc1JlclR3SHdFem1UZG9qWHkxWjZ2eUk3Z05HRFI2aVRvUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736661913),
('SJ5lBPWlhWM6Vk2291spvk0UuYoE9IfLt61tsg1m', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWkpuRzlyMTVKdXpCdm52TEdVODZVa0JUNEE4RGdSWUEzVFcxcEg4VCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735899249),
('voIRp8OYjKiYN6Bb8P2VM6re0DDQLWGbapyPHNOB', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieGZjUUxCdVBTeEEzUlI0WXN3ZEl0OE5RMlFmM1FZb1NoY2s5ZkxzUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736490789),
('WMyhMrAMSVSQtWKe289wuK3Qehdpm3lF5UNofGhc', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTmRsZEJXb3oySjVGMHZocXpaZW1zSVRqeDZNclRIZWpHYTIwY0x2WCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736150042),
('XKhWaY62lzMqS1m0loTQFWPjDSIoUbopOYCuSZSC', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOUlmTWxpOTgwOUl1Z0VSSkszOFdPdGFoNzRYWjRYMGlDMERhd3RuZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736588926),
('XOS3HUho9Qo69XwlaPrJ1XT7DLv1oa49P68Rc91B', NULL, '54.76.160.42', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWsxTmFUREw0WDBZWkFJemdhT25zWXlqQ3ZlT3ZzNlA1UGdQYm5mSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd2FzdGUucGVudGVzdHByby5zaXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736189468),
('y4q3lEk2pglrqvnYiSKfPBOLrVwquNXTuUz7NjYm', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTXRFYlJla3dVTmtaNmd0bk9sMzhpNFlZYjRVSnNxUEdGR0czOVBuSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735969360);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `additional_details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `sender_id`, `recipient_id`, `amount`, `transaction_type`, `transaction_date`, `additional_details`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 5000.00, 'Agreement', '2024-06-25 03:54:00', 'Request ID: 2', '2024-06-25 03:54:00', '2024-06-25 03:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) DEFAULT 'collector',
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'TLD Company', 'company@gmail.com', NULL, '$2y$12$hwqYc.wVMDx7U1A2wc/zDuFPPx6uq2o31.IZBr6WhaZocSrKZLgAC', NULL, '2024-06-24 18:10:50', '2024-06-24 18:11:18', 'company', 0, 'avatar.png', 0, NULL),
(2, 'Administrator', 'admin@gmail.com', NULL, '$2y$12$IeplQVHIWFprJP/WEA1AUuhB17/8zWPWFnXQq7puega/3xB1SRnR.', NULL, '2024-06-25 03:31:34', '2024-07-17 18:05:19', 'admin', 0, 'avatar.png', 0, '#2180f3'),
(3, 'Masaka Agents', 'agent@gmail.com', NULL, '$2y$12$J.OK13T3RPghMCI/Ot4LPulcZnOxp9nVNcwuvk2PL7.T3eUk8Y4V6', NULL, '2024-06-25 03:34:18', '2024-06-25 03:34:29', 'agent', 0, 'avatar.png', 0, NULL),
(4, 'KAKOOZA IMRAN HASHIM', 'kakoozaimranhashim@gmail.com', NULL, '$2y$12$NVbaFNKub3Fq8bM5svstqO7wK0LSQmBSlJs6ySxsfs9oQ/oQQM9fy', NULL, '2024-06-25 10:02:32', '2024-06-27 14:01:24', 'agent', 0, 'avatar.png', 0, NULL),
(5, 'KAGIMU FELIX SAMUEL ', 'kagiflex@gmail.com', NULL, '$2y$12$ci1S3yfkg3manPu4ttzrs.ymS8JaIcYPySSGH967/N3aVOZMXPCA2', NULL, '2024-06-25 10:21:15', '2024-06-25 10:23:49', 'collector', 0, 'avatar.png', 1, NULL),
(6, 'TAYEBWA RICKY', 'tayebwaricky2020@gmail.com', NULL, '$2y$12$QMzv4.Ih20Ko/Ebcd48AkeGtikYePuO7nP7nHVhsTTjQHuozD0XeG', NULL, '2024-06-25 12:10:40', '2024-06-27 06:23:08', 'collector', 0, 'avatar.png', 0, NULL),
(7, 'TAYEBWA RICKY', 'rickienaija@gmail.com', NULL, '$2y$12$1EMHkmpGVopQPWngstZPo.bIpQ94iqKBV7TfaTwTBDV7rlcZG55my', NULL, '2024-06-25 12:25:35', '2024-06-25 12:25:35', 'collector', 0, 'avatar.png', 0, NULL),
(8, 'Queen', 'queen@gmail.com', NULL, '$2y$12$ITpn0qzQi6xtR2xIzPu0Qufm9hH5yiI5UWq/10gf132icztltnNxK', '2tJhAdJ37xklE3cz8z4cl5NmeZGQW8zvw0KjzCHiwwVCQTmbzBBCr9ngckX1', '2024-06-25 13:03:35', '2024-06-25 13:03:35', 'collector', 0, 'avatar.png', 0, NULL),
(9, 'Anita', 'anita@gmail.com', NULL, '$2y$12$34DvchWKmbELgAB721PgOOC2qYgdIL1KVZx6Wqa5hqtIOcDLGYESq', NULL, '2024-06-26 16:52:34', '2024-06-26 16:53:17', 'agent', 0, 'avatar.png', 0, NULL),
(10, 'Kahunde', 'kahunde@gmail.com', NULL, '$2y$12$7AR28Rkeymh9BvL77um0uutXusBFSk1Pt8dTLE7h90CilHGspKHqa', 'vHg8ybiE1TqyWWXqSqI8vTShAh00q0LnoHv60cJ5CfkYbsfOan0JQiZqHR7m', '2024-06-26 16:55:05', '2024-06-26 16:55:54', 'company', 0, 'avatar.png', 0, NULL),
(11, 'Ahereza  Molian ', 'aherezamolian@gmail.com', NULL, '$2y$12$15yrf8PAznpIvHpHvaoSrOVA/6T65zEvxCVks264tBRBF.8gbbqJW', NULL, '2024-06-26 17:04:07', '2024-06-26 17:04:07', 'collector', 0, 'avatar.png', 0, NULL),
(12, 'TAYEBWA RICKY', 'rickienaija1@gmail.com', NULL, '$2y$12$64zRM6XGcHHn5oePslw9k.g4XnRV/gzRDq3R5KYSQZxy3wVnbnTRW', NULL, '2024-06-26 17:17:41', '2024-06-26 17:17:41', 'collector', 0, 'avatar.png', 0, NULL),
(13, 'Bukoma Juma Moya', 'jumamoya184@gmail.com', NULL, '$2y$12$QTI6yGE5mLQLkrau1WFyMevhJY4DPrhJr8l7X6JiwWKruAFSdhtzG', NULL, '2024-06-27 05:42:52', '2024-06-27 05:44:09', 'company', 0, 'avatar.png', 0, '#FF9800'),
(14, 'Traver ', 'owembabazitraver@gmail.com', NULL, '$2y$12$2vtYoyYpXFz5zgajb5q/ses9XV5/A2B5inmzFm5dIEvXw2L.h59y2', 'MRO6KFgrM6lksH5SiePiNAHQ7HstgqhkMULKlRoCdXNvaNkV6rocf45p2TgF', '2024-06-27 10:13:15', '2024-06-27 10:13:52', 'agent', 0, 'avatar.png', 0, NULL),
(15, 'John doe', 'john@gmail.com', NULL, '$2y$12$u68FeVD3EKK7YfO7XH3.AeIWOLm3kKhpHLa4A35SbHUDhSoNotKrW', NULL, '2024-06-27 10:18:18', '2024-06-27 10:19:04', 'agent', 0, 'avatar.png', 0, NULL),
(16, 'Musinguzi Derrick', 'derrickderianrein@gmail.com', NULL, '$2y$12$MZHEpVCVvob2sFXRsE.iNOd197cIBXWTe9MwLeUNhftW7552Hk2HG', NULL, '2024-06-27 10:19:54', '2024-06-27 10:19:54', 'collector', 0, 'avatar.png', 0, NULL),
(17, 'Albert Musinguzi', 'albermusinguzi@gmail.com', NULL, '$2y$12$rbSPlxFNc2unri2HjSuid./HfQLCri9bbovMyK7CPBpgjEWEfTrS2', NULL, '2024-06-27 10:26:46', '2024-06-27 10:26:46', 'collector', 0, 'avatar.png', 0, NULL),
(18, 'kabs', 'wacipa9792@devncie.com', NULL, '$2y$12$2tDgcmfJsGP5OEAZXHv70.qA6QzFSZLeBvM/Nv71/KDm/7MzBgrYe', NULL, '2024-06-27 10:37:49', '2024-06-27 10:37:49', 'collector', 0, 'avatar.png', 0, NULL),
(19, 'Nabaasa Agnes', 'nabaasaagnes20@gmail.com', NULL, '$2y$12$7vLfn0alAwPxz1VKRg3J..yO9x9Nh/Td6JlazLHGCQsZD67dv1Mc2', NULL, '2024-06-27 10:52:56', '2024-06-27 10:52:56', 'collector', 0, 'avatar.png', 0, NULL),
(20, 'KARUNGI SWIZEEN ', 'kswizeen456@gmail.com', NULL, '$2y$12$ZX4CJQmjLRb7iO0IXKDok.NaQnAcasd0sqeDV8Ds28Hx5seBP5B4G', NULL, '2024-06-27 11:07:44', '2024-06-27 11:07:44', 'collector', 0, 'avatar.png', 0, NULL),
(21, 'gabangula Issa', 'gabangulaissa@gmail.com', NULL, '$2y$12$yeqPZ/ivBalSn0fq9MD91uM2ucb.rcbBK.inUTOntE5e/8cM321gC', 'RjERS8OyfQ6EAhzrQDoLrYkolAiehrQsNQfG8ZVZTlBw4HoagRnMMIJM57qP', '2024-06-27 11:26:21', '2024-06-27 11:27:31', 'agent', 0, 'avatar.png', 0, NULL),
(22, 'Ayebare Phillip Able ', 'aphillipable@gmail.com', NULL, '$2y$12$CjVgkl9l9lbLoT8zQJXeTuKDEDbFsHrPkwleWuriNldPVhYJLPVgm', NULL, '2024-06-27 11:38:54', '2024-06-27 11:38:54', 'collector', 0, 'avatar.png', 0, NULL),
(23, 'Duncan', 'duncansmith143@gmail.com', NULL, '$2y$12$/xVJEHMs1NjUk8NEgnXhNOutfheddRHfDDF7hqabcb6XD1nA/q6oi', '0xDDnslkMrI8aA6rhkGSJv1ZUEC8c5yJYSRJf4q29BdqYULULe07s9cKLNrU', '2024-06-27 11:55:10', '2024-06-27 11:55:36', 'company', 0, 'avatar.png', 0, NULL),
(24, 'Molian Agaba', 'molianagaba@gmail.com', NULL, '$2y$12$G.xowgsUsyPV5BYWApFkWebmgMB6aBbSXfK7fmyR8QLUpKJWkwyxW', NULL, '2024-06-27 13:18:44', '2024-06-27 13:18:44', 'collector', 0, 'avatar.png', 0, NULL),
(25, 'Molian Cosmas', 'moliancosmas@gmail.com', NULL, '$2y$12$Bo/shkPlwF8L4K7XX3N61.q7qF71ibPiPK2jmSNuPBTRTK3yEiU1O', NULL, '2024-06-27 13:35:14', '2024-06-27 13:35:14', 'collector', 0, 'avatar.png', 0, NULL),
(26, 'Molline Nareeba', 'moliinenareeba@gmail.com', NULL, '$2y$12$4kOqwvbI8XqPJQxp60Gq0uZ3yB9JD6aHcE2thgGsLBzISvdjoa2yC', NULL, '2024-06-27 13:58:52', '2024-06-27 13:58:52', 'collector', 0, 'avatar.png', 0, NULL),
(27, 'Molline Nareeba ', 'moliinenareeba1@gmail.com', NULL, '$2y$12$nCc8jxUl1xa2JNJzcp7tw.RvElUssYqYl9t1VGfywHlhRvgvwr6tq', NULL, '2024-06-27 14:01:08', '2024-06-27 14:01:08', 'collector', 0, 'avatar.png', 0, NULL),
(28, 'Molian Ahereza ', 'molianahereza12@gmail.com', NULL, '$2y$12$QYyMcEpLlI5JIYOEuTpIj.6Exyy3fVOzET7E0DeV2AfbsHE0g35zW', NULL, '2024-06-27 14:05:19', '2024-06-27 14:05:19', 'collector', 0, 'avatar.png', 0, NULL),
(29, 'Aurit Spark', 'ateraxantonio4@gmail.com', NULL, '$2y$12$URYuTvIih4.7leQe8oezOuOoDLbFl8fm42wy9czYx8qv0c/dM7AIO', NULL, '2024-06-27 14:08:38', '2024-06-27 14:08:38', 'collector', 0, 'avatar.png', 0, NULL),
(30, 'Luzze', 'luzzecarl@gmail.com', NULL, '$2y$12$at78ORDWWC/HFBKzjioGS.JnfT/ZrWBpU6AYSqAw6/DJeTVbb9Yme', NULL, '2024-07-17 06:02:03', '2024-07-17 06:02:53', 'agent', 0, 'avatar.png', 0, NULL),
(31, 'OKENG FERNANDO', 'ok100@gmail.com', NULL, '$2y$12$Hr85uzwX/xYHSX/5ljkEWu9tftJeOzfEceOSZeB/DYtA/70GTiBQm', NULL, '2024-07-17 06:03:09', '2024-07-17 06:03:49', 'agent', 0, 'avatar.png', 0, NULL),
(32, 'KAGIMU FELIX SAMUEL ', 'sfkagimu001@gmail.com', NULL, '$2y$12$n65Z/QbISUiLYAn7eaeRR.1DJDX7jYxKwImJDptHjbZT3N5hyQxIm', '9Z0uX48G6vhgCkIi9q55BH0ssPpGYQLl1JjpQyakp8SsXocKSs0u71slArQp', '2024-07-17 06:05:59', '2024-07-17 06:06:35', 'agent', 0, 'avatar.png', 0, NULL),
(33, 'Mark kim', 'markkim@gmail.com', NULL, '$2y$12$OL/GZt307v4hfOWLLn8kWe7ht.WC.a0aD5i/UDXUCykYpd3Zl1ogq', NULL, '2024-07-17 11:45:31', '2024-07-17 11:45:31', 'collector', 0, 'avatar.png', 0, NULL),
(34, 'Abakwase  Immaculate', 'nowenakazibwe7@gmail.com', NULL, '$2y$12$JI/LY38zNWZGxZEo9YVtPufC1jl3.W11KoMZss5CxzbiGnmWDM4pq', NULL, '2024-10-21 12:09:34', '2024-10-21 12:12:06', 'agent', 0, 'avatar.png', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_balance_rates`
--

CREATE TABLE `user_balance_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `rate_for_bottles` decimal(10,2) DEFAULT NULL,
  `rate_for_tins` decimal(10,2) DEFAULT NULL,
  `rate_for_utencils` decimal(10,2) DEFAULT NULL,
  `rate_for_others` decimal(10,2) DEFAULT NULL,
  `stock_for_bottles` decimal(10,2) DEFAULT NULL,
  `stock_for_tins` decimal(10,2) DEFAULT NULL,
  `stock_for_utencils` decimal(10,2) DEFAULT NULL,
  `stock_for_others` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_balance_rates`
--

INSERT INTO `user_balance_rates` (`id`, `user_id`, `balance`, `rate_for_bottles`, `rate_for_tins`, `rate_for_utencils`, `rate_for_others`, `stock_for_bottles`, `stock_for_tins`, `stock_for_utencils`, `stock_for_others`, `created_at`, `updated_at`) VALUES
(1, 1, 995000.00, 200.00, 100.00, 100.00, 100.00, 100.00, 20.00, 20.00, 20.00, '2024-06-24 18:11:47', '2024-06-25 03:54:00'),
(2, 3, 1000000.00, 200.00, 100.00, 100.00, 100.00, 20.00, 20.00, 0.00, 20.00, '2024-06-25 03:35:21', '2024-06-25 03:51:22'),
(3, 2, 1000000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-25 03:58:12', '2024-06-25 03:58:12'),
(4, 6, 0.00, 500.00, 600.00, 700.00, 1000.00, 10000.00, 1500.00, 2000.00, 1300.00, '2024-06-25 12:19:37', '2024-06-26 11:33:49'),
(5, 7, NULL, NULL, NULL, NULL, NULL, 10.00, 15.00, 20.00, 0.00, '2024-06-25 12:28:49', '2024-06-25 12:30:29'),
(6, 8, NULL, NULL, NULL, NULL, NULL, 50.00, 10.00, 20.00, 10.00, '2024-06-26 16:47:05', '2024-06-26 17:02:31'),
(7, 10, 2000000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-26 16:56:34', '2024-06-26 16:56:56'),
(8, 12, NULL, NULL, NULL, NULL, NULL, 10.00, 60.00, 10.00, 2.00, '2024-06-26 17:18:52', '2024-06-26 17:19:30'),
(9, 24, NULL, NULL, NULL, NULL, NULL, 160.00, 20.00, 10.00, 5.00, '2024-06-27 13:21:03', '2024-06-27 13:33:04'),
(10, 25, NULL, NULL, NULL, NULL, NULL, 50.00, 20.00, 30.00, 10.00, '2024-06-27 13:47:24', '2024-06-27 13:48:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agents_user_id_foreign` (`user_id`);

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
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_requests`
--
ALTER TABLE `collection_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_requests_requester_id_foreign` (`requester_id`),
  ADD KEY `collection_requests_recipient_id_foreign` (`recipient_id`);

--
-- Indexes for table `collectors`
--
ALTER TABLE `collectors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collectors_user_id_foreign` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_sender_id_foreign` (`sender_id`),
  ADD KEY `transactions_recipient_id_foreign` (`recipient_id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_balance_rates`
--
ALTER TABLE `user_balance_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_balance_rates_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `collection_requests`
--
ALTER TABLE `collection_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `collectors`
--
ALTER TABLE `collectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_balance_rates`
--
ALTER TABLE `user_balance_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `collection_requests`
--
ALTER TABLE `collection_requests`
  ADD CONSTRAINT `collection_requests_recipient_id_foreign` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `collection_requests_requester_id_foreign` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `collectors`
--
ALTER TABLE `collectors`
  ADD CONSTRAINT `collectors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_recipient_id_foreign` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_balance_rates`
--
ALTER TABLE `user_balance_rates`
  ADD CONSTRAINT `user_balance_rates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
