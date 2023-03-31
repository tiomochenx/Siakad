-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2023 pada 20.18
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakad`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) UNSIGNED NOT NULL,
  `kode_dosen` varchar(20) NOT NULL,
  `nidn` int(20) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `foto_dosen` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `kode_dosen`, `nidn`, `nama_dosen`, `foto_dosen`, `password`) VALUES
(1, 'dsn-1', 10001, 'ujang', '', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e'),
(2, 'DSN212', 10002, 'AHMAD FIKRI FAJRI', '1635444800_87df50d191ebcbfeedff.png', '8cb2237d0679ca88db6464eac60da96345513964');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) UNSIGNED NOT NULL,
  `fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `fakultas`) VALUES
(1, 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gedung`
--

CREATE TABLE `gedung` (
  `id_gedung` int(11) UNSIGNED NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `gedung`
--

INSERT INTO `gedung` (`id_gedung`, `gedung`) VALUES
(1, 'Gedung H');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gurus`
--

CREATE TABLE `gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mengajar` varchar(255) DEFAULT NULL,
  `kelas` int(11) NOT NULL DEFAULT 7,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) UNSIGNED NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `id_ruangan` int(10) DEFAULT NULL,
  `quota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_prodi`, `id_ta`, `id_kelas`, `id_matkul`, `id_dosen`, `hari`, `waktu`, `id_ruangan`, `quota`) VALUES
(1, 1, 1, 1, 2, 1, 'Senin', '14.00', 1, 20),
(2, 1, 1, 1, 3, 2, 'Selasa', '13.00-14.00', 1, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) UNSIGNED NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `tahun_angkatan` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_prodi`, `id_dosen`, `tahun_angkatan`) VALUES
(1, 'A', 1, 1, 2019),
(2, 'A', 1, 2, 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) UNSIGNED NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `p1` int(1) DEFAULT NULL,
  `p2` int(1) DEFAULT NULL,
  `p3` int(1) DEFAULT NULL,
  `p4` int(1) DEFAULT NULL,
  `p5` int(1) DEFAULT NULL,
  `p6` int(1) DEFAULT NULL,
  `p7` int(1) DEFAULT NULL,
  `p8` int(1) DEFAULT NULL,
  `p9` int(1) DEFAULT NULL,
  `p10` int(1) DEFAULT NULL,
  `p11` int(1) DEFAULT NULL,
  `p12` int(1) DEFAULT NULL,
  `p13` int(1) DEFAULT NULL,
  `p14` int(1) DEFAULT NULL,
  `p15` int(1) DEFAULT NULL,
  `p16` int(1) DEFAULT NULL,
  `p17` int(1) DEFAULT NULL,
  `p18` int(1) DEFAULT NULL,
  `nilai_absen` int(11) DEFAULT 0,
  `nilai_tugas` int(11) DEFAULT 0,
  `nilai_uts` int(11) DEFAULT 0,
  `nilai_uas` int(11) DEFAULT 0,
  `nilai_akhir` int(11) DEFAULT 0,
  `nilai_huruf` varchar(11) DEFAULT '-',
  `bobot` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id_krs`, `id_mhs`, `id_jadwal`, `id_ta`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `nilai_absen`, `nilai_tugas`, `nilai_uts`, `nilai_uas`, `nilai_akhir`, `nilai_huruf`, `bobot`) VALUES
(1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, '-', 0),
(3, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 97, 14, 25, 35, 3, 'A', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) UNSIGNED NOT NULL,
  `nim` int(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `id_prodi` int(10) NOT NULL,
  `foto_mhs` varchar(255) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nim`, `password`, `nama_mhs`, `id_prodi`, `foto_mhs`, `id_kelas`) VALUES
(1, 1910062, '8cb2237d0679ca88db6464eac60da96345513964', 'tio apriyandi', 1, '1635444732_5a5040d4299f7ffa027a.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) UNSIGNED NOT NULL,
  `kode_matkul` varchar(20) NOT NULL,
  `matkul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `smt` int(11) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `kode_matkul`, `matkul`, `sks`, `kategori`, `smt`, `semester`, `id_prodi`) VALUES
