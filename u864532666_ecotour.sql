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
-- Database: `u864532666_ecotour`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tourist_id` bigint(20) UNSIGNED NOT NULL,
  `experience_id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` datetime NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `payment_status` enum('pending','paid','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `tourist_id`, `experience_id`, `booking_date`, `scheduled_date`, `total_amount`, `payment_status`, `created_at`, `updated_at`) VALUES
(3, 2, 15, '2024-10-28 14:53:00', '2024-11-10 17:54:00', 3000.00, 'pending', '2024-10-27 14:54:45', '2024-10-27 14:54:45'),
(7, 1, 17, '2024-10-28 04:53:45', '2024-10-31 00:00:00', 30000.00, 'pending', '2024-10-28 04:53:45', '2024-10-28 04:53:45'),
(8, 1, 17, '2024-10-28 08:23:00', '2024-10-31 00:00:00', 30000.00, 'paid', '2024-10-28 08:23:50', '2024-10-28 09:29:30'),
(11, 10, 17, '2024-10-28 09:22:07', '2024-11-03 00:00:00', 30000.00, 'pending', '2024-10-28 09:22:07', '2024-10-28 09:22:07'),
(12, 6, 15, '2024-10-28 09:29:00', '2024-11-10 12:29:00', 500.00, 'paid', '2024-10-28 09:30:36', '2024-10-28 09:30:36'),
(15, 10, 18, '2024-10-28 10:25:31', '2024-11-06 00:00:00', 3000.00, 'pending', '2024-10-28 10:25:31', '2024-10-28 10:25:31'),
(19, 10, 22, '2024-10-28 12:08:42', '2024-11-02 00:00:00', 40000.00, 'pending', '2024-10-28 12:08:42', '2024-10-28 12:08:42'),
(20, 10, 18, '2024-10-28 12:11:07', '2024-11-07 00:00:00', 3000.00, 'pending', '2024-10-28 12:11:07', '2024-10-28 12:11:07'),
(21, 10, 22, '2024-10-28 12:13:37', '2024-11-06 00:00:00', 40000.00, 'pending', '2024-10-28 12:13:37', '2024-10-28 12:13:37'),
(22, 10, 22, '2024-10-28 12:16:15', '2024-11-02 00:00:00', 40000.00, 'pending', '2024-10-28 12:16:15', '2024-10-28 12:16:15'),
(23, 13, 22, '2024-10-28 19:43:29', '2024-10-27 00:00:00', 40000.00, 'paid', '2024-10-28 19:43:29', '2024-10-28 19:43:54'),
(26, 13, 17, '2024-10-28 23:55:25', '2024-10-13 00:00:00', 30000.00, 'paid', '2024-10-28 23:55:25', '2024-10-28 23:56:16'),
(27, 17, 22, '2024-10-29 07:44:18', '2024-11-02 00:00:00', 40000.00, 'paid', '2024-10-29 07:44:18', '2024-10-29 08:37:48'),
(28, 17, 18, '2024-10-29 08:37:01', '2024-11-08 00:00:00', 3000.00, 'paid', '2024-10-29 08:37:01', '2024-10-29 08:38:39'),
(29, 17, 15, '2024-10-29 08:43:09', '2024-10-30 00:00:00', 12332.00, 'paid', '2024-10-29 08:43:09', '2024-10-29 08:44:04'),
(31, 14, 16, '2024-11-04 09:37:19', '2024-11-20 00:00:00', 1234.00, 'paid', '2024-11-04 09:37:19', '2024-11-06 10:27:07'),
(32, 1, 18, '2024-11-08 10:27:37', '2024-11-16 00:00:00', 3000.00, 'paid', '2024-11-08 10:27:37', '2024-11-08 10:27:37'),
(33, 1, 16, '2024-11-08 10:29:26', '2024-11-15 00:00:00', 1234.00, 'paid', '2024-11-08 10:29:26', '2024-11-08 10:29:26'),
(34, 1, 17, '2024-11-08 10:30:18', '2024-11-09 00:00:00', 30000.00, 'pending', '2024-11-08 10:30:18', '2024-11-08 10:30:18');

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
('9e6a55b6b4563e652a23be9d623ca5055c356940', 'i:2;', 1730198956),
('9e6a55b6b4563e652a23be9d623ca5055c356940:timer', 'i:1730198954;', 1730198955),
('admin@example.com|127.0.0.1', 'i:1;', 1730195854),
('admin@example.com|127.0.0.1:timer', 'i:1730195851;', 1730195853);

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
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `first_name`, `last_name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Ambrose', 'Alanda', 'alandaambrose@gmail.com', '+256704758344', 'helo', '2024-10-27 02:25:32', '2024-10-27 02:25:32'),
(2, 'jojo', 'fiff', 'kira@gmail.com', '0755184479', 'fgreat adventure', '2024-10-27 12:31:35', '2024-10-27 12:31:35'),
(3, 'hih', 'doo', 'mum@gmail.com', '076683990', 'good', '2024-10-27 12:32:24', '2024-10-27 12:32:24'),
(4, 'Trevor', 'Nangosha', 'trevor@nangosha.com', '0123456789', 'this is the best site that i have ever visited!', '2024-10-31 18:11:06', '2024-10-31 18:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category` enum('homestay','cultural_tour','workshop') NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `host_id` bigint(20) UNSIGNED NOT NULL,
  `available_dates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`available_dates`)),
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `description`, `price`, `category`, `photo`, `location`, `host_id`, `available_dates`, `status`, `created_at`, `updated_at`) VALUES
(15, 'First', 'Describe', 12332.00, 'homestay', 'experiences/ua60IxrQ2B7OBlnyKPqz4ojsbvUwMREAwN2dYG4G.png', 'Level E', 3, '[\"2024-10-30\",\"2024-11-02\"]', 'active', '2024-10-27 12:55:16', '2024-10-27 12:55:16'),
(16, 'Second', 'describe', 1234.00, 'homestay', 'photos/7PrxKvmjUF6Mf9Nh1nJMNBQLpwCQ6xof7bgxBJgG.png', 'dont know', 3, '[\"2024-10-29\",\"2024-10-30\",\"2024-10-31\",\"2024-11-01\"]', 'active', '2024-10-27 12:59:05', '2024-10-27 13:06:31'),
(17, 'This is for testing', 'The  description is here', 30000.00, 'homestay', 'experiences/YrPlMdNz834dRMhCE0vcWGbIvk5JJRr1Ieyjp2iI.jpg', 'Kampala Uganda', 1, '[\"2024-10-29\"]', 'active', '2024-10-28 04:48:18', '2024-10-28 04:48:18'),
(18, 'Manga World', 'It shows mangas in the country', 3000.00, 'homestay', 'experiences/DfJUbh41bWbzb5oO91lC7Ge5E6jG5nVRds5cUNep.jpg', 'Kampala', 8, '[\"2024-10-27\",\"2024-10-28\",\"2024-10-29\",\"2024-10-30\"]', 'active', '2024-10-28 09:00:51', '2024-10-28 09:00:51'),
(22, 'Lugogo', 'Every nice and welcoming. Visit to kyadondo and China town', 40000.00, 'homestay', 'experiences/CEOGGR4Ok7418xlB4afhhmLDbG9BiNDmgyvKMrsJ.png', 'Kampala', 3, '[\"2024-11-01\",\"2024-11-29\"]', 'active', '2024-10-28 10:37:55', '2024-10-28 10:37:55'),
(23, 'ambrose waters', 'this is for wayters', 1000.00, 'homestay', 'experiences/PFyMLB9SfN63RKtlXF9CaeK5ezvTanDzPBTP5l7y.png', 'masaka', 18, '[\"2024-10-30\",\"2024-10-31\"]', 'active', '2024-10-29 10:49:18', '2024-10-29 10:49:18');

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(16, 'default', '{\"uuid\":\"598104b7-dd37-4944-9e9b-81ba024dec45\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:13;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e5256f53-ff2f-4697-8cc2-cefd92b7babb\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730144612, 1730144612),
(17, 'default', '{\"uuid\":\"0cb732c1-75dd-4101-9061-4f53014fb623\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"93a37e56-cacb-4293-89ad-dac1fe0b4292\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730144614, 1730144614),
(18, 'default', '{\"uuid\":\"dd2a3635-386a-4b0c-8588-d0f43cf0b67d\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:13;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"203c95e9-575e-403f-996c-b4d2555235ab\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730144981, 1730144981),
(19, 'default', '{\"uuid\":\"ea52c59d-271a-4d05-8fdf-4c68992bcc8e\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"0960a1ee-ed4e-46ad-a2f1-f71fb5075641\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730144982, 1730144982),
(20, 'default', '{\"uuid\":\"9e72ee0e-5d08-4979-a848-1e4a8ef87447\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:13;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"513eb700-d822-4216-a1c5-a5dab9fa4b6c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730159159, 1730159159),
(21, 'default', '{\"uuid\":\"252125ef-4b1b-4595-a4f2-25831251d6e3\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"7df79dd1-8c62-4d2a-90f4-c1c8fa89b7a3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730159161, 1730159161),
(22, 'default', '{\"uuid\":\"2215b87b-a98d-4a31-843e-911d25652920\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:13;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"af56dbb2-b116-4ad5-a9bf-4808ddbfe802\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730159726, 1730159726),
(23, 'default', '{\"uuid\":\"588f558f-db3f-46db-acb7-f2ef672a12f5\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"57568bcf-15da-4ece-b89a-a7d41ac0f4d1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730159727, 1730159727),
(24, 'default', '{\"uuid\":\"7037f7cb-5ab1-4138-87dc-8e3593c348ca\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:17;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"9ee8f693-2b69-4031-bb65-de430b5b8bee\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730187859, 1730187859),
(25, 'default', '{\"uuid\":\"fbaed3d5-723c-4c6d-a725-2970fc7b6849\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b28c4050-945a-4419-af94-c77ef1cde733\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730187865, 1730187865),
(26, 'default', '{\"uuid\":\"c398fb30-5c42-4017-b020-75c836909b63\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:17;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"aeb69cc0-9e95-4698-b787-81e4799562b0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730191022, 1730191022),
(27, 'default', '{\"uuid\":\"17d0e179-0128-4304-a1a2-59d030dfc0bb\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"56211bb1-fad1-485f-9ce0-680d25a51e2a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730191024, 1730191024),
(28, 'default', '{\"uuid\":\"ab895077-774d-4de8-bd7a-8ce171a6f790\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:17;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"98d7c069-8813-403d-bc43-34e2ff60a078\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730191390, 1730191390),
(29, 'default', '{\"uuid\":\"76a5b4a1-bd85-45ce-be1f-cb23068cd205\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a97546ed-e8e2-419d-89ae-f3a728055331\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730191392, 1730191392),
(30, 'default', '{\"uuid\":\"f53000b0-7e77-4940-82a8-0021e60d8331\",\"displayName\":\"App\\\\Notifications\\\\NewExperienceNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:18;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"App\\\\Notifications\\\\NewExperienceNotification\\\":2:{s:13:\\\"\\u0000*\\u0000experience\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\Experience\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"1f89785f-f533-4933-8632-43998127a10b\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730198961, 1730198961),
(31, 'default', '{\"uuid\":\"87b4a4e9-2ee4-4d3f-b373-899fea0743b4\",\"displayName\":\"App\\\\Notifications\\\\NewExperienceNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"App\\\\Notifications\\\\NewExperienceNotification\\\":2:{s:13:\\\"\\u0000*\\u0000experience\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\Experience\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"490dbf60-efb0-4736-a87d-0d93097b2976\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730198962, 1730198962),
(32, 'default', '{\"uuid\":\"47e2e305-fbc1-493b-8602-eb009d77ee25\",\"displayName\":\"App\\\\Notifications\\\\NewExperienceNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:15;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"App\\\\Notifications\\\\NewExperienceNotification\\\":2:{s:13:\\\"\\u0000*\\u0000experience\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\Experience\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a0e15f37-2d4a-4f40-ad9a-19186a6059c3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730198962, 1730198962),
(33, 'default', '{\"uuid\":\"1a861c1a-7507-4865-b756-7411096fce25\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:13;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"4cbd0656-32c3-4f61-95f5-748ce38f5a52\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730199121, 1730199121),
(34, 'default', '{\"uuid\":\"d5b4153b-2667-4799-b665-5371bba66242\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:18;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"ec310c89-9146-4574-844a-36cd5355c890\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730199122, 1730199122),
(35, 'default', '{\"uuid\":\"5b131dda-7c39-41f8-96e0-8ee78497c69b\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:14;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"fd081aab-4262-4c59-baaf-90e058fb244f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730713042, 1730713042),
(36, 'default', '{\"uuid\":\"7b86948d-f366-48f1-a847-c360baef29c8\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"8932a49f-6cb3-4b10-b9c6-d2df9f9ceb34\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1730713044, 1730713044),
(37, 'default', '{\"uuid\":\"0c849c79-a02f-4b55-a0d8-e64798fc322e\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"fa408ce7-06ab-4279-b8f0-dbcd3127b63c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1731061660, 1731061660),
(38, 'default', '{\"uuid\":\"ad876b0f-faeb-411f-a31d-20ba5f149f6d\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"ccc0ae37-506d-44dd-aa1e-ac5a5cc6a4fc\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1731061661, 1731061661),
(39, 'default', '{\"uuid\":\"537c7e80-31e4-423d-98a1-cbb608091414\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"03b15923-9cf4-45b5-9ae5-9f9dc9cb15fb\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1731061766, 1731061766),
(40, 'default', '{\"uuid\":\"a6c4adb1-04aa-4e72-bd46-96768c9d0f43\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a27969c8-fd93-48a6-b682-3812006c9739\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1731061767, 1731061767),
(41, 'default', '{\"uuid\":\"99eeaa75-f7df-41e6-a43a-a1c33395cfe1\",\"displayName\":\"App\\\\Notifications\\\\BookingConfirmation\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:37:\\\"App\\\\Notifications\\\\BookingConfirmation\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"tourist\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"aed7c4a4-1342-4b7a-91f0-f7ae6f94a41f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1731061819, 1731061819),
(42, 'default', '{\"uuid\":\"a04336c5-8c2b-4c9a-b559-40f0e00753f9\",\"displayName\":\"App\\\\Notifications\\\\NewBookingNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\NewBookingNotification\\\":2:{s:10:\\\"\\u0000*\\u0000booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:3:{i:0;s:7:\\\"tourist\\\";i:1;s:10:\\\"experience\\\";i:2;s:15:\\\"experience.host\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b390f315-a0db-4869-a1f5-3760a6f21da4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1731061820, 1731061820);

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
(4, '2024_10_21_072234_create_experiences_table', 1),
(5, '2024_10_21_072235_create_bookings_table', 1),
(6, '2024_10_21_072236_create_payments_table', 1),
(7, '2024_10_21_072236_create_reviews_table', 1),
(8, '2024_10_21_072237_create_reported_experiences_table', 1),
(9, '2024_10_21_072238_create_subscriptions_table', 1),
(10, '2024_10_21_072256_create_notifications_table', 1),
(11, '2024_10_27_013042_add_photo_to_experiences_table', 2),
(12, '2024_10_27_013938_add_photo_path_to_experiences_table', 3),
(13, '2024_10_27_022113_create_contact_messages_table', 4),
(14, '2024_10_28_124902_create_settings_tables', 5),
(15, '2024_10_28_160409_add_settings_to_users_table', 6),
(16, '2024_11_08_091717_add_user_balance_to_users_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` enum('paypal','mobile_money','credit_card') NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` enum('pending','completed','failed') NOT NULL DEFAULT 'pending',
  `transaction_reference` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `booking_id`, `payment_method`, `amount`, `status`, `transaction_reference`, `created_at`, `updated_at`) VALUES
(3, 26, 'paypal', 30000.00, 'completed', 'MOCK_TRANSACTION_VATRAQ2DGW', '2024-10-28 23:56:17', '2024-10-28 23:56:17'),
(4, 27, 'mobile_money', 40000.00, 'completed', 'MOCK_TRANSACTION_3KQALEVPCD', '2024-10-29 08:37:50', '2024-10-29 08:37:52'),
(5, 28, 'credit_card', 3000.00, 'completed', 'MOCK_TRANSACTION_KLGBFHWCZI', '2024-10-29 08:38:44', '2024-10-29 08:40:54'),
(6, 29, 'mobile_money', 12332.00, 'completed', 'MOCK_TRANSACTION_LCGJFMAB2O', '2024-10-29 08:44:06', '2024-10-29 08:44:06'),
(7, 31, 'mobile_money', 1234.00, 'completed', 'MOCK_TRANSACTION_YB8ZBGCQHQ', '2024-11-06 10:27:09', '2024-11-06 10:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `reported_experiences`
--

CREATE TABLE `reported_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `experience_id` bigint(20) UNSIGNED NOT NULL,
  `reported_by` bigint(20) UNSIGNED NOT NULL,
  `reason` text NOT NULL,
  `status` enum('pending','resolved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tourist_id` bigint(20) UNSIGNED NOT NULL,
  `experience_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `tourist_id`, `experience_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 5, 'this thalls jlajitho jrihorae', '2024-10-28 03:24:54', '2024-10-28 03:24:54'),
(2, 1, 17, 3, 'this should be a long one for sure ', '2024-10-28 04:54:29', '2024-10-28 04:54:29'),
(3, 1, 17, 3, 'i was not around for the trip !! ', '2024-10-28 08:24:45', '2024-10-28 08:24:45'),
(4, 9, 18, 5, 'so nyc and i enjoyed it alot', '2024-10-28 09:11:54', '2024-10-28 09:11:54'),
(5, 9, 18, 5, 'Hope it will be a great show ', '2024-10-28 09:23:58', '2024-10-28 09:23:58'),
(6, 1, 17, 4, 'GOod yes yes very ', '2024-11-08 09:46:18', '2024-11-08 09:46:18');

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
('0lrAL7UPpMo3hnxYsZWIqaVb8zdNzuhGKOWywnFF', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0hmWWg0UGFTZm5CSGtEclY4cTdGa01XbmZjZFBDekhXdXQyVlV6NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736410460),
('2A9KKXmsTPP9LT1BVWHfJG8jT2SDlt7qNqpXk2jO', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFRWUEpwdnYzTkNOUFpLQld1Z3RtQllBbDJTdTFhZU5SWGRJdFF1MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737435093),
('2qNu9Cr5ukANySH6LJRmVZRNbH7AO85xmyEqLWSW', NULL, '104.152.52.72', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGd6cGpQeTRuaGRCMjk5VWl3a1lTTG4yOG1BcUlFcWI0UmtaNW14USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737217567),
('3jYgyS3I2jwaCAlDJLyiom1lnSX8SGCJsBmpqC8G', NULL, '104.152.52.60', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmVIN1NTT1FCTWtTWHB0QzNyVkx0NFRiMjRDVURYVkpNbFMySzdQcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736011185),
('3Vpeu2QD4xvQr8MhAsoYYGW3NkR1ClwfhpNRwlZw', NULL, '139.59.35.251', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGUzT1pvU0FISlNzYVd3TnlRZEUxVnQwWXN6ejZ5bHRsVTJxbVJveiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738038169),
('6RFIcWDbOaQPoIeTheyXE3VU7TMwWUz8gNMkWtW8', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidjZXUk1Vd3ZkeDMwUktYTGlucUlpMU1GVzBZRUpwcDVXcGM3bkt5RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736473798),
('9xqUXedneLplgIIo62dL9kozsOhAPLcb6ppBd9As', NULL, '106.75.146.146', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjhNNHhBSUJSWnVRTWVMY1VNQjlqRk9ob1FtSnUwQmV5TXFDdUE0NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736194345),
('AISkFiSfiWV2ND1rBW5JVKH8HJoSKA0UVXRij8wE', NULL, '104.152.52.55', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFhKNUVaaHhiMmVVR09Cam1rNG5OblVxSW4yRGR6ODVoOVlLN1UxcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738442266),
('Bb5cBDoIrcfUcTN3Cj2oKEIIyjccUVjGNnJ75T37', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFN1ajJPR0dSM1p1anVJa1J3Z0pqbmVsSEg0U1R1RFN4YjZuTWtaaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738522963),
('bbF69OoRqsmB4KfZlBgaDABFFiqownMwCanTd1jV', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibFJNdVAxNkFkNGx3cGRBWEFsMGhmelZQMVZGSU5SdndMaDh5SFpqNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738405882),
('bdUawOojJ18bO0wpHSZP77Uhtp9LQz82GorPuPSk', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieWsxMnl4TVdOYktZMzZjOTlkWlB6R1VJakk0eURzUnIzY25aT1ZFMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1735988656),
('Bh514ii0AZmywceJJEOy9EsDsXfO614QNqofE3bs', NULL, '35.206.115.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.3; rb.gy/qyzae5) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXAyYzVIRnMzM3gzTlpRQTVGcXdIWVBQN3F5a2RiTU15cjJ0RFI3OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUvYm9va2luZy1kZXRhaWxzLzIyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737876088),
('BI0lWHVNF5bYb8iByVOtHR78JIYuMxG2BBuqBSeR', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTUppeHhyNTV0b1R3N3ladnJsb3JMUjdjZk1qcmhzeGZLSEJrbmVEWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738315272),
('BoCDrtlTjsrXHfo0El90jnbukwNL14NemBQYo85a', NULL, '101.199.254.200', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFJlN2Y5N09XME50REpwdlJpSkVEeDJQNTFPWjJNSnBzQTVzblFGQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737000993),
('BP0R1mj8ajd1DHjp2oxMEPF1saF2Zku9xKd5mKso', NULL, '35.206.115.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.3; rb.gy/qyzae5) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHdQbnZHY0RRZzNSOFFhWXNpR3o1OUw4S0ROU2JoNFJhd2ZBUUxBSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737876082),
('cpnTHBMojzNXogV8oCJXsw4NdD0IB4qrB6aY0eqg', NULL, '106.75.154.180', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWlaaUxMWG9CUlNWdERKM1hWdE9WMlJvU2lUczlJank1WHRkOFNseCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736017806),
('Db6VzcIlIIqhz9bWCs3jryGeoW9gRzAcsdQYFzot', NULL, '106.75.175.179', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWE4dkpsM3F6bGpidWZCN3NTcUVHV054ekVKUjdIS0pjS2FCQkE2YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736174544),
('DIaEToa8tjG9xQ50dolePsFSYgA1NBEotQjLxi7n', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS09mb1VZdG9YTDJreDFnU2g0NjNOOWttVDd5c3NvaTRpMEZNajdXUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736932238),
('FaCCL9YhZR4ZmXRPlmoKGF1OKU5OEHQgn3niePxa', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVlZYkxGcHloRTVtU1ZzQlFiaFk0UDE4eVM5VTh0dDlmNlBmS3JOayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736641868),
('fry4xEznLIwfSOblQaX1u5u6hHmnujRLZpGuRh2k', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOWN0NkZBckZoU1NNVmVwMHNXRkMzRUtDRnFxS0RRSGphUXQ0aDJ3QSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736236573),
('g0CNH68RsqzYAL5jih35dCt3RpNKKX09chEtwBSB', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia3pIOHk4SERMYnVuRmxNU0RhNTUwV2x6TENmTEVzbFh0TmdqRThBUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736847890),
('ggYyKgO2dRLFmVHODwceSO2GzhqDZBdbUHA4I6pZ', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSG9qNTZBczh6WUp0U0NhOEFmSE95c2hEUFVWZXJQRFhXY0VpUGk5bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736563462),
('gUOUHRak2AyvZ0qLR1saUJAiMylYGJsMr9s7PGLj', NULL, '138.68.183.201', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHJXMTJ2R3R0R3g2OTNoN2VqRmJoc205TVE4SXFndG9hd1VNazVXZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735954935),
('HI3MHP0h7JLvl3T5Bl0np4Crug22FQzHqde8JFLm', NULL, '35.206.115.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.3; rb.gy/qyzae5) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlFDZFdUWVYySWdsRnBLdWdNdEhIZWdqd3NZckRDYUthd2NIUnZ2UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUvYm9va2luZy1kZXRhaWxzLzE1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737876087),
('Hj3tOkS0wINzrBsC9L147i0CI8Om9oxlHoIJHxs6', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMkJHMnZMTkM2UE1WNnFlb0g0bVBRdjRqdm82aXhrTDZlUm5KQ0JTOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737773190),
('Hk7sGVeHVhuQeRnTUfBRihsUkh10jqh7YHna8PM9', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWNUcTRvM0VZYm1ldFRFMzFBWWxoY0tQOGpQajRhZE55dmJwYXRZNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736066653),
('i426uTCsPSmepc1vv8FCpxAqAO7900dZbguYpdmt', NULL, '104.152.52.73', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWRGcHdKUHlkNTU2Vkp1ODFxNU5FUWZ2UFpwWVdJRnZ3bHI5dFlXOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737834784),
('ivAhdnBfHTdoyoAqJHJlS8qKf1gWdXfC3XVU75D0', NULL, '64.225.8.200', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:106.0) Gecko/20100101 Firefox/106.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS29SR2JnOW1iTWJ5RjN0OGJoN3hMdHlKa2NFT3FyMXBJTkZXc2RGMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737885764),
('JCmSnmzoiqYEr9XzjZAkRX9Sz77ROFTEbKiPWvdc', NULL, '2a02:c207:2019:4610::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU90ZndxNFlWTWZ5RFZYblNaTVRhMkNsN0tqVmR4cldGbURwUlZvdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736367133),
('jcYH0AAkpLPGVJi1qmfhBMTSWhZb8yvrvvfFFNcT', NULL, '2a06:4883:9000::a7', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEtkUUVlQWhnV3Z1UUxrdndxQnlXZnNFbUJuc3BVa2hZRThOTXI4cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736998067),
('JX2uNZTHDimYSeKnD1HYHCSvcBDMqsv4KMa6Q4BJ', NULL, '46.17.174.192', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTkxV2ZCY0RIajJvUGFkclZxM3lJcmt2V1E0SzI3QmlTRHhGTVB3ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736507565),
('KECwV8SW0tvmWhJ0ZCyFRqo4HtsBmixqB97BcIRv', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN1JVV214Z2hGd1ROVk1ySndnRHBSeW5tcUh0RWh2Y055ek8wUVJiSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738036465),
('kMfHQrXYdHCb7VuEsmuyrSlqIzQEjBvT46aIPaLv', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidGV1Nnk0aHNTanJCZjZoaDY0Zk41azlTM21xMDR6S2d3eGNLVzlzVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738545409),
('KSxVWG8DqrCpPfbNEZSx6QUcTLYE4IT00wM4O4Pz', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZldJMWlyejV2dkhOdTZOOEd2Q1d2MnRoM2k5QzZFazQ1Q0xCQUg1dSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736316666),
('LNMOOmJ6H5qY93TBA85TEDDvw0pHS805D4FaTtvC', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGE2TVIwempDR3d4aE5tTkhFdml5MUtYRE12RFFUMG5Gb0hreHNZTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736213983),
('lNvxhDI8F2FB9DqOaYoCoS1vftCXZKpfbTY4Xiim', NULL, '178.62.201.49', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmlnYTA3Wm9OUlhYc1FOUmRkUThMTEVGOXo2WGY0MTZwNWxWNWdpTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737885745),
('Lt8QWI05qETqpMPiDS9gOK8GmtenlGACEEsLxZLJ', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN3hGc2toVmo2YUZycTZtOUlWWDBSaFJhd3I2MTZkbmlDYk9kT2kxTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738113277),
('M8LfcUnAhYwcfXEinbh3qINTYFPgRmNhI8TPZ9ve', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1h5aW82Nm5CQ2Z2TlNPTXNhdm54bmk5WnBnV0dVZjVkdWxOTjdyVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737259656),
('m8tqFaxPC4XiGsWRAlyrqVBZo3qJeWzW09HSlXO4', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZVlWSXVjcTFtR1dpTksweDZIYk1QN0xGalRSQWN0V3JydVJ4TFlmZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736141192),
('Nd8fcUMsI81KCfOW6fQVHYBa6hgR19fOdMcsvdwo', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibmtkVkVrS2l5NkdPeXFOeDZJbk9iYlY0aEJWWDBlUkpJdTcxUHdWRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737602798),
('Ne6ANzu3Sw2tU4Bkngfx0l4nMq1pp4v8IIHIuPDl', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaDgyZEJlNFU4VTE3ZkJ6T2daR2lkNHZFUGYxWGh2S3JPd1JvUUJvMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737868392),
('ngxCc4E3D5M5I5Djc8lPbKKsIJb3dtHhKXm0AmMR', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib2MxU2lYTzF4cTBQU0tHWGxSZmZmMWdYdU0xNUlVTTZtOEZsMEdxdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737160739),
('Ni0cj4aHYvCDVTt7TJSv8NwBx4TyuBJGFPfl3B9Z', NULL, '195.178.110.164', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G900F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjJ2SDBYdHNmaVdOSkZhNlVEc2pHU2xGSWVGbVNuNnpYeDlzam1RMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737127719),
('npx906hvk09U4GSbGEEP0xet5uI0h4aG8kbTPQnb', NULL, '41.210.154.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2pBb2p2WWRMUHpPQzJqOWNsRHdPcGt1QlhhTmhJU2VYa3R4TnVOZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738566706),
('Od5pfem64TTX4xgrVfE7vozKA0EhwyUaCuBgtk51', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUFVoazJweTlGcWkyUDFWSE13eFF3MU9BZTR1d3p4Q0pFVkZPN21RVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736045648),
('OTkFSMwyW3OSuwKJTAKpeHZzMMuyDp10cXfxIl8w', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGFOb3piY2V1NUlvUDZvTmhITDhtSE5GOXlmUHdqVGJVVXY2MWZ1aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738203996),
('OYm0loXqqjoEQz4bb3qgvEcT7U2megVkHEeBMNtm', NULL, '41.210.154.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEZsemhITWVsd3lNMEpXOHF3a3llQk9oaktzMmVsVXZ0UGljVjlkNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vcGVudGVzdHByby5zaXRlL2Vjb3RvdXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737180241),
('PIN9Ij9kDTJ9CN4DC4Iq0VLw1PHKMTn3MvCQzzdi', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ2VGd0ZOUEFLZUhLSXdYbXhWM1F4VTBheHkwMGFaTXltZXBMa3JJMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1738485194),
('Qi0WC3M4VdO6HTJ42014uhITfm6e3LYE5DA2VfgC', NULL, '193.41.206.36', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWN4T0tudGtUYXBkNTFCMGZ2SjRpUHVqNWRRbzRKS1B4MzFLOHU5RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1738296164),
('QOzn9VvXx8UAHah2uvLqagy1O9QUAYZBMyvsui0O', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZjc3QTl5RlNjVFdEMk15ajViTGoyU3VvS1YxbHRTMzZKY3BjQ3dUWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737437837),
('rEigEjvE3SJcTYRH23SPWkkBGPSjQyHvSov1gHU2', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS3p6M1gxVWlZQ3Y4Y0t4UngyZ0lBVnBHQ3RzT1M5dEpzYzRYa1JYSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737706867),
('rpxozqv0ayENeaegu15vBBc7QZRy0LUi5ruku4xw', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibEhvelV5VVp0YlZCeGtReU1SVUhKbHlxU0ROQ3Y5dGxod3ZGS2JxeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737947837),
('TlL9OZyVp2qgiS51i2apkevzTLwA6ET142sayZvo', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiejNwSkx0WVdpdThDU2I2bUVtczJ4dGhrdFp4aHpkenR0U0Vwc3lnZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736767867),
('troHgUgfQklMKRgP7yuEC2C8EB5vHHydA98LmzLA', NULL, '188.166.52.129', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3dTOUc0dktEYUV0ZzNZTUZjVTlsUzJ6MlZZVHdOMmxVc29rdGswbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736821176),
('U0j4dXi32gXXqb9LXxeXvnCqAxQdWHrqsCC0JF9o', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQm1SVWcxN0R6Z05pNVBUWFFPMVhHUEN6TU1Za1VIN0xMeDhSNGliRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737081480),
('u6Dnekk4VgqDF2UzwdzPukGsPZWjsNOSKvuEavDB', NULL, '104.152.52.72', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmpjVXJ2eXd5d2o1TG10M0tCYTBCRG1nV3R2UnFlWjdWVjF3SUxCSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736612475),
('whq9v492yhXIxIOLyXChcBbfhlZgw89DtvgB6lhM', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieEVDREJ3MHVkTzF5YmlLZEl4S0RIUWJiTk1ycFpFNWJBMTBPclJsWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737008502),
('xqq6BoME6oMHhFkGN5eT36wYvVXvU6xNC4oAiJOr', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVGVwZlNRTEFEdGoyZk01Z3F3QUhMWjJnaDhhTU9yV3NVcUU5bjc1VCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737510059),
('Y7SRithvE4gSdejtZqGDaSyPVt4JUyGExvpalotA', NULL, '34.252.76.190', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFNQQUF0UkJYSUkzYlJzalN6MGJXbVdnS2gzdmtzQUZyNVlwUWZIUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736181380),
('YPEOUEEtXNAIG87fdyz47bP8qIwxr7yna5mZw3Pz', NULL, '2a06:4883:5000::61', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHpDem1RajNtT2pRaUl3SUJNV1JaaVg2SUxZZlZCQXE5Sm45cWRHTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736922746),
('ZUceLdoctdfB0EwQtxYR8ArY7W1Z1Msjq9tITtdR', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYjNNZzI3TDYySm83bWpsYmhyR0R2dDFMRnltNGlhSXVsWjYwdDVPbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737344106),
('zzJWAeFfTmcXf8XqX2JTv8ovjv9IwEma0MiXkCAg', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWRjTzB4NUVTb1dGRXNRdmtuZXhncnhxT092QjQ2Y3VpeWl1VVkxVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWNvdG91ci5wZW50ZXN0cHJvLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737300310);

-- --------------------------------------------------------

--
-- Table structure for table `settings_tables`
--

CREATE TABLE `settings_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host_id` bigint(20) UNSIGNED NOT NULL,
  `plan` enum('basic','standard','premium') NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('active','expired') NOT NULL DEFAULT 'active',
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
  `user_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `password` varchar(255) NOT NULL,
  `role` enum('tourist','host','admin') NOT NULL DEFAULT 'tourist',
  `phone_number` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme` varchar(255) NOT NULL DEFAULT 'light',
  `font_size` varchar(255) NOT NULL DEFAULT 'medium',
  `language` varchar(2) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_balance`, `password`, `role`, `phone_number`, `profile_picture`, `bio`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `theme`, `font_size`, `language`) VALUES
(1, 'Ambrose Alanda', 'ateraxantonio@gmail.com', 10766.00, '$2y$12$qD/IXU/AUwvyth0clWoFCuGzcF5b6wcTpvQs6jqyGMYNP3R09IRGe', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-23 11:52:30', '2024-11-08 10:29:25', 'light', 'medium', 'en'),
(2, 'Peter Claver', 'pitamcclav@gmail.com', 0.00, '$2y$12$TcKa2NDVZvfMUn8r6DqDquH8UrEHuFt2BnqzZingF3Ozkwprx2T5y', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-24 07:32:34', '2024-10-24 07:32:34', 'light', 'medium', 'en'),
(3, 'PETER CLAVER SSEKITOOLEKO', 'pita@mailinator.com', 0.00, '$2y$12$fjT.pge5d1iZEkl76BoxSOEV2AnzAMb45FQQgZky3pu3JgHs72N9q', 'host', NULL, NULL, NULL, NULL, NULL, '2024-10-25 08:59:11', '2024-10-25 12:50:05', 'light', 'medium', 'en'),
(4, 'admin', 'admin@mailinator.com', 0.00, '$2y$12$xnXO2KfCB1hXoEEendPAl.WFBKttRx5wGH0qTHnKvKN0kh6axNy5K', 'admin', '1234567890', NULL, 'This is the admin user of the application.', '2024-10-25 09:27:25', 'WriIYTYvDM0UtDhLx40gOzukmeVuoYUs3WjHNW0jEkdqX5DKMHi3b2OP6ZbT', '2024-10-25 09:27:25', '2024-10-25 09:27:25', 'light', 'medium', 'en'),
(5, 'Kabenge', 'kabenge@gmail.com', 0.00, '$2y$12$xaY05aq8x8lpzWN/OlG0HOESrYCW8Y5UHiifMk5a7nL/ERzsCxFCa', 'host', NULL, NULL, NULL, NULL, NULL, '2024-10-25 12:54:02', '2024-10-25 12:54:02', 'light', 'medium', 'en'),
(6, 'jude', 'jolly@gmail.com', 0.00, '$2y$12$Rb30rXf/sLGWIeaoYFoTFu43CC0Keoy6rGeOJFh9zREZ7jTIxFloC', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-27 10:35:09', '2024-10-27 10:35:09', 'light', 'medium', 'en'),
(7, 'joo', 'kirabojellyrollings043@gmail.com', 0.00, '$2y$12$X4XP7NK8T1VTnAwbwahwv.VqLtA.ojIrId73KMSG9.g82P8NWhchq', 'host', NULL, NULL, NULL, NULL, '8TdrpwPeVDhIl1jgbekFadoPla0Q8fiWuF3GmyoB5h4dDbSmODvzRb8CeOML', '2024-10-27 13:59:48', '2024-10-27 14:01:35', 'light', 'medium', 'en'),
(8, 'Steve Steven', 'steve@gmail.com', 0.00, '$2y$12$rrtFwFP6XWtNAPaZz1hoOOLboQl2UVE8y9w5LnWrPPnPwXH0qresK', 'host', NULL, NULL, NULL, NULL, NULL, '2024-10-28 08:49:41', '2024-10-28 08:54:00', 'light', 'medium', 'en'),
(9, 'user', 'user@gmail.com', 0.00, '$2y$12$yAHETRfcl9lXpNLEoa5OWeB3Mv7YeMFluGIkAzweREfU9BsF93ctu', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-28 09:06:47', '2024-10-28 09:06:47', 'light', 'medium', 'en'),
(10, 'spongebob', 'spongebob@mailinator.com', 0.00, '$2y$12$xWcqh4ZeJw.l7tZD4l8UEeeD.6QVdmBr2OcX2FI.PWiu8XS.NJuZu', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-28 09:19:40', '2024-10-28 09:19:40', 'light', 'medium', 'en'),
(11, 'Shivan', 'shivan@gmail.com', 0.00, '$2y$12$D8RPsZWaYGWzWlvHft95UeYPF0UudvPdRY1bQgy/buVi9XkvnvLZG', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-28 09:38:52', '2024-10-28 09:38:52', 'light', 'medium', 'en'),
(12, 'nessa', 'nansumbamaryvanessa@gmail.com', 0.00, '$2y$12$v5H98Tww.Kx43IbkS7wsOuagnM70TAJWhgEDZ29pEQRLhvgOpNn/m', 'tourist', NULL, NULL, NULL, NULL, 'AA1eYdjiaW6xpp6OmSvmXt9aIqEyR2KjdfSWZqtaDLFyCOG3vHXWSjT7rkFX', '2024-10-28 09:31:47', '2024-10-28 11:09:36', 'light', 'medium', 'en'),
(13, 'owen', 'owen@gmail.com', 0.00, '$2y$12$zhKhhZa6gF6sFXnSF/PnV.5gUnZgvwc2vn53OvXzlqY5BdKx8Hndm', 'tourist', NULL, NULL, NULL, NULL, 'HNuAEbOultGIZm8SI5XlvLhiQBuU2rzb0Lrsu5fpYL0aTIaHv7mKjGzYyXMZ', '2024-10-28 09:43:31', '2024-10-28 09:43:31', 'light', 'medium', 'en'),
(14, 'nessa', 'nessa@gmail.com', 0.00, '$2y$12$yhoV18xO4tpcHcX/2zQ4A.DOrVGOTkZiUCOvCuHpL2oeK8NHoj19m', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-28 11:55:33', '2024-11-06 09:29:02', 'light', 'medium', 'en'),
(15, 'gum', 'gum@mailinator.com', 0.00, '$2y$12$dhUJdHwrb3MLBh.MBjeT1Op4R7yszcjphzkaBzlnaZ2cSxqX9ysB2', 'admin', NULL, NULL, NULL, NULL, NULL, '2024-10-28 13:43:08', '2024-10-28 13:43:08', 'light', 'medium', 'en'),
(16, 'rev', 'rev@gmail.com', 0.00, '$2y$12$leLXmbHsi82Oy0icydM71.2QftTCjYLKQMJy7Qb8ApPopxcv2fDPe', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-28 16:10:46', '2024-10-28 16:10:46', 'light', 'medium', 'en'),
(17, 'mary', 'nessam@gmail.com', 0.00, '$2y$12$a8827o1rKU8pQuvZTuia9.ttgHcNvRa3.AUqYiaUz0OwWicciYKgi', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-29 06:53:37', '2024-10-29 07:41:01', 'light', 'medium', 'en'),
(18, 'host', 'host@example.com', 0.00, '$2y$12$0xxJLKxIzKjS.pDYgLsPkeZO6bH/rrLYuaHKPp87jmd7McwSPVf7.', 'host', NULL, NULL, NULL, NULL, NULL, '2024-10-29 10:45:12', '2024-10-29 10:45:12', 'light', 'medium', 'en'),
(19, 'owen-james', 'owen.james@ddamulira.com', 0.00, '$2y$12$N4sa7v1KY3RToA7JCkWWPuSsdXw4NJUqoJqoYX0IT8DB/lhI.Z3PS', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-10-31 18:12:31', '2024-10-31 18:12:31', 'light', 'medium', 'en'),
(20, 'Ambrose Alanda', 'alandaambrose@gmail.com', 1000.00, '$2y$12$EaNdA4escsGxjxqQa9ATZOIoeiMGT8ntWFJOx.W7GxvDzO4cLhqxS', 'tourist', NULL, NULL, NULL, NULL, NULL, '2024-11-08 10:53:29', '2024-11-08 10:53:39', 'light', 'medium', 'en');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_tourist_id_foreign` (`tourist_id`),
  ADD KEY `bookings_experience_id_foreign` (`experience_id`);

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
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_host_id_foreign` (`host_id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `reported_experiences`
--
ALTER TABLE `reported_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reported_experiences_experience_id_foreign` (`experience_id`),
  ADD KEY `reported_experiences_reported_by_foreign` (`reported_by`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_tourist_id_foreign` (`tourist_id`),
  ADD KEY `reviews_experience_id_foreign` (`experience_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings_tables`
--
ALTER TABLE `settings_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_host_id_foreign` (`host_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reported_experiences`
--
ALTER TABLE `reported_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings_tables`
--
ALTER TABLE `settings_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_experience_id_foreign` FOREIGN KEY (`experience_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_tourist_id_foreign` FOREIGN KEY (`tourist_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_host_id_foreign` FOREIGN KEY (`host_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reported_experiences`
--
ALTER TABLE `reported_experiences`
  ADD CONSTRAINT `reported_experiences_experience_id_foreign` FOREIGN KEY (`experience_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reported_experiences_reported_by_foreign` FOREIGN KEY (`reported_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_experience_id_foreign` FOREIGN KEY (`experience_id`) REFERENCES `experiences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_tourist_id_foreign` FOREIGN KEY (`tourist_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_host_id_foreign` FOREIGN KEY (`host_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
