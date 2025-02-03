-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 03, 2025 at 09:54 AM
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
-- Database: `u864532666_ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `Event`
--

CREATE TABLE `Event` (
  `id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `date` datetime(3) NOT NULL,
  `price` double NOT NULL,
  `capacity` int(11) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Event`
--

INSERT INTO `Event` (`id`, `title`, `description`, `date`, `price`, `capacity`, `image`, `createdAt`, `updatedAt`) VALUES
('cm3v6q4lb000199gfsn7g661g', 'The Gathering', 'Our The Gathering', '2024-11-30 02:53:00.000', 0.1, 15, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3', '2024-11-24 05:55:04.661', '2024-11-24 05:55:04.661');

-- --------------------------------------------------------

--
-- Table structure for table `Ticket`
--

CREATE TABLE `Ticket` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `eventId` varchar(191) NOT NULL,
  `purchaseDate` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `qrCode` longtext NOT NULL,
  `isUsed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Ticket`
--

INSERT INTO `Ticket` (`id`, `userId`, `eventId`, `purchaseDate`, `qrCode`, `isUsed`) VALUES
('cm3v6rjyl000399gfcj1gfr0a', 'cm3v6ncno000099gflfj14h9r', 'cm3v6q4lb000199gfsn7g661g', '2024-11-24 05:56:09.338', 'data:image/png;base64,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', 0);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `role` enum('USER','ADMIN') NOT NULL DEFAULT 'USER',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `email`, `password`, `name`, `role`, `createdAt`, `updatedAt`) VALUES
('cm3v6ncno000099gflfj14h9r', 'ateraxantonio@gmail.com', '$2b$10$HSDkRCtXSW1wMJ74rEA1o.JgG/KplPTV2eG0jje5PWtEDn3DSRhMu', 'Ambrose', 'ADMIN', '2024-11-24 05:52:55.764', '2024-11-24 05:52:55.764');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('f5e3c441-421b-4020-b05c-1f6d594b2da0', 'efac3ce624769296dd00426986ad3bef78d989c8cd13f1c5dd614763582b0bbb', '2024-11-24 05:50:51.103', '20241124054832_init_tables', NULL, NULL, '2024-11-24 05:50:50.226', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Event`
--
ALTER TABLE `Event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Ticket`
--
ALTER TABLE `Ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Ticket_qrCode_key` (`qrCode`(1000)) USING HASH,
  ADD KEY `Ticket_userId_idx` (`userId`),
  ADD KEY `Ticket_eventId_idx` (`eventId`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Ticket`
--
ALTER TABLE `Ticket`
  ADD CONSTRAINT `Ticket_eventId_fkey` FOREIGN KEY (`eventId`) REFERENCES `Event` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Ticket_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
