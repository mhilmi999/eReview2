-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2020 at 04:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ereview4`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id_assign` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `id_reviewer` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `file_complete` varchar(500) DEFAULT NULL,
  `tgl_assign` date DEFAULT NULL,
  `tgl_deadline` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_assign` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id_assign`, `id_task`, `id_reviewer`, `status`, `file_complete`, `tgl_assign`, `tgl_deadline`, `date_created`, `date_updated`, `sts_assign`) VALUES
(139, 71, 13, 6, 'ETS.docx', '2020-05-13', '1970-01-01', '2020-05-13 05:07:08', '2020-05-13 05:07:08', 1),
(140, 72, 13, 6, 'ETS.docx', '2020-05-13', '1970-01-01', '2020-05-13 05:24:36', '2020-05-13 05:24:36', 1),
(141, 73, 5, 6, 'AftRvwd_Struct_MHilmiRamadhan.pdf', '2020-05-13', '1970-01-01', '2020-05-13 06:44:11', '2020-05-13 06:44:11', 1),
(142, 74, 5, 6, 'Aft_rvwdAgama_Hilmi.pdf', '2020-05-13', '1970-01-01', '2020-05-13 07:09:08', '2020-05-13 07:09:08', 1),
(143, 75, 5, 3, NULL, '2020-05-17', '2020-05-17', '2020-05-17 06:00:16', '2020-05-17 06:00:16', 1),
(144, 76, 5, 6, 'Aft_Rvwd_PATP_100_PROGRAM_EVELYN_TJITRODJOJO_.pdf', '2020-05-17', '1970-01-01', '2020-05-17 12:57:17', '2020-05-17 12:57:17', 1),
(145, 77, 5, 6, 'AftRvwd_91-100[100PE].docx', '2020-05-17', '1970-01-01', '2020-05-17 13:40:42', '2020-05-17 13:40:42', 1),
(146, 78, 5, 6, 'Aft_Rvwd_PATP_100_PROGRAM_EVELYN_TJITRODJOJO_.pdf', '2020-05-18', '1970-01-01', '2020-05-18 07:47:24', '2020-05-18 07:47:24', 1);

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
(1, 1, '2020-03-28 08:35:31', '2020-03-28 08:35:31', 1),
(3, 15, '2020-05-07 13:55:10', '2020-05-07 13:55:10', 1),
(4, 16, '2020-05-07 15:09:50', '2020-05-07 15:09:50', 1),
(5, 17, '2020-05-07 15:11:06', '2020-05-07 15:11:06', 1),
(6, 18, '2020-05-07 15:21:37', '2020-05-07 15:21:37', 1),
(7, 19, '2020-05-07 15:22:10', '2020-05-07 15:22:10', 1),
(8, 20, '2020-05-09 02:10:59', '2020-05-09 02:10:59', 1),
(9, 21, '2020-05-09 02:11:40', '2020-05-09 02:11:40', 1),
(10, 22, '2020-05-09 02:16:58', '2020-05-09 02:16:58', 1),
(11, 23, '2020-05-09 02:17:31', '2020-05-09 02:17:31', 1),
(12, 24, '2020-05-09 02:19:56', '2020-05-09 02:19:56', 1),
(13, 25, '2020-05-09 02:22:46', '2020-05-09 02:22:46', 1),
(27, 27, '2020-05-09 06:00:31', '2020-05-09 06:00:31', 1),
(29, 28, '2020-05-12 01:20:28', '2020-05-12 01:20:28', 1),
(30, 31, '2020-05-12 12:18:42', '2020-05-12 12:18:42', 1),
(31, 40, '2020-05-16 06:49:51', '2020-05-16 06:49:51', 1),
(32, 41, '2020-05-17 12:52:37', '2020-05-17 12:52:37', 1),
(33, 42, '2020-05-17 13:36:46', '2020-05-17 13:36:46', 1),
(34, 43, '2020-05-18 07:44:32', '2020-05-18 07:44:32', 1);

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
(1, 30, '2020-05-12 07:59:34', NULL, 1);

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
(1, 1, 1, 1, '2020-03-28 08:34:57', '2020-03-28 08:34:57'),
(2, 2, 2, 1, '2020-03-28 08:35:31', '2020-03-28 08:35:31'),
(3, 3, 3, 1, '2020-03-28 13:47:03', '2020-03-28 13:47:03'),
(4, 1, 4, 1, '2020-03-28 14:24:29', '2020-03-28 14:24:29'),
(5, 2, 5, 1, '2020-03-28 14:26:07', '2020-03-28 14:26:07'),
(6, 3, 6, 1, '2020-03-28 14:30:26', '2020-03-28 14:30:26'),
(7, 3, 7, 1, '2020-03-28 14:48:09', '2020-03-28 14:48:09'),
(8, 1, 8, 1, '2020-03-29 00:18:42', '2020-03-29 00:18:42'),
(9, 1, 9, 1, '2020-03-29 09:30:49', '2020-03-29 09:30:49'),
(10, 1, 10, 1, '2020-03-29 09:34:04', '2020-03-29 09:34:04'),
(11, 0, 14, 1, '2020-04-17 10:04:44', '2020-04-17 10:04:44'),
(12, 1, 15, 1, '2020-05-07 13:55:10', '2020-05-07 13:55:10'),
(13, 1, 16, 1, '2020-05-07 15:09:50', '2020-05-07 15:09:50'),
(14, 1, 17, 1, '2020-05-07 15:11:06', '2020-05-07 15:11:06'),
(15, 1, 18, 1, '2020-05-07 15:21:37', '2020-05-07 15:21:37'),
(16, 1, 19, 1, '2020-05-07 15:22:11', '2020-05-07 15:22:11'),
(17, 1, 20, 1, '2020-05-09 02:10:59', '2020-05-09 02:10:59'),
(18, 1, 21, 1, '2020-05-09 02:11:40', '2020-05-09 02:11:40'),
(19, 1, 22, 1, '2020-05-09 02:16:58', '2020-05-09 02:16:58'),
(20, 1, 23, 1, '2020-05-09 02:17:31', '2020-05-09 02:17:31'),
(21, 1, 24, 1, '2020-05-09 02:19:56', '2020-05-09 02:19:56'),
(22, 1, 25, 1, '2020-05-09 02:22:46', '2020-05-09 02:22:46'),
(23, 2, 26, 1, '2020-05-09 04:11:58', '2020-05-09 04:11:58'),
(24, 1, 27, 1, '2020-05-09 06:00:31', '2020-05-09 06:00:31'),
(25, 1, 28, 1, '2020-05-12 01:20:28', '2020-05-12 01:20:28'),
(26, 2, 29, 1, '2020-05-12 01:24:31', '2020-05-12 01:24:31'),
(27, 3, 30, 1, '2020-05-12 08:12:23', NULL),
(28, 1, 31, 1, '2020-05-12 12:18:42', '2020-05-12 12:18:42'),
(29, 2, 38, 1, '2020-05-12 12:33:38', '2020-05-12 12:33:38'),
(30, 2, 39, 1, '2020-05-12 12:35:17', '2020-05-12 12:35:17'),
(31, 1, 40, 1, '2020-05-16 06:49:51', '2020-05-16 06:49:51'),
(32, 1, 41, 1, '2020-05-17 12:52:37', '2020-05-17 12:52:37'),
(33, 2, 41, 1, '2020-05-17 12:52:37', '2020-05-17 12:52:37'),
(34, 2, 42, 1, '2020-05-17 13:36:46', '2020-05-17 13:36:46'),
(35, 2, 42, 1, '2020-05-17 13:36:46', '2020-05-17 13:36:46'),
(36, 2, 43, 1, '2020-05-18 07:44:32', '2020-05-18 07:44:32'),
(37, 2, 43, 1, '2020-05-18 07:44:32', '2020-05-18 07:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `amount` float NOT NULL,
  `bukti` varchar(300) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `id_assign` int(4) NOT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_payment` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `amount`, `bukti`, `status`, `id_assign`, `date_created`, `date_updated`, `sts_payment`) VALUES
(32, 50000, '1589346484foto4.jpg', 0, 139, '2020-05-13 05:08:04', NULL, 1),
(33, 30000, '1589347542foto4.jpg', 0, 140, '2020-05-13 05:25:42', NULL, 1),
(34, 70000, '1589352599google.jpg', 0, 141, '2020-05-13 06:49:59', NULL, 1),
(35, 20000, '1589353828google.jpg', 0, 142, '2020-05-13 07:10:28', NULL, 1),
(36, 1000000, '158972085320190919_182606.jpg', 0, 144, '2020-05-17 13:07:33', NULL, 1),
(37, 500000, '15897232241589353828google.jpg', 0, 145, '2020-05-17 13:47:04', NULL, 1),
(38, 500000, '15897883861589353828google.jpg', 0, 146, '2020-05-18 07:53:06', NULL, 1);

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
(2, 'On Progress', '2020-05-10 12:34:08', '2020-05-09 14:35:20', 1),
(3, 'Rejected', '2020-05-10 12:34:16', '2020-05-09 14:35:51', 1),
(4, 'Waiting Payment', '2020-05-09 14:36:15', '2020-05-09 14:36:15', 1),
(5, 'Checking Payment', '2020-05-12 14:59:02', '2020-05-09 14:36:29', 1),
(6, 'Completed', '2020-05-12 15:00:00', '2020-05-12 14:59:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

CREATE TABLE `reviewer` (
  `id_reviewer` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_rek` int(11) NOT NULL,
  `kompetensi` text NOT NULL,
  `saldo` int(11) NOT NULL DEFAULT 0,
  `Sts_reviewer` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`id_reviewer`, `id_user`, `no_rek`, `kompetensi`, `saldo`, `Sts_reviewer`, `date_created`, `date_updated`) VALUES
