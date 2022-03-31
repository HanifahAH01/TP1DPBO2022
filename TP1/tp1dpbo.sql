-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Mar 2022 pada 15.37
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp1dpbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `autor`
--

CREATE TABLE `autor` (
  `Id` int(11) NOT NULL,
  `Img` text NOT NULL,
  `Nama` text NOT NULL,
  `Jmlh_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `autor`
--

INSERT INTO `autor` (`Id`, `Img`, `Nama`, `Jmlh_buku`) VALUES
(1, '3259157823.jpg', 'Boy Candra', 20),
(2, '731dabe2a3f2984d11fa137cd6317f6fA__9_.jpg', 'Raditya Dika', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `Img` text NOT NULL,
  `Penerbit` text NOT NULL,
  `Autor` text NOT NULL,
  `Desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`Img`, `Penerbit`, `Autor`, `Desc`) VALUES
('Malik_&_Elsa_Poster.jpeg', 'Mediakita', 'Boy Candra', 'Malik & Elsa'),
('Dika.jpg', 'Gagas Media', 'Raditya Dika', 'Kuala Kumal');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `autor`
--
ALTER TABLE `autor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
