-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 03 Mar 2023 pada 15.06
-- Versi server: 10.3.37-MariaDB-cll-lve
-- Versi PHP: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wstifdi1_libman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_favorit`
--

CREATE TABLE `buku_favorit` (
  `NIS` char(4) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `kd_buku` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku_favorit`
--

INSERT INTO `buku_favorit` (`NIS`, `nama_buku`, `kd_buku`) VALUES
('0909', 'Bahasa Inggris', 'BIG09000007'),
('0909', 'Bahasa Daerah', 'BDR07000001'),
('0909', 'Bahasa daerah', 'BDR07000002'),
('6666', 'Bahasa Daerah', 'BDR07000001'),
('1222', 'Bahasa Daerah', 'BDR07000001'),
('1222', 'Bahasa daerah', 'BDR07000002'),
('1222', 'Bahasa Inggris', 'BIG08000004'),
('6555', 'Bahasa Inggris', 'BIG08000007');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_admin`
--

CREATE TABLE `data_admin` (
  `id_admin` int(2) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_admin`
--

INSERT INTO `data_admin` (`id_admin`, `nama_admin`, `password`, `gambar`) VALUES
(1, 'admin', 'admin', 'img/admin/1.jpg'),
(2, 'Budi', '123456', 'img/admin/2.jpg'),
(3, 'jeni', '123456', 'img/admin/3.jpg'),
(4, 'sendy', '123456', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buku`
--

CREATE TABLE `data_buku` (
  `kd_buku` varchar(20) NOT NULL,
  `jenis_buku` varchar(50) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `semester` enum('1','2','1 & 2') DEFAULT NULL,
  `tingkatan` enum('VII','VIII','IX') DEFAULT NULL,
  `jumlah` tinyint(1) NOT NULL,
  `gambar` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_buku`
--

INSERT INTO `data_buku` (`kd_buku`, `jenis_buku`, `nama_buku`, `semester`, `tingkatan`, `jumlah`, `gambar`) VALUES
('BDR07000001', 'buku paket', 'Bahasa Daerah', '1 & 2', 'VII', 0, 'uploads/bukubhsdaerah.jpg'),
('BDR07000002', 'buku paket', 'Bahasa daerah', '1 & 2', 'VII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR07000003', 'buku paket', 'Bahasa daerah', '1 & 2', 'VII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR07000004', 'buku paket', 'Bahasa daerah', '1 & 2', 'VII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR07000005', 'buku paket', 'Bahasa Daerah', '1 & 2', 'VII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR07000006', 'buku paket', 'Bahasa daerah', '1 & 2', 'VII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR07000007', 'buku paket', 'Bahasa daerah', '1 & 2', 'VII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR07000008', 'buku paket', 'Bahasa daerah', '1 & 2', 'VII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR07000999', 'buku paket', 'Bahasa Inggris', '1', 'VII', 1, 'API/uploads/Bahasa DaerahVII1.jpg'),
('BDR08000001', 'buku paket', 'Bahasa Daerah', '1 & 2', 'VIII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR08000002', 'buku paket', 'Bahasa daerah', '1 & 2', 'VIII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR08000003', 'buku paket', 'Bahasa daerah', '1 & 2', 'VIII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR08000004', 'buku paket', 'Bahasa daerah', '1 & 2', 'VIII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR08000005', 'buku paket', 'Bahasa Daerah', '1 & 2', 'VIII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR08000006', 'buku paket', 'Bahasa daerah', '1 & 2', 'VIII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR08000007', 'buku paket', 'Bahasa daerah', '1 & 2', 'VIII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR08000008', 'buku paket', 'Bahasa daerah', '1 & 2', 'VIII', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR09000001', 'buku paket', 'Bahasa Daerah', '1 & 2', 'IX', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR09000002', 'buku paket', 'Bahasa daerah', '1 & 2', 'IX', 1, 'uploads/bukubhsdaerah.jpg'),
('BDR09000003', 'buku paket', 'Bahasa daerah', '1 & 2', 'IX', 1, 'uploads/bukubhsdaerah.jpg'),
('BIG07000002', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VII', 1, 'uploads/buku4.jpg'),
('BIG07000003', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VII', 1, 'uploads/buku4.jpg'),
('BIG07000004', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VII', 1, 'uploads/buku4.jpg'),
('BIG07000005', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VII', 1, 'uploads/buku4.jpg'),
('BIG07000006', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VII', 1, 'uploads/buku4.jpg'),
('BIG07000007', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VII', 1, 'uploads/buku4.jpg'),
('BIG07000008', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VII', 1, 'uploads/buku4.jpg'),
('BIG08000001', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VIII', 1, 'uploads/bukubing7.jpg'),
('BIG08000002', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VIII', 1, 'uploads/bukubing7.jpg'),
('BIG08000003', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VIII', 1, 'uploads/bukubing7.jpg'),
('BIG08000004', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VIII', 1, 'uploads/bukubing7.jpg'),
('BIG08000005', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VIII', 1, 'uploads/bukubing7.jpg'),
('BIG08000006', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VIII', 1, 'uploads/bukubing7.jpg'),
('BIG08000007', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VIII', 1, 'uploads/bukubing7.jpg'),
('BIG08000008', 'buku paket', 'Bahasa Inggris', '1 & 2', 'VIII', 1, 'uploads/bukubing7.jpg'),
('BIG09000001', 'buku paket', 'Bahasa Inggris', '1 & 2', 'IX', 1, 'uploads/bukubing7.jpg'),
('BIG09000002', 'buku paket', 'Bahasa Inggris', '1 & 2', 'IX', 1, 'uploads/bukubing7.jpg'),
('BIG09000003', 'buku paket', 'Bahasa Inggris', '1 & 2', 'IX', 1, 'uploads/bukubing7.jpg'),
('BIG09000004', 'buku paket', 'Bahasa Inggris', '1 & 2', 'IX', 1, 'uploads/bukubing7.jpg'),
('BIG09000005', 'buku paket', 'Bahasa Inggris', '1 & 2', 'IX', 1, 'uploads/bukubing7.jpg'),
('BIG09000006', 'buku paket', 'Bahasa Inggris', '1 & 2', 'IX', 1, 'uploads/bukubing7.jpg'),
('BIG09000007', 'buku paket', 'Bahasa Inggris', '1 & 2', 'IX', 1, 'uploads/bukubing7.jpg'),
('BIG09000008', 'buku paket', 'Bahasa Inggris', '1 & 2', 'IX', 1, 'uploads/bukubing7.jpg'),
('BIN07000001', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VII', 1, 'uploads/bukuindo.jpg'),
('BIN07000002', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VII', 1, 'uploads/bukuindo.jpg'),
('BIN07000003', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VII', 1, 'uploads/bukuindo.jpg'),
('BIN07000004', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VII', 1, 'uploads/bukuindo.jpg'),
('BIN07000005', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VII', 1, 'uploads/bukuindo.jpg'),
('BIN07000006', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VII', 1, 'uploads/bukuindo.jpg'),
('BIN07000007', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VII', 1, 'uploads/bukuindo.jpg'),
('BIN07000008', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VII', 1, 'uploads/bukuindo.jpg'),
('BIN08000001', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VIII', 1, 'uploads/bukuindo.jpg'),
('BIN08000002', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VIII', 1, 'uploads/bukuindo.jpg'),
('BIN08000003', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VIII', 1, 'uploads/bukuindo.jpg'),
('BIN08000004', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VIII', 1, 'uploads/bukuindo.jpg'),
('BIN08000005', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VIII', 1, 'uploads/bukuindo.jpg'),
('BIN08000006', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VIII', 1, 'uploads/bukuindo.jpg'),
('BIN08000007', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VIII', 1, 'uploads/bukuindo.jpg'),
('BIN08000008', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'VIII', 1, 'uploads/bukuindo.jpg'),
('BIN09000001', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'IX', 1, 'uploads/bukuindo.jpg'),
('BIN09000002', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'IX', 1, 'uploads/bukuindo.jpg'),
('BIN09000003', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'IX', 1, 'uploads/bukuindo.jpg'),
('BIN09000004', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'IX', 1, 'uploads/bukuindo.jpg'),
('BIN09000005', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'IX', 1, 'uploads/bukuindo.jpg'),
('BIN09000006', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'IX', 1, 'uploads/bukuindo.jpg'),
('BIN09000007', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'IX', 1, 'uploads/bukuindo.jpg'),
('BIN09000008', 'buku paket', 'Bahasa Indonesia', '1 & 2', 'IX', 1, 'uploads/bukuindo.jpg'),
('IPA07010001', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07010002', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07010003', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07010004', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07010005', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07010006', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07010007', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07010008', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07020001', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07020002', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07020003', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07020004', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07020005', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07020006', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07020007', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA07020008', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VII', 1, 'uploads/buku3.jpeg'),
('IPA08010001', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08010002', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08010003', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08010004', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08010005', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08010006', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08010007', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08010008', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08020001', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08020002', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08020003', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08020004', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08020005', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08020006', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08020007', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA08020008', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'VIII', 1, 'uploads/buku3.jpeg'),
('IPA09010001', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09010002', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09010003', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09010004', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09010005', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09010006', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09010007', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09010008', 'buku paket', 'Ilmu Pengetahuan Alam', '1', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09020001', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09020002', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09020003', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09020004', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09020005', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09020006', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09020007', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'IX', 1, 'uploads/buku3.jpeg'),
('IPA09020008', 'buku paket', 'Ilmu Pengetahuan Alam', '2', 'IX', 1, 'uploads/buku3.jpeg'),
('IPS07000001', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VII', 1, 'uploads/bukuips7.jpg'),
('IPS07000002', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VII', 1, 'uploads/bukuips7.jpg'),
('IPS07000003', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VII', 1, 'uploads/bukuips7.jpg'),
('IPS07000004', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VII', 1, 'uploads/bukuips7.jpg'),
('IPS07000005', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VII', 1, 'uploads/bukuips7.jpg'),
('IPS07000006', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VII', 1, 'uploads/bukuips7.jpg'),
('IPS07000007', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VII', 1, 'uploads/bukuips7.jpg'),
('IPS07000008', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VII', 1, 'uploads/bukuips7.jpg'),
('IPS08000001', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VIII', 1, 'uploads/bukuips7.jpg'),
('IPS08000002', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VIII', 1, 'uploads/bukuips7.jpg'),
('IPS08000003', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VIII', 1, 'uploads/bukuips7.jpg'),
('IPS08000004', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VIII', 1, 'uploads/bukuips7.jpg'),
('IPS08000005', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VIII', 1, 'uploads/bukuips7.jpg'),
('IPS08000006', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VIII', 1, 'uploads/bukuips7.jpg'),
('IPS08000007', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VIII', 1, 'uploads/bukuips7.jpg'),
('IPS08000008', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'VIII', 1, 'uploads/bukuips7.jpg'),
('IPS09000001', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'IX', 1, 'uploads/bukuips7.jpg'),
('IPS09000002', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'IX', 1, 'uploads/bukuips7.jpg'),
('IPS09000003', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'IX', 1, 'uploads/bukuips7.jpg'),
('IPS09000004', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'IX', 1, 'uploads/bukuips7.jpg'),
('IPS09000005', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'IX', 1, 'uploads/bukuips7.jpg'),
('IPS09000006', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'IX', 1, 'uploads/bukuips7.jpg'),
('IPS09000007', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'IX', 1, 'uploads/bukuips7.jpg'),
('IPS09000008', 'buku paket', 'Ilmu Pengetahuan Sosial', '1 & 2', 'IX', 1, 'uploads/bukuips7.jpg'),
('MTK07010001', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010002', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010003', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010004', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010005', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010006', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010007', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010008', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010009', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07010010', 'buku paket', 'Matematika', '1', 'VII', 1, 'uploads/buku1.png'),
('MTK07020001', 'buku paket', 'Matematika', '2', 'VII', 1, 'uploads/buku1.png'),
('MTK07020002', 'buku paket', 'Matematika', '2', 'VII', 1, 'uploads/buku1.png'),
('MTK07020003', 'buku paket', 'Matematika', '2', 'VII', 1, 'uploads/buku1.png'),
('MTK07020004', 'buku paket', 'Matematika', '2', 'VII', 1, 'uploads/buku1.png'),
('MTK07020005', 'buku paket', 'Matematika', '2', 'VII', 1, 'uploads/buku1.png'),
('MTK07020006', 'buku paket', 'Matematika', '2', 'VII', 1, 'uploads/buku1.png'),
('MTK07020007', 'buku paket', 'Matematika', '2', 'VII', 1, 'uploads/buku1.png'),
('MTK07020008', 'buku paket', 'Matematika', '2', 'VII', 1, 'uploads/buku1.png'),
('MTK08010003', 'buku paket', 'Matematika', '1', 'VIII', 1, 'uploads/buku1.png'),
('MTK08010004', 'buku paket', 'Matematika', '1', 'VIII', 1, 'uploads/buku1.png'),
('MTK08010005', 'buku paket', 'Matematika', '1', 'VIII', 1, 'uploads/buku1.png'),
('MTK08010006', 'buku paket', 'Matematika', '1', 'VIII', 1, 'uploads/buku1.png'),
('MTK08010007', 'buku paket', 'Matematika', '1', 'VIII', 1, 'uploads/buku1.png'),
('MTK08010008', 'buku paket', 'Matematika', '1', 'VIII', 1, 'uploads/buku1.png'),
('MTK08010009', 'buku paket', 'Matematika', '1', 'VIII', 1, 'uploads/buku1.png'),
('MTK08010010', 'buku paket', 'Matematika', '1', 'VIII', 1, 'uploads/buku1.png'),
('MTK08020001', 'buku paket', 'Matematika', '2', 'VIII', 1, 'uploads/buku1.png'),
('MTK08020002', 'buku paket', 'Matematika', '2', 'VIII', 1, 'uploads/buku1.png'),
('MTK08020003', 'buku paket', 'Matematika', '2', 'VIII', 1, 'uploads/buku1.png'),
('MTK08020004', 'buku paket', 'Matematika', '2', 'VIII', 1, 'uploads/buku1.png'),
('MTK08020005', 'buku paket', 'Matematika', '2', 'VIII', 1, 'uploads/buku1.png'),
('MTK08020006', 'buku paket', 'Matematika', '2', 'VIII', 1, 'uploads/buku1.png'),
('MTK08020007', 'buku paket', 'Matematika', '2', 'VIII', 1, 'uploads/buku1.png'),
('MTK08020008', 'buku paket', 'Matematika', '2', 'VIII', 1, 'uploads/buku1.png'),
('MTK09010003', 'buku paket', 'Matematika', '1', 'IX', 1, 'uploads/buku1.png'),
('MTK09010004', 'buku paket', 'Matematika', '1', 'IX', 1, 'uploads/buku1.png'),
('MTK09010005', 'buku paket', 'Matematika', '1', 'IX', 1, 'uploads/buku1.png'),
('MTK09010006', 'buku paket', 'Matematika', '1', 'IX', 1, 'uploads/buku1.png'),
('MTK09010007', 'buku paket', 'Matematika', '1', 'IX', 1, 'uploads/buku1.png'),
('MTK09010008', 'buku paket', 'Matematika', '1', 'IX', 1, 'uploads/buku1.png'),
('MTK09010009', 'buku paket', 'Matematika', '1', 'IX', 1, 'uploads/buku1.png'),
('MTK09010010', 'buku paket', 'Matematika', '1', 'IX', 1, 'uploads/buku1.png'),
('MTK09020001', 'buku paket', 'Matematika', '2', 'IX', 1, 'uploads/buku1.png'),
('MTK09020002', 'buku paket', 'Matematika', '2', 'IX', 1, 'uploads/buku1.png'),
('MTK09020003', 'buku paket', 'Matematika', '2', 'IX', 1, 'uploads/buku1.png'),
('MTK09020004', 'buku paket', 'Matematika', '2', 'IX', 1, 'uploads/buku1.png'),
('MTK09020005', 'buku paket', 'Matematika', '2', 'IX', 1, 'uploads/buku1.png'),
('MTK09020006', 'buku paket', 'Matematika', '2', 'IX', 1, 'uploads/buku1.png'),
('MTK09020007', 'buku paket', 'Matematika', '2', 'IX', 1, 'uploads/buku1.png'),
('MTK09020008', 'buku paket', 'Matematika', '2', 'IX', 1, 'uploads/buku1.png'),
('PAI07000001', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI07000002', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI07000003', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI07000004', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI07000005', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI07000006', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI07000007', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI07000008', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI08000001', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VIII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI08000002', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VIII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI08000003', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VIII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI08000004', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VIII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI08000005', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VIII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI08000006', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VIII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI08000007', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VIII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI08000008', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'VIII', 1, '\'uploads/bukupai7.jpeg\''),
('PAI09000001', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'IX', 1, '\'uploads/bukupai7.jpeg\''),
('PAI09000002', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'IX', 1, '\'uploads/bukupai7.jpeg\''),
('PAI09000003', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'IX', 1, '\'uploads/bukupai7.jpeg\''),
('PAI09000004', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'IX', 1, '\'uploads/bukupai7.jpeg\''),
('PAI09000005', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'IX', 1, '\'uploads/bukupai7.jpeg\''),
('PAI09000006', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'IX', 1, '\'uploads/bukupai7.jpeg\''),
('PAI09000007', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'IX', 1, '\'uploads/bukupai7.jpeg\''),
('PAI09000008', 'buku paket', 'Pendidikan Agama Islam', '1 & 2', 'IX', 1, '\'uploads/bukupai7.jpeg\''),
('PJK07000001', 'buku paket', 'PJOK', '1 & 2', 'VII', 1, 'uploads/bukupjok7.jpg'),
('PJK07000002', 'buku paket', 'PJOK', '1 & 2', 'VII', 1, 'uploads/bukupjok7.jpg'),
('PJK07000003', 'buku paket', 'PJOK', '1 & 2', 'VII', 1, 'uploads/bukupjok7.jpg'),
('PJK07000004', 'buku paket', 'PJOK', '1 & 2', 'VII', 1, 'uploads/bukupjok7.jpg'),
('PJK07000005', 'buku paket', 'PJOK', '1 & 2', 'VII', 1, 'uploads/bukupjok7.jpg'),
('PJK07000006', 'buku paket', 'PJOK', '1 & 2', 'VII', 1, 'uploads/bukupjok7.jpg'),
('PJK07000007', 'buku paket', 'PJOK', '1 & 2', 'VII', 1, 'uploads/bukupjok7.jpg'),
('PJK07000008', 'buku paket', 'PJOK', '1 & 2', 'VII', 1, 'uploads/bukupjok7.jpg'),
('PJK08000001', 'buku paket', 'PJOK', '1 & 2', 'VIII', 1, 'uploads/bukupjok7.jpg'),
('PJK08000002', 'buku paket', 'PJOK', '1 & 2', 'VIII', 1, 'uploads/bukupjok7.jpg'),
('PJK08000003', 'buku paket', 'PJOK', '1 & 2', 'VIII', 1, 'uploads/bukupjok7.jpg'),
('PJK08000004', 'buku paket', 'PJOK', '1 & 2', 'VIII', 1, 'uploads/bukupjok7.jpg'),
('PJK08000005', 'buku paket', 'PJOK', '1 & 2', 'VIII', 1, 'uploads/bukupjok7.jpg'),
('PJK08000006', 'buku paket', 'PJOK', '1 & 2', 'VIII', 1, 'uploads/bukupjok7.jpg'),
('PJK08000007', 'buku paket', 'PJOK', '1 & 2', 'VIII', 1, 'uploads/bukupjok7.jpg'),
('PJK08000008', 'buku paket', 'PJOK', '1 & 2', 'VIII', 1, 'uploads/bukupjok7.jpg'),
('PJK09000001', 'buku paket', 'PJOK', '1 & 2', 'IX', 1, 'uploads/bukupjok7.jpg'),
('PJK09000002', 'buku paket', 'PJOK', '1 & 2', 'IX', 1, 'uploads/bukupjok7.jpg'),
('PJK09000003', 'buku paket', 'PJOK', '1 & 2', 'IX', 1, 'uploads/bukupjok7.jpg'),
('PJK09000004', 'buku paket', 'PJOK', '1 & 2', 'IX', 1, 'uploads/bukupjok7.jpg'),
('PJK09000005', 'buku paket', 'PJOK', '1 & 2', 'IX', 1, 'uploads/bukupjok7.jpg'),
('PJK09000006', 'buku paket', 'PJOK', '1 & 2', 'IX', 1, 'uploads/bukupjok7.jpg'),
('PJK09000007', 'buku paket', 'PJOK', '1 & 2', 'IX', 1, 'uploads/bukupjok7.jpg'),
('PJK09000008', 'buku paket', 'PJOK', '1 & 2', 'IX', 1, 'uploads/bukupjok7.jpg'),
('PKN07000001', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VII', 1, 'uploads/buku2.png'),
('PKN07000002', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VII', 1, 'uploads/buku2.png'),
('PKN07000003', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VII', 1, 'uploads/buku2.png'),
('PKN07000004', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VII', 1, 'uploads/buku2.png'),
('PKN07000005', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VII', 1, 'uploads/buku2.png'),
('PKN07000006', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VII', 1, 'uploads/buku2.png'),
('PKN07000007', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VII', 1, 'uploads/buku2.png'),
('PKN07000008', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VII', 1, 'uploads/buku2.png'),
('PKN08000001', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VIII', 1, 'uploads/buku2.png'),
('PKN08000002', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VIII', 1, 'uploads/buku2.png'),
('PKN08000003', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VIII', 1, 'uploads/buku2.png'),
('PKN08000004', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VIII', 1, 'uploads/buku2.png'),
('PKN08000005', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VIII', 1, 'uploads/buku2.png'),
('PKN08000006', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VIII', 1, 'uploads/buku2.png'),
('PKN08000007', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VIII', 1, 'uploads/buku2.png'),
('PKN08000008', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'VIII', 1, 'uploads/buku2.png'),
('PKN09000001', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'IX', 1, 'uploads/buku2.png'),
('PKN09000002', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'IX', 1, 'uploads/buku2.png'),
('PKN09000003', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'IX', 1, 'uploads/buku2.png'),
('PKN09000004', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'IX', 1, 'uploads/buku2.png'),
('PKN09000005', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'IX', 1, 'uploads/buku2.png'),
('PKN09000006', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'IX', 1, 'uploads/buku2.png'),
('PKN09000007', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'IX', 1, 'uploads/buku2.png'),
('PKN09000008', 'buku paket', 'Pendidikan Kewarganegaraan', '1 & 2', 'IX', 1, 'uploads/buku2.png'),
('PKR07010001', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07010002', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07010003', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07010004', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07010005', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07010006', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07010007', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07010008', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07020001', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07020002', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07020003', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07020004', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07020005', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07020006', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07020007', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR07020008', 'buku paket', 'Prakarya', '1', 'VII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08010001', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08010002', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08010003', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08010004', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08010005', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08010006', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08010007', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08010008', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08020001', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08020002', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08020003', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08020004', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08020005', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08020006', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08020007', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR08020008', 'buku paket', 'Prakarya', '1', 'VIII', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09010001', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09010002', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09010003', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09010004', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09010005', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09010006', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09010007', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09010008', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09020001', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09020002', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09020003', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09020004', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09020005', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09020006', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09020007', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('PKR09020008', 'buku paket', 'Prakarya', '1', 'IX', 1, 'uploads/bukuprakarya7.jpg'),
('SBK07000001', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VII', 1, 'uploads/buku6.jpg'),
('SBK07000002', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VII', 1, 'uploads/buku6.jpg'),
('SBK07000003', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VII', 1, 'uploads/buku6.jpg'),
('SBK07000004', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VII', 1, 'uploads/buku6.jpg'),
('SBK07000005', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VII', 1, 'uploads/buku6.jpg'),
('SBK07000006', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VII', 1, 'uploads/buku6.jpg'),
('SBK07000007', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VII', 1, 'uploads/buku6.jpg'),
('SBK07000008', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VII', 1, 'uploads/buku6.jpg'),
('SBK08000001', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VIII', 1, 'uploads/buku6.jpg'),
('SBK08000002', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VIII', 1, 'uploads/buku6.jpg'),
('SBK08000003', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VIII', 1, 'uploads/buku6.jpg'),
('SBK08000004', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VIII', 1, 'uploads/buku6.jpg'),
('SBK08000005', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VIII', 1, 'uploads/buku6.jpg'),
('SBK08000006', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VIII', 1, 'uploads/buku6.jpg'),
('SBK08000007', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VIII', 1, 'uploads/buku6.jpg'),
('SBK08000008', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'VIII', 1, 'uploads/buku6.jpg'),
('SBK09000001', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'IX', 1, 'uploads/buku6.jpg'),
('SBK09000002', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'IX', 1, 'uploads/buku6.jpg'),
('SBK09000003', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'IX', 1, 'uploads/buku6.jpg'),
('SBK09000004', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'IX', 1, 'uploads/buku6.jpg'),
('SBK09000005', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'IX', 1, 'uploads/buku6.jpg'),
('SBK09000006', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'IX', 1, 'uploads/buku6.jpg'),
('SBK09000007', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'IX', 1, 'uploads/buku6.jpg'),
('SBK09000008', 'buku paket', 'Seni Budaya dan Kebudayaan', '1 & 2', 'IX', 1, 'uploads/buku6.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `NIS` char(4) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `password` varchar(35) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `tingkatan` enum('VII','VIII','IX') NOT NULL,
  `kelas` enum('A','B','C','D','E','F','G','H') NOT NULL,
  `jenis_kelamin` enum('P','L') NOT NULL,
  `notelp` varchar(13) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`NIS`, `nama_siswa`, `password`, `tingkatan`, `kelas`, `jenis_kelamin`, `notelp`, `gambar`) VALUES
('0001', 'Ammar', '123456', 'VII', 'A', 'L', '085477312211', NULL),
('0002', 'Joko', '123456', 'VII', 'A', 'L', '089777666555', NULL),
('0003', 'Ahmad', '094422452ad4asd', 'VII', 'A', 'L', '081555666888', ''),
('0004', 'Kurniawan', '094422452ad4asd', 'VII', 'A', 'L', '081876290001', ''),
('0005', 'Adi', '094422452ad4asd', 'VII', 'A', 'L', '081879911001', ''),
('0006', 'Putra', '094422452ad4asd', 'VII', 'A', 'L', '081000123901', ''),
('0007', 'Maria', '094422452ad4asd', 'VII', 'A', 'P', '081876911003', ''),
('0008', 'Nurul', '094422452ad4asd', 'VII', 'A', 'P', '081876290921', ''),
('0009', 'Arif', '094422452ad4asd', 'VII', 'A', 'L', '08187802217', ''),
('0010', 'Wulandari', '094422452ad4asd', 'VII', 'A', 'P', '081454033209', ''),
('0011', 'Arif', '134656sfg346', 'VII', 'B', 'L', '081123334442', NULL),
('0012', 'Putri', '134656sfg346', 'VII', 'B', 'P', '081123334214', NULL),
('0013', 'Layla', '134656sfg346', 'VII', 'B', 'P', '081123334901', NULL),
('0021', 'Rendi', '134656sfg346', 'VII', 'C', 'L', '083163334742', NULL),
('0022', 'Alex', '134656sfg346', 'VII', 'C', 'L', '083123334001', NULL),
('0033', 'Anggi', '134656sfg346', 'VII', 'C', 'P', '083123334002', NULL),
('0041', 'Dandi', '134656sfg346', 'VII', 'D', 'L', '089197774043', NULL),
('0044', 'Fariz', '134656sfg346', 'VII', 'D', 'L', '089127774443', NULL),
('0045', 'Farit', '134656sfg346', 'VII', 'D', 'L', '089127774002', NULL),
('0051', 'Danang', '134656sfg346', 'VII', 'E', 'L', '084123338712', NULL),
('0052', 'Risa', '134656sfg346', 'VII', 'E', 'P', '084123338019', NULL),
('0057', 'Lisa', '134656sfg346', 'VII', 'E', 'L', '084123338003', NULL),
('0061', 'Wahdi', '134656sfg346', 'VII', 'F', 'L', '088123338098', NULL),
('0067', 'jeny', '134656sfg346', 'VII', 'F', 'P', '088123338111', NULL),
('0071', 'Maya', '134656sfg346', 'VII', 'G', 'P', '08512333774', NULL),
('0073', 'Mia', '134656sfg346', 'VII', 'G', 'P', '08512333777', NULL),
('0074', 'Sarah', '134656sfg346', 'VII', 'G', 'P', '08512333770', NULL),
('0081', 'Adi', '134656sfg346', 'VII', 'H', 'L', '08512333885', NULL),
('0082', 'Andi', '134656sfg346', 'VII', 'H', 'L', '08512333543', NULL),
('0083', 'Yuna', '134656sfg346', 'VII', 'H', 'P', '0851233377712', NULL),
('0101', 'Arif', '134656sfg346', 'VIII', 'A', 'L', '081123334442', NULL),
('0102', 'Putri', '134656sfg346', 'VIII', 'A', 'P', '081123334214', NULL),
('0103', 'Layla', '134656sfg346', 'VIII', 'A', 'P', '081123334901', NULL),
('0111', 'Rendi', '134656sfg346', 'VIII', 'B', 'L', '083163334742', NULL),
('0112', 'Alex', '134656sfg346', 'VIII', 'B', 'L', '083123334001', NULL),
('0113', 'Anggi', '134656sfg346', 'VIII', 'B', 'P', '083123334002', NULL),
('0121', 'Dandi', '134656sfg346', 'VII', 'D', 'L', '089197774043', NULL),
('0124', 'Fariz', '134656sfg346', 'VIII', 'D', 'L', '089127774443', NULL),
('0125', 'Farit', '134656sfg346', 'VIII', 'D', 'L', '089127774002', NULL),
('0131', 'Risa', '134656sfg346', 'VIII', 'E', 'P', '084123338019', NULL),
('0132', 'Lisa', '134656sfg346', 'VIII', 'E', 'L', '084123338003', NULL),
('0133', 'Danang', '134656sfg346', 'VIII', 'E', 'L', '084123338712', NULL),
('0141', 'Wahdi', '134656sfg346', 'VIII', 'F', 'L', '088123338098', NULL),
('0147', 'jeny', '134656sfg346', 'VIII', 'F', 'P', '088123338111', NULL),
('0148', 'Bunga', '134656sfg346', 'VIII', 'F', 'P', '088123338921', NULL),
('0151', 'Mia', '134656sfg346', 'VIII', 'G', 'P', '08512333777', NULL),
('0152', 'Maya', '134656sfg346', 'VIII', 'G', 'P', '08512333774', NULL),
('0154', 'Sarah', '134656sfg346', 'VIII', 'G', 'P', '08512333770', NULL),
('0161', 'Adi', '134656sfg346', 'VIII', 'C', 'L', '08512333885', NULL),
('0162', 'Andi', '134656sfg346', 'VIII', 'C', 'L', '08512333543', NULL),
('0163', 'Yuna', '134656sfg346', 'VIII', 'C', 'P', '0851233377712', NULL),
('0555', 'Choirul Huda', '202cb962ac59075b964b07152d234b70', 'VIII', 'B', 'L', '0897878789789', NULL),
('0909', 'Rayhan Febriansyah', 'c4ca4238a0b923820dcc509a6f75849b', 'VIII', 'C', 'L', '0896773565267', NULL),
('0999', 'Choirul Huda', '123', 'VII', 'A', 'L', '0810000000000', NULL),
('1101', 'Arif', '134656sfg346', 'IX', 'A', 'L', '081123334442', NULL),
('1102', 'Putri', '134656sfg346', 'IX', 'A', 'P', '081123334214', NULL),
('1103', 'Layla', '134656sfg346', 'IX', 'A', 'P', '081123334901', NULL),
('1111', 'Rendi', '134656sfg346', 'IX', 'B', 'L', '083163334742', NULL),
('1112', 'Alex', '134656sfg346', 'IX', 'B', 'L', '083123334001', NULL),
('1113', 'Anggi', '134656sfg346', 'IX', 'B', 'P', '083123334002', NULL),
('1121', 'Dandi', '134656sfg346', 'IX', 'D', 'L', '089197774043', NULL),
('1124', 'Fariz', '134656sfg346', 'IX', 'D', 'L', '089127774443', NULL),
('1125', 'Farit', '134656sfg346', 'IX', 'D', 'L', '089127774002', NULL),
('1131', 'Risa', '134656sfg346', 'IX', 'E', 'P', '084123338019', NULL),
('1132', 'Lisa', '134656sfg346', 'IX', 'E', 'L', '084123338003', NULL),
('1133', 'Danang', '134656sfg346', 'IX', 'E', 'L', '084123338712', NULL),
('1141', 'Wahdi', '134656sfg346', 'IX', 'F', 'L', '088123338098', NULL),
('1147', 'jeny', '134656sfg346', 'IX', 'F', 'P', '088123338111', NULL),
('1148', 'Bunga', '134656sfg346', 'IX', 'F', 'P', '088123338921', NULL),
('1151', 'Mia', '134656sfg346', 'IX', 'G', 'P', '08512333777', NULL),
('1152', 'Maya', '134656sfg346', 'IX', 'G', 'P', '08512333774', NULL),
('1154', 'Sarah', '134656sfg346', 'IX', 'G', 'P', '08512333770', NULL),
('1161', 'Adi', '134656sfg346', 'IX', 'C', 'L', '08512333885', NULL),
('1162', 'Andi', '134656sfg346', 'IX', 'C', 'L', '08512333543', NULL),
('1163', 'Yuna', '134656sfg346', 'IX', 'C', 'P', '0851233377712', NULL),
('1222', 'Rayhan Febriansyah', 'c4ca4238a0b923820dcc509a6f75849b', 'VIII', 'C', 'L', '0896578374399', NULL),
('6555', 'Ikhwan akram', '202cb962ac59075b964b07152d234b70', 'VIII', 'B', 'L', '0898728737782', 'uploads/a5efb0f5-1bba-458e-b007-a72432e09b289158134435449140858.jpg'),
('6666', 'Aris', 'c4ca4238a0b923820dcc509a6f75849b', 'VIII', 'C', 'L', '0872364762378', NULL),
('7777', 'ammar', 'c4ca4238a0b923820dcc509a6f75849b', 'VIII', 'C', 'P', '0898483784789', NULL),
('asda', 'asdafafas', 'a611edf71649f2bf0d402e11dbe7ea86', '', 'F', '', '1241435346', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(11) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `jadwal_pengembalian` date NOT NULL,
  `qty` tinyint(1) NOT NULL,
  `NIS` char(4) NOT NULL,
  `kd_buku` varchar(20) NOT NULL,
  `id_admin` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tanggal_peminjaman`, `jadwal_pengembalian`, `qty`, `NIS`, `kd_buku`, `id_admin`) VALUES
(1, '2023-01-03', '2023-01-30', 1, '0001', 'BDR07000001', 1),
(2, '2023-01-04', '2023-01-05', 1, '1222', 'BDR07000004', 1),
(3, '2023-01-04', '2023-01-05', 1, '0999', 'BDR07000999', 1),
(4, '2023-01-04', '2023-01-05', 1, '6555', 'BDR08000002', 1),
(5, '2023-01-11', '2023-01-11', 1, '0006', 'BDR07000002', 1);

--
-- Trigger `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `peminjaman` AFTER INSERT ON `peminjaman` FOR EACH ROW begin 
UPDATE data_buku set jumlah = jumlah - new.qty
WHERE kd_buku = new.kd_buku;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_kembali` int(11) NOT NULL,
  `id_pinjam` int(11) NOT NULL,
  `NIS` char(4) NOT NULL,
  `kd_buku` varchar(20) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `qty` tinyint(1) NOT NULL,
  `id_admin` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_kembali`, `id_pinjam`, `NIS`, `kd_buku`, `tanggal_pengembalian`, `tanggal_peminjaman`, `qty`, `id_admin`) VALUES
(1, 2, '1222', 'BDR07000004', '2023-01-12', '2023-01-04', 1, 1),
(2, 3, '0999', 'BDR07000999', '0000-00-00', '2023-01-04', 1, 1),
(3, 4, '6555', 'BDR08000002', '0000-00-00', '2023-01-04', 1, 1),
(4, 5, '0006', 'BDR07000002', '0000-00-00', '2023-01-11', 1, 1);

--
-- Trigger `pengembalian`
--
DELIMITER $$
CREATE TRIGGER `pengembalian` AFTER INSERT ON `pengembalian` FOR EACH ROW begin 
UPDATE data_buku set jumlah = jumlah + new.qty
WHERE kd_buku = new.kd_buku;
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku_favorit`
--
ALTER TABLE `buku_favorit`
  ADD KEY `NIS` (`NIS`),
  ADD KEY `kd_buku` (`kd_buku`);

--
-- Indeks untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`NIS`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `NIS` (`NIS`),
  ADD KEY `kd_buku` (`kd_buku`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_kembali`),
  ADD KEY `NIS` (`NIS`),
  ADD KEY `kd_buku` (`kd_buku`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pinjam` (`id_pinjam`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku_favorit`
--
ALTER TABLE `buku_favorit`
  ADD CONSTRAINT `buku_favorit_ibfk_1` FOREIGN KEY (`NIS`) REFERENCES `data_siswa` (`NIS`),
  ADD CONSTRAINT `buku_favorit_ibfk_2` FOREIGN KEY (`kd_buku`) REFERENCES `data_buku` (`kd_buku`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`NIS`) REFERENCES `data_siswa` (`NIS`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`kd_buku`) REFERENCES `data_buku` (`kd_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `data_admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`NIS`) REFERENCES `data_siswa` (`NIS`),
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`kd_buku`) REFERENCES `data_buku` (`kd_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `data_admin` (`id_admin`),
  ADD CONSTRAINT `pengembalian_ibfk_4` FOREIGN KEY (`id_pinjam`) REFERENCES `peminjaman` (`id_pinjam`),
  ADD CONSTRAINT `pengembalian_ibfk_5` FOREIGN KEY (`id_pinjam`) REFERENCES `peminjaman` (`id_pinjam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