(4, 6, 0, '', 0, 0, '2020-03-28 14:30:26', '2020-03-28 14:30:26'),
(5, 5, 254256680, '', 520000, 1, '2020-03-28 14:48:09', '2020-03-28 14:48:09'),
(10, 26, 0, '', 0, 1, '2020-05-09 04:11:58', '2020-05-09 04:11:58'),
(11, 29, 0, '', 0, 1, '2020-05-12 01:24:31', '2020-05-12 01:24:31'),
(12, 38, 481301971, 'tugas', 0, 1, '2020-05-12 12:33:38', '2020-05-12 12:33:38'),
(13, 39, 481301971, 'tugas', 50000, 1, '2020-05-12 12:35:17', '2020-05-12 12:35:17'),
(14, 41, 254256860, 'Information Technology', 0, 1, '2020-05-17 12:52:37', '2020-05-17 12:52:37'),
(15, 42, 254256000, 'Information Tech', 0, 1, '2020-05-17 13:36:46', '2020-05-17 13:36:46'),
(16, 43, 2147483647, 'Teknologi Informasi', 0, 1, '2020-05-18 07:44:32', '2020-05-18 07:44:32');

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
  `file_complete` varchar(500) DEFAULT NULL,
  `page` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_uploaded` timestamp NULL DEFAULT NULL,
  `sts_task` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id_task`, `judul`, `authors`, `keywords`, `file_location`, `id_editor`, `file_complete`, `page`, `price`, `date_created`, `date_uploaded`, `sts_task`) VALUES
