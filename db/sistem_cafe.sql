-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 06, 2024 at 05:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_cafe`
--

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
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'Minumann', 7, '2024-07-11 07:16:38', '2024-08-01 08:10:53'),
(2, 'Makanan', 4, '2024-07-11 07:16:38', '2024-08-01 08:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `mejas`
--

CREATE TABLE `mejas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_meja` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mejas`
--

INSERT INTO `mejas` (`id`, `no_meja`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tersedia', '2024-07-11 07:16:38', '2024-08-01 07:22:16'),
(2, 2, 'Tidak Tersedia', '2024-07-11 07:16:38', '2024-07-21 06:55:49'),
(3, 3, 'Tidak Tersedia', '2024-07-11 07:16:38', '2024-07-22 18:11:39'),
(4, 4, 'Tersedia', '2024-07-11 07:16:38', '2024-08-01 07:56:29'),
(5, 5, 'Tidak Tersedia', '2024-07-11 07:17:31', '2024-07-22 09:44:01'),
(6, 6, 'Tidak Tersedia', '2024-07-21 06:43:58', '2024-08-01 07:44:41'),
(7, 7, 'Tidak Tersedia', '2024-07-21 06:44:07', '2024-07-22 18:31:32'),
(8, 8, 'Tidak Tersedia', '2024-07-21 06:44:13', '2024-07-21 07:40:19'),
(9, 9, 'Tidak Tersedia', '2024-07-21 06:44:25', '2024-07-22 22:25:26'),
(10, 10, 'Tidak Tersedia', '2024-07-21 06:44:32', '2024-08-01 07:37:31'),
(11, 11, 'Tersedia', '2024-08-01 07:08:05', '2024-08-01 07:08:05'),
(14, 12, 'Tidak Tersedia', '2024-08-01 07:11:45', '2024-08-01 07:11:45'),
(15, 13, 'Tersedia', '2024-08-01 07:18:56', '2024-08-01 07:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `menupesans`
--

CREATE TABLE `menupesans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesanan_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menupesans`
--

INSERT INTO `menupesans` (`id`, `pesanan_id`, `menu_id`, `qty`, `created_at`, `updated_at`) VALUES
(12, 1721411160724, 3, 1, '2024-07-19 10:46:05', '2024-07-19 10:46:05'),
(13, 1721414811344, 3, 2, '2024-07-19 11:47:03', '2024-07-19 11:47:03'),
(14, 1721570108724, 3, 1, '2024-07-21 06:55:49', '2024-07-21 06:55:49'),
(15, 1721570108724, 35, 1, '2024-07-21 06:55:49', '2024-07-21 06:55:49'),
(17, 1721572812395, 25, 1, '2024-07-21 07:40:19', '2024-07-21 07:40:19'),
(20, 1721668958352, 25, 1, '2024-07-22 10:22:49', '2024-07-22 10:22:49'),
(21, 1721668958352, 29, 1, '2024-07-22 10:22:49', '2024-07-22 10:22:49'),
(24, 1721698274131, 25, 1, '2024-07-22 18:31:32', '2024-07-22 18:31:32'),
(25, 1721712307746, 3, 2, '2024-07-22 22:25:26', '2024-07-22 22:25:26'),
(26, 1721712307746, 35, 1, '2024-07-22 22:25:26', '2024-07-22 22:25:26'),
(27, 1722440428172, 3, 1, '2024-07-31 08:40:33', '2024-07-31 08:40:33'),
(28, 1722523025560, 25, 1, '2024-08-01 07:37:31', '2024-08-01 07:37:31'),
(29, 1722523025560, 30, 1, '2024-08-01 07:37:31', '2024-08-01 07:37:31'),
(30, 1722523025560, 34, 1, '2024-08-01 07:37:31', '2024-08-01 07:37:31'),
(31, 1722523468092, 30, 1, '2024-08-01 07:44:41', '2024-08-01 07:44:41'),
(32, 1722523468092, 27, 1, '2024-08-01 07:44:41', '2024-08-01 07:44:41'),
(33, 1722524076769, 29, 1, '2024-08-01 07:54:51', '2024-08-01 07:54:51'),
(34, 1722524076769, 3, 3, '2024-08-01 07:54:51', '2024-08-01 07:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `foto`, `nama_menu`, `harga`, `kategori_id`, `created_at`, `updated_at`) VALUES
(3, 'foto_menu/miIEdXrHSnpWDXT7Gp7Ix7wqMVhidPtTUulMAcbZ.jpg', 'Es Kopi Susu', 13000, 1, '2024-07-11 07:16:38', '2024-07-21 06:42:43'),
(25, 'foto_menu/JEp6ZsPeWH5TZpUzysVXHSe4s6lFr0gXAYYtC91S.jpg', 'Americano (ICE)', 18000, 1, '2024-07-21 06:40:27', '2024-07-21 06:42:34'),
(26, 'foto_menu/al02vveeHYTzhcHQxGd0pjR8QaETNqVPF01jaAtC.jpg', 'Espresso (HOT)', 17000, 1, '2024-07-21 06:41:19', '2024-07-21 06:41:19'),
(27, 'foto_menu/D5Yhm5kHp38SPKjtNXrPREGJK79REHwx1BggJmGl.jpg', 'VIetnam Drip (HOT)', 19000, 1, '2024-07-21 06:42:25', '2024-07-21 06:42:25'),
(28, 'foto_menu/gs7JYiYvLjERRN2sjNYFiF96xyfkpSlXbAk7U6U1.jpg', 'Long Black (HOT)', 21000, 1, '2024-07-21 06:43:42', '2024-07-21 06:43:42'),
(29, 'foto_menu/i8KqNPSiGZDSl4apHPg5i7dvdPCPJ8nmPPwu0Xzj.jpg', 'French Fries', 15000, 2, '2024-07-21 06:46:19', '2024-07-21 06:46:19'),
(30, 'foto_menu/tSzM7HRMCGyGg1tUTPx5dWyPH8sPwkLTUc1doy74.jpg', 'Cireng', 17000, 2, '2024-07-21 06:46:36', '2024-07-21 06:46:36'),
(31, 'foto_menu/IAl8h7Y7jRM4z2fNUPhacQxmclYOnLdO7jUV8ve2.jpg', 'Lychee Tea', 23000, 1, '2024-07-21 06:49:04', '2024-07-21 06:49:04'),
(33, 'foto_menu/DDBNhHtlbgtEKtCa7NwgsDsN1whxdaqmfBhs9TM7.jpg', 'Matcha Lalu', 24000, 1, '2024-07-21 06:50:18', '2024-07-21 06:50:18'),
(34, 'foto_menu/zU2o63Itd9wXIvCbgMO4iFNhWdCkNWh85s586GHb.jpg', 'Dimsum Naga', 14000, 2, '2024-07-21 06:51:24', '2024-07-21 06:53:28'),
(35, 'foto_menu/o29rmAWk8G9pdqeiIpIRe9l0mAxYNLxEPj5pdy5p.jpg', 'Banana Coler', 12000, 2, '2024-07-21 06:52:19', '2024-08-01 08:58:24');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_20_034730_create_pesanans_table', 1),
(6, '2021_11_22_052146_create_menus_table', 1),
(7, '2021_11_22_055254_create_kategoris_table', 1),
(8, '2021_12_02_090701_create_menupesans_table', 1),
(9, '2021_12_02_092413_create_mejas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pemesan` varchar(255) NOT NULL,
  `tgl_pesan` varchar(255) NOT NULL,
  `meja_id` bigint(20) UNSIGNED NOT NULL,
  `Total` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `nama_pemesan`, `tgl_pesan`, `meja_id`, `Total`, `created_at`, `updated_at`) VALUES
(1721414811344, 'RIDWAN', 'Sabtu, 20 Juli 2024  01:46:51 AM', 4, '26000', '2024-07-19 11:47:03', '2024-07-19 11:47:03'),
(1721570108724, 'Afnan', 'Minggu, 21 Juli 2024  08:55:08 PM', 2, '25000', '2024-07-21 06:55:49', '2024-07-21 06:55:49'),
(1721572812395, 'Mas Anies', 'Minggu, 21 Juli 2024  09:40:12 PM', 8, '18000', '2024-07-21 07:40:19', '2024-07-21 07:40:19'),
(1721712307746, 'asep', 'Selasa, 23 Juli 2024  12:25:07 PM', 9, '38000', '2024-07-22 22:25:26', '2024-07-22 22:25:26'),
(1722523025560, 'Asep', 'Kamis, 1 Agustus 2024  09:37:05 PM', 10, '49000', '2024-08-01 07:37:31', '2024-08-01 07:37:31'),
(1722524076769, 'Syahrul', 'Kamis, 1 Agustus 2024  09:54:36 PM', 4, '54000', '2024-08-01 07:54:51', '2024-08-01 07:54:51');

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
(1, 'Japskuy', 'japskuy@gmail.com', NULL, '$2y$10$Z3CH02Ryk9QC1RtFDgPdtOLlRPDI/.UixLkIXF5Hzsj940VR04KVC', NULL, '2024-07-11 07:16:38', '2024-07-11 07:16:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategoris_nama_kategori_unique` (`nama_kategori`);

--
-- Indexes for table `mejas`
--
ALTER TABLE `mejas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mejas_no_meja_unique` (`no_meja`);

--
-- Indexes for table `menupesans`
--
ALTER TABLE `menupesans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mejas`
--
ALTER TABLE `mejas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menupesans`
--
ALTER TABLE `menupesans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1722524076770;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
