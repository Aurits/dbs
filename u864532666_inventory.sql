-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 03, 2025 at 09:56 AM
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
-- Database: `u864532666_inventory`
--

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
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1718418670),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1718418670;', 1718418670),
('ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'i:1;', 1719335456),
('ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4:timer', 'i:1719335456;', 1719335456),
('alandaambrose@gmail.com|127.0.0.1', 'i:1;', 1718432244),
('alandaambrose@gmail.com|127.0.0.1:timer', 'i:1718432244;', 1718432244),
('alandaambrose@gmail.com|41.210.141.110', 'i:2;', 1718445783),
('alandaambrose@gmail.com|41.210.141.110:timer', 'i:1718445783;', 1718445783),
('celestineolaro@gmail.com|154.227.88.224', 'i:1;', 1718523489),
('celestineolaro@gmail.com|154.227.88.224:timer', 'i:1718523489;', 1718523489),
('eei@gmail.com|154.227.88.224', 'i:4;', 1718485022),
('eei@gmail.com|154.227.88.224:timer', 'i:1718485022;', 1718485022),
('simon@gmail.com|197.239.12.29', 'i:1;', 1725654598),
('simon@gmail.com|197.239.12.29:timer', 'i:1725654598;', 1725654598),
('warehosek@gmail.com|41.210.141.110', 'i:2;', 1718445776),
('warehosek@gmail.com|41.210.141.110:timer', 'i:1718445776;', 1718445776);

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
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_host` varchar(255) NOT NULL,
  `mail_port` varchar(255) NOT NULL,
  `mail_address` varchar(255) NOT NULL,
  `mail_password` varchar(255) NOT NULL,
  `mail_from_name` varchar(255) NOT NULL,
  `encryption` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `category_id`, `status`, `location`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Item 1', 'Description 1', NULL, 'Active', 'Location 1, erers, t', 3, '2024-06-14 23:30:17', '2024-06-15 04:25:19'),
(2, 'Item 2', 'Description 2', NULL, 'Inactive', 'Location 2', 3, '2024-06-14 23:30:17', '2024-06-14 23:54:10'),
(3, 'Item 3', 'Description 3', NULL, 'Active', 'Location 3, Office e, errst', 1, '2024-06-14 23:30:17', '2024-06-15 10:04:28'),
(4, 'Item 1', 'Description 1', NULL, 'Active', 'Location 1', 5, '2024-06-25 16:48:34', '2024-06-25 16:48:34'),
(5, 'Item 2', 'Description 2', NULL, 'Inactive', 'Location 2', 5, '2024-06-25 16:48:34', '2024-06-25 16:48:34'),
(6, 'Item 3', 'Description 3', NULL, 'Active', 'Location 3', 5, '2024-06-25 16:48:34', '2024-06-25 16:48:34'),
(7, 'Item 1', 'Description 1', NULL, 'Active', 'Location 1', 5, '2024-06-25 16:49:51', '2024-06-25 16:49:51'),
(8, 'Item 2', 'Description 2', NULL, 'Inactive', 'Location 2', 5, '2024-06-25 16:49:51', '2024-06-25 16:49:51'),
(9, 'Item 3', 'Description 3', NULL, 'Active', 'Location 3', 5, '2024-06-25 16:49:51', '2024-06-25 16:49:51'),
(10, 'Item 1', 'Description 1', NULL, 'Active', 'Location 1', 5, '2024-06-25 17:09:57', '2024-06-25 17:09:57'),
(11, 'Item 2', 'Description 2', NULL, 'Inactive', 'Location 2', 5, '2024-06-25 17:09:57', '2024-06-25 17:09:57'),
(12, 'Item 3', 'Description 3', NULL, 'Active', 'Location 3', 5, '2024-06-25 17:09:57', '2024-06-25 17:09:57');

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
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout_time` timestamp NULL DEFAULT NULL,
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
(1, '0000_06_11_161823_create_roles_table', 1),
(2, '0000_06_11_161826_create_categories_table', 1),
(3, '0001_01_01_000000_create_users_table', 1),
(4, '0001_01_01_000001_create_cache_table', 1),
(5, '0001_01_01_000002_create_jobs_table', 1),
(6, '2024_06_11_161824_create_permissions_table', 1),
(7, '2024_06_11_161824_create_role_permissions_table', 1),
(8, '2024_06_11_161825_create_items_table', 1),
(9, '2024_06_11_161825_create_offices_table', 1),
(10, '2024_06_11_161825_create_warehouses_table', 1),
(11, '2024_06_11_161826_create_transfers_table', 1),
(12, '2024_06_11_161827_create_chat_messages_table', 1),
(13, '2024_06_11_161827_create_logins_table', 1),
(14, '2024_06_11_161827_create_tickets_table', 1),
(15, '2024_06_11_161831_create_emails_table', 1),
(16, '2024_06_14_021103_create_email_settings_table', 1),
(17, '2024_06_14_024357_create_office_inventories_table', 1),
(18, '2024_06_14_024427_create_warehouse_inventories_table', 1),
(19, '2024_06_14_030117_add_warehouse_and_office_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`, `location`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Masaka Office', 'Masaka City', 'masaka_office@example.com', '123-456-7890', NULL, NULL),
(2, 'Lyantonde Office', 'Lyantonde City', 'lyantonde_office@example.com', '987-654-3210', NULL, NULL),
(3, 'Kalangala Office', 'Kalangala City', 'kalangala_office@example.com', '555-555-5555', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `office_inventories`
--

CREATE TABLE `office_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `office_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office_inventories`
--

INSERT INTO `office_inventories` (`id`, `office_id`, `item_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 70, '2024-06-15 03:24:27', '2024-06-15 03:24:27');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Full access to all system features and settings.', NULL, NULL),
(2, 'Manager Offices', 'Manage office-specific operations and view actions.', NULL, NULL),
(3, 'Employee', 'Can add but cannot delete or modify existing entries.', NULL, NULL),
(4, 'Overall Viewer', 'Can view information but cannot make changes.', NULL, NULL),
(5, 'Warehouse Manager', 'Manage and transfer items within warehouses.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
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
('59OwqmqeXpJjchGOmKaXqe45gihRMXwxTwlDKL7e', NULL, '52.53.228.233', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVk9ycGRRUTd1OUNjbmhWcGRSMDJyV1BpTmxyNkF1SVhlN011WERoeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vaW52ZW50LnBlbnRlc3Rwcm8uc2l0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725886272),
('6OSJF3b2cpZYDtc2IlPrXvxcbehto6i3ncrc8hk0', 6, '197.239.11.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialVmR0JMVzlZem5CTXBCV3MzUUZSMWNkSko0QkJ4SEZTamYxODJkTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vaW52ZW50LnBlbnRlc3Rwcm8uc2l0ZS9teWRhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1725751173),
('esvFfijgNeDrhPE5cfKiwhgd9lXe0XjJg0GxcLoQ', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ0JNRTlWNHFwWDZCaWJ0QW54OWRRWllubWlQYXNucm5KbnQwZTRRMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725931093),
('iD8dEmsJy2ksAs1BVbUzIubK3Mw7CP25vZK8Cq8J', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1VFOFYwQWtuMzNMeDVQQlhzT0c3d1R2NjJHZlBPU255QzR2OGN4bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vaW52ZW50LnBlbnRlc3Rwcm8uc2l0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725837149),
('k1ryhUhb8OuJQ7OgURpYa9ViXQC0QJiPt8gj3qVZ', NULL, '147.182.230.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclA2aHZ0b0pGTGxSUktzRUZ6SHdIbVhBS1FJUDEzbExSUm1Kdlk4byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vaW52ZW50LnBlbnRlc3Rwcm8uc2l0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725760276),
('KbStBllbhC3jebVOnA4Kckj39z5NU9LwMMQnva8L', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicWcxa0k1VDZyVjFObUlUUHJoUUEyMWZCUGJyem9VbXR1UXRuZWVteiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725844693),
('Q8orAohSV8MEtoHK48LLReo8ZUufHfuxXU1Xi0hO', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoialUwaXVaWXRqTXBhV1dsdFVOWVdPRHM2WGFJbFpoME9oM2hvOHhUSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725758293),
('rcH6XZQwb28lwK9cEodvKNz2UEWRq6cYp5jLuDC0', NULL, '54.177.114.107', 'bitdiscovery-suggestions', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0FGMnVSOGsyM0hJTzNKVDdyMFlQaEx1WXNURXg1OXJEdlVMT3dyWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vaW52ZW50LnBlbnRlc3Rwcm8uc2l0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725875505),
('rgS0jMgoD2bWPsLbklU8SbAxWyS2434Lc2OeP9Dr', NULL, '45.84.139.77', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2ZLSTlja0h0cjNhWTdqQUFMVlZvSE15cVBOYXFMb1lTMDRCU21DUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vaW52ZW50LnBlbnRlc3Rwcm8uc2l0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725809936),
('rIvyTNwk9LgVOggsucXn3GQ0dgxdJQ4DlzWiqQTl', NULL, '54.177.114.107', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUJtMjBVbjJpN1ExVkoxTlMzR29JNElCSG5sUG9yaWtlOGhnNmhVUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vaW52ZW50LnBlbnRlc3Rwcm8uc2l0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725875484),
('zPq5Fh5h2hcTSg1sWbIUpplHM5mxN4vef0zkIgiQ', NULL, '52.53.228.233', 'bitdiscovery-suggestions', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGtOSTRFM0R2a1NEYVhMZWlVbjFtSjNKc1YxRmlacnhEWnRGdlNxdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vaW52ZW50LnBlbnRlc3Rwcm8uc2l0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725886272);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue_description` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `to_office_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date DEFAULT '2024-06-15',
  `time` time DEFAULT '02:28:45',
  `quantity` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `item_id`, `from_warehouse_id`, `to_office_id`, `status`, `date`, `time`, `quantity`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Completed', '2024-06-15', '02:28:45', 70, 'ysd', '2024-06-15 03:24:27', '2024-06-26 13:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `office_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`, `warehouse_id`, `office_id`) VALUES
(1, 'Aurit Spark', 'ateraxantonio@gmail.com', NULL, NULL, '$2y$12$1YyX.7P9wdeXyL7x8DNQ.eNWKL0K9kYdaAriXBIW3BYtyrwEW5sle', NULL, 1, '2024-06-14 23:29:27', '2024-06-14 23:29:27', NULL, NULL),
(2, 'Masaka Manager', 'masaka@gmail.com', '124355765', NULL, '$2y$12$v.MLAe.v0/wLlmLBX2fQ5uG//RXBqspIcdk/iMG0a.RATnFiED5Ee', NULL, 2, '2024-06-14 23:31:26', '2024-06-14 23:31:26', NULL, 1),
(3, 'Masaka Warehouse Person', 'warehouse@gmail.com', '34538756', NULL, '$2y$12$FkkYNtenTfS2XBI7rYY6beN14fYSG5yL/3FOKt0Ez3f1b9GEXNR1K', NULL, 5, '2024-06-14 23:40:24', '2024-06-14 23:40:24', 1, NULL),
(4, 'olaro', 'celestineolaro@gmail.com', '0762380194', NULL, '$2y$12$z6Ji.gnOMGr1JulAz.SAC.EezmhN4.1XkNB38B6KsaJaxUGo4VaxO', NULL, 2, '2024-06-25 10:14:57', '2024-06-25 10:14:57', NULL, 1),
(5, 'olaropeter', 'olaro@gmail.com', '0789441919', NULL, '$2y$12$aLTzVoyLoSsg5yQlXJ3Xm.8V95bKyXtiI0Gx7VL4Le.y.FRWWxlrO', NULL, 5, '2024-06-25 15:52:55', '2024-06-25 15:52:55', NULL, NULL),
(6, 'Simon ', 'simon@gmail.com', '0762380194', NULL, '$2y$12$DaehFEh.3lQbTgMnEfmZ/eo96EoxPNFrP30DACaTJyobbVBWRpJvy', 'hIlmfXf1ixSATy1ItWI3wL2Oqo5W2ijRExfyFrbfkTF7sVkLCoD97WhPQHYV', 1, '2024-09-05 12:55:22', '2024-09-05 12:55:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `location`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Masaka Warehouse', 'Masaka City', 'masaka_office@example.com', '123-456-7890', NULL, NULL),
(2, 'Lyantonde Warehouse', 'Lyantonde City', 'lyantonde_office@example.com', '987-654-3210', NULL, NULL),
(3, 'Kalangala WareHouse', 'Kalangala City', 'kalangala_office@example.com', '555-555-5555', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_inventories`
--

CREATE TABLE `warehouse_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_inventories`
--

INSERT INTO `warehouse_inventories` (`id`, `warehouse_id`, `item_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 130, '2024-06-14 23:51:49', '2024-06-15 03:24:27'),
(2, 1, 2, 100, '2024-06-14 23:54:10', '2024-06-14 23:54:10'),
(3, 1, 3, 140, '2024-06-14 23:54:32', '2024-06-15 04:24:58');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_sender_id_foreign` (`sender_id`),
  ADD KEY `chat_messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emails_sender_id_foreign` (`sender_id`),
  ADD KEY `emails_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`),
  ADD KEY `items_updated_by_foreign` (`updated_by`);

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
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logins_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_inventories`
--
ALTER TABLE `office_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `office_inventories_office_id_foreign` (`office_id`),
  ADD KEY `office_inventories_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_created_by_foreign` (`created_by`),
  ADD KEY `tickets_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_item_id_foreign` (`item_id`),
  ADD KEY `transfers_from_warehouse_id_foreign` (`from_warehouse_id`),
  ADD KEY `transfers_to_office_id_foreign` (`to_office_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `users_office_id_foreign` (`office_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_inventories`
--
ALTER TABLE `warehouse_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_inventories_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_inventories_item_id_foreign` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `office_inventories`
--
ALTER TABLE `office_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `warehouse_inventories`
--
ALTER TABLE `warehouse_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `chat_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `emails_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `items_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `logins`
--
ALTER TABLE `logins`
  ADD CONSTRAINT `logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `office_inventories`
--
ALTER TABLE `office_inventories`
  ADD CONSTRAINT `office_inventories_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `office_inventories_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tickets_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_from_warehouse_id_foreign` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `transfers_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `transfers_to_office_id_foreign` FOREIGN KEY (`to_office_id`) REFERENCES `offices` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `warehouse_inventories`
--
ALTER TABLE `warehouse_inventories`
  ADD CONSTRAINT `warehouse_inventories_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouse_inventories_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
