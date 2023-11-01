-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 09:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`) VALUES
(2, 'Hanya Imajinasi', '“Kau tahu apa yang paling membuatku bahagia? Jawabannya hanya satu: merangkai kata menjadi deretan kalimat bagai lagu indah yang dibaca orangorang yang tertarik.'),
(3, 'Laluba', '“Yang istimewa dari Laluba adalah kemampuan pengarangnya mengelola ungkapan dunia dalam dengan menggunakan bahasa memikat yang minim kata-kata ganjil. Ini tentu susah. Dunia batin ini dibangun dari aktivasi indera yang cermat. Tapi detail yang dipaparkan ini bukan macam suatu pameran pengetahuan yang kenes, melainkan sesuatu yang berhenti dan masuk ke dalam dan menjadi metafora-metafora yang tak terduga.”'),
(4, 'Air Akar', 'Air Akar – Benny ArnasUntaian Salam dari Pulau Tak Berbentuk – Maria Jeanindya WahyudiBunga Kebun Tanjong – Muhammad Nasir AgeBarongsai Merah-Putih – Ade Sugeng WigunoArti Kematian Sedulur Sikep – Aisy Az ZahraSepasang Kupu-Kupu Hitam-Putih – Ari KelingWarisan (Cerita dari Dieng) – Ayu GendisPenulis Biografi – Bode RiswandiTandan Sawit – Nafiah Al-Ma’rabProtokol Karimata – Wiryawan Nalendra'),
(10, 'Riwayat Negeri Yang Haru', 'Dunia fiksi yang umumnya mencuat dalam kumpulan ini lebih banyak digunakan untuk satu melankoli dalam melodrama kehidupan dari sebuah negeri yang haru, negeri biru dengan panorama mengenaskan.'),
(11, 'Masdab', 'Tujuh belas kisah pendek yang ditulis Catur Stanis dalam buku ini hampir semua bergaya &quot;cerpen koran&quot;. Pengertian yang dimaksud adalah ukuran jumlah kata yang umumnya berkisar 600-1000 kata sebagaimana kolom koran yang tersedia.'),
(12, 'Superhero', 'Bilkito adalah seorang superhero yang hebat. Dengan kekuatannya, dia mengalahkan para penjahat yang membuat ulah. Kapan pun warga kota membutuhkan pertolongan, dia selalu siap sedia. Seluruh warga kota memuji dan mengaguminya.'),
(13, 'Dokumen Jibril', 'Dokumen Jibril adalah sebuah cerita pendek (cerpen) yang ada di buku ini. Berkisah tentang seorang ayah yang bertingkah aneh sepulangnya dari menunaikan ibadah haji. Di kota Mekah, sang ayah mengaku bertemu dengan laki-laki yang bernama Jibril.'),
(14, 'Cerita dari Timur', 'Cerita dari Timur; merupakan buku antologi–kumpulan cerita pendek–yang ditulis oleh sembilan orang dari berbagai latar belakang. Lewat ragam cerita dalam berbagai rupa, buku ini mencoba menyuguhkan sisi cutting edge budaya ketimuran.'),
(15, 'Bos Baru', 'Warna dan corak kehidupan begitu beragam. Ada saat-saat seperti berjudi, ada saat-saat macam pengecut, ada saat-saat bak orang gila, ada saat-saat terabaikan. Kadang bergitu berani melawan takdir, kadang seperti kisah komedi, kisah asmara. Kadang penuh keanehan dan misteri.'),
(18, 'Stop Or Never', 'Berkarya, berdaya guna di kehidupan ini akan membawa bahagia dunia akhirat. So pasti itu dambaan setiap kita, bukan? Namun, impian tidak selalu menjadi kenyataan. Virus corona (COVID-19) melanda dunia. Situasi pandemi covid-19 telah membuat semuanya berubah. Eits, tunggu dulu! Pandemi bukan harga mati.'),
(19, 'Di Tengah Kegelapan Inuvik', '“Ompung, saat ini Fibri berada di Inuvik di tepi sungan Mackenzie Northwest District yang jaraknya 150 kilo meter dari Snag. Kota ini unik dan Fibri ke Kota kecil ini atas saran Purser Concordia. Dalam satu tahun Matahari hanya memperlihatkan dirinya selama 11 bulan di kota ini setelah itu dia tidur satu bulan.'),
(20, 'Harga sebuah percaya', 'Ini adalah kisah tentang Jim, dari Kisah Sang Penandai, yang terpilih untuk mengguratkan cerita tentang berdamai dengan masa lalu. Ia pun harus menyelesaikan pahit-getir perjalanannya, apa pun harganya! Karena sungguh kita membutuhkan dongeng ini.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
