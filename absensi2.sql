-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2024 pada 13.23
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
(1, 1, 'create', 'Menambahkan shift karyawan ', '2024-05-26 11:21:38', '2024-05-26 11:21:38');

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
(2, 3, 4, '2023-02-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cuti', '2023-02-25 22:28:28', '2023-02-25 22:33:17'),
(3, 1, 4, '2024-05-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-05-26 11:21:38', '2024-05-26 11:21:38');

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

--
-- Dumping data untuk tabel `nilais`
--

INSERT INTO `nilais` (`id`, `user_id`, `periode`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`, `c11`, `c12`, `c13`, `c14`, `created_at`, `updated_at`) VALUES
(1, 1, '04/21/2024 - 04/21/2024', 3, 5, 3, 5, 3, 2, 1, 3, 1, 3, 4, 4, 3, 5, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(2, 2, '04/21/2024 - 04/21/2024', 5, 2, 2, 1, 4, 2, 5, 2, 4, 1, 3, 5, 2, 3, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(3, 3, '04/21/2024 - 04/21/2024', 4, 5, 5, 2, 5, 3, 1, 4, 3, 4, 5, 1, 3, 4, '2024-05-26 07:55:54', '2024-05-26 07:55:54');

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
(1, 'Dr. Veda Stiedemann II', ' ', 'kertzmann.bernhard@example.com', '(210) 462-1877', 'dare.yadira', '$2y$10$or5tn0NtzjYsIozRNF/WU.uES0c8MDeryvkH2xAxri0/dhkTu8UZO', '2015-05-28', 'Perempuan', '2021-05-05', 'Lajang', '13166 Constantin Neck Apt. 998\nSkilesberg, IN 08769-4399', '0', '6', '7', '9', '1', '62', '4', '0', 'admin', 1, NULL, NULL, '2024-05-26 07:55:34', '2024-05-26 07:55:34'),
(2, 'Cheyenne Schaefer', ' ', 'xmoen@example.net', '1-623-588-4380', 'grace.gleichner', '$2y$10$iGi08QzLokRFZfoM7BW5FO4RFHlWqV.K6VrVTPZcVZV3JeTIL95VK', '2005-02-08', 'Perempuan', '1981-11-20', 'Menikah', '16972 Reinger Point Suite 013\nSouth Juliusborough, AL 55633', '2', '4', '0', '6', '4', '15', '1', '4', 'admin', 2, NULL, NULL, '2024-05-26 07:55:34', '2024-05-26 07:55:34'),
(3, 'Easton Lind', ' ', 'wschmidt@example.net', '+1-747-571-5344', 'samson.strosin', '$2y$10$Tbxhu7UQ5dcFTcwmwAEnoOW2tN.FN.P8Yp3p.ZGy1ifJySPxce9jC', '1975-03-13', 'Laki-Laki', '1985-07-05', 'Menikah', '23027 King Mews Suite 392\nWest Estevan, AR 81850-3821', '1', '2', '3', '4', '9', '27', '0', '5', 'user', 1, NULL, NULL, '2024-05-26 07:55:34', '2024-05-26 07:55:34'),
(4, 'Jimmy Rutherford', ' ', 'christophe.hoppe@example.net', '330-712-9577', 'meredith.maggio', '$2y$10$Ph/uIOAAajOBrHg2mmv3ZOy05R5tnnEW3d2NTZDbDmjJETjciibPG', '1986-05-31', 'Perempuan', '1989-07-04', 'Lajang', '2288 Auer Pine Suite 351\nJeremiefort, FL 34678', '4', '9', '0', '6', '3', '19', '3', '1', 'admin', 5, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(5, 'Heather Blick MD', ' ', 'regan.kling@example.net', '986-555-3322', 'bschuppe', '$2y$10$lotJauaK9Kap1vLBqHLWw.G3klnZujJ.lHj.bX7awcaOwwgwkVh6W', '2011-03-04', 'Perempuan', '1987-11-07', 'Menikah', '52479 Enid Cape Apt. 796\nHarrisshire, CO 36811-3141', '9', '2', '0', '9', '10', '33', '1', '5', 'user', 1, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(6, 'Ms. Hope Senger V', ' ', 'vkirlin@example.org', '+1.781.333.6560', 'anahi.king', '$2y$10$z6yWFkFigycMipcAbHO0bOX/QtdhbN04gLTIFfJAVcV3FflBJPWB.', '2002-06-21', 'Perempuan', '1974-04-22', 'Menikah', '595 Jarret Glen\nOrashire, AR 24520-2272', '8', '10', '6', '3', '10', '6', '1', '5', 'user', 5, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(7, 'Lizzie Connelly', ' ', 'isabel.thompson@example.net', '+1-830-621-4732', 'winfield40', '$2y$10$gYidjIayPkekr/SxcYR05OeA/hlBOdXzTnxUpwmgk7LUdRUpsx4dK', '2022-01-14', 'Laki-Laki', '2007-10-18', 'Lajang', '2755 Mante Village Apt. 656\nNorth Joelle, UT 74877-9525', '9', '5', '3', '5', '8', '81', '2', '4', 'user', 1, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(8, 'Ms. Laurence Schamberger DDS', ' ', 'ostamm@example.org', '1-463-797-3210', 'nedra52', '$2y$10$P31apk1NaprxzmtTEt4Tb.XAWQ0WZdRoXKf6gX1eQwVaU3MLdhwc2', '1975-07-04', 'Laki-Laki', '2001-12-17', 'Lajang', '55047 Curt Trafficway Suite 789\nDustinton, UT 03968', '9', '2', '10', '3', '4', '3', '5', '5', 'user', 2, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(9, 'Filomena McCullough', ' ', 'xbashirian@example.com', '716.546.8231', 'cormier.eino', '$2y$10$yAjH.UxnpqAswgOYPnK18.CD1wYmH4wbTLhVm4JAMRjudfFFB/Ke.', '1987-07-26', 'Laki-Laki', '1980-07-02', 'Lajang', '6565 Cronin Burg Suite 091\nNorth Vergieport, WA 32826-3882', '1', '3', '3', '9', '2', '39', '3', '1', 'admin', 4, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(10, 'Branson Predovic', ' ', 'frutherford@example.org', '+1-283-756-0443', 'viva.kautzer', '$2y$10$T/8GmM9PnFCfD3GgreNtKOzSlmmMm64qLxaehX0ZH8s0e.eI6v6JS', '1992-04-06', 'Laki-Laki', '2003-01-15', 'Menikah', '311 Chance Prairie\nSwiftberg, TN 30008', '0', '9', '9', '6', '5', '37', '0', '0', 'user', 2, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(11, 'Carlie Schaefer DVM', ' ', 'elsa.bayer@example.com', '724.742.1434', 'gaylord.jerod', '$2y$10$XwcbfbzSaXIt5T9aiQLmOOlQ5K/7ivh3PlNqhWOKMn2ZFX6ahbFSa', '1983-04-19', 'Laki-Laki', '1993-05-27', 'Lajang', '9786 Boyle Trace Suite 135\nDickiburgh, IA 44610-5137', '7', '3', '4', '5', '3', '24', '4', '5', 'admin', 1, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(12, 'Jackie Leuschke', ' ', 'jessica96@example.net', '657-678-6354', 'dustin18', '$2y$10$c1QQU0/iU8.8//OmwkAGD.f53vvlgKjZ6LXTMV0HWcaaXoHIqyaKy', '2020-10-06', 'Laki-Laki', '2004-07-07', 'Menikah', '99879 Kutch Wall\nEichmannborough, NY 69917', '2', '2', '5', '5', '9', '25', '2', '0', 'user', 5, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(13, 'Mr. Avery Price DVM', ' ', 'taryn14@example.com', '1-559-387-2078', 'rosinski', '$2y$10$Ck8Xh9wJCptYBBnJmsJb5uMtCdHVFCYB2wX3pkBqzyVc/bTijoJaO', '2005-09-14', 'Perempuan', '1985-12-09', 'Menikah', '679 Ola Locks\nNorth Lavinialand, AL 92293', '0', '5', '8', '5', '4', '70', '1', '1', 'admin', 2, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(14, 'Anabel Mosciski', ' ', 'sylvia76@example.net', '+1-845-540-8728', 'bayer.caden', '$2y$10$SKa5lNORx0Vkjjr8weGy0OJLmP7rP936mi2VHkbl4DdYZvskUyq3K', '1995-07-09', 'Laki-Laki', '1988-09-30', 'Lajang', '94776 Parker Land\nWest Loniestad, NH 43005', '1', '5', '2', '0', '2', '1', '5', '3', 'user', 1, NULL, NULL, '2024-05-26 07:55:35', '2024-05-26 07:55:35'),
(15, 'Judah Schaden DDS', ' ', 'abshire.tommie@example.com', '+1-940-584-0912', 'reed.blanda', '$2y$10$0.4ahwcqT/lfbJuPHbV8suiTN1L1/qFSkrojmeb3uh9otcXV56Y6a', '2007-06-27', 'Laki-Laki', '1988-10-04', 'Lajang', '90811 Alda Parkway\nNorth Travonhaven, AZ 69634-4798', '7', '1', '1', '10', '1', '21', '3', '3', 'user', 2, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(16, 'Peyton Wunsch', ' ', 'osbaldo34@example.com', '646.307.4141', 'gaylord.deanna', '$2y$10$P4xHTbLNfneRexxJfhEWDuYvmNX1u2UMsDxIG/szPwvG59Ysod/ki', '2020-03-16', 'Perempuan', '2008-01-01', 'Lajang', '1771 Gladyce Island\nNew Abnershire, MN 79447', '9', '5', '9', '9', '10', '42', '1', '5', 'user', 1, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(17, 'Erling Rohan', ' ', 'josephine.schmitt@example.org', '1-854-764-6299', 'trantow.ephraim', '$2y$10$HuQkqi2UA8aSUc/FIbVGGuYGKotwxs4O2UosW/ITeFIpKdYYsdJ0.', '1981-12-18', 'Laki-Laki', '2009-04-12', 'Menikah', '182 Sam Views Suite 861\nWest Mossie, TX 83364-8302', '7', '3', '1', '4', '0', '3', '2', '1', 'user', 4, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(18, 'Florida Hickle', ' ', 'violette.lowe@example.net', '(715) 428-2281', 'nelda.schultz', '$2y$10$sKEty.O4BG2gaO3mumKNB.eAGpkjTcpzfDq33.yHE4u8tjcQpo0q6', '2013-08-23', 'Perempuan', '2018-12-30', 'Menikah', '33195 Corwin Mountains\nAuerchester, MI 56238', '1', '2', '9', '8', '3', '34', '2', '2', 'admin', 3, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(19, 'Prof. Gino DuBuque II', ' ', 'nwuckert@example.org', '+1-680-558-9234', 'mattie.lesch', '$2y$10$.oB640Y7Cwf1afeuiuZqteDZj61/7uf3RufExBtkcGtZB5g0FCoLK', '1990-07-20', 'Perempuan', '1990-08-07', 'Menikah', '8326 Ally Mission\nStarkstad, FL 16790', '3', '7', '2', '10', '5', '16', '5', '4', 'user', 1, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(20, 'Breana Tremblay MD', ' ', 'josefa65@example.net', '(843) 290-9159', 'ejaskolski', '$2y$10$iFX0iv8sCXE/cp4UThn47.DYn6pIw2kBP4LVfdt1yxXPlBmR.Gi7S', '2000-06-06', 'Perempuan', '1973-05-04', 'Lajang', '79538 Zoe Estates\nWest Bennieland, VA 95363-3258', '5', '6', '2', '8', '0', '16', '5', '1', 'user', 1, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(21, 'Prof. Adela Beatty', ' ', 'eleffler@example.net', '1-551-379-7430', 'rebeca.baumbach', '$2y$10$PtY5fS.BzgYR7fvYQ2apOu14MmoIl8Y7zhdQijQmEf4S8vEUy0rhm', '2020-09-24', 'Perempuan', '2019-02-08', 'Menikah', '33952 Della Inlet Suite 761\nGerlachfurt, MO 01669', '10', '10', '5', '7', '9', '25', '1', '1', 'admin', 4, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(22, 'John Schiller', ' ', 'bstreich@example.net', '+1 (929) 224-6066', 'swift.gerda', '$2y$10$RKuh5R6m3vaCteVh7MAfHe/YNBLqNB372zTcnu3hXFJ5l1bR1ImCi', '2003-07-29', 'Laki-Laki', '1976-07-19', 'Lajang', '692 Cristian Village\nNew Jessietown, TX 94041', '10', '8', '5', '7', '10', '21', '0', '4', 'admin', 2, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(23, 'Hallie Turcotte', ' ', 'trinity.ohara@example.org', '+1.701.259.3880', 'ashley27', '$2y$10$7GabIrhK.7Mtz6pMzop5BuX0WanZn7q1ftTiUuJU0U.pmFcLJuVl.', '1982-05-01', 'Perempuan', '2001-02-16', 'Lajang', '43569 Nigel Light\nRogerberg, PA 42006-2381', '7', '5', '6', '0', '1', '46', '3', '0', 'user', 4, NULL, NULL, '2024-05-26 07:55:36', '2024-05-26 07:55:36'),
(24, 'Gilberto Williamson', ' ', 'scarlett58@example.net', '+1 (331) 449-6141', 'wilkinson.lemuel', '$2y$10$Hzuh1.xZJlIz8jISIKLJAukxhlKZdsG/mor/GA3IDy3WyGb.mRE2q', '2018-02-07', 'Perempuan', '1971-05-28', 'Lajang', '294 Schultz Valley\nEast Cortezburgh, GA 90978-9196', '1', '0', '7', '0', '9', '60', '4', '4', 'user', 2, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(25, 'Ronaldo Padberg', ' ', 'bernier.julio@example.org', '(240) 719-4922', 'lemke.macie', '$2y$10$bi0NoOBpzjn6FZ8M8YhIjOmZ7.3hcSuuCTprat6EQOvJCLa.P/nPu', '1979-02-16', 'Laki-Laki', '2012-03-04', 'Lajang', '7100 Dicki Hollow Suite 417\nSydniestad, MA 59475-6355', '3', '8', '4', '4', '5', '29', '5', '3', 'admin', 2, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(26, 'Viviane Dare', ' ', 'orrin.konopelski@example.org', '463.365.5746', 'donnelly.leora', '$2y$10$vhSeT9X7WtkRayXbM8cbQOEDDZh.067xgteHnYOCedXIcWO18aARu', '2002-02-23', 'Perempuan', '1981-01-25', 'Lajang', '943 Moen Land Apt. 760\nBrekkeville, MT 66726', '10', '6', '10', '10', '4', '70', '1', '5', 'admin', 5, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(27, 'Sage Greenholt', ' ', 'isabel.mayert@example.org', '385-583-1177', 'chloe55', '$2y$10$rLIKtd2FJw9LqjmxF6tbGuZ2TDrblsCU8AFrnGeip6XznQ66K9th6', '1974-02-16', 'Perempuan', '1985-05-20', 'Menikah', '7074 Naomie Loop\nTrevorview, PA 20505', '3', '5', '2', '7', '7', '68', '3', '5', 'admin', 1, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(28, 'Mrs. Myrna Swaniawski', ' ', 'benjamin.marquardt@example.org', '(678) 243-9135', 'champlin.pasquale', '$2y$10$/hBdH/OJnyxV4UaW.2CIT.lEYdGzAj2UiCRaaqLWYaUNiEI5dPNSG', '2006-01-16', 'Perempuan', '1991-08-17', 'Lajang', '8397 Wisoky Circle\nNorth Cristinastad, NC 00644-3883', '2', '1', '3', '3', '8', '37', '0', '5', 'user', 3, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(29, 'Dr. Jean Marquardt', ' ', 'roberts.jedidiah@example.com', '+1 (706) 545-4674', 'kyra.collier', '$2y$10$GC16Y2U8j/rRtU9erhF9n.eEeikv4ixRWFfnTZhSSK0hh8Z1uiiA6', '1978-06-18', 'Perempuan', '1979-06-13', 'Lajang', '30389 Colton Green Suite 073\nLebsackville, AZ 12108-2212', '8', '6', '3', '4', '4', '59', '2', '5', 'admin', 2, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(30, 'Junius Corkery Jr.', ' ', 'lfeeney@example.com', '+13643937057', 'theodora02', '$2y$10$arBbYC9j8.wzOc1rMJ21g.hnoNpCU.kRpVKCyEh120XIi8BwAIVYi', '2006-12-27', 'Laki-Laki', '2000-07-06', 'Menikah', '89501 Giovani Hills\nAnibalview, ND 36511-2748', '1', '0', '6', '10', '9', '53', '2', '2', 'admin', 2, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(31, 'Prof. Douglas Lebsack', ' ', 'isabella06@example.org', '267.892.0029', 'dickinson.garnett', '$2y$10$6bT1.ThAZNGLm6B2AknO0.u.p6e75jfBh/9aDJm/SXjLq5lmDV75e', '1986-12-04', 'Perempuan', '1982-10-19', 'Lajang', '81113 Lora Bridge Apt. 724\nEast Bonitashire, LA 04626-4706', '10', '10', '4', '10', '6', '36', '5', '0', 'user', 4, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(32, 'Katelin Donnelly', ' ', 'charity.senger@example.net', '865.817.9345', 'mara.parisian', '$2y$10$JabhLVL9pbvZkPEkO9UhUeytpR1dFd3ZUHoZljprv2XDbhGqibqq.', '2001-12-17', 'Laki-Laki', '2009-05-20', 'Menikah', '8140 Terry Plains\nTrentonland, WY 79780', '2', '0', '1', '9', '3', '80', '5', '0', 'user', 2, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(33, 'Mr. Christ Bashirian DDS', ' ', 'kameron.walter@example.com', '419-949-7579', 'ylakin', '$2y$10$LVY77zgQ8NAJuzNXYsx6c.om1ZjaGUdFbS0vsAaQCWVTiRMwQJum.', '1983-10-11', 'Perempuan', '1987-04-18', 'Lajang', '242 Douglas Way\nEast Gastonmouth, AZ 11660', '4', '4', '6', '1', '3', '18', '0', '5', 'admin', 5, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(34, 'Rozella Trantow', ' ', 'okuneva.ashleigh@example.com', '1-351-954-4305', 'gyundt', '$2y$10$4RYyel.2goLxjJ6jbfVEvO3jiKQhi6Rn524wflgyS1L8WKwO4hZUC', '2011-05-03', 'Perempuan', '1983-10-25', 'Menikah', '8454 Abbott Squares\nJuniuston, MT 05357', '6', '1', '8', '7', '10', '28', '2', '0', 'user', 5, NULL, NULL, '2024-05-26 07:55:37', '2024-05-26 07:55:37'),
(35, 'Kailee Pagac', ' ', 'imogene12@example.org', '234.416.8105', 'ucole', '$2y$10$t08I3x.KtnEJlw.8j9uNCe6D.PaLhuC4wY/ejaEgm2MSKGVJxAWUG', '2010-11-19', 'Perempuan', '2001-08-19', 'Menikah', '420 Huel Ports\nSouth Jadyn, WV 89780-7758', '1', '6', '2', '7', '5', '73', '4', '4', 'user', 2, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(36, 'Brenda Champlin DDS', ' ', 'hegmann.raleigh@example.com', '+1-332-935-7240', 'charity.torp', '$2y$10$z976ZYp5hBHtikeD...vnudGkbHHXJKA/cdM7HBCZsXLKVYCFmky2', '2012-05-11', 'Perempuan', '1995-12-27', 'Lajang', '545 Lilly Dale\nLake Rodrickhaven, MN 61575-9327', '8', '10', '1', '8', '6', '65', '1', '3', 'user', 4, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(37, 'Neoma Johns', ' ', 'cfranecki@example.org', '1-509-214-8601', 'obrekke', '$2y$10$7nYCZWrZYICp2d6P.RXfEu59YpdQoXZ.Fbtbej0E6o1GnidA8BcB6', '2021-12-08', 'Perempuan', '2010-03-21', 'Menikah', '5026 Shields Ports\nSouth Terrance, MN 02442', '3', '1', '5', '8', '5', '60', '1', '5', 'admin', 5, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(38, 'Alvah Ortiz', ' ', 'alexander.damore@example.net', '(936) 739-6622', 'fwyman', '$2y$10$ImlD6EIGvIwpafaWrisHpO18J4SMAJZVUh3cfW60oK.OByYRBKsiy', '1989-01-27', 'Perempuan', '1992-08-27', 'Lajang', '1919 Laurence Dam\nConnbury, RI 99652-1069', '1', '0', '6', '4', '9', '7', '4', '2', 'user', 2, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(39, 'Jayson Larkin DVM', ' ', 'easter99@example.net', '+1 (559) 751-4739', 'rosamond90', '$2y$10$2Oo/qXR0T4JmJAHp/3dle..4mlAup6NJ6xjvpp0JngBSiLfu7RNp.', '1988-09-21', 'Laki-Laki', '1995-03-13', 'Menikah', '824 Abelardo Creek Apt. 588\nNew Edytheton, AL 16230-5686', '7', '8', '4', '3', '4', '77', '5', '5', 'admin', 1, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(40, 'Isaac Hauck MD', ' ', 'dedric.pfannerstill@example.com', '+1.610.623.1548', 'smiller', '$2y$10$Gfx.YLNIZ7XgM00IMDEa1.o51qhMtTz77KK8UURYEUmoxknk24UqG', '1977-06-22', 'Perempuan', '1984-01-12', 'Menikah', '468 Kuphal Via Apt. 226\nClementberg, NM 46394', '2', '3', '2', '2', '10', '69', '0', '1', 'admin', 1, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(41, 'Prof. Laurence Jacobi', ' ', 'rsporer@example.org', '+19295608802', 'augustus.smith', '$2y$10$luWpzhnd7sc9gxYeWVhPZu8lr9G2t..GeXOlQt7t0XbrTE2tTnHbW', '2007-09-16', 'Laki-Laki', '2019-09-07', 'Lajang', '49745 Keeling Islands Suite 553\nSamsonfort, HI 18790-5183', '5', '0', '1', '1', '9', '13', '2', '4', 'admin', 3, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(42, 'Mrs. Johanna Marks DDS', ' ', 'dpagac@example.net', '(817) 505-7758', 'florine.swift', '$2y$10$3oWpSRRccURw7jAZ9CaNZ.R.m5Pjf4S2dFbadtoWK.AfRav.eiPam', '2006-12-09', 'Laki-Laki', '1980-05-14', 'Lajang', '1294 Stark Causeway\nPort Helga, CO 63870', '4', '1', '5', '8', '5', '25', '4', '3', 'user', 2, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(43, 'Eleanora Blanda', ' ', 'willow98@example.com', '+1.689.417.9042', 'igraham', '$2y$10$UlRaWjjJGqgpb0OnjptTjOpcxG/Rz6HMY0fA0e53wwQsb.QtRJIQS', '1998-08-29', 'Laki-Laki', '1998-05-16', 'Lajang', '738 Little Groves\nRusselland, CT 45459-3492', '1', '3', '1', '2', '10', '9', '3', '2', 'user', 4, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(44, 'Mr. Lawrence Strosin', ' ', 'lue.block@example.org', '820.673.3503', 'cameron29', '$2y$10$tuC9dNru5eOkZuRMQY9Ny.U4guY0CZF41qj1kHDT1eJAI.MULrQBa', '1972-01-07', 'Perempuan', '2021-10-01', 'Menikah', '696 Greta Crescent Suite 510\nNew Grayceport, MN 21706', '1', '8', '0', '6', '10', '89', '1', '2', 'admin', 5, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(45, 'Eunice Fadel', ' ', 'melody.altenwerth@example.org', '+1-330-738-1323', 'wilkinson.winfield', '$2y$10$Pra85Fb1I7J0NExsL90M4eoRwydZZhfnPWJeYD/aT25S1EfVPdFPq', '1992-10-27', 'Laki-Laki', '2013-07-27', 'Menikah', '7014 Ernser Drives Suite 871\nLeonorside, NJ 84712-2043', '9', '8', '1', '0', '6', '31', '1', '4', 'user', 5, NULL, NULL, '2024-05-26 07:55:38', '2024-05-26 07:55:38'),
(46, 'Alf Stiedemann', ' ', 'jwisoky@example.net', '915.783.9466', 'iromaguera', '$2y$10$ZoA0KxVD5rgVCQ4uzKqeK.n994llK3PRpuJiQT14xnE8hDnKc0BpO', '1972-06-16', 'Perempuan', '1971-12-03', 'Menikah', '98881 Johanna Isle Apt. 394\nNorth Jerrodfurt, GA 97192-2142', '0', '5', '3', '0', '6', '18', '4', '2', 'admin', 5, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(47, 'Marielle Hickle', ' ', 'goyette.kyle@example.net', '+1-920-895-1582', 'carson68', '$2y$10$e05xJ74qyXqTgXvRLI59UO0uDb/y.p0CWayFSs8fzpMf61yp7GARO', '1984-03-26', 'Perempuan', '2023-06-12', 'Menikah', '207 Quitzon Estates\nStefanieville, ME 27710', '1', '3', '2', '1', '5', '79', '1', '0', 'admin', 5, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(48, 'Prof. Cayla Aufderhar', ' ', 'jamie.thiel@example.org', '(341) 430-9805', 'dedric.casper', '$2y$10$i68yZt6IWzaTbrReFliQoufyS5vTEYqxKP6IF6vMHf8zjJumpoOGa', '2004-09-20', 'Perempuan', '1987-07-25', 'Menikah', '635 Klein Islands\nArianeborough, NY 42698-5142', '0', '0', '9', '6', '9', '68', '2', '4', 'user', 4, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(49, 'Buster Vandervort', ' ', 'vwill@example.org', '+19372035135', 'wehner.leland', '$2y$10$5AJ.xrO80GjHm/5BcFE67eBemfH8tUCKF0Izr5dxcmX9cPsyb.gY2', '2004-04-28', 'Perempuan', '1975-04-01', 'Menikah', '9887 Barrows Fields\nWillmsburgh, CA 82421', '3', '3', '1', '9', '8', '49', '2', '1', 'admin', 3, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(50, 'Dr. Gideon Rempel', ' ', 'telly81@example.org', '+1-480-948-4774', 'herminia86', '$2y$10$bJ2cykDVV/GkTzKqCj1NM.Z9KC6Bm44yfxs3QrHLZhpx8IJQIg2/O', '2004-08-12', 'Perempuan', '2007-05-15', 'Lajang', '22636 Murphy Burgs Suite 066\nLake Lydiaburgh, TX 03714', '3', '9', '7', '6', '3', '2', '0', '4', 'user', 1, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(51, 'Kathryne Okuneva', ' ', 'candice.cummings@example.net', '+1 (561) 221-4782', 'sbernier', '$2y$10$NYcwPrBc1CEnubWLcrs0uOL9ikRbeFuTCW46jgLqvZm/vI.sSIHOC', '2020-08-29', 'Perempuan', '2005-11-23', 'Menikah', '34845 Vernice Lodge\nMabellechester, WA 87297-6809', '4', '6', '6', '3', '10', '43', '4', '1', 'user', 3, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(52, 'Carley Walsh', ' ', 'will.deontae@example.org', '520.779.9206', 'ihaley', '$2y$10$orn/sTeHhGob5FQaKb.P9uw57T19unptAQ0XvDQFYFuk9YoIwNO2u', '2001-03-16', 'Laki-Laki', '1982-06-09', 'Menikah', '9209 Elisha Overpass\nJusticeshire, KS 50917-2704', '0', '2', '0', '10', '1', '17', '1', '0', 'user', 4, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(53, 'Alba Abbott', ' ', 'mckenzie.camille@example.net', '(707) 474-2033', 'earnest.hahn', '$2y$10$8xcYHA9pu8mFrrM3FAxOkOx.gVbu6q1JV2s2jnMOW61Wim8WyBmhq', '2008-02-23', 'Laki-Laki', '1996-02-10', 'Lajang', '7487 Renner Road\nLake Jamarcus, MD 89961-2242', '7', '7', '3', '2', '4', '23', '2', '1', 'user', 1, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(54, 'Thaddeus Torphy', ' ', 'lamont71@example.net', '(678) 813-0925', 'damore.yvonne', '$2y$10$97wYmSnQ9bhvsfT6OQC3OePmImDoReLJhzHtEieB8vJaShLe5v4je', '1980-07-29', 'Perempuan', '1993-05-14', 'Lajang', '370 Carroll Isle\nGloverview, DE 97508-0060', '9', '9', '7', '4', '9', '49', '4', '0', 'admin', 2, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(55, 'Janick Hirthe', ' ', 'lydia.luettgen@example.org', '+1-689-398-1729', 'pkulas', '$2y$10$yhrU2VfAyIXiNqOljRQwNuIL04sL49gYiwlbuOP9xopg1vvYriSf2', '1972-04-30', 'Perempuan', '1992-11-23', 'Lajang', '22991 Weimann Vista\nDewittmouth, OR 28552', '4', '1', '1', '7', '6', '52', '4', '0', 'user', 3, NULL, NULL, '2024-05-26 07:55:39', '2024-05-26 07:55:39'),
(56, 'Miss Macy Tromp', ' ', 'mazie60@example.org', '+14249226843', 'frances13', '$2y$10$jmH2nhYDsZNmOVteGE4hVOBmv.ba7KxEGIGftzbKI0S0c9efU9y7W', '2001-07-13', 'Laki-Laki', '2005-12-17', 'Menikah', '9947 Hyatt Rapid\nLake Davonstad, VA 92136', '1', '4', '9', '4', '5', '69', '0', '0', 'user', 3, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(57, 'Jessy Carroll', ' ', 'mary.cassin@example.com', '906.391.3000', 'chadrick02', '$2y$10$7qWuldGJx4N7cs/KzB3L4O65T0UlcLO2YavNar7ZX8MhWH6xvDy5a', '1977-01-10', 'Perempuan', '1997-05-21', 'Menikah', '9188 Ruecker Ridge Apt. 898\nLake Elyssamouth, GA 43024', '3', '4', '3', '7', '0', '9', '4', '0', 'user', 5, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(58, 'Delilah Hettinger', ' ', 'stacy.crist@example.net', '205.975.8813', 'jacey39', '$2y$10$Cd/1V5yhGPg97AjT4eImEuicZII2lZWpTkGHEuJcXH9W1NelachFq', '1989-01-09', 'Laki-Laki', '1994-04-18', 'Menikah', '7879 Heaney Mission Suite 931\nAltenwerthside, DC 57141', '1', '4', '1', '8', '4', '80', '0', '1', 'admin', 2, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(59, 'Renee Walsh', ' ', 'tianna58@example.com', '1-380-217-0657', 'bogisich.mozelle', '$2y$10$PitQeS31aJppu4Ut4NFKoOQNUT8z/aW8gzgYwayzdinIUn8XYdy6y', '1985-07-03', 'Laki-Laki', '1984-07-08', 'Menikah', '271 Dickinson Plain\nNorth Liatown, KS 86983', '4', '0', '10', '3', '4', '41', '0', '3', 'admin', 1, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(60, 'Abigale Hoppe', ' ', 'lilian.lebsack@example.org', '(708) 443-9411', 'llewellyn.quitzon', '$2y$10$6VAz211QmQTNFH.Pgh9Hkuwaa553DafVaZBEsN7HDFP8svyWBTJLG', '2018-09-27', 'Perempuan', '1970-01-01', 'Lajang', '527 Dewayne Tunnel Suite 754\nSouth Gwen, OK 53226', '4', '5', '2', '0', '8', '2', '3', '0', 'admin', 2, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(61, 'Izabella Maggio', ' ', 'ibradtke@example.net', '458.277.1763', 'estevan40', '$2y$10$Qq/SMXmIzQPYUJqtGFAEnuFhRoO7mHcKB5ZPnMJwDrzYQJCBemxiu', '1992-08-13', 'Perempuan', '2009-07-25', 'Lajang', '3405 Boyer Row Apt. 647\nEast Effieborough, DC 12235-2022', '4', '2', '0', '10', '7', '61', '0', '2', 'user', 1, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(62, 'Beau O\'Keefe', ' ', 'rbalistreri@example.com', '1-423-219-4450', 'erick.luettgen', '$2y$10$qzPoSxQESujPpJn4./Q8Fe2AbE02VmxrTrUvmgL2gWS1QZT/iGk5S', '1987-04-26', 'Laki-Laki', '2015-07-22', 'Menikah', '7557 King Ports\nBernierstad, SC 21942', '3', '0', '1', '9', '10', '51', '4', '2', 'user', 5, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(63, 'Izabella Aufderhar', ' ', 'hagenes.gabe@example.com', '612-613-3520', 'bauch.delia', '$2y$10$iMZyw8gO3hBXj8.3/cqgWuFubZMHXetfzTg/3VZTFVof/me0cJkH6', '1973-03-28', 'Perempuan', '1994-08-31', 'Menikah', '51382 Scarlett Orchard Suite 027\nWest Ike, WA 39820', '10', '5', '4', '0', '6', '31', '0', '0', 'user', 5, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(64, 'Justina Schamberger', ' ', 'kub.dahlia@example.com', '+1-432-436-2734', 'ernser.josefina', '$2y$10$OdQKgAgiM1xq0PKuPxP22OI.JCSJkciP84NwanUl9cG4Dq/pgiCvK', '1979-01-30', 'Laki-Laki', '2011-08-12', 'Lajang', '4251 Megane Stravenue\nHailieborough, VT 68406-1814', '7', '5', '4', '1', '6', '64', '5', '3', 'admin', 5, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(65, 'Dr. Colt Schroeder', ' ', 'yerdman@example.com', '925-971-2926', 'kemmer.norene', '$2y$10$fq7Y4pfXU0YCVDyOFCRHve0ErCETjGiEerTKRJXGt.JQ2yx3hzDp6', '1971-12-07', 'Perempuan', '1980-11-25', 'Lajang', '46686 Albina Square\nJudgeburgh, AZ 90671-2141', '9', '6', '0', '7', '2', '61', '2', '3', 'user', 2, NULL, NULL, '2024-05-26 07:55:40', '2024-05-26 07:55:40'),
(66, 'Mitchel Morar', ' ', 'dolly62@example.com', '+1.317.698.1324', 'marilie.ondricka', '$2y$10$oAwlZ1Lhq5mgjLWg02DZg.DbcGibQbkxI9tLYB566l0XoFnXARsaq', '1990-03-19', 'Laki-Laki', '1999-02-09', 'Lajang', '57330 Block Forest Suite 475\nWest Shermanshire, HI 84424', '4', '5', '4', '8', '1', '40', '2', '1', 'admin', 1, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(67, 'Martine Gutkowski', ' ', 'darby.stark@example.org', '+1.440.569.5995', 'daniella.hegmann', '$2y$10$pHmWH.WTpiC37GAgHcTCOe7NTJX71y.xwFgPu3IsEODAyDGzpZJFO', '1979-03-07', 'Perempuan', '1982-03-12', 'Lajang', '65142 Odie Neck\nHauckbury, NH 62616', '4', '0', '1', '9', '6', '59', '5', '0', 'user', 3, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(68, 'Dr. Onie Daugherty IV', ' ', 'ignatius.ortiz@example.org', '+1-470-316-7806', 'alejandra.carroll', '$2y$10$j6tKFDsD2gXIQJwwqkZ3TeQuWwDtXB7I5c4bfjr3qd5/g56IGbiEK', '2002-05-20', 'Perempuan', '1973-04-17', 'Menikah', '7850 Price Summit Apt. 980\nWest Manley, NE 52189-3840', '6', '8', '3', '10', '7', '3', '0', '4', 'admin', 4, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(69, 'Dr. Horace Feeney', ' ', 'bernadine.ratke@example.net', '+1-303-400-0616', 'rbecker', '$2y$10$4eXjd8ZVFD0Z9r4IBhlPVO3VPiJMT1HbPvrhug07mAjg5Ej5BqyRq', '1998-03-15', 'Perempuan', '2010-01-01', 'Lajang', '1833 Walsh Junction\nJuddville, IL 88373-2807', '6', '3', '1', '1', '6', '36', '3', '3', 'admin', 5, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(70, 'Prof. Carlos Stoltenberg Sr.', ' ', 'fjaskolski@example.org', '+1-615-814-7005', 'brian40', '$2y$10$n1zEgiRnxbhnAP6lczfrU.fSazDCGB5fT7jGdTfZMHk8chuXdsj/q', '1974-10-14', 'Laki-Laki', '1972-09-03', 'Lajang', '46805 Cummerata Parkway\nDixietown, NJ 12170', '8', '10', '8', '9', '0', '58', '4', '1', 'admin', 3, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(71, 'Mr. Johathan Feest MD', ' ', 'weimann.sylvester@example.org', '+16625619945', 'ebrown', '$2y$10$dPJ5NUHPLtBKjoiZvLxSpOrf6nmAcrmgVXaQPuaAmeFOGiuKpbWDG', '1973-07-01', 'Perempuan', '1998-02-15', 'Menikah', '99123 Hilma Way Suite 655\nBalistreriview, IA 74370', '3', '4', '3', '6', '0', '40', '5', '4', 'admin', 3, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(72, 'Mr. Eliseo Spinka', ' ', 'goldner.hugh@example.com', '989-985-9553', 'sherman.marvin', '$2y$10$kr.p7C1PcHBOVY2QvXnmy.oba6sh7LNXyIM1/kJ/my.2oGo9hXfsS', '2022-01-10', 'Laki-Laki', '2012-08-08', 'Menikah', '712 Kovacek Corners Suite 289\nNorth Lewisport, KS 50597', '5', '8', '1', '9', '6', '33', '3', '3', 'admin', 4, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(73, 'Mrs. Jayne Pouros I', ' ', 'ogreenholt@example.com', '+1 (843) 283-7992', 'ijohnston', '$2y$10$9a1atzp.8R9s8233mKqwGetOPGkgBcone7jCVnMyayIdGImygfOBO', '1985-05-10', 'Perempuan', '1986-12-29', 'Menikah', '33211 Blaise Drives\nJeniferburgh, AK 72053', '4', '1', '10', '6', '1', '84', '5', '1', 'user', 3, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(74, 'Johnathan Grady', ' ', 'apurdy@example.com', '(248) 832-2729', 'kerluke.jensen', '$2y$10$WlN8gFJREQ39tJjB8LQTc.Zsk2RRBBjx8y0QpVkwcV8ZlJf1BuQbK', '1998-05-20', 'Laki-Laki', '2016-05-15', 'Menikah', '60394 Malvina Fall Apt. 312\nJaskolskihaven, AZ 12520-5678', '3', '6', '6', '2', '10', '11', '2', '0', 'admin', 3, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(75, 'Ali Rau', ' ', 'tito.leannon@example.org', '574.580.3723', 'mvonrueden', '$2y$10$qQm4tWj1hg3diLIzIP5FZO5aPeNkA/JnnJcQ9M4YCX2E31BdRb2Wa', '1982-08-01', 'Laki-Laki', '2021-02-08', 'Lajang', '25128 Tara Pine Apt. 668\nEast Aidan, GA 38849', '1', '2', '4', '8', '2', '33', '5', '4', 'user', 5, NULL, NULL, '2024-05-26 07:55:41', '2024-05-26 07:55:41'),
(76, 'Norberto Gaylord III', ' ', 'axel.leannon@example.net', '+1-361-335-1498', 'neal81', '$2y$10$lylWFzjS9jQoSQPhPuY6QugyxCdHv73MexVScnSokOp7rmfq4gYoC', '1992-02-25', 'Laki-Laki', '2006-05-16', 'Menikah', '746 Pagac Junctions\nWest Naomistad, MT 53044-5291', '0', '9', '7', '8', '9', '5', '0', '1', 'admin', 5, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(77, 'Sydnee Weimann', ' ', 'kraig83@example.org', '618-269-0092', 'rozella.waelchi', '$2y$10$YWOmZK1P5h/fz4DteSVjye/NN3giNgkNRGcJeeV3pOR1mr6UMHvbC', '2009-08-26', 'Laki-Laki', '1993-10-15', 'Menikah', '58902 Julian Cove Apt. 407\nPort Sedrick, TX 50964', '4', '4', '10', '7', '0', '73', '1', '0', 'user', 1, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(78, 'Mac Schulist', ' ', 'qhilpert@example.org', '(910) 631-0560', 'rey.konopelski', '$2y$10$j5RmYWj/NDbEWpaukXe1xeXDRf7vfamMjuEXGTF4PFGHs74LKHB5q', '1982-04-27', 'Perempuan', '1985-01-24', 'Menikah', '9154 Laney Curve\nUptonstad, TX 93946', '2', '5', '2', '3', '8', '8', '3', '1', 'admin', 4, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(79, 'Dorris Crist III', ' ', 'mclaughlin.kathryn@example.com', '1-909-788-7341', 'kessler.veda', '$2y$10$PVdqbV.fpDrPau4FGzajCev7EgD3F4UylLSIEUWGqXxjhR7gfgMzS', '2006-05-19', 'Laki-Laki', '1981-02-23', 'Lajang', '220 Heller Branch\nHirtheton, VT 73742-9337', '9', '1', '6', '8', '7', '57', '5', '2', 'user', 5, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(80, 'Zena Robel', ' ', 'imogene.funk@example.net', '781.394.2639', 'aliyah26', '$2y$10$9f6.JxFguTVO4ebzyiFF6uTvzyRiqKW02LaLNvRLJ2mO3pi/jXO9m', '1996-08-21', 'Laki-Laki', '1979-11-20', 'Menikah', '122 Marvin Square\nWest Ruthie, SC 67082', '5', '6', '4', '4', '2', '29', '1', '0', 'admin', 2, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(81, 'Otha Rowe', ' ', 'chelsie57@example.net', '(702) 351-8951', 'shaniya.schulist', '$2y$10$xArsyLBsUIATuH94tRaKn.SRryxp.sQmoKksZ3vNHnrgdrdvaNlia', '2006-05-23', 'Laki-Laki', '2000-05-18', 'Lajang', '85294 Zetta Plaza\nLake Erich, OR 52309-3705', '5', '10', '10', '4', '1', '57', '4', '3', 'user', 5, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(82, 'Kimberly Donnelly V', ' ', 'vivian.larson@example.com', '806-701-8700', 'eemard', '$2y$10$HS/AVK0OZlCB7rIZsbC2/eQR0rZOghs5EFfxEYDytfeEeYGdE.88y', '1982-04-02', 'Perempuan', '1973-09-06', 'Menikah', '63478 Celia Landing Suite 922\nEast Maxime, NM 86549', '2', '1', '6', '5', '6', '46', '5', '3', 'user', 5, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(83, 'Jordyn Hane', ' ', 'trace44@example.com', '620.827.6646', 'lisandro.kemmer', '$2y$10$7W2x.sc4AOaHYfllo2xufOpd9P5f41A9Ju.aGWIbksNIFugznZyAC', '2016-03-12', 'Perempuan', '2005-05-17', 'Menikah', '892 Ezekiel Route\nNew Yazmin, AZ 98071-6917', '5', '2', '7', '10', '9', '14', '3', '5', 'admin', 3, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(84, 'Raquel Cummerata', ' ', 'zoconner@example.org', '+13648312843', 'kemard', '$2y$10$XCZwp0ytC2FEcl.N1lLZ..nilfjOE6sBni1KyN2knzaccDdiDHLC2', '1985-08-04', 'Perempuan', '2016-02-10', 'Menikah', '111 Schmidt Turnpike\nWestbury, IL 17299-5371', '3', '3', '7', '10', '4', '69', '5', '4', 'user', 1, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(85, 'Katrina Grimes', ' ', 'shanny65@example.net', '+1.678.692.2470', 'legros.lillie', '$2y$10$B0wIO/CMqyjCnhubWInYk.9DwqzSpHSt2wtSarSYDVo30hnZa/BwS', '2024-01-14', 'Perempuan', '2015-09-18', 'Lajang', '13053 Richmond Court\nPort Frederikshire, SC 06066', '5', '9', '6', '7', '6', '71', '3', '5', 'user', 4, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(86, 'Miss Amber Friesen', ' ', 'mara.keeling@example.org', '+1 (254) 457-6294', 'jasmin.treutel', '$2y$10$e1m7EOLGFPB2BJ8j12K09Ofc9TPjvUNvHBZKQYZfcMbYkTi3lpR0e', '2000-11-03', 'Perempuan', '2010-05-21', 'Lajang', '2739 Mariela Loaf\nWinfieldville, MN 57557', '7', '3', '10', '7', '7', '65', '0', '1', 'admin', 3, NULL, NULL, '2024-05-26 07:55:42', '2024-05-26 07:55:42'),
(87, 'Bridget Breitenberg', ' ', 'leuschke.mustafa@example.net', '(904) 203-4934', 'breanne67', '$2y$10$XgVbA5aAes.Ozqem.ODVE.KU3Cjktr8BYXsqHVl7XhcCUZd/2OAdK', '1997-02-24', 'Laki-Laki', '2022-09-18', 'Menikah', '4223 Crooks Ridge\nSouth Callie, WY 27605-5473', '10', '1', '1', '8', '4', '65', '0', '2', 'user', 5, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(88, 'Connor Gottlieb', ' ', 'assunta.auer@example.org', '828-400-1124', 'barrows.lionel', '$2y$10$EKHQXqZrNkBMCwS3AvO/te5cQdg/094EkfoiqaXIsvJKuT58qw5hW', '2007-04-29', 'Perempuan', '1976-08-07', 'Lajang', '73680 Jaida Center\nEast Wayneside, WA 55897', '5', '10', '6', '4', '4', '67', '5', '3', 'user', 1, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(89, 'Tyrese D\'Amore', ' ', 'trantow.reed@example.com', '1-754-224-6622', 'alejandra79', '$2y$10$E/V/46muYG7/XFGwpQ5B9epFbDUoA0aQiLeLCSV9vToWgcIOn4CKW', '1990-02-13', 'Laki-Laki', '1977-04-01', 'Menikah', '99672 Johns Way Suite 976\nNorth Nelleview, NH 40640-4071', '9', '5', '1', '3', '0', '26', '4', '2', 'admin', 3, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(90, 'Lera Lehner I', ' ', 'ckautzer@example.net', '(531) 719-7272', 'ihomenick', '$2y$10$2HNbio3oV2f23uCojppmXuxLdHp3jy8zejUcWaWczhiXLBnc.XF1S', '2015-03-27', 'Perempuan', '1971-02-14', 'Lajang', '890 Tristian Circle\nNikoview, NH 70200-1677', '6', '6', '3', '9', '7', '39', '5', '3', 'admin', 5, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(91, 'Prof. Bella Becker', ' ', 'rutherford.era@example.com', '828.642.3493', 'wiegand.natasha', '$2y$10$Y/sxds7jeeWK/2PZYlP.Zu8tpq.gqvsGjQvAa3vQ/k76IOU9sguTK', '1972-09-21', 'Perempuan', '1987-10-04', 'Lajang', '346 Schinner Knoll Suite 506\nPort Theresechester, TN 74888-3767', '5', '6', '0', '9', '9', '79', '3', '2', 'user', 3, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(92, 'Broderick Nolan', ' ', 'vzboncak@example.org', '1-564-859-7547', 'dare.juliana', '$2y$10$hWr.zpxzc8E7w.JNM1c4Nu.IAU9LhvuTa5FQqsVrCcUDPIuN2U38q', '2016-03-06', 'Laki-Laki', '2004-01-24', 'Lajang', '56949 Lowe Way\nWest Mariaburgh, TX 48058', '2', '10', '1', '6', '6', '13', '1', '0', 'user', 1, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(93, 'Ellsworth Johns', ' ', 'vandervort.caroline@example.net', '832-502-2085', 'vgorczany', '$2y$10$fQzkgA1wnav1ZDCz9QwfFOM3iZPN97dt9QHLGxNdxHUXRSIw3/L6a', '1987-08-08', 'Perempuan', '1998-06-06', 'Menikah', '324 Mohr Summit Suite 940\nMcKenzieport, MD 56162-4912', '5', '7', '1', '3', '4', '58', '4', '4', 'admin', 3, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(94, 'Ms. Salma Fahey', ' ', 'alan.becker@example.net', '726-998-5086', 'ekunze', '$2y$10$eu3mUaBDfouGaUCCKRwozeDTzCDTWPEEFnF5v.xbYISR2eNPbER72', '1994-09-29', 'Perempuan', '1980-11-14', 'Menikah', '9464 Gleichner Dam\nSchmelerborough, MS 16825-9550', '6', '1', '2', '7', '9', '10', '4', '5', 'admin', 5, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(95, 'Mr. Merlin Treutel', ' ', 'pkemmer@example.net', '1-689-251-3059', 'allie.hickle', '$2y$10$BdzV3DdV3TxdmXyi1b8Y3OILWsQ2GE6VdJy0UYimuGaIzIyJMK3pO', '1994-12-17', 'Perempuan', '1980-11-24', 'Menikah', '580 Bauch Views Apt. 271\nXavierville, SC 06724-4840', '0', '2', '6', '8', '6', '57', '1', '2', 'user', 1, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(96, 'Jacques Satterfield', ' ', 'qjones@example.org', '754-303-5676', 'alexandrine.pacocha', '$2y$10$lYUPgZNrxb70kHt5cCxDi.e9uqEABe4CEo52OIbB/2QKp3hACjTUC', '1975-02-14', 'Laki-Laki', '1990-01-12', 'Menikah', '70413 Alison Hills\nNew Althea, LA 46425-1130', '10', '10', '7', '10', '3', '23', '0', '2', 'admin', 4, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(97, 'Randy Stroman', ' ', 'dmcdermott@example.com', '1-575-581-2932', 'xsatterfield', '$2y$10$M.jVGUWlig02LWHSdKFq0O/TuMlyaCYPUTjDruwFHuLa/.kxnzqcm', '1973-08-29', 'Perempuan', '1971-05-11', 'Menikah', '92106 Gorczany Path Apt. 214\nEast Charlene, KS 67988', '0', '2', '3', '0', '4', '61', '2', '0', 'user', 4, NULL, NULL, '2024-05-26 07:55:43', '2024-05-26 07:55:43'),
(98, 'Dr. Kirsten Schulist III', ' ', 'pfannerstill.katelynn@example.com', '+1-334-865-3987', 'veda.brekke', '$2y$10$/dSUWZ6sk6oG7GQaQXN6xe4.38TYzC.9Fi1/xl8RfpLL3dVV1A33G', '1977-08-27', 'Laki-Laki', '2006-09-08', 'Menikah', '618 Cameron Meadow\nCiaraborough, RI 32985', '7', '4', '9', '0', '2', '16', '5', '3', 'user', 4, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(99, 'Jazmyn Hirthe', ' ', 'lemke.annabell@example.org', '925.381.1828', 'tierra.abbott', '$2y$10$BzCi/Pj1s1UVpSqK1fY28eKctok14KTWuD6yj/86rtrWkkADrHos2', '1982-03-10', 'Laki-Laki', '1973-03-31', 'Menikah', '6889 Anderson Park\nWest Keanufurt, HI 60690-7488', '2', '8', '9', '9', '2', '68', '0', '5', 'admin', 3, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(100, 'Rusty Bradtke', ' ', 'emard.connie@example.net', '1-680-444-6474', 'nakia.gibson', '$2y$10$vGw8Odi8h4NbrbX/o7oaA.VuQxxUQZI3yPKoGZY1iH0ZkGtRJnVdm', '1970-11-14', 'Laki-Laki', '1985-10-27', 'Lajang', '9220 Johnson Field\nEast Chance, CT 40205-4547', '6', '10', '7', '0', '10', '35', '3', '2', 'user', 4, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(101, 'Ernestina Kohler DVM', ' ', 'fahey.camille@example.net', '+1-646-748-0517', 'tmraz', '$2y$10$DZvnsTkzb8FmrS.osQFUGu7p0TAnC435Xsh6L8ByD8G4e2zpWiuYu', '1995-10-26', 'Laki-Laki', '2015-06-10', 'Lajang', '539 Helena Place\nLake Stewartmouth, NH 81417', '10', '6', '0', '9', '1', '37', '5', '5', 'admin', 1, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(102, 'Dr. Connor Willms III', ' ', 'pacocha.sanford@example.org', '1-272-420-1629', 'daron31', '$2y$10$mZSD4HvKCkMBUgeLODd7weDcBTpCBc5OkS4GXGc6FTTfw1GBHRVRS', '1986-09-03', 'Perempuan', '1990-07-08', 'Lajang', '64730 Cletus Terrace\nSouth Stanchester, DE 34764-2072', '4', '2', '4', '4', '9', '24', '5', '5', 'admin', 1, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(103, 'Kelley Waelchi', ' ', 'marks.yolanda@example.org', '626-936-3184', 'liza39', '$2y$10$xDYSpVNW3x.0rE0EcvpbWuRHwrEOpDTf1OKHJO2iS5Izjwf6BZhNC', '1976-08-25', 'Laki-Laki', '1973-11-01', 'Lajang', '81003 Scottie Crest Apt. 548\nLake Tad, WA 78494', '4', '6', '1', '8', '1', '28', '0', '3', 'admin', 3, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(104, 'Diamond Johnston', ' ', 'keeley.leffler@example.net', '(405) 804-0513', 'ggreenfelder', '$2y$10$z5dUWGUHJJt429CERpefPetTDiDx2vpiTJoTgaaoC5X5EEfQw93QC', '2017-08-15', 'Perempuan', '2018-06-05', 'Menikah', '2651 Yasmeen Fort\nEast Alenaport, KY 56461-9417', '5', '5', '7', '6', '0', '3', '1', '0', 'admin', 2, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(105, 'Valentin Kemmer', ' ', 'cary.goyette@example.net', '(303) 710-5854', 'josue58', '$2y$10$Fx62YKbOQRwhpQXGGqx3huRKeVj1zXFEiUM55TucanQizOzz7gW0G', '1970-07-07', 'Perempuan', '1974-05-05', 'Menikah', '8976 Carter Place\nEvatown, WI 43906-3112', '4', '2', '9', '4', '9', '44', '5', '4', 'user', 1, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(106, 'Madisen Grimes', ' ', 'cecil14@example.org', '351-956-4470', 'aohara', '$2y$10$L01ETBn4pyYS2OHP8Je6yeAw/Epsh8JCuHG2.0JjE7cY8.uv/qhiC', '1984-04-04', 'Perempuan', '1999-12-09', 'Menikah', '547 Landen Pike\nNew Leopold, VA 50209-0809', '8', '2', '5', '5', '6', '85', '5', '5', 'admin', 5, NULL, NULL, '2024-05-26 07:55:44', '2024-05-26 07:55:44'),
(107, 'Ms. Rosanna Batz', ' ', 'providenci.stark@example.com', '(870) 900-3899', 'williamson.ella', '$2y$10$z5WwhSkeYkAPf/MMRK5OP.Cz1GPI.i6.gj8ShsmKDGaVU8ESzrx/a', '1977-09-01', 'Laki-Laki', '1977-10-06', 'Lajang', '45814 Breana Knolls Suite 206\nLake Cleomouth, IN 12257-8612', '2', '4', '9', '10', '2', '44', '4', '4', 'admin', 3, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(108, 'Elna Maggio', ' ', 'wanda81@example.org', '1-608-623-8646', 'rocky69', '$2y$10$m32Vzo668sfWBVRERot2zOk6ddLXJB3cO2870HTOQOLz8WeB/J54q', '2004-10-04', 'Laki-Laki', '1990-07-03', 'Menikah', '28985 Friedrich Brooks\nClotildeshire, HI 95037', '2', '2', '5', '7', '0', '51', '3', '5', 'admin', 1, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(109, 'Hattie Schumm', ' ', 'dedrick.mitchell@example.org', '878-288-4839', 'giles.schmitt', '$2y$10$zDbl18/QNTbzPHCV8Cf6RuQlTMr/FOz3yRtlprCgzIDvwT6QbYgMm', '1973-05-26', 'Perempuan', '1984-12-16', 'Lajang', '541 Easter Walks Suite 141\nLake Melyssaside, VA 27457-1818', '3', '5', '4', '9', '9', '41', '5', '3', 'admin', 2, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(110, 'Nash Brown', ' ', 'zdavis@example.net', '+1 (262) 699-1464', 'schneider.oma', '$2y$10$GL2LXTOyWkCNfVAR37kPae3PRNvJGLfYy/3FclHPrT8Vmlcwcv4JO', '1996-08-01', 'Laki-Laki', '1975-05-26', 'Lajang', '7527 Danial Extensions Apt. 468\nLake Ansel, UT 21576', '7', '8', '4', '10', '9', '8', '1', '1', 'admin', 3, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(111, 'Ms. Leta Hill DVM', ' ', 'ayana.rutherford@example.org', '308.493.2527', 'mstiedemann', '$2y$10$O6lmSS.iZtQbs8s.DXMsT.p9W2ii0Ny5T6trLgT5O770UHbXt6AOC', '1991-03-30', 'Laki-Laki', '2016-05-28', 'Menikah', '23710 Schaefer Crossroad Suite 742\nHeaneymouth, ID 01861', '8', '10', '0', '3', '8', '21', '5', '2', 'admin', 1, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(112, 'Mr. Erich Bashirian', ' ', 'abigayle.farrell@example.com', '(313) 490-7396', 'wbauch', '$2y$10$2Op8Eij.V8tHT3xsL9QdUerAwv0gRD7HdPM55zcaStLmF.dQ8NL4e', '2023-06-19', 'Perempuan', '2011-05-25', 'Menikah', '97190 Lera Estates\nNew Maritza, WA 85557-5876', '4', '8', '2', '8', '10', '88', '1', '5', 'user', 4, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(113, 'Alexandrea Douglas Jr.', ' ', 'yhauck@example.org', '(323) 643-7737', 'jennifer37', '$2y$10$skI2oD0ZkOvkBk6T6asSC.sOYhcN1UtomA67Cq1bHcC0EGy4iIRji', '1984-04-21', 'Perempuan', '1987-07-08', 'Menikah', '94911 Jones Place Apt. 730\nHartmannhaven, LA 88498', '8', '10', '3', '6', '10', '44', '4', '1', 'admin', 4, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(114, 'German Wuckert', ' ', 'issac.beier@example.com', '+1-432-665-2803', 'ilene53', '$2y$10$c43nVEQJqr8aNjjwu9u1BO0Fy.S1wQC5yHdC.I/aAdZRu7N1PFvjS', '2018-06-19', 'Perempuan', '1999-08-22', 'Lajang', '2007 Louie Prairie Suite 222\nBrettborough, OR 18251-1700', '0', '4', '8', '6', '9', '38', '0', '1', 'admin', 3, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(115, 'Columbus Rosenbaum', ' ', 'stephania.johnston@example.net', '+1.712.398.1614', 'ethyl.thompson', '$2y$10$jbQbeT5s6lBe7nMsKIp7yuOZEGlcsKFtC6poRPx6nPffwjigApfx6', '2020-07-16', 'Perempuan', '1985-03-28', 'Lajang', '8739 Hollie Trace\nJudsonside, MO 17172', '4', '6', '8', '9', '6', '28', '3', '3', 'admin', 2, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(116, 'Marta Fahey Jr.', ' ', 'filomena.nicolas@example.org', '980-389-0722', 'vvon', '$2y$10$8j6rMc8j1XnTyA3RdP05mejuvXkPiOhMCzMrpM5sjbcLNdQ6Xny2a', '2010-02-11', 'Laki-Laki', '2016-08-22', 'Menikah', '40396 Earl Causeway Suite 491\nWest Nannie, IA 02562-7890', '9', '5', '10', '0', '6', '83', '5', '5', 'admin', 2, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(117, 'Elfrieda Hudson', ' ', 'alisa89@example.com', '334.398.9613', 'gtrantow', '$2y$10$4qR.IzHA6oxtQW0O4YKAE.OSVFkA3e8E/wYZY4CxINzrFsX.j4Xwa', '2012-05-22', 'Perempuan', '1977-01-11', 'Menikah', '583 Daphne Valley\nLake Bridget, CA 00490-5757', '6', '3', '1', '2', '8', '68', '4', '3', 'user', 4, NULL, NULL, '2024-05-26 07:55:45', '2024-05-26 07:55:45'),
(118, 'Bertram Beahan', ' ', 'jarred.walsh@example.org', '(562) 588-4197', 'kenton92', '$2y$10$iztWc.8hmo8MrSe3DH66VOXYKI0nSdZFqoVEHN7uDNQrMV5mJj2B6', '2004-11-16', 'Perempuan', '2010-03-02', 'Menikah', '88172 Kuphal Creek Suite 320\nBeattyfurt, VT 71946', '2', '4', '5', '9', '7', '40', '3', '0', 'admin', 1, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(119, 'Treva Corkery', ' ', 'brianne89@example.org', '938.762.1442', 'hhickle', '$2y$10$TUTPUIyhZpunvc6r76g7b.fCXmvQL1Gp8iUn/miLjT386O.qldRuu', '1991-03-05', 'Laki-Laki', '1973-07-28', 'Lajang', '171 Mitchel Land\nWelchside, OR 91624', '1', '4', '6', '2', '7', '17', '1', '0', 'admin', 5, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(120, 'Hayden Koelpin', ' ', 'horace.hirthe@example.org', '1-361-672-2286', 'maudie10', '$2y$10$fl/GN.ZjBy7ZFf2.b4wXNeiOoBGtyNGx72QeL8NZeX0oZLkrvDRri', '1974-12-03', 'Perempuan', '1995-06-04', 'Lajang', '553 Dooley Light Suite 787\nEast Oswaldchester, IA 41934-1932', '8', '0', '0', '7', '1', '78', '0', '5', 'user', 5, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(121, 'Dr. Cristobal Kerluke', ' ', 'steuber.celestine@example.com', '940-293-1310', 'mhessel', '$2y$10$QV02cLeQkXliLx85gxXucOyYa70CUxuGvqN.g6nNTcOA2N3yO8uCO', '1984-04-04', 'Perempuan', '1990-02-19', 'Menikah', '666 Ortiz Mountain\nHoweside, NY 29005-8562', '0', '0', '5', '10', '9', '3', '0', '1', 'user', 5, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(122, 'Miss Everette Schinner', ' ', 'odessa.hill@example.com', '+1-475-545-1770', 'teagan.batz', '$2y$10$.rm8wZbaiW1O92zRgPrgb.81mArRJcGYUNE3JNpePuhb1kglFcA0C', '1993-06-10', 'Laki-Laki', '1992-12-06', 'Lajang', '52060 Stokes Cove Suite 254\nSouth Micheleland, KY 23718-8134', '10', '7', '7', '6', '7', '83', '2', '5', 'admin', 2, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(123, 'Prof. Angus Nicolas', ' ', 'malachi.quitzon@example.net', '562-979-5048', 'odessa01', '$2y$10$xAbtgX69iVo5uC4pLiiKWeNhMJoHDy1Hu4.mPgU5duf6k60/7sac2', '1978-05-11', 'Perempuan', '2022-10-24', 'Menikah', '961 Francesco Ways\nEast Ila, OR 04844-4275', '0', '7', '4', '3', '8', '82', '0', '1', 'user', 5, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(124, 'Prof. Ronny Reichert I', ' ', 'hackett.celia@example.com', '1-689-829-1887', 'kmante', '$2y$10$W4qcoCUWatSZwzjKEQ.UO..cvv/sPDdDbT0EC2Ks8lM7SgM92GzCi', '2013-11-29', 'Perempuan', '1984-04-10', 'Lajang', '5989 Smith Manors Apt. 584\nLake Arne, NJ 87853-6263', '2', '0', '7', '1', '5', '63', '0', '5', 'user', 2, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(125, 'Charity Breitenberg', ' ', 'emmy.lebsack@example.net', '307-498-7440', 'mclaughlin.domenica', '$2y$10$9fMnQquswRcXfm5MB1xCauXtWMFWiwW28Njv36F/fBngZXEUYhc0y', '2007-08-21', 'Perempuan', '2021-06-29', 'Lajang', '476 Leffler Way\nNew Abelchester, DE 23804', '4', '10', '0', '6', '1', '57', '0', '0', 'admin', 2, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(126, 'Nicklaus Greenfelder III', ' ', 'jake27@example.net', '+1-651-670-0159', 'bechtelar.maryjane', '$2y$10$AIYDheO5RmKai2L/MuV4eu/BSiRogKOPMxVvaBu8LuBlX6EpW91am', '2019-01-25', 'Laki-Laki', '1977-03-16', 'Menikah', '92891 Leanna Isle\nSatterfieldview, MA 99017-5646', '4', '3', '8', '1', '2', '5', '2', '3', 'admin', 1, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(127, 'Lionel Howe', ' ', 'xprohaska@example.org', '680.875.8392', 'lucile09', '$2y$10$hR0OyjM2DPDv40s1tiQr7uR7m1KJpbA/Nh8sUPQPvlJq8OKtN.zYW', '1997-09-07', 'Perempuan', '1991-06-29', 'Lajang', '1893 Adam Island\nLake Nyasia, ND 69563', '6', '0', '8', '7', '6', '80', '2', '0', 'admin', 3, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(128, 'Mr. Liam Cruickshank', ' ', 'ywintheiser@example.org', '1-283-808-5107', 'rheller', '$2y$10$iQnBAhmM3btTEJ6m7Hctr.KQfi28tSLKMILq13BNm3gNBuAXJnv8u', '2010-10-26', 'Perempuan', '1996-07-14', 'Lajang', '7805 DuBuque Ramp\nShanahanbury, TN 90882', '10', '4', '8', '0', '0', '63', '3', '1', 'user', 4, NULL, NULL, '2024-05-26 07:55:46', '2024-05-26 07:55:46'),
(129, 'Margarita Lynch', ' ', 'emmerich.amara@example.com', '+1-864-740-9954', 'fahey.brianne', '$2y$10$/GXvjFVXabyc.mgxTCBl4ujA1shz3/c0eWmtF5v/E1Pz/ykU9U4VO', '2004-03-14', 'Perempuan', '1986-09-28', 'Menikah', '739 Windler Ports Apt. 230\nJacobshaven, MS 95497', '7', '4', '2', '0', '7', '29', '0', '5', 'admin', 5, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(130, 'Vernice Heidenreich', ' ', 'kohler.stacey@example.net', '828-679-8643', 'hgottlieb', '$2y$10$TCfYEvN.2hfVPIdVj1VDDe6zc4WPOBs8yUV69GYaLyYUrHMKUVk4O', '1993-08-11', 'Laki-Laki', '1994-01-19', 'Lajang', '540 Beatrice Junction Suite 164\nSouth Clairfort, IA 71899-3274', '6', '7', '1', '4', '2', '83', '1', '4', 'user', 3, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(131, 'Jordon Murazik', ' ', 'elbert04@example.org', '+1 (678) 267-5805', 'angus10', '$2y$10$QHv.LkZrkblIR6ZPG2AmdOCzgXIl/AuAY.ApjLYZ7t.cOyM9zzR4W', '2024-01-10', 'Perempuan', '1989-05-11', 'Menikah', '513 Gleason Terrace Apt. 410\nSouth Hilma, WI 52780-4960', '3', '8', '3', '9', '8', '12', '0', '1', 'user', 3, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(132, 'Kaylin Adams', ' ', 'yhand@example.com', '805.271.7847', 'meggie.kulas', '$2y$10$Dq55F7zkwaYziaddi8e.tO8RdPYOgKccXNlSSRslBvN4P7Iw6WTTa', '1990-04-22', 'Laki-Laki', '2010-10-11', 'Lajang', '9221 Uriel Avenue\nAdrianaville, MN 31947', '10', '7', '9', '6', '6', '5', '1', '1', 'admin', 4, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(133, 'Joshua Gulgowski', ' ', 'okeefe.kelley@example.net', '+1-865-887-7564', 'tre67', '$2y$10$XM1PmrAtHVOfDnAxijrGh.mjfwkigBQ/KOzqXGXfLjq2rxWa.mvpq', '2013-03-06', 'Perempuan', '1996-02-08', 'Lajang', '122 Wisozk Hollow Apt. 689\nWest Leola, MT 15754-2058', '0', '0', '9', '10', '7', '82', '1', '3', 'admin', 2, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(134, 'Ron Krajcik', ' ', 'rogahn.rozella@example.com', '+19407828427', 'demond20', '$2y$10$9wipBNuC.97UfFrnmqNPve6EKIvaFxMMnNacb.OgHtLXlG2UG4VdC', '1984-07-25', 'Perempuan', '1997-02-23', 'Lajang', '15332 Batz Causeway\nReingershire, NJ 82001', '4', '8', '5', '3', '1', '20', '0', '1', 'user', 3, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47');
INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `jabatan_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(135, 'Earnestine Okuneva', ' ', 'ted71@example.org', '+1 (608) 325-7697', 'schamberger.dino', '$2y$10$/aH2wpCO215gnfuANbE5w.b6gJDS1DInkU2rkoy2uY/UDLbAUmDvS', '2016-10-28', 'Laki-Laki', '2013-06-20', 'Menikah', '762 Mraz Trail\nWest Jackeline, ME 93326-2657', '8', '6', '0', '7', '3', '22', '4', '5', 'admin', 5, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(136, 'Evan Hoeger', ' ', 'miller.chaya@example.net', '734.384.8864', 'erdman.caroline', '$2y$10$KAcFFBBFciXJNO03xNGzWeNj.11dMlyfM4u4qp8ucMJm4bvz0pRge', '2020-06-07', 'Perempuan', '1980-08-01', 'Lajang', '230 Ledner Bridge Apt. 311\nSouth Javon, NC 75847', '2', '6', '3', '7', '3', '34', '2', '4', 'user', 5, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(137, 'Dr. Arnaldo Sporer', ' ', 'jmurray@example.org', '+1.256.629.1686', 'gutkowski.leonie', '$2y$10$E4wSFik7JBgQ8okIX4LfTuLaz1a43MLjOJKeZv2yuNfQAgSyOR2JS', '2003-11-23', 'Perempuan', '1972-12-06', 'Menikah', '55071 Wilma Roads Apt. 408\nNorth Candelario, CO 34879', '3', '6', '10', '9', '3', '58', '1', '4', 'admin', 4, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(138, 'Dr. Colin Morar', ' ', 'oullrich@example.net', '980.803.0173', 'eldora73', '$2y$10$MKJpUFBxpybxcS8yIWCu6OVmq8WYdztAdi1/WvOi0PazrvNkedOXe', '1996-08-09', 'Perempuan', '1981-07-28', 'Menikah', '3344 Reynolds Coves\nPort Jacksonside, NC 51837', '1', '4', '0', '1', '3', '8', '5', '0', 'user', 2, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(139, 'Miles Morissette', ' ', 'yundt.reanna@example.net', '(425) 292-8361', 'angela.marquardt', '$2y$10$D6o6b64z.LdakryfatvRiONjGu9tkoGMHuTjZTisq/SUdWmXhWIXa', '1981-02-13', 'Laki-Laki', '1981-02-05', 'Menikah', '796 Chloe Passage Suite 867\nLake Madie, VA 15250', '4', '5', '1', '7', '10', '19', '5', '5', 'admin', 4, NULL, NULL, '2024-05-26 07:55:47', '2024-05-26 07:55:47'),
(140, 'Mrs. Theresia Beatty V', ' ', 'wiza.lillie@example.net', '+1 (662) 355-7187', 'qheidenreich', '$2y$10$9h0bXxf9OnWmXT8gQYBBRu0hc/4Uoog7o582XhgldMMiyE7VwPGvO', '1982-01-29', 'Perempuan', '1982-11-15', 'Lajang', '2124 Rahul Mountains Apt. 745\nDemarcoborough, PA 94514-4751', '10', '5', '3', '5', '9', '10', '3', '0', 'user', 5, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(141, 'Lyda Quitzon', ' ', 'dhickle@example.com', '1-435-206-1677', 'kyleigh.stamm', '$2y$10$LR2TMqjLjobzYRxDoSf7u.T37U8iu3gMYj.jCUapLMgukjW7dYKYS', '1971-02-15', 'Laki-Laki', '2019-02-18', 'Lajang', '5193 Hettinger Drives Apt. 234\nO\'Haramouth, AR 58950-8535', '6', '6', '0', '10', '0', '54', '2', '0', 'user', 3, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(142, 'Prof. Israel Lindgren', ' ', 'belle77@example.net', '+1 (949) 246-6678', 'lroob', '$2y$10$cKWqdC./cgpvCjtKRD/Q8eSHZczAhHsD3k7N5/auXAFqk6yz0Jglm', '2018-04-17', 'Laki-Laki', '1988-05-08', 'Menikah', '48073 Friesen Meadows Apt. 135\nKyraside, AR 30302-2694', '3', '10', '9', '6', '0', '49', '3', '0', 'admin', 1, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(143, 'Irma Kovacek III', ' ', 'wunsch.elenora@example.com', '+1.520.907.4018', 'keshawn.sawayn', '$2y$10$9R/2JFUXRLWevOPHtE5bIuzl5Kar8H5b1GX6YeKsvNIYOCaQl6P0i', '2003-10-22', 'Laki-Laki', '1986-10-02', 'Lajang', '876 Boyle Drive Suite 001\nProhaskatown, SD 36793-1133', '9', '4', '10', '2', '2', '13', '4', '1', 'admin', 3, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(144, 'Tess Witting', ' ', 'torp.amiya@example.com', '+1 (904) 429-0811', 'petra91', '$2y$10$bfxqj7qXuM9lVz.MoPNTLePFYuHLaf3o/HgorFcTgVNDWFeGMjHAG', '2018-07-30', 'Perempuan', '2006-05-17', 'Menikah', '208 Kozey Port Suite 630\nThielmouth, CA 19774', '8', '9', '4', '0', '8', '49', '2', '5', 'user', 4, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(145, 'Korbin Bosco', ' ', 'gleason.douglas@example.net', '1-657-863-4798', 'turner.rubie', '$2y$10$EMixpAEImfDFp9Yoe2dE7e0zx.s2M7bBAWmgJyfqF/LsOne4lVzzK', '2022-06-29', 'Laki-Laki', '2002-05-29', 'Menikah', '6607 Satterfield Springs Suite 222\nDouglasmouth, UT 47192-8002', '10', '10', '1', '7', '7', '9', '0', '1', 'user', 4, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(146, 'Mrs. Sydnie Krajcik', ' ', 'hillary.gorczany@example.net', '1-770-480-6961', 'chyna.hammes', '$2y$10$Xa2w73wwqmQkKLwLsH.VkuK1HL0wan6ZNf3VajMYeqq1EkjO8B2Wu', '1998-08-10', 'Laki-Laki', '1973-02-16', 'Menikah', '11756 Esmeralda Pines\nNew Lelahstad, MA 35310', '4', '4', '4', '9', '3', '66', '5', '3', 'admin', 2, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(147, 'Leda Wilderman Jr.', ' ', 'vivien67@example.com', '+1 (845) 545-2139', 'aric.dietrich', '$2y$10$cKTNo7ei6sGyJ2vvtUfvNeH1/fHWmirJD/ud1xCGkaS1GQtY5lqrC', '1988-10-02', 'Perempuan', '1976-03-24', 'Lajang', '31737 Clair Light Suite 282\nNorth Bradly, VT 76149', '5', '7', '1', '0', '4', '69', '3', '0', 'user', 4, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(148, 'Bennett Russel', ' ', 'hallie.kuhlman@example.net', '(425) 670-7610', 'ejenkins', '$2y$10$ZQ9KgEpnfibPwS9wnSh7y..1IBxPjLtZJW1ygfBzhAA//PGrT6xSG', '1979-08-30', 'Laki-Laki', '2020-08-11', 'Lajang', '8916 Nolan Parkways\nAniyafurt, ME 34155', '8', '9', '1', '5', '9', '50', '5', '5', 'admin', 2, NULL, NULL, '2024-05-26 07:55:48', '2024-05-26 07:55:48'),
(149, 'Napoleon Wisoky', ' ', 'schmitt.else@example.org', '(870) 770-1584', 'bartholome.wunsch', '$2y$10$acvJ/sfOgnkSLuhe/XOPkenuZ8WoLaWDg9auLYr/3Uqn/1nsHypj.', '1973-12-31', 'Perempuan', '2009-01-21', 'Menikah', '1659 Karley Valleys\nJamirburgh, MD 93221-6651', '5', '7', '2', '0', '3', '37', '0', '1', 'admin', 5, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(150, 'Emanuel Jaskolski', ' ', 'wilber75@example.net', '+1 (951) 637-2119', 'hansen.arjun', '$2y$10$HRq0OYz8XMAPQW0geZw1veuQXBNTFGbWF.dfn.p39mRQelKeCtUXa', '1979-07-16', 'Perempuan', '1991-01-21', 'Lajang', '2807 Lockman Club\nNew Sterling, IL 29652-0864', '8', '3', '3', '3', '0', '22', '0', '3', 'admin', 1, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(151, 'Prof. Kellie Barrows DVM', ' ', 'miller17@example.com', '+1 (337) 316-9146', 'ybatz', '$2y$10$195nN.w2o1HYagy9gRbq.Ou9qAMUvmwBVRi8uYoWoCKJ7VB8sNfku', '1970-12-02', 'Laki-Laki', '2013-04-06', 'Menikah', '6214 Stiedemann Branch\nAndersonshire, PA 62814', '8', '6', '6', '6', '0', '50', '0', '3', 'admin', 3, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(152, 'Aylin Quigley', ' ', 'hodkiewicz.king@example.net', '1-973-938-0792', 'marion86', '$2y$10$shKfLiQ5fLMwjSS2sp8Vf.mjByOkz364iJOkrSpC9UILFZxb0c8W2', '2015-01-07', 'Laki-Laki', '1973-06-07', 'Lajang', '24879 Vern Walks\nNew Avis, TX 85177', '0', '1', '2', '2', '0', '35', '1', '5', 'user', 4, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(153, 'Georgianna Koelpin', ' ', 'vhayes@example.com', '678-490-5478', 'eula.watsica', '$2y$10$uPC4O3IElPcrtvc/96nqZeiQYu4Khnthmoo8viRcUDc7UYSvPyAUS', '2003-02-05', 'Perempuan', '1984-12-12', 'Menikah', '5478 Arno Track\nGeovanyland, ID 13487', '6', '3', '5', '4', '1', '63', '2', '3', 'admin', 4, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(154, 'Leland Gutkowski', ' ', 'vflatley@example.com', '(720) 562-3402', 'reta.aufderhar', '$2y$10$wMH0sE2P9zmdiURLuktkiuFy5t1NVNK5kwbQ7j50boMzIErCnXMu6', '1990-10-03', 'Laki-Laki', '2009-06-29', 'Lajang', '1444 Stehr Pike Suite 070\nKerlukeborough, NH 03620', '10', '4', '6', '9', '4', '29', '5', '4', 'user', 2, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(155, 'Emily Feeney', ' ', 'mkautzer@example.org', '(586) 690-3805', 'edwardo67', '$2y$10$CqZ6tD7q3vQnzXPnUQmOKO0iyV7KZadfMyyeC7HEFdgAaD6IlC6o2', '1980-02-15', 'Laki-Laki', '1982-09-02', 'Menikah', '5441 Josiane Roads\nSouth Ruby, RI 24855', '3', '0', '9', '9', '3', '49', '0', '0', 'admin', 2, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(156, 'Preston Willms', ' ', 'elsie.kris@example.com', '628.704.5992', 'vhansen', '$2y$10$gdJPO.sGXdUey6sKiAEK7OYr2OCXgcUH5H9ZEhOheHVzPutjC3NOO', '2005-03-30', 'Perempuan', '1987-01-09', 'Menikah', '3284 Mireya Vista\nVonRuedenchester, SD 96274', '8', '10', '3', '8', '6', '14', '5', '2', 'admin', 1, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(157, 'Ari Predovic', ' ', 'fritsch.saul@example.org', '+1-507-254-6235', 'jaqueline79', '$2y$10$uQaLJMPVUyaywgGdbHhGlOMfVvrGa2f8HSgufUvaO3ROYPPJQ3JZy', '2000-01-09', 'Laki-Laki', '1999-01-14', 'Menikah', '16231 Glover Crossing Apt. 443\nFramichester, MD 82520-5216', '3', '9', '5', '3', '2', '84', '3', '4', 'admin', 1, NULL, NULL, '2024-05-26 07:55:49', '2024-05-26 07:55:49'),
(158, 'Izaiah Runolfsson', ' ', 'vkerluke@example.net', '+1 (320) 368-7341', 'horace.altenwerth', '$2y$10$/V0hwRab5k1tcJrF2qcrNuXM5kmqnq1N.RCdZFMVwHRBumg8do4hm', '1973-04-23', 'Perempuan', '1997-05-07', 'Menikah', '2329 Raynor Orchard\nTurcotteport, CT 75453-1699', '9', '0', '6', '1', '6', '69', '1', '0', 'admin', 2, NULL, NULL, '2024-05-26 07:55:50', '2024-05-26 07:55:50'),
(159, 'Mr. Mackenzie Stokes', ' ', 'loyce19@example.com', '+1-713-564-0307', 'brook.leuschke', '$2y$10$Uue57KMdjEw/qzMOW2abgeP74Jftq/emZn35qMmGxTJoUyyqdFCKC', '1996-12-16', 'Laki-Laki', '1987-10-23', 'Menikah', '91451 Bertram Dam Suite 576\nOrtizview, MS 44702-6299', '8', '9', '4', '7', '3', '83', '4', '4', 'user', 2, NULL, NULL, '2024-05-26 07:55:50', '2024-05-26 07:55:50'),
(160, 'Veronica Green', ' ', 'lela99@example.com', '1-847-394-6304', 'kshlerin.kaleigh', '$2y$10$FtkKNQgCYjUogyPozsH0TeUXkKDJ6phdpJoUGjqtItQbLZKU6iJ1.', '1977-02-12', 'Laki-Laki', '1981-06-28', 'Menikah', '7704 Glen Inlet Apt. 794\nKundeview, SC 75596', '7', '0', '3', '4', '4', '14', '1', '2', 'user', 5, NULL, NULL, '2024-05-26 07:55:50', '2024-05-26 07:55:50'),
(161, 'Dr. Thomas Beer Sr.', ' ', 'heller.elisa@example.org', '1-931-834-9858', 'richmond28', '$2y$10$Z/.RxUyIjDoC5yVNfYAbNOx0EXc7tuR4eQEUvlZXYLW5oueudO46a', '2020-08-03', 'Laki-Laki', '1993-12-18', 'Lajang', '7591 Williamson Parkways\nChelseahaven, NM 27653', '5', '3', '4', '0', '2', '52', '4', '5', 'admin', 5, NULL, NULL, '2024-05-26 07:55:50', '2024-05-26 07:55:50'),
(162, 'Mr. Melany Jerde I', ' ', 'michel.roob@example.org', '952.212.4821', 'macey97', '$2y$10$xtfQ78SHboE5RzQOvzO0EeiKinLulXYlnYra7yXfG.pygn4awk2VK', '1971-03-23', 'Perempuan', '1976-12-24', 'Lajang', '29398 Stan Port\nNew Serenitybury, WA 16579', '7', '5', '6', '1', '8', '45', '0', '1', 'admin', 5, NULL, NULL, '2024-05-26 07:55:50', '2024-05-26 07:55:50'),
(163, 'Mathilde Watsica', ' ', 'jeanie32@example.net', '(341) 950-1090', 'reichert.sienna', '$2y$10$Yfi4xlBmJdDsiXJ/z8vtd.LG8Ock/5eCxPnERerMXX8a5cESgDSm2', '1991-01-07', 'Perempuan', '1995-01-28', 'Menikah', '462 Hayes Unions\nBruenfurt, SD 21596', '7', '10', '0', '4', '8', '67', '3', '3', 'user', 5, NULL, NULL, '2024-05-26 07:55:50', '2024-05-26 07:55:50'),
(164, 'Prof. Rory Langosh I', ' ', 'alisha20@example.org', '+1-385-542-1509', 'modesto.kessler', '$2y$10$zArXHa3IXocTO68.NnBPYuSOrSOcrzgbZswUMeIRJJbzNILbLddD.', '2022-03-10', 'Perempuan', '2006-08-23', 'Menikah', '8343 Kertzmann Light\nPourostown, LA 63487', '9', '7', '0', '0', '8', '27', '0', '4', 'admin', 1, NULL, NULL, '2024-05-26 07:55:50', '2024-05-26 07:55:50'),
(165, 'Prof. Travon Kuhn', ' ', 'jedediah83@example.org', '931-717-8776', 'cwalsh', '$2y$10$SUgpB33ChY4t9jpkCLTor./CtzHK8AhVEngTOz5Fmi6Oy9St.Jcaa', '1982-11-16', 'Laki-Laki', '1986-05-02', 'Lajang', '12124 Reinger Lock\nSouth Liam, IL 80532-1178', '0', '3', '7', '10', '5', '29', '0', '2', 'user', 4, NULL, NULL, '2024-05-26 07:55:50', '2024-05-26 07:55:50'),
(166, 'Jackson Hills', ' ', 'gutkowski.payton@example.com', '(585) 904-1563', 'alvena12', '$2y$10$yTbJLdIdCigWkGd0Yt5VJ.XHJCiBXDzCl4roDjVV9AMxD7kqEXk0m', '2017-08-02', 'Laki-Laki', '1995-03-30', 'Lajang', '2846 McDermott Center Apt. 747\nNew Susie, NY 06047', '2', '1', '7', '3', '6', '39', '0', '0', 'user', 2, NULL, NULL, '2024-05-26 07:55:51', '2024-05-26 07:55:51'),
(167, 'Brock Murray', ' ', 'emory02@example.com', '1-385-398-6158', 'jaquelin.ondricka', '$2y$10$w8m7FnlC00rJ3RDFy0bbGe5YD6aE3GeAug3dNfIqFEsA1qfGeAY0.', '1971-03-21', 'Perempuan', '1973-03-21', 'Lajang', '84631 Helene Inlet Suite 850\nNorth Andrew, AZ 33486-9987', '8', '9', '0', '9', '6', '26', '4', '3', 'admin', 4, NULL, NULL, '2024-05-26 07:55:51', '2024-05-26 07:55:51'),
(168, 'Prof. Kole Little', ' ', 'west.blanca@example.net', '541-667-2256', 'altenwerth.victoria', '$2y$10$p4zF1HbDB4AaKzPdBM5jUeI9VWyzm3qHFWXPQbLP6hsaNdKJA.4Yq', '2010-01-03', 'Laki-Laki', '1981-10-17', 'Lajang', '1392 Nitzsche Mews\nGusikowskiview, OH 94534', '3', '10', '9', '2', '3', '51', '2', '1', 'admin', 2, NULL, NULL, '2024-05-26 07:55:51', '2024-05-26 07:55:51'),
(169, 'Jane Cronin', ' ', 'mills.eloisa@example.org', '1-843-539-8043', 'lelia.ullrich', '$2y$10$/dX5cWBpoM.XUBIXwaFl7e9AZCQS82co/iaNRYK2P8AZX1h1V8MgO', '1991-11-20', 'Perempuan', '2001-01-20', 'Menikah', '7458 Schinner Trace\nNew Carmelafurt, CT 61520-9212', '2', '1', '1', '6', '7', '40', '1', '0', 'admin', 5, NULL, NULL, '2024-05-26 07:55:51', '2024-05-26 07:55:51'),
(170, 'Tatyana Stroman', ' ', 'nikolaus.hadley@example.com', '+1.480.945.8892', 'berta51', '$2y$10$TiCIecMWgECf0UO4SbpYqeG3grS6m2hg2v740yXiaTtr3NAGxUmKC', '2012-06-17', 'Laki-Laki', '1995-02-25', 'Lajang', '833 Bud Mountain\nPort Elissafort, ND 51758', '4', '3', '2', '2', '1', '19', '3', '5', 'user', 1, NULL, NULL, '2024-05-26 07:55:51', '2024-05-26 07:55:51'),
(171, 'Patsy Heaney', ' ', 'larissa.block@example.net', '+1-845-450-8246', 'howell.litzy', '$2y$10$tGbJsinBKMyhr1Ppq.iPr.iXQJaAInAeyHT5VYnyjaLZYQWvuno9u', '1991-08-04', 'Laki-Laki', '1994-06-07', 'Menikah', '60456 Ron Row\nEast Rachaelbury, WA 73461', '5', '1', '9', '6', '6', '17', '3', '3', 'admin', 2, NULL, NULL, '2024-05-26 07:55:51', '2024-05-26 07:55:51'),
(172, 'Nathanial Kutch', ' ', 'sbechtelar@example.org', '+1-228-751-9994', 'shakira.swaniawski', '$2y$10$cPBn/nTaNs.ZFs/AElrHZu4Dlisyy1DiGiShzFfGGlK9FIYvwsVNK', '1980-05-22', 'Laki-Laki', '1998-02-03', 'Menikah', '40570 Waelchi Island\nPort Jayda, IN 97894', '3', '9', '2', '2', '6', '87', '1', '2', 'admin', 4, NULL, NULL, '2024-05-26 07:55:51', '2024-05-26 07:55:51'),
(173, 'Prof. Carlie VonRueden IV', ' ', 'pierce.hills@example.org', '620-309-6175', 'emily.harber', '$2y$10$Hz2WjccTMg.pyW8.amM.4OQzUWs57keonT6lRwrH06ISMikiMbYS6', '2016-07-05', 'Laki-Laki', '1984-09-28', 'Lajang', '72819 Monique Fort\nDevonside, MN 72110-1405', '0', '6', '7', '3', '3', '57', '4', '2', 'admin', 1, NULL, NULL, '2024-05-26 07:55:51', '2024-05-26 07:55:51'),
(174, 'Aileen Jaskolski II', ' ', 'ukassulke@example.com', '(240) 202-9204', 'dandre.kiehn', '$2y$10$RDRBzoPrNHWoWjcMDXyDbOfpcNh5smZsK9/iMU//E7iQx5KliICtq', '2024-01-08', 'Laki-Laki', '2024-02-26', 'Menikah', '668 Kirlin Mountain\nPadbergfurt, MT 55682-2040', '1', '3', '9', '0', '1', '40', '5', '3', 'admin', 3, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(175, 'Branson Paucek II', ' ', 'ewill@example.com', '1-725-813-1623', 'cody.beier', '$2y$10$yLTYFmcMNKVZ.LHXKM4xX.ySwPSXBTDvmLiOcsn0M/nmMA4Edteou', '2002-09-27', 'Laki-Laki', '1976-01-07', 'Lajang', '450 Pink Extensions Suite 223\nMorarhaven, OR 77015', '9', '9', '10', '9', '1', '58', '2', '1', 'admin', 3, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(176, 'Mack Hegmann IV', ' ', 'jleuschke@example.org', '667.569.2492', 'jackie22', '$2y$10$0S944szP6EEZbOTlRXtJyeAb5wlGFUp4FuhXrkhW3tfhigq8t0QFO', '1985-07-03', 'Laki-Laki', '1984-04-17', 'Menikah', '97962 Stanton Loaf Apt. 155\nLucindashire, HI 49170-0378', '5', '6', '7', '10', '4', '3', '2', '0', 'admin', 4, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(177, 'Adaline Marquardt', ' ', 'florian.oberbrunner@example.org', '+1-220-834-5495', 'adrain41', '$2y$10$EiS2s/HK1UdqgUD/fSfE7eDrSmWq2LyL2Niz/cLFoC3Mt/IyD7Wc2', '2006-09-12', 'Perempuan', '1992-07-18', 'Lajang', '82976 Rowe Groves Apt. 028\nHadleyview, NM 37810-9729', '7', '5', '7', '6', '9', '67', '3', '4', 'admin', 1, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(178, 'Prof. Brayan Botsford', ' ', 'imaggio@example.net', '618-996-4184', 'kaycee.becker', '$2y$10$HRfvYy75Gwb0tft5lyuP1O9VROKqFqWA7UqMFWQw9KhI.2tDZ2pQy', '2001-04-11', 'Laki-Laki', '2005-06-09', 'Menikah', '2523 Gleason Springs Suite 306\nGerholdfurt, UT 04177-8090', '3', '2', '0', '1', '1', '39', '4', '1', 'user', 3, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(179, 'Miss Thelma Sipes PhD', ' ', 'emelia69@example.net', '1-720-753-7516', 'kuphal.verner', '$2y$10$iX5aQLd8OAGQzuNEewCksOAXYlH2Z7nbVQT/4n669ol64puJ8sJum', '2001-03-13', 'Perempuan', '2003-03-14', 'Lajang', '10509 Bryce Forks Apt. 569\nBruenfort, HI 18691', '6', '1', '7', '8', '8', '55', '5', '4', 'user', 3, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(180, 'Jennie Kassulke', ' ', 'genoveva16@example.com', '(539) 540-4599', 'mraz.aleen', '$2y$10$SgHtMZ7JwjVGmAYVdzvcMezt6WMGFcGmUH4cQjVc5ZQYSOOTROMPC', '1978-07-02', 'Perempuan', '2001-11-29', 'Menikah', '1172 Bessie Harbors\nWest Flavio, NC 13815-3588', '2', '1', '6', '2', '4', '74', '2', '0', 'admin', 4, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(181, 'Danyka Thiel', ' ', 'leonard51@example.org', '(541) 550-2816', 'tmclaughlin', '$2y$10$xU.SISwxUcaiamRzzgDTfe66wmuaVwYbCBj59U21UBaXD/B76vLp.', '1987-09-15', 'Laki-Laki', '2000-05-19', 'Lajang', '17609 Logan Course Suite 984\nVonRuedenshire, ND 04469', '4', '0', '6', '6', '0', '69', '1', '0', 'user', 3, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(182, 'Prof. Otto Stanton', ' ', 'ariel67@example.net', '+1-305-712-0396', 'litzy.boyle', '$2y$10$UbpRANfsPtkUVPAJq2gb5.tQL9ZMHIOUnevitGpoNOUczcPMrtqHC', '1976-07-14', 'Laki-Laki', '1974-04-04', 'Menikah', '7410 Vidal Road\nSouth Benjaminborough, IN 06471-6616', '10', '5', '8', '1', '6', '73', '4', '0', 'user', 2, NULL, NULL, '2024-05-26 07:55:52', '2024-05-26 07:55:52'),
(183, 'Rosalinda Turcotte', ' ', 'esteban27@example.com', '929-344-3640', 'wspencer', '$2y$10$8uIJxIv0ZBtFe9SWOylIEeqRpa2Dwez.3IC1A2X7J9pENqeJOBgMa', '2015-02-06', 'Laki-Laki', '2022-10-18', 'Menikah', '60188 Johnson Stravenue Apt. 099\nLake Sophia, SD 85819', '5', '4', '1', '0', '4', '46', '2', '1', 'user', 2, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(184, 'Miss Rachael Ratke', ' ', 'pink14@example.com', '+1-828-819-8120', 'qzulauf', '$2y$10$uceOEaLkQCxVLmlVRpZO4.3yPSWde4NZE.gOFPPUajTsjxrnT.s1y', '1976-02-01', 'Laki-Laki', '2013-02-12', 'Menikah', '98553 Wilkinson Loop\nWest Jordifort, MI 35881-1921', '1', '8', '1', '0', '8', '22', '2', '2', 'admin', 5, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(185, 'Kacey Bayer', ' ', 'al28@example.org', '283-267-1124', 'vergie.reynolds', '$2y$10$9y97iu9R/hIt8gjNBwqJPOjXN7KD1U9OyksLf4MXxAsZpP4q9ohvq', '2007-05-27', 'Perempuan', '1983-08-29', 'Lajang', '6167 Christelle View\nEast Evertfort, MS 00676-0934', '3', '1', '9', '8', '9', '6', '4', '2', 'user', 2, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(186, 'Rudolph Hickle MD', ' ', 'bayer.garrison@example.org', '1-757-776-4417', 'belle.emmerich', '$2y$10$EgZxp81aIMiYl/qmqrRzp.iGLlPUdHxRLP91Ll1zNSNPCVWc85e9m', '2002-12-22', 'Laki-Laki', '1972-03-16', 'Menikah', '510 Little Forge Suite 757\nPort Ruth, WI 49404', '1', '4', '10', '1', '10', '0', '5', '4', 'user', 3, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(187, 'Dr. Jeanette Ondricka', ' ', 'nschneider@example.com', '+1-470-888-3003', 'kuphal.natalie', '$2y$10$KxzhI990jqIskMy42JkcUOO.HWhEubzUrQB7VPxVNn.25HR55bwya', '2015-12-15', 'Laki-Laki', '2007-09-16', 'Lajang', '3972 Mohr Creek Apt. 543\nLake Rollinchester, ND 89878', '0', '5', '6', '8', '0', '45', '5', '2', 'user', 2, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(188, 'Vidal Lebsack', ' ', 'percy41@example.org', '+17373417217', 'priscilla55', '$2y$10$hNvhEns2KSol2wwUZ6bpaerXWVOypZj.HVOI.W9Tpmkdnusenno1u', '2007-01-20', 'Laki-Laki', '2002-08-26', 'Lajang', '39290 Runolfsdottir Park Suite 904\nEast Aliland, NC 58833-7917', '4', '6', '9', '6', '2', '15', '1', '1', 'user', 4, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(189, 'Hildegard Jakubowski V', ' ', 'monahan.ena@example.org', '864.581.5965', 'gsimonis', '$2y$10$zNrUkAXZXdhfAPQK6Wmn1OosHBlNP3/TniX7m9E7GSRZi7Wh1I5qO', '1978-10-13', 'Perempuan', '2004-08-22', 'Lajang', '59292 Jennings Locks\nLake Nicoshire, VT 21533', '5', '0', '8', '6', '3', '22', '1', '0', 'user', 2, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(190, 'Shayna Orn', ' ', 'keely.schmeler@example.com', '320-310-8903', 'jeromy09', '$2y$10$kTxHuhMLQuXlv.AkQCymoufX3v8I716A7I1ikew3VHzJeJvToUPbO', '1977-04-20', 'Laki-Laki', '1977-03-30', 'Menikah', '76490 Jakubowski Lake\nNew Carolynfurt, CT 84370', '8', '9', '6', '3', '2', '1', '1', '3', 'admin', 4, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(191, 'Mossie Wolff Jr.', ' ', 'filomena.kuhic@example.org', '1-283-949-6360', 'burnice.okeefe', '$2y$10$RUZCGRrwRYnkdHVhFva4ZOKuy3yAji8tDHYMiEhdEtAcUiYHae/oO', '2002-11-04', 'Perempuan', '2021-07-14', 'Lajang', '8498 Nitzsche Mews Apt. 492\nBertramton, CT 98191-5395', '4', '6', '0', '3', '4', '49', '1', '2', 'user', 5, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(192, 'Prof. Destin Balistreri DDS', ' ', 'funk.audra@example.com', '+1.785.718.1331', 'lhegmann', '$2y$10$Mt2DMsyhCqUYVSdPlK355.OroyC2H.gW.dvvjjSjynsnIpz1JgC8G', '1983-09-21', 'Laki-Laki', '1990-06-11', 'Menikah', '389 Hulda Manor\nNorth Normafort, MA 23871', '10', '7', '2', '8', '0', '30', '0', '2', 'user', 1, NULL, NULL, '2024-05-26 07:55:53', '2024-05-26 07:55:53'),
(193, 'Augustus Kassulke', ' ', 'cvonrueden@example.net', '+1-210-613-0002', 'igulgowski', '$2y$10$dOStg03dDV0kU4YnUV2vWuZlSr7Mc.yYXcJYKXv3C3IUzbpk4IXJS', '2009-08-13', 'Perempuan', '2010-06-02', 'Menikah', '732 Jenkins Road\nLarsonfurt, MO 46980-5123', '6', '7', '10', '8', '0', '54', '5', '0', 'user', 3, NULL, NULL, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(194, 'Hank Lueilwitz', ' ', 'omari.waters@example.com', '(720) 474-4120', 'josianne93', '$2y$10$b46KYuuQUeBl9o0naFtsJO72YDBx3YJPZqzky1ajyG47WI6QhEa1.', '2007-12-20', 'Laki-Laki', '1998-03-02', 'Lajang', '97498 Lang Hill\nNew Isaacshire, MI 39751', '1', '3', '6', '8', '9', '24', '5', '3', 'admin', 3, NULL, NULL, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(195, 'Waldo Stoltenberg Sr.', ' ', 'opouros@example.com', '+1 (516) 597-7321', 'macie.hilpert', '$2y$10$lqcUi55EOa.xdjA61TkAr.IjWh2krYFU8ZNOGEa9ZCrqI5sswK4iG', '2022-05-22', 'Laki-Laki', '2012-07-27', 'Lajang', '27246 Jaydon Rapid\nPort Devan, HI 80388', '3', '7', '1', '1', '2', '40', '1', '2', 'admin', 5, NULL, NULL, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(196, 'Henderson Kirlin', ' ', 'brannon.weissnat@example.net', '479.438.1199', 'braden.watsica', '$2y$10$OT3tJ/.VaWYx8LRKhtaCeOlHKobVK02jsZ6SNbFiRm0pve6wjGnQS', '2015-07-13', 'Perempuan', '2003-11-12', 'Lajang', '4509 Cassie Parkways\nNorth Dorian, MN 84381-9864', '4', '10', '6', '10', '1', '52', '3', '5', 'admin', 1, NULL, NULL, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(197, 'Prof. Rickie Graham III', ' ', 'arlo17@example.net', '+12816305643', 'marvin.eunice', '$2y$10$XfJlVA0bdRsvxnTbkMCDceBMlaJ3MPAtzZ7mCqFBHmvAss2Kh2srO', '1991-09-18', 'Perempuan', '2021-09-18', 'Menikah', '5287 Schmitt Harbors Suite 457\nNorth Valentinaland, NY 98568', '10', '4', '9', '1', '4', '78', '1', '1', 'admin', 4, NULL, NULL, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(198, 'Ms. Stephania Luettgen', ' ', 'auer.sandy@example.net', '+15204839006', 'acole', '$2y$10$IfT7osgYgidBXqo1lfVPSelGCQdw/dDIxjoKxInrXFsZZuwie1oNy', '1999-09-12', 'Perempuan', '2015-08-01', 'Lajang', '868 Sebastian Causeway Apt. 598\nSouth Jimmie, UT 92002', '4', '7', '1', '4', '2', '23', '0', '0', 'user', 2, NULL, NULL, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(199, 'Malachi Gaylord', ' ', 'eliane.tremblay@example.com', '(252) 472-8188', 'fay.johnson', '$2y$10$TCngcoD4yznRwKUuRk5OmepenTorodc7h92wYJbVUnKMsxMu/35b6', '1998-01-30', 'Perempuan', '2004-11-23', 'Menikah', '658 Braxton Points Suite 712\nLake Guyton, IL 90843', '0', '0', '1', '6', '3', '61', '1', '2', 'admin', 1, NULL, NULL, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
(200, 'Merritt Schumm', ' ', 'graham.jesse@example.net', '+1-641-210-9202', 'mackenzie86', '$2y$10$wlMcQJSbRF2HgbpWmxAkVOb7H3YYeYZPgsyCUJC7EqPr/QEndwF66', '2014-05-12', 'Laki-Laki', '1986-05-19', 'Lajang', '13329 Wehner Freeway Apt. 122\nPort Delaney, AL 22554-8670', '8', '10', '1', '1', '9', '59', '4', '1', 'admin', 4, NULL, NULL, '2024-05-26 07:55:54', '2024-05-26 07:55:54'),
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
(810076, 'SRI SAMSIATI', NULL, 'sauer.bethany@example.org', '802-523-8179', 'tyree99', '$2y$10$EvhJr1qXzdFUFYGAUzJDgequAEeHTgGWydbpq3P1d7HKsD/MCaDNq', '1983-06-23', 'Laki-Laki', '1990-02-20', 'Menikah', '681 Trace Path Apt. 185 Brandiside, IA 09481', '2', '8', '3', '6', '3', '30', '2', '0', 'admin', 4, NULL, NULL, '2024-04-23 02:20:39', '2024-04-23 02:20:39');
INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `jabatan_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
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
(810228, 'SYIFA\'UL QULUB', NULL, 'vincent.adams@example.net', '(857) 543-8921', 'icorwin', '$2y$10$bDBKISmCDMl8UlCfbIKpZOtJm6Tbi6z2d3sUuGzVq.VhtfoKvrVoa', '2021-04-28', 'Laki-Laki', '2012-02-16', 'Lajang', '2374 Weber Key Borerborough, MT 78110-7018', '4', '2', '8', '5', '8', '62', '5', '5', 'admin', 2, NULL, NULL, '2024-04-23 02:20:51', '2024-04-23 02:20:51'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