(2, 'MTK-01', 'web2', 2, 'Wajib', 5, 'Ganjil', 1),
(3, 'MTK-02', 'Client Server', 2, 'Wajib', 5, 'Ganjil', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matpels`
--

CREATE TABLE `matpels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_matpel` varchar(255) NOT NULL,
  `matpel` varchar(255) NOT NULL,
  `kelas` int(11) NOT NULL DEFAULT 7,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `matpels`
--

INSERT INTO `matpels` (`id`, `kode_matpel`, `matpel`, `kelas`, `created_at`, `updated_at`) VALUES
(1, 'PAI-I', 'Pendidikan Agama Islam', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(2, 'PKN-I', 'Pendidikan Kewarganegaraan', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(3, 'BIND-I', 'Bahasa Indonesia', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(4, 'BING-I', 'Bahasa Inggris', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(5, 'MTK-I', 'Matematika', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(6, 'IPA-I', 'Ilmu Pengetahuan Alam', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(7, 'IPS-I', 'Ilmu Pengetahuan Sosial', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(8, 'SB-I', 'Seni dan Budaya', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(9, 'PJOK-I', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(10, 'TAHSIN-I', 'Tahfizh Tahsin Quran', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(11, 'TIK-I', 'Teknologi Informasi dan Komunikasi', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(12, 'BSUN-I', 'Bahasa dan Sastra Sunda', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(13, 'PLH-I', 'Prakarya', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(14, 'B.ARAB-I', 'Bahasa Arab', 7, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(15, 'PAI-II', 'Pendidikan Agama Islam', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(16, 'PKN-II', 'Pendidikan Kewarganegaraan', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(17, 'BIND-II', 'Bahasa Indonesia', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(18, 'BING-II', 'Bahasa Inggris', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(19, 'MTK-II', 'Matematika', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(20, 'IPA-II', 'Ilmu Pengetahuan Alam', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(21, 'IPS-II', 'Ilmu Pengetahuan Sosial', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(22, 'SB-II', 'Seni dan Budaya', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(23, 'PJOK-II', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(24, 'TAHSIN-II', 'Tahfizh Tahsin Quran', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(25, 'TIK-II', 'Teknologi Informasi dan Komunikasi', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(26, 'BSUN-II', 'Bahasa dan Sastra Sunda', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(27, 'PLH-II', 'Prakarya', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(28, 'B.ARAB-II', 'Bahasa Arab', 8, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(29, 'PAI-III', 'Pendidikan Agama Islam', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(30, 'PKN-III', 'Pendidikan Kewarganegaraan', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(31, 'BIND-III', 'Bahasa Indonesia', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(32, 'BING-III', 'Bahasa Inggris', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(33, 'MTK-III', 'Matematika', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(34, 'IPA-III', 'Ilmu Pengetahuan Alam', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(35, 'IPS-III', 'Ilmu Pengetahuan Sosial', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(36, 'SB-III', 'Seni dan Budaya', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(37, 'PJOK-III', 'Pendidikan Jasmani, Olahraga dan Kesehatan', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(38, 'TAHSIN-III', 'Tahfizh Tahsin Quran', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(39, 'TIK-III', 'Teknologi Informasi dan Komunikasi', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(40, 'BSUN-III', 'Bahasa dan Sastra Sunda', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(41, 'PLH-III', 'Prakarya', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(42, 'B.ARAB-III', 'Bahasa Arab', 9, '2023-03-09 11:55:57', '2023-03-09 11:55:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-05-081938', 'App\\Database\\Migrations\\User', 'default', 'App', 1635270104, 1),
(2, '2020-12-05-144330', 'App\\Database\\Migrations\\Fakultas', 'default', 'App', 1635270104, 1),
(3, '2020-12-06-132505', 'App\\Database\\Migrations\\Gedung', 'default', 'App', 1635270104, 1),
(4, '2020-12-06-143415', 'App\\Database\\Migrations\\Ruangan', 'default', 'App', 1635270105, 1),
(5, '2020-12-07-095718', 'App\\Database\\Migrations\\Prodi', 'default', 'App', 1635270105, 1),
(6, '2020-12-07-113659', 'App\\Database\\Migrations\\TahunAkademik', 'default', 'App', 1635270105, 1),
(7, '2020-12-07-133637', 'App\\Database\\Migrations\\Matkul', 'default', 'App', 1635270105, 1),
(8, '2020-12-12-125936', 'App\\Database\\Migrations\\Dosen', 'default', 'App', 1635270105, 1),
(9, '2020-12-12-140522', 'App\\Database\\Migrations\\Mahasiswa', 'default', 'App', 1635270105, 1),
(10, '2020-12-13-142258', 'App\\Database\\Migrations\\Kelas', 'default', 'App', 1635270105, 1),
(11, '2020-12-18-134706', 'App\\Database\\Migrations\\Jadwal', 'default', 'App', 1635270105, 1),
(12, '2020-12-22-064433', 'App\\Database\\Migrations\\Krs', 'default', 'App', 1635270105, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilais`
--

CREATE TABLE `nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_matpel` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `kelas` int(11) NOT NULL DEFAULT 7,
  `h1` double(8,2) UNSIGNED DEFAULT NULL,
  `h2` double(8,2) UNSIGNED DEFAULT NULL,
  `h3` double(8,2) UNSIGNED DEFAULT NULL,
  `h4` double(8,2) UNSIGNED DEFAULT NULL,
  `h5` double(8,2) UNSIGNED DEFAULT NULL,
  `h6` double(8,2) UNSIGNED DEFAULT NULL,
  `h7` double(8,2) UNSIGNED DEFAULT NULL,
  `h8` double(8,2) UNSIGNED DEFAULT NULL,
  `hph` double(8,2) UNSIGNED DEFAULT NULL,
  `hpts` double(8,2) UNSIGNED DEFAULT NULL,
  `hpas` double(8,2) UNSIGNED DEFAULT NULL,
  `hpa` double(8,2) UNSIGNED DEFAULT NULL,
  `predikat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilais`
--

INSERT INTO `nilais` (`id`, `kode_matpel`, `nis`, `semester`, `kelas`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`, `hph`, `hpts`, `hpas`, `hpa`, `predikat`, `created_at`, `updated_at`) VALUES
(1, 'PAI-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(2, 'PKN-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(3, 'BIND-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(4, 'BING-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(5, 'MTK-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(6, 'IPA-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(7, 'IPS-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(8, 'SB-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(9, 'PJOK-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(10, 'TAHSIN-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(11, 'TIK-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(12, 'BSUN-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(13, 'PLH-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(14, 'B.ARAB-II', '310174', '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(15, 'PAI-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(16, 'PKN-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(17, 'BIND-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(18, 'BING-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(19, 'MTK-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(20, 'IPA-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(21, 'IPS-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(22, 'SB-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(23, 'PJOK-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(24, 'TAHSIN-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(25, 'TIK-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(26, 'BSUN-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(27, 'PLH-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01'),
(28, 'B.ARAB-II', '310174', '2', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 12:00:01', '2023-03-09 12:00:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kkms`
--

CREATE TABLE `nilai_kkms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_matpel` varchar(255) NOT NULL,
  `kkm` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) UNSIGNED NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `kode_prodi` varchar(20) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `jenjang` varchar(50) NOT NULL,
  `ketua_prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `id_fakultas`, `kode_prodi`, `prodi`, `jenjang`, `ketua_prodi`) VALUES
(1, 1, 'SI-2021', 'Sistem Informasi', 'S1', 'ujang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` int(11) UNSIGNED NOT NULL,
  `id_gedung` int(11) NOT NULL,
  `ruangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `id_gedung`, `ruangan`) VALUES
(1, 1, 'H-1-6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` int(11) NOT NULL DEFAULT 7,
  `jenis_kelamin` varchar(255) NOT NULL DEFAULT 'laki-laki',
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `golongan_darah` varchar(255) NOT NULL DEFAULT 'A',
  `alamat` varchar(255) DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `nis`, `nama`, `kelas`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `golongan_darah`, `alamat`, `tinggi_badan`, `berat_badan`, `nama_ayah`, `nama_ibu`, `created_at`, `updated_at`) VALUES
