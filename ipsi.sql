-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Agu 2017 pada 19.37
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipsi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(3) NOT NULL,
  `sudut` varchar(10) NOT NULL,
  `jenis_kemengan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_juri`
--

CREATE TABLE `tb_juri` (
  `id_juri` int(3) NOT NULL,
  `nama_juri` varchar(50) NOT NULL,
  `asal_daerah` varchar(50) NOT NULL,
  `jekel` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_juri`
--

INSERT INTO `tb_juri` (`id_juri`, `nama_juri`, `asal_daerah`, `jekel`) VALUES
(1, 'dwi hadi', 'kota magelang', 'Putri'),
(2, 'fayzun', 'magelang', 'Putra'),
(3, 'joni', 'magelang', 'Putra'),
(4, 'kuntari', 'magelang', 'Putri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penilaian`
--

CREATE TABLE `tb_penilaian` (
  `id_penilaian` int(3) NOT NULL,
  `partai` int(3) NOT NULL,
  `no_juri` int(1) NOT NULL,
  `babak` int(1) NOT NULL DEFAULT '1',
  `gelanggang` int(1) NOT NULL,
  `nilai_merah` int(3) NOT NULL,
  `nilai_biru` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pertandingan`
--

CREATE TABLE `tb_pertandingan` (
  `id_pertandingan` int(3) NOT NULL,
  `sudut_merah` int(3) NOT NULL,
  `sudut_biru` int(3) NOT NULL,
  `kelas` char(1) NOT NULL,
  `jekel` char(5) NOT NULL,
  `selesai` char(1) NOT NULL DEFAULT 't'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pertandingan`
--

INSERT INTO `tb_pertandingan` (`id_pertandingan`, `sudut_merah`, `sudut_biru`, `kelas`, `jekel`, `selesai`) VALUES
(1, 10, 3, 'B', 'Putra', 't'),
(2, 16, 5, 'C', 'Putra', 't'),
(3, 13, 1, 'E', 'Putra', 't'),
(4, 8, 7, 'F', 'Putra', 't'),
(5, 2, 3, 'A', 'Putra', 't'),
(6, 16, 6, 'C', 'Putra', 't');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesilat`
--

CREATE TABLE `tb_pesilat` (
  `id_pesilat` int(3) NOT NULL,
  `nama_pesilat` varchar(50) NOT NULL,
  `kontingen` varchar(50) NOT NULL,
  `kelas` char(1) NOT NULL,
  `jekel` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesilat`
--

INSERT INTO `tb_pesilat` (`id_pesilat`, `nama_pesilat`, `kontingen`, `kelas`, `jekel`) VALUES
(1, 'fahmi yusuf', 'bipa', 'E', 'Putra'),
(2, 'Fatkhurrohman', 'bipa', 'A', 'Putra'),
(3, 'rilan arif', 'untid', 'B', 'Putra'),
(5, 'irvan', 'untid', 'C', 'Putra'),
(6, 'arif budianto', 'untidar', 'D', 'Putra'),
(7, 'bili', 'untid', 'F', 'Putra'),
(8, 'malik', 'untid', 'F', 'Putri'),
(10, 'sandro', 'untid', 'B', 'Putra'),
(13, 'dwi hadi', 'kabupaten magelang', 'F', 'Putra'),
(14, 'ita', 'untid', 'C', 'Putri'),
(16, 'agung', 'bipa', 'C', 'Putra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(2) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(4, 'admin', 'Pesilat@email.com', '$2y$10$rZj0jtqU.5uN1quRPhojF.PFsuvpA5og6LomZtbjQBa'),
(5, 'tes', 'tes@email.com', '$2y$10$hjf.znAEfVvPBZRMWco9J.seevN2qMDv24SZbxKinUa'),
(6, 'fahmi', 'fahmi@gmail.com', '$2y$10$rR2yeJ4fqqGzl6D3DEBTuOizpUEvIFDWbndgohQjtii'),
(7, 'tes1', 'tes1@email.com', 'tes12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tb_juri`
--
ALTER TABLE `tb_juri`
  ADD PRIMARY KEY (`id_juri`);

--
-- Indexes for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `tb_pertandingan`
--
ALTER TABLE `tb_pertandingan`
  ADD PRIMARY KEY (`id_pertandingan`);

--
-- Indexes for table `tb_pesilat`
--
ALTER TABLE `tb_pesilat`
  ADD PRIMARY KEY (`id_pesilat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id_hasil` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_juri`
--
ALTER TABLE `tb_juri`
  MODIFY `id_juri` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  MODIFY `id_penilaian` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_pertandingan`
--
ALTER TABLE `tb_pertandingan`
  MODIFY `id_pertandingan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_pesilat`
--
ALTER TABLE `tb_pesilat`
  MODIFY `id_pesilat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
