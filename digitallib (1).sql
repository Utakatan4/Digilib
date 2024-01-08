-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 03:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitallib`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosbim_ta`
--

CREATE TABLE `dosbim_ta` (
  `id_dosbim_ta` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(255) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nip`, `nama_dosen`, `users_id`, `created_at`, `updated_at`) VALUES
(1, '198009212000032002', 'Singgih', 2, '2023-09-06 23:58:19', '2023-09-07 06:58:19'),
(6, '197009212000032020', 'Test Dosen', 16, '2023-09-12 00:01:53', '2023-09-12 07:01:53');

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
-- Table structure for table `file_ta`
--

CREATE TABLE `file_ta` (
  `id_file` int(255) NOT NULL,
  `kode_file` int(255) NOT NULL,
  `judul` text NOT NULL,
  `fileup` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_ta`
--

INSERT INTO `file_ta` (`id_file`, `kode_file`, `judul`, `fileup`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'RANCANG BANGUN DIGITAL LIBRARY TUGAS AKHIR MAHASISWA JURUSAN TEKNIK ELEKTRO POLITEKNIK NEGERI PONTIANAK BERBASIS WEB', 'C:\\xampp\\tmp\\php671E.tmp', 1, '2023-09-14 03:14:27', '2023-09-14 03:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `prodi_id` bigint(20) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama_mahasiswa`, `prodi_id`, `users_id`, `created_at`, `updated_at`) VALUES
(5, '3202016119', 'Test Mahasiswa', 2, 18, '2023-09-12 00:22:53', '2023-09-12 07:22:53'),
(6, '3202016065', 'Ananda Putra Syafaat', 1, 19, '2023-09-12 04:25:31', '2023-09-12 11:25:31'),
(7, '320201608', 'Meyrizka', 1, 20, '2023-09-13 19:57:04', '2023-09-14 02:57:04'),
(8, '3202016045', 'Jaka', 2, 21, '2023-09-13 19:58:08', '2023-09-14 02:58:08'),
(9, '3202016045', 'Munawar', 2, 22, '2023-09-13 19:58:48', '2023-09-14 02:58:48');

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
(5, '2023_08_20_155752_create_upload_models_table', 1),
(6, '2023_08_20_195252_create_mahasiswa_models_table', 1),
(7, '2023_09_05_125159_create_prodis_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(255) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nip`, `nama_petugas`, `users_id`, `created_at`, `updated_at`) VALUES
(1, '197009212000032002', 'Fatmawati', 3, '2023-09-07 06:12:37', '2023-09-07 05:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `prodi`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Informatika', NULL, NULL),
(2, 'Teknik Listrik', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','dosen','petugas','mhsw') NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$AruCv/gIGTD0O2TT/L.g2ewzCVJtO5mN.0SGktVGTK3Z4sVX44ApG', 'admin', NULL, '2023-08-24 23:49:27', '2023-08-24 23:49:27'),
(2, 'dosen', '$2y$10$t8Se6KNdJW7S4W73FXsIaOtGn7Rkwf1UR4ZiztRUPsiK7aFAk8r8a', 'dosen', NULL, '2023-08-24 23:49:27', '2023-08-24 23:49:27'),
(3, 'petugas', '$2y$10$nlpPgEILSjWLEQhPsxzzruHETPgF.ALivF48fwMlUM2kiwuk1yoTa', 'petugas', NULL, '2023-08-24 23:49:27', '2023-08-24 23:49:27'),
(4, 'mhsw', '$2y$10$PI.YlFD9TCIxZdAIiX1msutP.DS.2UG8D1wLMpBXZPJYG6qFgWJ9.', 'mhsw', NULL, '2023-08-24 23:49:27', '2023-08-24 23:49:27'),
(5, '3202016066', '$2y$10$5UXOXxYUaRPxrZmPWG/v1uWqMSPmqen4r7iQMsa1PmoZNUSkTEGtm', 'mhsw', NULL, '2023-09-05 06:59:55', '2023-09-05 06:59:55'),
(16, '197009212000032020', '$2y$10$yBM/rmiGduEf1WRhFxM2OuAzU/4nRAPhoFjjIOnfHfW0C6oRfqu2K', 'dosen', NULL, '2023-09-12 00:01:53', '2023-09-12 00:01:53'),
(17, '3202016118', '$2y$10$5gg6lAzGBn19tOlaDXP/jO6CQ7JBFWvXFDcbUShQanhF81Urj4Ope', 'mhsw', NULL, '2023-09-12 00:21:55', '2023-09-12 00:21:55'),
(18, '3202016119', '$2y$10$7.aLKBCuc/dcoEf354TGXucRwzGbw/tF.KjfrbxKWb5l/mVF/SNLW', 'mhsw', NULL, '2023-09-12 00:22:53', '2023-09-12 00:22:53'),
(19, '3202016065', '$2y$10$3V0lD7PxVZn71OE2BzV0juxldtpxMgS4PdqunHg5O1TkpoKZOJTNm', 'mhsw', NULL, '2023-09-12 04:25:31', '2023-09-12 04:25:31'),
(20, '320201608', '$2y$10$CapDgGQ6oHuA8K42Yuij0OM3wQ0PHLXVBrRqJGNMIDkvalSXlHR5e', 'mhsw', NULL, '2023-09-13 19:57:04', '2023-09-13 19:57:04'),
(21, '3202016045', '$2y$10$o/wjJ6TVDcYXhoFDLPYD3.QUZFZKv/KdCVqUgS3ni4uEP1np8Tmre', 'mhsw', NULL, '2023-09-13 19:58:08', '2023-09-13 19:58:08'),
(22, '3202016045', '$2y$10$PwqVFo8j2cSDsam4vaxRyu4AwKnvm2cg1vvV9wTlyapmzbre83yaO', 'mhsw', NULL, '2023-09-13 19:58:48', '2023-09-13 19:58:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosbim_ta`
--
ALTER TABLE `dosbim_ta`
  ADD PRIMARY KEY (`id_dosbim_ta`),
  ADD UNIQUE KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file_ta`
--
ALTER TABLE `file_ta`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

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
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosbim_ta`
--
ALTER TABLE `dosbim_ta`
  MODIFY `id_dosbim_ta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_ta`
--
ALTER TABLE `file_ta`
  MODIFY `id_file` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
