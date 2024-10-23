-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2024 pada 13.41
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
-- Database: `portfolio_db1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `judul`, `gambar`, `description`) VALUES
(1, 'About Me', '', '<p class=\"lead mb-4 text-justify\">\r\nI am a graduate of SMAN 8 Tangerang Selatan and am currently continuing my education at Universitas Pembangunan Jaya with a focus on Informatics. I am very interested in the field of information technology, because in my opinion, IT is an important pillar in today\'s digital era.\r\nThroughout my studies, I have always been open to new innovations and have been able to adapt quickly to changes in the dynamic world of technology.\r\n</p>\r\n<p class=\"lead mb-4 text-justify\">\r\nIn addition, I also have a great passion for being involved in committees and various organizational activities. In my opinion, this experience not only trains management and communication skills, but also provides an opportunity to meet various people and work together in diverse teams.\r\nThis has greatly helped me develop personally and professionally.\r\n</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'zidan', 'ahmadzidqa@gmail.com', 'fygygyg'),
(2, 'dafa', 'daffa@gmail.com', 'apalah'),
(3, 'qolbin', 'ahmadzidaneqa@gmail.com', 'yasudhlah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `education`
--

INSERT INTO `education` (`id`, `degree`, `institution`, `year`) VALUES
(1, 'S1', 'Universitas Pembangunan jaya', 2025);

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `project_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `description`, `project_url`) VALUES
(1, 'Daur ulang sampah menjadi sebuah karya', 'Mendaur ulang menjadi kerjinan tangan ', 'https://youtu.be/QtpHfwRskuU'),
(2, 'Membuat Project Tara travel', 'Tara travel merupakan bisnis travel yang memudah kan orang berwisata ke kota Bandung. Kenapa orang-orang ingin menggunakan  Tara travel ? karena Tara travel merupakan bisni travel menyajikan  layanan dengan Sangat baik, harganya terjangkau, dan ter update ', 'https://youtu.be/vhOqAjLG6u4'),
(3, 'VIDIO Project Cyber education', 'Hati Hati phishing dan puencurian data ', 'https://youtu.be/7DLZohP5AWQ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `proficiency`) VALUES
(1, 'HTML & CSS', 100),
(2, 'phyton ', 80),
(3, 'Adaptasi', 100),
(4, 'Manajemen Waktu', 85),
(5, 'Pemecahan Masalah', 100),
(6, 'Etika Kerja dan Tanggung Jawab', 100),
(7, 'Kerja Tim', 100);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
