-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2025 pada 00.47
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
-- Database: `siramdb`
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
  `status_cuaca` enum('panas','hujan') NOT NULL,
  `id_daerah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuaca`
--

INSERT INTO `cuaca` (`id_cuaca`, `tanggal`, `suhu`, `kelembapan`, `status_cuaca`, `id_daerah`) VALUES
(1, '2025-10-01', 28.5, 80, 'hujan', 1),
(2, '2025-10-01', 27, 85, 'hujan', 2),
(3, '2025-10-01', 29.2, 78, 'hujan', 3),
(4, '2025-10-01', 26.5, 82, 'hujan', 4),
(5, '2025-10-01', 28, 79, 'hujan', 5),
(6, '2025-10-01', 33, 60, 'panas', 6),
(7, '2025-10-01', 34.5, 55, 'panas', 7),
(8, '2025-10-01', 32, 65, 'panas', 8),
(9, '2025-10-01', 35, 50, 'panas', 9),
(10, '2025-10-01', 33.5, 58, 'panas', 10),
(11, '2025-10-02', 28, 81, 'hujan', 1),
(12, '2025-10-02', 27.5, 83, 'hujan', 2),
(13, '2025-10-02', 29, 79, 'hujan', 3),
(14, '2025-10-02', 26.8, 80, 'hujan', 4),
(15, '2025-10-02', 28.3, 78, 'hujan', 5),
(16, '2025-10-02', 33.5, 59, 'panas', 6),
(17, '2025-10-02', 34, 54, 'panas', 7),
(18, '2025-10-02', 32.5, 63, 'panas', 8),
(19, '2025-10-02', 35.2, 51, 'panas', 9),
(20, '2025-10-02', 33.8, 57, 'panas', 10),
(21, '2025-10-03', 27.8, 82, 'hujan', 1),
(22, '2025-10-03', 28.2, 80, 'hujan', 2),
(23, '2025-10-03', 29.1, 81, 'hujan', 3),
(24, '2025-10-03', 26.7, 83, 'hujan', 4),
(25, '2025-10-03', 28.4, 79, 'hujan', 5),
(26, '2025-10-03', 32.8, 60, 'panas', 6),
(27, '2025-10-03', 33.9, 55, 'panas', 7),
(28, '2025-10-03', 32.3, 62, 'panas', 8),
(29, '2025-10-03', 34.7, 50, 'panas', 9),
(30, '2025-10-03', 33.2, 56, 'panas', 10),
(31, '2025-10-04', 28.1, 81, 'hujan', 1),
(32, '2025-10-04', 27.3, 84, 'hujan', 2),
(33, '2025-10-04', 29.3, 79, 'hujan', 3),
(34, '2025-10-04', 26.9, 82, 'hujan', 4),
(35, '2025-10-04', 28.6, 80, 'hujan', 5),
(36, '2025-10-04', 33.1, 59, 'panas', 6),
(37, '2025-10-04', 34.2, 56, 'panas', 7),
(38, '2025-10-04', 32.1, 64, 'panas', 8),
(39, '2025-10-04', 35, 50, 'panas', 9),
(40, '2025-10-04', 33.6, 57, 'panas', 10);

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
(1, 15, 'rendah'),
(2, 25, 'sedang'),
(3, 55, 'tinggi'),
(4, 18, 'rendah'),
(5, 40, 'sedang'),
(11, 20, 'sedang'),
(12, 30, 'sedang'),
(13, 10, 'rendah'),
(14, 45, 'tinggi'),
(15, 35, 'sedang'),
(21, 22, 'sedang'),
(22, 38, 'sedang'),
(23, 15, 'rendah'),
(24, 50, 'tinggi'),
(25, 40, 'sedang'),
(31, 18, 'rendah'),
(32, 28, 'sedang'),
(33, 12, 'rendah'),
(34, 48, 'tinggi'),
(35, 42, 'sedang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuaca_panas`
--

CREATE TABLE `cuaca_panas` (
  `id_cuaca` int(11) NOT NULL,
  `indeks_uv` float NOT NULL,
  `level_panas` enum('normal','tinggi','ekstrem') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuaca_panas`
--

INSERT INTO `cuaca_panas` (`id_cuaca`, `indeks_uv`, `level_panas`) VALUES
(6, 2, 'normal'),
(7, 5, 'tinggi'),
(8, 3, 'tinggi'),
(9, 7, 'ekstrem'),
(10, 4, 'tinggi'),
(16, 3, 'tinggi'),
(17, 6, 'ekstrem'),
(18, 2, 'normal'),
(19, 7, 'ekstrem'),
(20, 4, 'tinggi'),
(26, 3, 'tinggi'),
(27, 5, 'tinggi'),
(28, 2, 'normal'),
(29, 6, 'ekstrem'),
(30, 4, 'tinggi'),
(36, 2, 'normal'),
(37, 5, 'tinggi'),
(38, 3, 'tinggi'),
(39, 6, 'ekstrem'),
(40, 4, 'tinggi');

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
(1, 'Samarinda Ilir'),
(2, 'Samarinda Kota'),
(3, 'Samarinda Ulu'),
(4, 'Samarinda Seberang'),
(5, 'Samarinda Tengah'),
(6, 'Samarinda Utara'),
(7, 'Samarinda Selatan'),
(8, 'Sambutan'),
(9, 'Loa Janan Ilir'),
(10, 'Palaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `tinggi_air` float DEFAULT NULL,
  `lokasi` varchar(500) NOT NULL,
  `foto_bukti` mediumblob DEFAULT NULL,
  `status_banjir` enum('MASIH_BANJIR','SUDAH_SURUT') NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_daerah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindak_lanjut`
--

CREATE TABLE `tindak_lanjut` (
  `id_tindak` int(11) NOT NULL,
  `tanggal_tindak` date NOT NULL,
  `status` enum('DIPROSES','SELESAI') NOT NULL,
  `bentuk_penanganan` varchar(255) NOT NULL,
  `id_laporan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `peran` enum('ADMIN','USER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama_lengkap`, `username`, `email`, `password`, `no_hp`, `peran`) VALUES
(1, 'Dwi Pebriyanto Pradana', 'dwi', 'dwi.pebriyanto@gmail.com', 'admin123', '081234567890', 'ADMIN'),
(2, 'Najmi Hafizh Mauludan Zain', 'najmi', 'najmi.hafizh@gmail.com', 'admin123', '081234567891', 'ADMIN'),
(3, 'Rizqy', 'rizqy', 'rizqy@gmail.com', 'admin123', '081234567892', 'ADMIN'),
(4, 'Jemis Movid', 'jemis', 'jemis.movid@gmail.com', 'admin123', '081234567893', 'ADMIN'),
(5, 'Zain', 'zain', 'zain@gmail.com', 'admin123', '081234567894', 'ADMIN'),
(6, 'Ahmad Fikri', 'ahmad1', 'ahmad.fikri@gmail.com', 'user123', '081234567901', 'USER'),
(7, 'Siti Nurhaliza', 'siti1', 'siti.nurhaliza@gmail.com', 'user123', '081234567902', 'USER'),
(8, 'Budi Santoso', 'budi1', 'budi.santoso@gmail.com', 'user123', '081234567903', 'USER'),
(9, 'Rina Puspita', 'rina1', 'rina.puspita@gmail.com', 'user123', '081234567904', 'USER'),
(10, 'Fajar Pratama', 'fajar1', 'fajar.pratama@gmail.com', 'user123', '081234567905', 'USER'),
(11, 'Lina Marlina', 'lina1', 'lina.marlina@gmail.com', 'user123', '081234567906', 'USER'),
(12, 'Hendra Wijaya', 'hendra1', 'hendra.wijaya@gmail.com', 'user123', '081234567907', 'USER'),
(13, 'Dewi Anggraini', 'dewi1', 'dewi.anggraini@gmail.com', 'user123', '081234567908', 'USER'),
(14, 'Ricky Gunawan', 'ricky1', 'ricky.gunawan@gmail.com', 'user123', '081234567909', 'USER'),
(15, 'Tina Marlina', 'tina1', 'tina.marlina@gmail.com', 'user123', '081234567910', 'USER'),
(16, 'Agus Salim', 'agus1', 'agus.salim@gmail.com', 'user123', '081234567911', 'USER'),
(17, 'Maya Putri', 'maya1', 'maya.putri@gmail.com', 'user123', '081234567912', 'USER'),
(18, 'Roni Saputra', 'roni1', 'roni.saputra@gmail.com', 'user123', '081234567913', 'USER'),
(19, 'Nina Oktavia', 'nina1', 'nina.oktavia@gmail.com', 'user123', '081234567914', 'USER'),
(20, 'Yusuf Hidayat', 'yusuf1', 'yusuf.hidayat@gmail.com', 'user123', '081234567915', 'USER'),
(21, 'Rika Amalia', 'rika1', 'rika.amalia@gmail.com', 'user123', '081234567916', 'USER'),
(22, 'Bayu Prasetyo', 'bayu1', 'bayu.prasetyo@gmail.com', 'user123', '081234567917', 'USER'),
(23, 'Lia Rahmawati', 'lia1', 'lia.rahmawati@gmail.com', 'user123', '081234567918', 'USER'),
(24, 'Adi Nugroho', 'adi1', 'adi.nugroho@gmail.com', 'user123', '081234567919', 'USER'),
(25, 'Sari Wulandari', 'sari1', 'sari.wulandari@gmail.com', 'user123', '081234567920', 'USER'),
(26, 'Feri Kurniawan', 'feri1', 'feri.kurniawan@gmail.com', 'user123', '081234567921', 'USER'),
(27, 'Putri Ayu', 'putri1', 'putri.ayu@gmail.com', 'user123', '081234567922', 'USER'),
(28, 'Dian Pertiwi', 'dian1', 'dian.pertiwi@gmail.com', 'user123', '081234567923', 'USER'),
(29, 'Rendy Saputra', 'rendy1', 'rendy.saputra@gmail.com', 'user123', '081234567924', 'USER'),
(30, 'Intan Maharani', 'intan1', 'intan.maharani@gmail.com', 'user123', '081234567925', 'USER'),
(31, 'Eko Santoso', 'eko1', 'eko.santoso@gmail.com', 'user123', '081234567926', 'USER'),
(32, 'Vina Amelia', 'vina1', 'vina.amelia@gmail.com', 'user123', '081234567927', 'USER'),
(33, 'Tomi Prasetyo', 'tomi1', 'tomi.prasetyo@gmail.com', 'user123', '081234567928', 'USER'),
(34, 'Rita Sari', 'rita1', 'rita.sari@gmail.com', 'user123', '081234567929', 'USER'),
(35, 'Dedi Hidayat', 'dedi1', 'dedi.hidayat@gmail.com', 'user123', '081234567930', 'USER'),
(36, 'Nadia Fitri', 'nadia1', 'nadia.fitri@gmail.com', 'user123', '081234567931', 'USER'),
(37, 'Fikri Ramadhan', 'fikri1', 'fikri.ramadhan@gmail.com', 'user123', '081234567932', 'USER'),
(38, 'Mila Rahma', 'mila1', 'mila.rahma@gmail.com', 'user123', '081234567933', 'USER'),
(39, 'Andi Saputra', 'andi1', 'andi.saputra@gmail.com', 'user123', '081234567934', 'USER'),
(40, 'Sinta Maharani', 'sinta1', 'sinta.maharani@gmail.com', 'user123', '081234567935', 'USER'),
(41, 'Hadi Prasetyo', 'hadi1', 'hadi.prasetyo@gmail.com', 'user123', '081234567936', 'USER'),
(42, 'Nina Lestari', 'nina2', 'nina.lestari@gmail.com', 'user123', '081234567937', 'USER'),
(43, 'Riko Pratama', 'riko1', 'riko.pratama@gmail.com', 'user123', '081234567938', 'USER'),
(44, 'Vira Amalia', 'vira1', 'vira.amalia@gmail.com', 'user123', '081234567939', 'USER');

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
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_daerah` (`id_daerah`);

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
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tindak_lanjut`
--
ALTER TABLE `tindak_lanjut`
  MODIFY `id_tindak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `laporan_ibfk_2` FOREIGN KEY (`id_daerah`) REFERENCES `daerah` (`id_daerah`);

--
-- Ketidakleluasaan untuk tabel `tindak_lanjut`
--
ALTER TABLE `tindak_lanjut`
  ADD CONSTRAINT `tindak_lanjut_ibfk_1` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
