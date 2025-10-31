-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Okt 2025 pada 07.31
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siram`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuaca`
--

CREATE TABLE `cuaca` (
  `id_cuaca` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `suhu` float NOT NULL,
  `kelembapan` float NOT NULL,
  `status_cuaca` enum('panas','hujan') DEFAULT NULL,
  `id_daerah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuaca`
--

INSERT INTO `cuaca` (`id_cuaca`, `tanggal`, `suhu`, `kelembapan`, `status_cuaca`, `id_daerah`) VALUES
(1, '2025-10-01', 29.5, 82.1, 'hujan', 1),
(2, '2025-10-02', 28.3, 85.2, 'hujan', 2),
(3, '2025-10-03', 30.1, 78.3, 'hujan', 3),
(4, '2025-10-04', 31, 76.5, 'hujan', 4),
(5, '2025-10-05', 27.8, 88.6, 'hujan', 5),
(6, '2025-10-06', 26.9, 90.1, 'hujan', 6),
(7, '2025-10-07', 29, 83.3, 'hujan', 7),
(8, '2025-10-08', 28.4, 84.7, 'hujan', 8),
(9, '2025-10-09', 30.3, 79.8, 'hujan', 9),
(10, '2025-10-10', 27.6, 87.5, 'hujan', 10),
(11, '2025-10-11', 33.2, 65.3, 'panas', 1),
(12, '2025-10-12', 34, 61.8, 'panas', 2),
(13, '2025-10-13', 35.5, 59.1, 'panas', 3),
(14, '2025-10-14', 32.8, 68.3, 'panas', 4),
(15, '2025-10-15', 33.5, 63.4, 'panas', 5),
(16, '2025-10-16', 36.1, 57.8, 'panas', 6),
(17, '2025-10-17', 31.4, 70.2, 'panas', 7),
(18, '2025-10-18', 32.9, 67.5, 'panas', 8),
(19, '2025-10-19', 34.2, 64.9, 'panas', 9),
(20, '2025-10-20', 33.8, 65.4, 'panas', 10),
(21, '2025-10-21', 29.1, 80.4, 'hujan', 1),
(22, '2025-10-22', 27.4, 88, 'hujan', 2),
(23, '2025-10-23', 30.5, 77.1, 'hujan', 3),
(24, '2025-10-24', 28.9, 82.9, 'hujan', 4),
(25, '2025-10-25', 31.3, 75.8, 'hujan', 5),
(26, '2025-10-26', 27.2, 89.2, 'hujan', 6),
(27, '2025-10-27', 30.8, 80.3, 'hujan', 7),
(28, '2025-10-28', 28.7, 85.1, 'hujan', 8),
(29, '2025-10-29', 29.9, 81.4, 'hujan', 9),
(30, '2025-10-30', 27.9, 86.2, 'hujan', 10),
(31, '2025-10-31', 35, 60.3, 'panas', 1),
(32, '2025-11-01', 33.7, 63.9, 'panas', 2),
(33, '2025-11-02', 34.9, 62.4, 'panas', 3),
(34, '2025-11-03', 32.1, 67.8, 'panas', 4),
(35, '2025-11-04', 35.3, 58.6, 'panas', 5),
(36, '2025-11-05', 36.4, 55.9, 'panas', 6),
(37, '2025-11-06', 33, 66.7, 'panas', 7),
(38, '2025-11-07', 34.6, 61.2, 'panas', 8),
(39, '2025-11-08', 35.7, 59.8, 'panas', 9),
(40, '2025-11-09', 32.5, 68.1, 'panas', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuaca_hujan`
--

CREATE TABLE `cuaca_hujan` (
  `id_cuaca` int(11) NOT NULL,
  `curah_hujan` float NOT NULL,
  `potensi_banjir` enum('rendah','sedang','tinggi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuaca_hujan`
--

INSERT INTO `cuaca_hujan` (`id_cuaca`, `curah_hujan`, `potensi_banjir`) VALUES
(1, 120.5, 'tinggi'),
(2, 98.3, 'sedang'),
(3, 150.2, 'tinggi'),
(4, 85.1, 'rendah'),
(5, 132.4, 'sedang'),
(6, 160.8, 'tinggi'),
(7, 110.9, 'sedang'),
(8, 95, 'rendah'),
(9, 140.3, 'tinggi'),
(10, 100.5, 'sedang'),
(21, 115.3, 'sedang'),
(22, 130, 'tinggi'),
(23, 90.5, 'rendah'),
(24, 142.7, 'tinggi'),
(25, 123.9, 'sedang'),
(26, 155.6, 'tinggi'),
(27, 111.7, 'sedang'),
(28, 95.4, 'rendah'),
(29, 138.2, 'tinggi'),
(30, 101.9, 'sedang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuaca_panas`
--

CREATE TABLE `cuaca_panas` (
  `id_cuaca` int(11) NOT NULL,
  `indeks_uv` float NOT NULL,
  `level_panas` enum('normal','tinggi','ekstrem') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuaca_panas`
--

INSERT INTO `cuaca_panas` (`id_cuaca`, `indeks_uv`, `level_panas`) VALUES
(11, 8.5, 'tinggi'),
(12, 7.9, 'normal'),
(13, 10.3, 'ekstrem'),
(14, 8.1, 'tinggi'),
(15, 7.8, 'normal'),
(16, 9.7, 'ekstrem'),
(17, 8.9, 'tinggi'),
(18, 7.5, 'normal'),
(19, 9.4, 'tinggi'),
(20, 10.8, 'ekstrem'),
(31, 8.3, 'tinggi'),
(32, 7.2, 'normal'),
(33, 9.5, 'ekstrem'),
(34, 8.7, 'tinggi'),
(35, 7.4, 'normal'),
(36, 9.8, 'ekstrem'),
(37, 8, 'tinggi'),
(38, 7.6, 'normal'),
(39, 9.9, 'ekstrem'),
(40, 8.4, 'tinggi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daerah`
--

CREATE TABLE `daerah` (
  `id_daerah` int(11) NOT NULL,
  `kecamatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daerah`
--

INSERT INTO `daerah` (`id_daerah`, `kecamatan`) VALUES
(1, 'Samarinda Utara'),
(2, 'Sungai Pinang'),
(3, 'Samarinda Ulu'),
(4, 'Samarinda Ilir'),
(5, 'Sungai Kunjang'),
(6, 'Palaran'),
(7, 'Loa Janan Ilir'),
(8, 'Sambutan'),
(9, 'Samarinda Seberang'),
(10, 'Sungai Dama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `tinggi_air` float DEFAULT NULL,
  `lokasi` varchar(500) DEFAULT NULL,
  `foto_bukti` varchar(255) DEFAULT NULL,
  `status_banjir` enum('masih banjir','sudah surut') DEFAULT NULL,
  `id_daerah` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `tanggal_laporan`, `tinggi_air`, `lokasi`, `foto_bukti`, `status_banjir`, `id_daerah`, `id_user`) VALUES
(1, '2025-10-01', 35.2, 'Jl. Sempaja Utara RT 03', 'foto1.jpg', 'masih banjir', 1, 5),
(2, '2025-10-02', 28.6, 'Gang Sungai Pinang Luar', 'foto2.jpg', 'masih banjir', 2, 6),
(3, '2025-10-03', 42.1, 'Jl. P. Suryanata Samarinda Ulu', 'foto3.jpg', 'masih banjir', 3, 7),
(4, '2025-10-04', 25.4, 'Jl. Gatot Subroto Samarinda Ilir', 'foto4.jpg', 'sudah surut', 4, 8),
(5, '2025-10-05', 50.8, 'Perum Loa Buah Asri', 'foto5.jpg', 'masih banjir', 5, 9),
(6, '2025-10-06', 38.9, 'Jl. Pelita Palaran', 'foto6.jpg', 'masih banjir', 6, 10),
(7, '2025-10-07', 22.4, 'Jl. Ir. Sutami Loa Janan Ilir', 'foto7.jpg', 'sudah surut', 7, 11),
(8, '2025-10-08', 31.7, 'Perumahan Sambutan Indah', 'foto8.jpg', 'masih banjir', 8, 12),
(9, '2025-10-09', 27.5, 'Jl. KH Mas Mansyur Seberang', 'foto9.jpg', 'sudah surut', 9, 13),
(10, '2025-10-10', 33.6, 'Gang Sungai Dama Dalam', 'foto10.jpg', 'masih banjir', 10, 14),
(11, '2025-10-11', 41, 'Jl. Wahid Hasyim I', 'foto11.jpg', 'masih banjir', 1, 15),
(12, '2025-10-12', 23.8, 'Jl. Antasari Sungai Pinang', 'foto12.jpg', 'sudah surut', 2, 16),
(13, '2025-10-13', 49.2, 'Komplek Gunung Lingai', 'foto13.jpg', 'masih banjir', 3, 17),
(14, '2025-10-14', 28.1, 'Jl. Cendana Samarinda Ilir', 'foto14.jpg', 'sudah surut', 4, 18),
(15, '2025-10-15', 35.4, 'Jl. Juanda Sungai Kunjang', 'foto15.jpg', 'masih banjir', 5, 19),
(16, '2025-10-16', 31.2, 'Jl. Padat Karya Palaran', 'foto16.jpg', 'sudah surut', 6, 20),
(17, '2025-10-17', 40.7, 'Gang Mangga Loa Janan Ilir', 'foto17.jpg', 'masih banjir', 7, 21),
(18, '2025-10-18', 29.9, 'Jl. Poros Sambutan', 'foto18.jpg', 'masih banjir', 8, 22),
(19, '2025-10-19', 37.1, 'Jl. Berbas Tengah Seberang', 'foto19.jpg', 'masih banjir', 9, 23),
(20, '2025-10-20', 26.3, 'Gang Mahakam Sungai Dama', 'foto20.jpg', 'sudah surut', 10, 24),
(21, '2025-10-21', 32, 'Jl. Wahid Hasyim II', 'foto21.jpg', 'masih banjir', 1, 25),
(22, '2025-10-22', 27.8, 'Jl. Dr. Sutomo Sungai Pinang', 'foto22.jpg', 'masih banjir', 2, 26),
(23, '2025-10-23', 36.9, 'Jl. M. Yamin Samarinda Ulu', 'foto23.jpg', 'masih banjir', 3, 27),
(24, '2025-10-24', 30.1, 'Jl. Lambung Mangkurat Samarinda Ilir', 'foto24.jpg', 'masih banjir', 4, 28),
(25, '2025-10-25', 33.8, 'Jl. Teuku Umar Sungai Kunjang', 'foto25.jpg', 'masih banjir', 5, 29),
(26, '2025-10-26', 22.7, 'Jl. Rukun Warga Palaran', 'foto26.jpg', 'sudah surut', 6, 30),
(27, '2025-10-27', 28.5, 'Jl. Berjaya Loa Janan Ilir', 'foto27.jpg', 'masih banjir', 7, 31),
(28, '2025-10-28', 24.9, 'Jl. Poros Sambutan Dalam', 'foto28.jpg', 'sudah surut', 8, 32),
(29, '2025-10-29', 29.3, 'Jl. Karya Bhakti Seberang', 'foto29.jpg', 'masih banjir', 9, 33),
(30, '2025-10-30', 26.7, 'Jl. Gunung Kapih Sungai Dama', 'foto30.jpg', 'sudah surut', 10, 34),
(31, '2025-10-31', 35.5, 'Jl. Cipto Mangunkusumo', 'foto31.jpg', 'masih banjir', 1, 35),
(32, '2025-11-01', 33.2, 'Jl. S. Parman Sungai Pinang', 'foto32.jpg', 'masih banjir', 2, 36),
(33, '2025-11-02', 37, 'Jl. D.I Panjaitan Samarinda Ulu', 'foto33.jpg', 'masih banjir', 3, 37),
(34, '2025-11-03', 28.9, 'Jl. P. Antasari Samarinda Ilir', 'foto34.jpg', 'sudah surut', 4, 38),
(35, '2025-11-04', 31.6, 'Jl. Cendrawasih Sungai Kunjang', 'foto35.jpg', 'masih banjir', 5, 39),
(36, '2025-11-05', 25.2, 'Jl. Pemuda Palaran', 'foto36.jpg', 'sudah surut', 6, 40),
(37, '2025-11-06', 29.4, 'Jl. Soekarno Hatta Loa Janan Ilir', 'foto37.jpg', 'masih banjir', 7, 5),
(38, '2025-11-07', 32.5, 'Jl. Poros Sambutan Utara', 'foto38.jpg', 'masih banjir', 8, 6),
(39, '2025-11-08', 27.9, 'Jl. Hasan Basri Seberang', 'foto39.jpg', 'masih banjir', 9, 7),
(40, '2025-11-09', 26.5, 'Jl. Dama Hilir Sungai Dama', 'foto40.jpg', 'sudah surut', 10, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindak_lanjut`
--

CREATE TABLE `tindak_lanjut` (
  `id_tindak` int(11) NOT NULL,
  `tanggal_tindak` date NOT NULL,
  `status` enum('diproses','selesai') DEFAULT NULL,
  `id_laporan` int(11) DEFAULT NULL,
  `bentuk_penanganan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tindak_lanjut`
--

INSERT INTO `tindak_lanjut` (`id_tindak`, `tanggal_tindak`, `status`, `id_laporan`, `bentuk_penanganan`) VALUES
(1, '2025-10-02', 'diproses', 1, 'Pembersihan drainase tersumbat di Sempaja Utara'),
(2, '2025-10-03', 'selesai', 2, 'Pembersihan saluran air di Sungai Pinang'),
(3, '2025-10-04', 'diproses', 3, 'Perbaikan gorong-gorong rusak di Samarinda Ulu'),
(4, '2025-10-05', 'selesai', 4, 'Pembuatan tanggul sementara di Samarinda Ilir'),
(5, '2025-10-06', 'selesai', 5, 'Pembersihan parit utama di Sungai Kunjang'),
(6, '2025-10-07', 'diproses', 6, 'Perbaikan dinding beton penahan air di Palaran'),
(7, '2025-10-08', 'selesai', 7, 'Pembuatan parit tambahan di Loa Janan Ilir'),
(8, '2025-10-09', 'selesai', 8, 'Pembersihan sampah di aliran sungai Sambutan'),
(9, '2025-10-10', 'diproses', 9, 'Perbaikan pompa air di Sungai Dama'),
(10, '2025-10-11', 'selesai', 10, 'Pembersihan sedimen di saluran utama Samarinda Utara'),
(11, '2025-10-12', 'diproses', 11, 'Pembuatan talud pengaman di Sungai Pinang'),
(12, '2025-10-13', 'selesai', 12, 'Perbaikan saluran drainase tersumbat di Samarinda Ulu'),
(13, '2025-10-14', 'diproses', 13, 'Pembuatan kolam retensi kecil di Samarinda Ilir'),
(14, '2025-10-15', 'selesai', 14, 'Pembersihan parit lingkungan di Sungai Kunjang'),
(15, '2025-10-16', 'diproses', 15, 'Pembuatan gorong-gorong tambahan di Palaran'),
(16, '2025-10-17', 'selesai', 16, 'Perbaikan tanggul jebol di Loa Janan Ilir'),
(17, '2025-10-18', 'diproses', 17, 'Pembuatan jalur air baru di Sambutan'),
(18, '2025-10-19', 'selesai', 18, 'Pembersihan sungai kecil di Samarinda Seberang'),
(19, '2025-10-20', 'diproses', 19, 'Perbaikan jalan rusak akibat banjir di Sungai Dama'),
(20, '2025-10-21', 'selesai', 20, 'Pembersihan gorong-gorong di Wahid Hasyim'),
(21, '2025-10-22', 'diproses', 21, 'Perbaikan pompa air utama di Sungai Pinang'),
(22, '2025-10-23', 'selesai', 22, 'Pembersihan parit umum di Gunung Lingai'),
(23, '2025-10-24', 'diproses', 23, 'Pembuatan pintu air darurat di Samarinda Ilir'),
(24, '2025-10-25', 'selesai', 24, 'Pembersihan saluran rumah warga di Kunjang'),
(25, '2025-10-26', 'diproses', 25, 'Perbaikan dinding penahan air di Palaran'),
(26, '2025-10-27', 'selesai', 26, 'Pembuatan drainase baru di Loa Janan'),
(27, '2025-10-28', 'diproses', 27, 'Pembersihan endapan lumpur di Sambutan'),
(28, '2025-10-29', 'selesai', 28, 'Pembuatan check dam di Samarinda Seberang'),
(29, '2025-10-30', 'diproses', 29, 'Perbaikan jalan tergenang di Sungai Dama'),
(30, '2025-10-31', 'selesai', 30, 'Pembersihan saluran kecil di Sempaja'),
(31, '2025-11-01', 'diproses', 31, 'Pembuatan parit beton di Sungai Pinang'),
(32, '2025-11-02', 'selesai', 32, 'Pembersihan sedimen sungai di Samarinda Ulu'),
(33, '2025-11-03', 'diproses', 33, 'Perbaikan tanggul kecil di Samarinda Ilir'),
(34, '2025-11-04', 'selesai', 34, 'Pembuatan jalur air baru di Kunjang'),
(35, '2025-11-05', 'diproses', 35, 'Pembersihan parit perumahan di Palaran'),
(36, '2025-11-06', 'selesai', 36, 'Pembuatan pintu air kecil di Loa Janan'),
(37, '2025-11-07', 'diproses', 37, 'Perbaikan saluran tersumbat di Sambutan'),
(38, '2025-11-08', 'selesai', 38, 'Pembuatan sumur resapan di Seberang'),
(39, '2025-11-09', 'diproses', 39, 'Pembersihan parit umum di Sungai Dama'),
(40, '2025-11-10', 'selesai', 40, 'Perbaikan beton gorong-gorong di Wahid Hasyim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `peran` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama_lengkap`, `username`, `email`, `password`, `no_hp`, `peran`) VALUES
(1, 'Dwi Pebriyanto Pradana', 'Dwi_Pebriyanto', 'dwi@example.com', '12345', '081234567890', 'admin'),
(2, 'Rizqy', 'rizqy', 'rizqy@example.com', '12345', '081234567891', 'admin'),
(3, 'Najmi Hafizh Mauludan Zain', 'najmi_hafizh', 'najmi@example.com', '12345', '081234567892', 'admin'),
(4, 'Jemis Movid', 'jemis_movid', 'jemis@example.com', '12345', '081234567893', 'admin'),
(5, 'Rani Ayu', 'raniayu', 'rani@example.com', '12345', '081234567894', 'user'),
(6, 'Siti Rahma', 'sitirahma', 'siti@example.com', '12345', '081234567895', 'user'),
(7, 'Andi Saputra', 'andisaputra', 'andi@example.com', '12345', '081234567896', 'user'),
(8, 'Dewi Lestari', 'dewi_lestari', 'dewi@example.com', '12345', '081234567897', 'user'),
(9, 'Fajar Nugraha', 'fajarngrh', 'fajar@example.com', '12345', '081234567898', 'user'),
(10, 'Budi Hartono', 'budih', 'budi@example.com', '12345', '081234567899', 'user'),
(11, 'Putri Ananda', 'putriananda', 'putri@example.com', '12345', '081234567800', 'user'),
(12, 'Arif Wibowo', 'arifw', 'arif@example.com', '12345', '081234567801', 'user'),
(13, 'Lina Marlina', 'linam', 'lina@example.com', '12345', '081234567802', 'user'),
(14, 'Yuda Kurniawan', 'yudak', 'yuda@example.com', '12345', '081234567803', 'user'),
(15, 'Tasya Amelia', 'tasyaa', 'tasya@example.com', '12345', '081234567804', 'user'),
(16, 'Rama Putra', 'ramaputra', 'rama@example.com', '12345', '081234567805', 'user'),
(17, 'Nina Aulia', 'ninaa', 'nina@example.com', '12345', '081234567806', 'user'),
(18, 'Eko Prasetyo', 'ekopras', 'eko@example.com', '12345', '081234567807', 'user'),
(19, 'Salsa Nur', 'salsan', 'salsa@example.com', '12345', '081234567808', 'user'),
(20, 'Reza Fadillah', 'rezaf', 'reza@example.com', '12345', '081234567809', 'user'),
(21, 'Indah Permata', 'indahp', 'indah@example.com', '12345', '081234567810', 'user'),
(22, 'Ahmad Fauzi', 'ahmadf', 'ahmad@example.com', '12345', '081234567811', 'user'),
(23, 'Dian Putri', 'dianp', 'dian@example.com', '12345', '081234567812', 'user'),
(24, 'Yoga Saputra', 'yogas', 'yoga@example.com', '12345', '081234567813', 'user'),
(25, 'Nadia Rahmawati', 'nadiar', 'nadia@example.com', '12345', '081234567814', 'user'),
(26, 'Ilham Hidayat', 'ilhamm', 'ilham@example.com', '12345', '081234567815', 'user'),
(27, 'Citra Dewi', 'citrad', 'citra@example.com', '12345', '081234567816', 'user'),
(28, 'Bagus Setiawan', 'baguss', 'bagus@example.com', '12345', '081234567817', 'user'),
(29, 'Ayu Kartika', 'ayuk', 'ayu@example.com', '12345', '081234567818', 'user'),
(30, 'Zaki Anwar', 'zakia', 'zaki@example.com', '12345', '081234567819', 'user'),
(31, 'Riko Firmansyah', 'rikof', 'riko@example.com', '12345', '081234567820', 'user'),
(32, 'Mira Lestari', 'miral', 'mira@example.com', '12345', '081234567821', 'user'),
(33, 'Hendra Wijaya', 'hendraw', 'hendra@example.com', '12345', '081234567822', 'user'),
(34, 'Farah Nur', 'farahn', 'farah@example.com', '12345', '081234567823', 'user'),
(35, 'Tono Saputro', 'tonos', 'tono@example.com', '12345', '081234567824', 'user'),
(36, 'Mila Oktaviani', 'milao', 'mila@example.com', '12345', '081234567825', 'user'),
(37, 'Bayu Pratama', 'bayup', 'bayu@example.com', '12345', '081234567826', 'user'),
(38, 'Nanda Yuli', 'nandaa', 'nanda@example.com', '12345', '081234567827', 'user'),
(39, 'Aditia Kusuma', 'aditiak', 'aditia@example.com', '12345', '081234567828', 'user'),
(40, 'Rahmawati', 'rahmar', 'rahma@example.com', '12345', '081234567829', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  ADD PRIMARY KEY (`id_cuaca`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indeks untuk tabel `cuaca_hujan`
--
ALTER TABLE `cuaca_hujan`
  ADD KEY `id_cuaca` (`id_cuaca`);

--
-- Indeks untuk tabel `cuaca_panas`
--
ALTER TABLE `cuaca_panas`
  ADD KEY `id_cuaca` (`id_cuaca`);

--
-- Indeks untuk tabel `daerah`
--
ALTER TABLE `daerah`
  ADD PRIMARY KEY (`id_daerah`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_daerah` (`id_daerah`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tindak_lanjut`
--
ALTER TABLE `tindak_lanjut`
  ADD PRIMARY KEY (`id_tindak`),
  ADD KEY `id_laporan` (`id_laporan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  MODIFY `id_cuaca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `daerah`
--
ALTER TABLE `daerah`
  MODIFY `id_daerah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tindak_lanjut`
--
ALTER TABLE `tindak_lanjut`
  MODIFY `id_tindak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cuaca`
--
ALTER TABLE `cuaca`
  ADD CONSTRAINT `cuaca_ibfk_1` FOREIGN KEY (`id_daerah`) REFERENCES `daerah` (`id_daerah`);

--
-- Ketidakleluasaan untuk tabel `cuaca_hujan`
--
ALTER TABLE `cuaca_hujan`
  ADD CONSTRAINT `cuaca_hujan_ibfk_1` FOREIGN KEY (`id_cuaca`) REFERENCES `cuaca` (`id_cuaca`);

--
-- Ketidakleluasaan untuk tabel `cuaca_panas`
--
ALTER TABLE `cuaca_panas`
  ADD CONSTRAINT `cuaca_panas_ibfk_1` FOREIGN KEY (`id_cuaca`) REFERENCES `cuaca` (`id_cuaca`);

--
-- Ketidakleluasaan untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_daerah`) REFERENCES `daerah` (`id_daerah`),
  ADD CONSTRAINT `laporan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `tindak_lanjut`
--
ALTER TABLE `tindak_lanjut`
  ADD CONSTRAINT `tindak_lanjut_ibfk_1` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
