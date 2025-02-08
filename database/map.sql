-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Okt 2019 pada 15.16
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_type` int(100) NOT NULL,
  `nama_type` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_type`, `nama_type`, `gambar`) VALUES
(1, 'SHOP', 'images/shop.jpg'),
(2, 'COFFEE', 'images/coffee.jpg'),
(3, 'CINEMA', 'images/cinema.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempa`
--

CREATE TABLE `tempa` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `id_type` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tempa`
--

INSERT INTO `tempa` (`id`, `nama`, `alamat`, `lat`, `lang`, `id_type`) VALUES
(1, 'Great Store', 'Jl. Kadrie Oening 31-27, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.472219', '117.134865', 1),
(2, 'Moodzy Supply', 'Jl. Anggur Dalam 32-30, Sidodadi, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.475093', '117.140678', 1),
(3, 'MoodzyStore', 'Jl. Ahmad Yani No.1, Temindung Permai, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75242', '-0.473670', '117.163852', 1),
(4, 'Riverside Store', 'Jl. Kadrie Oening No.2, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.472516', '117.137744', 1),
(5, 'Widespread Apparel', 'Perum P&K, Jl. Pramuka 6, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.464569', '117.152880', 1),
(6, 'DITZ', 'Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75243', '-0.462617', '117.150405', 1),
(7, 'Gigg All City Champs', 'Jl. M. Yamin No.82 C, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', '-0.462581', '117.150402', 1),
(8, 'D\'Force Cafe', 'Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.473071', '117.146605', 2),
(9, 'Coffee Toffee Samarinda', 'Jl. Juanda, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.484201', '117.127529', 2),
(10, 'Triple R Coffe Shop', 'Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.483241', '117.132130', 2),
(11, 'Insomnia coffee', 'Wijayakusuma X Di dekat profclean, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 7', '-0.486885', '117.132644', 2),
(12, 'Kopiria Muso Salim', 'Karang Mumus, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur', '-0.501945', '117.158464', 2),
(13, 'Limbah Kopi', 'Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75242', '-0.475988', '117.160712', 2),
(14, 'XXI Samarinda Square', 'Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.469708', '117.146884', 3),
(15, 'Studio XXI SCP', 'Jl. P. Irian No.1, Pelabuhan, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', '-0.503223', '117.154924', 3),
(16, 'XXI Big Mall Samarinda', 'Big Mall, Jl. Untung Suropati No.8, Karang Asam Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan', '-0.525754', '117.115912', 3),
(17, 'CGV Cinemas Plaza Mulia', 'Plaza Mulia, Jl. Bhayangkara No.58, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', '-0.490424', '117.145756', 3),
(18, 'Big Mall', 'Big Mall, Jl. Untung Suropati No.8, Karang Asam Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan', '-0.525754', '117.115912', 1),
(19, 'Plaza Mulia', 'Plaza Mulia, Jl. Bhayangkara No.58, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', '-0.490424', '117.145756', 1),
(20, 'Samarinda Square', 'Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', '-0.469708', '117.146884', 1),
(21, 'SCP', 'Jl. P. Irian No.1, Pelabuhan, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', '-0.503223', '117.154924', 1),
(22, 'Mall Lembuswana Samarinda', 'Mall Lembuswana, Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', '-0.475149', '117.146812', 1),
(23, 'Warunk Upnormal Samarinda', 'Jl. Juanda No.222 C, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', '-0.482339', '117.132458', 2),
(24, 'Level 03 Rooftop Cafe', 'Jl. P Antasari, Pandansari, Supermarket, Kota Samarinda, Kalimantan Timur 75127', '-0.493859', '117.127314', 2),
(25, 'Warung Makan PSL', 'Jl. Gajah Mada No.19, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', '-0.502875', '117.143793', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_type`);

--
-- Indeks untuk tabel `tempa`
--
ALTER TABLE `tempa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tempa`
--
ALTER TABLE `tempa`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tempa`
--
ALTER TABLE `tempa`
  ADD CONSTRAINT `tempa_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `kategori` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