(71, 'SPIDERMAN', 'editor2', 'tokoh', '1589346425_ETS_HETI_Naufal_Aprilian_M_M_05311940000007.docx', 31, NULL, 5, 50000, '2020-05-13 05:07:05', NULL, 0),
(72, 'SINGAPORE', 'editor2', 'negara', '1589347469_PATP_Naufal_Aprilian_Marsa_Mahendra_05311940000007.docx', 31, NULL, 3, 30000, '2020-05-13 05:24:29', NULL, 0),
(73, 'Struct and Pointer in C', 'Ramdhan,M.Hilmi', 'C Programming, Coding', '1589352247_Struct_dan_Pointer_Hilmi.pdf', 1, NULL, 7, 70000, '2020-05-13 06:44:07', NULL, 0),
(74, 'Agama Islam', 'Hilmi', 'ETS', '1589353745_Agama_Hilmi.pdf', 1, NULL, 2, 20000, '2020-05-13 07:09:05', NULL, 0),
(75, '100 Program C', 'Evelyn', 'C programming, EAS', '1589695212_PATP_100_PROGRAM_EVELYN_TJITRODJOJO.pdf', 1, NULL, 100, 1000000, '2020-05-17 06:00:12', NULL, 0),
(76, 'PATP 100 Program C', 'Ramadhan', 'Bahasa C, IT', '1589720172_PATP_100_PROGRAM_EVELYN_TJITRODJOJO.pdf', 41, NULL, 100, 1000000, '2020-05-17 12:56:12', NULL, 0),
(77, 'Program 91-100', 'Muhammad', 'Bahasa C, Coding', '1589722786_91-100[100PE].docx', 42, NULL, 50, 500000, '2020-05-17 13:39:46', NULL, 0),
(78, '100 Program C', 'Jujun', 'C programming, dasprog', '1589788013_PATP_100_PROGRAM_EVELYN_TJITRODJOJO.pdf', 43, NULL, 50, 500000, '2020-05-18 07:46:53', NULL, 0);

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
(1, 'hilmi', '827ccb0eea8a706c4c34a16891f84e7b', 'Ramadhan, M. Hilmi', 'hilmi.muhammad.rmdhn@gmail.com', 'hilmi.jpg', '2020-03-28 08:34:57', '2020-03-28 08:34:57', 1),
(2, 'mas', '827ccb0eea8a706c4c34a16891f84e7b', 'Mas', 'mas@admin.com', 'default.jpg', '2020-03-28 08:35:30', '2020-03-28 08:35:30', 1),
(3, 'putri', '827ccb0eea8a706c4c34a16891f84e7b', 'Putri', 'putri@admin.com', 'default.jpg', '2020-03-28 13:47:03', '2020-03-28 13:47:03', 1),
(4, 'mama', '827ccb0eea8a706c4c34a16891f84e7b', 'Hj. Annisa Threesia', 'mama@gmail.com', 'default.jpg', '2020-03-28 14:24:29', '2020-03-28 14:24:29', 1),
(5, 'abi', '827ccb0eea8a706c4c34a16891f84e7b', 'Ari Kurniawan, S.T.', 'abi@gmail.com', '158972085320190919_182606.jpg', '2020-03-28 14:26:07', '2020-03-28 14:26:07', 1),
(6, 'bucek', '827ccb0eea8a706c4c34a16891f84e7b', 'bucek', 'bucek@ymail.com', 'default.jpg', '2020-03-28 14:30:26', '2020-03-28 14:30:26', 1),
(7, 'anonim', '827ccb0eea8a706c4c34a16891f84e7b', 'anonim', 'anon@admin.com', 'default.jpg', '2020-03-28 14:48:09', '2020-03-28 14:48:09', 1),
(8, 'mamais', '827ccb0eea8a706c4c34a16891f84e7b', 'mamais', 'mamais@admin.com', 'default.jpg', '2020-03-29 00:18:42', '2020-03-29 00:18:42', 1),
(10, 'nesa', '827ccb0eea8a706c4c34a16891f84e7b', 'Arnesa Putri Ramadhani', 'nesa@gmail.com', '20190919_182606.jpg', '2020-03-29 09:34:04', '2020-03-29 09:34:04', 1),
(14, 'ram', '827ccb0eea8a706c4c34a16891f84e7b', 'Ram', 'ram@domain.com', 'default.jpg', '2020-04-17 10:04:44', '2020-04-17 10:04:44', 1),
(19, 'mihil', '827ccb0eea8a706c4c34a16891f84e7b', 'mihil', 'mhirumi99@gmail.com', 'crop_image.jpg', '2020-05-07 15:22:10', NULL, 1),
(25, 'hilmi3ditor', '827ccb0eea8a706c4c34a16891f84e7b', 'Hilmi Editor', 'hilmi@gmail.com', 'crop_image.jpg', '2020-05-09 02:22:46', NULL, 1),
(26, 'rahmadG', '827ccb0eea8a706c4c34a16891f84e7b', 'Rahmad Gumilar', 'rahmadReviewer@gmail.com', 'default.jpg', '2020-05-09 04:11:58', NULL, 1),
(27, 'gavin', '827ccb0eea8a706c4c34a16891f84e7b', 'Gavin Bagus', 'gavin@gundam.com', '20190919_1826061.jpg', '2020-05-09 06:00:31', NULL, 1),
(28, 'editor', '5aee9dbd2a188839105073571bee1b1f', 'editor', 'editor@gmail.com', 'foto2.jpg', '2020-05-12 01:20:28', NULL, 1),
(29, 'review', '1c67665285fb6a7d761414e12578e574', 'review', 'review@gmail.com', 'default.jpg', '2020-05-12 01:24:30', NULL, 1),
(30, 'makeelar', '3006eaf96499e543b171780fdf02f426', 'makeelar', 'makeelar@gmail.com', 'default.jpg', '2020-05-12 07:59:01', NULL, 1),
(31, 'editor2', '5aee9dbd2a188839105073571bee1b1f', 'editor2', 'editor2@gmail.com', 'default.jpg', '2020-05-12 12:18:41', NULL, 1),
(39, 'review2', '1c67665285fb6a7d761414e12578e574', 'review2', 'review2@gmail.com', 'default.jpg', '2020-05-12 12:35:17', NULL, 1),
(41, 'ramdhan', '827ccb0eea8a706c4c34a16891f84e7b', 'Ramadhan', 'ramdhan@gmail.com', 'default.jpg', '2020-05-17 12:52:37', NULL, 1),
(42, 'mhmmd', '6ccec4fc34e4f50079fd7817d3a01f8b', 'Muhammad', 'mhmmd@gmail.com', '158972085320190919_1826061.jpg', '2020-05-17 13:36:46', NULL, 1),
(43, 'junaidi', 'a9c7fa4c9583ccddcc2e65f95a07229d', 'Jujun Junaidi', 'junaidi@gmail.com', '20190919_1826061.jpg', '2020-05-18 07:44:32', NULL, 1);

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
  MODIFY `id_assign` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `id_editor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `grup`
--
ALTER TABLE `grup`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `makelar`
--
ALTER TABLE `makelar`
  MODIFY `id_makelar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviewer`
--
ALTER TABLE `reviewer`
  MODIFY `id_reviewer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
