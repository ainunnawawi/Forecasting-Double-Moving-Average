-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2021 pada 01.03
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_forecasting`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_forecasting`
--

CREATE TABLE `data_forecasting` (
  `periode` date NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_forecasting`
--

INSERT INTO `data_forecasting` (`periode`, `harga`) VALUES
('2021-01-01', 800000),
('2021-01-02', 850000),
('2021-01-03', 900000),
('2021-01-04', 950000),
('2021-01-05', 980000),
('2021-01-06', 970000),
('2021-01-07', 940000),
('2021-01-08', 960000),
('2021-01-09', 920000),
('2021-01-10', 900000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_forecasting`
--
ALTER TABLE `data_forecasting`
  ADD PRIMARY KEY (`periode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
