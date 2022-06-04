-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2020 at 06:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ereview2`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id_assign` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `id_reviewer` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `tgl_assign` date DEFAULT NULL,
  `tgl_deadline` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_assign` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id_assign`, `id_task`, `id_reviewer`, `status`, `tgl_assign`, `tgl_deadline`, `date_created`, `date_updated`, `sts_assign`) VALUES
(1, 1, 1, 3, '2020-05-10', '2020-05-10', '2020-05-10 01:40:26', '2020-05-10 01:40:26', 1),
(2, 2, 2, 1, '2020-05-10', '2020-05-10', '2020-05-10 01:40:57', '2020-05-10 01:40:57', 1),
(3, 3, 1, 2, '2020-05-10', '2020-05-10', '2020-05-10 01:42:28', '2020-05-10 01:42:28', 1),
(4, 4, 3, 1, '2020-05-10', '2020-05-10', '2020-05-10 01:43:15', '2020-05-10 01:43:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `id_editor` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_editor` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`id_editor`, `id_user`, `date_created`, `date_updated`, `sts_editor`) VALUES
(1, 1, '2020-05-10 01:36:23', '2020-05-10 01:36:23', 1),
(2, 2, '2020-05-10 01:36:40', '2020-05-10 01:36:40', 1),
(3, 3, '2020-05-10 01:36:57', '2020-05-10 01:36:57', 1),
(4, 4, '2020-05-10 01:37:33', '2020-05-10 01:37:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grup`
--

CREATE TABLE `grup` (
  `id_grup` int(11) NOT NULL,
  `nama_grup` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_grup` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grup`
--

INSERT INTO `grup` (`id_grup`, `nama_grup`, `date_created`, `date_updated`, `sts_grup`) VALUES
(1, 'editor', '2020-03-12 05:56:08', '2020-03-12 05:57:48', 1),
(2, 'reviewer', '2020-03-12 05:56:08', '2020-03-12 05:57:48', 1),
(3, 'makelar', '2020-03-12 05:56:19', '2020-03-12 05:57:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `makelar`
--

CREATE TABLE `makelar` (
  `id_makelar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_makelar` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makelar`
--

INSERT INTO `makelar` (`id_makelar`, `id_user`, `date_created`, `date_updated`, `sts_makelar`) VALUES
(3, 12, '2020-05-10 02:21:51', '2020-05-10 02:21:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `id_grup` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sts_member` tinyint(4) DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `id_grup`, `id_user`, `sts_member`, `date_created`, `date_updated`) VALUES
(1, 1, 1, 1, '2020-05-10 01:36:23', '2020-05-10 01:36:23'),
(2, 1, 2, 1, '2020-05-10 01:36:40', '2020-05-10 01:36:40'),
(3, 1, 3, 1, '2020-05-10 01:36:57', '2020-05-10 01:36:57'),
(4, 1, 4, 1, '2020-05-10 01:37:33', '2020-05-10 01:37:33'),
(5, 2, 5, 1, '2020-05-10 01:37:54', '2020-05-10 01:37:54'),
(6, 2, 6, 1, '2020-05-10 01:38:08', '2020-05-10 01:38:08'),
(7, 2, 7, 1, '2020-05-10 01:38:26', '2020-05-10 01:38:26'),
(8, 2, 8, 1, '2020-05-10 01:39:03', '2020-05-10 01:39:03'),
(10, 3, 12, 1, '2020-05-10 02:21:51', '2020-05-10 02:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `amount` float NOT NULL,
  `bukti` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_payment` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `status` int(11) NOT NULL,
  `nama_status` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `sts_progress` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`status`, `nama_status`, `date_created`, `date_updated`, `sts_progress`) VALUES
(1, 'On Requested', '2020-05-09 14:26:02', '2020-05-09 14:26:02', 1),
(2, 'Rejected', '2020-05-10 03:23:34', '2020-05-09 14:35:20', 1),
(3, 'On Progress', '2020-05-10 03:23:23', '2020-05-09 14:35:51', 1),
(4, 'Waiting Payment', '2020-05-09 14:36:15', '2020-05-09 14:36:15', 1),
(5, 'Completed', '2020-05-09 14:36:29', '2020-05-09 14:36:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

CREATE TABLE `reviewer` (
  `id_reviewer` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_rek` int(11) NOT NULL,
  `kompetensi` text NOT NULL,
  `Sts_reviewer` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`id_reviewer`, `id_user`, `no_rek`, `kompetensi`, `Sts_reviewer`, `date_created`, `date_updated`) VALUES
(1, 5, 0, '', 1, '2020-05-10 01:37:54', '2020-05-10 01:37:54'),
(2, 6, 0, '', 1, '2020-05-10 01:38:08', '2020-05-10 01:38:08'),
(3, 7, 0, '', 1, '2020-05-10 01:38:26', '2020-05-10 01:38:26'),
(4, 8, 0, '', 1, '2020-05-10 01:39:03', '2020-05-10 01:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id_task` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `authors` varchar(300) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `file_location` varchar(500) DEFAULT NULL,
  `id_editor` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_uploaded` timestamp NULL DEFAULT NULL,
  `sts_task` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id_task`, `judul`, `authors`, `keywords`, `file_location`, `id_editor`, `date_created`, `date_uploaded`, `sts_task`) VALUES
(1, 'Agama Islam', 'andri martin', 'buku, teks, test', '1589074819_ETS Gnp 2019_Agama Islam_(Reg_sesi 1_kelas 21 s.d. 25_kamis_07.00_9 April.pdf', 1, '2020-05-10 01:40:20', NULL, 0),
(2, 'fisika dasar', 'roy', 'fisika, buku, task', '1589074853_ETS GNP 2019_FISIKA 2 (4202)_(REG_SESI 2_Kelas 42-47; 55-63; 78_Selasa_09.00).pdf', 1, '2020-05-10 01:40:53', NULL, 0),
(3, 'matematika', 'lorem', 'buku, teks, test', '1589074940_ETS GNP 2019_Mate 2 (4201)_(REG_SESI 4_Kelas 42-47 dan 55-63,78_senin_13.00_6 April.pdf', 2, '2020-05-10 01:42:20', NULL, 0),
(4, 'hukum dan etika', 'ipsum', 'hukum, etika', '1589074990_Pelanggaran terhadap hak orang atau perusahaan yang dilindungi oleh hak cipta.docx', 3, '2020-05-10 01:43:10', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(256) NOT NULL,
  `photo` varchar(200) DEFAULT 'default.jpg',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_user` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama`, `email`, `photo`, `date_created`, `date_updated`, `sts_user`) VALUES
(1, 'rizwijaya', '827ccb0eea8a706c4c34a16891f84e7b', 'Rizqi Wijaya', 'editor@gmail.com', 'default.jpg', '2020-05-10 01:36:23', NULL, 1),
(2, 'editor', '827ccb0eea8a706c4c34a16891f84e7b', 'aku editor', 'editor1@gmail.com', 'default.jpg', '2020-05-10 01:36:40', NULL, 1),
(3, 'editor2', '827ccb0eea8a706c4c34a16891f84e7b', 'saya editor', 'editor2@gmail.com', 'default.jpg', '2020-05-10 01:36:57', NULL, 1),
(4, 'edtor3', '827ccb0eea8a706c4c34a16891f84e7b', 'editor juga', 'edito3@gmail.com', 'default.jpg', '2020-05-10 01:37:33', NULL, 1),
(5, 'reviewer', '827ccb0eea8a706c4c34a16891f84e7b', 'Aku Reviewer', 'reviewer@gmail.com', 'default.jpg', '2020-05-10 01:37:54', NULL, 1),
(6, 'reviewer2', '827ccb0eea8a706c4c34a16891f84e7b', 'saya reviewer', 'reviewer2@gmail.com', 'default.jpg', '2020-05-10 01:38:08', NULL, 1),
(7, 'reviewer3', '827ccb0eea8a706c4c34a16891f84e7b', 'reviewer juga', 'reviewer3@gmail.com', 'default.jpg', '2020-05-10 01:38:26', NULL, 1),
(8, 'reviewer4', '827ccb0eea8a706c4c34a16891f84e7b', 'ini reviewer juga', 'reviewer4@gmail.com', 'default.jpg', '2020-05-10 01:39:03', NULL, 1),
(12, 'makelar', '827ccb0eea8a706c4c34a16891f84e7b', 'aku makelar', 'makelar@yahoo.com', 'default.jpg', '2020-05-10 02:21:51', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id_assign`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id_editor`);

--
-- Indexes for table `grup`
--
ALTER TABLE `grup`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indexes for table `makelar`
--
ALTER TABLE `makelar`
  ADD PRIMARY KEY (`id_makelar`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`status`);

--
-- Indexes for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD PRIMARY KEY (`id_reviewer`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id_task`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id_assign` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `id_editor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grup`
--
ALTER TABLE `grup`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `makelar`
--
ALTER TABLE `makelar`
  MODIFY `id_makelar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviewer`
--
ALTER TABLE `reviewer`
  MODIFY `id_reviewer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
