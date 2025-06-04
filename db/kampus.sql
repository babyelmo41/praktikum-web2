-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 03:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `email`, `telepon`) VALUES
(1, '2310020002', 'Aulia Izza Fahlevi', 'Pria', 'Jalan Simpang Belitung', 'izza.fahlevi@gmail.com', '089520221853'),
(4, '2310020003', 'Yennefer', 'Wanita', 'Vangerberg', 'yen@gmail.com', '08771626311'),
(5, '2310020004', 'Henry', 'Pria', 'Skalitz', 'henry@gmail.com', '087716253551'),
(6, '2310020005', 'Triss Merigold', 'Wanita', 'Nilfgard', 'triss@gmail.com', '089761525441'),
(7, '2310020006', 'Geralt', 'Pria', 'Kaer Morhen', 'geralt@gmail.com', '0871162244112'),
(8, '2310020007', 'Ciri', 'Wanita', 'Cintra', 'ciri@gmail.com', '089818273311');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `kode`, `nama`, `sks`, `semester`) VALUES
(1, 'MGU101', 'Pendidikan Agama Islam', 2, 1),
(3, 'MGU102', 'Pancasila', 2, 1),
(4, 'MK001', 'Pengantar Teknologi Informasi', 2, 1),
(5, 'MK002', 'Matematika Dasar', 3, 1),
(6, 'MK003', 'Bahasa Inggris I', 2, 1),
(7, 'MK004', 'Algoritma dan Pemrograman', 3, 1),
(8, 'MK005', 'Logika Informatika', 2, 1),
(9, 'MK006', 'Praktikum Pemrograman', 1, 1),
(10, 'MK007', 'Pendidikan Pancasila', 2, 1),
(11, 'MK008', 'Pemrograman Berorientasi Objek', 3, 2),
(12, 'MK009', 'Struktur Data', 3, 2),
(13, 'MK010', 'Matematika Diskrit', 3, 2),
(14, 'MK011', 'Organisasi Komputer', 2, 2),
(15, 'MK012', 'Bahasa Inggris II', 2, 2),
(16, 'MK013', 'Pendidikan Agama', 2, 2),
(17, 'MK014', 'Sistem Operasi', 3, 3),
(18, 'MK015', 'Basis Data', 3, 3),
(19, 'MK016', 'Pemrograman Web', 3, 3),
(20, 'MK017', 'Praktikum Basis Data', 1, 3),
(21, 'MK018', 'Kewarganegaraan', 2, 3),
(22, 'MK019', 'Statistika Komputasi', 3, 3),
(23, 'MK020', 'Analisis dan Desain Sistem', 3, 4),
(24, 'MK021', 'Manajemen Proyek TI', 2, 4),
(25, 'MK022', 'Interaksi Manusia dan Komputer', 2, 4),
(26, 'MK023', 'Keamanan Informasi', 3, 4),
(27, 'MK024', 'Jaringan Komputer', 3, 4),
(28, 'MK025', 'Kecerdasan Buatan', 3, 5),
(29, 'MK026', 'Data Mining', 3, 5),
(30, 'MK027', 'Pemrograman Mobile', 3, 5),
(31, 'MK028', 'Manajemen Basis Data', 2, 5),
(32, 'MK029', 'Sistem Terdistribusi', 3, 5),
(33, 'MK030', 'Etika Profesi TI', 2, 5),
(34, 'MK031', 'Pengolahan Citra Digital', 3, 6),
(35, 'MK032', 'Cloud Computing', 3, 6),
(36, 'MK033', 'Internet of Things', 3, 6),
(37, 'MK034', 'Pemrograman Game', 3, 6),
(38, 'MK035', 'Teknologi Web Lanjut', 3, 6),
(39, 'MK036', 'Metodologi Penelitian', 2, 6),
(40, 'MK037', 'Machine Learning', 3, 7),
(41, 'MK038', 'Big Data Analytics', 3, 7),
(42, 'MK039', 'Blockchain Technology', 2, 7),
(43, 'MK040', 'User Experience Design', 2, 7),
(44, 'MK041', 'Pengujian Perangkat Lunak', 2, 7),
(45, 'MK042', 'DevOps Fundamentals', 2, 7),
(46, 'MK043', 'Manajemen Layanan TI', 2, 7),
(47, 'MK044', 'Skripsi I', 2, 7),
(48, 'MK045', 'Skripsi II', 4, 8),
(49, 'MK046', 'Seminar Proposal', 2, 7),
(50, 'MK047', 'KKN (Kuliah Kerja Nyata)', 2, 8),
(51, 'MK048', 'Magang Industri', 3, 8),
(52, 'MK049', 'Bahasa Pemrograman Python', 3, 3),
(53, 'MK050', 'Sistem Informasi Geografis', 3, 6),
(54, 'MK051', 'Pemodelan Sistem Informasi', 2, 4),
(55, 'MK052', 'Desain UI/UX', 2, 5),
(56, 'MK053', 'Mobile App Design', 3, 5),
(57, 'MK054', 'Network Security', 3, 6),
(58, 'MK055', 'E-Government', 2, 6),
(59, 'MK056', 'Sistem Pakar', 3, 6),
(60, 'MK057', 'Visualisasi Data', 2, 6),
(61, 'MK058', 'Rekayasa Perangkat Lunak', 3, 4),
(62, 'MK059', 'Sistem Pendukung Keputusan', 3, 5),
(63, 'MK060', 'Manajemen Pengetahuan', 2, 6),
(64, 'MK061', 'Penulisan Ilmiah', 2, 5),
(65, 'MK062', 'Bahasa Indonesia', 2, 1),
(66, 'MK063', 'Ekonomi Digital', 2, 5),
(67, 'MK064', 'E-Commerce', 3, 6),
(68, 'MK065', 'Entrepreneurship', 2, 5),
(69, 'MK066', 'Etika dan Hukum Cyber', 2, 5),
(70, 'MK067', 'Multimedia Interaktif', 3, 4),
(71, 'MK068', 'Grafika Komputer', 3, 4),
(72, 'MK069', 'Pengantar Data Science', 2, 4),
(73, 'MK070', 'Desain Algoritma', 3, 4),
(74, 'MK071', 'Pemrograman Backend', 3, 5),
(75, 'MK072', 'Pemrograman Frontend', 3, 5),
(76, 'MK073', 'Content Management System', 2, 5),
(77, 'MK074', 'Proyek Mini', 2, 4),
(78, 'MK075', 'Sistem Multimedia', 3, 6),
(79, 'MK076', 'Teknologi Cloud AWS', 2, 6),
(80, 'MK077', 'Teknik Kompilasi', 3, 6),
(81, 'MK078', 'Embedded System', 3, 6),
(82, 'MK079', 'Bahasa Pemrograman Java', 3, 3),
(83, 'MK080', 'Bahasa Pemrograman C++', 3, 3),
(84, 'MK081', 'Basis Data Lanjut', 3, 4),
(85, 'MK082', 'Administrasi Sistem', 2, 5),
(86, 'MK083', 'Manajemen Risiko TI', 2, 7),
(87, 'MK084', 'Pemrograman Berbasis Framework', 3, 6),
(88, 'MK085', 'Manajemen Aset TI', 2, 6),
(89, 'MK086', 'Teknologi Virtualisasi', 2, 6),
(90, 'MK087', 'Pendidikan Kewirausahaan', 2, 6),
(91, 'MK088', 'Pemrograman Shell', 2, 6),
(92, 'MK089', 'Framework Laravel', 3, 5),
(93, 'MK090', 'Framework ReactJS', 3, 5),
(94, 'MK091', 'UI Design Tools (Figma)', 2, 5),
(95, 'MK092', 'Penerapan ERP', 2, 6),
(96, 'MK093', 'Metode Numerik', 2, 3),
(97, 'MK094', 'Bahasa Jepang Teknik', 2, 4),
(98, 'MK095', 'Bahasa Arab Teknik', 2, 4),
(99, 'MK096', 'Pengenalan Sistem Informasi', 2, 1),
(100, 'MK097', 'Teknik Presentasi', 2, 2),
(101, 'MK098', 'Public Speaking', 2, 2),
(102, 'MK099', 'Manajemen Waktu', 2, 2),
(103, 'MK100', 'Etika Akademik', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$1n1NTr4JjT1IQtQuhLiQmOrr31FZgXDcj0lv7fZNXkcAd3HdUeI0K'),
(3, 'admin2', '$2y$10$p7cUehezaV7u1COZds5LseK2z7fnvVsFEOyFrfXG0KHs56XxPahSu'),
(4, 'adminciri', '$2y$10$foJOM7IqLJZ/qkDeVj0DMOAM.wHuXu5ned3S2oqp8CxHcN1UUMyOW'),
(5, 'admingeralt', '$2y$10$5fhTC1VrmZXWhZM7geZIY.fbkGhJ.3HBhfGXn6C/ptoCcplayODM2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
