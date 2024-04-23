-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Apr 2024 pada 05.37
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `activity`, `description`, `created_at`, `updated_at`) VALUES
(39, 810001, 'update', 'Mengubah data karyawan ABDUL ROCHIM', '2024-04-23 03:32:18', '2024-04-23 03:32:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cutis`
--

CREATE TABLE `cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_cuti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan_cuti` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_cuti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_cuti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cutis`
--

INSERT INTO `cutis` (`id`, `user_id`, `nama_cuti`, `tanggal`, `alasan_cuti`, `foto_cuti`, `status_cuti`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 3, 'Cuti Dadakan', '2023-02-27', 'cuti menghadiri pernikahan', 'foto_cuti/dRByAutG8LarkjbFbMFFhvFgejMjOn50KR7BJ7G7.jpg', 'Diterima', 'ok', '2023-02-25 22:32:32', '2023-02-25 22:33:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jabatans`
--

INSERT INTO `jabatans` (`id`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi Informasi', '2022-12-27 08:23:58', '2022-12-27 08:23:58'),
(2, 'Medik dan Keperawatan', '2022-12-27 08:23:59', '2022-12-27 08:23:59'),
(3, 'Keuangan dan Akutansi', '2022-12-27 08:23:59', '2022-12-27 08:23:59'),
(4, 'Administrasi & Umum', '2022-12-27 08:23:59', '2022-12-27 08:23:59'),
(5, 'Humas & Pemasaran', '2022-12-27 08:23:59', '2022-12-27 08:23:59'),
(6, 'Sekretariat', '2022-12-27 08:23:59', '2022-12-27 08:23:59'),
(7, 'PT. Permata Husada Sakti', '2022-12-27 08:23:59', '2022-12-27 08:23:59'),
(8, 'Dokter Full Timer', '2022-12-27 08:23:59', '2022-12-27 08:23:59'),
(9, 'Casemix', '2022-12-27 08:24:00', '2022-12-27 08:24:00'),
(10, 'Direktur', '2022-12-27 08:24:00', '2022-12-27 08:24:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_controllers`
--

CREATE TABLE `kriteria_controllers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lemburs`
--

CREATE TABLE `lemburs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jarak_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_lembur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lemburs`
--

INSERT INTO `lemburs` (`id`, `user_id`, `tanggal`, `jam_masuk`, `lat_masuk`, `long_masuk`, `jarak_masuk`, `foto_jam_masuk`, `jam_keluar`, `lat_keluar`, `long_keluar`, `jarak_keluar`, `foto_jam_keluar`, `total_lembur`, `created_at`, `updated_at`) VALUES
(1, 3, '2023-01-24', '2023-01-24 22:59', '-7.4213083', '110.9731847', '0', 'foto_jam_masuk_lembur/63d0007c07837.png', '2023-01-24 23:00', '-7.4213083', '110.9731847', '0', 'foto_jam_keluar_lembur/63d0008ba5cf1.png', '60', '2023-01-24 15:59:56', '2023-01-24 16:00:11'),
(2, 1, '2023-02-26', '2023-02-26 04:53', '-7.4213053', '110.9731921', '0', 'foto_jam_masuk_lembur/63fa834b877b7.png', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-25 21:53:15', '2023-02-25 21:53:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lat_kantor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_kantor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radius` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lokasis`
--

INSERT INTO `lokasis` (`id`, `lat_kantor`, `long_kantor`, `radius`, `created_at`, `updated_at`) VALUES
(1, '-7.4213053', '110.9731921', '2000', '2022-12-27 08:24:01', '2023-02-25 22:26:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapping_shifts`
--

CREATE TABLE `mapping_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_masuk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapping_shifts`
--

INSERT INTO `mapping_shifts` (`id`, `user_id`, `shift_id`, `tanggal`, `jam_absen`, `telat`, `lat_absen`, `long_absen`, `jarak_masuk`, `foto_jam_absen`, `jam_pulang`, `pulang_cepat`, `foto_jam_pulang`, `lat_pulang`, `long_pulang`, `jarak_pulang`, `status_absen`, `created_at`, `updated_at`) VALUES
(1, 3, 4, '2023-02-26', '05:28', '0', '-7.4213053', '110.9731921', '0', 'foto_jam_absen/63fa8b9b9f296.png', '05:28', '91920', 'foto_jam_pulang/63fa8baded521.png', '-7.4213053', '110.9731921', '0', 'Masuk', '2023-02-25 22:28:28', '2023-02-25 22:29:01'),
(2, 3, 4, '2023-02-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cuti', '2023-02-25 22:28:28', '2023-02-25 22:33:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_16_095447_create_shifts_table', 1),
(6, '2022_09_19_032649_create_mapping_shifts_table', 1),
(7, '2022_09_20_074944_create_lemburs_table', 1),
(8, '2022_09_20_092230_create_cutis_table', 1),
(9, '2022_10_31_083510_create_lokasis_table', 1),
(10, '2022_11_02_061554_create_reset_cutis_table', 1),
(11, '2022_12_01_041742_create_sips_table', 1),
(12, '2022_12_14_080034_create_jabatans_table', 1),
(13, '2023_02_20_161543_create_activity_logs_table', 1),
(14, '2024_04_18_111449_create_kriteria_controllers_table', 1),
(15, '2024_04_19_061324_create_nilais_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilais`
--

CREATE TABLE `nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `c5` int(11) NOT NULL,
  `c6` int(11) NOT NULL,
  `c7` int(11) NOT NULL,
  `c8` int(11) NOT NULL,
  `c9` int(11) NOT NULL,
  `c10` int(11) NOT NULL,
  `c11` int(11) NOT NULL,
  `c12` int(11) NOT NULL,
  `c13` int(11) NOT NULL,
  `c14` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reset_cutis`
--

CREATE TABLE `reset_cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuti_dadakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_menikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_diluar_tanggungan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_khusus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_melahirkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_telat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reset_cutis`
--

INSERT INTO `reset_cutis` (`id`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `created_at`, `updated_at`) VALUES
(1, '10', '10', '10', '10', '10', '10', '10', '10', '2022-12-27 08:24:01', '2023-02-20 09:36:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_shift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shifts`
--

INSERT INTO `shifts` (`id`, `nama_shift`, `jam_masuk`, `jam_keluar`, `created_at`, `updated_at`) VALUES
(1, 'Libur', '00:00', '00:00', '2022-12-27 08:24:00', '2022-12-27 08:24:00'),
(2, 'Office', '08:00', '17:00', '2022-12-27 08:24:01', '2022-12-27 08:24:01'),
(3, 'Siang', '13:00', '21:00', '2022-12-27 08:24:01', '2022-12-27 08:24:01'),
(4, 'Malam', '21:00', '07:00', '2022-12-27 08:24:01', '2023-02-20 09:38:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sips`
--

CREATE TABLE `sips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_berakhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_join` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_nikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_dadakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_menikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_diluar_tanggungan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_khusus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_melahirkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_telat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `jabatan_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(810001, 'ABDUL ROCHIM', 'foto_karyawan/C3qg1NjBCchWApJOlO4b5OP3sZPbneSxFl64BKp7.png', 'damian82@example.net', '+16602511442', 'frederique.block', '$2y$10$qZZlPsr53kyaMkt.10MdAeSx2btBpXOejls3v4.EqNLoFSmj.tRmG', '2014-06-04', 'Laki-Laki', '2006-06-26', 'Lajang', '457 Yundt Village Ressiemouth, AZ 60267', '7', '2', '9', '4', '7', '19', '4', '5', 'admin', 1, NULL, NULL, '2024-04-23 02:20:46', '2024-04-23 03:32:18'),
(810002, 'AGUS SUBARKAH', NULL, 'rkuhlman@example.net', '762-799-1188', 'goodwin.buster', '$2y$10$oi15F7Aw87MmmuBgb251KOtHVs0anhz9d.ZP5g9SYFRV92zfnD2ya', '2005-01-16', 'Perempuan', '2016-01-22', 'Lajang', '319 Myrl Lights Stokesmouth, TX 03244', '8', '1', '1', '7', '0', '66', '5', '2', 'admin', 1, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810003, 'AGUSTINI BUDI PURWANTI', NULL, 'bonnie.prohaska@example.com', '1-629-782-6182', 'xjohns', '$2y$10$f9cpflPDF4qUQ35XgeJH6OAv4ahrBdiA6Pim7T7eZNa1AwI2RR7QO', '2010-10-13', 'Laki-Laki', '1981-08-05', 'Lajang', '7222 DuBuque Throughway Lake Alek, KY 23884-7700', '8', '10', '6', '9', '2', '28', '2', '3', 'user', 4, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810004, 'AINIYAH', NULL, 'dickens.sid@example.net', '(678) 467-2547', 'ziemann.elmo', '$2y$10$WDeJTGYy0x.ZAGTdcpCQMea6EaoIxeMH8VR90l5yQWF7KAcL6tk4q', '1998-05-24', 'Perempuan', '2008-03-13', 'Lajang', '22688 Howard Springs Balistreritown, MO 86110', '4', '0', '5', '3', '2', '64', '0', '2', 'user', 3, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810005, 'M. ALI RODHI', NULL, 'conn.cassandra@example.com', '623.727.7723', 'qprohaska', '$2y$10$eo8gFV3FfdcZOu5h6Jg4Nu1RcaZvID0acNYHhePpWysmcehJgo2F6', '1974-11-11', 'Perempuan', '1982-07-05', 'Lajang', '131 Hiram Mountains New Theo, NH 46849', '10', '10', '9', '7', '4', '69', '3', '2', 'user', 3, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810006, 'ALUSYIANA', NULL, 'arianna33@example.org', '+1.904.268.1517', 'patrick.goodwin', '$2y$10$5i8zHzs08L0RGBGGAsVSk.vmuV.e0vorh38qP6yN467pjPghRzNA6', '1992-08-07', 'Perempuan', '2013-04-26', 'Lajang', '4853 Schuppe Courts New Sabrinashire, RI 46136-3238', '10', '8', '6', '3', '2', '55', '0', '0', 'user', 1, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810008, 'ANGGRAINI', NULL, 'mae.barton@example.net', '534.797.1115', 'klittel', '$2y$10$Cn/knulEjtQIiTOg/ObrIeiy7ngIOSxMR5XpFlU1jW1g1Yayaq3.a', '2009-07-19', 'Perempuan', '2009-09-23', 'Menikah', '72073 Carolyn Mews Apt. 869 West Ross, SD 72037', '1', '8', '5', '1', '8', '7', '2', '3', 'user', 5, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810010, 'ANISAH', NULL, 'charity.vandervort@example.org', '386-222-2941', 'renner.robbie', '$2y$10$Apn9hCZiMDMHHqlR/Ccm2O1027jarnGHW16dH3pChFCywLcQKf.oq', '2013-05-28', 'Perempuan', '2002-04-29', 'Menikah', '97744 Beatty Rest Suite 149 Elenorberg, NH 97625-3710', '0', '8', '9', '7', '2', '20', '1', '2', 'user', 1, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810011, 'ARIS ANJANI', NULL, 'schamberger.abelardo@example.com', '+1-316-748-4190', 'carole34', '$2y$10$mtv2r5eQLAd2oZboz6XcQuz/tsWAP3FhUw0l2LhJnbn1OUl/WXWvy', '1977-07-12', 'Perempuan', '1976-02-14', 'Menikah', '4462 Fadel Key Apt. 155 Herzogfort, DC 69819', '4', '3', '10', '1', '9', '27', '4', '2', 'user', 1, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810012, 'ASTIKA RAHAYU', NULL, 'brain08@example.net', '(843) 485-7987', 'rlakin', '$2y$10$/AEDImV4EmnfP1gSdNe4xeAKXEf7saxKo0sLPvrlW.bDpuetQnwbK', '1988-09-24', 'Laki-Laki', '1984-02-24', 'Lajang', '331 Alexa Causeway Suite 645 Rowlandberg, PA 42960-5817', '8', '10', '7', '9', '0', '71', '5', '2', 'admin', 3, NULL, NULL, '2024-04-23 02:20:38', '2024-04-23 02:20:38'),
(810013, 'B.J. HARIYANTO', NULL, 'qbauch@example.com', '+1-479-558-8973', 'nemmerich', '$2y$10$dCf8YpIl8ZuccutZYKeiKuqEWviVrgrD4Z9yl0nrGrtDp6A1blPb.', '1987-05-17', 'Perempuan', '1987-10-28', 'Menikah', '85172 Westley Streets Suite 561 Treutelbury, KS 48333', '7', '4', '7', '9', '10', '58', '5', '4', 'user', 4, NULL, NULL, '2024-04-23 02:20:46', '2024-04-23 02:20:46'),
(810014, 'CANDRA DWI H', NULL, 'bondricka@example.net', '(573) 834-7733', 'mills.linda', '$2y$10$L66ya0eRI80hROnT.qD8Ce.jSClvwqazEDnWv18cHPDhmTDEnc04e', '1999-01-01', 'Laki-Laki', '2015-08-18', 'Lajang', '206 Stroman Keys DuBuquefort, SC 30985', '4', '0', '6', '0', '1', '17', '0', '0', 'user', 5, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810015, 'CUNG UMAR ABIDIN', NULL, 'ibreitenberg@example.net', '+1 (940) 397-9756', 'stroman.athena', '$2y$10$exSczaXhaFeYe69xxTqiJORehcCZ.pSVMxFwM6XudJ/jW.3sJQRlW', '1984-10-02', 'Laki-Laki', '1992-01-09', 'Lajang', '91850 Geovany Hills Cliftonberg, MN 64401', '4', '9', '7', '1', '7', '30', '1', '2', 'user', 1, NULL, NULL, '2024-04-23 02:20:43', '2024-04-23 02:20:43'),
(810016, 'DEWI SULIANA', NULL, 'jaida53@example.org', '1-609-925-5980', 'virgie.mccullough', '$2y$10$5U1Po36xAkogejSPjjqJy.4OyzGZRV9..UUOmZgNR1QnLJCypClYu', '1979-05-30', 'Laki-Laki', '1992-05-01', 'Lajang', '76254 Kerluke Loaf Suite 934 Herthabury, KY 18906-3268', '2', '3', '3', '3', '10', '14', '2', '5', 'admin', 3, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810017, 'DIMAS DWI KRISNA', NULL, 'xmitchell@example.org', '(478) 725-3539', 'adams.annamae', '$2y$10$3xub5QJwkU5J8r926T4frOKCgcIif7G47eVC6i2UHFogcYY5N8ApG', '1984-04-15', 'Perempuan', '1999-12-30', 'Menikah', '29954 Andre Lodge South Jordyntown, IN 30334-4317', '7', '6', '7', '4', '0', '1', '3', '2', 'user', 5, NULL, NULL, '2024-04-23 02:20:47', '2024-04-23 02:20:47'),
(810018, 'DIO RASTA TRIYOGA', NULL, 'helene.herzog@example.com', '267.553.4957', 'robel.aimee', '$2y$10$BVe81bSDb6kh/d6K6Dw86OB01XdF9JRJNS5IObZj9QF00/T3kknLq', '2014-03-15', 'Laki-Laki', '2013-03-18', 'Menikah', '912 Grady Inlet Lake Esperanza, SD 69564-1693', '6', '0', '10', '5', '4', '77', '0', '4', 'admin', 4, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810019, 'DWI ANGGA WICAKSONO', NULL, 'nhaley@example.net', '385.932.2272', 'marcel91', '$2y$10$pzu2roT5pwAH4Q8oxWxkvOBZwYPdN4BchXXAF6Hvv/t3z3VMn8u7e', '1987-02-21', 'Perempuan', '1993-01-14', 'Lajang', '8169 Furman Garden Apt. 561 New Anastacioville, IN 12640', '3', '5', '6', '1', '0', '54', '4', '2', 'user', 1, NULL, NULL, '2024-04-23 02:20:46', '2024-04-23 02:20:46'),
(810020, 'DWI ASTUTIK', NULL, 'tremayne90@example.net', '575-665-1065', 'garnett88', '$2y$10$QZ0BBM/DD5a9m42bxhEh2O7Z.DfFHmIukYDtIM5VCPCME6rW1i9j6', '1985-03-19', 'Perempuan', '2022-11-17', 'Lajang', '598 Kunde Circle South Careyburgh, IN 97031', '9', '5', '4', '7', '5', '87', '0', '3', 'user', 5, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810022, 'DYAH AYU AMBAR PUSPITASARI', NULL, 'brown.merlin@example.org', '731-322-7529', 'crawford.lindgren', '$2y$10$1TPpYLwYg5zAu7HPlvhNTuK/tG6DWvm0kARafKz6QLSckEdyF1XW2', '2002-11-29', 'Laki-Laki', '2019-03-16', 'Menikah', '3306 Dibbert Mountains Apt. 341 West Emmetbury, UT 02077-5825', '0', '1', '0', '4', '8', '55', '3', '0', 'user', 2, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810023, 'DZULKIFLI AINUR ROHMAN', NULL, 'klocko.cristobal@example.com', '980-814-3775', 'malika.feest', '$2y$10$CirbwNcGGtbpo90zq6NSoeup5KEoGFM5ghe9qDH2ecH2.8qxOnJ22', '2015-04-09', 'Laki-Laki', '2016-05-05', 'Menikah', '331 Houston Crossing Apt. 088 Lake Lornafort, GA 49772', '5', '8', '2', '7', '3', '58', '3', '4', 'admin', 1, NULL, NULL, '2024-04-23 02:20:46', '2024-04-23 02:20:46'),
(810024, 'EDY CAHYONO', NULL, 'marcos.paucek@example.com', '+1.351.628.2484', 'bradtke.keven', '$2y$10$RISvG1kY3QUk4fP7iBbNueChs2n36THiJ3iGjprVrGaRGTYDlgMCG', '2017-04-02', 'Laki-Laki', '1971-12-30', 'Lajang', '668 Amy Cliffs Lake Hugh, CT 21386-8840', '3', '1', '8', '0', '2', '39', '2', '0', 'admin', 5, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810025, 'EKO ISHARIAWAN', NULL, 'twilderman@example.com', '651-910-0020', 'nlegros', '$2y$10$xvL2FtbyP.H668tNyUfQ5eKLjmbP9/y/u5eoFa0v3FNOKyqOT2GxG', '2008-12-02', 'Perempuan', '1980-10-27', 'Lajang', '7615 Mavis Locks Apt. 979 West Alannaberg, NJ 01114', '4', '4', '4', '8', '7', '2', '5', '3', 'user', 3, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810026, 'EKO SETIAWAN', NULL, 'hilma53@example.net', '(657) 556-9677', 'ruecker.breanna', '$2y$10$jRrWepF3D0ZDfaeEBjVJp.iREisnqqytgyMooz6ei0U2mB9hszkFy', '2018-04-04', 'Laki-Laki', '2018-09-26', 'Menikah', '519 Heidenreich Corner Apt. 661 Thomasstad, NY 17554', '6', '6', '9', '2', '3', '16', '3', '1', 'admin', 3, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810027, 'ERIK BUDIYANTO', NULL, 'tremayne.brekke@example.org', '+1-646-218-2446', 'nash.cremin', '$2y$10$jxSdV35b4OzgB9H.O3V/HuqJVkD4I7ria9JjXiqkPXKhS4OhvyGiS', '1992-06-07', 'Perempuan', '2005-01-26', 'Lajang', '421 Alan Shoal Apt. 225 Swiftshire, NV 24035-8812', '5', '6', '10', '9', '10', '26', '3', '3', 'admin', 4, NULL, NULL, '2024-04-23 02:20:47', '2024-04-23 02:20:47'),
(810028, 'ERNAWATI', NULL, 'newell.hettinger@example.org', '559-814-5767', 'skyla.shanahan', '$2y$10$endQXGQtsk3RO.rilt1V4OLhyZUH6rUYbI5AaYDtC3rHuHpK/VWkG', '1971-01-16', 'Perempuan', '2024-02-05', 'Lajang', '572 Martina Isle Suite 232 New Veronaberg, NC 59459-6806', '10', '6', '9', '7', '9', '45', '5', '3', 'user', 2, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810029, 'FENDIK KURNIAWAN', NULL, 'kozey.leon@example.org', '385.248.9111', 'xupton', '$2y$10$cFzeA8d2IoYRLh28QvD76uXe2hrKTrha6jtIc8XRnhGLgQ2GVxcAG', '2001-09-06', 'Laki-Laki', '2005-05-29', 'Menikah', '8814 Isabella Walks North Willow, NM 49901', '7', '7', '10', '7', '2', '49', '1', '4', 'admin', 1, NULL, NULL, '2024-04-23 02:20:47', '2024-04-23 02:20:47'),
(810030, 'HENGKI', NULL, 'huel.elza@example.net', '(518) 399-7273', 'hschimmel', '$2y$10$0D2ZM962WYriB589EjjX8OVz0ijKtiyozuDpi6O2BNk3N2GeXrRgK', '1997-09-12', 'Laki-Laki', '2021-09-13', 'Menikah', '425 Trent Mill Lake Vivien, MO 64976', '5', '6', '10', '9', '2', '38', '0', '2', 'user', 2, NULL, NULL, '2024-04-23 02:20:46', '2024-04-23 02:20:46'),
(810031, 'HERI BAGUS MAHARDIKA', NULL, 'hill.dashawn@example.com', '+13618933188', 'keebler.theresia', '$2y$10$rufL9flWwL416vaaGzLCPur5RBOKdBoF3LgZwlodqat1ECpKMZPYS', '2022-06-14', 'Laki-Laki', '1971-04-20', 'Menikah', '2204 Janelle Fort Alysaberg, KY 17227', '8', '9', '3', '10', '8', '4', '0', '1', 'user', 3, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810032, 'HERU PRAYITNO', NULL, 'mohammad.wisozk@example.org', '+1-772-952-2928', 'marge90', '$2y$10$iYcE1W2Gk7Ixs/Us3oPsb.zENfjg1.J9BGz2bazdU53s30qlDKm6m', '1985-02-20', 'Laki-Laki', '1991-07-28', 'Menikah', '485 Heller Roads Apt. 904 Preciousland, PA 51401-5995', '8', '5', '10', '8', '5', '31', '4', '0', 'admin', 2, NULL, NULL, '2024-04-23 02:20:43', '2024-04-23 02:20:43'),
(810033, 'IKA WIJI PRAMESWARI', NULL, 'stroman.rossie@example.net', '1-651-350-3647', 'ryan.kaitlyn', '$2y$10$eupn3/FPLvuZRsZu91A.E.fZiMjI8aUIsrzYNCeRsRxWeXgEnZGuq', '1980-07-19', 'Laki-Laki', '1980-08-16', 'Lajang', '930 Hailee Inlet Apt. 277 Port Dagmarberg, NH 51755-2768', '10', '4', '2', '3', '2', '24', '5', '3', 'user', 2, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810034, 'IRFANDI PRASETYO', NULL, 'shaylee26@example.net', '205.974.5250', 'marvin.margret', '$2y$10$FVSLN9o5n3jQrhC6Wl.kH.LxsOLKZKklzMrKLRXDL462Grtk1P852', '1974-10-17', 'Laki-Laki', '1996-10-02', 'Lajang', '565 Kreiger Trail Apt. 391 Johnsontown, IL 31002', '10', '8', '8', '6', '3', '79', '0', '0', 'user', 2, NULL, NULL, '2024-04-23 02:20:46', '2024-04-23 02:20:46'),
(810035, 'ISTITIK', NULL, 'katelynn67@example.com', '832-503-9461', 'opal.emard', '$2y$10$4bmF0xzCap5.7/voaPior.afikcsT4tSf2NFdeh684JLXINzg9jty', '1993-01-09', 'Laki-Laki', '1970-12-04', 'Menikah', '563 Rath Ford Suite 232 Budchester, IN 79785-8166', '2', '9', '2', '3', '4', '22', '2', '2', 'admin', 2, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810036, 'IVA YULITA', NULL, 'xbednar@example.net', '1-252-332-5558', 'ibode', '$2y$10$JpMpuQ4UfsKFbC45enUAsudOgdm/xRS6aXaif3ygGx.w9.syTILUm', '1994-12-05', 'Laki-Laki', '1995-01-12', 'Lajang', '571 Lloyd Junction Apt. 252 Port Annamaeland, IN 51924', '6', '7', '6', '8', '4', '79', '5', '4', 'admin', 3, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810037, 'JEREMY FERLINDO ADITYA', NULL, 'haylee.prosacco@example.com', '+1-515-848-0569', 'rwilderman', '$2y$10$OQbVvVx5ZjMrBO1vfAkn0eJsA5oH0Hlfswna2DELrp1SdrMcbTBAO', '2012-09-26', 'Laki-Laki', '2007-04-14', 'Lajang', '361 Willms Rest Apt. 996 Turnerberg, NC 67223', '2', '1', '1', '3', '5', '76', '5', '5', 'user', 3, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810038, 'KHOLIFAH', NULL, 'theresia06@example.net', '+1.351.571.4251', 'nasir71', '$2y$10$g9CKPOX3u9Xf/ZaYHDyv0uo/.mVnCA6xhlddmWfeqR.3x5/67vy5y', '1971-11-25', 'Laki-Laki', '2003-02-25', 'Lajang', '79423 Micheal Passage Lindaland, HI 94814-2148', '1', '8', '7', '0', '2', '70', '1', '2', 'admin', 5, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810039, 'LANA AGUS DWI CAHYONO', NULL, 'hansen.ruthie@example.org', '334-542-7073', 'lelah.moore', '$2y$10$06n.jM5ilRF2khXcxREcUuNqZ2VOFg0kITTlRUgEvHzFoURr./QLa', '1991-01-20', 'Laki-Laki', '2009-01-20', 'Lajang', '711 Ebba Crossing Suite 434 Petratown, WY 49338-1082', '6', '5', '2', '7', '5', '69', '2', '0', 'admin', 2, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810040, 'LEO FITRIA PUTRA', NULL, 'charles.cole@example.org', '1-689-326-7511', 'hrempel', '$2y$10$PTkgYCZg8ECEFLW7buh0M.Gc6EcJ8D17FaTtOuM5G2M69/OlNMTKe', '1982-07-13', 'Perempuan', '1986-02-04', 'Lajang', '18266 Bruen Bridge Eraton, CA 38617', '4', '4', '1', '7', '0', '50', '0', '5', 'user', 5, NULL, NULL, '2024-04-23 02:20:43', '2024-04-23 02:20:43'),
(810041, 'PUJI LILIK SUGIARTI', NULL, 'xraynor@example.com', '(445) 554-0774', 'howell.melyssa', '$2y$10$cZJD366W78QZgq3MvDbuWOMYu63z.LbXS5w7GZ0zPwqpnpW7YPw3m', '1998-08-28', 'Perempuan', '1971-11-29', 'Menikah', '905 Kelli Port Apt. 734 West Janice, OH 28847', '0', '5', '2', '5', '4', '66', '3', '1', 'admin', 4, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810042, 'LINA DWI EKAWATI', NULL, 'khansen@example.org', '1-279-688-0595', 'qortiz', '$2y$10$IfogucQkA3D9FRmVomouBeo.DpUZUfCcbql5Lm1sgxIX8z.KC2uv.', '1973-09-22', 'Laki-Laki', '1983-08-09', 'Lajang', '2922 Aufderhar Drive Suite 891 East Kylieburgh, MI 65411-9354', '5', '3', '4', '5', '3', '46', '2', '1', 'admin', 5, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810043, 'MOCH. JULI SAMPURNO', NULL, 'hoeger.nannie@example.org', '(857) 884-4021', 'cjacobi', '$2y$10$GcMmrNyB0YrKjVXJRUa83.hM5AERI2XqniLzVH/6QJUlm00gEAnG2', '1975-04-13', 'Laki-Laki', '1970-02-02', 'Lajang', '90518 Heathcote Track Apt. 494 North Ellen, SC 51037', '10', '8', '1', '9', '9', '48', '1', '3', 'admin', 4, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810044, 'M. RIDUWAN', NULL, 'guy.fahey@example.com', '+1-310-875-6448', 'kip10', '$2y$10$afWHcEJArEIUqyWUkePdYuucpggUpmH5Cr1p78SInvjcvsrPibhwK', '1979-11-30', 'Perempuan', '2016-02-17', 'Menikah', '12597 America Mill East Abraham, AZ 66835-1082', '10', '7', '4', '7', '5', '90', '3', '2', 'admin', 1, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810045, 'MUHAMMAD AGUS SETIAWAN', NULL, 'johann.gutkowski@example.net', '+1.971.907.3369', 'imani19', '$2y$10$DIU7IQX0qXWQKvDkkkQVF.owLanSmJDtoJea0wQu/HzmhwbYf4ekS', '1986-07-05', 'Laki-Laki', '1995-11-30', 'Menikah', '7614 Kristoffer Roads Apt. 511 Devinmouth, CT 26480', '2', '7', '1', '8', '10', '33', '2', '4', 'user', 2, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810046, 'M. ANNAS SETYO BAKTI', NULL, 'dach.stephanie@example.org', '1-210-915-4100', 'virgie90', '$2y$10$ezhzLsC4PV/4ORNiaTg0ROC0q5jTzPWWlVCnhgSn0hGPa4cFXfEOS', '1975-02-26', 'Perempuan', '2017-08-25', 'Lajang', '945 Yvette Plaza Apt. 751 New Emersonland, CT 73032-8759', '1', '7', '1', '0', '2', '33', '2', '4', 'admin', 4, NULL, NULL, '2024-04-23 02:20:47', '2024-04-23 02:20:47'),
(810047, 'M. FENDI', NULL, 'marcos.boyer@example.net', '+1-847-345-2811', 'lind.bryana', '$2y$10$KUTq4nxmMV9Uu/tGnc1TyucgQGXKid73Vna7XqaRnKTrIXidRlA7q', '2011-02-03', 'Laki-Laki', '1973-06-26', 'Lajang', '85291 Roman Stream Lake Adan, MT 01731', '8', '2', '6', '3', '9', '69', '1', '0', 'user', 5, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810048, 'M. NUR KHOLIQ', NULL, 'winnifred56@example.com', '+1-352-304-5711', 'trudie31', '$2y$10$QjfmjuiroqGP14.mDHpwqeemPpSDB1B6.I1u9YIyYsHpFZreXGpla', '1998-02-09', 'Perempuan', '2018-07-10', 'Lajang', '910 Berenice Springs Marksburgh, IL 92340-6928', '6', '5', '10', '1', '4', '37', '1', '3', 'admin', 1, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810049, 'M. ZAINAL ANSHORI', NULL, 'lukas87@example.net', '+1-304-748-2499', 'xsmith', '$2y$10$Bt/z9XI6PEhYyr4TKjVkb.ideMubozKbGTZ1IyOl.TvYlJ0owymT2', '1999-11-19', 'Perempuan', '1992-05-04', 'Lajang', '1662 Dion Junctions Suite 146 East Immanuelchester, ID 01495', '5', '1', '8', '3', '3', '20', '3', '2', 'user', 1, NULL, NULL, '2024-04-23 02:20:43', '2024-04-23 02:20:43'),
(810052, 'MASHADI SETIAWAN', NULL, 'pemmerich@example.net', '+1.360.939.0970', 'aleen.feil', '$2y$10$K/8ybX7Bo3LSS91Q7/BORu2mseDdPZSFalfi3CskZSKvjdhViVxUm', '2024-02-28', 'Laki-Laki', '1996-08-16', 'Menikah', '514 Timothy Bridge South Leraport, CA 17385', '9', '1', '1', '2', '4', '45', '2', '5', 'user', 1, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810053, 'MELKI MALELAK', NULL, 'dakota.kuhlman@example.net', '(570) 350-1713', 'ondricka.kenya', '$2y$10$A2uU6CUBmNjPguj/UqorBeXDNRHXf6SK4Md930r4Wrmojazh5cNGe', '2023-02-14', 'Laki-Laki', '2001-03-30', 'Lajang', '2032 Kessler Harbor North Laylaview, DE 99509-6847', '9', '5', '3', '0', '7', '83', '5', '4', 'admin', 2, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810054, 'MISERI', NULL, 'freda.wintheiser@example.org', '(561) 328-2552', 'kristina.waelchi', '$2y$10$P9LwsEO2xkUG57tnqknP7ebTlvMoWjkIGI07c8y.nukTFhfBEbOVu', '1997-09-21', 'Perempuan', '1999-03-09', 'Menikah', '91487 Mariana Streets Lake Cadefort, LA 38491', '3', '9', '7', '1', '1', '12', '4', '4', 'admin', 5, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810055, 'MOCH. CHOIRUDIN', NULL, 'justine.hermiston@example.net', '+1.763.264.0483', 'jakayla.schowalter', '$2y$10$mvwD5IQWrHicBkYOZGiaxO3BPcUoFb9MT.hAb2zN2g64iH7Mr.PHm', '1994-03-18', 'Laki-Laki', '1984-05-28', 'Menikah', '24537 Jarrod Well South Freda, WV 29653', '6', '1', '0', '10', '6', '52', '5', '1', 'admin', 4, NULL, NULL, '2024-04-23 02:20:43', '2024-04-23 02:20:43'),
(810058, 'NDARI LISWANTI', NULL, 'harmony79@example.net', '+1-541-921-5037', 'slangworth', '$2y$10$oYSKHms0zhGcvMnDUpM2hOPZoF1gWpwvpqG1k0eh6pzTD4u1JO5Uy', '1976-08-10', 'Perempuan', '2007-05-05', 'Lajang', '440 Daniel Meadow Apt. 541 West Kamille, GA 32157-7639', '6', '4', '5', '6', '9', '84', '4', '4', 'user', 5, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810059, 'NETI PRIHANDARI', NULL, 'bradley.herzog@example.org', '(760) 615-1772', 'igottlieb', '$2y$10$6ZOJXaJ3OORgfAyDRQ4su.mQdFVX5KbBIijC.5EzWommXaAn39Yr.', '1981-12-16', 'Perempuan', '2007-01-24', 'Lajang', '5132 Dickens Villages Suite 018 Nedrabury, UT 17317', '7', '7', '10', '9', '9', '59', '0', '3', 'user', 1, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810060, 'NOVARIA WULANDARI', NULL, 'jgreenfelder@example.com', '(650) 759-1916', 'kuhic.dawn', '$2y$10$TyTaJcJw5kTj8ityvUO2beVUMC94Hf5DwcbJRp08S6FH1cdELsiIG', '2008-11-18', 'Laki-Laki', '1994-01-10', 'Lajang', '62867 Hayes Loaf Laishamouth, OR 92661-9128', '2', '6', '2', '10', '4', '23', '3', '2', 'user', 5, NULL, NULL, '2024-04-23 02:20:43', '2024-04-23 02:20:43'),
(810061, 'NUR AFIKAH', NULL, 'trudie.moen@example.net', '+1.678.650.1065', 'weimann.matt', '$2y$10$7cODOTGWO3w3V19/ekrimuuby3dH3lARXZ6pEpn7k/PQTbazT9Cfq', '2017-04-07', 'Laki-Laki', '1978-04-15', 'Lajang', '420 Willms Manor North Coby, NJ 74721-8883', '7', '9', '6', '8', '1', '24', '5', '3', 'admin', 5, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810062, 'NURIAWAN', NULL, 'weimann.jameson@example.net', '1-440-520-2812', 'balistreri.kennedy', '$2y$10$QOyiWuqqLTvRk.h7Lv4jSefZDymIp0mgQtuv9/ElU4F5L5jIihxge', '1973-04-30', 'Perempuan', '1982-07-29', 'Lajang', '282 Florence Road Cartwrightville, AL 98407', '9', '2', '4', '9', '3', '7', '3', '1', 'admin', 4, NULL, NULL, '2024-04-23 02:20:43', '2024-04-23 02:20:43'),
(810063, 'NURUL HIDAYAH', NULL, 'vcarter@example.net', '805-381-5846', 'kathryn44', '$2y$10$S.TzFsJI0OxnWctwImvjru4CSWKhBcDvkRdKhSHEnI0d0tAecUiVm', '2019-08-11', 'Laki-Laki', '2020-05-29', 'Menikah', '73727 Stiedemann Ville Apt. 240 Bergnaumview, AZ 10942', '0', '1', '2', '7', '6', '39', '0', '3', 'user', 3, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810064, 'NURYADI PRASETYO', NULL, 'juwan.witting@example.com', '1-703-744-2079', 'obarton', '$2y$10$SDj.t1GfDRdvSWhRBuU1kuwGMNKB.hK.lKM2reyyiY3hGajNzP34y', '1990-08-28', 'Laki-Laki', '1991-02-27', 'Lajang', '331 West Bridge New Enos, TN 26220-2738', '2', '2', '8', '10', '1', '31', '4', '2', 'user', 3, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810065, 'RATMIN WIJOKO', NULL, 'delphia76@example.net', '+1-934-990-2601', 'amos27', '$2y$10$4ij2roD14ZTxghXLjS2aPuBg5g0.vhV.DwdPO0E41f8JNyZgfXwdC', '2007-08-29', 'Laki-Laki', '2019-11-02', 'Lajang', '96969 Renner Fall Suite 772 Samsonberg, GA 62917', '4', '10', '8', '10', '0', '76', '5', '4', 'admin', 2, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810066, 'RATNA HILDA AGUSTINA', NULL, 'kenneth.wyman@example.org', '(678) 271-6331', 'kayla.feest', '$2y$10$x1MjZRv1jsleU50reOxiNOOaoDvpYmXbCg9vJmNb/STW.a8/2tMjC', '1984-09-06', 'Perempuan', '1990-08-15', 'Menikah', '269 Garry Hollow Apt. 913 East Wilton, MO 94739', '5', '9', '3', '6', '10', '79', '4', '4', 'user', 2, NULL, NULL, '2024-04-23 02:20:46', '2024-04-23 02:20:46'),
(810067, 'RESTU SINGGIH', NULL, 'lemke.kacie@example.net', '307.767.4281', 'casper.foster', '$2y$10$Ht8W3FrT62CMPjw25i63KOfwyAsaBY2h9Z1c7NKqAy7wpEH6AV1XS', '1976-08-01', 'Perempuan', '1972-12-24', 'Menikah', '5201 Kelvin Valleys Yostton, OK 24272-1835', '4', '4', '2', '0', '10', '57', '3', '5', 'admin', 2, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810069, 'ROQIAH', NULL, 'hermann.ulises@example.net', '+1-313-361-1243', 'ikub', '$2y$10$TGma85zZYkZg/zoIxzD48.liMT8zKrIGLddHrHjCdEwGchchr0QQK', '2021-08-22', 'Perempuan', '1976-04-27', 'Menikah', '350 Tracey Turnpike Suite 173 Alexiston, IN 71177', '4', '10', '6', '1', '2', '84', '2', '4', 'user', 3, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810070, 'RULY CAHYONO', NULL, 'jacobs.lourdes@example.com', '+1-678-286-9639', 'max.kulas', '$2y$10$qgM1ZZAzHie4nyttO/uoe.vvhBJiAz3TNcncGKycZ4B/Cow2uxDlK', '1972-04-08', 'Laki-Laki', '1977-09-02', 'Lajang', '380 Zelma Alley Suite 691 Beahanberg, ND 19623-3959', '3', '10', '3', '5', '1', '74', '5', '0', 'admin', 2, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810071, 'SARI ROYANI', NULL, 'enid.daniel@example.com', '1-283-892-3628', 'ivon', '$2y$10$XQF7rk4vb3pYjrrMoe7hgOxjVq/JK8PcMtI5ISjlUW2liEe4UhsAW', '1993-03-29', 'Perempuan', '2021-03-29', 'Lajang', '8022 Gay Cove Apt. 038 West Shirleyburgh, CA 31153-2096', '8', '2', '5', '4', '0', '27', '5', '4', 'user', 2, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810072, 'SITI AISAH MAYA', NULL, 'coby39@example.net', '+18283302980', 'bradtke.alanna', '$2y$10$HJnbtXHpy7D2cB4T/5TpaeEpkq0zvUIvmw9YEtPYh9HoryI7jg00O', '2009-02-26', 'Perempuan', '2019-10-07', 'Menikah', '6376 Roob Walks Gleichnerville, NM 10757-9809', '3', '3', '10', '10', '1', '34', '2', '0', 'user', 3, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810073, 'SITIMU ARIPAH', NULL, 'kassulke.maurine@example.org', '+14422937838', 'mconsidine', '$2y$10$ZHTJgFVsCqWo0lgrgl6XHuWE65Tf0fnuiofPVDTSgSFIbvDEHa.cm', '2023-06-19', 'Perempuan', '1978-01-12', 'Menikah', '306 Manley Row Suite 187 Louiemouth, IN 12475-1259', '9', '6', '2', '5', '0', '44', '2', '0', 'user', 3, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810074, 'NGAROPAH', NULL, 'sipes.alexa@example.org', '858.578.7826', 'nupton', '$2y$10$9YPeJGC8WskeJm50ixOVd.o/cXTOQN0509B4/jZNOSprpwSxFXiFu', '2014-01-16', 'Laki-Laki', '1970-03-15', 'Menikah', '227 Kenyon Prairie Apt. 816 West Ludwigberg, AR 76879', '2', '1', '1', '2', '0', '75', '3', '0', 'user', 1, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810075, 'SITI SAMSIYAH', NULL, 'krystel08@example.com', '785-521-7200', 'gilda.hayes', '$2y$10$vtYFdA7m5j5mJKTN67FYJe7IyzrrzbLOxVub9UPvVGDwlI3xQqV1u', '2014-12-02', 'Perempuan', '2016-09-18', 'Menikah', '69109 Damian Manors Phylliston, KY 13544', '9', '9', '6', '6', '2', '31', '5', '1', 'admin', 2, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810076, 'SRI SAMSIATI', NULL, 'sauer.bethany@example.org', '802-523-8179', 'tyree99', '$2y$10$EvhJr1qXzdFUFYGAUzJDgequAEeHTgGWydbpq3P1d7HKsD/MCaDNq', '1983-06-23', 'Laki-Laki', '1990-02-20', 'Menikah', '681 Trace Path Apt. 185 Brandiside, IA 09481', '2', '8', '3', '6', '3', '30', '2', '0', 'admin', 4, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810077, 'SUBIYANTO', NULL, 'veum.raphael@example.net', '828-921-2071', 'kyra54', '$2y$10$OSVF9qAKzMGlXeZYzcmXsO.3lGqgqYnGZEF6b/bwsEvwzFjgtUyk6', '2016-07-23', 'Perempuan', '2023-12-09', 'Lajang', '926 Lang Tunnel Lake Seth, KY 13011', '10', '6', '10', '3', '10', '7', '4', '3', 'admin', 1, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810078, 'SUGIYANTO', NULL, 'eileen.littel@example.net', '+17575059275', 'vonrueden.lew', '$2y$10$r9a47ZrxaYFXAgb5stReGeGWCxWvuoLImLHZdi87HGtChbfz/gX1u', '2017-04-13', 'Laki-Laki', '1989-02-20', 'Lajang', '546 Willie Garden Prosaccohaven, NE 24288-8987', '3', '10', '5', '3', '8', '41', '3', '4', 'admin', 3, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810079, 'SUGIATI', NULL, 'xschulist@example.net', '+1.541.225.6028', 'nadia.koelpin', '$2y$10$BtN1VPC1MVw/bQQifGWDqu.D0eKGd4m.o2/ANBnrvSWKhaKxnQXXC', '1987-08-29', 'Laki-Laki', '2004-05-17', 'Lajang', '9637 Jaskolski Corner Lake Hebermouth, SD 08918-0564', '2', '10', '6', '3', '9', '87', '3', '2', 'user', 3, NULL, NULL, '2024-04-23 02:20:38', '2024-04-23 02:20:38'),
(810080, 'SULISTYORINI', NULL, 'maggio.opal@example.net', '949.524.1445', 'qbotsford', '$2y$10$19keBNQ.Uil.GMvPx0F5U.79k4SAGHzAn.1VVdLpKP5iSQzByHyGy', '1980-07-14', 'Perempuan', '2004-09-05', 'Menikah', '5798 Nitzsche Haven Suite 604 South Skylar, FL 49384', '10', '4', '0', '0', '8', '22', '3', '2', 'admin', 5, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810081, 'SUMARNI', NULL, 'brandi04@example.com', '432.466.4572', 'jasmin94', '$2y$10$URCqLPIOFanYzYleNIHI3.jBeYkl/einymDCQPquR14s0HOG3ADca', '2004-05-13', 'Laki-Laki', '1973-07-06', 'Menikah', '63355 Damian Field Apt. 561 Lynchtown, CT 24240', '10', '1', '9', '7', '5', '38', '5', '3', 'user', 1, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810082, 'SUMARTI', NULL, 'kasandra.hudson@example.org', '+1.283.230.8020', 'jamie27', '$2y$10$wex4n8HdYvSOeoMbqC4.Iu3E.igRRAWRk/0cYuBwzsgtaGSmxzqP6', '1970-09-12', 'Perempuan', '2004-10-30', 'Lajang', '23832 Gibson Mall Suite 925 North Kattieberg, GA 42922', '0', '8', '2', '3', '8', '60', '5', '3', 'user', 3, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810083, 'SUMARTO', NULL, 'qgottlieb@example.net', '+1-240-954-6987', 'abshire.brandy', '$2y$10$tA/IPLvjl3u7BLdlew/t0ei2pik039o1Y9HiHE21DvTkznxKmIC6a', '1992-12-21', 'Laki-Laki', '1971-11-19', 'Menikah', '57663 Ryan Throughway Apt. 865 East Audreanne, PA 30394-6887', '8', '0', '7', '10', '7', '61', '4', '0', 'user', 2, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810084, 'SUNARI', NULL, 'diego47@example.com', '620.894.8327', 'river18', '$2y$10$gvKMKe83XV5Ou.39.b6G5OWYN4Bw7fclXYoM6V4HwUPw14Saucjkm', '1990-04-01', 'Perempuan', '1997-08-22', 'Menikah', '96170 Leuschke Keys Windlerberg, MI 82544', '10', '10', '3', '6', '1', '71', '2', '0', 'user', 3, NULL, NULL, '2024-04-23 02:20:46', '2024-04-23 02:20:46'),
(810085, 'SUPADI', NULL, 'schamberger.gussie@example.org', '(234) 414-7131', 'iratke', '$2y$10$9K8mD0tNiM7XyQ5g68Hksupi70Y7G7YbVUKx1Q39Bz6WzoTHyqBhO', '2006-04-23', 'Perempuan', '1980-02-20', 'Menikah', '4612 Dovie Ranch South Franciscofurt, NJ 41384', '10', '3', '2', '6', '4', '24', '3', '3', 'user', 4, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810086, 'SUPAIYAH', NULL, 'aimee.wilderman@example.org', '+1-717-839-7881', 'natalie.leuschke', '$2y$10$Y0dsu9ZIhooJvtA.Z80v7Oi8eVWIYnAo0aayM54z/mQHbHGZV2TF2', '2010-01-08', 'Laki-Laki', '1991-02-18', 'Menikah', '635 Camylle Glens Suite 907 Farrellfurt, NC 57003', '3', '8', '10', '4', '9', '62', '3', '1', 'admin', 1, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810087, 'SUPINAH', NULL, 'annabelle47@example.net', '1-540-802-7863', 'kdonnelly', '$2y$10$hS4ejxVetG63Jes0/W9sFeyDWYuV5/d9vH0Yav/075CBDJcOUuCvG', '1997-05-24', 'Perempuan', '2013-10-04', 'Lajang', '75811 VonRueden Lights Suite 133 Fadelshire, TN 33620-7166', '0', '5', '0', '5', '9', '83', '1', '2', 'user', 2, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810088, 'SUPRIYANTO', NULL, 'gerlach.elfrieda@example.net', '+1-341-498-8759', 'preynolds', '$2y$10$W66FGAvL2rj.AZWDM31ZdOYs1znXWoGmb6Et5KD/nI27r4d1Q.q0G', '2009-10-28', 'Laki-Laki', '1976-04-27', 'Menikah', '6825 Hettinger Land Hyattberg, WI 08166-5370', '9', '7', '8', '5', '8', '1', '1', '0', 'user', 4, NULL, NULL, '2024-04-23 02:20:40', '2024-04-23 02:20:40'),
(810089, 'SUTRISNO', NULL, 'wschinner@example.org', '(248) 896-8521', 'handerson', '$2y$10$Z0sbg6y/DD5VBDA56qvOcuHn63FlOiCPff/a345iZqo/sdvMVBkoK', '2015-04-23', 'Perempuan', '1988-01-17', 'Menikah', '1791 Rempel Forks Estrellabury, CO 73923', '3', '2', '9', '5', '3', '43', '5', '2', 'admin', 4, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810091, 'TITIN', NULL, 'carroll.shane@example.com', '+1 (424) 439-6058', 'alek.jones', '$2y$10$HIIOTSi6IJT7ZlYVHFLqtOkT35znJ03noCPaTtCCWglwL3iuS75bu', '2010-03-10', 'Laki-Laki', '2014-06-21', 'Menikah', '252 Reilly Landing Apt. 810 Hermanstad, LA 60278', '6', '3', '9', '2', '5', '28', '2', '3', 'admin', 2, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810092, 'TITO AGUNG WICAKSONO', NULL, 'gerry.zieme@example.org', '1-618-399-1366', 'rose.buckridge', '$2y$10$MxPoC9qCWxCaMm2eE9.Go.LHtbgPk8PDYjGyJIHxBAfnWOhUw3Q4i', '2010-05-05', 'Perempuan', '1993-06-14', 'Menikah', '8348 Alyce Island South Rhiannon, IN 54166', '7', '10', '0', '8', '0', '21', '1', '1', 'user', 3, NULL, NULL, '2024-04-23 02:20:44', '2024-04-23 02:20:44'),
(810093, 'TONO', NULL, 'clifford.daniel@example.org', '(808) 595-2190', 'terry.mckenzie', '$2y$10$x35zlzkUrd6Epb7vWR3M4urDjSbwErPXYvY5LMPyBEraajj1co9lK', '2022-10-08', 'Laki-Laki', '2007-05-29', 'Menikah', '209 Rau Ridges Apt. 531 Leannonshire, OK 65665', '0', '10', '0', '1', '3', '35', '1', '3', 'user', 2, NULL, NULL, '2024-04-23 02:20:42', '2024-04-23 02:20:42'),
(810094, 'WARSINI', NULL, 'darian.considine@example.org', '(616) 430-2569', 'bruen.cleora', '$2y$10$k4vXkSwu.ZIgX2Cj9yZnkew09JhKQERA1XWor/iQmXJys72fTqYES', '2009-06-01', 'Laki-Laki', '1993-12-21', 'Menikah', '5808 Erik Forge East Queenmouth, IL 81540', '1', '2', '9', '4', '4', '10', '2', '0', 'user', 2, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39'),
(810096, 'WINARSIH', NULL, 'dlegros@example.org', '845.290.2418', 'babshire', '$2y$10$ywiDJGJkVfjL7ZyIih.jDetcpP1yyzk1BxX2Biy8wSozgUW6kARXm', '2012-01-23', 'Laki-Laki', '2018-05-18', 'Menikah', '70699 Muller Creek Suite 670 Christianbury, NM 37290-4898', '5', '5', '2', '3', '3', '62', '3', '3', 'admin', 2, NULL, NULL, '2024-04-23 02:20:41', '2024-04-23 02:20:41'),
(810097, 'YUYUN EKA WAHYUTRI', NULL, 'grant.jared@example.org', '(347) 747-5047', 'flatley.lorna', '$2y$10$zX4ErVPXATP0WuisiVf1bOnQck2CE3wtPqZPDhzoZ2KF0lYxUDyum', '2021-04-23', 'Perempuan', '2019-07-20', 'Lajang', '42610 Yadira Roads Sydnifort, NC 33064-9193', '2', '5', '10', '9', '1', '13', '5', '0', 'user', 5, NULL, NULL, '2024-04-23 02:20:45', '2024-04-23 02:20:45'),
(810099, 'IMAM SUYUDI', NULL, 'quitzon.francis@example.net', '224.961.3005', 'hkessler', '$2y$10$7QEJZBbQf5Y6P4jouBvv4eWV7eezHl26M.kZF4Gat6dOME97GTvfe', '2021-03-04', 'Perempuan', '2004-12-15', 'Lajang', '790 Layla Course Bernicefurt, WY 85637', '7', '6', '5', '7', '4', '68', '0', '0', 'admin', 3, NULL, NULL, '2024-04-23 02:20:47', '2024-04-23 02:20:47'),
(810100, 'MISNO', NULL, 'dare.adelbert@example.net', '+1.425.593.2813', 'ugoyette', '$2y$10$.uePxkEa5lTlqy6Wi6c.ve4uaAFrjx54/evza.Jv5XPaBzav5Ke..', '1973-12-13', 'Perempuan', '1989-04-15', 'Menikah', '64605 Quitzon Groves Nikolausmouth, MI 99181', '0', '0', '1', '7', '2', '30', '3', '0', 'admin', 3, NULL, NULL, '2024-04-23 02:20:47', '2024-04-23 02:20:47'),
(810101, 'KUSNUL NUR CHOTIMAH', NULL, 'mertz.major@example.org', '+1-267-358-9941', 'johns.cali', '$2y$10$oTlNHImHqUUsppxM2U4DWeaRIUx4fGWhwleQ10kJv8h370/iXZRGe', '1973-09-25', 'Perempuan', '2022-10-28', 'Menikah', '1762 Thiel Divide Suite 497 Denesikmouth, KY 64466', '6', '2', '1', '1', '1', '68', '3', '0', 'user', 5, NULL, NULL, '2024-04-23 02:20:47', '2024-04-23 02:20:47'),
(810102, 'MEHDI ARISTA HARDIANTORO', NULL, 'major42@example.org', '1-303-804-5849', 'wilma.trantow', '$2y$10$qscfZXuFi8oHJce8Sns8UuSQvpMkzBpSt5JAaXPLTxv7UamEWO23y', '1996-01-28', 'Laki-Laki', '2010-10-20', 'Menikah', '2109 Donato Plaza Miloberg, AR 92197', '10', '6', '2', '5', '7', '90', '4', '0', 'user', 2, NULL, NULL, '2024-04-23 02:20:47', '2024-04-23 02:20:47'),
(810103, 'VICHA RAHMAWATI', NULL, 'jessie99@example.net', '+1-283-516-4553', 'zmayert', '$2y$10$lJ/ArX2sABEeEgOadR.G0egC/v0kz6JkUwWayBpHgk3vgyeIGlWde', '2019-06-12', 'Laki-Laki', '1982-09-28', 'Lajang', '92181 Dooley Drive Apt. 027 Fredericstad, LA 67854-0342', '1', '9', '10', '1', '3', '37', '5', '2', 'admin', 4, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810104, 'TIO ALDY PRATAMA', NULL, 'vicky83@example.com', '539-896-3957', 'charlie57', '$2y$10$ks89YTT9wTqVnruBwyWa1ev87IK8FL6OH/tqfIMK0a0V65xh5G0CK', '1999-04-07', 'Perempuan', '2013-11-13', 'Lajang', '442 Richmond Groves Apt. 812 O\'Connertown, KS 25450', '8', '3', '1', '6', '6', '80', '0', '5', 'user', 3, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810105, 'NIKMAH FAJAROH', NULL, 'spagac@example.com', '+16519761487', 'pkassulke', '$2y$10$qvXszYZLXSiLM0v6aCy26ups/AnEpeAwQDWcn3j.yN77/E8DAwnzi', '1994-05-12', 'Laki-Laki', '2022-05-05', 'Menikah', '6201 Lupe Streets Rosenbaumberg, OK 73830-1358', '10', '3', '10', '8', '2', '35', '1', '3', 'admin', 2, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810106, 'ACHMAD FANANI', NULL, 'clint.mckenzie@example.net', '+1-754-650-0626', 'ahintz', '$2y$10$oHfXpYMnhe7yqz/aEDWad.RaPCvNOm25DDfG9TsSLqlNt5wOF35JW', '1979-02-15', 'Laki-Laki', '1970-07-08', 'Menikah', '81461 Lexie Rapid Roobville, CA 94905', '5', '3', '1', '2', '5', '78', '0', '1', 'user', 3, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810107, 'BAGUS YULIONO', NULL, 'fwindler@example.org', '843-259-0971', 'weston65', '$2y$10$6uSNp5JNkbbAF2EpIc/MCucp2yrvBYN2l8SlXXFUJamUuxumjitL6', '2006-03-07', 'Laki-Laki', '1974-02-24', 'Lajang', '3668 Gerhold Tunnel Port Leonor, OR 20249-9820', '4', '2', '4', '9', '3', '15', '4', '4', 'admin', 4, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810108, 'ANA MARATUS SOLICHAH', NULL, 'hill.ron@example.com', '323.835.9174', 'abrakus', '$2y$10$2HFiw.k21oYd/3KAFXw0xuDHKoIlRJ3h/d/fssPbxm25QgVoFt4w6', '2018-02-23', 'Perempuan', '2017-12-05', 'Menikah', '7685 Leif Fort Apt. 318 North Garettfurt, DC 74595', '1', '7', '1', '10', '2', '90', '2', '2', 'admin', 3, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810109, 'ANIS PARAMITA', NULL, 'wiley20@example.org', '1-386-792-0761', 'runolfsdottir.leonard', '$2y$10$JKuW6lPYh30aZPuJeH.fAu7wnvoodHlgE/1WeHrYF.pgsD4YygVL6', '2013-07-02', 'Laki-Laki', '1998-02-27', 'Lajang', '7327 Karley View Suite 123 Okeyville, NY 32431-9497', '5', '7', '3', '10', '9', '79', '4', '4', 'user', 2, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810110, 'CANDRA RATNASARI AGUSTIN', NULL, 'morton41@example.org', '+1.725.779.9153', 'ldouglas', '$2y$10$mJ4H1cuBPmG6bhbLkWqr9uRg.92R5cg76IhfmiBIpKDrWhfaDczea', '2016-10-21', 'Laki-Laki', '1998-03-02', 'Lajang', '43816 Schimmel Flats Suite 450 Douglashaven, IL 17058-6256', '4', '3', '1', '1', '9', '55', '5', '4', 'admin', 1, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810112, 'DEWI KUSUMA NUGRAINI', NULL, 'mariane.morissette@example.com', '1-770-683-2688', 'crist.katelynn', '$2y$10$Ftw15ocKb.IKAigeyz5vvuxoa6FugyKzbn1vGOuFEzHViz5USOSLO', '2002-01-30', 'Laki-Laki', '2004-02-01', 'Lajang', '791 Oceane Burgs Apt. 507 West Juanaview, DE 70414', '3', '3', '10', '0', '7', '65', '0', '2', 'admin', 4, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810113, 'INDRI LESTARI', NULL, 'bradford.wolf@example.net', '440-517-4493', 'mschiller', '$2y$10$EHTEZxrMG.CkFRn/AVTB8uaMLtUaMHdJ/qECBZfGkC/zF3PkrVGWm', '2022-04-04', 'Laki-Laki', '1995-10-19', 'Lajang', '5353 Noemi Ford Suite 495 South Garretton, MT 38602-4601', '0', '5', '9', '2', '0', '86', '2', '0', 'user', 1, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810115, 'LINDA ARUM OKTAVIA', NULL, 'akerluke@example.org', '1-484-452-1091', 'ortiz.lorenz', '$2y$10$38GiGxtHJ5wGJUEdORE.q.b6xAIiCyCzhghVA7J4yZ9qBzwgu3aMa', '2010-02-17', 'Perempuan', '2022-09-24', 'Menikah', '674 Lurline Wall Apt. 383 East Dianna, TX 76194-2116', '4', '3', '10', '5', '3', '40', '1', '1', 'user', 3, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810117, 'NURAFIDAH AGUSTIA', NULL, 'wromaguera@example.net', '1-442-739-6683', 'hessel.camille', '$2y$10$7Yqh8zY9daNfew7twV/O9OPm5Wn1e46CRGH.73fQjJmCd8nhV1/7a', '1989-06-01', 'Laki-Laki', '2003-12-22', 'Lajang', '1954 Kiehn Spur Apt. 327 Connortown, WY 34611', '0', '1', '2', '7', '8', '84', '3', '2', 'user', 4, NULL, NULL, '2024-04-23 02:20:48', '2024-04-23 02:20:48'),
(810119, 'YUDHA ADI KRISTIYANTO', NULL, 'blanca70@example.net', '1-712-569-7601', 'addison.kuphal', '$2y$10$Qd7L9o4EgrU/9VYQZOlIDe/vKaaDcp7F0UClstXdQo3Lo8sdxA/Hm', '2008-08-08', 'Perempuan', '2020-04-01', 'Menikah', '576 Hoeger Path Suite 094 East Aldashire, TX 31728-3574', '8', '6', '8', '10', '1', '60', '5', '1', 'admin', 4, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810122, 'AYU TRI WAHYU NINGSIH', NULL, 'simonis.oran@example.org', '+16677936021', 'vern.koch', '$2y$10$fBglQKDs7/bp7Zd2WGvgWO7yG9qKkgy2ev40.E9DeQhcr5lMx/e7y', '1974-06-07', 'Perempuan', '2016-03-14', 'Lajang', '78741 Brekke Fort North Lilianebury, NJ 83051-2431', '3', '7', '2', '7', '6', '77', '1', '2', 'admin', 5, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810123, 'NURUL AISYAH', NULL, 'ohara.gladys@example.com', '+12725286551', 'xschuster', '$2y$10$zGn0uWHpzGvVhwOCalNbS.7BizFCRzhF5wBon6tYPEwcl2aggS9zu', '2017-12-20', 'Laki-Laki', '2018-03-31', 'Menikah', '4506 Cali Plain Apt. 235 North Keeganhaven, MA 47107-9893', '4', '8', '4', '5', '7', '53', '0', '5', 'admin', 2, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810124, 'REHANA WIDI LESTARI', NULL, 'kuhn.ardella@example.net', '+1.818.258.3820', 'wanda.langworth', '$2y$10$NJbFIf/AXiBoRliF.lVeLecfdC3bN0dqG7aG3euRxlAK2qgvKSaVu', '1999-12-17', 'Perempuan', '2016-06-10', 'Lajang', '7577 Stracke Harbor Suite 464 Rosenbaumstad, WY 36054', '5', '9', '8', '3', '0', '19', '5', '4', 'user', 5, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810125, 'RISNA DESI WULANDARI', NULL, 'terrill10@example.org', '1-309-687-0352', 'yemard', '$2y$10$IvyuLlq3.jWeJI0QKxOH1uZ1IVJc6LhqkYCuBxaFIW0YJW05MdQni', '1986-03-17', 'Laki-Laki', '2004-05-28', 'Lajang', '754 Ronny Mountain Suite 441 Dibbertstad, WY 55201-1993', '2', '9', '1', '6', '4', '49', '4', '3', 'user', 4, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810126, 'SELVIA AYU RETNO SEKAR SARI', NULL, 'howell30@example.com', '(757) 909-7640', 'mckenzie.zulauf', '$2y$10$FEnSoBOgOD2ClCs5pin1t.T2vV8EDuYSl4HmwReTYNe0cd6mg4uVq', '1990-02-12', 'Perempuan', '1986-06-04', 'Lajang', '27317 Lauretta Key Apt. 412 Ledachester, IL 31662-6688', '2', '8', '6', '0', '3', '20', '2', '4', 'user', 3, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810127, 'SITI MUNTOYIBAH', NULL, 'adaline.collier@example.com', '+1-573-942-2323', 'anderson.kadin', '$2y$10$PGbmSQ2PHJ2vtHjeJDwZu.Z.LNlrx/6rSw3V7TO7xvebCwguG3nuS', '2007-03-09', 'Laki-Laki', '2009-04-22', 'Lajang', '6244 Carissa Branch Apt. 087 New Aliyahbury, AZ 56889-6698', '8', '1', '6', '0', '1', '84', '0', '4', 'user', 4, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810128, 'WIDIA ASTUTIK', NULL, 'ygerlach@example.com', '+1.401.310.8155', 'brian.mcdermott', '$2y$10$KTymxV.s3.RqnLDbp3vSCuMXVveQ9mkVRDOYdOiWkLnsRDZJn4lbi', '2015-09-08', 'Laki-Laki', '2013-01-13', 'Lajang', '4082 Jennifer Manor Suite 587 Sporershire, KY 79783-4679', '0', '3', '7', '10', '2', '22', '0', '1', 'admin', 5, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810129, 'YENI RATNASARI', NULL, 'brett52@example.net', '1-678-406-7124', 'fabiola.bins', '$2y$10$GpglKKel62zgxEEhR4pCEuyJ9O3bgxYOfe/0.UG4sSzKxyDVeBetG', '1982-01-09', 'Perempuan', '2020-10-01', 'Lajang', '62804 Runte Lane Alfredoside, MI 57053-2350', '4', '5', '0', '1', '0', '70', '4', '2', 'admin', 3, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810130, 'SISWANTO', NULL, 'pkunde@example.com', '(701) 854-1167', 'qupton', '$2y$10$sYT7iWt3szmw79dx/kBB1u1M5mBgus0kgU3Meqez1/5ryDzFH1QCO', '1985-05-17', 'Laki-Laki', '1972-09-25', 'Menikah', '56003 Emma Tunnel Apt. 271 Quigleymouth, GA 40599', '2', '1', '4', '2', '10', '14', '2', '1', 'user', 1, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810131, 'MIFTAKHUL HUDHA', NULL, 'csenger@example.net', '424.840.5447', 'nlockman', '$2y$10$a.FGbSn7dFkAOWXh0QTzhuiOIFpnFL5hpLAogGqhKq69D.jk0Y2X2', '2011-08-06', 'Perempuan', '2018-06-07', 'Menikah', '3134 Volkman Pine Veronafurt, AZ 41163', '10', '10', '1', '0', '9', '10', '4', '4', 'admin', 2, NULL, NULL, '2024-04-23 02:20:49', '2024-04-23 02:20:49'),
(810132, 'HALIM MAS SUNNY NASUTION', NULL, 'fabian40@example.org', '+1-360-375-9535', 'mayert.alene', '$2y$10$dGi77SZbn/I9lMs4F8Eh5.UjaxncghVKgki.ou5OGQezPedAvQq5q', '1988-08-19', 'Laki-Laki', '1984-08-08', 'Menikah', '304 Terrill Walk Isabellachester, OK 50512-6521', '6', '6', '7', '9', '4', '47', '0', '2', 'user', 4, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810133, 'AGUS FAHRUDIN WIDODO', NULL, 'lillian39@example.org', '+1-563-817-9669', 'abigale.schaefer', '$2y$10$Oh04svFsWy04RcNd0ZJ3ouajuKnaPTu6ypmWMI9/hCbi5d6WFwxCe', '1979-07-05', 'Perempuan', '1980-03-13', 'Menikah', '9837 Madilyn Branch Apt. 234 West Danny, NV 63707-2248', '10', '8', '10', '0', '9', '43', '1', '3', 'admin', 1, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810134, 'BENEDIKTUS SERAN', NULL, 'treva33@example.com', '331-926-3448', 'corkery.kellen', '$2y$10$37EGekQKq.aUFPCgduHaGOpk9pSAolz2y9T3dEVb5YK7TY7LqYMTy', '1999-08-12', 'Laki-Laki', '2012-09-29', 'Lajang', '866 Medhurst Freeway Suite 986 Lake Imani, CA 44725', '8', '7', '7', '7', '3', '42', '5', '4', 'admin', 4, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810135, 'M. IFAN PRASETYO', NULL, 'gibson.conner@example.com', '269-495-3944', 'jbosco', '$2y$10$RHhyAI6LisjgRp8xQgd6feMKubWjoHMTqWhVg2tbGkI7qFApTNNPm', '2023-05-22', 'Laki-Laki', '2009-05-10', 'Menikah', '108 Florencio Avenue Apt. 731 Lehnerville, IA 66578', '0', '10', '7', '4', '1', '65', '1', '4', 'admin', 1, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810136, 'AZIZ FITRA RAMADHANI', NULL, 'ova.schaden@example.net', '+1-540-641-8657', 'ncasper', '$2y$10$iFshpRLHGahaHlmHil3hR.rMBfJCobO1kTmiJodUTmptHBmP6UjQ6', '1975-01-04', 'Laki-Laki', '1996-12-16', 'Lajang', '1160 Dibbert Rest Apt. 595 Tinaport, KY 81017-2195', '8', '10', '0', '7', '10', '78', '2', '3', 'user', 4, NULL, NULL, '2024-04-23 02:20:52', '2024-04-23 02:20:52'),
(810137, 'RENALDI PRATAMA EFENDI', NULL, 'veum.marta@example.net', '1-248-796-9580', 'icrona', '$2y$10$EtjnQ5pvf3ijcLL.JmBewODgrDWOx2aBDUCVWGYJrll5.fE3XtSoi', '2008-07-06', 'Perempuan', '1998-10-15', 'Menikah', '97958 Thomas Via Apt. 344 Schultzmouth, MI 58481', '9', '1', '0', '6', '3', '76', '4', '0', 'admin', 2, NULL, NULL, '2024-04-23 02:20:52', '2024-04-23 02:20:52'),
(810138, 'CHRISTIYARINI CHAEROSTA DEVI', NULL, 'myrl32@example.com', '+1-425-891-4784', 'raina.heller', '$2y$10$zFbxuWSN3MwQKFbm2bb7G.G5lXTFkIzxPucJHg/1zCUaCON9gdCKS', '2015-04-06', 'Perempuan', '1983-03-28', 'Menikah', '45958 DuBuque Meadows West Michaela, ID 65212-2342', '9', '3', '8', '0', '5', '28', '4', '0', 'admin', 4, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810141, 'MULYONO', NULL, 'denesik.gaston@example.org', '(408) 583-1508', 'imani.nienow', '$2y$10$oiqUNx6kVE8BHVZT8a8XSeVDKmiEyyUG7e/dkJqGZfeYmDPPQW..S', '2021-09-03', 'Perempuan', '1984-09-01', 'Lajang', '5752 Schneider Islands Apt. 410 North Benjamin, MI 25788-1643', '10', '1', '7', '1', '8', '18', '5', '4', 'user', 3, NULL, NULL, '2024-04-23 02:20:52', '2024-04-23 02:20:52'),
(810149, 'KOIRON', NULL, 'mueller.jaiden@example.net', '+1.848.608.5491', 'qnikolaus', '$2y$10$OSNJG6j0sbQjMbug1mvzfeaJJ0SoFVwyx5Q9njg7hSH4M1XzWeQw.', '2013-11-27', 'Perempuan', '1990-10-06', 'Lajang', '503 Ebert Flat Steuberbury, DC 89080', '0', '0', '7', '3', '10', '42', '0', '3', 'user', 4, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810158, 'IFNUN FAUZI', NULL, 'gschaden@example.org', '404.497.9874', 'wolf.maggie', '$2y$10$dCOmKBJopbc2J1hHOBQt5eGYE4f/mY/blKYXfEBawxnkFtBXg16wW', '2009-09-21', 'Perempuan', '1998-12-13', 'Menikah', '7590 Sawayn Pike Apt. 767 Kassulkehaven, NY 05585', '6', '1', '5', '2', '9', '67', '5', '2', 'user', 4, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810161, 'INTAN FEBRIA NITA', NULL, 'gerard.goldner@example.org', '+1-260-395-4113', 'cschumm', '$2y$10$f1M0vysH0MAVnLuAneX.oeFuNhTseP0sc.zzCjijBRuQ1sTfBJhKm', '1993-11-01', 'Laki-Laki', '2019-03-04', 'Menikah', '58229 Klocko Vista Apt. 148 West Stanleymouth, ID 08195', '8', '0', '5', '5', '9', '18', '0', '2', 'admin', 1, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810162, 'ADEK WAHYU CRYSTANTO', NULL, 'robbie.grady@example.net', '(341) 322-0860', 'ayla.kemmer', '$2y$10$QCnD8IjOqCfecrJ7ca.xZ.7XmPEmdoyrve3RHFBQQrLk3r/yRemna', '2017-11-29', 'Laki-Laki', '1981-02-23', 'Lajang', '34202 Hane Club South Justineburgh, DC 84356-6212', '5', '1', '10', '5', '5', '61', '1', '0', 'user', 4, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810163, 'AHMAD SENDHI FAREZA', NULL, 'ian85@example.org', '508.297.3408', 'susan.pacocha', '$2y$10$DTJ6nCYJQ/NLsMjfCY3CRen9BVU8UOadWagzDr2qbvhBjB5pGay/O', '2006-09-10', 'Laki-Laki', '1984-11-06', 'Menikah', '521 Harris Burg Apt. 562 Stefanieburgh, VA 61743', '8', '7', '4', '8', '9', '78', '2', '1', 'admin', 2, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810199, 'YAFI YUTHIA PRADANA', NULL, 'auer.olen@example.org', '831.688.9108', 'weber.stella', '$2y$10$tX0diYFmQaduW94rSaPTJOOiX2sG49PufNAi7anauKe5eYINYy2b2', '2002-06-24', 'Perempuan', '2009-11-22', 'Lajang', '813 Lloyd Crescent Floland, NM 06146-9645', '10', '1', '8', '9', '8', '18', '3', '3', 'user', 3, NULL, NULL, '2024-04-23 02:20:50', '2024-04-23 02:20:50'),
(810221, 'ANA MA\'RIFAH', NULL, 'littel.flavie@example.net', '+1-515-612-5038', 'okeefe.carole', '$2y$10$PgURpaREBdo77oMcRWMMSet24Jai2dmXk5oPaxX37jis2XP1WCWxa', '2015-02-23', 'Perempuan', '2009-01-18', 'Menikah', '60177 Wisoky Mountains Harveyhaven, CT 77034-6827', '4', '1', '9', '9', '6', '59', '4', '0', 'admin', 3, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(810224, 'AH. AGUNG SUPRIYADI', NULL, 'woberbrunner@example.org', '+1-726-471-1845', 'homenick.travon', '$2y$10$wVAjk37dY5Caa3LDALwrnugin.BKxYMoeofWalINfDuUOtKEnyD16', '2023-08-09', 'Laki-Laki', '1974-11-17', 'Lajang', '387 Dickinson Mills Apt. 133 North Destinee, AZ 13799', '1', '2', '4', '9', '9', '68', '1', '2', 'admin', 2, NULL, NULL, '2024-04-23 02:20:52', '2024-04-23 02:20:52'),
(810225, 'FAJAR RAMADHAN', NULL, 'abuckridge@example.org', '+1-818-802-4643', 'xspinka', '$2y$10$wkFx2hovCCYM7zQqzpkIYO/lmMIV6hVxuLzAEThjrVr0QBiMOX04q', '2018-03-15', 'Perempuan', '1987-08-15', 'Lajang', '4850 Russel Rest Adamsbury, UT 20427', '5', '0', '9', '2', '4', '20', '3', '1', 'user', 1, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(810226, 'MOCH. NIZAR', NULL, 'evie.green@example.org', '(972) 824-9788', 'rmorar', '$2y$10$fFFpk.HdB83rbfEEnr8Tru8enEB2grFMZKOVwrcrTQmrX0rvIvkiu', '1985-09-18', 'Laki-Laki', '2002-06-17', 'Menikah', '49958 Imelda Pines Bayerberg, MS 82490', '2', '6', '5', '5', '1', '2', '2', '3', 'user', 2, NULL, NULL, '2024-04-23 02:20:52', '2024-04-23 02:20:52'),
(810227, 'MUHAMMAD IMADUDDIN ABDURROHMAN', NULL, 'pharvey@example.net', '+1-510-270-1662', 'yherzog', '$2y$10$HwOtWV2QJ4/UWjh0PbgIROJjfQ1Bi8uU9pAlNoBvNPpLLldbDLHQq', '1990-09-25', 'Perempuan', '2015-10-30', 'Menikah', '942 Marquardt Stream New Eunaville, NY 24218', '1', '4', '0', '8', '0', '13', '5', '3', 'admin', 3, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(810228, 'SYIFA\'UL QULUB', NULL, 'vincent.adams@example.net', '(857) 543-8921', 'icorwin', '$2y$10$bDBKISmCDMl8UlCfbIKpZOtJm6Tbi6z2d3sUuGzVq.VhtfoKvrVoa', '2021-04-28', 'Laki-Laki', '2012-02-16', 'Lajang', '2374 Weber Key Borerborough, MT 78110-7018', '4', '2', '8', '5', '8', '62', '5', '5', 'admin', 2, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51');
INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `jabatan_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(810229, 'TEGUH PRASTYO WIDODO', NULL, 'acartwright@example.com', '+1-623-284-7721', 'ethelyn.kunde', '$2y$10$060gCF8Y5dpSOFrguranpOgTfZGt9jif4H1rboWlqNX73E3cRXaVa', '1974-05-29', 'Perempuan', '1980-09-15', 'Lajang', '2166 O\'Hara Rapid East Karlie, OH 49451', '7', '0', '3', '9', '1', '12', '2', '4', 'admin', 1, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(810230, 'APRILIA LINTAR PRAMESWARI AL IMANI', NULL, 'dylan.brekke@example.com', '520-593-5209', 'nwilkinson', '$2y$10$U7Jba5Dmw4fiDowJNrem9ezgF5H0S4mQyeDmFqPxeQifvAl1j0lxu', '1972-01-29', 'Laki-Laki', '1970-03-09', 'Menikah', '996 Telly Turnpike Apt. 087 West Frankie, MO 44506-2896', '7', '4', '3', '1', '4', '67', '5', '4', 'admin', 3, NULL, NULL, '2024-04-23 02:20:52', '2024-04-23 02:20:52'),
(820013, 'DWI PUTRI ANGGRAENI', NULL, 'kovacek.nona@example.net', '1-936-558-8227', 'nmcclure', '$2y$10$O6Qkd9ymZdlf4vW7S3O0LeGXRQQsz5Xkuu1FDmLbeqat42IfKHBCW', '1975-12-06', 'Perempuan', '1998-04-05', 'Menikah', '49676 Chad Rapid Kutchbury, GA 72867-4725', '6', '1', '8', '4', '10', '51', '5', '0', 'user', 5, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(820018, 'EVA ANDARESTA', NULL, 'bechtelar.alyce@example.org', '253.991.4896', 'fhane', '$2y$10$EfJyMQ.81ZfpF9WDFDZxWuWwTTp1A29evUMVJVeZ2TqP7mcX8Opea', '2003-11-06', 'Perempuan', '1990-10-09', 'Menikah', '85601 Block Isle Apt. 590 Chandlerland, NJ 90033-3111', '6', '8', '8', '9', '8', '46', '1', '2', 'admin', 5, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(820033, 'MAISAROH', NULL, 'carmel52@example.org', '+1.402.327.2908', 'cdavis', '$2y$10$DXURbWvbyvnV811zU/cvo.1NoRAY4/b4OZn/AgJYsgM9p2h62Bxy2', '1978-06-24', 'Perempuan', '1980-08-03', 'Menikah', '563 Grimes Springs Candaceview, NH 68075-3957', '10', '10', '0', '10', '8', '22', '5', '1', 'user', 1, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(820050, 'NUR MAJIDAH', NULL, 'roberts.consuelo@example.com', '1-607-361-7337', 'scotty22', '$2y$10$2lD2S4o9LF4jG5gqM.mafOaLeVnUbno58nFcHQkVU1P/ltu8N97AK', '2023-08-02', 'Perempuan', '2007-01-02', 'Lajang', '4071 Shakira Ports West Chanelmouth, GA 58404-3807', '0', '3', '8', '8', '9', '43', '1', '5', 'admin', 3, NULL, NULL, '2024-04-23 02:20:52', '2024-04-23 02:20:52'),
(820071, 'SITI NUR ASIYAH', NULL, 'kamren12@example.net', '(276) 994-3462', 'lawson78', '$2y$10$tUZC5qr9S86tUlWUi3fIuODjdsUFkXA7a8PupfF0A2ZC8/.griPZi', '1990-12-25', 'Perempuan', '2003-10-19', 'Lajang', '6227 Pacocha Pike Apt. 116 North Alan, HI 32799-4323', '8', '4', '6', '10', '2', '59', '5', '3', 'admin', 2, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(820108, 'RIRIS ROIDHOTUL SETYANINGRUM', NULL, 'champlin.lexie@example.com', '(803) 423-8953', 'jsipes', '$2y$10$27HIuv0k7L7FyhZVy/3IeOkwluBvnLzSCZw8hMXMZPCJJD.YntrXW', '2020-04-07', 'Laki-Laki', '2022-12-23', 'Lajang', '5933 Merle Walks Kelsimouth, CT 51183-7149', '0', '9', '1', '7', '8', '69', '3', '5', 'user', 3, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
(820116, 'SISWANTI', NULL, 'deion.kuhic@example.net', '1-931-866-3293', 'ftremblay', '$2y$10$S2JVUQAvySc8QCrtbIIsBeuO51K0VjJrH/A1R9f18izAI6L3knXMO', '1973-09-19', 'Laki-Laki', '2002-02-01', 'Lajang', '20479 Kyra Bridge Lake Avis, IA 24293-5769', '6', '5', '6', '8', '3', '90', '1', '1', 'admin', 1, NULL, NULL, '2024-04-23 02:20:52', '2024-04-23 02:20:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria_controllers`
--
ALTER TABLE `kriteria_controllers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lemburs`
--
ALTER TABLE `lemburs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `reset_cutis`
--
ALTER TABLE `reset_cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sips`
--
ALTER TABLE `sips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kriteria_controllers`
--
ALTER TABLE `kriteria_controllers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lemburs`
--
ALTER TABLE `lemburs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `reset_cutis`
--
ALTER TABLE `reset_cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sips`
--
ALTER TABLE `sips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=820117;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
