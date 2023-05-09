-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2021 pada 05.35
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangkeluar`
--

CREATE TABLE `barangkeluar` (
  `id` int(11) NOT NULL,
  `noBarang` int(20) NOT NULL,
  `jenisBarang` varchar(30) NOT NULL,
  `uraianBarang` varchar(40) NOT NULL,
  `nomorBAPEB` varchar(20) NOT NULL,
  `tanggalBAPEB` date NOT NULL,
  `dipergunakan_pada_unit` varchar(128) NOT NULL,
  `jumlahAwal` varchar(30) NOT NULL,
  `jumlahUnit` int(11) NOT NULL,
  `hargaSatuan` varchar(128) NOT NULL,
  `totalHarga` bigint(20) NOT NULL,
  `satuan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barangkeluar`
--

INSERT INTO `barangkeluar` (`id`, `noBarang`, `jenisBarang`, `uraianBarang`, `nomorBAPEB`, `tanggalBAPEB`, `dipergunakan_pada_unit`, `jumlahAwal`, `jumlahUnit`, `hargaSatuan`, `totalHarga`, `satuan`) VALUES
(73, 4, 'Barang pakai habis', 'box file', '101010', '2021-08-27', 'kas daerah', '5', 2, '50000', 100000, 'kotak'),
(74, 1, 'Barang inventaris', 'peralatan komputer', '101010', '2021-08-30', 'kas daerah', '50', 20, '500000', 10000000, 'unit'),
(75, 2, 'Barang habis pakai', 'meja kerja', '5523420', '2021-08-30', 'kas daerah', '6', 3, '180000', 540000, 'unit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangmasuk`
--

