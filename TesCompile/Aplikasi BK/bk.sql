-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 05:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bk`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `tanggal`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '2021-03-30 05:03:51', 'Sakit', '2021-03-30 05:03:51', '2021-03-30 13:08:01'),
(2, '2021-03-30 12:41:33', 'Hadir', '2021-03-30 05:41:33', '2021-03-30 12:41:33'),
(3, '2021-03-31 03:11:23', 'Hadir', '2021-03-30 20:11:23', '2021-03-31 03:11:23'),
(4, '2021-04-01 02:50:37', 'Hadir', '2021-03-31 19:50:37', '2021-04-01 02:50:37'),
(5, '2021-04-01 02:53:26', 'Hadir', '2021-03-31 19:53:26', '2021-04-01 02:53:26'),
(6, '2021-04-01 02:55:02', 'Hadir', '2021-03-31 19:55:02', '2021-04-01 02:55:02'),
(7, '2021-04-01 02:56:31', 'Hadir', '2021-03-31 19:56:31', '2021-04-01 02:56:31'),
(8, '2021-04-02 03:30:18', 'Hadir', '2021-04-01 20:30:18', '2021-04-02 03:30:18'),
(9, '2021-04-04 11:51:12', 'Hadir', '2021-04-04 04:51:12', '2021-04-04 11:51:12'),
(10, '2021-04-04 11:51:13', 'Hadir', '2021-04-04 04:51:13', '2021-04-04 11:51:13'),
(11, '2021-04-04 14:11:45', 'Terlambat', '2021-04-04 07:11:45', '2021-04-04 14:11:45'),
(12, '2021-04-07 02:17:37', 'Hadir', '2021-04-06 19:17:37', '2021-04-07 02:17:37'),
(13, '2021-08-20 17:20:47', 'Hadir', '2021-08-20 10:20:47', '2021-08-20 17:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `absensi_siswa`
--

CREATE TABLE `absensi_siswa` (
  `id` int(11) NOT NULL,
  `absensi_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absensi_siswa`
--

INSERT INTO `absensi_siswa` (`id`, `absensi_id`, `siswa_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-03-30 05:04:48', '2021-03-30 13:08:24'),
(2, 2, 1, '2021-03-30 05:41:33', '2021-03-30 12:41:33'),
(3, 3, 2, '2021-03-30 20:11:23', '2021-03-31 03:11:23'),
(4, 4, 1, '2021-03-31 19:50:37', '2021-04-01 02:50:37'),
(5, 5, 3, '2021-03-31 19:53:27', '2021-04-01 02:53:27'),
(6, 6, 3, '2021-03-31 19:55:02', '2021-04-01 02:55:02'),
(7, 7, 3, '2021-03-31 19:56:31', '2021-04-01 02:56:31'),
(8, 8, 13, '2021-04-01 20:30:18', '2021-04-02 03:30:18'),
(9, 9, 1, '2021-04-04 04:51:12', '2021-04-04 11:51:12'),
(10, 10, 1, '2021-04-04 04:51:13', '2021-04-04 11:51:13'),
(11, 11, 13, '2021-04-04 07:11:45', '2021-04-04 14:11:45'),
(12, 12, 1, '2021-04-06 19:17:37', '2021-04-07 02:17:37'),
(13, 13, 1, '2021-08-20 10:20:47', '2021-08-20 17:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan`
--

CREATE TABLE `bimbingan` (
  `id` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `kode_surat` varchar(20) NOT NULL,
  `hal` text NOT NULL,
  `deskripsi` text NOT NULL,
  `gurubk_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bimbingan`
--

INSERT INTO `bimbingan` (`id`, `tanggal`, `kode_surat`, `hal`, `deskripsi`, `gurubk_id`, `created_at`, `updated_at`) VALUES
(5, '2021-03-18 09:58:21', '1208', 'Panggilan Pertama', 'Point anda telah mencapai batsan pertama yaitu:50 point', 8, '2021-03-18 02:58:21', '2021-03-18 09:58:21'),
(6, '2021-03-18 09:59:28', '1276', 'Panggilan Kedua', 'Berkelahi di luar sekolah dengan memakai seragam sekolah', 5, '2021-03-18 02:59:28', '2021-03-18 09:59:28'),
(8, '2021-03-18 10:33:20', '1213', 'Panggilan Pertama', 'Tertangkap razia', 3, '2021-03-18 03:33:20', '2021-03-18 10:33:20'),
(9, '2021-03-18 10:34:13', '0112', 'Panggilan Orang tua', 'anak anda telah menghamili pacarnya', 7, '2021-03-18 03:34:13', '2021-03-18 10:34:13'),
(10, '2021-03-18 10:35:38', '9812', 'Panggilan pertama', 'Merokok Di kantin sekolah', 1, '2021-03-18 03:35:38', '2021-03-18 10:35:38'),
(11, '2021-03-18 10:36:30', '2381', 'Panggilan kedua', 'Berkelahi di kelas', 9, '2021-03-18 03:36:30', '2021-03-18 10:36:30'),
(12, '2021-03-18 10:42:02', '3245', 'Panggilan Ketiga', 'Nakal AMpun....', 7, '2021-03-18 03:42:02', '2021-03-18 10:42:02'),
(13, '2021-03-18 10:42:59', '1188', 'Panggilan Ketiga', 'Anda sering membuat onar', 8, '2021-03-18 03:42:59', '2021-03-18 10:42:59'),
(16, '2021-04-04 07:50:23', '1227', 'Surat Pernyataan 1', 'Siswa membuat surat pernyataan palsu', 1, '2021-04-04 00:50:23', '2021-04-04 07:50:23'),
(17, '2021-04-07 02:02:32', '1348', 'Surat Peringatan 1', 'Point siswa telah mencapai 25', 5, '2021-04-06 19:02:32', '2021-04-07 02:02:32'),
(18, '2021-04-07 02:11:11', '7234', 'Surat Pernyataan 3', 'Siswa Melakukan tindak pelanggaran', 3, '2021-04-06 19:11:11', '2021-04-07 02:11:11'),
(19, '2021-08-20 17:15:35', 'k0111', 'Surat Peringatan 2', 'anakmu nakal pak', 5, '2021-08-20 10:15:35', '2021-08-20 17:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan_siswa`
--

CREATE TABLE `bimbingan_siswa` (
  `id` int(11) NOT NULL,
  `bimbingan_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bimbingan_siswa`
--

INSERT INTO `bimbingan_siswa` (`id`, `bimbingan_id`, `siswa_id`, `created_at`, `updated_at`) VALUES
(6, 5, 2, '2021-03-18 02:58:21', '2021-03-18 09:58:21'),
(7, 6, 2, '2021-03-18 02:59:28', '2021-03-18 09:59:28'),
(9, 8, 3, '2021-03-18 03:33:20', '2021-03-18 10:33:20'),
(10, 9, 3, '2021-03-18 03:34:13', '2021-03-18 10:34:13'),
(11, 10, 5, '2021-03-18 03:35:38', '2021-03-18 10:35:38'),
(12, 11, 5, '2021-03-18 03:36:30', '2021-03-18 10:36:30'),
(13, 12, 5, '2021-03-18 03:42:02', '2021-03-18 10:42:02'),
(14, 13, 3, '2021-03-18 03:42:59', '2021-03-18 10:42:59'),
(17, 16, 1, '2021-04-04 00:50:23', '2021-04-04 07:50:23'),
(18, 17, 19, '2021-04-06 19:02:33', '2021-04-07 02:02:33'),
(19, 18, 2, '2021-04-06 19:11:11', '2021-04-07 02:11:11'),
(20, 19, 1, '2021-08-20 10:15:35', '2021-08-20 17:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faultpoin`
--

CREATE TABLE `faultpoin` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `guru_id` int(11) NOT NULL,
  `pelanggaran_id` int(11) NOT NULL,
  `sanksi_id` int(11) NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faultpoin`
--

INSERT INTO `faultpoin` (`id`, `date`, `guru_id`, `pelanggaran_id`, `sanksi_id`, `poin`, `created_at`, `updated_at`) VALUES
(13, '2021-02-20 03:51:54', 4, 5, 5, 25, '2021-02-19 20:51:54', '2021-04-02 03:43:26'),
(14, '2021-02-20 03:52:15', 5, 6, 4, 0, '2021-02-19 20:52:15', '2021-02-20 03:52:15'),
(21, '2021-03-19 01:39:36', 18, 7, 5, 0, '2021-03-18 18:39:36', '2021-03-19 01:39:36'),
(22, '2021-03-19 01:50:27', 10, 3, 2, 0, '2021-03-18 18:50:27', '2021-03-19 01:50:27'),
(23, '2021-03-19 07:52:03', 10, 1, 3, 5, '2021-03-19 00:52:03', '2021-04-02 03:42:10'),
(24, '2021-04-04 07:49:28', 28, 4, 5, 20, '2021-04-04 00:49:28', '2021-04-04 07:49:28'),
(25, '2021-04-05 02:17:31', 28, 1, 3, 5, '2021-04-04 19:17:31', '2021-04-05 02:17:55'),
(26, '2021-04-05 06:48:56', 4, 4, 4, 20, '2021-04-04 23:48:56', '2021-04-05 06:48:56'),
(27, '2021-04-07 02:00:37', 3, 3, 1, 10, '2021-04-06 19:00:37', '2021-04-07 02:00:37'),
(28, '2021-04-07 02:03:02', 7, 4, 2, 20, '2021-04-06 19:03:02', '2021-04-07 02:03:02'),
(29, '2021-08-20 17:14:31', 3, 3, 5, 10, '2021-08-20 10:14:31', '2021-08-20 17:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `faultpoin_siswa`
--

CREATE TABLE `faultpoin_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `fault_poin_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faultpoin_siswa`
--

INSERT INTO `faultpoin_siswa` (`id`, `siswa_id`, `fault_poin_id`, `created_at`, `updated_at`) VALUES
(16, 2, 13, '2021-02-19 20:51:54', '2021-02-20 03:51:54'),
(17, 3, 14, '2021-02-19 20:52:15', '2021-02-20 03:52:15'),
(24, 4, 21, '2021-03-18 18:39:36', '2021-03-19 01:39:36'),
(25, 4, 22, '2021-03-18 18:50:28', '2021-03-19 01:50:28'),
(26, 1, 23, '2021-03-19 00:52:04', '2021-03-19 07:52:04'),
(27, 1, 24, '2021-04-04 00:49:28', '2021-04-04 07:49:28'),
(28, 2, 25, '2021-04-04 19:17:32', '2021-04-05 02:17:32'),
(29, 1, 26, '2021-04-04 23:48:56', '2021-04-05 06:48:56'),
(30, 19, 27, '2021-04-06 19:00:37', '2021-04-07 02:00:37'),
(31, 19, 28, '2021-04-06 19:03:02', '2021-04-07 02:03:02'),
(32, 1, 29, '2021-08-20 10:14:31', '2021-08-20 17:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `no_tlp` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama_guru`, `nip`, `no_tlp`, `created_at`, `updated_at`, `user_id`) VALUES
(3, 'Saputra', '30102120312', '0812372712', '2021-03-17 19:06:40', '2021-04-01 12:05:33', 9),
(4, 'Avanzo', '3012893123', '0853331232', '2021-03-17 19:06:40', '2021-04-01 12:05:40', 10),
(5, 'Polyly', '3081238823123', '0812372412', '2021-03-17 19:06:40', '2021-04-01 12:05:53', 11),
(6, 'Tanklita', '7123123122', '30124223312', '2021-03-17 19:06:40', '2021-04-01 12:06:14', 14),
(7, 'Bismarck', '79132523543', '08623123434', '2021-03-17 19:06:40', '2021-04-01 12:06:21', 15),
(9, 'Suparman', '0192182121', '0890993321', '2021-03-17 19:09:15', '0000-00-00 00:00:00', 1),
(10, 'Suparmin', '001201222', '092382633444', '2021-03-17 12:27:27', '2021-03-17 19:27:27', 6),
(18, 'Asep', '00127171', '0923827171', '2021-03-17 20:38:50', '2021-03-18 03:38:50', 1),
(22, 'Ujang', '00120088', '092382676', '2021-03-17 20:40:33', '2021-03-18 03:40:33', 1),
(24, 'Jajang', '00123565', '0898987867', '2021-03-17 20:47:01', '2021-03-18 03:47:01', 1),
(26, 'Kasep', '00120012', '0876152333', '2021-03-17 20:48:37', '2021-03-18 03:48:37', 1),
(28, 'Danang', '00129898', '0876787654', '2021-03-17 20:54:24', '2021-03-18 03:54:24', 1),
(30, 'Mulyadi', '00127735', '09238263390', '2021-03-17 20:55:53', '2021-03-18 03:55:53', 1),
(32, 'Cecep', '00127797', '0923826365', '2021-03-17 20:58:46', '2021-03-18 03:58:46', 1),
(33, 'Gatotkaca', '00129851', '087890123454', '2021-03-17 21:00:02', '2021-03-18 04:00:02', 1),
(34, 'Dandi', '753258234291', '087686293748', '2021-04-01 05:02:50', '2021-04-01 12:02:50', 2),
(35, 'Fitri', '412462312512', '087479672648', '2021-04-01 05:04:20', '2021-04-01 12:04:20', 2),
(36, 'Puji', '98753273458', '08573658329', '2021-04-01 05:04:46', '2021-04-01 12:04:46', 2),
(37, 'Astuti', '87623841923', '0877655438876', '2021-04-01 05:05:17', '2021-04-01 12:05:17', 2),
(38, 'Eko', '571239512323', '08675822412', '2021-04-01 05:07:07', '2021-04-01 12:07:07', 2),
(39, 'Nurul', '5712859123', '08364827231', '2021-04-01 05:08:20', '2021-04-01 12:08:20', 2),
(40, 'Aditya', '81465198432', '08426793452', '2021-04-01 05:09:12', '2021-04-01 12:09:12', 2),
(41, 'Utami', '87553214992', '08733555489', '2021-04-01 05:11:03', '2021-04-01 12:11:15', 2),
(42, 'Achmad', '28975984659', '08795668452', '2021-04-01 05:12:04', '2021-04-01 12:12:04', 2),
(43, 'Hari', '4587974155', '08455679815', '2021-04-01 05:12:47', '2021-04-01 12:12:47', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gurubk`
--

CREATE TABLE `gurubk` (
  `id` int(11) NOT NULL,
  `nama_bk` varchar(30) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `no_tlp` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gurubk`
--

INSERT INTO `gurubk` (`id`, `nama_bk`, `nip`, `no_tlp`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Tri Putra', '71231263232', '08841231232', '2021-03-18 04:35:13', '0000-00-00 00:00:00', 6),
(2, 'Nanda Sulastri', '7123847123', '08123344412', '2021-03-18 04:35:13', '0000-00-00 00:00:00', 7),
(3, 'Anton Supriyadi', '71246124124', '0812372712', '2021-03-18 04:35:13', '0000-00-00 00:00:00', 8),
(4, 'Vladimir Lenin', '30092137272', '20912332323', '2021-03-18 04:35:13', '0000-00-00 00:00:00', 12),
(5, 'Jajang', '20953534342', '087623231234', '2021-03-18 04:35:13', '2021-03-18 04:37:09', 13),
(7, 'Sukmara', '019218297', '0890993316', '2021-03-18 09:53:44', '0000-00-00 00:00:00', 1),
(8, 'Kuspriyadi', '001271233', '092382612', '2021-03-18 02:55:24', '2021-03-18 09:55:24', 1),
(9, 'Suprianto', '02938351', '092138148419', '2021-03-18 02:55:58', '2021-03-18 09:55:58', 1),
(10, 'Triono', '001212445', '089198726138', '2021-04-07 11:27:14', '2021-04-07 18:27:14', 1),
(11, 'Bagus Priyanto', '01222345', '0824523842192', '2021-04-07 11:27:48', '2021-04-07 18:27:48', 1),
(12, 'Intan Sari', '0128881', '081198237456', '2021-04-07 11:29:06', '2021-04-07 18:29:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `jurusan`, `nama_kelas`, `guru_id`, `created_at`, `updated_at`) VALUES
(10, 'X', 'RPL', 'RPL-A', 3, '2021-04-01 04:50:32', '2021-04-01 11:50:32'),
(11, 'X', 'RPL', 'RPL-B', 4, '2021-04-01 04:50:52', '2021-04-01 11:50:52'),
(12, 'X', 'RPL', 'RPL-C', 5, '2021-04-01 04:51:21', '2021-04-01 11:51:21'),
(13, 'X', 'DPIB', 'DPIB-A', 6, '2021-04-01 04:52:31', '2021-04-01 11:52:31'),
(14, 'X', 'DPIB', 'DPIB-B', 7, '2021-04-01 04:52:41', '2021-04-01 11:52:41'),
(15, 'X', 'DPIB', 'DPIB-C', 9, '2021-04-01 04:52:54', '2021-04-01 11:52:54'),
(16, 'X', 'TBSM', 'TBSM-A', 10, '2021-04-01 04:56:39', '2021-04-01 11:56:39'),
(17, 'X', 'TBSM', 'TBSM-B', 18, '2021-04-01 04:57:06', '2021-04-01 11:57:06'),
(18, 'X', 'TPM', 'TPM-A', 22, '2021-04-01 04:57:17', '2021-04-01 11:57:17'),
(19, 'X', 'TPM', 'TPM-B', 24, '2021-04-01 04:58:15', '2021-04-01 11:59:00'),
(20, 'X', 'TPM', 'TPM-C', 26, '2021-04-01 04:59:21', '2021-04-01 11:59:21'),
(21, 'X', 'TPM', 'TPM-D', 28, '2021-04-01 04:59:36', '2021-04-01 11:59:36'),
(22, 'X', 'EI', 'EI-A', 30, '2021-04-01 05:00:18', '2021-04-01 12:00:18'),
(23, 'X', 'EI', 'EI-B', 32, '2021-04-01 05:00:30', '2021-04-01 12:00:30'),
(24, 'X', 'OI', 'OI-A', 33, '2021-04-01 05:00:49', '2021-04-01 12:00:49'),
(25, 'X', 'OI', 'OI-B', 34, '2021-04-01 05:14:00', '2021-04-01 12:14:00'),
(26, 'X', 'BKP', 'BKP-A', 35, '2021-04-01 05:14:19', '2021-04-01 12:14:19'),
(27, 'X', 'BKP', 'BKP-B', 36, '2021-04-01 05:14:45', '2021-04-01 12:14:45'),
(28, 'X', 'LAS', 'LAS-A', 37, '2021-04-01 05:14:56', '2021-04-01 12:14:56'),
(29, 'X', 'LAS', 'LAS-B', 39, '2021-04-01 05:15:16', '2021-04-01 12:15:16'),
(30, 'XI', 'RPL', 'RPL-A', 6, '2021-04-01 05:15:48', '2021-04-01 12:15:48'),
(31, 'XI', 'RPL', 'RPL-B', 24, '2021-04-01 05:15:58', '2021-04-01 12:15:58'),
(32, 'XI', 'RPL', 'RPL-C', 32, '2021-04-01 05:16:11', '2021-04-01 12:16:11'),
(33, 'XI', 'DPIB', 'DPIB-A', 40, '2021-04-01 05:19:39', '2021-04-01 12:19:39'),
(34, 'XI', 'DPIB', 'DPIB-B', 28, '2021-04-01 05:19:48', '2021-04-01 12:19:48'),
(35, 'XI', 'DPIB', 'DPIB-C', 10, '2021-04-01 05:20:05', '2021-04-01 12:20:05'),
(36, 'XI', 'TBSM', 'TBSM-A', 6, '2021-04-01 05:21:36', '2021-04-01 12:21:36'),
(37, 'XI', 'TBSM', 'TBSM-B', 42, '2021-04-01 05:21:51', '2021-04-01 12:21:51'),
(38, 'XI', 'TPM', 'TPM-A', 43, '2021-04-01 05:22:10', '2021-04-01 12:22:10'),
(39, 'XI', 'TPM', 'TPM-C', 4, '2021-04-01 05:22:27', '2021-04-01 12:22:27'),
(40, 'XI', 'TPM', 'TPM-D', 3, '2021-04-01 05:23:01', '2021-04-01 12:23:30'),
(41, 'XI', 'TPM', 'TPM-D', 38, '2021-04-01 05:23:15', '2021-04-01 12:23:15'),
(42, 'XI', 'EI', 'EI-A', 41, '2021-04-01 05:23:52', '2021-04-01 12:23:52'),
(43, 'XI', 'EI', 'EI-B', 3, '2021-04-01 05:25:28', '2021-04-01 12:25:28'),
(44, 'XI', 'OI', 'OI-A', 30, '2021-04-01 05:26:21', '2021-04-01 12:26:21'),
(45, 'XI', 'OI', 'OI-B', 7, '2021-04-01 05:26:33', '2021-04-01 12:26:33'),
(46, 'XI', 'BKP', 'BKP-A', 43, '2021-04-01 05:26:59', '2021-04-01 12:26:59'),
(47, 'XI', 'BKP', 'BKP-B', 5, '2021-04-01 05:27:18', '2021-04-01 12:27:18'),
(48, 'XI', 'LAS', 'LAS-A', 37, '2021-04-01 05:28:04', '2021-04-01 12:28:04'),
(49, 'XI', 'LAS', 'LAS-B', 22, '2021-04-01 05:28:15', '2021-04-01 12:28:15'),
(50, 'XII', 'RPL', 'RPL-A', 10, '2021-04-01 05:33:52', '2021-04-01 12:33:52'),
(51, 'XII', 'RPL', 'RPL-B', 32, '2021-04-01 05:34:00', '2021-04-01 12:34:00'),
(52, 'XII', 'RPL', 'RPL-C', 33, '2021-04-01 05:34:08', '2021-04-01 12:34:08'),
(53, 'XII', 'DPIB', 'DPIB-A', 41, '2021-04-01 05:34:19', '2021-04-01 12:34:19'),
(54, 'XII', 'DPIB', 'DPIB-B', 37, '2021-04-01 05:34:40', '2021-04-01 12:34:40'),
(55, 'XII', 'DPIB', 'DPIB-C', 43, '2021-04-01 05:34:54', '2021-04-01 12:34:54'),
(56, 'XII', 'TBSM', 'TBSM-A', 35, '2021-04-01 05:35:10', '2021-04-01 12:35:10'),
(57, 'XII', 'TBSM', 'TBSM-B', 6, '2021-04-01 05:35:26', '2021-04-01 12:35:26'),
(58, 'XII', 'TPM', 'TPM-A', 4, '2021-04-01 05:36:05', '2021-04-01 12:36:05'),
(59, 'XII', 'TPM', 'TPM-B', 7, '2021-04-01 05:36:20', '2021-04-01 12:36:20'),
(60, 'XII', 'TPM', 'TPM-C', 30, '2021-04-01 05:36:54', '2021-04-01 12:36:54'),
(61, 'XII', 'TPM', 'TPM-D', 18, '2021-04-01 05:37:09', '2021-04-01 12:37:09'),
(62, 'XII', 'EI', 'EI-A', 40, '2021-04-01 05:37:22', '2021-04-01 12:37:22'),
(63, 'XII', 'EI', 'EI-B', 35, '2021-04-01 05:37:38', '2021-04-01 12:37:38'),
(64, 'XII', 'OI', 'OI-A', 10, '2021-04-01 05:37:54', '2021-04-01 12:37:54'),
(65, 'XII', 'OI', 'OI-B', 10, '2021-04-01 05:38:10', '2021-04-01 12:38:10'),
(66, 'XII', 'BKP', 'BKP-A', 34, '2021-04-01 05:38:25', '2021-04-01 12:38:25'),
(67, 'XII', 'BKP', 'BKP-B', 26, '2021-04-01 05:38:40', '2021-04-01 12:38:40'),
(68, 'XII', 'LAS', 'LAS-A', 43, '2021-04-01 05:38:50', '2021-04-01 12:38:50'),
(69, 'XII', 'LAS', 'LAS-B', 38, '2021-04-01 05:39:12', '2021-04-01 12:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2019_08_19_000000_create_failed_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id` int(11) NOT NULL,
  `nama_pelanggaran` varchar(100) NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id`, `nama_pelanggaran`, `poin`, `created_at`, `updated_at`) VALUES
(1, 'Bermain Hp Saat Jam Pelajaran', 5, '2021-03-18 17:58:35', '0000-00-00 00:00:00'),
(2, 'Memakai Seragam Tidak Sesuai Ketentuan Sekolah', 5, '2021-03-18 17:58:35', '0000-00-00 00:00:00'),
(3, 'Meninggalkan Sekolah Tanpa Izin ', 10, '2021-03-18 17:58:35', '0000-00-00 00:00:00'),
(4, 'Membuat Surat Pernyataan Palsu', 20, '2021-03-18 17:58:35', '0000-00-00 00:00:00'),
(5, 'Membawa / Menggunakan Rokok / Vapor', 25, '2021-03-18 17:58:35', '0000-00-00 00:00:00'),
(6, 'Tertangkap Operasi / Razia Oleh Pihak Yang Berwenang Saat Jam Sekolah ', 30, '2021-03-18 17:58:35', '0000-00-00 00:00:00'),
(7, 'Terlibat Tindak Kriminal', 50, '2021-03-18 17:58:35', '0000-00-00 00:00:00'),
(8, 'Melakukan Pelecehan Seksual', 80, '2021-03-18 17:58:35', '2021-03-18 18:13:21'),
(9, 'Mengikuti atau Menjadi Anggota Organisasi Terlarang ', 100, '2021-03-18 17:58:35', '0000-00-00 00:00:00'),
(10, 'Menikah', 120, '2021-03-18 17:58:35', '2021-03-18 18:13:11'),
(11, 'Hamil atau Menghamili ', 120, '2021-03-18 17:58:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sanksi`
--

CREATE TABLE `sanksi` (
  `id` int(11) NOT NULL,
  `nama_sanksi` varchar(50) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanksi`
--

INSERT INTO `sanksi` (`id`, `nama_sanksi`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'Membersihkan Lingkungan Sekolah', '15 point', '2021-03-18 18:16:31', '0000-00-00 00:00:00'),
(2, 'Peringatan Lisan', '20 point', '2021-03-18 18:16:31', '0000-00-00 00:00:00'),
(3, 'Penyitaan', 'membawa barang terlarang atau bermain hp saat jam pelajaran', '2021-03-18 18:16:31', '0000-00-00 00:00:00'),
(4, 'Surat Pernyataan', '25 point', '2021-03-18 18:16:31', '0000-00-00 00:00:00'),
(5, 'Surat Peringatan 1', '40 point', '2021-03-18 18:16:31', '0000-00-00 00:00:00'),
(6, 'Surat Peringatan 2', '60 point', '2021-03-18 18:16:31', '0000-00-00 00:00:00'),
(7, 'Surat Peringatan 3', '70 point', '2021-03-18 18:16:31', '0000-00-00 00:00:00'),
(8, 'Panggilan WaliMurid', '>80 point', '2021-03-18 18:16:31', '2021-03-24 15:25:03'),
(9, 'Dikeluarkan', '100 point', '2021-03-18 18:16:31', '0000-00-00 00:00:00'),
(10, 'Membersihkan masjid sekolah', '15 point', '2021-03-18 11:26:59', '2021-03-18 18:28:38'),
(11, 'Lari keliling lapangan', 'Terlambat datang ke sekolah', '2021-04-07 11:36:06', '2021-04-07 18:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_tlp` varchar(30) NOT NULL,
  `nama_wali` varchar(30) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama_siswa`, `nis`, `kelas_id`, `alamat`, `no_tlp`, `nama_wali`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ilyas Sulastri', '20012315212', 22, 'Jl.Babadsari Sawoo', '08841231232', 'Ahmed Supriadi', 3, '2021-03-18 14:53:09', '2021-04-01 12:39:28'),
(2, 'Rangga Pon', '20120123124', 22, 'Jl.Brobokan Kalimalang', '0851231232', 'Cahyadi', 4, '2021-03-18 14:53:09', '2021-04-07 01:57:55'),
(3, 'Susanti', '21823841277', 46, 'Jl.Grogol Bangunsari', '0812241233', 'Memet Ndut', 5, '2021-03-18 14:53:09', '2021-04-04 07:38:25'),
(4, 'Zainuri Abidin', '1002491244122', 46, 'Jl.GajahMada', '0876568765', 'Edi Klimis', 16, '2021-03-18 14:53:09', '2021-04-01 12:40:10'),
(5, 'Hasna Putra', '20182733123', 57, 'Jl.Kalimantan', '08237412232', 'Hendro Hartono', 17, '2021-03-18 14:53:09', '2021-04-01 12:40:57'),
(12, 'Kasino', '19249', 57, 'Ponorogo', '0890993087', 'Mamat Senen', 3, '2021-03-18 14:53:09', '2021-04-01 12:41:07'),
(13, 'Dono', '19912', 12, 'Ponorogo', '0890993312', 'Mamat Senen', 18, '2021-03-18 14:53:09', '2021-04-01 12:44:09'),
(15, 'Indro', '19281', 12, 'Ponorogo', '09313711796', 'Rizky Widiaputri', 3, '2021-03-18 10:38:51', '2021-04-01 12:44:20'),
(17, 'Siti', '301287337234', 62, 'Jl. Empower', '08374612312', 'Kukuh', 3, '2021-04-01 05:45:45', '2021-04-01 12:45:45'),
(18, 'Nurul', '3008912854', 54, 'Jl. Paseo', '0873123412', 'Wahyu', 3, '2021-04-01 05:47:22', '2021-04-01 12:47:22'),
(19, 'Indra Cahyo', '19877', 52, 'Jl.Pemuda,Bungkal,Ponorogo', '089799876554', 'Rizky Widiaputri', 3, '2021-04-06 18:57:29', '2021-04-07 01:57:29'),
(20, 'Cahyo Wiguna', '8123', 50, 'Jl.Barong,Bungkal,Ponorogo', '087771234567', 'Cahyadi', 3, '2021-04-06 19:13:49', '2021-04-07 02:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$MrPMXwaUNKbX/qzbDogesOkb8ccrrVe5/tM.mY44sGr3cG.kh8neS', 1, '', '2021-02-19 20:09:39', '2021-02-19 20:09:39'),
(2, 'guest', 'guest@gmail.com', '$2y$10$BuG8dH2SoabUZJ2rXaJdT.wBVAQ20Ft1qyH5j6t.iL1bQam0tHJdu', 3, '', '2021-02-19 20:15:29', '2021-02-19 20:15:29'),
(3, 'ilyas', 'ilyas@gmail.com', '$2y$10$U9zYOQgeOWLIUOKIc0GNneo9qtL7xOgs7JxB70bXl/OCWTOOSPWWq', 3, '', '2021-02-20 00:53:52', '2021-02-20 00:53:52'),
(4, 'rangga', 'rangga@gmail.com', '$2y$10$q27Y/Y01rOxN/Mp75ZD6geIb5hjzJAx8it9O1BEePtKhFfWCUglbi', 3, '', '2021-02-20 00:59:09', '2021-02-20 00:59:09'),
(5, 'susanti', 'susanti@gmail.com', '$2y$10$tFV7.lIRzZa4A4dmBjXmiea1iHMcSa83AWlDSbT2O8IXcbmEzOYE.', 3, '', '2021-02-20 01:01:17', '2021-02-20 01:01:17'),
(6, 'tri', 'tri@gmail.com', '$2y$10$bi0XzLb6NNl6e1n3DZ0couAo8z10/2oWyho5SX9kbWLgYkKYUQ.xm', 1, '', '2021-02-21 18:17:33', '2021-02-21 18:17:33'),
(7, 'nanda', 'nanda@gmail.com', '$2y$10$./4HeFGN8k/vEazcY9F1guMy.YG90ODogJYpxhKZeEh7F4j7DfR8a', 1, '', '2021-02-21 18:18:41', '2021-02-21 18:18:41'),
(8, 'anton', 'anton@gmail.com', '$2y$10$ldv0v.m7ATbXAROqUHnnTOxACGrJxMeCb.MUJUa/ppykIel2HFMJW', 1, '', '2021-02-21 18:20:04', '2021-02-21 18:20:04'),
(9, 'motor', 'motor@gmail.com', '$2y$10$sQCzcM9aQw.TNhMJf/Ejxu200DeHiZxY229k6dNmz04mI8nSndxsS', 2, '', '2021-02-21 18:47:06', '2021-02-21 18:47:06'),
(10, 'mobil', 'mobil@gmail.com', '$2y$10$YepewQI32yupyCqE4p9POeacTuWwggfCTzX2GSYJ/LD3BWW514Pkq', 2, '', '2021-02-21 18:49:10', '2021-02-21 18:49:10'),
(11, 'sepedah', 'sepedah@gmail.com', '$2y$10$R8AONRUFjfFBc0CblqgRneErnHxolhh3QWB.E9yMg/sHuA72J.rnO', 2, '', '2021-02-21 18:51:33', '2021-02-21 18:51:33'),
(12, 'lenin', 'lenin@gmail.com', '$2y$10$WGmQPw/eIdQI5bix/X/WU.uVElZGiFXduKMXjh6syVPcN27zybfFy', 1, '', '2021-02-22 08:00:46', '2021-02-22 08:00:46'),
(13, 'hitler', 'hitler@gmail.com', '$2y$10$1w6IdnUPumCQvmVdh5q.quG43ycb27Y1qkC9H67aBSAzhF5Uwh4Pi', 1, '', '2021-02-22 08:02:07', '2021-02-22 08:02:07'),
(14, 'tank', 'tank@gmail.com', '$2y$10$U8budR05.SzwN35AQpf9ROp7aQ.ml0JbD4qEoxGZ1oj5XuujnB99S', 2, '', '2021-02-22 08:03:30', '2021-02-22 08:03:30'),
(15, 'kapal', 'kapal@gmail.com', '$2y$10$9VOHeziIJO3bdGzVFrfupOHVoXoOrLaI29IQPrTNG3q5OUHigTFiy', 2, '', '2021-02-22 08:04:44', '2021-02-22 08:04:44'),
(16, 'zainuri', 'zainuri@gmail.com', '$2y$10$t/pCJ47PKxLfSKpNW8kHi.3TATD2v0dmxoEr2oKj72fEziqSSOw46', 3, '', '2021-02-22 08:06:43', '2021-02-22 08:06:43'),
(17, 'hasna', 'hasna@gmail.com', '$2y$10$5JO3MUYzahZzGnQh/6EFF.d/77.ftAk3QaaL92KGt7YejB6H0K..u', 3, '', '2021-02-22 08:08:14', '2021-02-22 08:08:14'),
(18, 'dono', 'dono@gmail.com', '$2y$10$klISldiIU5re1P9TkmzMR.Nm1d4R5wynSF7AR8BWcIHEYHCqKe8jS', 3, '', '2021-03-31 21:50:49', '2021-03-31 21:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id`, `nama_level`) VALUES
(1, 'admin'),
(2, 'operator'),
(3, 'guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `absensi_id` (`absensi_id`);

--
-- Indexes for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id_bk` (`gurubk_id`);

--
-- Indexes for table `bimbingan_siswa`
--
ALTER TABLE `bimbingan_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_panggilan` (`bimbingan_id`),
  ADD KEY `id_siswa` (`siswa_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faultpoin`
--
ALTER TABLE `faultpoin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `pelanggaran_id` (`pelanggaran_id`),
  ADD KEY `sanksi_id` (`sanksi_id`);

--
-- Indexes for table `faultpoin_siswa`
--
ALTER TABLE `faultpoin_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `fault_id` (`fault_poin_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`user_id`);

--
-- Indexes for table `gurubk`
--
ALTER TABLE `gurubk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`user_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

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
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanksi`
--
ALTER TABLE `sanksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`kelas_id`),
  ADD KEY `users_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bimbingan`
--
ALTER TABLE `bimbingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `bimbingan_siswa`
--
ALTER TABLE `bimbingan_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faultpoin`
--
ALTER TABLE `faultpoin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `faultpoin_siswa`
--
ALTER TABLE `faultpoin_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `gurubk`
--
ALTER TABLE `gurubk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sanksi`
--
ALTER TABLE `sanksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  ADD CONSTRAINT `absensi_siswa_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `absensi_siswa_ibfk_2` FOREIGN KEY (`absensi_id`) REFERENCES `absensi` (`id`);

--
-- Constraints for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD CONSTRAINT `bimbingan_ibfk_5` FOREIGN KEY (`gurubk_id`) REFERENCES `gurubk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bimbingan_siswa`
--
ALTER TABLE `bimbingan_siswa`
  ADD CONSTRAINT `bimbingan_siswa_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bimbingan_siswa_ibfk_2` FOREIGN KEY (`bimbingan_id`) REFERENCES `bimbingan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faultpoin`
--
ALTER TABLE `faultpoin`
  ADD CONSTRAINT `faultpoin_ibfk_1` FOREIGN KEY (`sanksi_id`) REFERENCES `sanksi` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `faultpoin_ibfk_2` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `faultpoin_ibfk_3` FOREIGN KEY (`pelanggaran_id`) REFERENCES `pelanggaran` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `faultpoin_siswa`
--
ALTER TABLE `faultpoin_siswa`
  ADD CONSTRAINT `faultpoin_siswa_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faultpoin_siswa_ibfk_2` FOREIGN KEY (`fault_poin_id`) REFERENCES `faultpoin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gurubk`
--
ALTER TABLE `gurubk`
  ADD CONSTRAINT `gurubk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `user_level` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
