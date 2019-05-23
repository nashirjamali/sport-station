-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2019 at 07:15 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sport_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `tempat_dan_waktu` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pembuat` varchar(100) NOT NULL,
  `kategori_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `nama_kegiatan`, `tempat_dan_waktu`, `tanggal`, `deskripsi`, `gambar`, `pembuat`, `kategori_id`) VALUES
(1, 'Lomba Lari Maraton ', 'Pantai Ria Kenjera Surabaya', '2019-05-31', 'lomba lari maraton untuk umum jarak 1000m Pukul 07:00', 'lari.jpg', 'Universitas Stikom Surabaya', 2),
(2, 'car free day', 'Taman Bungkul \r\n', '2019-05-26', 'senam zumba di tengah tengah taman Pukul 07:00', 'bungkul.jpg', 'komunitas zumba dunia', 1),
(3, 'car free day', 'halaman masjid agung & 06:00', '2019-05-26', 'jalan sehat berhadiah ', 'jalan.jpg', 'remaja masjid agung', 1),
(4, 'lomba angkat beban', 'Apartemen Gunawangsa mer & 20:00', '2019-05-30', 'lomba mengangkat beban dengan kategori 1kg, 2kg dan 3kg', 'angkatbeban.jpg', 'gym gunawangsa', 2),
(5, 'makan sehat', 'dinas pangan kota surabaya & 07:00', '2019-05-27', 'kegiatan dari dinas pangan untuk memberi tahu makanan sehat', 'dinas.jpg', 'dinas pangan indonesia', 1),
(6, 'liga mahasiswa', 'mangga dua & 10:00', '2019-05-31', 'lomba antar universitas se surabaya', 'lima.jpg', 'lima', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_event`
--

CREATE TABLE `kategori_event` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_event`
--

INSERT INTO `kategori_event` (`id`, `nama`) VALUES
(1, 'Kegiatan Olahraga'),
(2, 'Lomba Olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_lapangan`
--

CREATE TABLE `kategori_lapangan` (
  `id` int(10) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_lapangan`
--

INSERT INTO `kategori_lapangan` (`id`, `nama_kategori`) VALUES
(1, 'Lapangan Futsal'),
(2, 'Lapangan Badmintoon'),
(3, 'Lapangan Lari'),
(4, 'Lapangan Tenis'),
(5, 'Kolam Renang'),
(6, 'Tempat GYM ');

-- --------------------------------------------------------

--
-- Table structure for table `lapangan`
--

CREATE TABLE `lapangan` (
  `id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_lapangan` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lapangan`
--

INSERT INTO `lapangan` (`id`, `kategori_id`, `nama_lapangan`, `lokasi`, `link`) VALUES
(1, 1, 'Gool Futsal', 'Ruko Mangga Dua, 100, Jl. Jagir Wonokromo No.98, Jagir, Wonokromo, Surabaya City, East Java 60244', 'https://www.google.com/maps/place/Gool+Futsal/@-7.3028172,112.7425709,17z/data=!3m1!4b1!4m5!3m4!1s0x'),
(2, 1, 'Dynasty Futsal', 'Jl. Ngagel No.75, Ngagel, Kec. Wonokromo, Kota SBY, Jawa Timur 60246', 'https://www.google.com/maps/place/Dynasty+Futsal/@-7.28052,112.7382453,15z/data=!4m8!1m2!2m1!1slapan'),
(3, 2, 'Gor Mikasa Badmintoon', 'Jl. Barata Jaya XXI No.3, Baratajaya, Kec. Gubeng, Kota SBY, Jawa Timur 60284', 'https://www.google.com/maps/place/Gor+Mikasa/@-7.302333,112.7517502,15z/data=!4m8!1m2!2m1!1slapangan'),
(4, 2, 'GOR Bulutangkis Soedirman', 'Jl. Dr. Ir. H. Soekarno No.8, Manyar Sabrangan, Kec. Mulyorejo, Kota SBY, Jawa Timur 60116', 'https://www.google.com/maps/place/GOR+Bulutangkis+Soedirman/@-7.2782699,112.7718123,15z/data=!4m8!1m'),
(5, 3, 'Lapangan Lari Thor ', 'Jl. Patmosusastro No.74a, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241', 'https://www.google.com/maps/place/Lapangan+Thor/@-7.287947,112.7213842,15z/data=!4m8!1m2!2m1!1slapan'),
(6, 3, 'Lapangan Atletik FIK UNESA', 'Lidah Wetan, Kec. Lakarsantri, Kota SBY, Jawa Timur 60213', 'https://www.google.com/maps/place/Lapangan+Atletik+FIK+UNESA/@-7.3014943,112.6585592,15z/data=!4m8!1'),
(7, 4, 'Lapangan Tenis', 'Jl. Lidah Wetan V No. 45, Lidah Wetan, Lakarsantri, Lidah Wetan, Surabaya, Kota SBY, Jawa Timur 6021', 'https://www.google.com/maps/place/Lapangan+Tenis/@-7.301494,112.6585592,15z/data=!4m8!1m2!2m1!1slapa'),
(8, 4, 'Lapangan Tenis Brawijaya', 'Jl. Hayam Wuruk, Sawunggaling, Kec. Wonokromo, Kota SBY, Jawa Timur 60242', 'https://www.google.com/maps/place/Lapangan+Tenis+Brawijaya/@-7.3000247,112.7177957,15z/data=!4m8!1m2'),
(9, 5, 'Kolam Renang Primavera', 'Jl. Raya Menganti No.88, Kedurus, Karang Pilang, Kota SBY, Jawa Timur 60223', 'https://www.google.com/maps/place/Kolam+Renang+Primavera/@-7.3146261,112.6972178,15z/data=!4m8!1m2!2'),
(10, 5, 'Kolam Renang Hayam Wuruk', 'Jl. Hayam Wuruk, Sawunggaling, Kec. Wonokromo, Kota SBY, Jawa Timur 60242', 'https://www.google.com/maps/place/Kolam+Renang+Hayam+Wuruk/@-7.3000244,112.7177957,15z/data=!4m8!1m2'),
(11, 6, 'Gold\'s Gym', 'Surabaya Town Square, Jl. Hayam Wuruk Baru I No.6, Sawunggaling, Kec. Wonokromo, Kota SBY, Jawa Timu', 'https://www.google.com/maps/place/Gold\'s+Gym/@-7.3000242,112.7177957,15z/data=!4m8!1m2!2m1!1sGYM+sur'),
(12, 6, 'Dinasty Fitness Centre', 'Jl. Raya Dinoyo No.147, Keputran, Kec. Tegalsari, Kota SBY, Jawa Timur 60265', 'https://www.google.com/maps/place/Dinasty+Fitness+Centre/@-7.2875495,112.735967,15z/data=!4m8!1m2!2m');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) NOT NULL,
  `nama pengguna` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no handphone` int(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` double NOT NULL,
  `nama_penjual` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyewaan`
--

CREATE TABLE `penyewaan` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `harga` double NOT NULL,
  `user` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `id` int(10) NOT NULL,
  `penulis_id` char(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postingan`
--

INSERT INTO `postingan` (`id`, `penulis_id`, `judul`, `isi`, `tanggal`, `waktu`) VALUES
(1, '1', 'program diet', 'menurunkan berat badan', '2019-05-23', '07:00:00'),
(2, '2', 'edukasi', 'atribute berolahraga yg benar', '2019-05-23', '24:00:00'),
(3, '3', 'edukasi', 'program makanan sehat', '2019-05-23', '00:00:24'),
(4, '4', 'edukasi', 'program lari yang benar', '2019-05-23', '24:00:00'),
(5, '5', 'edukasi', 'cara mengatur pernafasan', '2019-05-16', '24:00:00'),
(6, '1', 'program diet', '7 hari program makan untuk diet', '2019-05-23', '24:00:00'),
(7, '2', 'edukasi', 'cara angkat beban yang benar', '2019-05-23', '24:00:00'),
(8, '3', 'edukasi', 'konsultasi kesehatan', '2019-05-23', '24:00:00'),
(9, '4', 'edukasi', 'mengukur berat badan ideal', '2019-05-23', '24:00:00'),
(10, '5', 'edukasi', 'cara membuat badan menjadi sispek', '2019-05-23', '24:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'tommy', '123456789', 'admin'),
(2, 'ayub', '123456789', 'admin'),
(3, 'ricky', '123456789', 'admin'),
(4, 'nashir', '12356789', 'admin'),
(5, 'meisya', '123456789', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_event`
--
ALTER TABLE `kategori_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_lapangan`
--
ALTER TABLE `kategori_lapangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_event`
--
ALTER TABLE `kategori_event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_lapangan`
--
ALTER TABLE `kategori_lapangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lapangan`
--
ALTER TABLE `lapangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penyewaan`
--
ALTER TABLE `penyewaan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