CREATE TABLE `barangmasuk` (
  `id` int(11) NOT NULL,
  `noBarang` int(11) NOT NULL,
  `jenisBarang` varchar(20) NOT NULL,
  `uraianBarang` varchar(40) NOT NULL,
  `nomorBAPB` varchar(20) NOT NULL,
  `tanggalBAPB` date NOT NULL,
  `jumlahAwal` varchar(128) NOT NULL,
  `jumlahUnit` int(11) NOT NULL,
  `hargaSatuan` varchar(128) NOT NULL,
  `totalHarga` bigint(12) NOT NULL,
  `satuan` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barangmasuk`
--

INSERT INTO `barangmasuk` (`id`, `noBarang`, `jenisBarang`, `uraianBarang`, `nomorBAPB`, `tanggalBAPB`, `jumlahAwal`, `jumlahUnit`, `hargaSatuan`, `totalHarga`, `satuan`, `keterangan`) VALUES
(181, 4, 'Barang pakai habis', 'box file', '027/KEU-BAPB/059', '2021-08-27', '0', 2, '50000', 250000, 'kotak', 'BM'),
(182, 1, 'Barang inventaris', 'peralatan komputer', '027/KEU-BAPB/035', '2021-08-29', '0', 50, '500000', 25000000, 'unit', 'BM'),
(183, 2, 'Barang inventaris', 'meja kerja', '027/KEU-BAPB/10', '2021-08-29', '0', 6, '180000', 720000, 'unit', 'BM'),
(184, 3, 'Barang pakai habis', 'kertas HVS ukuran polio', '027/KEU-BAPB/030', '2021-08-29', '0', 12, '50000', 600000, 'kotak', 'BM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stockopname`
--

CREATE TABLE `stockopname` (
  `noBarang` int(11) NOT NULL,
  `kodeBarang` varchar(10) NOT NULL,
  `uraianBarang` varchar(128) NOT NULL,
  `jumlahPengadaan` int(11) NOT NULL,
  `jumlahUnit` bigint(30) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `hargaSatuan` int(11) NOT NULL,
  `totalHarga` bigint(20) NOT NULL,
  `jumlahPermintaan` int(11) NOT NULL,
  `dipergunakan_pada_unit` varchar(128) NOT NULL,
  `sisa` int(11) NOT NULL,
  `jenisBarang` varchar(128) NOT NULL,
  `nomorBAPB` varchar(128) NOT NULL,
  `tanggalBAPB` varchar(40) NOT NULL,
  `nomorBAPEB` varchar(128) NOT NULL,
  `tanggalBAPEB` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stockopname`
--

INSERT INTO `stockopname` (`noBarang`, `kodeBarang`, `uraianBarang`, `jumlahPengadaan`, `jumlahUnit`, `satuan`, `hargaSatuan`, `totalHarga`, `jumlahPermintaan`, `dipergunakan_pada_unit`, `sisa`, `jenisBarang`, `nomorBAPB`, `tanggalBAPB`, `nomorBAPEB`, `tanggalBAPEB`) VALUES
(1, 'BRG001', 'peralatan komputer', 50, 50, 'unit', 500000, 25000000, 20, 'kas daerah', 30, 'Barang inventaris', '027/KEU-BAPB/035', '2021-08-29', '101010', '2021-08-30'),
(2, 'BRG002', 'meja kerja', 6, 6, 'unit', 180000, 1080000, 3, 'kas daerah', 3, 'Barang habis pakai', '027/KEU-BAPB/10', '2021-08-29', '5523420', '2021-08-30'),
(3, 'BRG003', 'kertas HVS ukuran polio', 12, 12, 'kotak', 50000, 600000, 0, '', 12, 'Barang pakai habis', '027/KEU-BAPB/030', '2021-08-29', '', ''),
(4, 'BRG004', 'box file', 2, 2, 'kotak', 50000, 100000, 2, 'kas daerah', 0, 'Barang habis pakai', '027/KEU-BAPB/059', '2021-08-27', '101010', '2021-08-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nip` int(18) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `level` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nip`, `nama`, `email`, `password`, `gambar`, `level`) VALUES
(111111, 'sekretaris', '-@gmail.com', '$2y$10$vtL3pL6NkPoS8/2D7WYuLevcBosb372VsGaAkiNMwx2P0068czmWO', 'gambar10.png', 'sekretaris'),
(121212, 'Diviana Auria', 'diviana@gmail.com', '$2y$10$yrtegvmcqICg0.G8CQVAROqlq7Rlb/6gDNHhp6PoGOlz2kiKeJAvS', 'gambar3.png  ', 'administrator'),
(708090, 'BPKAD-ADM', 'bpkad@gmail.com', '$2y$10$bRQtwjK81yD7pc19xxi7mewyTDCEBemcEHUN8.Ltotbnp0tsP6She', '73cef70962de5f801523014nx-17484.jpg', 'administrator'),
(27021991, 'Yadi Saputra S.ST', 'yadhisjr@gmail.com', '$2y$10$Yy2gLLtNGMM0jET5IMUmZOXiN7Q2jZ9BL3NVNqVKlCDjXA18K.bjq', '73cef70962de5f801523014nx-174841.jpg', 'administrator'),
(193510389, 'EKA SEPTIA PUTRI', 'ekaseptiaputri7@gmail.com', '$2y$10$A3sbqCNIRbs3Hts9T9o8uuDDOW03sIDE5Sr5NhzcNVVchN7KUIsh6', 'image.jpg ', 'administrator'),
(2147483647, 'budi santosa, S.E', 'king.ator12@gmail.com', '$2y$10$XkOKoeofFjPNno.CBhtJP.zhEaEFTqahGThj.hxOOAd8O5uclp3Au', 'gambar4.png', 'administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangkeluar`
--
ALTER TABLE `barangkeluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barangmasuk`
--
ALTER TABLE `barangmasuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noBarang` (`noBarang`);

--
-- Indeks untuk tabel `stockopname`
--
ALTER TABLE `stockopname`
  ADD PRIMARY KEY (`noBarang`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangkeluar`
--
ALTER TABLE `barangkeluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `barangmasuk`
--
ALTER TABLE `barangmasuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `stockopname`
--
ALTER TABLE `stockopname`
  MODIFY `noBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `nip` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9223372036854775807;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barangmasuk`
--
ALTER TABLE `barangmasuk`
  ADD CONSTRAINT `barangmasuk_ibfk_1` FOREIGN KEY (`noBarang`) REFERENCES `stockopname` (`noBarang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