(1, 310169, 'Brisa Jodie', 7, 'perempuan', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(2, 310170, 'Isyana Sarasvati', 7, 'perempuan', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(3, 310171, 'Atta Halilintar', 7, 'laki-laki', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(4, 310172, 'Ardhito Pramono', 7, 'laki-laki', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(5, 310173, 'Marion Jola', 7, 'perempuan', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(6, 310174, 'Anya Geraldine', 8, 'perempuan', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(7, 310175, 'Chandra Liow', 8, 'laki-laki', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(8, 310176, 'Qory Gore', 8, 'laki-laki', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(9, 310177, 'David Beat', 8, 'laki-laki', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(10, 310178, 'Remi Mutiara', 8, 'perempuan', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(11, 310179, 'Kristina Anggun', 9, 'perempuan', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(12, 310180, 'Reza Oktovian', 9, 'laki-laki', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(13, 310181, 'Lucas Grabeel', 9, 'laki-laki', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(14, 310182, 'James Marriot', 9, 'laki-laki', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(15, 310183, 'Charli Amelio', 9, 'perempuan', '21 Agustus 1999', 'Tangerang', 'A', 'Jalan Taman Baru', 157, 53, 'Kipli', 'Meilani', '2023-03-09 11:55:57', '2023-03-09 11:55:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `id_ta` int(11) UNSIGNED NOT NULL,
  `tahun_aka` varchar(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`id_ta`, `tahun_aka`, `semester`, `status`) VALUES
(1, '2021', 'Ganjil', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_user` varchar(255) NOT NULL,
  `role` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `foto_user`, `role`) VALUES
(1, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', 1),
(2, 'dosen', 'dosen', 'ce3eaa938d09504bae9458dffb805f2de7c9da4e', '1609323775_d956c024f2828c7a0875', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mengajar` varchar(255) DEFAULT NULL,
  `kelas` int(11) NOT NULL DEFAULT 7,
  `role` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mengajar`, `kelas`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@scb.ac.id', NULL, '$2y$10$NZoJHhQMEyxZwWO23t1J8urmDeloIiaOJJ2iMSNY2LYSCb.BQ2Mwa', NULL, 7, 1, NULL, '2023-03-09 11:55:57', '2023-03-09 11:55:57'),
(2, 'Merri Riana', 'meri@scb.ac.id', NULL, '$2y$10$F9NdZYufGC.Ga7Cwn3OmtObFo0n..k1nIfxBJO6.vLdLIsO08Dmp.', 'MTK-II', 8, 2, NULL, '2023-03-09 11:55:58', '2023-03-09 11:55:58'),
(3, 'Gordon Ramsey', 'gordon@scb.ac.id', NULL, '$2y$10$Z9M.cARLfW5H7VkJNAQwYuM8fnUPOADynMIgW4GxJtRdOP4cTL4/u', 'PKN-I', 7, 2, NULL, '2023-03-09 11:55:58', '2023-03-09 11:55:58'),
(4, 'Jerome Polin', 'jerome@scb.ac.id', NULL, '$2y$10$GWV4QCccIp6.oXfhYBD.kOM3C3jeYUwq0Dd2mHfN2qVc3VsbvyDHC', 'MTK-III', 9, 2, NULL, '2023-03-09 11:55:58', '2023-03-09 11:55:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indeks untuk tabel `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`id_gedung`);

--
-- Indeks untuk tabel `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indeks untuk tabel `matpels`
--
ALTER TABLE `matpels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matpels_kode_matpel_unique` (`kode_matpel`);

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
-- Indeks untuk tabel `nilai_kkms`
--
ALTER TABLE `nilai_kkms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nilai_kkms_kode_matpel_unique` (`kode_matpel`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswas_nis_unique` (`nis`);

--
-- Indeks untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `gedung`
--
ALTER TABLE `gedung`
  MODIFY `id_gedung` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id_matkul` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `matpels`
--
ALTER TABLE `matpels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `nilai_kkms`
--
ALTER TABLE `nilai_kkms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruangan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `id_ta` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
