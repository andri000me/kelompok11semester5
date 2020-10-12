-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2020 pada 09.13
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `id_activity` int(11) NOT NULL,
  `tgl_activity` datetime DEFAULT current_timestamp(),
  `keterangan` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `activity`
--

INSERT INTO `activity` (`id_activity`, `tgl_activity`, `keterangan`, `status`) VALUES
(48, '2020-05-12 05:01:18', 'Barang bernama l telah ditambah', 1),
(49, '2020-05-12 05:14:39', 'Tansaksi barang masuk dengan id=5 telah dihapus', 1),
(50, '2020-05-12 05:16:04', 'Transaksi barang keluar dengan id=7 telah dihapus', 1),
(51, '2020-05-12 05:49:13', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(52, '2020-05-12 05:49:13', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(53, '2020-05-12 05:49:13', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(54, '2020-05-12 05:49:13', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(55, '2020-05-12 05:49:21', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(56, '2020-05-12 05:49:21', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(57, '2020-05-12 05:49:21', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(58, '2020-05-12 05:49:21', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(59, '2020-05-12 05:50:31', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(60, '2020-05-12 05:50:31', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(61, '2020-05-13 04:03:16', 'Barang bernama iu telah ditambah', 1),
(62, '2020-05-13 04:06:05', 'Barang bernama hu telah diupdate', 1),
(63, '2020-05-13 04:06:46', 'Barang bernama l telah diupdate', 1),
(64, '2020-05-13 04:07:59', 'Barang bernama jj telah ditambah', 1),
(65, '2020-05-13 04:15:02', 'Barang bernama iu telah diupdate', 1),
(66, '2020-05-13 04:15:29', 'Barang bernama jj telah diupdate', 1),
(67, '2020-05-13 04:19:00', NULL, 1),
(68, '2020-05-13 04:19:15', NULL, 1),
(69, '2020-05-13 04:20:54', 'Barang bernama h telah ditambah', 1),
(70, '2020-05-13 04:21:04', 'Barang bernama h telah diupdate', 1),
(71, '2020-05-13 04:35:46', NULL, 1),
(72, '2020-05-13 04:36:19', NULL, 1),
(73, '2020-05-13 04:38:58', 'Barang bernama k telah ditambah', 1),
(74, '2020-05-13 04:39:23', 'Barang bernama k telah diupdate', 1),
(75, '2020-05-13 04:59:44', 'Barang bernama jj telah ditambah', 1),
(76, '2020-05-13 05:00:02', 'Barang bernama jj telah diupdate', 1),
(77, '2020-05-13 05:04:04', 'Barang bernama jeti telah ditambah', 1),
(78, '2020-05-13 05:06:27', 'Barang bernama jeti telah diupdate', 1),
(79, '2020-05-13 05:07:20', NULL, 1),
(80, '2020-05-13 05:07:43', NULL, 1),
(81, '2020-05-13 05:08:05', NULL, 1),
(82, '2020-05-13 08:32:13', 'Barang bernama i telah ditambah', 1),
(83, '2020-05-13 08:32:25', 'Barang bernama i telah diupdate', 1),
(84, '2020-05-13 08:32:30', 'Barang bernama PERMEN LOLLIPOP MAWAR 12 GR telah diupdate', 1),
(85, '2020-05-13 08:45:48', 'Barang bernama iu telah diupdate', 1),
(86, '2020-05-13 08:46:02', 'Barang bernamah telah dihapus', 1),
(87, '2020-05-13 08:46:09', NULL, 1),
(88, '2020-05-13 08:46:16', NULL, 1),
(89, '2020-05-13 08:46:51', NULL, 1),
(90, '2020-05-13 08:46:59', NULL, 1),
(91, '2020-05-13 08:47:06', NULL, 1),
(92, '2020-05-13 08:47:12', NULL, 1),
(93, '2020-05-13 08:47:33', NULL, 1),
(94, '2020-05-13 08:47:45', NULL, 1),
(95, '2020-05-13 08:47:59', NULL, 1),
(96, '2020-05-13 08:48:13', NULL, 1),
(97, '2020-05-13 08:48:32', NULL, 1),
(98, '2020-05-13 08:50:09', NULL, 1),
(99, '2020-05-13 08:58:13', NULL, 1),
(100, '2020-05-13 08:58:24', NULL, 1),
(101, '2020-05-13 08:59:29', NULL, 1),
(102, '2020-05-13 09:00:20', NULL, 1),
(103, '2020-05-13 09:00:41', NULL, 1),
(104, '2020-05-13 09:00:56', 'Barang bernama rr telah ditambah', 1),
(105, '2020-05-13 09:01:20', 'Barang bernama f telah ditambah', 1),
(106, '2020-05-13 09:02:45', 'Barang bernama ttt telah ditambah', 1),
(107, '2020-05-13 09:05:16', NULL, 1),
(108, '2020-05-13 09:05:44', 'Barang bernama rr telah diupdate', 1),
(109, '2020-05-13 09:07:23', NULL, 1),
(110, '2020-05-13 09:14:22', 'Barang bernama f telah diupdate', 1),
(111, '2020-05-13 09:14:50', 'Barang bernama ffq telah diupdate', 1),
(112, '2020-05-13 09:14:58', NULL, 1),
(113, '2020-05-13 09:15:12', 'Barang bernamaffq telah dihapus', 1),
(114, '2020-05-13 09:15:23', 'Barang bernama ttt telah diupdate', 1),
(115, '2020-05-13 09:15:35', 'Barang bernamattt telah dihapus', 1),
(116, '2020-05-14 11:00:16', 'Barang bernama timun telah ditambah', 1),
(117, '2020-05-17 13:57:27', 'Barang bernama timun telah diupdate', 1),
(118, '2020-05-17 14:02:58', 'Barang bernamatimun goreng telah dihapus', 1),
(119, '2020-06-01 06:52:12', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(120, '2020-06-01 06:52:12', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(121, '2020-06-01 06:52:12', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah diupdate', 1),
(122, '2020-06-01 06:52:12', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah diupdate', 1),
(123, '2020-06-01 08:07:23', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(124, '2020-06-01 08:07:23', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(125, '2020-06-01 08:09:14', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(126, '2020-06-01 08:09:14', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(127, '2020-06-01 08:12:20', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(128, '2020-06-01 08:12:20', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(129, '2020-06-01 08:12:41', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(130, '2020-06-01 08:12:41', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(131, '2020-06-01 08:12:56', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(132, '2020-06-01 08:12:56', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(133, '2020-06-01 08:39:25', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(134, '2020-06-01 08:39:25', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(135, '2020-06-01 08:39:46', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(136, '2020-06-01 08:39:46', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(137, '2020-06-01 08:40:05', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(138, '2020-06-01 08:40:05', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(139, '2020-06-01 08:40:24', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(140, '2020-06-01 08:40:24', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(141, '2020-06-01 08:42:52', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(142, '2020-06-01 08:44:07', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(143, '2020-06-01 08:45:02', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(144, '2020-06-01 08:45:34', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(145, '2020-06-01 08:46:06', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(146, '2020-06-01 08:46:51', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(147, '2020-06-01 08:53:14', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(148, '2020-06-01 08:53:43', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(149, '2020-06-01 08:54:01', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(150, '2020-06-01 09:29:07', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(151, '2020-06-01 09:29:07', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(152, '2020-06-01 09:29:07', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(153, '2020-06-01 09:29:07', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(154, '2020-06-01 09:29:53', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(155, '2020-06-01 09:29:53', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(156, '2020-06-01 09:29:53', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(157, '2020-06-01 09:29:53', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(158, '2020-06-02 12:11:15', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(159, '2020-06-02 12:11:15', 'Barang bernama POWDER PINK 100 GR telah diupdate', 1),
(160, '2020-06-02 12:32:29', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(161, '2020-06-02 12:32:29', 'Barang bernama SABUN CUSSONS BLUE 75 GR 75 GR telah diupdate', 1),
(162, '2020-06-04 10:13:55', 'Barang bernama KUKIS BUTTER 25.2 GR telah diupdate', 1),
(163, '2020-06-04 10:14:52', 'Barang bernama MIRANDA MC 15 telah diupdate', 1),
(164, '2020-06-04 10:16:16', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(165, '2020-06-04 10:16:52', 'Barang bernamaBUCKET KUKIS MAMAH 400 GR telah dihapus', 1),
(166, '2020-06-04 10:17:26', 'Barang bernamaBUCKET KUKIS MAMAH 400 GR telah dihapus', 1),
(167, '2020-06-04 10:17:36', 'Barang bernamaBUCKET KUKIS MAMAH 400 GR telah dihapus', 1),
(168, '2020-06-04 10:18:12', 'Barang bernamaBUCKET COCONUT 400 GR telah dihapus', 1),
(169, '2020-06-04 10:19:33', 'Transaksi barang keluar dengan id=23 telah dihapus', 1),
(170, '2020-06-04 10:21:03', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(171, '2020-06-04 10:21:03', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(172, '2020-06-04 10:21:43', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(173, '2020-06-04 10:21:43', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(174, '2020-06-04 10:24:05', 'Tansaksi barang masuk dengan id=1 telah dihapus', 1),
(175, '2020-06-04 10:24:30', 'Transaksi barang keluar dengan id=23 telah diubah', 1),
(176, '2020-06-04 10:27:09', 'Tansaksi barang masuk dengan id=11 telah ditambah', 1),
(177, '2020-06-04 10:27:09', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(178, '2020-06-04 10:29:15', 'Tansaksi barang masuk dengan id=12 telah ditambah', 1),
(179, '2020-06-04 10:33:12', 'Tansaksi barang keluar dengan id=24 telah ditambah', 1),
(180, '2020-06-04 10:36:41', 'Tansaksi barang keluar dengan id=24 telah diubah', 1),
(181, '2020-06-04 10:37:54', 'Tansaksi barang masuk dengan id=1 telah diubah', 1),
(182, '2020-06-04 10:37:59', 'Tansaksi barang masuk dengan id=1 telah diubah', 1),
(183, '2020-06-04 10:39:09', 'Tansaksi barang keluar dengan id=25 telah ditambah', 1),
(184, '2020-06-04 10:40:29', 'Tansaksi barang keluar dengan id=26 telah ditambah', 1),
(185, '2020-06-06 08:53:58', 'Supplier bernamaCV. KAWI telah dihapus', 1),
(186, '2020-06-06 09:23:04', 'Tansaksi barang keluar dengan id=27 telah ditambah', 1),
(187, '2020-06-06 09:23:30', 'Tansaksi barang keluar dengan id=28 telah ditambah', 1),
(188, '2020-06-06 09:31:04', 'Tansaksi barang keluar dengan id=29 telah ditambah', 1),
(189, '2020-06-06 09:31:31', 'Tansaksi barang keluar dengan id=30 telah ditambah', 1),
(190, '2020-06-06 09:32:45', 'Tansaksi barang keluar dengan id=31 telah ditambah', 1),
(191, '2020-06-06 09:33:38', 'Tansaksi barang keluar dengan id=32 telah ditambah', 1),
(192, '2020-06-06 09:37:07', 'Tansaksi barang keluar dengan id=33 telah ditambah', 1),
(193, '2020-06-06 09:41:44', 'Tansaksi barang keluar dengan id=36 telah ditambah', 1),
(194, '2020-06-06 09:44:02', 'Transaksi barang keluar dengan id=29 telah dihapus', 1),
(195, '2020-06-06 09:44:09', 'Transaksi barang keluar dengan id=28 telah dihapus', 1),
(196, '2020-06-06 09:45:40', 'Tansaksi barang keluar dengan id=27 telah dikonfirmasi', 1),
(197, '2020-06-06 09:45:40', 'Tansaksi barang keluar dengan id=27 telah dikonfirmasi', 1),
(198, '2020-06-06 09:45:53', 'Tansaksi barang keluar dengan id=6 telah dikonfirmasi', 1),
(199, '2020-06-06 09:45:59', 'Tansaksi barang keluar dengan id=25 telah dikonfirmasi', 1),
(200, '2020-06-06 09:46:02', 'Tansaksi barang keluar dengan id=2 telah dikonfirmasi', 1),
(201, '2020-06-06 09:46:02', 'Tansaksi barang keluar dengan id=2 telah dikonfirmasi', 1),
(202, '2020-06-06 09:56:50', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(203, '2020-06-06 10:05:55', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(204, '2020-06-06 10:05:59', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(205, '2020-06-06 10:06:22', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(206, '2020-06-06 10:08:48', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(207, '2020-06-06 10:08:52', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(208, '2020-06-06 10:09:34', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(209, '2020-06-06 10:10:36', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(210, '2020-06-06 10:23:01', 'Transaksi barang keluar dengan id=39 telah dihapus', 1),
(211, '2020-06-06 10:23:03', 'Transaksi barang keluar dengan id=39 telah dihapus', 1),
(212, '2020-06-06 10:23:04', 'Transaksi barang keluar dengan id=38 telah dihapus', 1),
(213, '2020-06-06 10:23:06', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(214, '2020-06-06 10:31:33', 'Transaksi barang keluar dengan id=40 telah dihapus', 1),
(215, '2020-06-06 10:36:03', 'Transaksi barang keluar dengan id=39 telah dihapus', 1),
(216, '2020-06-06 10:36:05', 'Transaksi barang keluar dengan id=38 telah dihapus', 1),
(217, '2020-06-06 10:39:22', 'Transaksi barang keluar dengan id=38 telah dihapus', 1),
(218, '2020-06-06 11:50:58', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(219, '2020-06-06 11:51:01', 'Transaksi barang keluar dengan id=3 telah dihapus', 1),
(220, '2020-06-07 11:10:05', 'Transaksi barang keluar dengan id=13 telah dihapus', 1),
(221, '2020-06-07 11:10:07', 'Transaksi barang keluar dengan id=13 telah dihapus', 1),
(222, '2020-06-07 11:10:29', 'Transaksi barang keluar dengan id=16 telah dihapus', 1),
(223, '2020-06-07 11:10:32', 'Transaksi barang keluar dengan id=15 telah dihapus', 1),
(224, '2020-06-07 11:10:34', 'Transaksi barang keluar dengan id=13 telah dihapus', 1),
(225, '2020-06-07 11:11:09', 'Transaksi barang keluar dengan id=42 telah dihapus', 1),
(226, '2020-06-07 11:11:11', 'Transaksi barang keluar dengan id=41 telah dihapus', 1),
(227, '2020-06-07 11:11:13', 'Transaksi barang keluar dengan id=40 telah dihapus', 1),
(228, '2020-06-07 11:11:14', 'Transaksi barang keluar dengan id=39 telah dihapus', 1),
(229, '2020-06-07 11:19:34', 'Transaksi barang keluar dengan id=38 telah dihapus', 1),
(230, '2020-06-07 11:20:21', 'Transaksi barang keluar dengan id=38 telah dihapus', 1),
(231, '2020-06-07 11:20:32', 'Transaksi barang keluar dengan id=38 telah dihapus', 1),
(232, '2020-06-07 11:20:35', 'Transaksi barang keluar dengan id=38 telah dihapus', 1),
(233, '2020-06-07 11:21:11', 'Transaksi barang keluar dengan id=44 telah dihapus', 1),
(234, '2020-06-08 05:28:34', 'Transaksi barang keluar dengan id=52 telah dihapus', 1),
(235, '2020-06-08 05:28:41', 'Transaksi barang keluar dengan id=53 telah dihapus', 1),
(236, '2020-06-09 06:02:17', 'Tansaksi barang masuk dengan id=17 telah ditambah', 1),
(237, '2020-06-20 06:14:31', 'Transaksi barang keluar dengan id=51 telah dihapus', 1),
(238, '2020-06-20 06:14:49', 'Tansaksi barang keluar dengan id=60 telah ditambah', 1),
(239, '2020-06-20 06:24:56', 'Transaksi barang keluar dengan id=61 telah dihapus', 1),
(240, '2020-06-20 06:29:39', 'Transaksi barang keluar dengan id=54 telah dihapus', 1),
(241, '2020-06-20 06:29:47', 'Transaksi barang keluar dengan id=46 telah dihapus', 1),
(242, '2020-06-20 06:30:10', 'Transaksi barang keluar dengan id=43 telah dihapus', 1),
(243, '2020-06-20 06:46:31', 'Transaksi barang keluar dengan id=8 telah dihapus', 1),
(244, '2020-06-20 06:48:37', 'Transaksi barang keluar dengan id=61 telah dihapus', 1),
(245, '2020-06-20 06:49:28', 'Transaksi barang keluar dengan id=55 telah dihapus', 1),
(246, '2020-06-20 06:50:00', 'Transaksi barang keluar dengan id=53 telah dihapus', 1),
(247, '2020-06-20 06:50:39', 'Transaksi barang keluar dengan id=51 telah dihapus', 1),
(248, '2020-06-20 07:20:57', 'Transaksi barang keluar dengan id=60 telah dihapus', 1),
(249, '2020-06-20 07:27:25', 'Transaksi barang keluar dengan id=46 telah dihapus', 1),
(250, '2020-06-20 07:29:11', 'Transaksi barang keluar dengan id=59 telah dihapus', 1),
(251, '2020-06-20 07:29:57', 'Transaksi barang keluar dengan id=50 telah dihapus', 1),
(252, '2020-06-20 07:30:41', 'Transaksi barang keluar dengan id=45 telah dihapus', 1),
(253, '2020-06-20 07:30:51', 'Transaksi barang keluar dengan id=36 telah dihapus', 1),
(254, '2020-06-20 07:31:02', 'Transaksi barang keluar dengan id=35 telah dihapus', 1),
(255, '2020-06-20 07:31:35', 'Transaksi barang keluar dengan id=26 telah dihapus', 1),
(256, '2020-06-20 07:32:52', 'Transaksi barang keluar dengan id=61 telah dihapus', 1),
(257, '2020-06-20 07:33:30', 'Transaksi barang keluar dengan id=61 telah dihapus', 1),
(258, '2020-06-20 07:33:45', 'Transaksi barang keluar dengan id=61 telah dihapus', 1),
(259, '2020-06-20 07:34:55', 'Transaksi barang keluar dengan id=61 telah dihapus', 1),
(260, '2020-06-20 07:38:35', 'Transaksi barang keluar dengan id=60 telah dihapus', 1),
(261, '2020-06-20 07:38:47', 'Transaksi barang keluar dengan id=61 telah dihapus', 1),
(262, '2020-06-20 07:38:55', 'Transaksi barang keluar dengan id=61 telah dihapus', 1),
(263, '2020-06-20 07:50:38', 'Transaksi barang keluar dengan id=37 telah dihapus', 1),
(264, '2020-06-20 07:54:18', 'Transaksi barang keluar dengan id=58 telah dihapus', 1),
(265, '2020-06-20 07:55:49', 'Transaksi barang keluar dengan id=59 telah dihapus', 1),
(266, '2020-06-20 07:55:57', 'Transaksi barang keluar dengan id=59 telah dihapus', 1),
(267, '2020-06-20 08:12:54', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah ditambah', 1),
(268, '2020-06-20 08:12:54', 'Barang bernama BUCKET COCONUT 400 GR telah ditambah', 1),
(269, '2020-06-20 08:12:54', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah ditambah', 1),
(270, '2020-06-20 08:12:54', 'Barang bernama BUCKET MOCHACINO 400 GR telah ditambah', 1),
(271, '2020-06-20 08:12:54', 'Barang bernama BUCKET MILKY VANILA 400 GR telah ditambah', 1),
(272, '2020-06-20 08:12:54', 'Barang bernama MAJORICO BANANA 300 GR telah ditambah', 1),
(273, '2020-06-20 08:12:54', 'Barang bernama MAJORICO MATCHA 300 GR telah ditambah', 1),
(274, '2020-06-20 08:12:54', 'Barang bernama MAJORICO CHOCOLATE 300 GR telah ditambah', 1),
(275, '2020-06-20 08:12:54', 'Barang bernama KUKIS N KRIM STRAWBERY 400 GR telah ditambah', 1),
(276, '2020-06-20 08:12:54', 'Barang bernama SABUN CUSSONS PINK 75 GR telah ditambah', 1),
(277, '2020-06-20 08:12:54', 'Barang bernama SABUN CUSSONS BLUE 75 GR 75 GR telah ditambah', 1),
(278, '2020-06-20 08:12:54', 'Barang bernama POWDER PINK 50 GR telah ditambah', 1),
(279, '2020-06-20 08:12:54', 'Barang bernama POWDER BLUE 50 GR telah ditambah', 1),
(280, '2020-06-20 08:12:54', 'Barang bernama POWDER PINK 100 GR telah ditambah', 1),
(281, '2020-06-20 08:12:54', 'Barang bernama POWDER BLUE 100 GR telah ditambah', 1),
(282, '2020-06-20 08:12:54', 'Barang bernama POWDER PINK 200 GR telah ditambah', 1),
(283, '2020-06-20 08:12:54', 'Barang bernama POWDER BLUE 200 GR telah ditambah', 1),
(284, '2020-06-20 08:12:54', 'Barang bernama POWDER UNGU 200 GR telah ditambah', 1),
(285, '2020-06-20 08:12:54', 'Barang bernama POWDER KUNING 50 GR telah ditambah', 1),
(286, '2020-06-20 08:12:54', 'Barang bernama POWDER KUNING 100 GR telah ditambah', 1),
(287, '2020-06-20 08:12:54', 'Barang bernama POWDER UNGU 50 GR telah ditambah', 1),
(288, '2020-06-20 08:12:54', 'Barang bernama SABUN CUSSONS UNGU 75 GR telah ditambah', 1),
(289, '2020-06-20 08:12:54', 'Barang bernama POWDER UNGU 100 GR telah ditambah', 1),
(290, '2020-06-20 08:12:54', 'Barang bernama GELAS TEH KMPG MANIS telah ditambah', 1),
(291, '2020-06-20 08:12:54', 'Barang bernama GELAS KOPI UANG MAS 1 KG telah ditambah', 1),
(292, '2020-06-20 08:12:54', 'Barang bernama KUKIS KELAPA 13,9 GR telah ditambah', 1),
(293, '2020-06-20 08:12:54', 'Barang bernama KUKIS MOCHACINO 13,9 GR 6 x 120 telah ditambah', 1),
(294, '2020-06-20 08:12:54', 'Barang bernama KUKIS VANILLA 13,9 GR 6 X 120 telah ditambah', 1),
(295, '2020-06-20 08:12:54', 'Barang bernama KUKIS BUTTER 300 GR telah ditambah', 1),
(296, '2020-06-20 08:12:54', 'Barang bernama KUKIS KELAPA 300 GR telah ditambah', 1),
(297, '2020-06-20 08:12:54', 'Barang bernama KUKIS MOCHACINO 300 GR telah ditambah', 1),
(298, '2020-06-20 08:12:54', 'Barang bernama KUKIS VANILLA 300 GR telah ditambah', 1),
(299, '2020-06-20 08:12:54', 'Barang bernama KUKIS BUTTER 90 GR telah ditambah', 1),
(300, '2020-06-20 08:12:54', 'Barang bernama KUKIS KELAPA 90 GR telah ditambah', 1),
(301, '2020-06-20 08:12:54', 'Barang bernama KUKIS MOCHACINO 90 GR telah ditambah', 1),
(302, '2020-06-20 08:12:54', 'Barang bernama KUKIS VANILLA 90 GR telah ditambah', 1),
(303, '2020-06-20 08:12:54', 'Barang bernama KUKIS WHITE COFFEE 13 GR 6 x 120 telah ditambah', 1),
(304, '2020-06-20 08:12:54', 'Barang bernama KUKIS ROLL WHITE COFFEE 90 GR telah ditambah', 1),
(305, '2020-06-20 08:12:54', 'Barang bernama KUKIS WHITE COFFEE 300 GR telah ditambah', 1),
(306, '2020-06-20 08:12:54', 'Barang bernama KUKIS BUTTER 70 GR telah ditambah', 1),
(307, '2020-06-20 08:12:54', 'Barang bernama KUKIS MOCHACINO 70 GR telah ditambah', 1),
(308, '2020-06-20 08:12:54', 'Barang bernama KUKIS KELAPA 70 GR telah ditambah', 1),
(309, '2020-06-20 08:12:54', 'Barang bernama KUKIS KELAPA 12 GR telah ditambah', 1),
(310, '2020-06-20 08:12:54', 'Barang bernama KUKIS BUTTER 12 GR telah ditambah', 1),
(311, '2020-06-20 08:12:54', 'Barang bernama KUKIS MOCHACINO 12 GR telah ditambah', 1),
(312, '2020-06-20 08:12:54', 'Barang bernama KUKIS VANILLA 12 GR telah ditambah', 1),
(313, '2020-06-20 08:12:54', 'Barang bernama KUKIS WHITE COFFEE 12 GR telah ditambah', 1),
(314, '2020-06-20 08:12:54', 'Barang bernama KUKIS VANILLA 70 GR telah ditambah', 1),
(315, '2020-06-20 08:12:54', 'Barang bernama KUKIS BANANA 12 GR telah ditambah', 1),
(316, '2020-06-20 08:12:54', 'Barang bernama KUKIS KELAPA 25.2 GR telah ditambah', 1),
(317, '2020-06-20 08:12:54', 'Barang bernama KUKIS BUTTER 25.2 GR telah ditambah', 1),
(318, '2020-06-20 08:12:54', 'Barang bernama KUKIS MOCHACINO 25.2 GR telah ditambah', 1),
(319, '2020-06-20 08:12:54', 'Barang bernama KUKIS VANILLA 25.2 GR telah ditambah', 1),
(320, '2020-06-20 08:12:54', 'Barang bernama KUKIS WHITE COFFEE 25.2 GR telah ditambah', 1),
(321, '2020-06-20 08:12:54', 'Barang bernama KUKIS KELAPA 218 GR telah ditambah', 1),
(322, '2020-06-20 08:12:54', 'Barang bernama KUKIS BUTTER 218 GR telah ditambah', 1),
(323, '2020-06-20 08:12:54', 'Barang bernama KUKIS MOCHACINO 218 GR telah ditambah', 1),
(324, '2020-06-20 08:12:54', 'Barang bernama  KUKIS VANILLA 218 GR telah ditambah', 1),
(325, '2020-06-20 08:12:54', 'Barang bernama MONI CHOCO RING 11.5 GR telah ditambah', 1),
(326, '2020-06-20 08:12:54', 'Barang bernama KUKIS HELLO 11.5 GR telah ditambah', 1),
(327, '2020-06-20 08:12:54', 'Barang bernama MONSTA CHOCOCHIP 9 GR telah ditambah', 1),
(328, '2020-06-20 08:12:54', 'Barang bernama ROSE CREAM COKLAT 260 GR telah ditambah', 1),
(329, '2020-06-20 08:12:54', 'Barang bernama ROSE CREAM LEMON 260 GR telah ditambah', 1),
(330, '2020-06-20 08:12:54', 'Barang bernama ROSE CREAM NANAS 260 GR telah ditambah', 1),
(331, '2020-06-20 08:12:54', 'Barang bernama ROSE CREAM COKLAT 23 GR telah ditambah', 1),
(332, '2020-06-20 08:12:54', 'Barang bernama ROSE CREAM LEMON 23 GR telah ditambah', 1),
(333, '2020-06-20 08:12:54', 'Barang bernama MONTEGO COKLAT 50 GR telah ditambah', 1),
(334, '2020-06-20 08:12:54', 'Barang bernama MONTEGO COKLAT 17 GR telah ditambah', 1),
(335, '2020-06-20 08:12:54', 'Barang bernama NARITA MARI SUSU ROLL 150 GR telah ditambah', 1),
(336, '2020-06-20 08:12:54', 'Barang bernama MONTEGP BUTTER 17 GR telah ditambah', 1),
(337, '2020-06-20 08:12:54', 'Barang bernama MONTEGO FUN DOUBLE CHOCO telah ditambah', 1),
(338, '2020-06-20 08:12:54', 'Barang bernama MARI SUSU MADU 12 GR telah ditambah', 1),
(339, '2020-06-20 08:12:54', 'Barang bernama MARI SUSU MADU 100 GR telah ditambah', 1),
(340, '2020-06-20 08:12:54', 'Barang bernama MARI SUSU MADU 180 GR telah ditambah', 1),
(341, '2020-06-20 08:12:54', 'Barang bernama MALKIST SUSU 14.5 GR telah ditambah', 1),
(342, '2020-06-20 08:12:54', 'Barang bernama MALKIST SUSU 238 GR telah ditambah', 1),
(343, '2020-06-20 08:12:54', 'Barang bernama MALKIST SUSU 108 GR telah ditambah', 1),
(344, '2020-06-20 08:12:54', 'Barang bernama CRACKERS BUTTER 262 GR telah ditambah', 1),
(345, '2020-06-20 08:12:54', 'Barang bernama MALKIST OLEZZ 20 GR telah ditambah', 1),
(346, '2020-06-20 08:12:54', 'Barang bernama MALKIST GARLIC 12 GR telah ditambah', 1),
(347, '2020-06-20 08:12:54', 'Barang bernama GARLIC SEDAP 108 GR telah ditambah', 1),
(348, '2020-06-20 08:12:54', 'Barang bernama GARLIC SEDAP 208 GR telah ditambah', 1),
(349, '2020-06-20 08:12:54', 'Barang bernama MALKIST SUSU 25 GR telah ditambah', 1),
(350, '2020-06-20 08:12:54', 'Barang bernama GARLIC BREADCRACKERS 24 GR telah ditambah', 1),
(351, '2020-06-20 08:12:54', 'Barang bernama MARI SUSU MADU 24 GR telah ditambah', 1),
(352, '2020-06-20 08:12:54', 'Barang bernama CRACKERS 132 GR telah ditambah', 1),
(353, '2020-06-20 08:12:54', 'Barang bernama ABC CRACKERS CHOCO 12 GR telah ditambah', 1),
(354, '2020-06-20 08:12:54', 'Barang bernama RIMBA CHOCO CRACKERS 12 GR telah ditambah', 1),
(355, '2020-06-20 08:12:54', 'Barang bernama OLEZZ CHEESE CHOCO 10 GR telah ditambah', 1),
(356, '2020-06-20 08:12:54', 'Barang bernama OLEZZ CHEESE CHOCO 100 GR telah ditambah', 1),
(357, '2020-06-20 08:12:54', 'Barang bernama OLEZZ CHOCO PARTY 10 GR telah ditambah', 1),
(358, '2020-06-20 08:12:54', 'Barang bernama OLEZZ CHOCO PARTY 100 GR telah ditambah', 1),
(359, '2020-06-20 08:12:54', 'Barang bernama MALKIST SUSU 12 GR telah ditambah', 1),
(360, '2020-06-20 08:12:54', 'Barang bernama SUPERCREAM BON-BON 200 GR telah ditambah', 1),
(361, '2020-06-20 08:12:54', 'Barang bernama SUPERCREAM NANAS 200 GR telah ditambah', 1),
(362, '2020-06-20 08:12:54', 'Barang bernama SUPERCREAM STRAWBERI 200 GR telah ditambah', 1),
(363, '2020-06-20 08:12:54', 'Barang bernama SUPERCREAM ORANGE 200 GR telah ditambah', 1),
(364, '2020-06-20 08:12:54', 'Barang bernama SUPERCREAM BON-BON 46 GR telah ditambah', 1),
(365, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA GUAVA CAN 320 ML telah ditambah', 1),
(366, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA STRAWBERRY CAN 320 ML telah ditambah', 1),
(367, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA LECCI CAN 320 ML telah ditambah', 1),
(368, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA MELON CAN 320 ML telah ditambah', 1),
(369, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ORANGE CAN 320 ML telah ditambah', 1),
(370, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANGGUR CAN 320 ML telah ditambah', 1),
(371, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA APEL CAN 320 ML telah ditambah', 1),
(372, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA MARKISA 320 ML telah ditambah', 1),
(373, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA TIMUN SURI CAN 320 ML telah ditambah', 1),
(374, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA KURMA & TIN CAN 320 ML telah ditambah', 1),
(375, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA JERUK NIPIS 320 ML telah ditambah', 1),
(376, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANAK ORANGE CAN 250 ML telah ditambah', 1),
(377, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANAK LECCI CAN 250 ML telah ditambah', 1),
(378, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANAK STRAWBERRY CAN 250 ML telah ditambah', 1),
(379, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET ANAK 200 ML telah ditambah', 1),
(380, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANAK PET FROZEN APEL 250 ML telah ditambah', 1),
(381, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANAK PET BLACKBURN 250 ML telah ditambah', 1),
(382, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANAK PER ORANGE 250 ML telah ditambah', 1),
(383, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANAK PET LECI 250 ML telah ditambah', 1),
(384, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA ANAK PET DISNEY 250 ML telah ditambah', 1),
(385, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET 200 ML telah ditambah', 1),
(386, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET 500 ML telah ditambah', 1),
(387, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET GUAVA 320 ML telah ditambah', 1),
(388, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET LECCI 320 ML telah ditambah', 1),
(389, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET ORANGE 320 ML telah ditambah', 1),
(390, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET STRAWBERRY 320 ML telah ditambah', 1),
(391, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET JERUK NIPIS 320 ML telah ditambah', 1),
(392, '2020-06-20 08:12:54', 'Barang bernama KAKI TIGA PET MELON 320 ML telah ditambah', 1),
(393, '2020-06-20 08:12:54', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 90 GR telah ditambah', 1),
(394, '2020-06-20 08:12:54', 'Barang bernama MAJESTIC MIX BARRIES 90 GR telah ditambah', 1),
(395, '2020-06-20 08:12:54', 'Barang bernama MAJESTIC WAFER POPCORN 90 GR telah ditambah', 1),
(396, '2020-06-20 08:12:54', 'Barang bernama MAJESTIC WAFER POPCORN 53.5 GR telah ditambah', 1),
(397, '2020-06-20 08:12:54', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 53.5 GR telah ditambah', 1),
(398, '2020-06-20 08:12:54', 'Barang bernama CHOCOLATE WAFER 145 GR telah ditambah', 1),
(399, '2020-06-20 08:12:54', 'Barang bernama MAJESTIC CHOCOLATE 90 GR telah ditambah', 1),
(400, '2020-06-20 08:12:54', 'Barang bernama MAJORICO CHOCOLATE 120 GR telah ditambah', 1),
(401, '2020-06-20 08:12:54', 'Barang bernama MAJORICO VANILA 120 GR telah ditambah', 1),
(402, '2020-06-20 08:12:54', 'Barang bernama SWEETY PANTS L1 telah ditambah', 1),
(403, '2020-06-20 08:12:54', 'Barang bernama SWEETY BRONZE L2 telah ditambah', 1),
(404, '2020-06-20 08:12:54', 'Barang bernama SWEETY PANTS M1 telah ditambah', 1),
(405, '2020-06-20 08:12:54', 'Barang bernama SWEETY BRONZE M2 telah ditambah', 1),
(406, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 1 telah ditambah', 1),
(407, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 2 telah ditambah', 1),
(408, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 3 telah ditambah', 1),
(409, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 4 telah ditambah', 1),
(410, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 5 telah ditambah', 1),
(411, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 6 telah ditambah', 1),
(412, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 7 telah ditambah', 1),
(413, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 8 telah ditambah', 1),
(414, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 9 telah ditambah', 1),
(415, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 10 telah ditambah', 1),
(416, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 11 telah ditambah', 1),
(417, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 12 telah ditambah', 1),
(418, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 13 telah ditambah', 1),
(419, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 14 telah ditambah', 1),
(420, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 15 telah ditambah', 1),
(421, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 16 telah ditambah', 1),
(422, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 17 telah ditambah', 1),
(423, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 18 telah ditambah', 1),
(424, '2020-06-20 08:12:54', 'Barang bernama MIRANDA MC 19 telah ditambah', 1),
(425, '2020-06-20 08:12:54', 'Barang bernama MINYAK DUNIA CUP 200 ML telah ditambah', 1),
(426, '2020-06-20 08:12:54', 'Barang bernama MINYAK DUNIA POUCH 900 ML telah ditambah', 1),
(427, '2020-06-20 08:12:54', 'Barang bernama MINYAK DUNIA POUCH 1800 ML telah ditambah', 1),
(428, '2020-06-20 08:12:54', 'Barang bernama MINYAK DUNIA JERRYCAN 4500 ML telah ditambah', 1),
(429, '2020-06-20 08:12:54', 'Barang bernama MINYAK DAMAI PUOCH 1000 ML telah ditambah', 1),
(430, '2020-06-20 08:12:54', 'Barang bernama MINYAK DAMAI POUCH 2000 ML telah ditambah', 1),
(431, '2020-06-20 08:12:54', 'Barang bernama PANDA GRASS JELLY CAN 310 ML telah ditambah', 1),
(432, '2020-06-20 08:12:54', 'Barang bernama PANDA LT REGULAR CAN 310 ML telah ditambah', 1),
(433, '2020-06-20 08:12:54', 'Barang bernama PANTHER FRUIT CUP 175 ML telah ditambah', 1),
(434, '2020-06-20 08:12:54', 'Barang bernama PANTHER ENERGY LAVA NLAST 250 ML telah ditambah', 1),
(435, '2020-06-20 08:12:54', 'Barang bernama PANTHER ENERGY POWER RED 250 ML telah ditambah', 1),
(436, '2020-06-20 08:12:54', 'Barang bernama GANTUNGAN PERMEN telah ditambah', 1),
(437, '2020-06-20 08:12:54', 'Barang bernama PAGODA PERMEN telah ditambah', 1),
(438, '2020-06-20 08:12:54', 'Barang bernama PERMEN BUBUK ASAM COLA 12 GR telah ditambah', 1),
(439, '2020-06-20 08:12:54', 'Barang bernama PERMEN BUBUK ASAM ANGGUR 12 GR telah ditambah', 1),
(440, '2020-06-20 08:12:54', 'Barang bernama PERMEN BUBUK ASAM STROBERI 12 GR telah ditambah', 1),
(441, '2020-06-20 08:12:54', 'Barang bernama PERMEN LOLLIPOP STROBERI 10 GR telah ditambah', 1),
(442, '2020-06-20 08:12:54', 'Barang bernama PERMEN LOLLIPOP JERUK 10 GR telah ditambah', 1),
(443, '2020-06-20 08:12:54', 'Barang bernama PERMEN LOLLIPOP APEL 10 GR telah ditambah', 1),
(444, '2020-06-20 08:12:54', 'Barang bernama PERMEN LOLLIPOP MANGGA 10 GR telah ditambah', 1),
(445, '2020-06-20 08:12:54', 'Barang bernama PERMEN ICE CREAM STOBERI 12 GR telah ditambah', 1),
(446, '2020-06-20 08:12:54', 'Barang bernama PERMEN FINGER SPINNER 11 GR telah ditambah', 1),
(447, '2020-06-20 08:12:54', 'Barang bernama PERMEN LOLLIPOP MAWAR 12 GR telah ditambah', 1),
(448, '2020-06-20 08:12:54', 'Barang bernama SWEETY PANTS S1 telah ditambah', 1),
(449, '2020-06-20 08:12:54', 'Barang bernama TEH CELUP KAMPUNG MNS ASLI telah ditambah', 1),
(450, '2020-06-20 08:12:54', 'Barang bernama TEH KROSOS KAMPUNG MNS telah ditambah', 1),
(451, '2020-06-20 08:12:54', 'Barang bernama TEH KAMPUNG MELATI telah ditambah', 1),
(452, '2020-06-20 08:12:54', 'Barang bernama GELAS UANG EMAS telah ditambah', 1),
(453, '2020-06-20 08:12:54', 'Barang bernama LEPEK UANG EMAS telah ditambah', 1),
(454, '2020-06-20 08:12:54', 'Barang bernama UANG EMAS SPECIAL 30 GR telah ditambah', 1),
(455, '2020-06-20 08:12:54', 'Barang bernama UANG EMAS MERAH 1 KG telah ditambah', 1),
(456, '2020-06-20 08:12:54', 'Barang bernama UANG EMAS TOP 600 telah ditambah', 1),
(457, '2020-06-20 08:12:54', 'Barang bernama UANG EMAS SPECIAL 380 telah ditambah', 1),
(458, '2020-06-20 08:12:54', 'Barang bernama UANG EMAS SPECIAL 135 telah ditambah', 1),
(459, '2020-06-20 08:12:54', 'Barang bernama UANG EMAS SPECIAL 10 GR telah ditambah', 1),
(460, '2020-06-20 08:12:54', 'Barang bernama ULTRA TABUR RASA BALADO 100 GR telah ditambah', 1),
(461, '2020-06-20 08:12:54', 'Barang bernama ULTRA TBR RS SAMBAL BALADO 100 GR telah ditambah', 1),
(462, '2020-06-20 08:12:54', 'Barang bernama ULTRA TABUR RS JAGUNG BAKAR 100 GR telah ditambah', 1),
(463, '2020-06-20 08:12:54', 'Barang bernama ULTRA TABUR RS JAGUNG MANIS 100 GR telah ditambah', 1),
(464, '2020-06-20 08:12:54', 'Barang bernama ULTRA TABUR RS KEJU 100 GR telah ditambah', 1),
(465, '2020-06-20 08:12:54', 'Barang bernama ULTRA TABUR RS BARBQUE 100 GR telah ditambah', 1),
(466, '2020-06-20 08:12:54', 'Barang bernama ULTRA TABUR RS PEDAS MANIS 100 GR telah ditambah', 1),
(467, '2020-06-20 08:12:54', 'Barang bernama ULTRA AYAM BAWANG 100 GR telah ditambah', 1),
(468, '2020-06-20 08:12:54', 'Barang bernama ULTRA TABUR RS SAPI PANGGANG 100 GR telah ditambah', 1),
(469, '2020-06-20 08:12:54', 'Barang bernama ULTRA BALADO 900 GR telah ditambah', 1),
(470, '2020-06-20 08:12:54', 'Barang bernama ULTRA SAMBAL BALADO 900 GR telah ditambah', 1),
(471, '2020-06-20 08:12:54', 'Barang bernama ULTRA BARBEQUE 900 GR telah ditambah', 1),
(472, '2020-06-20 08:12:54', 'Barang bernama ULTRA EXTRA PEDAS 100 GR telah ditambah', 1),
(473, '2020-06-20 08:12:54', 'Barang bernama ULTRA BALADO PEDAS MANIS 900 GR telah ditambah', 1),
(474, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BLOSSOM/PINK 120 ML telah ditambah', 1),
(475, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BLISSFUL/ORANGE 120 ML telah ditambah', 1),
(476, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BREEZE/BIRU 120 ML telah ditambah', 1),
(477, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BIZARE/UNGU 120 ML telah ditambah', 1),
(478, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BLESS/MERAH 120 ML telah ditambah', 1),
(479, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BELLE/HIJAU 120 ML telah ditambah', 1),
(480, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BLOSSOM/PINK 60 ML telah ditambah', 1),
(481, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BREEZE/BIRU 60 ML telah ditambah', 1),
(482, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BIZARE/UNGU 60 ML telah ditambah', 1),
(483, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BLISFUL/ORANGE 60 ML telah ditambah', 1),
(484, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BLESS/MERAH 60 ML telah ditambah', 1),
(485, '2020-06-20 08:12:54', 'Barang bernama VIT BODY SCENT BELLE/HIJAU 60 ML telah ditambah', 1),
(486, '2020-06-20 08:12:54', 'Barang bernama YUPI STRAWBERRY 120 GR telah ditambah', 1),
(487, '2020-06-20 08:12:54', 'Barang bernama YUPI FRUTY PUFF 120 GR telah ditambah', 1),
(488, '2020-06-20 08:12:54', 'Barang bernama YUPI BABY BEAR 10 GR telah ditambah', 1),
(489, '2020-06-20 08:12:54', 'Barang bernama YUPI LITTLE STAR 10 GR telah ditambah', 1),
(490, '2020-06-20 08:12:54', 'Barang bernama YUPI GUMMY FANG 9 GR telah ditambah', 1),
(491, '2020-06-20 08:12:54', 'Barang bernama YUPI EXOTIC MANGO 10 GR telah ditambah', 1),
(492, '2020-06-20 08:12:54', 'Barang bernama YUPI BERRI BRONZ 8 GR telah ditambah', 1),
(493, '2020-06-20 08:12:54', 'Barang bernama YUPI ICE CREAM CONE 10 GR telah ditambah', 1),
(494, '2020-06-20 08:12:54', 'Barang bernama YUPI STRAWBERRY 125S TOPLES telah ditambah', 1),
(495, '2020-06-20 08:12:54', 'Barang bernama YUPI FRUTY COLA  8 GR telah ditambah', 1),
(496, '2020-06-20 08:12:54', 'Barang bernama YUPI GUMMY COOKIES 8 GR telah ditambah', 1),
(497, '2020-06-20 08:12:54', 'Barang bernama YUPI WOTTA MELON 8.5 GR telah ditambah', 1),
(498, '2020-06-20 08:12:54', 'Barang bernama YUPI JUST FOR FUN telah ditambah', 1),
(499, '2020-06-20 08:12:54', 'Barang bernama YUPI BURGER 8 GR telah ditambah', 1),
(500, '2020-06-20 08:12:54', 'Barang bernama YUPI ROLETTO 8 GR telah ditambah', 1),
(501, '2020-06-20 08:12:54', 'Barang bernama YUPI JUGLE FUN 8.5 GR telah ditambah', 1),
(502, '2020-06-20 08:12:54', 'Barang bernama YUPI CHOCO GLEE 7 GR telah ditambah', 1),
(503, '2020-06-20 08:12:54', 'Barang bernama YUPI DINO LAND 8 GR telah ditambah', 1),
(504, '2020-06-20 08:12:54', 'Barang bernama YUPI SEA WORLD 8.5 GR telah ditambah', 1),
(505, '2020-06-20 08:12:54', 'Barang bernama YUPI MARSHMALLOW TWIST 20 GR telah ditambah', 1),
(506, '2020-06-20 08:12:54', 'Barang bernama YUPI CALCI BEAN 16 GR 12 PCS / K telah ditambah', 1),
(507, '2020-06-20 08:12:54', 'Barang bernama YUPI GUMMY FRIES 15 GR telah ditambah', 1),
(508, '2020-06-20 08:12:54', 'Barang bernama YUPI PIZZA 15 GR telah ditambah', 1),
(509, '2020-06-20 08:12:54', 'Barang bernama YUPO FRUIT COCKTAIL 15 GR telah ditambah', 1),
(510, '2020-06-20 08:12:54', 'Barang bernama YUPI SEET HEART 15 GR telah ditambah', 1),
(511, '2020-06-20 08:12:54', 'Barang bernama YUPI AQUARIUM 15 GR telah ditambah', 1),
(512, '2020-06-20 08:12:54', 'Barang bernama YUPI FESTIVE EDITION 400 GR telah ditambah', 1),
(513, '2020-06-20 08:12:54', 'Barang bernama brian telah ditambah', 1),
(514, '2020-06-20 08:12:54', 'Barang bernama nevin telah ditambah', 1),
(515, '2020-06-20 17:45:47', 'Barang bernama YUPI EXOTIC MANGO 10 GR telah diupdate', 1),
(516, '2020-06-21 18:44:42', 'Barang bernama MALKIST SUSU 238 GR telah diupdate', 1),
(517, '2020-06-22 06:21:44', 'Barang bernama KUKIS N KRIM STRAWBERY 400 GR telah diupdate', 1),
(518, '2020-06-22 10:52:41', 'Barang bernama s telah ditambah', 1),
(519, '2020-06-22 11:04:04', 'Tansaksi barang masuk dengan id=18 telah ditambah', 1),
(520, '2020-06-22 11:04:22', 'Tansaksi barang masuk dengan id=6 telah dihapus', 1),
(521, '2020-06-22 11:04:49', 'Tansaksi barang masuk dengan id=6 telah dihapus', 1),
(522, '2020-06-22 11:06:47', 'Tansaksi barang masuk dengan id=5 telah dihapus', 1),
(523, '2020-06-22 11:07:42', 'Tansaksi barang masuk dengan id=7 telah dihapus', 1),
(524, '2020-06-22 11:08:09', 'Tansaksi barang masuk dengan id=8 telah dihapus', 1),
(525, '2020-06-22 11:08:11', 'Tansaksi barang masuk dengan id=9 telah dihapus', 1),
(526, '2020-06-22 11:08:12', 'Tansaksi barang masuk dengan id=10 telah dihapus', 1),
(527, '2020-06-22 11:08:14', 'Tansaksi barang masuk dengan id=11 telah dihapus', 1),
(528, '2020-06-22 11:08:18', 'Tansaksi barang masuk dengan id=18 telah dihapus', 1),
(529, '2020-06-22 11:08:19', 'Tansaksi barang masuk dengan id=17 telah dihapus', 1),
(530, '2020-06-22 11:08:21', 'Tansaksi barang masuk dengan id=12 telah dihapus', 1),
(531, '2020-06-22 11:08:38', 'Tansaksi barang masuk dengan id=19 telah ditambah', 1),
(532, '2020-06-22 11:12:40', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah ditambah', 1),
(533, '2020-06-22 11:12:40', 'Barang bernama BUCKET COCONUT 400 GR telah ditambah', 1),
(534, '2020-06-22 11:12:40', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah ditambah', 1),
(535, '2020-06-22 11:12:40', 'Barang bernama BUCKET MOCHACINO 400 GR telah ditambah', 1),
(536, '2020-06-22 11:12:40', 'Barang bernama BUCKET MILKY VANILA 400 GR telah ditambah', 1),
(537, '2020-06-22 11:12:40', 'Barang bernama MAJORICO BANANA 300 GR telah ditambah', 1),
(538, '2020-06-22 11:12:40', 'Barang bernama MAJORICO MATCHA 300 GR telah ditambah', 1),
(539, '2020-06-22 11:12:40', 'Barang bernama MAJORICO CHOCOLATE 300 GR telah ditambah', 1),
(540, '2020-06-22 11:12:40', 'Barang bernama KUKIS N KRIM STRAWBERY 400 GR telah ditambah', 1),
(541, '2020-06-22 11:12:40', 'Barang bernama SABUN CUSSONS PINK 75 GR telah ditambah', 1),
(542, '2020-06-22 11:12:40', 'Barang bernama SABUN CUSSONS BLUE 75 GR 75 GR telah ditambah', 1),
(543, '2020-06-22 11:12:40', 'Barang bernama POWDER PINK 50 GR telah ditambah', 1),
(544, '2020-06-22 11:12:40', 'Barang bernama POWDER BLUE 50 GR telah ditambah', 1),
(545, '2020-06-22 11:12:40', 'Barang bernama POWDER PINK 100 GR telah ditambah', 1),
(546, '2020-06-22 11:12:40', 'Barang bernama POWDER BLUE 100 GR telah ditambah', 1),
(547, '2020-06-22 11:12:40', 'Barang bernama POWDER PINK 200 GR telah ditambah', 1),
(548, '2020-06-22 11:12:40', 'Barang bernama POWDER BLUE 200 GR telah ditambah', 1),
(549, '2020-06-22 11:12:40', 'Barang bernama POWDER UNGU 200 GR telah ditambah', 1),
(550, '2020-06-22 11:12:40', 'Barang bernama POWDER KUNING 50 GR telah ditambah', 1),
(551, '2020-06-22 11:12:40', 'Barang bernama POWDER KUNING 100 GR telah ditambah', 1),
(552, '2020-06-22 11:12:40', 'Barang bernama POWDER UNGU 50 GR telah ditambah', 1),
(553, '2020-06-22 11:12:40', 'Barang bernama SABUN CUSSONS UNGU 75 GR telah ditambah', 1),
(554, '2020-06-22 11:12:40', 'Barang bernama POWDER UNGU 100 GR telah ditambah', 1),
(555, '2020-06-22 11:12:40', 'Barang bernama GELAS TEH KMPG MANIS telah ditambah', 1),
(556, '2020-06-22 11:12:40', 'Barang bernama GELAS KOPI UANG MAS 1 KG telah ditambah', 1),
(557, '2020-06-22 11:12:40', 'Barang bernama KUKIS KELAPA 13,9 GR telah ditambah', 1),
(558, '2020-06-22 11:12:40', 'Barang bernama KUKIS MOCHACINO 13,9 GR 6 x 120 telah ditambah', 1),
(559, '2020-06-22 11:12:40', 'Barang bernama KUKIS VANILLA 13,9 GR 6 X 120 telah ditambah', 1),
(560, '2020-06-22 11:12:40', 'Barang bernama KUKIS BUTTER 300 GR telah ditambah', 1),
(561, '2020-06-22 11:12:40', 'Barang bernama KUKIS KELAPA 300 GR telah ditambah', 1),
(562, '2020-06-22 11:12:40', 'Barang bernama KUKIS MOCHACINO 300 GR telah ditambah', 1),
(563, '2020-06-22 11:12:40', 'Barang bernama KUKIS VANILLA 300 GR telah ditambah', 1),
(564, '2020-06-22 11:12:40', 'Barang bernama KUKIS BUTTER 90 GR telah ditambah', 1),
(565, '2020-06-22 11:12:40', 'Barang bernama KUKIS KELAPA 90 GR telah ditambah', 1),
(566, '2020-06-22 11:12:40', 'Barang bernama KUKIS MOCHACINO 90 GR telah ditambah', 1),
(567, '2020-06-22 11:12:40', 'Barang bernama KUKIS VANILLA 90 GR telah ditambah', 1),
(568, '2020-06-22 11:12:40', 'Barang bernama KUKIS WHITE COFFEE 13 GR 6 x 120 telah ditambah', 1),
(569, '2020-06-22 11:12:40', 'Barang bernama KUKIS ROLL WHITE COFFEE 90 GR telah ditambah', 1),
(570, '2020-06-22 11:12:40', 'Barang bernama KUKIS WHITE COFFEE 300 GR telah ditambah', 1),
(571, '2020-06-22 11:12:40', 'Barang bernama KUKIS BUTTER 70 GR telah ditambah', 1),
(572, '2020-06-22 11:12:40', 'Barang bernama KUKIS MOCHACINO 70 GR telah ditambah', 1),
(573, '2020-06-22 11:12:40', 'Barang bernama KUKIS KELAPA 70 GR telah ditambah', 1),
(574, '2020-06-22 11:12:40', 'Barang bernama KUKIS KELAPA 12 GR telah ditambah', 1),
(575, '2020-06-22 11:12:40', 'Barang bernama KUKIS BUTTER 12 GR telah ditambah', 1),
(576, '2020-06-22 11:12:40', 'Barang bernama KUKIS MOCHACINO 12 GR telah ditambah', 1),
(577, '2020-06-22 11:12:40', 'Barang bernama KUKIS VANILLA 12 GR telah ditambah', 1),
(578, '2020-06-22 11:12:40', 'Barang bernama KUKIS WHITE COFFEE 12 GR telah ditambah', 1),
(579, '2020-06-22 11:12:40', 'Barang bernama KUKIS VANILLA 70 GR telah ditambah', 1),
(580, '2020-06-22 11:12:40', 'Barang bernama KUKIS BANANA 12 GR telah ditambah', 1),
(581, '2020-06-22 11:12:40', 'Barang bernama KUKIS KELAPA 25.2 GR telah ditambah', 1),
(582, '2020-06-22 11:12:40', 'Barang bernama KUKIS BUTTER 25.2 GR telah ditambah', 1),
(583, '2020-06-22 11:12:40', 'Barang bernama KUKIS MOCHACINO 25.2 GR telah ditambah', 1),
(584, '2020-06-22 11:12:40', 'Barang bernama KUKIS VANILLA 25.2 GR telah ditambah', 1),
(585, '2020-06-22 11:12:40', 'Barang bernama KUKIS WHITE COFFEE 25.2 GR telah ditambah', 1),
(586, '2020-06-22 11:12:40', 'Barang bernama KUKIS KELAPA 218 GR telah ditambah', 1),
(587, '2020-06-22 11:12:40', 'Barang bernama KUKIS BUTTER 218 GR telah ditambah', 1),
(588, '2020-06-22 11:12:40', 'Barang bernama KUKIS MOCHACINO 218 GR telah ditambah', 1),
(589, '2020-06-22 11:12:40', 'Barang bernama  KUKIS VANILLA 218 GR telah ditambah', 1),
(590, '2020-06-22 11:12:40', 'Barang bernama MONI CHOCO RING 11.5 GR telah ditambah', 1),
(591, '2020-06-22 11:12:40', 'Barang bernama KUKIS HELLO 11.5 GR telah ditambah', 1),
(592, '2020-06-22 11:12:40', 'Barang bernama MONSTA CHOCOCHIP 9 GR telah ditambah', 1),
(593, '2020-06-22 11:12:40', 'Barang bernama ROSE CREAM COKLAT 260 GR telah ditambah', 1),
(594, '2020-06-22 11:12:40', 'Barang bernama ROSE CREAM LEMON 260 GR telah ditambah', 1),
(595, '2020-06-22 11:12:40', 'Barang bernama ROSE CREAM NANAS 260 GR telah ditambah', 1),
(596, '2020-06-22 11:12:40', 'Barang bernama ROSE CREAM COKLAT 23 GR telah ditambah', 1),
(597, '2020-06-22 11:12:40', 'Barang bernama ROSE CREAM LEMON 23 GR telah ditambah', 1),
(598, '2020-06-22 11:12:40', 'Barang bernama MONTEGO COKLAT 50 GR telah ditambah', 1),
(599, '2020-06-22 11:12:40', 'Barang bernama MONTEGO COKLAT 17 GR telah ditambah', 1),
(600, '2020-06-22 11:12:40', 'Barang bernama NARITA MARI SUSU ROLL 150 GR telah ditambah', 1),
(601, '2020-06-22 11:12:40', 'Barang bernama MONTEGP BUTTER 17 GR telah ditambah', 1),
(602, '2020-06-22 11:12:40', 'Barang bernama MONTEGO FUN DOUBLE CHOCO telah ditambah', 1),
(603, '2020-06-22 11:12:40', 'Barang bernama MARI SUSU MADU 12 GR telah ditambah', 1),
(604, '2020-06-22 11:12:40', 'Barang bernama MARI SUSU MADU 100 GR telah ditambah', 1),
(605, '2020-06-22 11:12:40', 'Barang bernama MARI SUSU MADU 180 GR telah ditambah', 1),
(606, '2020-06-22 11:12:40', 'Barang bernama MALKIST SUSU 14.5 GR telah ditambah', 1),
(607, '2020-06-22 11:12:40', 'Barang bernama MALKIST SUSU 238 GR telah ditambah', 1),
(608, '2020-06-22 11:12:40', 'Barang bernama MALKIST SUSU 108 GR telah ditambah', 1),
(609, '2020-06-22 11:12:40', 'Barang bernama CRACKERS BUTTER 262 GR telah ditambah', 1),
(610, '2020-06-22 11:12:40', 'Barang bernama MALKIST OLEZZ 20 GR telah ditambah', 1),
(611, '2020-06-22 11:12:40', 'Barang bernama MALKIST GARLIC 12 GR telah ditambah', 1),
(612, '2020-06-22 11:12:40', 'Barang bernama GARLIC SEDAP 108 GR telah ditambah', 1),
(613, '2020-06-22 11:12:40', 'Barang bernama GARLIC SEDAP 208 GR telah ditambah', 1),
(614, '2020-06-22 11:12:40', 'Barang bernama MALKIST SUSU 25 GR telah ditambah', 1),
(615, '2020-06-22 11:12:40', 'Barang bernama GARLIC BREADCRACKERS 24 GR telah ditambah', 1),
(616, '2020-06-22 11:12:40', 'Barang bernama MARI SUSU MADU 24 GR telah ditambah', 1),
(617, '2020-06-22 11:12:40', 'Barang bernama CRACKERS 132 GR telah ditambah', 1),
(618, '2020-06-22 11:12:40', 'Barang bernama ABC CRACKERS CHOCO 12 GR telah ditambah', 1),
(619, '2020-06-22 11:12:40', 'Barang bernama RIMBA CHOCO CRACKERS 12 GR telah ditambah', 1),
(620, '2020-06-22 11:12:40', 'Barang bernama OLEZZ CHEESE CHOCO 10 GR telah ditambah', 1),
(621, '2020-06-22 11:12:40', 'Barang bernama OLEZZ CHEESE CHOCO 100 GR telah ditambah', 1),
(622, '2020-06-22 11:12:40', 'Barang bernama OLEZZ CHOCO PARTY 10 GR telah ditambah', 1),
(623, '2020-06-22 11:12:40', 'Barang bernama OLEZZ CHOCO PARTY 100 GR telah ditambah', 1),
(624, '2020-06-22 11:12:40', 'Barang bernama MALKIST SUSU 12 GR telah ditambah', 1),
(625, '2020-06-22 11:12:40', 'Barang bernama SUPERCREAM BON-BON 200 GR telah ditambah', 1),
(626, '2020-06-22 11:12:40', 'Barang bernama SUPERCREAM NANAS 200 GR telah ditambah', 1),
(627, '2020-06-22 11:12:40', 'Barang bernama SUPERCREAM STRAWBERI 200 GR telah ditambah', 1),
(628, '2020-06-22 11:12:40', 'Barang bernama SUPERCREAM ORANGE 200 GR telah ditambah', 1),
(629, '2020-06-22 11:12:40', 'Barang bernama SUPERCREAM BON-BON 46 GR telah ditambah', 1),
(630, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA GUAVA CAN 320 ML telah ditambah', 1),
(631, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA STRAWBERRY CAN 320 ML telah ditambah', 1),
(632, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA LECCI CAN 320 ML telah ditambah', 1),
(633, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA MELON CAN 320 ML telah ditambah', 1),
(634, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ORANGE CAN 320 ML telah ditambah', 1),
(635, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANGGUR CAN 320 ML telah ditambah', 1),
(636, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA APEL CAN 320 ML telah ditambah', 1),
(637, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA MARKISA 320 ML telah ditambah', 1),
(638, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA TIMUN SURI CAN 320 ML telah ditambah', 1),
(639, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA KURMA & TIN CAN 320 ML telah ditambah', 1),
(640, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA JERUK NIPIS 320 ML telah ditambah', 1),
(641, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANAK ORANGE CAN 250 ML telah ditambah', 1),
(642, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANAK LECCI CAN 250 ML telah ditambah', 1);
INSERT INTO `activity` (`id_activity`, `tgl_activity`, `keterangan`, `status`) VALUES
(643, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANAK STRAWBERRY CAN 250 ML telah ditambah', 1),
(644, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET ANAK 200 ML telah ditambah', 1),
(645, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANAK PET FROZEN APEL 250 ML telah ditambah', 1),
(646, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANAK PET BLACKBURN 250 ML telah ditambah', 1),
(647, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANAK PER ORANGE 250 ML telah ditambah', 1),
(648, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANAK PET LECI 250 ML telah ditambah', 1),
(649, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA ANAK PET DISNEY 250 ML telah ditambah', 1),
(650, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET 200 ML telah ditambah', 1),
(651, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET 500 ML telah ditambah', 1),
(652, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET GUAVA 320 ML telah ditambah', 1),
(653, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET LECCI 320 ML telah ditambah', 1),
(654, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET ORANGE 320 ML telah ditambah', 1),
(655, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET STRAWBERRY 320 ML telah ditambah', 1),
(656, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET JERUK NIPIS 320 ML telah ditambah', 1),
(657, '2020-06-22 11:12:40', 'Barang bernama KAKI TIGA PET MELON 320 ML telah ditambah', 1),
(658, '2020-06-22 11:12:40', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 90 GR telah ditambah', 1),
(659, '2020-06-22 11:12:40', 'Barang bernama MAJESTIC MIX BARRIES 90 GR telah ditambah', 1),
(660, '2020-06-22 11:12:40', 'Barang bernama MAJESTIC WAFER POPCORN 90 GR telah ditambah', 1),
(661, '2020-06-22 11:12:40', 'Barang bernama MAJESTIC WAFER POPCORN 53.5 GR telah ditambah', 1),
(662, '2020-06-22 11:12:40', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 53.5 GR telah ditambah', 1),
(663, '2020-06-22 11:12:40', 'Barang bernama CHOCOLATE WAFER 145 GR telah ditambah', 1),
(664, '2020-06-22 11:12:40', 'Barang bernama MAJESTIC CHOCOLATE 90 GR telah ditambah', 1),
(665, '2020-06-22 11:12:40', 'Barang bernama MAJORICO CHOCOLATE 120 GR telah ditambah', 1),
(666, '2020-06-22 11:12:40', 'Barang bernama MAJORICO VANILA 120 GR telah ditambah', 1),
(667, '2020-06-22 11:12:40', 'Barang bernama SWEETY PANTS L1 telah ditambah', 1),
(668, '2020-06-22 11:12:40', 'Barang bernama SWEETY BRONZE L2 telah ditambah', 1),
(669, '2020-06-22 11:12:40', 'Barang bernama SWEETY PANTS M1 telah ditambah', 1),
(670, '2020-06-22 11:12:40', 'Barang bernama SWEETY BRONZE M2 telah ditambah', 1),
(671, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 1 telah ditambah', 1),
(672, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 2 telah ditambah', 1),
(673, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 3 telah ditambah', 1),
(674, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 4 telah ditambah', 1),
(675, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 5 telah ditambah', 1),
(676, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 6 telah ditambah', 1),
(677, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 7 telah ditambah', 1),
(678, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 8 telah ditambah', 1),
(679, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 9 telah ditambah', 1),
(680, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 10 telah ditambah', 1),
(681, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 11 telah ditambah', 1),
(682, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 12 telah ditambah', 1),
(683, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 13 telah ditambah', 1),
(684, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 14 telah ditambah', 1),
(685, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 15 telah ditambah', 1),
(686, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 16 telah ditambah', 1),
(687, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 17 telah ditambah', 1),
(688, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 18 telah ditambah', 1),
(689, '2020-06-22 11:12:40', 'Barang bernama MIRANDA MC 19 telah ditambah', 1),
(690, '2020-06-22 11:12:40', 'Barang bernama MINYAK DUNIA CUP 200 ML telah ditambah', 1),
(691, '2020-06-22 11:12:40', 'Barang bernama MINYAK DUNIA POUCH 900 ML telah ditambah', 1),
(692, '2020-06-22 11:12:40', 'Barang bernama MINYAK DUNIA POUCH 1800 ML telah ditambah', 1),
(693, '2020-06-22 11:12:40', 'Barang bernama MINYAK DUNIA JERRYCAN 4500 ML telah ditambah', 1),
(694, '2020-06-22 11:12:40', 'Barang bernama MINYAK DAMAI PUOCH 1000 ML telah ditambah', 1),
(695, '2020-06-22 11:12:40', 'Barang bernama MINYAK DAMAI POUCH 2000 ML telah ditambah', 1),
(696, '2020-06-22 11:12:40', 'Barang bernama PANDA GRASS JELLY CAN 310 ML telah ditambah', 1),
(697, '2020-06-22 11:12:40', 'Barang bernama PANDA LT REGULAR CAN 310 ML telah ditambah', 1),
(698, '2020-06-22 11:12:40', 'Barang bernama PANTHER FRUIT CUP 175 ML telah ditambah', 1),
(699, '2020-06-22 11:12:40', 'Barang bernama PANTHER ENERGY LAVA NLAST 250 ML telah ditambah', 1),
(700, '2020-06-22 11:12:40', 'Barang bernama PANTHER ENERGY POWER RED 250 ML telah ditambah', 1),
(701, '2020-06-22 11:12:40', 'Barang bernama GANTUNGAN PERMEN telah ditambah', 1),
(702, '2020-06-22 11:12:40', 'Barang bernama PAGODA PERMEN telah ditambah', 1),
(703, '2020-06-22 11:12:40', 'Barang bernama PERMEN BUBUK ASAM COLA 12 GR telah ditambah', 1),
(704, '2020-06-22 11:12:40', 'Barang bernama PERMEN BUBUK ASAM ANGGUR 12 GR telah ditambah', 1),
(705, '2020-06-22 11:12:40', 'Barang bernama PERMEN BUBUK ASAM STROBERI 12 GR telah ditambah', 1),
(706, '2020-06-22 11:12:40', 'Barang bernama PERMEN LOLLIPOP STROBERI 10 GR telah ditambah', 1),
(707, '2020-06-22 11:12:40', 'Barang bernama PERMEN LOLLIPOP JERUK 10 GR telah ditambah', 1),
(708, '2020-06-22 11:12:40', 'Barang bernama PERMEN LOLLIPOP APEL 10 GR telah ditambah', 1),
(709, '2020-06-22 11:12:40', 'Barang bernama PERMEN LOLLIPOP MANGGA 10 GR telah ditambah', 1),
(710, '2020-06-22 11:12:40', 'Barang bernama PERMEN ICE CREAM STOBERI 12 GR telah ditambah', 1),
(711, '2020-06-22 11:12:40', 'Barang bernama PERMEN FINGER SPINNER 11 GR telah ditambah', 1),
(712, '2020-06-22 11:12:40', 'Barang bernama PERMEN LOLLIPOP MAWAR 12 GR telah ditambah', 1),
(713, '2020-06-22 11:12:40', 'Barang bernama SWEETY PANTS S1 telah ditambah', 1),
(714, '2020-06-22 11:12:40', 'Barang bernama TEH CELUP KAMPUNG MNS ASLI telah ditambah', 1),
(715, '2020-06-22 11:12:40', 'Barang bernama TEH KROSOS KAMPUNG MNS telah ditambah', 1),
(716, '2020-06-22 11:12:40', 'Barang bernama TEH KAMPUNG MELATI telah ditambah', 1),
(717, '2020-06-22 11:12:40', 'Barang bernama GELAS UANG EMAS telah ditambah', 1),
(718, '2020-06-22 11:12:40', 'Barang bernama LEPEK UANG EMAS telah ditambah', 1),
(719, '2020-06-22 11:12:40', 'Barang bernama UANG EMAS SPECIAL 30 GR telah ditambah', 1),
(720, '2020-06-22 11:12:40', 'Barang bernama UANG EMAS MERAH 1 KG telah ditambah', 1),
(721, '2020-06-22 11:12:40', 'Barang bernama UANG EMAS TOP 600 telah ditambah', 1),
(722, '2020-06-22 11:12:40', 'Barang bernama UANG EMAS SPECIAL 380 telah ditambah', 1),
(723, '2020-06-22 11:12:40', 'Barang bernama UANG EMAS SPECIAL 135 telah ditambah', 1),
(724, '2020-06-22 11:12:40', 'Barang bernama UANG EMAS SPECIAL 10 GR telah ditambah', 1),
(725, '2020-06-22 11:12:40', 'Barang bernama ULTRA TABUR RASA BALADO 100 GR telah ditambah', 1),
(726, '2020-06-22 11:12:40', 'Barang bernama ULTRA TBR RS SAMBAL BALADO 100 GR telah ditambah', 1),
(727, '2020-06-22 11:12:40', 'Barang bernama ULTRA TABUR RS JAGUNG BAKAR 100 GR telah ditambah', 1),
(728, '2020-06-22 11:12:40', 'Barang bernama ULTRA TABUR RS JAGUNG MANIS 100 GR telah ditambah', 1),
(729, '2020-06-22 11:12:40', 'Barang bernama ULTRA TABUR RS KEJU 100 GR telah ditambah', 1),
(730, '2020-06-22 11:12:40', 'Barang bernama ULTRA TABUR RS BARBQUE 100 GR telah ditambah', 1),
(731, '2020-06-22 11:12:40', 'Barang bernama ULTRA TABUR RS PEDAS MANIS 100 GR telah ditambah', 1),
(732, '2020-06-22 11:12:40', 'Barang bernama ULTRA AYAM BAWANG 100 GR telah ditambah', 1),
(733, '2020-06-22 11:12:40', 'Barang bernama ULTRA TABUR RS SAPI PANGGANG 100 GR telah ditambah', 1),
(734, '2020-06-22 11:12:40', 'Barang bernama ULTRA BALADO 900 GR telah ditambah', 1),
(735, '2020-06-22 11:12:40', 'Barang bernama ULTRA SAMBAL BALADO 900 GR telah ditambah', 1),
(736, '2020-06-22 11:12:40', 'Barang bernama ULTRA BARBEQUE 900 GR telah ditambah', 1),
(737, '2020-06-22 11:12:40', 'Barang bernama ULTRA EXTRA PEDAS 100 GR telah ditambah', 1),
(738, '2020-06-22 11:12:40', 'Barang bernama ULTRA BALADO PEDAS MANIS 900 GR telah ditambah', 1),
(739, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BLOSSOM/PINK 120 ML telah ditambah', 1),
(740, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BLISSFUL/ORANGE 120 ML telah ditambah', 1),
(741, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BREEZE/BIRU 120 ML telah ditambah', 1),
(742, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BIZARE/UNGU 120 ML telah ditambah', 1),
(743, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BLESS/MERAH 120 ML telah ditambah', 1),
(744, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BELLE/HIJAU 120 ML telah ditambah', 1),
(745, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BLOSSOM/PINK 60 ML telah ditambah', 1),
(746, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BREEZE/BIRU 60 ML telah ditambah', 1),
(747, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BIZARE/UNGU 60 ML telah ditambah', 1),
(748, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BLISFUL/ORANGE 60 ML telah ditambah', 1),
(749, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BLESS/MERAH 60 ML telah ditambah', 1),
(750, '2020-06-22 11:12:40', 'Barang bernama VIT BODY SCENT BELLE/HIJAU 60 ML telah ditambah', 1),
(751, '2020-06-22 11:12:40', 'Barang bernama YUPI STRAWBERRY 120 GR telah ditambah', 1),
(752, '2020-06-22 11:12:40', 'Barang bernama YUPI FRUTY PUFF 120 GR telah ditambah', 1),
(753, '2020-06-22 11:12:40', 'Barang bernama YUPI BABY BEAR 10 GR telah ditambah', 1),
(754, '2020-06-22 11:12:40', 'Barang bernama YUPI LITTLE STAR 10 GR telah ditambah', 1),
(755, '2020-06-22 11:12:40', 'Barang bernama YUPI GUMMY FANG 9 GR telah ditambah', 1),
(756, '2020-06-22 11:12:40', 'Barang bernama YUPI EXOTIC MANGO 10 GR telah ditambah', 1),
(757, '2020-06-22 11:12:40', 'Barang bernama YUPI BERRI BRONZ 8 GR telah ditambah', 1),
(758, '2020-06-22 11:12:40', 'Barang bernama YUPI ICE CREAM CONE 10 GR telah ditambah', 1),
(759, '2020-06-22 11:12:40', 'Barang bernama YUPI STRAWBERRY 125S TOPLES telah ditambah', 1),
(760, '2020-06-22 11:12:40', 'Barang bernama YUPI FRUTY COLA  8 GR telah ditambah', 1),
(761, '2020-06-22 11:12:40', 'Barang bernama YUPI GUMMY COOKIES 8 GR telah ditambah', 1),
(762, '2020-06-22 11:12:40', 'Barang bernama YUPI WOTTA MELON 8.5 GR telah ditambah', 1),
(763, '2020-06-22 11:12:40', 'Barang bernama YUPI JUST FOR FUN telah ditambah', 1),
(764, '2020-06-22 11:12:40', 'Barang bernama YUPI BURGER 8 GR telah ditambah', 1),
(765, '2020-06-22 11:12:40', 'Barang bernama YUPI ROLETTO 8 GR telah ditambah', 1),
(766, '2020-06-22 11:12:40', 'Barang bernama YUPI JUGLE FUN 8.5 GR telah ditambah', 1),
(767, '2020-06-22 11:12:40', 'Barang bernama YUPI CHOCO GLEE 7 GR telah ditambah', 1),
(768, '2020-06-22 11:12:40', 'Barang bernama YUPI DINO LAND 8 GR telah ditambah', 1),
(769, '2020-06-22 11:12:40', 'Barang bernama YUPI SEA WORLD 8.5 GR telah ditambah', 1),
(770, '2020-06-22 11:12:40', 'Barang bernama YUPI MARSHMALLOW TWIST 20 GR telah ditambah', 1),
(771, '2020-06-22 11:12:40', 'Barang bernama YUPI CALCI BEAN 16 GR 12 PCS / K telah ditambah', 1),
(772, '2020-06-22 11:12:40', 'Barang bernama YUPI GUMMY FRIES 15 GR telah ditambah', 1),
(773, '2020-06-22 11:12:40', 'Barang bernama YUPI PIZZA 15 GR telah ditambah', 1),
(774, '2020-06-22 11:12:40', 'Barang bernama YUPO FRUIT COCKTAIL 15 GR telah ditambah', 1),
(775, '2020-06-22 11:12:40', 'Barang bernama YUPI SEET HEART 15 GR telah ditambah', 1),
(776, '2020-06-22 11:12:40', 'Barang bernama YUPI AQUARIUM 15 GR telah ditambah', 1),
(777, '2020-06-22 11:12:40', 'Barang bernama YUPI FESTIVE EDITION 400 GR telah ditambah', 1),
(778, '2020-06-22 11:12:40', 'Barang bernama brian telah ditambah', 1),
(779, '2020-06-22 11:12:40', 'Barang bernama nevin telah ditambah', 1),
(780, '2020-06-23 06:31:44', 'Barang bernama tt telah ditambah', 1),
(781, '2020-06-23 06:32:31', 'Barang bernama h telah ditambah', 1),
(782, '2020-06-23 06:53:40', 'Barang bernama tt telah diupdate', 1),
(783, '2020-06-23 07:01:50', 'Tansaksi barang masuk dengan id=20 telah ditambah', 1),
(784, '2020-06-23 13:45:15', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah ditambah', 1),
(785, '2020-06-23 13:45:15', 'Barang bernama BUCKET COCONUT 400 GR telah ditambah', 1),
(786, '2020-06-23 13:45:15', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah ditambah', 1),
(787, '2020-06-23 13:45:15', 'Barang bernama BUCKET MOCHACINO 400 GR telah ditambah', 1),
(788, '2020-06-23 13:45:15', 'Barang bernama BUCKET MILKY VANILA 400 GR telah ditambah', 1),
(789, '2020-06-23 13:45:15', 'Barang bernama MAJORICO BANANA 300 GR telah ditambah', 1),
(790, '2020-06-23 13:45:15', 'Barang bernama MAJORICO MATCHA 300 GR telah ditambah', 1),
(791, '2020-06-23 13:45:15', 'Barang bernama MAJORICO CHOCOLATE 300 GR telah ditambah', 1),
(792, '2020-06-23 13:45:15', 'Barang bernama KUKIS N KRIM STRAWBERY 400 GR telah ditambah', 1),
(793, '2020-06-23 13:45:15', 'Barang bernama SABUN CUSSONS PINK 75 GR telah ditambah', 1),
(794, '2020-06-23 13:45:15', 'Barang bernama SABUN CUSSONS BLUE 75 GR 75 GR telah ditambah', 1),
(795, '2020-06-23 13:45:15', 'Barang bernama POWDER PINK 50 GR telah ditambah', 1),
(796, '2020-06-23 13:45:15', 'Barang bernama POWDER BLUE 50 GR telah ditambah', 1),
(797, '2020-06-23 13:45:15', 'Barang bernama POWDER PINK 100 GR telah ditambah', 1),
(798, '2020-06-23 13:45:15', 'Barang bernama POWDER BLUE 100 GR telah ditambah', 1),
(799, '2020-06-23 13:45:15', 'Barang bernama POWDER PINK 200 GR telah ditambah', 1),
(800, '2020-06-23 13:45:15', 'Barang bernama POWDER BLUE 200 GR telah ditambah', 1),
(801, '2020-06-23 13:45:15', 'Barang bernama POWDER UNGU 200 GR telah ditambah', 1),
(802, '2020-06-23 13:45:15', 'Barang bernama POWDER KUNING 50 GR telah ditambah', 1),
(803, '2020-06-23 13:45:15', 'Barang bernama POWDER KUNING 100 GR telah ditambah', 1),
(804, '2020-06-23 13:45:15', 'Barang bernama POWDER UNGU 50 GR telah ditambah', 1),
(805, '2020-06-23 13:45:15', 'Barang bernama SABUN CUSSONS UNGU 75 GR telah ditambah', 1),
(806, '2020-06-23 13:45:15', 'Barang bernama POWDER UNGU 100 GR telah ditambah', 1),
(807, '2020-06-23 13:45:15', 'Barang bernama GELAS TEH KMPG MANIS telah ditambah', 1),
(808, '2020-06-23 13:45:15', 'Barang bernama GELAS KOPI UANG MAS 1 KG telah ditambah', 1),
(809, '2020-06-23 13:45:15', 'Barang bernama KUKIS KELAPA 13,9 GR telah ditambah', 1),
(810, '2020-06-23 13:45:15', 'Barang bernama KUKIS MOCHACINO 13,9 GR 6 x 120 telah ditambah', 1),
(811, '2020-06-23 13:45:15', 'Barang bernama KUKIS VANILLA 13,9 GR 6 X 120 telah ditambah', 1),
(812, '2020-06-23 13:45:15', 'Barang bernama KUKIS BUTTER 300 GR telah ditambah', 1),
(813, '2020-06-23 13:45:15', 'Barang bernama KUKIS KELAPA 300 GR telah ditambah', 1),
(814, '2020-06-23 13:45:15', 'Barang bernama KUKIS MOCHACINO 300 GR telah ditambah', 1),
(815, '2020-06-23 13:45:15', 'Barang bernama KUKIS VANILLA 300 GR telah ditambah', 1),
(816, '2020-06-23 13:45:15', 'Barang bernama KUKIS BUTTER 90 GR telah ditambah', 1),
(817, '2020-06-23 13:45:15', 'Barang bernama KUKIS KELAPA 90 GR telah ditambah', 1),
(818, '2020-06-23 13:45:15', 'Barang bernama KUKIS MOCHACINO 90 GR telah ditambah', 1),
(819, '2020-06-23 13:45:15', 'Barang bernama KUKIS VANILLA 90 GR telah ditambah', 1),
(820, '2020-06-23 13:45:15', 'Barang bernama KUKIS WHITE COFFEE 13 GR 6 x 120 telah ditambah', 1),
(821, '2020-06-23 13:45:15', 'Barang bernama KUKIS ROLL WHITE COFFEE 90 GR telah ditambah', 1),
(822, '2020-06-23 13:45:15', 'Barang bernama KUKIS WHITE COFFEE 300 GR telah ditambah', 1),
(823, '2020-06-23 13:45:15', 'Barang bernama KUKIS BUTTER 70 GR telah ditambah', 1),
(824, '2020-06-23 13:45:15', 'Barang bernama KUKIS MOCHACINO 70 GR telah ditambah', 1),
(825, '2020-06-23 13:45:15', 'Barang bernama KUKIS KELAPA 70 GR telah ditambah', 1),
(826, '2020-06-23 13:45:15', 'Barang bernama KUKIS KELAPA 12 GR telah ditambah', 1),
(827, '2020-06-23 13:45:15', 'Barang bernama KUKIS BUTTER 12 GR telah ditambah', 1),
(828, '2020-06-23 13:45:15', 'Barang bernama KUKIS MOCHACINO 12 GR telah ditambah', 1),
(829, '2020-06-23 13:45:15', 'Barang bernama KUKIS VANILLA 12 GR telah ditambah', 1),
(830, '2020-06-23 13:45:15', 'Barang bernama KUKIS WHITE COFFEE 12 GR telah ditambah', 1),
(831, '2020-06-23 13:45:15', 'Barang bernama KUKIS VANILLA 70 GR telah ditambah', 1),
(832, '2020-06-23 13:45:15', 'Barang bernama KUKIS BANANA 12 GR telah ditambah', 1),
(833, '2020-06-23 13:45:15', 'Barang bernama KUKIS KELAPA 25.2 GR telah ditambah', 1),
(834, '2020-06-23 13:45:15', 'Barang bernama KUKIS BUTTER 25.2 GR telah ditambah', 1),
(835, '2020-06-23 13:45:15', 'Barang bernama KUKIS MOCHACINO 25.2 GR telah ditambah', 1),
(836, '2020-06-23 13:45:15', 'Barang bernama KUKIS VANILLA 25.2 GR telah ditambah', 1),
(837, '2020-06-23 13:45:15', 'Barang bernama KUKIS WHITE COFFEE 25.2 GR telah ditambah', 1),
(838, '2020-06-23 13:45:15', 'Barang bernama KUKIS KELAPA 218 GR telah ditambah', 1),
(839, '2020-06-23 13:45:15', 'Barang bernama KUKIS BUTTER 218 GR telah ditambah', 1),
(840, '2020-06-23 13:45:15', 'Barang bernama KUKIS MOCHACINO 218 GR telah ditambah', 1),
(841, '2020-06-23 13:45:15', 'Barang bernama  KUKIS VANILLA 218 GR telah ditambah', 1),
(842, '2020-06-23 13:45:15', 'Barang bernama MONI CHOCO RING 11.5 GR telah ditambah', 1),
(843, '2020-06-23 13:45:15', 'Barang bernama KUKIS HELLO 11.5 GR telah ditambah', 1),
(844, '2020-06-23 13:45:15', 'Barang bernama MONSTA CHOCOCHIP 9 GR telah ditambah', 1),
(845, '2020-06-23 13:45:15', 'Barang bernama ROSE CREAM COKLAT 260 GR telah ditambah', 1),
(846, '2020-06-23 13:45:15', 'Barang bernama ROSE CREAM LEMON 260 GR telah ditambah', 1),
(847, '2020-06-23 13:45:15', 'Barang bernama ROSE CREAM NANAS 260 GR telah ditambah', 1),
(848, '2020-06-23 13:45:15', 'Barang bernama ROSE CREAM COKLAT 23 GR telah ditambah', 1),
(849, '2020-06-23 13:45:15', 'Barang bernama ROSE CREAM LEMON 23 GR telah ditambah', 1),
(850, '2020-06-23 13:45:15', 'Barang bernama MONTEGO COKLAT 50 GR telah ditambah', 1),
(851, '2020-06-23 13:45:15', 'Barang bernama MONTEGO COKLAT 17 GR telah ditambah', 1),
(852, '2020-06-23 13:45:15', 'Barang bernama NARITA MARI SUSU ROLL 150 GR telah ditambah', 1),
(853, '2020-06-23 13:45:15', 'Barang bernama MONTEGP BUTTER 17 GR telah ditambah', 1),
(854, '2020-06-23 13:45:15', 'Barang bernama MONTEGO FUN DOUBLE CHOCO telah ditambah', 1),
(855, '2020-06-23 13:45:15', 'Barang bernama MARI SUSU MADU 12 GR telah ditambah', 1),
(856, '2020-06-23 13:45:15', 'Barang bernama MARI SUSU MADU 100 GR telah ditambah', 1),
(857, '2020-06-23 13:45:15', 'Barang bernama MARI SUSU MADU 180 GR telah ditambah', 1),
(858, '2020-06-23 13:45:15', 'Barang bernama MALKIST SUSU 14.5 GR telah ditambah', 1),
(859, '2020-06-23 13:45:15', 'Barang bernama MALKIST SUSU 238 GR telah ditambah', 1),
(860, '2020-06-23 13:45:15', 'Barang bernama MALKIST SUSU 108 GR telah ditambah', 1),
(861, '2020-06-23 13:45:15', 'Barang bernama CRACKERS BUTTER 262 GR telah ditambah', 1),
(862, '2020-06-23 13:45:15', 'Barang bernama MALKIST OLEZZ 20 GR telah ditambah', 1),
(863, '2020-06-23 13:45:15', 'Barang bernama MALKIST GARLIC 12 GR telah ditambah', 1),
(864, '2020-06-23 13:45:15', 'Barang bernama GARLIC SEDAP 108 GR telah ditambah', 1),
(865, '2020-06-23 13:45:15', 'Barang bernama GARLIC SEDAP 208 GR telah ditambah', 1),
(866, '2020-06-23 13:45:15', 'Barang bernama MALKIST SUSU 25 GR telah ditambah', 1),
(867, '2020-06-23 13:45:15', 'Barang bernama GARLIC BREADCRACKERS 24 GR telah ditambah', 1),
(868, '2020-06-23 13:45:15', 'Barang bernama MARI SUSU MADU 24 GR telah ditambah', 1),
(869, '2020-06-23 13:45:15', 'Barang bernama CRACKERS 132 GR telah ditambah', 1),
(870, '2020-06-23 13:45:15', 'Barang bernama ABC CRACKERS CHOCO 12 GR telah ditambah', 1),
(871, '2020-06-23 13:45:15', 'Barang bernama RIMBA CHOCO CRACKERS 12 GR telah ditambah', 1),
(872, '2020-06-23 13:45:15', 'Barang bernama OLEZZ CHEESE CHOCO 10 GR telah ditambah', 1),
(873, '2020-06-23 13:45:15', 'Barang bernama OLEZZ CHEESE CHOCO 100 GR telah ditambah', 1),
(874, '2020-06-23 13:45:15', 'Barang bernama OLEZZ CHOCO PARTY 10 GR telah ditambah', 1),
(875, '2020-06-23 13:45:15', 'Barang bernama OLEZZ CHOCO PARTY 100 GR telah ditambah', 1),
(876, '2020-06-23 13:45:15', 'Barang bernama MALKIST SUSU 12 GR telah ditambah', 1),
(877, '2020-06-23 13:45:15', 'Barang bernama SUPERCREAM BON-BON 200 GR telah ditambah', 1),
(878, '2020-06-23 13:45:15', 'Barang bernama SUPERCREAM NANAS 200 GR telah ditambah', 1),
(879, '2020-06-23 13:45:15', 'Barang bernama SUPERCREAM STRAWBERI 200 GR telah ditambah', 1),
(880, '2020-06-23 13:45:15', 'Barang bernama SUPERCREAM ORANGE 200 GR telah ditambah', 1),
(881, '2020-06-23 13:45:15', 'Barang bernama SUPERCREAM BON-BON 46 GR telah ditambah', 1),
(882, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA GUAVA CAN 320 ML telah ditambah', 1),
(883, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA STRAWBERRY CAN 320 ML telah ditambah', 1),
(884, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA LECCI CAN 320 ML telah ditambah', 1),
(885, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA MELON CAN 320 ML telah ditambah', 1),
(886, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ORANGE CAN 320 ML telah ditambah', 1),
(887, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANGGUR CAN 320 ML telah ditambah', 1),
(888, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA APEL CAN 320 ML telah ditambah', 1),
(889, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA MARKISA 320 ML telah ditambah', 1),
(890, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA TIMUN SURI CAN 320 ML telah ditambah', 1),
(891, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA KURMA & TIN CAN 320 ML telah ditambah', 1),
(892, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA JERUK NIPIS 320 ML telah ditambah', 1),
(893, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANAK ORANGE CAN 250 ML telah ditambah', 1),
(894, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANAK LECCI CAN 250 ML telah ditambah', 1),
(895, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANAK STRAWBERRY CAN 250 ML telah ditambah', 1),
(896, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET ANAK 200 ML telah ditambah', 1),
(897, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANAK PET FROZEN APEL 250 ML telah ditambah', 1),
(898, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANAK PET BLACKBURN 250 ML telah ditambah', 1),
(899, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANAK PER ORANGE 250 ML telah ditambah', 1),
(900, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANAK PET LECI 250 ML telah ditambah', 1),
(901, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA ANAK PET DISNEY 250 ML telah ditambah', 1),
(902, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET 200 ML telah ditambah', 1),
(903, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET 500 ML telah ditambah', 1),
(904, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET GUAVA 320 ML telah ditambah', 1),
(905, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET LECCI 320 ML telah ditambah', 1),
(906, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET ORANGE 320 ML telah ditambah', 1),
(907, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET STRAWBERRY 320 ML telah ditambah', 1),
(908, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET JERUK NIPIS 320 ML telah ditambah', 1),
(909, '2020-06-23 13:45:15', 'Barang bernama KAKI TIGA PET MELON 320 ML telah ditambah', 1),
(910, '2020-06-23 13:45:15', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 90 GR telah ditambah', 1),
(911, '2020-06-23 13:45:15', 'Barang bernama MAJESTIC MIX BARRIES 90 GR telah ditambah', 1),
(912, '2020-06-23 13:45:15', 'Barang bernama MAJESTIC WAFER POPCORN 90 GR telah ditambah', 1),
(913, '2020-06-23 13:45:15', 'Barang bernama MAJESTIC WAFER POPCORN 53.5 GR telah ditambah', 1),
(914, '2020-06-23 13:45:15', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 53.5 GR telah ditambah', 1),
(915, '2020-06-23 13:45:15', 'Barang bernama CHOCOLATE WAFER 145 GR telah ditambah', 1),
(916, '2020-06-23 13:45:15', 'Barang bernama MAJESTIC CHOCOLATE 90 GR telah ditambah', 1),
(917, '2020-06-23 13:45:15', 'Barang bernama MAJORICO CHOCOLATE 120 GR telah ditambah', 1),
(918, '2020-06-23 13:45:15', 'Barang bernama MAJORICO VANILA 120 GR telah ditambah', 1),
(919, '2020-06-23 13:45:15', 'Barang bernama SWEETY PANTS L1 telah ditambah', 1),
(920, '2020-06-23 13:45:15', 'Barang bernama SWEETY BRONZE L2 telah ditambah', 1),
(921, '2020-06-23 13:45:15', 'Barang bernama SWEETY PANTS M1 telah ditambah', 1),
(922, '2020-06-23 13:45:15', 'Barang bernama SWEETY BRONZE M2 telah ditambah', 1),
(923, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 1 telah ditambah', 1),
(924, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 2 telah ditambah', 1),
(925, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 3 telah ditambah', 1),
(926, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 4 telah ditambah', 1),
(927, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 5 telah ditambah', 1),
(928, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 6 telah ditambah', 1),
(929, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 7 telah ditambah', 1),
(930, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 8 telah ditambah', 1),
(931, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 9 telah ditambah', 1),
(932, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 10 telah ditambah', 1),
(933, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 11 telah ditambah', 1),
(934, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 12 telah ditambah', 1),
(935, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 13 telah ditambah', 1),
(936, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 14 telah ditambah', 1),
(937, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 15 telah ditambah', 1),
(938, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 16 telah ditambah', 1),
(939, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 17 telah ditambah', 1),
(940, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 18 telah ditambah', 1),
(941, '2020-06-23 13:45:15', 'Barang bernama MIRANDA MC 19 telah ditambah', 1),
(942, '2020-06-23 13:45:15', 'Barang bernama MINYAK DUNIA CUP 200 ML telah ditambah', 1),
(943, '2020-06-23 13:45:15', 'Barang bernama MINYAK DUNIA POUCH 900 ML telah ditambah', 1),
(944, '2020-06-23 13:45:15', 'Barang bernama MINYAK DUNIA POUCH 1800 ML telah ditambah', 1),
(945, '2020-06-23 13:45:15', 'Barang bernama MINYAK DUNIA JERRYCAN 4500 ML telah ditambah', 1),
(946, '2020-06-23 13:45:15', 'Barang bernama MINYAK DAMAI PUOCH 1000 ML telah ditambah', 1),
(947, '2020-06-23 13:45:15', 'Barang bernama MINYAK DAMAI POUCH 2000 ML telah ditambah', 1),
(948, '2020-06-23 13:45:15', 'Barang bernama PANDA GRASS JELLY CAN 310 ML telah ditambah', 1),
(949, '2020-06-23 13:45:15', 'Barang bernama PANDA LT REGULAR CAN 310 ML telah ditambah', 1),
(950, '2020-06-23 13:45:15', 'Barang bernama PANTHER FRUIT CUP 175 ML telah ditambah', 1),
(951, '2020-06-23 13:45:15', 'Barang bernama PANTHER ENERGY LAVA NLAST 250 ML telah ditambah', 1),
(952, '2020-06-23 13:45:15', 'Barang bernama PANTHER ENERGY POWER RED 250 ML telah ditambah', 1),
(953, '2020-06-23 13:45:15', 'Barang bernama GANTUNGAN PERMEN telah ditambah', 1),
(954, '2020-06-23 13:45:15', 'Barang bernama PAGODA PERMEN telah ditambah', 1),
(955, '2020-06-23 13:45:15', 'Barang bernama PERMEN BUBUK ASAM COLA 12 GR telah ditambah', 1),
(956, '2020-06-23 13:45:15', 'Barang bernama PERMEN BUBUK ASAM ANGGUR 12 GR telah ditambah', 1),
(957, '2020-06-23 13:45:15', 'Barang bernama PERMEN BUBUK ASAM STROBERI 12 GR telah ditambah', 1),
(958, '2020-06-23 13:45:15', 'Barang bernama PERMEN LOLLIPOP STROBERI 10 GR telah ditambah', 1),
(959, '2020-06-23 13:45:15', 'Barang bernama PERMEN LOLLIPOP JERUK 10 GR telah ditambah', 1),
(960, '2020-06-23 13:45:15', 'Barang bernama PERMEN LOLLIPOP APEL 10 GR telah ditambah', 1),
(961, '2020-06-23 13:45:15', 'Barang bernama PERMEN LOLLIPOP MANGGA 10 GR telah ditambah', 1),
(962, '2020-06-23 13:45:15', 'Barang bernama PERMEN ICE CREAM STOBERI 12 GR telah ditambah', 1),
(963, '2020-06-23 13:45:15', 'Barang bernama PERMEN FINGER SPINNER 11 GR telah ditambah', 1),
(964, '2020-06-23 13:45:15', 'Barang bernama PERMEN LOLLIPOP MAWAR 12 GR telah ditambah', 1),
(965, '2020-06-23 13:45:15', 'Barang bernama SWEETY PANTS S1 telah ditambah', 1),
(966, '2020-06-23 13:45:15', 'Barang bernama TEH CELUP KAMPUNG MNS ASLI telah ditambah', 1),
(967, '2020-06-23 13:45:15', 'Barang bernama TEH KROSOS KAMPUNG MNS telah ditambah', 1),
(968, '2020-06-23 13:45:15', 'Barang bernama TEH KAMPUNG MELATI telah ditambah', 1),
(969, '2020-06-23 13:45:15', 'Barang bernama GELAS UANG EMAS telah ditambah', 1),
(970, '2020-06-23 13:45:15', 'Barang bernama LEPEK UANG EMAS telah ditambah', 1),
(971, '2020-06-23 13:45:15', 'Barang bernama UANG EMAS SPECIAL 30 GR telah ditambah', 1),
(972, '2020-06-23 13:45:15', 'Barang bernama UANG EMAS MERAH 1 KG telah ditambah', 1),
(973, '2020-06-23 13:45:15', 'Barang bernama UANG EMAS TOP 600 telah ditambah', 1),
(974, '2020-06-23 13:45:15', 'Barang bernama UANG EMAS SPECIAL 380 telah ditambah', 1),
(975, '2020-06-23 13:45:15', 'Barang bernama UANG EMAS SPECIAL 135 telah ditambah', 1),
(976, '2020-06-23 13:45:15', 'Barang bernama UANG EMAS SPECIAL 10 GR telah ditambah', 1),
(977, '2020-06-23 13:45:15', 'Barang bernama ULTRA TABUR RASA BALADO 100 GR telah ditambah', 1),
(978, '2020-06-23 13:45:15', 'Barang bernama ULTRA TBR RS SAMBAL BALADO 100 GR telah ditambah', 1),
(979, '2020-06-23 13:45:15', 'Barang bernama ULTRA TABUR RS JAGUNG BAKAR 100 GR telah ditambah', 1),
(980, '2020-06-23 13:45:15', 'Barang bernama ULTRA TABUR RS JAGUNG MANIS 100 GR telah ditambah', 1),
(981, '2020-06-23 13:45:15', 'Barang bernama ULTRA TABUR RS KEJU 100 GR telah ditambah', 1),
(982, '2020-06-23 13:45:15', 'Barang bernama ULTRA TABUR RS BARBQUE 100 GR telah ditambah', 1),
(983, '2020-06-23 13:45:15', 'Barang bernama ULTRA TABUR RS PEDAS MANIS 100 GR telah ditambah', 1),
(984, '2020-06-23 13:45:15', 'Barang bernama ULTRA AYAM BAWANG 100 GR telah ditambah', 1),
(985, '2020-06-23 13:45:15', 'Barang bernama ULTRA TABUR RS SAPI PANGGANG 100 GR telah ditambah', 1),
(986, '2020-06-23 13:45:15', 'Barang bernama ULTRA BALADO 900 GR telah ditambah', 1),
(987, '2020-06-23 13:45:15', 'Barang bernama ULTRA SAMBAL BALADO 900 GR telah ditambah', 1),
(988, '2020-06-23 13:45:15', 'Barang bernama ULTRA BARBEQUE 900 GR telah ditambah', 1),
(989, '2020-06-23 13:45:15', 'Barang bernama ULTRA EXTRA PEDAS 100 GR telah ditambah', 1),
(990, '2020-06-23 13:45:15', 'Barang bernama ULTRA BALADO PEDAS MANIS 900 GR telah ditambah', 1),
(991, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BLOSSOM/PINK 120 ML telah ditambah', 1),
(992, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BLISSFUL/ORANGE 120 ML telah ditambah', 1),
(993, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BREEZE/BIRU 120 ML telah ditambah', 1),
(994, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BIZARE/UNGU 120 ML telah ditambah', 1),
(995, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BLESS/MERAH 120 ML telah ditambah', 1),
(996, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BELLE/HIJAU 120 ML telah ditambah', 1),
(997, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BLOSSOM/PINK 60 ML telah ditambah', 1),
(998, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BREEZE/BIRU 60 ML telah ditambah', 1),
(999, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BIZARE/UNGU 60 ML telah ditambah', 1),
(1000, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BLISFUL/ORANGE 60 ML telah ditambah', 1),
(1001, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BLESS/MERAH 60 ML telah ditambah', 1),
(1002, '2020-06-23 13:45:15', 'Barang bernama VIT BODY SCENT BELLE/HIJAU 60 ML telah ditambah', 1),
(1003, '2020-06-23 13:45:15', 'Barang bernama YUPI STRAWBERRY 120 GR telah ditambah', 1),
(1004, '2020-06-23 13:45:15', 'Barang bernama YUPI FRUTY PUFF 120 GR telah ditambah', 1),
(1005, '2020-06-23 13:45:15', 'Barang bernama YUPI BABY BEAR 10 GR telah ditambah', 1),
(1006, '2020-06-23 13:45:15', 'Barang bernama YUPI LITTLE STAR 10 GR telah ditambah', 1),
(1007, '2020-06-23 13:45:15', 'Barang bernama YUPI GUMMY FANG 9 GR telah ditambah', 1),
(1008, '2020-06-23 13:45:15', 'Barang bernama YUPI EXOTIC MANGO 10 GR telah ditambah', 1),
(1009, '2020-06-23 13:45:15', 'Barang bernama YUPI BERRI BRONZ 8 GR telah ditambah', 1),
(1010, '2020-06-23 13:45:15', 'Barang bernama YUPI ICE CREAM CONE 10 GR telah ditambah', 1),
(1011, '2020-06-23 13:45:15', 'Barang bernama YUPI STRAWBERRY 125S TOPLES telah ditambah', 1),
(1012, '2020-06-23 13:45:15', 'Barang bernama YUPI FRUTY COLA  8 GR telah ditambah', 1),
(1013, '2020-06-23 13:45:15', 'Barang bernama YUPI GUMMY COOKIES 8 GR telah ditambah', 1),
(1014, '2020-06-23 13:45:15', 'Barang bernama YUPI WOTTA MELON 8.5 GR telah ditambah', 1),
(1015, '2020-06-23 13:45:15', 'Barang bernama YUPI JUST FOR FUN telah ditambah', 1),
(1016, '2020-06-23 13:45:15', 'Barang bernama YUPI BURGER 8 GR telah ditambah', 1),
(1017, '2020-06-23 13:45:15', 'Barang bernama YUPI ROLETTO 8 GR telah ditambah', 1),
(1018, '2020-06-23 13:45:15', 'Barang bernama YUPI JUGLE FUN 8.5 GR telah ditambah', 1),
(1019, '2020-06-23 13:45:15', 'Barang bernama YUPI CHOCO GLEE 7 GR telah ditambah', 1),
(1020, '2020-06-23 13:45:15', 'Barang bernama YUPI DINO LAND 8 GR telah ditambah', 1),
(1021, '2020-06-23 13:45:15', 'Barang bernama YUPI SEA WORLD 8.5 GR telah ditambah', 1),
(1022, '2020-06-23 13:45:15', 'Barang bernama YUPI MARSHMALLOW TWIST 20 GR telah ditambah', 1),
(1023, '2020-06-23 13:45:15', 'Barang bernama YUPI CALCI BEAN 16 GR 12 PCS / K telah ditambah', 1),
(1024, '2020-06-23 13:45:15', 'Barang bernama YUPI GUMMY FRIES 15 GR telah ditambah', 1),
(1025, '2020-06-23 13:45:15', 'Barang bernama YUPI PIZZA 15 GR telah ditambah', 1),
(1026, '2020-06-23 13:45:15', 'Barang bernama YUPO FRUIT COCKTAIL 15 GR telah ditambah', 1),
(1027, '2020-06-23 13:45:15', 'Barang bernama YUPI SEET HEART 15 GR telah ditambah', 1),
(1028, '2020-06-23 13:45:15', 'Barang bernama YUPI AQUARIUM 15 GR telah ditambah', 1),
(1029, '2020-06-23 13:45:15', 'Barang bernama YUPI FESTIVE EDITION 400 GR telah ditambah', 1),
(1030, '2020-06-23 13:45:15', 'Barang bernama brian telah ditambah', 1),
(1031, '2020-06-23 13:45:15', 'Barang bernama nevin telah ditambah', 1),
(1032, '2020-06-23 14:15:22', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(1033, '2020-06-23 14:15:22', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(1034, '2020-06-23 14:15:22', 'Barang bernama BUCKET MOCHACINO 400 GR telah diupdate', 1),
(1035, '2020-06-23 14:15:22', 'Barang bernama MAJORICO BANANA 300 GR telah diupdate', 1),
(1036, '2020-06-23 14:15:22', 'Barang bernama KUKIS KELAPA 218 GR telah diupdate', 1),
(1037, '2020-06-23 14:15:22', 'Barang bernama YUPI ROLETTO 8 GR telah diupdate', 1),
(1038, '2020-06-23 14:15:52', 'Barang bernama PERMEN BUBUK ASAM COLA 12 GR telah diupdate', 1),
(1039, '2020-06-23 14:15:52', 'Barang bernama PERMEN BUBUK ASAM ANGGUR 12 GR telah diupdate', 1),
(1040, '2020-06-23 14:15:52', 'Barang bernama PERMEN BUBUK ASAM STROBERI 12 GR telah diupdate', 1),
(1041, '2020-06-23 14:15:52', 'Barang bernama PERMEN LOLLIPOP STROBERI 10 GR telah diupdate', 1),
(1042, '2020-06-23 14:15:52', 'Barang bernama PERMEN LOLLIPOP JERUK 10 GR telah diupdate', 1),
(1043, '2020-06-23 14:15:52', 'Barang bernama PERMEN LOLLIPOP APEL 10 GR telah diupdate', 1),
(1044, '2020-06-23 14:15:52', 'Barang bernama PERMEN LOLLIPOP MANGGA 10 GR telah diupdate', 1),
(1045, '2020-06-23 14:15:52', 'Barang bernama PERMEN ICE CREAM STOBERI 12 GR telah diupdate', 1),
(1046, '2020-06-23 14:15:52', 'Barang bernama PERMEN FINGER SPINNER 11 GR telah diupdate', 1),
(1047, '2020-06-23 14:15:52', 'Barang bernama PERMEN LOLLIPOP MAWAR 12 GR telah diupdate', 1),
(1048, '2020-06-23 14:15:52', 'Barang bernama YUPI BABY BEAR 10 GR telah diupdate', 1),
(1049, '2020-06-23 14:15:52', 'Barang bernama YUPI BERRI BRONZ 8 GR telah diupdate', 1),
(1050, '2020-06-23 14:15:52', 'Barang bernama YUPI WOTTA MELON 8.5 GR telah diupdate', 1),
(1051, '2020-06-23 14:15:52', 'Barang bernama YUPI JUST FOR FUN telah diupdate', 1),
(1052, '2020-06-23 14:15:52', 'Barang bernama YUPI SEA WORLD 8.5 GR telah diupdate', 1),
(1053, '2020-06-23 14:15:52', 'Barang bernama YUPI PIZZA 15 GR telah diupdate', 1),
(1054, '2020-06-23 14:15:52', 'Barang bernama YUPI AQUARIUM 15 GR telah diupdate', 1),
(1055, '2020-06-23 14:18:10', 'Barang bernama YUPO FRUIT COCKTAIL 15 GR telah diupdate', 1),
(1056, '2020-06-23 14:20:11', 'Barang bernama YUPI STRAWBERRY 120 GR telah diupdate', 1),
(1057, '2020-06-23 14:20:11', 'Barang bernama YUPI FRUTY PUFF 120 GR telah diupdate', 1),
(1058, '2020-06-23 14:20:11', 'Barang bernama YUPI BABY BEAR 10 GR telah diupdate', 1),
(1059, '2020-06-23 14:20:11', 'Barang bernama YUPI LITTLE STAR 10 GR telah diupdate', 1),
(1060, '2020-06-23 14:20:11', 'Barang bernama YUPI GUMMY FANG 9 GR telah diupdate', 1),
(1061, '2020-06-23 14:20:11', 'Barang bernama YUPI EXOTIC MANGO 10 GR telah diupdate', 1),
(1062, '2020-06-23 14:20:11', 'Barang bernama YUPI BERRI BRONZ 8 GR telah diupdate', 1),
(1063, '2020-06-23 14:20:11', 'Barang bernama YUPI ICE CREAM CONE 10 GR telah diupdate', 1),
(1064, '2020-06-23 14:20:11', 'Barang bernama YUPI STRAWBERRY 125S TOPLES telah diupdate', 1),
(1065, '2020-06-23 14:20:11', 'Barang bernama YUPI FRUTY COLA  8 GR telah diupdate', 1),
(1066, '2020-06-23 14:20:11', 'Barang bernama YUPI GUMMY COOKIES 8 GR telah diupdate', 1),
(1067, '2020-06-23 14:20:11', 'Barang bernama YUPI WOTTA MELON 8.5 GR telah diupdate', 1),
(1068, '2020-06-23 14:20:11', 'Barang bernama YUPI JUST FOR FUN telah diupdate', 1),
(1069, '2020-06-23 14:20:11', 'Barang bernama YUPI BURGER 8 GR telah diupdate', 1),
(1070, '2020-06-23 14:20:11', 'Barang bernama YUPI ROLETTO 8 GR telah diupdate', 1),
(1071, '2020-06-23 14:20:11', 'Barang bernama YUPI JUGLE FUN 8.5 GR telah diupdate', 1),
(1072, '2020-06-23 14:20:11', 'Barang bernama YUPI CHOCO GLEE 7 GR telah diupdate', 1),
(1073, '2020-06-23 14:20:11', 'Barang bernama YUPI DINO LAND 8 GR telah diupdate', 1),
(1074, '2020-06-23 14:20:11', 'Barang bernama YUPI SEA WORLD 8.5 GR telah diupdate', 1),
(1075, '2020-06-23 14:20:11', 'Barang bernama YUPI MARSHMALLOW TWIST 20 GR telah diupdate', 1),
(1076, '2020-06-23 14:20:11', 'Barang bernama YUPI CALCI BEAN 16 GR 12 PCS / K telah diupdate', 1),
(1077, '2020-06-23 14:20:11', 'Barang bernama YUPI GUMMY FRIES 15 GR telah diupdate', 1),
(1078, '2020-06-23 14:20:11', 'Barang bernama YUPI PIZZA 15 GR telah diupdate', 1),
(1079, '2020-06-23 14:20:11', 'Barang bernama YUPI FRUIT COCKTAIL 15 GR telah diupdate', 1),
(1080, '2020-06-23 14:20:11', 'Barang bernama YUPI SEET HEART 15 GR telah diupdate', 1),
(1081, '2020-06-23 14:20:11', 'Barang bernama YUPI AQUARIUM 15 GR telah diupdate', 1),
(1082, '2020-06-23 14:20:11', 'Barang bernama YUPI FESTIVE EDITION 400 GR telah diupdate', 1),
(1083, '2020-06-23 14:22:30', 'Barang bernama MINYAK DUNIA POUCH 900 ML telah diupdate', 1),
(1084, '2020-06-23 14:22:30', 'Barang bernama MINYAK DUNIA POUCH 1800 ML telah diupdate', 1),
(1085, '2020-06-23 14:22:30', 'Barang bernama ULTRA TABUR RS JAGUNG BAKAR 100 GR telah diupdate', 1),
(1086, '2020-06-23 14:22:30', 'Barang bernama ULTRA AYAM BAWANG 100 GR telah diupdate', 1),
(1087, '2020-06-23 14:22:30', 'Barang bernama ULTRA BARBEQUE 900 GR telah diupdate', 1),
(1088, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BLOSSOM/PINK 120 ML telah diupdate', 1),
(1089, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BLISSFUL/ORANGE 120 ML telah diupdate', 1),
(1090, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BREEZE/BIRU 120 ML telah diupdate', 1),
(1091, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BIZARE/UNGU 120 ML telah diupdate', 1),
(1092, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BLESS/MERAH 120 ML telah diupdate', 1),
(1093, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BELLE/HIJAU 120 ML telah diupdate', 1),
(1094, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BLOSSOM/PINK 60 ML telah diupdate', 1),
(1095, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BREEZE/BIRU 60 ML telah diupdate', 1),
(1096, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BIZARE/UNGU 60 ML telah diupdate', 1),
(1097, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BLISFUL/ORANGE 60 ML telah diupdate', 1),
(1098, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BLESS/MERAH 60 ML telah diupdate', 1),
(1099, '2020-06-23 14:26:00', 'Barang bernama VIT BODY SCENT BELLE/HIJAU 60 ML telah diupdate', 1),
(1100, '2020-06-23 14:27:26', 'Barang bernama SWEETY PANTS M1 telah diupdate', 1),
(1101, '2020-06-23 14:27:26', 'Barang bernama SWEETY BRONZE M2 telah diupdate', 1),
(1102, '2020-06-23 14:27:26', 'Barang bernama SWEETY PANTS S1 telah diupdate', 1),
(1103, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 1 telah diupdate', 1),
(1104, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 2 telah diupdate', 1),
(1105, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 3 telah diupdate', 1),
(1106, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 4 telah diupdate', 1),
(1107, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 5 telah diupdate', 1),
(1108, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 6 telah diupdate', 1),
(1109, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 7 telah diupdate', 1),
(1110, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 8 telah diupdate', 1),
(1111, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 9 telah diupdate', 1),
(1112, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 10 telah diupdate', 1),
(1113, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 11 telah diupdate', 1),
(1114, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 12 telah diupdate', 1),
(1115, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 13 telah diupdate', 1),
(1116, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 14 telah diupdate', 1),
(1117, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 15 telah diupdate', 1),
(1118, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 16 telah diupdate', 1),
(1119, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 17 telah diupdate', 1),
(1120, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 18 telah diupdate', 1),
(1121, '2020-06-23 14:29:06', 'Barang bernama MIRANDA MC 19 telah diupdate', 1),
(1122, '2020-06-23 14:30:21', 'Barang bernama GELAS TEH KMPG MANIS telah diupdate', 1),
(1123, '2020-06-23 14:30:21', 'Barang bernama TEH CELUP KAMPUNG MNS ASLI telah diupdate', 1),
(1124, '2020-06-23 14:30:21', 'Barang bernama TEH KROSOS KAMPUNG MNS telah diupdate', 1),
(1125, '2020-06-23 14:30:21', 'Barang bernama TEH KAMPUNG MELATI telah diupdate', 1),
(1126, '2020-06-23 14:31:29', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(1127, '2020-06-23 14:31:29', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah diupdate', 1),
(1128, '2020-06-23 14:31:29', 'Barang bernama KUKIS N KRIM STRAWBERY 400 GR telah diupdate', 1),
(1129, '2020-06-23 14:31:29', 'Barang bernama KUKIS KELAPA 13,9 GR telah diupdate', 1),
(1130, '2020-06-23 14:31:29', 'Barang bernama KUKIS MOCHACINO 13,9 GR 6 x 120 telah diupdate', 1),
(1131, '2020-06-23 14:31:29', 'Barang bernama KUKIS VANILLA 13,9 GR 6 X 120 telah diupdate', 1),
(1132, '2020-06-23 14:31:29', 'Barang bernama KUKIS BUTTER 300 GR telah diupdate', 1),
(1133, '2020-06-23 14:31:29', 'Barang bernama KUKIS KELAPA 300 GR telah diupdate', 1),
(1134, '2020-06-23 14:31:29', 'Barang bernama KUKIS MOCHACINO 300 GR telah diupdate', 1),
(1135, '2020-06-23 14:31:29', 'Barang bernama KUKIS VANILLA 300 GR telah diupdate', 1),
(1136, '2020-06-23 14:31:29', 'Barang bernama KUKIS BUTTER 90 GR telah diupdate', 1),
(1137, '2020-06-23 14:31:29', 'Barang bernama KUKIS KELAPA 90 GR telah diupdate', 1),
(1138, '2020-06-23 14:31:29', 'Barang bernama KUKIS MOCHACINO 90 GR telah diupdate', 1),
(1139, '2020-06-23 14:31:29', 'Barang bernama KUKIS VANILLA 90 GR telah diupdate', 1),
(1140, '2020-06-23 14:31:29', 'Barang bernama KUKIS WHITE COFFEE 13 GR 6 x 120 telah diupdate', 1),
(1141, '2020-06-23 14:31:29', 'Barang bernama KUKIS ROLL WHITE COFFEE 90 GR telah diupdate', 1),
(1142, '2020-06-23 14:31:29', 'Barang bernama KUKIS WHITE COFFEE 300 GR telah diupdate', 1),
(1143, '2020-06-23 14:31:29', 'Barang bernama KUKIS BUTTER 70 GR telah diupdate', 1),
(1144, '2020-06-23 14:31:29', 'Barang bernama KUKIS MOCHACINO 70 GR telah diupdate', 1),
(1145, '2020-06-23 14:31:29', 'Barang bernama KUKIS KELAPA 70 GR telah diupdate', 1),
(1146, '2020-06-23 14:31:29', 'Barang bernama KUKIS KELAPA 12 GR telah diupdate', 1),
(1147, '2020-06-23 14:31:29', 'Barang bernama KUKIS BUTTER 12 GR telah diupdate', 1),
(1148, '2020-06-23 14:31:29', 'Barang bernama KUKIS MOCHACINO 12 GR telah diupdate', 1),
(1149, '2020-06-23 14:31:29', 'Barang bernama KUKIS VANILLA 12 GR telah diupdate', 1),
(1150, '2020-06-23 14:31:29', 'Barang bernama KUKIS WHITE COFFEE 12 GR telah diupdate', 1),
(1151, '2020-06-23 14:31:29', 'Barang bernama KUKIS VANILLA 70 GR telah diupdate', 1),
(1152, '2020-06-23 14:31:29', 'Barang bernama KUKIS BANANA 12 GR telah diupdate', 1),
(1153, '2020-06-23 14:31:29', 'Barang bernama KUKIS KELAPA 25.2 GR telah diupdate', 1),
(1154, '2020-06-23 14:31:29', 'Barang bernama KUKIS BUTTER 25.2 GR telah diupdate', 1),
(1155, '2020-06-23 14:31:29', 'Barang bernama KUKIS MOCHACINO 25.2 GR telah diupdate', 1),
(1156, '2020-06-23 14:31:29', 'Barang bernama KUKIS VANILLA 25.2 GR telah diupdate', 1),
(1157, '2020-06-23 14:31:29', 'Barang bernama KUKIS WHITE COFFEE 25.2 GR telah diupdate', 1),
(1158, '2020-06-23 14:31:29', 'Barang bernama KUKIS KELAPA 218 GR telah diupdate', 1),
(1159, '2020-06-23 14:31:29', 'Barang bernama KUKIS BUTTER 218 GR telah diupdate', 1),
(1160, '2020-06-23 14:31:29', 'Barang bernama KUKIS MOCHACINO 218 GR telah diupdate', 1),
(1161, '2020-06-23 14:31:29', 'Barang bernama  KUKIS VANILLA 218 GR telah diupdate', 1),
(1162, '2020-06-23 14:31:29', 'Barang bernama KUKIS HELLO 11.5 GR telah diupdate', 1),
(1163, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA GUAVA CAN 320 ML telah diupdate', 1),
(1164, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA STRAWBERRY CAN 320 ML telah diupdate', 1),
(1165, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA LECCI CAN 320 ML telah diupdate', 1),
(1166, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA MELON CAN 320 ML telah diupdate', 1),
(1167, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ORANGE CAN 320 ML telah diupdate', 1),
(1168, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANGGUR CAN 320 ML telah diupdate', 1),
(1169, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA APEL CAN 320 ML telah diupdate', 1),
(1170, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA MARKISA 320 ML telah diupdate', 1),
(1171, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA TIMUN SURI CAN 320 ML telah diupdate', 1),
(1172, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA KURMA & TIN CAN 320 ML telah diupdate', 1),
(1173, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA JERUK NIPIS 320 ML telah diupdate', 1),
(1174, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANAK ORANGE CAN 250 ML telah diupdate', 1),
(1175, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANAK LECCI CAN 250 ML telah diupdate', 1),
(1176, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANAK STRAWBERRY CAN 250 ML telah diupdate', 1),
(1177, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET ANAK 200 ML telah diupdate', 1),
(1178, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANAK PET FROZEN APEL 250 ML telah diupdate', 1),
(1179, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANAK PET BLACKBURN 250 ML telah diupdate', 1),
(1180, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANAK PER ORANGE 250 ML telah diupdate', 1),
(1181, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANAK PET LECI 250 ML telah diupdate', 1),
(1182, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA ANAK PET DISNEY 250 ML telah diupdate', 1),
(1183, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET 200 ML telah diupdate', 1),
(1184, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET 500 ML telah diupdate', 1),
(1185, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET GUAVA 320 ML telah diupdate', 1),
(1186, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET LECCI 320 ML telah diupdate', 1),
(1187, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET ORANGE 320 ML telah diupdate', 1),
(1188, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET STRAWBERRY 320 ML telah diupdate', 1),
(1189, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET JERUK NIPIS 320 ML telah diupdate', 1),
(1190, '2020-06-23 14:32:36', 'Barang bernama KAKI TIGA PET MELON 320 ML telah diupdate', 1),
(1191, '2020-06-23 14:44:04', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(1192, '2020-06-23 14:44:04', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(1193, '2020-06-23 14:44:04', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah diupdate', 1),
(1194, '2020-06-23 14:44:04', 'Barang bernama BUCKET MOCHACINO 400 GR telah diupdate', 1),
(1195, '2020-06-23 14:44:04', 'Barang bernama BUCKET MILKY VANILA 400 GR telah diupdate', 1),
(1196, '2020-06-23 14:44:04', 'Barang bernama ROSE CREAM COKLAT 260 GR telah diupdate', 1),
(1197, '2020-06-23 14:44:04', 'Barang bernama ROSE CREAM LEMON 260 GR telah diupdate', 1),
(1198, '2020-06-23 14:44:04', 'Barang bernama ROSE CREAM NANAS 260 GR telah diupdate', 1),
(1199, '2020-06-23 14:44:04', 'Barang bernama ROSE CREAM COKLAT 23 GR telah diupdate', 1),
(1200, '2020-06-23 14:44:04', 'Barang bernama ROSE CREAM LEMON 23 GR telah diupdate', 1),
(1201, '2020-06-23 14:44:04', 'Barang bernama MONTEGO COKLAT 50 GR telah diupdate', 1),
(1202, '2020-06-23 14:44:04', 'Barang bernama MONTEGO COKLAT 17 GR telah diupdate', 1),
(1203, '2020-06-23 14:44:04', 'Barang bernama NARITA MARI SUSU ROLL 150 GR telah diupdate', 1),
(1204, '2020-06-23 14:44:04', 'Barang bernama MONTEGO FUN DOUBLE CHOCO telah diupdate', 1),
(1205, '2020-06-23 14:44:04', 'Barang bernama MARI SUSU MADU 12 GR telah diupdate', 1),
(1206, '2020-06-23 14:44:04', 'Barang bernama MARI SUSU MADU 100 GR telah diupdate', 1);
INSERT INTO `activity` (`id_activity`, `tgl_activity`, `keterangan`, `status`) VALUES
(1207, '2020-06-23 14:44:04', 'Barang bernama MARI SUSU MADU 180 GR telah diupdate', 1),
(1208, '2020-06-23 14:44:04', 'Barang bernama MALKIST SUSU 14.5 GR telah diupdate', 1),
(1209, '2020-06-23 14:44:04', 'Barang bernama MALKIST SUSU 238 GR telah diupdate', 1),
(1210, '2020-06-23 14:44:04', 'Barang bernama MALKIST SUSU 108 GR telah diupdate', 1),
(1211, '2020-06-23 14:44:04', 'Barang bernama CRACKERS BUTTER 262 GR telah diupdate', 1),
(1212, '2020-06-23 14:44:04', 'Barang bernama MALKIST OLEZZ 20 GR telah diupdate', 1),
(1213, '2020-06-23 14:44:04', 'Barang bernama MALKIST GARLIC 12 GR telah diupdate', 1),
(1214, '2020-06-23 14:44:04', 'Barang bernama MALKIST SUSU 25 GR telah diupdate', 1),
(1215, '2020-06-23 14:44:04', 'Barang bernama GARLIC BREADCRACKERS 24 GR telah diupdate', 1),
(1216, '2020-06-23 14:44:04', 'Barang bernama MARI SUSU MADU 24 GR telah diupdate', 1),
(1217, '2020-06-23 14:44:04', 'Barang bernama CRACKERS 132 GR telah diupdate', 1),
(1218, '2020-06-23 14:44:04', 'Barang bernama ABC CRACKERS CHOCO 12 GR telah diupdate', 1),
(1219, '2020-06-23 14:44:04', 'Barang bernama RIMBA CHOCO CRACKERS 12 GR telah diupdate', 1),
(1220, '2020-06-23 14:44:04', 'Barang bernama OLEZZ CHEESE CHOCO 10 GR telah diupdate', 1),
(1221, '2020-06-23 14:44:04', 'Barang bernama OLEZZ CHEESE CHOCO 100 GR telah diupdate', 1),
(1222, '2020-06-23 14:44:04', 'Barang bernama OLEZZ CHOCO PARTY 10 GR telah diupdate', 1),
(1223, '2020-06-23 14:44:04', 'Barang bernama OLEZZ CHOCO PARTY 100 GR telah diupdate', 1),
(1224, '2020-06-23 14:44:04', 'Barang bernama MALKIST SUSU 12 GR telah diupdate', 1),
(1225, '2020-06-23 14:44:04', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 90 GR telah diupdate', 1),
(1226, '2020-06-23 14:44:04', 'Barang bernama MAJESTIC WAFER POPCORN 90 GR telah diupdate', 1),
(1227, '2020-06-23 14:44:04', 'Barang bernama MAJESTIC WAFER POPCORN 53.5 GR telah diupdate', 1),
(1228, '2020-06-23 14:44:04', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 53.5 GR telah diupdate', 1),
(1229, '2020-06-23 14:44:04', 'Barang bernama CHOCOLATE WAFER 145 GR telah diupdate', 1),
(1230, '2020-06-23 14:49:33', 'Barang bernama ULTRA TABUR RASA BALADO 100 GR telah diupdate', 1),
(1231, '2020-06-23 14:49:33', 'Barang bernama ULTRA TBR RS SAMBAL BALADO 100 GR telah diupdate', 1),
(1232, '2020-06-23 14:49:33', 'Barang bernama ULTRA TABUR RS JAGUNG BAKAR 100 GR telah diupdate', 1),
(1233, '2020-06-23 14:49:33', 'Barang bernama ULTRA TABUR RS JAGUNG MANIS 100 GR telah diupdate', 1),
(1234, '2020-06-23 14:49:33', 'Barang bernama ULTRA TABUR RS KEJU 100 GR telah diupdate', 1),
(1235, '2020-06-23 14:49:33', 'Barang bernama ULTRA TABUR RS BARBQUE 100 GR telah diupdate', 1),
(1236, '2020-06-23 14:49:33', 'Barang bernama ULTRA TABUR RS PEDAS MANIS 100 GR telah diupdate', 1),
(1237, '2020-06-23 14:49:33', 'Barang bernama ULTRA AYAM BAWANG 100 GR telah diupdate', 1),
(1238, '2020-06-23 14:49:33', 'Barang bernama ULTRA TABUR RS SAPI PANGGANG 100 GR telah diupdate', 1),
(1239, '2020-06-23 14:49:33', 'Barang bernama ULTRA BALADO 900 GR telah diupdate', 1),
(1240, '2020-06-23 14:49:33', 'Barang bernama ULTRA SAMBAL BALADO 900 GR telah diupdate', 1),
(1241, '2020-06-23 14:49:33', 'Barang bernama ULTRA BARBEQUE 900 GR telah diupdate', 1),
(1242, '2020-06-23 14:49:33', 'Barang bernama ULTRA EXTRA PEDAS 100 GR telah diupdate', 1),
(1243, '2020-06-23 14:49:33', 'Barang bernama ULTRA BALADO PEDAS MANIS 900 GR telah diupdate', 1),
(1244, '2020-06-23 14:51:08', 'Barang bernama SUPERCREAM BON-BON 200 GR telah diupdate', 1),
(1245, '2020-06-23 14:51:08', 'Barang bernama SUPERCREAM NANAS 200 GR telah diupdate', 1),
(1246, '2020-06-23 14:51:08', 'Barang bernama SUPERCREAM STRAWBERI 200 GR telah diupdate', 1),
(1247, '2020-06-23 14:51:08', 'Barang bernama SUPERCREAM ORANGE 200 GR telah diupdate', 1),
(1248, '2020-06-23 14:51:08', 'Barang bernama SUPERCREAM BON-BON 46 GR telah diupdate', 1),
(1249, '2020-06-23 14:52:04', 'Barang bernama GELAS UANG EMAS telah diupdate', 1),
(1250, '2020-06-23 14:52:04', 'Barang bernama LEPEK UANG EMAS telah diupdate', 1),
(1251, '2020-06-23 14:52:04', 'Barang bernama UANG EMAS SPECIAL 30 GR telah diupdate', 1),
(1252, '2020-06-23 14:52:04', 'Barang bernama UANG EMAS MERAH 1 KG telah diupdate', 1),
(1253, '2020-06-23 14:52:04', 'Barang bernama UANG EMAS TOP 600 telah diupdate', 1),
(1254, '2020-06-23 14:52:04', 'Barang bernama UANG EMAS SPECIAL 380 telah diupdate', 1),
(1255, '2020-06-23 14:52:04', 'Barang bernama UANG EMAS SPECIAL 135 telah diupdate', 1),
(1256, '2020-06-23 14:52:04', 'Barang bernama UANG EMAS SPECIAL 10 GR telah diupdate', 1),
(1257, '2020-06-23 14:54:07', 'Barang bernama SABUN CUSSONS PINK 75 GR telah diupdate', 1),
(1258, '2020-06-23 14:54:07', 'Barang bernama SABUN CUSSONS BLUE 75 GR 75 GR telah diupdate', 1),
(1259, '2020-06-23 14:54:07', 'Barang bernama POWDER PINK 50 GR telah diupdate', 1),
(1260, '2020-06-23 14:54:07', 'Barang bernama POWDER BLUE 50 GR telah diupdate', 1),
(1261, '2020-06-23 14:54:07', 'Barang bernama POWDER PINK 100 GR telah diupdate', 1),
(1262, '2020-06-23 14:54:07', 'Barang bernama POWDER BLUE 100 GR telah diupdate', 1),
(1263, '2020-06-23 14:54:07', 'Barang bernama POWDER PINK 200 GR telah diupdate', 1),
(1264, '2020-06-23 14:54:07', 'Barang bernama POWDER BLUE 200 GR telah diupdate', 1),
(1265, '2020-06-23 14:54:07', 'Barang bernama POWDER UNGU 200 GR telah diupdate', 1),
(1266, '2020-06-23 14:54:07', 'Barang bernama POWDER KUNING 50 GR telah diupdate', 1),
(1267, '2020-06-23 14:54:07', 'Barang bernama POWDER KUNING 100 GR telah diupdate', 1),
(1268, '2020-06-23 14:54:07', 'Barang bernama POWDER UNGU 50 GR telah diupdate', 1),
(1269, '2020-06-23 14:54:07', 'Barang bernama SABUN CUSSONS UNGU 75 GR telah diupdate', 1),
(1270, '2020-06-23 14:54:07', 'Barang bernama POWDER UNGU 100 GR telah diupdate', 1),
(1271, '2020-06-23 14:54:07', 'Barang bernama SWEETY PANTS L1 telah diupdate', 1),
(1272, '2020-06-23 14:54:07', 'Barang bernama SWEETY BRONZE L2 telah diupdate', 1),
(1273, '2020-06-23 14:54:07', 'Barang bernama SWEETY PANTS M1 telah diupdate', 1),
(1274, '2020-06-23 14:54:07', 'Barang bernama SWEETY BRONZE M2 telah diupdate', 1),
(1275, '2020-06-23 14:54:07', 'Barang bernama SWEETY PANTS S1 telah diupdate', 1),
(1276, '2020-06-23 14:56:29', 'Barang bernama MINYAK DUNIA CUP 200 ML telah diupdate', 1),
(1277, '2020-06-23 14:56:29', 'Barang bernama MINYAK DUNIA POUCH 900 ML telah diupdate', 1),
(1278, '2020-06-23 14:56:29', 'Barang bernama MINYAK DUNIA POUCH 1800 ML telah diupdate', 1),
(1279, '2020-06-23 14:56:29', 'Barang bernama MINYAK DUNIA JERRYCAN 4500 ML telah diupdate', 1),
(1280, '2020-06-23 14:56:29', 'Barang bernama MINYAK DAMAI PUOCH 1000 ML telah diupdate', 1),
(1281, '2020-06-23 14:56:29', 'Barang bernama MINYAK DAMAI POUCH 2000 ML telah diupdate', 1),
(1282, '2020-06-23 14:59:13', 'Barang bernama MAJORICO BANANA 300 GR telah diupdate', 1),
(1283, '2020-06-23 14:59:13', 'Barang bernama MAJORICO MATCHA 300 GR telah diupdate', 1),
(1284, '2020-06-23 14:59:13', 'Barang bernama MAJORICO CHOCOLATE 300 GR telah diupdate', 1),
(1285, '2020-06-23 14:59:13', 'Barang bernama MONSTA CHOCOCHIP 9 GR telah diupdate', 1),
(1286, '2020-06-23 14:59:13', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 90 GR telah diupdate', 1),
(1287, '2020-06-23 14:59:13', 'Barang bernama MAJESTIC MIX BARRIES 90 GR telah diupdate', 1),
(1288, '2020-06-23 14:59:13', 'Barang bernama MAJESTIC WAFER POPCORN 90 GR telah diupdate', 1),
(1289, '2020-06-23 14:59:13', 'Barang bernama MAJESTIC WAFER POPCORN 53.5 GR telah diupdate', 1),
(1290, '2020-06-23 14:59:13', 'Barang bernama MAJESTIC WAFER WHITE COFFEE 53.5 GR telah diupdate', 1),
(1291, '2020-06-23 14:59:13', 'Barang bernama MAJESTIC CHOCOLATE 90 GR telah diupdate', 1),
(1292, '2020-06-23 14:59:13', 'Barang bernama MAJORICO CHOCOLATE 120 GR telah diupdate', 1),
(1293, '2020-06-23 14:59:13', 'Barang bernama MAJORICO VANILA 120 GR telah diupdate', 1),
(1294, '2020-06-23 15:01:12', 'Barang bernama GELAS KOPI UANG MAS 1 KG telah diupdate', 1),
(1295, '2020-06-23 15:01:12', 'Barang bernama PANDA GRASS JELLY CAN 310 ML telah diupdate', 1),
(1296, '2020-06-23 15:01:12', 'Barang bernama PANDA LT REGULAR CAN 310 ML telah diupdate', 1),
(1297, '2020-06-23 15:01:12', 'Barang bernama PANTHER FRUIT CUP 175 ML telah diupdate', 1),
(1298, '2020-06-23 15:01:12', 'Barang bernama PANTHER ENERGY LAVA NLAST 250 ML telah diupdate', 1),
(1299, '2020-06-23 15:01:12', 'Barang bernama PANTHER ENERGY POWER RED 250 ML telah diupdate', 1),
(1300, '2020-06-23 15:02:01', 'Barang bernama GANTUNGAN PERMEN telah diupdate', 1),
(1301, '2020-06-23 15:02:01', 'Barang bernama PAGODA PERMEN telah diupdate', 1),
(1302, '2020-06-23 15:02:01', 'Barang bernama PERMEN BUBUK ASAM COLA 12 GR telah diupdate', 1),
(1303, '2020-06-23 15:02:01', 'Barang bernama PERMEN BUBUK ASAM ANGGUR 12 GR telah diupdate', 1),
(1304, '2020-06-23 15:02:01', 'Barang bernama PERMEN BUBUK ASAM STROBERI 12 GR telah diupdate', 1),
(1305, '2020-06-23 15:02:01', 'Barang bernama PERMEN LOLLIPOP STROBERI 10 GR telah diupdate', 1),
(1306, '2020-06-23 15:02:01', 'Barang bernama PERMEN LOLLIPOP JERUK 10 GR telah diupdate', 1),
(1307, '2020-06-23 15:02:01', 'Barang bernama PERMEN LOLLIPOP APEL 10 GR telah diupdate', 1),
(1308, '2020-06-23 15:02:01', 'Barang bernama PERMEN LOLLIPOP MANGGA 10 GR telah diupdate', 1),
(1309, '2020-06-23 15:02:01', 'Barang bernama PERMEN ICE CREAM STOBERI 12 GR telah diupdate', 1),
(1310, '2020-06-23 15:02:01', 'Barang bernama PERMEN FINGER SPINNER 11 GR telah diupdate', 1),
(1311, '2020-06-23 15:02:01', 'Barang bernama PERMEN LOLLIPOP MAWAR 12 GR telah diupdate', 1),
(1312, '2020-06-23 15:02:32', 'Barang bernama MONI CHOCO RING 11.5 GR telah diupdate', 1),
(1313, '2020-06-23 15:03:40', 'Barang bernama MONTEGP BUTTER 17 GR telah diupdate', 1),
(1314, '2020-06-23 15:04:15', 'Barang bernama MALKIST GARLIC 12 GR telah diupdate', 1),
(1315, '2020-06-23 15:04:15', 'Barang bernama GARLIC SEDAP 108 GR telah diupdate', 1),
(1316, '2020-06-23 15:04:15', 'Barang bernama GARLIC SEDAP 208 GR telah diupdate', 1),
(1317, '2020-06-23 15:04:15', 'Barang bernama GARLIC BREADCRACKERS 24 GR telah diupdate', 1),
(1318, '2020-06-23 15:04:37', 'Barang bernama MONTEGO BUTTER 17 GR telah diupdate', 1),
(1319, '2020-06-23 15:05:50', 'Barang bernama GELAS KOPI UANG MAS 1 KG telah diupdate', 1),
(1320, '2020-06-23 15:07:08', 'Barang bernama GELAS KOPI UANG MAS 1 KG telah diupdate', 1),
(1321, '2020-06-23 15:11:08', 'Barang bernama GANTUNGAN PERMEN telah diupdate', 1),
(1322, '2020-06-23 18:00:05', 'Tansaksi barang masuk dengan id=21 telah ditambah', 1),
(1323, '2020-06-23 18:00:09', 'Tansaksi barang masuk dengan id=22 telah ditambah', 1),
(1324, '2020-06-23 18:00:12', 'Tansaksi barang masuk dengan id=23 telah ditambah', 1),
(1325, '2020-06-23 18:00:14', 'Tansaksi barang masuk dengan id=24 telah ditambah', 1),
(1326, '2020-06-23 18:00:43', 'Tansaksi barang masuk dengan id=25 telah ditambah', 1),
(1327, '2020-06-23 18:01:20', 'Tansaksi barang masuk dengan id=26 telah ditambah', 1),
(1328, '2020-06-23 18:01:34', 'Tansaksi barang masuk dengan id=27 telah ditambah', 1),
(1329, '2020-06-23 18:05:46', 'Tansaksi barang masuk dengan id=28 telah ditambah', 1),
(1330, '2020-06-23 18:06:04', 'Tansaksi barang masuk dengan id=29 telah ditambah', 1),
(1331, '2020-06-23 18:06:23', 'Tansaksi barang masuk dengan id=30 telah ditambah', 1),
(1332, '2020-06-23 18:15:22', 'Tansaksi barang masuk dengan id=31 telah ditambah', 1),
(1333, '2020-06-23 18:22:52', 'Tansaksi barang masuk dengan id=32 telah ditambah', 1),
(1334, '2020-06-23 18:28:58', 'Tansaksi barang masuk dengan id=33 telah ditambah', 1),
(1335, '2020-06-23 18:44:11', 'Tansaksi barang masuk dengan id=34 telah ditambah', 1),
(1336, '2020-06-23 19:06:26', 'Transaksi barang keluar dengan id=4 telah dihapus', 1),
(1337, '2020-06-23 19:06:42', 'Transaksi barang keluar dengan id=4 telah dihapus', 1),
(1338, '2020-06-23 19:06:50', 'Transaksi barang keluar dengan id=4 telah dihapus', 1),
(1339, '2020-06-23 19:07:10', 'Transaksi barang keluar dengan id=4 telah dihapus', 1),
(1340, '2020-06-23 19:16:31', 'Tansaksi barang masuk dengan id=35 telah ditambah', 1),
(1341, '2020-06-23 19:17:01', 'Tansaksi barang masuk dengan id=35 telah diubah', 1),
(1342, '2020-06-23 19:17:50', 'Tansaksi barang masuk dengan id=36 telah ditambah', 1),
(1343, '2020-06-23 19:20:41', 'Tansaksi barang masuk dengan id=37 telah ditambah', 1),
(1344, '2020-06-23 21:02:13', 'Barang bernama yy telah ditambah', 1),
(1345, '2020-06-23 21:03:24', 'Barang bernama yuyu telah ditambah', 1),
(1346, '2020-06-23 21:04:34', 'Barang bernama yuyu telah diupdate', 1),
(1347, '2020-06-23 21:06:50', 'Barang bernama yuyu telah ditambah', 1),
(1348, '2020-06-23 21:07:05', 'Barang bernama yuyu telah diupdate', 1),
(1349, '2020-06-23 21:10:30', 'Barang bernama yuyu telah ditambah', 1),
(1350, '2020-06-23 21:11:33', 'Tansaksi barang masuk dengan id=38 telah ditambah', 1),
(1351, '2020-06-26 12:51:43', 'Tansaksi barang masuk dengan id=25 telah dihapus', 1),
(1352, '2020-06-26 12:51:45', 'Tansaksi barang masuk dengan id=21 telah dihapus', 1),
(1353, '2020-06-26 12:51:46', 'Tansaksi barang masuk dengan id=22 telah dihapus', 1),
(1354, '2020-06-26 12:51:49', 'Tansaksi barang masuk dengan id=23 telah dihapus', 1),
(1355, '2020-06-26 12:51:50', 'Tansaksi barang masuk dengan id=24 telah dihapus', 1),
(1356, '2020-06-26 12:51:52', 'Tansaksi barang masuk dengan id=32 telah dihapus', 1),
(1357, '2020-06-26 12:52:05', 'Tansaksi barang masuk dengan id=18 telah dihapus', 1),
(1358, '2020-06-26 12:52:09', 'Tansaksi barang masuk dengan id=19 telah dihapus', 1),
(1359, '2020-06-26 12:52:23', 'Tansaksi barang masuk dengan id=26 telah dihapus', 1),
(1360, '2020-06-26 12:52:25', 'Tansaksi barang masuk dengan id=27 telah dihapus', 1),
(1361, '2020-06-26 12:52:27', 'Tansaksi barang masuk dengan id=28 telah dihapus', 1),
(1362, '2020-06-26 12:52:29', 'Tansaksi barang masuk dengan id=29 telah dihapus', 1),
(1363, '2020-06-26 12:52:30', 'Tansaksi barang masuk dengan id=30 telah dihapus', 1),
(1364, '2020-06-26 12:52:33', 'Tansaksi barang masuk dengan id=31 telah dihapus', 1),
(1365, '2020-06-26 12:52:35', 'Tansaksi barang masuk dengan id=20 telah dihapus', 1),
(1366, '2020-06-27 06:40:49', 'Tansaksi barang keluar dengan id=50 telah diubah', 1),
(1367, '2020-06-27 06:52:49', 'Tansaksi barang keluar dengan id=34 telah diubah', 1),
(1368, '2020-06-27 07:15:02', 'Transaksi barang keluar dengan id=50 telah dihapus', 1),
(1369, '2020-06-27 07:25:44', 'Tansaksi barang keluar dengan id=76 telah diubah', 1),
(1370, '2020-06-27 07:26:31', 'Tansaksi barang keluar dengan id=34 telah diubah', 1),
(1371, '2020-06-27 07:27:49', 'Tansaksi barang keluar dengan id=32 telah diubah', 1),
(1372, '2020-06-27 07:28:17', 'Tansaksi barang keluar dengan id=31 telah diubah', 1),
(1373, '2020-06-27 07:46:05', 'Tansaksi barang keluar dengan id=60 telah diubah', 1),
(1374, '2020-06-27 07:46:38', 'Tansaksi barang keluar dengan id=60 telah diubah', 1),
(1375, '2020-06-27 07:47:29', 'Tansaksi barang masuk dengan id=33 telah diubah', 1),
(1376, '2020-06-27 07:49:00', 'User dengan usernament telah dihapus', 1),
(1377, '2020-06-27 07:49:02', 'User dengan usernametri telah dihapus', 1),
(1378, '2020-06-27 07:49:04', 'User dengan usernamenevinr telah dihapus', 1),
(1379, '2020-06-27 07:49:05', 'User dengan usernamenta telah dihapus', 1),
(1380, '2020-06-27 07:53:27', 'Barang bernama qw telah ditambah', 1),
(1381, '2020-06-27 07:53:36', 'Barang bernama qw telah diupdate', 1),
(1382, '2020-06-27 14:35:46', 'Tansaksi barang masuk dengan id=33 telah diubah', 1),
(1383, '2020-06-27 15:11:29', 'Barang bernamaBUCKET KUKIS MAMAH 400 GR telah dihapus', 1),
(1384, '2020-06-27 15:12:45', 'User dengan usernameeko telah dihapus', 1),
(1385, '2020-06-27 15:19:45', 'Tansaksi barang masuk dengan id=33 telah dihapus', 1),
(1386, '2020-06-27 15:19:52', 'Tansaksi barang masuk dengan id=34 telah dihapus', 1),
(1387, '2020-06-27 15:20:08', 'Tansaksi barang masuk dengan id=36 telah dihapus', 1),
(1388, '2020-06-27 15:20:14', 'Tansaksi barang masuk dengan id=37 telah dihapus', 1),
(1389, '2020-06-28 07:37:17', 'Barang bernamayy telah dihapus', 1),
(1390, '2020-06-29 06:27:23', 'Tansaksi barang keluar dengan id=76 telah diubah', 0),
(1391, '2020-06-29 06:28:07', 'Tansaksi barang keluar dengan id=34 telah diubah', 0),
(1392, '2020-06-29 06:28:37', 'Tansaksi barang keluar dengan id=79 telah diubah', 0),
(1393, '2020-06-29 06:33:28', 'Tansaksi barang keluar dengan id=76 telah diubah', 0),
(1394, '2020-06-29 06:48:34', 'Tansaksi barang keluar dengan id=32 telah diubah', 0),
(1395, '2020-06-29 06:52:31', 'Tansaksi barang masuk dengan id=38 telah ditambah', 0),
(1396, '2020-06-29 06:52:36', 'Tansaksi barang masuk dengan id=38 telah diubah', 0),
(1397, '2020-06-29 06:53:13', 'Tansaksi barang masuk dengan id=38 telah dihapus', 0),
(1398, '2020-06-29 06:53:19', 'Tansaksi barang masuk dengan id=39 telah ditambah', 0),
(1399, '2020-06-29 06:56:18', 'Tansaksi barang keluar dengan id=79 telah diubah', 0),
(1400, '2020-06-29 06:56:26', 'Tansaksi barang keluar dengan id=79 telah diubah', 0),
(1401, '2020-06-29 06:59:02', 'Tansaksi barang keluar dengan id=76 telah diubah', 0),
(1402, '2020-06-29 07:02:30', 'Tansaksi barang keluar dengan id=34 telah diubah', 0),
(1403, '2020-06-29 07:04:27', 'Transaksi barang keluar dengan id=79 telah dihapus', 0),
(1404, '2020-06-29 07:04:30', 'Transaksi barang keluar dengan id=76 telah dihapus', 0),
(1405, '2020-06-29 07:04:45', 'Transaksi barang keluar dengan id=34 telah dihapus', 0),
(1406, '2020-06-29 10:46:57', 'Tansaksi barang keluar dengan id=89 telah diubah', 0),
(1407, '2020-06-29 10:47:17', 'Tansaksi barang keluar dengan id=89 telah diubah', 0),
(1408, '2020-06-29 10:47:32', 'Transaksi barang keluar dengan id=89 telah dihapus', 0),
(1409, '2020-06-29 10:48:14', 'Transaksi barang keluar dengan id=89 telah dihapus', 0),
(1410, '2020-06-29 10:48:50', 'Tansaksi barang masuk dengan id=40 telah ditambah', 0),
(1411, '2020-06-29 10:49:03', 'Tansaksi barang masuk dengan id=40 telah dihapus', 0),
(1412, '2020-06-29 10:58:16', 'Tansaksi barang keluar dengan id=91 telah ditambah', 0),
(1413, '2020-06-29 11:11:22', 'Tansaksi barang keluar dengan id=91 telah diubah', 0),
(1414, '2020-06-29 11:15:10', 'Tansaksi barang keluar dengan id=89 telah diubah', 0),
(1415, '2020-06-29 11:16:17', 'Tansaksi barang keluar dengan id=92 telah diubah', 0),
(1416, '2020-06-29 11:19:43', 'Tansaksi barang keluar dengan id=92 telah diubah', 0),
(1417, '2020-06-29 11:37:55', 'Tansaksi barang keluar dengan id=94 telah diubah', 0),
(1418, '2020-06-29 11:51:44', 'Tansaksi barang keluar dengan id=95 telah diubah', 0),
(1419, '2020-06-29 12:07:06', 'Tansaksi barang keluar dengan id=97 telah diubah', 0),
(1420, '2020-06-29 12:07:21', 'Tansaksi barang keluar dengan id=97 telah diubah', 0),
(1421, '2020-06-29 12:08:00', 'Tansaksi barang keluar dengan id=98 telah diubah', 0),
(1422, '2020-06-29 12:09:47', 'Tansaksi barang keluar dengan id=98 telah diubah', 0),
(1423, '2020-06-29 12:10:50', 'Tansaksi barang keluar dengan id=98 telah diubah', 0),
(1424, '2020-06-29 13:41:29', 'Tansaksi barang keluar dengan id=100 telah diubah', 0),
(1425, '2020-06-29 13:41:42', 'Tansaksi barang keluar dengan id=100 telah diubah', 0),
(1426, '2020-06-29 13:44:20', 'Tansaksi barang keluar dengan id=101 telah diubah', 0),
(1427, '2020-06-29 13:44:32', 'Tansaksi barang keluar dengan id=101 telah diubah', 0),
(1428, '2020-06-29 13:44:55', 'Tansaksi barang keluar dengan id=101 telah diubah', 0),
(1429, '2020-06-29 13:45:03', 'Tansaksi barang keluar dengan id=101 telah diubah', 0),
(1430, '2020-06-29 13:46:10', 'Tansaksi barang keluar dengan id=101 telah diubah', 0),
(1431, '2020-06-29 13:58:19', 'Tansaksi barang masuk dengan id=40 telah ditambah', 0),
(1432, '2020-06-29 13:58:27', 'Tansaksi barang masuk dengan id=39 telah dihapus', 0),
(1433, '2020-06-29 13:58:41', 'Tansaksi barang masuk dengan id=41 telah ditambah', 0),
(1435, '2020-06-29 14:00:19', 'Tansaksi barang masuk dengan id=40 telah diubah', 0),
(1436, '2020-06-29 14:00:50', 'Tansaksi barang masuk dengan id=40 telah diubah', 0),
(1437, '2020-06-29 14:03:37', 'Tansaksi barang masuk dengan id=42 telah ditambah', 0),
(1438, '2020-06-29 14:03:43', 'Tansaksi barang masuk dengan id=41 telah dihapus', 0),
(1439, '2020-06-29 14:03:47', 'Tansaksi barang masuk dengan id=42 telah dihapus', 0),
(1440, '2020-06-29 14:03:48', 'Tansaksi barang masuk dengan id=40 telah dihapus', 0),
(1441, '2020-06-29 14:04:41', 'Tansaksi barang masuk dengan id=40 telah ditambah', 0),
(1442, '2020-06-29 14:05:00', 'Tansaksi barang masuk dengan id=40 telah diubah', 0),
(1443, '2020-06-29 14:05:16', 'Tansaksi barang masuk dengan id=40 telah diubah', 0),
(1444, '2020-06-29 14:05:23', 'Tansaksi barang masuk dengan id=40 telah dihapus', 0),
(1445, '2020-06-29 14:08:42', 'Tansaksi barang keluar dengan id=103 telah ditambah', 0),
(1446, '2020-06-29 14:09:47', 'Tansaksi barang keluar dengan id=104 telah ditambah', 0),
(1447, '2020-06-29 14:10:50', 'Tansaksi barang keluar dengan id=105 telah ditambah', 0),
(1448, '2020-06-29 14:11:04', 'Tansaksi barang keluar dengan id=105 telah diubah', 0),
(1449, '2020-06-29 14:11:26', 'Tansaksi barang keluar dengan id=105 telah diubah', 0),
(1450, '2020-06-29 14:11:40', 'Tansaksi barang keluar dengan id=105 telah diubah', 0),
(1451, '2020-06-29 14:12:25', 'Transaksi barang keluar dengan id=105 telah dihapus', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `kemasan` varchar(20) DEFAULT NULL,
  `merk` varchar(100) DEFAULT '-',
  `jenis` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT 0,
  `terjual` int(11) DEFAULT 0,
  `foto_barang` varchar(100) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_supplier`, `nama_barang`, `kemasan`, `merk`, `jenis`, `harga`, `stok`, `terjual`, `foto_barang`, `del`) VALUES
(1, 1, 'BUCKET KUKIS MAMAH 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 9980, 20, 'barang_1587349533.jpg', 0),
(2, 1, 'BUCKET COCONUT 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 5000, 0, 'barang_1587349541.jpg', 0),
(3, 1, 'BUCKET BUTTER KUKIS 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 5112, 0, 'barang_1587350641.jpg', 0),
(4, 1, 'BUCKET MOCHACINO 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 4988, 12, 'barang_1587349556.jpg', 0),
(5, 1, 'BUCKET MILKY VANILA 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 5000, 0, 'barang_1587350694.jpg', 0),
(6, 1, 'MAJORICO BANANA 300 GR', '12 PCS / K', '-', 'MAKANAN', 16750, 4996, 4, 'barang_1587349524.jpg', 0),
(7, 1, 'MAJORICO MATCHA 300 GR', '12 PCS / K', '-', 'MAKANAN', 16750, 4989, 11, 'barang_1591681473.jpg', 0),
(8, 1, 'MAJORICO CHOCOLATE 300 GR', '12 PCS / K', '-', 'MAKANAN', 16750, 4988, 0, 'barang_1592392059.jpg', 0),
(9, 1, 'KUKIS N KRIM STRAWBERY 400 GR', '6 PCS / K', '-', 'MAKANAN', 22700, 5000, 0, 'barang_1592743912.jpg', 0),
(10, 7, 'SABUN CUSSONS PINK 75 GR', '144 PCS / K', '-', 'KECANTIKAN', 2946, 5000, 0, 'barang_1592746485.jpg', 0),
(11, 7, 'SABUN CUSSONS BLUE 75 GR 75 GR', '144 PCS / K', '-', 'KECANTIKAN', 2946, 5000, 0, 'barang_1592133011.jpg', 0),
(12, 7, 'POWDER PINK 50 GR', '48 PCS/ K', '-', 'KECANTIKAN', 3500, 5000, 0, 'barang_1592393484.jpg', 0),
(13, 7, 'POWDER BLUE 50 GR', '48 PCS / K', '-', 'KECANTIKAN', 3500, 5000, 0, 'barang_1592738920.jpg', 0),
(14, 7, 'POWDER PINK 100 GR', '48 PCS / K', '-', 'KECANTIKAN', 6193, 5000, 0, 'barang_1592742882.jpg', 0),
(15, 7, 'POWDER BLUE 100 GR', '48 PCS / K', '-', 'KECANTIKAN', 6193, 5000, 0, 'barang_1587486993.jpg', 0),
(16, 7, 'POWDER PINK 200 GR', '24 PCS / K', '-', 'KECANTIKAN', 11044, 5000, 0, 'barang_1592744430.jpg', 0),
(17, 7, 'POWDER BLUE 200 GR', '24 PCS / K', '-', 'KECANTIKAN', 11044, 5000, 0, 'barang_1592746679.jpg', 0),
(18, 7, 'POWDER UNGU 200 GR', '24 PCS / K', '-', 'KECANTIKAN', 11044, 5000, 0, 'barang_1587354776.jpg', 0),
(19, 7, 'POWDER KUNING 50 GR', '48 PCS / K', '-', 'KECANTIKAN', 3500, 5000, 0, 'barang_1592742136.jpg', 0),
(20, 7, 'POWDER KUNING 100 GR', '48 PCS / K', '-', 'KECANTIKAN', 6809, 5000, 0, 'barang_1592747688.jpg', 0),
(21, 7, 'POWDER UNGU 50 GR', '48 PCS / K', '-', 'KECANTIKAN', 3500, 5000, 0, 'barang_1592738666.jpg', 0),
(22, 7, 'SABUN CUSSONS UNGU 75 GR', '144 PCS / K', '-', 'KECANTIKAN', 2946, 5000, 0, 'barang_1587351059.jpg', 0),
(23, 7, 'POWDER UNGU 100 GR', '48 PCS / K', '-', 'KECANTIKAN', 6193, 5000, 0, 'barang_1592392960.jpg', 0),
(24, 9, 'GELAS TEH KMPG MANIS', '72 PCS / K', '-', 'MINUMAN', 5000, 5000, 0, 'barang_1592883820.jpg', 0),
(25, 6, 'GELAS KOPI UANG MAS 1 KG', '6 PCS / D', '-', 'MINUMAN', 0, 5000, 0, 'barang_1592884581.jpg', 0),
(26, 1, 'KUKIS KELAPA 13,9 GR', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592746971.jpg', 0),
(27, 1, 'KUKIS MOCHACINO 13,9 GR 6 x 120', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587354382.jpg', 0),
(28, 1, 'KUKIS VANILLA 13,9 GR 6 X 120', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587352858.jpg', 0),
(29, 1, 'KUKIS BUTTER 300 GR', '18 PCS / K', '-', 'MAKANAN', 6250, 5000, 0, 'barang_1592883467.jpg', 0),
(30, 1, 'KUKIS KELAPA 300 GR', '18 PCS / K', '-', 'MAKANAN', 6250, 5000, 0, 'barang_1592738761.png', 0),
(31, 1, 'KUKIS MOCHACINO 300 GR', '18 PCS / K', '-', 'MAKANAN', 6250, 5000, 0, 'barang_1587350033.jpg', 0),
(32, 1, 'KUKIS VANILLA 300 GR', '18 PCS / K', '-', 'MAKANAN', 6250, 5000, 0, 'barang_1592392709.png', 0),
(33, 1, 'KUKIS BUTTER 90 GR', '30 PCS / K', '-', 'MAKANAN', 2375, 5000, 0, 'barang_1592742368.jpg', 0),
(34, 1, 'KUKIS KELAPA 90 GR', '30 PCS / K', '-', 'MAKANAN', 2375, 5000, 0, 'barang_1592738569.jpg', 0),
(35, 1, 'KUKIS MOCHACINO 90 GR', '30 PCS / K', '-', 'MAKANAN', 2375, 5000, 0, 'barang_1592746209.jpg', 0),
(36, 1, 'KUKIS VANILLA 90 GR', '30 PCS / K', '-', 'MAKANAN', 2375, 5000, 0, 'barang_1587389782.jpg', 0),
(37, 1, 'KUKIS WHITE COFFEE 13 GR 6 x 120', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587486678.jpg', 0),
(38, 1, 'KUKIS ROLL WHITE COFFEE 90 GR', '30 PCS / K', '-', 'MAKANAN', 2375, 5000, 0, 'barang_1592745054.jpg', 0),
(39, 1, 'KUKIS WHITE COFFEE 300 GR', '18 PCS/ K ', '-', 'MAKANAN', 6250, 5000, 0, 'barang_1592394441.jpg', 0),
(40, 1, 'KUKIS BUTTER 70 GR', '60 PCS / K', '-', 'MAKANAN', 1400, 5000, 0, 'barang_1587486806.jpg', 0),
(41, 1, 'KUKIS MOCHACINO 70 GR', '60 PCS / K', '-', 'MAKANAN', 1400, 5000, 0, 'barang_1592744117.jpg', 0),
(42, 1, 'KUKIS KELAPA 70 GR', '60 PCS / K', '-', 'MAKANAN', 1400, 5000, 0, 'barang_1592743507.jpg', 0),
(43, 1, 'KUKIS KELAPA 12 GR', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587354519.jpg', 0),
(44, 1, 'KUKIS BUTTER 12 GR', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587353137.jpg', 0),
(45, 1, 'KUKIS MOCHACINO 12 GR', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592393344.jpg', 0),
(46, 1, 'KUKIS VANILLA 12 GR', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592739398.jpg', 0),
(47, 1, 'KUKIS WHITE COFFEE 12 GR', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587350838.jpg', 0),
(48, 1, 'KUKIS VANILLA 70 GR', '60 PCS / K', '-', 'MAKANAN', 1400, 5000, 0, 'barang_1592392931.jpg', 0),
(49, 1, 'KUKIS BANANA 12 GR', '9 PACK / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1592884078.jpg', 0),
(50, 1, 'KUKIS KELAPA 25.2 GR', '12 PACK / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1592393571.jpg', 0),
(51, 1, 'KUKIS BUTTER 25.2 GR', '12 PCS / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1592746284.jpg', 0),
(52, 1, 'KUKIS MOCHACINO 25.2 GR', '12 PACK / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1592132977.jpg', 0),
(53, 1, 'KUKIS VANILLA 25.2 GR', '12 PCS / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1592393440.jpg', 0),
(54, 1, 'KUKIS WHITE COFFEE 25.2 GR', '12 PACK / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1592738824.jpg', 0),
(55, 1, 'KUKIS KELAPA 218 GR', '24 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1591681264.jpg', 0),
(56, 1, 'KUKIS BUTTER 218 GR', '24 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1587486934.jpg', 0),
(57, 1, 'KUKIS MOCHACINO 218 GR', '24 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1592744222.jpg', 0),
(58, 1, ' KUKIS VANILLA 218 GR', '24 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1592743526.jpg', 0),
(59, 1, 'MONI CHOCO RING 11.5 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587355392.png', 0),
(60, 1, 'KUKIS HELLO 11.5 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592394110.jpg', 0),
(61, 1, 'MONSTA CHOCOCHIP 9 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592748049.jpg', 0),
(62, 1, 'ROSE CREAM COKLAT 260 GR', '10 PCS / K', '-', 'MAKANAN', 5500, 5000, 0, 'barang_1592739636.jpg', 0),
(63, 1, 'ROSE CREAM LEMON 260 GR', '10 PCS / K', '-', 'MAKANAN', 5500, 5000, 0, 'barang_1587351026.jpg', 0),
(64, 1, 'ROSE CREAM NANAS 260 GR', '10 PCS / K', '-', 'MAKANAN', 5500, 5000, 0, 'barang_1592392444.jpg', 0),
(65, 1, 'ROSE CREAM COKLAT 23 GR', '6 PACK / K', '-', 'MAKANAN', 14000, 5000, 0, 'barang_1592742505.jpg', 0),
(66, 1, 'ROSE CREAM LEMON 23 GR', '6 PACK / K', '-', 'MAKANAN', 14000, 5000, 0, 'barang_1592392284.jpg', 0),
(67, 1, 'MONTEGO COKLAT 50 GR', '30 PCS / K', '-', 'MAKANAN', 2250, 5000, 0, 'barang_1587471161.jpg', 0),
(68, 1, 'MONTEGO COKLAT 17 GR', ' 6 PACK / K', '-', 'MAKANAN', 16000, 5000, 0, 'barang_1587389298.jpg', 0),
(69, 1, 'NARITA MARI SUSU ROLL 150 GR', '24 PCS / K', '-', 'MAKANAN', 2650, 5000, 0, 'barang_1592884673.jpg', 0),
(70, 1, 'MONTEGO BUTTER 17 GR', '6 PACK / K', '-', 'MAKANAN', 16000, 5000, 0, 'barang_1592745697.png', 0),
(71, 1, 'MONTEGO FUN DOUBLE CHOCO', '10 PACK / K', '-', 'MAKANAN', 9600, 5000, 0, 'barang_1591681310.jpg', 0),
(72, 1, 'MARI SUSU MADU 12 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587487028.jpg', 0),
(73, 1, 'MARI SUSU MADU 100 GR', '36 PCS / K', '-', 'MAKANAN', 3500, 5000, 0, 'barang_1592742183.png', 0),
(74, 1, 'MARI SUSU MADU 180 GR', '24 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1592746701.jpg', 0),
(75, 1, 'MALKIST SUSU 14.5 GR', '9 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587354836.jpg', 0),
(76, 1, 'MALKIST SUSU 238 GR', '18 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1592739590.jpg', 0),
(77, 1, 'MALKIST SUSU 108 GR', '24 PCS / K', '-', 'MAKANAN', 3150, 5000, 0, 'barang_1592747725.jpg', 0),
(78, 1, 'CRACKERS BUTTER 262 GR', '18 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1587471113.jpg', 0),
(79, 1, 'MALKIST OLEZZ 20 GR', '12 PACK / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1587351085.jpg', 0),
(80, 1, 'MALKIST GARLIC 12 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592748120.jpg', 0),
(81, 1, 'GARLIC SEDAP 108 GR', '24 PCS / K', '-', 'MAKANAN', 3500, 5000, 0, 'barang_1587486713.jpg', 0),
(82, 1, 'GARLIC SEDAP 208 GR', '18 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1592392398.jpg', 0),
(83, 1, 'MALKIST SUSU 25 GR', '12 PACK / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1592748200.jpg', 0),
(84, 1, 'GARLIC BREADCRACKERS 24 GR', '12 PACK / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1587389381.jpg', 0),
(85, 1, 'MARI SUSU MADU 24 GR', '12 PACK / K', '-', 'MAKANAN', 8000, 5000, 0, 'barang_1592392192.jpg', 0),
(86, 1, 'CRACKERS 132 GR', ' 24 PCS / K', '-', 'MAKANAN', 3150, 5000, 0, 'barang_1592745850.jpg', 0),
(87, 1, 'ABC CRACKERS CHOCO 12 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592743308.jpg', 0),
(88, 1, 'RIMBA CHOCO CRACKERS 12 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587487307.png', 0),
(89, 1, 'OLEZZ CHEESE CHOCO 10 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592744475.jpg', 0),
(90, 1, 'OLEZZ CHEESE CHOCO 100 GR', '30 PCS / K', '-', 'MAKANAN', 3500, 5000, 0, 'barang_1592738413.jpg', 0),
(91, 1, 'OLEZZ CHOCO PARTY 10 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1587353857.jpg', 0),
(92, 1, 'OLEZZ CHOCO PARTY 100 GR', '30 PCS / K', '-', 'MAKANAN', 3500, 5000, 0, 'barang_1592739888.jpg', 0),
(93, 1, 'MALKIST SUSU 12 GR', '6 PACK / K', '-', 'MAKANAN', 8200, 5000, 0, 'barang_1592883124.jpg', 0),
(94, 1, 'SUPERCREAM BON-BON 200 GR', '21 PCS / K', '-', 'MAKANAN', 4286, 5000, 0, 'barang_1592133748.jpg', 0),
(95, 1, 'SUPERCREAM NANAS 200 GR', '21 PCS / K', '-', 'MAKANAN', 4286, 5000, 0, 'barang_1587351234.jpg', 0),
(96, 1, 'SUPERCREAM STRAWBERI 200 GR', '21 PCS / K', '-', 'MAKANAN', 4286, 5000, 0, 'barang_1592392568.jpg', 0),
(97, 1, 'SUPERCREAM ORANGE 200 GR', '21 PCS / K', '-', 'MAKANAN', 4286, 5000, 0, 'barang_1592133357.jpg', 0),
(98, 1, 'SUPERCREAM BON-BON 46 GR', '60 PCS / K', '-', 'MAKANAN', 1400, 5000, 0, 'barang_1592393706.jpg', 0),
(99, 2, 'KAKI TIGA GUAVA CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1587486178.jpg', 0),
(100, 2, 'KAKI TIGA STRAWBERRY CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1592747404.jpg', 0),
(101, 2, 'KAKI TIGA LECCI CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1592394348.jpg', 0),
(102, 2, 'KAKI TIGA MELON CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1587352768.jpg', 0),
(103, 2, 'KAKI TIGA ORANGE CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1592391772.jpg', 0),
(104, 2, 'KAKI TIGA ANGGUR CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1592133433.jpg', 0),
(105, 2, 'KAKI TIGA APEL CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1587486209.jpg', 0),
(106, 2, 'KAKI TIGA MARKISA 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1592745987.jpg', 0),
(107, 2, 'KAKI TIGA TIMUN SURI CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1587389562.jpg', 0),
(108, 2, 'KAKI TIGA KURMA & TIN CAN 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1587486500.jpg', 0),
(109, 2, 'KAKI TIGA JERUK NIPIS 320 ML', '24 PCS / K', '-', 'MINUMAN', 4938, 5000, 0, 'barang_1592744647.jpg', 0),
(110, 2, 'KAKI TIGA ANAK ORANGE CAN 250 ML', '24 PCS / K', '-', 'MINUMAN', 4167, 5000, 0, 'barang_1591681403.jpg', 0),
(111, 2, 'KAKI TIGA ANAK LECCI CAN 250 ML', '24 PCS / K', '-', 'MINUMAN', 4167, 5000, 0, 'barang_1592391976.jpg', 0),
(112, 2, 'KAKI TIGA ANAK STRAWBERRY CAN 250 ML', '24 PCS / K', '-', 'MINUMAN', 4167, 5000, 0, 'barang_1592743828.jpg', 0),
(113, 2, 'KAKI TIGA PET ANAK 200 ML', '48 PCS / K', '-', 'MINUMAN', 2834, 5000, 0, 'barang_1592746888.jpg', 0),
(114, 2, 'KAKI TIGA ANAK PET FROZEN APEL 250 ML', '24 PCS / K', '-', 'MINUMAN', 4000, 5000, 0, 'barang_1587354140.jpg', 0),
(115, 2, 'KAKI TIGA ANAK PET BLACKBURN 250 ML', '24 PCS / K', '-', 'MINUMAN', 4000, 5000, 0, 'barang_1592742054.jpg', 0),
(116, 2, 'KAKI TIGA ANAK PER ORANGE 250 ML', '24 PCS / K', '-', 'MINUMAN', 4000, 5000, 0, 'barang_1592747508.jpg', 0),
(117, 2, 'KAKI TIGA ANAK PET LECI 250 ML', '24 PCS / K', '-', 'MINUMAN', 4000, 5000, 0, 'barang_1592133477.jpg', 0),
(118, 2, 'KAKI TIGA ANAK PET DISNEY 250 ML', '24 PCS / K', '-', 'MINUMAN', 4000, 5000, 0, 'barang_1587349576.jpg', 0),
(119, 2, 'KAKI TIGA PET 200 ML', '48 PCS / K', '-', 'MINUMAN', 2844, 5000, 0, 'barang_1592392683.jpg', 0),
(120, 2, 'KAKI TIGA PET 500 ML', '24 PCS / K', '-', 'MINUMAN', 5438, 5000, 0, 'barang_1592133093.jpg', 0),
(121, 2, 'KAKI TIGA PET GUAVA 320 ML', '24 PCS / K', '-', 'MINUMAN', 4750, 5000, 0, 'barang_1587486351.jpg', 0),
(122, 2, 'KAKI TIGA PET LECCI 320 ML', '24 PCS / K', '-', 'MINUMAN', 4750, 5000, 0, 'barang_1592746106.jpg', 0),
(123, 2, 'KAKI TIGA PET ORANGE 320 ML', '24 PCS / K', '-', 'MINUMAN', 4750, 5000, 0, 'barang_1587389625.jpg', 0),
(124, 2, 'KAKI TIGA PET STRAWBERRY 320 ML', '24 PCS / K', '-', 'MINUMAN', 4750, 5000, 0, 'barang_1587486568.jpg', 0),
(125, 2, 'KAKI TIGA PET JERUK NIPIS 320 ML', '24 PCS / K', '-', 'MINUMAN', 4750, 5000, 0, 'barang_1592744718.jpg', 0),
(126, 2, 'KAKI TIGA PET MELON 320 ML', '24 PCS / K', '-', 'MINUMAN', 4750, 5000, 0, 'barang_1591680790.jpg', 0),
(127, 1, 'MAJESTIC WAFER WHITE COFFEE 90 GR', '30 PCS / K', '-', 'MAKANAN', 2150, 5000, 0, 'barang_1592745890.jpg', 0),
(128, 1, 'MAJESTIC MIX BARRIES 90 GR', '30 PCS / K', '-', 'MAKANAN', 2150, 5000, 0, 'barang_1587389441.jpg', 0),
(129, 1, 'MAJESTIC WAFER POPCORN 90 GR', '30 PCS / K', '-', 'MAKANAN', 2150, 5000, 0, 'barang_1587486439.jpg', 0),
(130, 1, 'MAJESTIC WAFER POPCORN 53.5 GR', '60 PCS / K', '-', 'MAKANAN', 1400, 5000, 0, 'barang_1592744513.jpg', 0),
(131, 1, 'MAJESTIC WAFER WHITE COFFEE 53.5 GR', '60 PCS / K', '-', 'MAKANAN', 1400, 5000, 0, 'barang_1591681026.jpg', 0),
(132, 1, 'CHOCOLATE WAFER 145 GR', '24 PCS / K', '-', 'MAKANAN', 4000, 5000, 0, 'barang_1592392864.jpg', 0),
(133, 1, 'MAJESTIC CHOCOLATE 90 GR', '30 PCS / K', '-', 'MAKANAN', 2150, 5000, 0, 'barang_1592743764.jpg', 0),
(134, 1, 'MAJORICO CHOCOLATE 120 GR', '24 PCS / K', '-', 'MAKANAN', 3750, 5000, 0, 'barang_1592746837.jpg', 0),
(135, 1, 'MAJORICO VANILA 120 GR', '24 PCS / K', '-', 'MAKANAN', 3750, 5000, 0, 'barang_1587354070.jpg', 0),
(136, 7, 'SWEETY PANTS L1', '20 RTG / K', 'PEMBALUT', 'KECANTIKAN', 10800, 5000, 0, 'barang_1592133278.jpg', 0),
(137, 7, 'SWEETY BRONZE L2', '12 RTG / K', '-', 'KECANTIKAN', 19750, 5000, 0, 'barang_1592392355.jpg', 0),
(138, 7, 'SWEETY PANTS M1', '20 RTG / K', '-', 'KECANTIKAN', 10800, 5000, 0, 'barang_1592746576.jpg', 0),
(139, 7, 'SWEETY BRONZE M2', '12 RTG / K', '-', 'KECANTIKAN', 19750, 5000, 0, 'barang_1587389350.jpg', 0),
(140, 7, 'MIRANDA MC 1', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592391839.jpg', 0),
(141, 7, 'MIRANDA MC 2', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592745745.jpg', 0),
(142, 7, 'MIRANDA MC 3', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1591681202.jpg', 0),
(143, 7, 'MIRANDA MC 4', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1587487063.jpg', 0),
(144, 7, 'MIRANDA MC 5', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592744456.jpg', 0),
(145, 7, 'MIRANDA MC 6', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592746731.jpg', 0),
(146, 7, 'MIRANDA MC 7', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1587354871.jpg', 0),
(147, 7, 'MIRANDA MC 8', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592738482.jpg', 0),
(148, 7, 'MIRANDA MC 9', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592747764.jpg', 0),
(149, 7, 'MIRANDA MC 10', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592133699.jpg', 0),
(150, 7, 'MIRANDA MC 11', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1587351171.jpg', 0),
(151, 7, 'MIRANDA MC 12', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592392524.jpg', 0),
(152, 7, 'MIRANDA MC 13', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1587486745.jpg', 0),
(153, 7, 'MIRANDA MC 14', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592393673.jpg', 0),
(154, 7, 'MIRANDA MC 15', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592748158.jpg', 0),
(155, 7, 'MIRANDA MC 16', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1587389411.jpg', 0),
(156, 7, 'MIRANDA MC 17', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1587486403.jpg', 0),
(157, 7, 'MIRANDA MC 18', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1592745094.jpg', 0),
(158, 7, 'MIRANDA MC 19', '144 PCS / K', '-', 'KECANTIKAN', 12150, 5000, 0, 'barang_1591681123.png', 0),
(159, 10, 'MINYAK DUNIA CUP 200 ML', '48 PCS / K', '-', 'DAPUR', 2415, 5000, 0, 'barang_1587389711.jpg', 0),
(160, 10, 'MINYAK DUNIA POUCH 900 ML', '12 PCS / K', '-', 'DAPUR', 10145, 5000, 0, 'barang_1587486616.jpg', 0),
(161, 10, 'MINYAK DUNIA POUCH 1800 ML', '6 PCS / K', '-', 'DAPUR', 19845, 5000, 0, 'barang_1591680888.jpg', 0),
(162, 10, 'MINYAK DUNIA JERRYCAN 4500 ML', '4 PCS / K', '-', 'DAPUR', 53340, 5000, 0, 'barang_1592739265.jpg', 0),
(163, 10, 'MINYAK DAMAI PUOCH 1000 ML', '12 PCS / K', '-', 'DAPUR', 11267, 5000, 0, 'barang_1592744084.jpg', 0),
(164, 10, 'MINYAK DAMAI POUCH 2000 ML', '6 PCS / K', '-', 'DAPUR', 22197, 5000, 0, 'barang_1592747144.jpg', 0),
(165, 2, 'PANDA GRASS JELLY CAN 310 ML', '24 PCS / K', '-', 'MINUMAN', 3334, 5000, 0, 'barang_1592392091.jpg', 0),
(166, 2, 'PANDA LT REGULAR CAN 310 ML', '24 PCS / K', '-', 'MINUMAN', 4200, 5000, 0, 'barang_1592744031.jpg', 0),
(167, 2, 'PANTHER FRUIT CUP 175 ML', '1 PCS / K', '-', 'MINUMAN', 18500, 5000, 0, 'barang_1592747107.jpg', 0),
(168, 2, 'PANTHER ENERGY LAVA NLAST 250 ML', '12 PCS/ K', '-', 'MINUMAN', 2200, 5000, 0, 'barang_1587354429.jpg', 0),
(169, 2, 'PANTHER ENERGY POWER RED 250 ML', '12 PCS / K', '-', 'MINUMAN', 2200, 5000, 0, 'barang_1587353003.jpg', 0),
(170, 11, 'GANTUNGAN PERMEN', '1', '-', 'PERMEN', 5000, 5000, 0, 'barang_1592899868.jpg', 0),
(171, 11, 'PAGODA PERMEN', '1', '-', 'PERMEN', 3000, 5000, 0, 'barang_1587354496.jpg', 0),
(172, 11, 'PERMEN BUBUK ASAM COLA 12 GR', '15 PACK / K', '-', 'PERMEN', 30000, 5000, 0, 'barang_1587353046.jpg', 0),
(173, 11, 'PERMEN BUBUK ASAM ANGGUR 12 GR', '15 PACK / K', '-', 'PERMEN', 30000, 5000, 0, 'barang_1592883924.jpg', 0),
(174, 11, 'PERMEN BUBUK ASAM STROBERI 12 GR', '15 PACK / K', '-', 'PERMEN', 30000, 5000, 0, 'barang_1592884550.jpg', 0),
(175, 11, 'PERMEN LOLLIPOP STROBERI 10 GR', '20 PACK / K', '-', 'PERMEN', 45000, 5000, 0, 'barang_1587350464.jpg', 0),
(176, 11, 'PERMEN LOLLIPOP JERUK 10 GR', '20 PACK / K', '-', 'PERMEN', 45000, 5000, 0, 'barang_1592882670.jpg', 0),
(177, 11, 'PERMEN LOLLIPOP APEL 10 GR', '20 PACK / K', '-', 'PERMEN', 45000, 5000, 0, 'barang_1592883375.jpg', 0),
(178, 11, 'PERMEN LOLLIPOP MANGGA 10 GR', '20 PACK / K', '-', 'PERMEN', 45000, 5000, 0, 'barang_1592883536.jpg', 0),
(179, 11, 'PERMEN ICE CREAM STOBERI 12 GR', '30 PACK / K', '-', 'PERMEN', 17000, 5000, 0, 'barang_1592739785.jpg', 0),
(180, 11, 'PERMEN FINGER SPINNER 11 GR', '30 PACK / K', '-', 'PERMEN', 17000, 5000, 0, 'barang_1592745180.png', 0),
(181, 11, 'PERMEN LOLLIPOP MAWAR 12 GR', '30 PACK / K', '-', 'PERMEN', 17000, 5000, 0, 'barang_1592883430.png', 0),
(182, 7, 'SWEETY PANTS S1', '20 RTG / K', '-', 'KECANTIKAN', 8350, 5000, 0, 'barang_1587487362.jpg', 0),
(183, 9, 'TEH CELUP KAMPUNG MNS ASLI', '48 PCS/ K', '-', 'MINUMAN', 4200, 5000, 0, 'barang_1592739188.jpg', 0),
(184, 9, 'TEH KROSOS KAMPUNG MNS', '10 SLOP / B', '-', 'MINUMAN', 20000, 5000, 0, 'barang_1592884768.jpg', 0),
(185, 9, 'TEH KAMPUNG MELATI', '48 PCS / K', '-', 'MINUMAN', 4000, 5000, 0, 'barang_1592742818.jpg', 0),
(186, 6, 'GELAS UANG EMAS', '100 PCS / K', '-', 'MINUMAN', 2000, 5000, 0, 'barang_1587354601.jpg', 0),
(187, 6, 'LEPEK UANG EMAS', '10 PCS / K', '-', 'MINUMAN', 4500, 5000, 0, 'barang_1587353227.jpg', 0),
(188, 6, 'UANG EMAS SPECIAL 30 GR', '10 RTG / K', '-', 'MINUMAN', 8910, 5000, 0, 'barang_1592882746.png', 0),
(189, 6, 'UANG EMAS MERAH 1 KG', '5 PCS / K', '-', 'MINUMAN', 22260, 5000, 0, 'barang_1592133607.png', 0),
(190, 6, 'UANG EMAS TOP 600', '12 PCS / K', '-', 'MINUMAN', 19125, 5000, 0, 'barang_1587350880.jpg', 0),
(191, 6, 'UANG EMAS SPECIAL 380', '9 PCS / K', '-', 'MINUMAN', 14700, 5000, 0, 'barang_1592884581.jpg', 0),
(192, 6, 'UANG EMAS SPECIAL 135', '25 PCS / K', '-', 'MINUMAN', 3850, 5000, 0, 'barang_1591669453.jpg', 0),
(193, 6, 'UANG EMAS SPECIAL 10 GR', '20 RTG / K', '-', 'MINUMAN', 3600, 5000, 0, 'barang_1592739462.jpg', 0),
(194, 4, 'ULTRA TABUR RASA BALADO 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1592747376.jpg', 0),
(195, 4, 'ULTRA TBR RS SAMBAL BALADO 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1592394314.jpg', 0),
(196, 4, 'ULTRA TABUR RS JAGUNG BAKAR 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1587350146.jpg', 0),
(197, 4, 'ULTRA TABUR RS JAGUNG MANIS 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1592747864.jpg', 0),
(198, 4, 'ULTRA TABUR RS KEJU 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1592742455.jpg', 0),
(199, 4, 'ULTRA TABUR RS BARBQUE 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1592393795.jpg', 0),
(200, 4, 'ULTRA TABUR RS PEDAS MANIS 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1592746380.jpg', 0),
(201, 4, 'ULTRA AYAM BAWANG 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1587389820.jpg', 0),
(202, 4, 'ULTRA TABUR RS SAPI PANGGANG 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1592393635.jpg', 0),
(203, 4, 'ULTRA BALADO 900 GR', '20 PCS / K', '-', 'DAPUR', 37000, 5000, 0, 'barang_1592883289.jpg', 0),
(204, 4, 'ULTRA SAMBAL BALADO 900 GR', '20 PCS / K', '-', 'DAPUR', 37000, 5000, 0, 'barang_1592747269.jpg', 0),
(205, 4, 'ULTRA BARBEQUE 900 GR', '20 PCS / K', '-', 'DAPUR', 37000, 5000, 0, 'barang_1587486866.jpg', 0),
(206, 4, 'ULTRA EXTRA PEDAS 100 GR', '200 PCS / K', '-', 'DAPUR', 4200, 5000, 0, 'barang_1592744241.jpg', 0),
(207, 4, 'ULTRA BALADO PEDAS MANIS 900 GR', '20 PCS / K', '-', 'DAPUR', 37000, 5000, 0, 'barang_1592746641.jpg', 0),
(208, 8, 'VIT BODY SCENT BLOSSOM/PINK 120 ML', '16 PCS / K', '-', 'KECANTIKAN', 18001, 5000, 0, 'barang_1587389588.jpg', 0),
(209, 8, 'VIT BODY SCENT BLISSFUL/ORANGE 120 ML', '36 PCS / K', '-', 'KECANTIKAN', 18001, 5000, 0, 'barang_1587486546.jpg', 0),
(210, 8, 'VIT BODY SCENT BREEZE/BIRU 120 ML', '36 PCS / K', '-', 'KECANTIKAN', 18001, 5000, 0, 'barang_1592743171.jpg', 0),
(211, 8, 'VIT BODY SCENT BIZARE/UNGU 120 ML', '36 PCS / K', '-', 'KECANTIKAN', 18001, 5000, 0, 'barang_1592394042.jpg', 0),
(212, 8, 'VIT BODY SCENT BLESS/MERAH 120 ML', '36 PCS / K', '-', 'KECANTIKAN', 18001, 5000, 0, 'barang_1592743873.jpg', 0),
(213, 8, 'VIT BODY SCENT BELLE/HIJAU 120 ML', '36 PCS / K', '-', 'KECANTIKAN', 18001, 5000, 0, 'barang_1592746923.jpg', 0),
(214, 8, 'VIT BODY SCENT BLOSSOM/PINK 60 ML', '36 PCS / K', '-', 'KECANTIKAN', 11310, 5000, 0, 'barang_1592394164.jpg', 0),
(215, 8, 'VIT BODY SCENT BREEZE/BIRU 60 ML', '36 PCS / K', '-', 'KECANTIKAN', 11310, 5000, 0, 'barang_1587354169.jpg', 0),
(216, 8, 'VIT BODY SCENT BIZARE/UNGU 60 ML', '36 PCS / K', '-', 'KECANTIKAN', 11310, 5000, 0, 'barang_1592747599.jpg', 0),
(217, 8, 'VIT BODY SCENT BLISFUL/ORANGE 60 ML', '36 PCS / K', '-', 'KECANTIKAN', 11310, 5000, 0, 'barang_1592394245.jpg', 0),
(218, 8, 'VIT BODY SCENT BLESS/MERAH 60 ML', '36 PCS / K', '-', 'KECANTIKAN', 11310, 5000, 0, 'barang_1592393982.jpg', 0),
(219, 8, 'VIT BODY SCENT BELLE/HIJAU 60 ML', '36 PCS / K', '-', 'KECANTIKAN', 11310, 5000, 0, 'barang_1587349584.jpg', 0),
(220, 7, 'YUPI STRAWBERRY 120 GR', '24 PCS / K', '-', 'PERMEN', 5912, 5000, 0, 'barang_1592743634.jpg', 0),
(221, 7, 'YUPI FRUTY PUFF 120 GR', '24 PCS / K', '-', 'PERMEN', 5800, 5000, 0, 'barang_1592746769.jpg', 0),
(222, 7, 'YUPI BABY BEAR 10 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1587354031.jpg', 0),
(223, 7, 'YUPI LITTLE STAR 10 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1592740132.jpg', 0),
(224, 7, 'YUPI GUMMY FANG 9 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1592747813.jpg', 0),
(225, 7, 'YUPI EXOTIC MANGO 10 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1592133794.png', 0),
(226, 7, 'YUPI BERRI BRONZ 8 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1587351320.jpg', 0),
(227, 7, 'YUPI ICE CREAM CONE 10 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1592392605.jpg', 0),
(228, 7, 'YUPI STRAWBERRY 125S TOPLES', '6 PCS / K', '-', 'PERMEN', 17680, 5000, 0, 'barang_1592133395.jpg', 0),
(229, 7, 'YUPI FRUTY COLA  8 GR', '24 PCS / K', '-', 'PERMEN', 10200, 5000, 0, 'barang_1592393754.jpg', 0),
(230, 7, 'YUPI GUMMY COOKIES 8 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1592745934.jpg', 0),
(231, 7, 'YUPI WOTTA MELON 8.5 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1587389530.jpg', 0),
(232, 7, 'YUPI JUST FOR FUN', '12 PCS / K', '-', 'PERMEN', 10300, 5000, 0, 'barang_1587486472.jpg', 0),
(233, 7, 'YUPI BURGER 8 GR', '12 PCS / K', '-', 'PERMEN', 10200, 5000, 0, 'barang_1592744611.png', 0),
(234, 7, 'YUPI ROLETTO 8 GR', '24 PCS / K', '-', 'PERMEN', 10200, 5000, 0, 'barang_1591680976.jpg', 0),
(235, 7, 'YUPI JUGLE FUN 8.5 GR', '12 PCS / K', '-', 'PERMEN', 10200, 5000, 0, 'barang_1592391939.png', 0),
(236, 7, 'YUPI CHOCO GLEE 7 GR', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1592743797.jpg', 0),
(237, 7, 'YUPI DINO LAND 8 GR', '12 PCS / K', '-', 'PERMEN', 10200, 5000, 0, 'barang_1592746861.jpg', 0),
(238, 7, 'YUPI SEA WORLD 8.5 GR', '12 PCS / K', '-', 'PERMEN', 10200, 5000, 0, 'barang_1587354108.jpg', 0),
(239, 7, 'YUPI MARSHMALLOW TWIST 20 GR', '12 PCS / K', '-', 'PERMEN', 16800, 5000, 0, 'barang_1592740256.jpg', 0),
(240, 7, 'YUPI CALCI BEAN 16 GR 12 PCS / K', '12 PCS / K', '-', 'PERMEN', 10000, 5000, 0, 'barang_1592747433.jpg', 0),
(241, 7, 'YUPI GUMMY FRIES 15 GR', '12 PCS / K', '-', 'PERMEN', 10300, 5000, 0, 'barang_1592394383.jpg', 0),
(242, 7, 'YUPI PIZZA 15 GR', '12 PCS / K', '-', 'PERMEN', 10300, 5000, 0, 'barang_1587352816.jpg', 0),
(243, 7, 'YUPI FRUIT COCKTAIL 15 GR', '12 PCS / K', '-', 'PERMEN', 10300, 5000, 0, 'barang_1592392645.jpg', 0),
(244, 7, 'YUPI SEET HEART 15 GR', '12 PCS / K', '-', 'PERMEN', 10300, 5000, 0, 'barang_1592133060.jpg', 0),
(245, 7, 'YUPI AQUARIUM 15 GR', '12 PCS / K', '-', 'PERMEN', 10300, 5000, 0, 'barang_1587486236.jpg', 0),
(246, 7, 'YUPI FESTIVE EDITION 400 GR', '6 PCS / K', '-', 'PERMEN', 25000, 5000, 0, 'barang_1592746054.jpg', 0),
(289, 1, 'yy', 'yy', 'yy', 'yy', 3, 3, 3, 'barang_1592920933.jpg', 1),
(292, 8, 'yuyu', 'kotak', 'yuyu', 'makanan', 12000, 12, 2, 'barang_1592921430.jpg', 0),
(293, 7, 'qw', 'ww', 'ww', 'ww', 1, 1, 0, 'gg.jpg', 0);

--
-- Trigger `barang`
--
DELIMITER $$
CREATE TRIGGER `delete barang` AFTER UPDATE ON `barang` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Barang bernama ', OLD.nama_barang, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah barang` AFTER INSERT ON `barang` FOR EACH ROW BEGIN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Barang bernama ', NEW.nama_barang, ' telah ditambah'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update barang` AFTER UPDATE ON `barang` FOR EACH ROW BEGIN
IF OLD.del=NEW.del AND OLD.stok=NEW.stok AND OLD.terjual=NEW.terjual THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Barang bernama ', OLD.nama_barang, ' telah diupdate'));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` varchar(200) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `carousel`
--

INSERT INTO `carousel` (`id_carousel`, `judul`, `isi`, `gambar`) VALUES
(3, 'Promo Ramadhan', 'Beli 1 dapat diskon', 'carousel_1588048397.jpg'),
(4, 'Promo Ramadhan', 'Beli 2 harga tetap', 'carousel_1588048326.jpg'),
(6, 'Promo Idul Fitri', 'syarat dan ketentuan berlaku', 'carousel_1588048366.jpg'),
(7, 'pohong gosong', 'enak pol', 'carousel_1588041174.jpg'),
(8, 'Promo Idul Fitri', 'harga produk lebih murah', 'carousel_1588048943.jpg'),
(9, 'Promo kokola', 'harga lebih murah', 'carousel_1588048955.jpg'),
(10, 'Promo Butter cookies', 'Beli 2 dapat diskon', 'carousel_1588048992.jpg'),
(11, 'Promo Ramadhan', 'Harga spesial', 'carousel_1588049008.jpg'),
(12, 'Promo biskuit', 'sekarang kemasan lebih besar', 'carousel_1588049021.jpg'),
(13, 'Sekarang kemasan biskit lebih besar', 'WOW', 'carousel_1588048918.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cicil`
--

CREATE TABLE `cicil` (
  `id_cicil` int(11) NOT NULL,
  `id_keluar` int(11) NOT NULL,
  `tgl_cicil` datetime NOT NULL DEFAULT current_timestamp(),
  `periode` int(11) NOT NULL DEFAULT 0,
  `jumlah_cicil` int(11) NOT NULL,
  `foto_cicil` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cicil`
--

INSERT INTO `cicil` (`id_cicil`, `id_keluar`, `tgl_cicil`, `periode`, `jumlah_cicil`, `foto_cicil`, `status`, `del`) VALUES
(19, 41, '2020-06-07 11:25:48', 1, 2, 'cicil_1591503948.jpg', 1, 0),
(22, 47, '2020-06-07 11:37:26', 1, 3, 'cicil_1591504646.jpg', 1, 0),
(23, 48, '2020-06-07 11:43:02', 1, 2, 'cicil_1591504982.jpg', 1, 1),
(24, 49, '2020-06-07 12:29:10', 1, 6, 'cicil_1591507750.jpg', 1, 0),
(25, 56, '2020-06-08 05:23:03', 1, 2, 'cicil_1591568583.jpg', 1, 0),
(28, 48, '2020-06-09 11:26:41', 2, 2, 'cicil_1591676801.jpg', 1, 1),
(32, 71, '2020-06-26 12:54:13', 1, 3, 'erd.jpeg', 0, 1),
(33, 72, '2020-06-26 12:54:51', 1, 3, 'cicil_1593150891.jpg', 1, 1),
(34, 72, '2020-06-26 12:56:44', 2, 3, 'cicil_1593151004', 0, 1),
(36, 74, '2020-06-26 13:03:05', 1, 3, 'cicil_1593151385.jpg', 1, 1),
(37, 74, '2020-06-26 13:04:35', 2, 3, 'cicil_1593151475.jpg', 1, 1),
(38, 74, '2020-06-26 13:06:51', 3, 3, 'cicil_1593151611.jpg', 1, 1),
(39, 75, '2020-06-26 14:08:38', 1, 3, 'cicil_1593155318.jpg', 1, 1),
(40, 75, '2020-06-26 14:09:27', 2, 3, 'cicil_1593155367.jpg', 1, 0),
(42, 75, '2020-06-27 05:27:20', 2, 3, 'cicil_1593210440.jpg', 0, 1),
(43, 75, '2020-06-27 05:29:42', 3, 3, 'cicil_1593210582.jpg', 1, 1);

--
-- Trigger `cicil`
--
DELIMITER $$
CREATE TRIGGER `cicil1` AFTER UPDATE ON `cicil` FOR EACH ROW BEGIN
IF NEW.periode-NEW.jumlah_cicil=0 and NEW.status='1'THEN
	UPDATE keluar SET status='2'
    WHERE id_keluar=NEW.id_keluar;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_keluar`
--

CREATE TABLE `detail_keluar` (
  `id_barang` int(11) NOT NULL,
  `id_keluar` int(11) NOT NULL,
  `qty_keluar` int(11) DEFAULT NULL,
  `diskon` int(3) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_keluar`
--

INSERT INTO `detail_keluar` (`id_barang`, `id_keluar`, `qty_keluar`, `diskon`, `status`) VALUES
(1, 2, 11, 0, 3),
(2, 2, 11, 0, 3),
(1, 4, NULL, 0, 1),
(2, 5, 1, 0, 1),
(3, 6, 1, 0, 3),
(1, 7, 2, 0, 1),
(2, 7, 1, 0, 1),
(1, 9, 1, 0, 3),
(2, 10, 1, 0, 3),
(2, 11, 1, 0, 3),
(3, 11, 2, 0, 3),
(1, 12, 5, 0, 3),
(1, 13, 3, 0, 3),
(1, 14, 1, 0, 3),
(2, 17, 1, 0, 3),
(3, 18, 10, 0, 3),
(1, 19, 1, 0, 3),
(2, 20, 1, 10, 3),
(1, 21, 10, 10, 3),
(4, 21, 10, 20, 3),
(2, 23, 10, 10, 3),
(4, 24, 10, 8, 3),
(1, 25, 1, 0, 3),
(2, 27, 1, 0, 3),
(1, 27, 1, 0, 3),
(2, 28, 12, 0, 1),
(1, 29, 10, 0, 2),
(1, 30, 10, 0, 3),
(1, 31, 10, 0, 3),
(2, 32, 1, 10, 3),
(3, 33, 1, 10, 3),
(1, 38, 10, 0, 1),
(1, 39, 12, 0, 1),
(1, 41, 11, 0, 1),
(2, 47, 1, 0, 1),
(2, 48, 12, 0, 1),
(1, 48, 12, 0, 1),
(2, 49, 12, 0, 1),
(1, 51, 11, 0, 3),
(1, 53, 11, 0, 3),
(1, 55, 12, 0, 3),
(2, 56, 12, 0, 1),
(2, 58, 111, 0, 1),
(2, 60, 11, 11, 2),
(1, 61, 13, 0, 1),
(2, 61, 12, 0, 1),
(3, 62, 11, 0, 1),
(1, 63, 12, 0, 1),
(2, 64, 1, 0, 1),
(2, 65, 1, 0, 1),
(7, 69, 11, 0, 1),
(1, 70, 1, 0, 1),
(1, 71, 12, 0, 1),
(2, 72, 12, 0, 1),
(4, 74, 12, 0, 1),
(1, 75, 12, 0, 1),
(2, 77, 12, 0, 0),
(1, 78, 12, 0, 0),
(1, 80, 1, 0, 0),
(1, 81, 1, 0, 0),
(1, 82, 12, 0, 0),
(1, 83, 1, 0, 0),
(1, 84, 1, 0, 0),
(1, 85, 1, 0, 0),
(1, 86, 1, 0, 1),
(1, 87, 1, 0, 1),
(1, 88, 1, 0, 1),
(1, 89, 24, 0, 2),
(1, 90, 10, 1, 2),
(1, 91, 20, 10, 2),
(1, 92, 30, 0, 2),
(1, 93, 10, 20, 2),
(1, 94, 20, 1, 2),
(1, 95, 20, 10, 2),
(1, 96, 10, 0, 2),
(1, 97, 10, 10, 2),
(1, 98, 5, 1, 2),
(1, 99, 20, 0, 2),
(1, 100, 10, 10, 2),
(1, 101, 20, 10, 2),
(1, 102, 10, 0, 2),
(1, 103, 1, 10, 2),
(1, 104, 90, 1, 2),
(1, 105, 10, 0, 2);

--
-- Trigger `detail_keluar`
--
DELIMITER $$
CREATE TRIGGER `editstok` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
declare harga1 int(20);
select harga into harga1 from barang where barang.id_barang=NEW.id_barang;

IF OLD.diskon!=NEW.diskon OR OLD.qty_keluar!=NEW.qty_keluar THEN

UPDATE keluar SET total_keluar=(total_keluar+(harga1*OLD.qty_keluar*OLD.diskon/100))+((NEW.qty_keluar-OLD.qty_keluar)*harga1)-(harga1*NEW.qty_keluar*NEW.diskon/100) WHERE id_keluar=NEW.id_keluar;

END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus detail_keluar` AFTER DELETE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok+OLD.qty_keluar 
    WHERE (id_barang=OLD.id_barang AND OLD.status='2') or (id_barang=OLD.id_barang AND OLD.status='3');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus detail_keluar1` AFTER DELETE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual = terjual-OLD.qty_keluar 
    WHERE (id_barang=OLD.id_barang AND OLD.status='2') or (id_barang=OLD.id_barang AND OLD.status='3');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah detail_keluar` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok-NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='2';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah detail_keluar1` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual=terjual+NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='2';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah keluar` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
IF NEW.status=2 THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang keluar dengan id=', NEW.id_keluar, ' telah ditambah')) ;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ubah keluar` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
IF NEW.qty_keluar!=OLD.qty_keluar THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang keluar dengan id=', OLD.id_keluar, ' telah diubah')) ;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok-NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='2' AND OLD.qty_keluar=NEW.qty_KELUAR;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar1` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual=terjual+NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='2' AND OLD.qty_keluar=NEW.qty_KELUAR;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar2` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok+(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar>NEW.qty_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar3` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET terjual=terjual-(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar>NEW.qty_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar4` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok+(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar<NEW.qty_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar5` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET terjual=terjual-(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar<NEW.qty_keluar;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_masuk`
--

CREATE TABLE `detail_masuk` (
  `id_barang` int(11) NOT NULL,
  `id_masuk` int(11) NOT NULL,
  `qty_masuk` int(11) DEFAULT NULL,
  `diskon` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_masuk`
--

INSERT INTO `detail_masuk` (`id_barang`, `id_masuk`, `qty_masuk`, `diskon`) VALUES
(1, 3, 1, 0),
(2, 5, 11, 0),
(1, 6, 11, 0),
(1, 7, 22, 0),
(1, 8, 10, 0),
(14, 8, 10, 0),
(1, 10, 10, 10),
(11, 10, 20, 20),
(1, 11, 1, 10),
(2, 12, 1, 10),
(1, 33, 6, 0),
(1, 34, 2, 0),
(1, 36, 1, 0),
(1, 37, 2, 0),
(2, 38, 2, 2),
(1, 39, 1, 1);

--
-- Trigger `detail_masuk`
--
DELIMITER $$
CREATE TRIGGER `editstok1` AFTER UPDATE ON `detail_masuk` FOR EACH ROW BEGIN
declare harga1 int(20);
select harga into harga1 from barang where barang.id_barang=NEW.id_barang;

IF OLD.diskon!=NEW.diskon OR OLD.qty_masuk!=NEW.qty_masuk THEN

UPDATE masuk SET total_masuk=(total_masuk+(harga1*OLD.qty_masuk*OLD.diskon/100))+((NEW.qty_masuk-OLD.qty_masuk)*harga1)-(harga1*NEW.qty_masuk*NEW.diskon/100) WHERE id_masuk=NEW.id_masuk;

END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus detail_masuk` AFTER DELETE ON `detail_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok-OLD.qty_masuk 
    WHERE id_barang=OLD.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah detail_masuk` AFTER INSERT ON `detail_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok+NEW.qty_masuk
    WHERE id_barang=NEW.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ubah masuk` AFTER UPDATE ON `detail_masuk` FOR EACH ROW BEGIN
IF NEW.qty_masuk!=OLD.qty_masuk THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang masuk dengan id=', OLD.id_masuk, ' telah diubah')) ;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_masuk` AFTER UPDATE ON `detail_masuk` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok-(OLD.qty_masuk-NEW.qty_masuk)
    WHERE id_barang=NEW.id_barang AND OLD.qty_masuk>NEW.qty_masuk;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_masuk1` AFTER UPDATE ON `detail_masuk` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok+(NEW.qty_masuk-OLD.qty_masuk)
    WHERE id_barang=NEW.id_barang AND OLD.qty_masuk<NEW.qty_masuk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `id_keluar` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tgl_keluar` datetime DEFAULT NULL,
  `total_keluar` int(11) DEFAULT NULL,
  `foto_keluar` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`id_keluar`, `id_user`, `tgl_keluar`, `total_keluar`, `foto_keluar`, `status`, `del`) VALUES
(2, 2, '2020-04-25 02:15:36', 495000, NULL, 0, 0),
(4, 1, '2020-04-26 09:49:36', 202500, NULL, 0, 1),
(5, 3, '2020-05-06 06:03:03', 22500, NULL, 0, 1),
(6, 3, '2020-05-06 02:10:18', 22500, NULL, 0, 0),
(7, 3, '2020-05-06 02:21:36', 67500, NULL, 0, 1),
(9, 3, '2020-05-12 05:49:53', 22500, NULL, 0, 0),
(10, 4, '2020-05-12 05:51:25', 22500, NULL, 0, 0),
(11, 2, '2020-06-01 06:52:05', 67500, NULL, 0, 0),
(12, 2, '2020-06-01 08:07:18', 157500, NULL, 0, 0),
(13, 2, '2020-06-01 08:39:15', 45000, NULL, 0, 0),
(14, 2, '2020-06-01 09:28:55', 22500, NULL, 0, 0),
(17, 3, '2020-06-01 09:29:41', 22500, NULL, 0, 0),
(18, 3, '2020-06-02 11:53:54', 202500, NULL, 0, 0),
(19, 3, '2020-06-02 12:02:20', 20250, NULL, 0, 0),
(20, 3, '2020-06-02 12:04:12', 20250, NULL, 0, 0),
(21, 4, '2020-06-02 12:06:12', 382500, NULL, 0, 0),
(23, 3, '2020-06-03 02:16:05', 202500, NULL, 0, 0),
(24, 3, '2020-06-04 10:33:09', 261900, NULL, 0, 0),
(25, 2, '2020-06-04 10:39:05', 22500, NULL, 0, 0),
(27, 2, '2020-06-06 09:23:01', 45000, NULL, 0, 0),
(28, 2, '2020-06-06 09:23:24', 270000, NULL, 0, 0),
(29, 2, '2020-06-06 09:30:55', 225000, NULL, 0, 0),
(30, 2, '2020-06-06 09:31:22', 225000, NULL, 0, 0),
(31, 2, '2020-06-06 09:32:42', 270000, NULL, 0, 0),
(32, 3, '2020-06-06 09:33:36', 18000, NULL, 0, 0),
(33, 2, '2020-06-06 09:37:04', 20250, NULL, 0, 0),
(38, 2, '2020-06-06 11:47:45', 225000, NULL, 1, 0),
(39, 2, '2020-06-06 11:58:37', 270000, NULL, 1, 0),
(41, 2, '2020-06-07 11:25:41', 247500, NULL, 1, 0),
(47, 2, '2020-06-07 11:37:19', 22500, NULL, 1, 0),
(48, 3, '2020-06-07 11:42:55', 540000, NULL, 2, 0),
(49, 2, '2020-06-07 12:28:00', 270000, NULL, 1, 0),
(51, 1, '2020-06-08 05:09:12', 247500, 'bayar_1591567758.jpg', 0, 0),
(53, 3, '2020-06-08 05:21:49', 247500, 'bayar_1591568515.jpg', 0, 0),
(55, 3, '2020-06-08 05:22:46', 270000, 'bayar_1591568572.jpg', 0, 0),
(56, 3, '2020-06-08 05:22:57', 270000, NULL, 1, 0),
(57, 1, '0000-00-00 00:00:00', 80, NULL, 0, 0),
(58, 2, '2020-06-20 07:54:57', 2497500, 'bayar_1592614505.jpg', 0, 0),
(60, 2, '2020-06-20 07:55:20', 225000, 'bayar_1592614526.jpg', 0, 0),
(61, 3, '2020-06-20 05:36:56', 562500, 'bayar_1592649490', 0, 0),
(62, 3, '2020-06-20 05:38:42', 247500, NULL, 0, 0),
(63, 3, '2020-06-20 05:38:55', 270000, NULL, 0, 0),
(64, 3, '2020-06-20 05:40:15', 22500, NULL, 0, 0),
(65, 2, '2020-06-21 06:43:46', 22500, NULL, 0, 0),
(66, 1, '0000-00-00 00:00:00', 11, NULL, 0, 0),
(67, 1, '0000-00-00 00:00:00', 1, NULL, 0, 0),
(69, 2, '2020-06-23 06:44:32', 184250, NULL, 0, 0),
(70, 1, '2020-06-23 07:20:47', 22500, NULL, 0, 0),
(71, 3, '2020-06-26 12:53:08', 270000, NULL, 1, 0),
(72, 3, '2020-06-26 12:54:37', 270000, NULL, 1, 0),
(74, 3, '2020-06-26 01:02:29', 270000, NULL, 2, 0),
(75, 3, '2020-06-26 02:08:14', 270000, NULL, 2, 0),
(77, 1, '2020-06-27 12:35:04', 270000, 'bayar_1593236108', 0, 0),
(78, 1, '2020-06-27 12:37:05', 270000, 'bayar_1593236228', 0, 0),
(80, 2, '2020-06-29 06:02:45', 22500, NULL, 0, 0),
(81, 2, '2020-06-29 06:02:52', 22500, NULL, 0, 0),
(82, 2, '2020-06-29 06:03:00', 270000, NULL, 0, 0),
(83, 2, '2020-06-29 06:03:08', 22500, NULL, 0, 0),
(84, 2, '2020-06-29 06:03:14', 22500, NULL, 0, 0),
(85, 2, '2020-06-29 06:03:21', 22500, NULL, 0, 0),
(86, 2, '2020-06-29 06:03:28', 22500, NULL, 0, 0),
(87, 2, '2020-06-29 06:03:34', 22500, NULL, 0, 0),
(88, 2, '2020-06-29 06:10:24', 22500, NULL, 0, 0),
(89, 2, '2020-06-29 10:54:31', 270000, NULL, 0, 0),
(90, 2, '2020-06-29 10:57:23', 202500, NULL, 0, 0),
(91, 3, '2020-06-29 10:58:13', 202500, NULL, 0, 0),
(92, 2, '2020-06-29 11:15:55', 225000, NULL, 0, 0),
(93, 2, '2020-06-29 11:24:18', 157500, NULL, 0, 0),
(94, 2, '2020-06-29 11:35:24', 222750, NULL, 0, 0),
(95, 2, '2020-06-29 11:51:26', 180000, NULL, 0, 0),
(96, 2, '2020-06-29 11:52:07', 225000, NULL, 0, 0),
(97, 2, '2020-06-29 12:06:50', 405000, NULL, 0, 0),
(98, 2, '2020-06-29 12:07:36', 111375, NULL, 0, 0),
(99, 2, '2020-06-29 01:40:36', 450000, NULL, 0, 0),
(100, 2, '2020-06-29 01:41:00', 405000, NULL, 0, 0),
(101, 2, '2020-06-29 01:44:03', 405000, NULL, 0, 0),
(102, 2, '2020-06-29 02:05:57', 225000, NULL, 0, 0),
(103, 3, '2020-06-29 02:08:40', 20250, NULL, 0, 0),
(104, 3, '2020-06-29 02:09:44', 2004750, NULL, 0, 0),
(105, 2, '2020-06-29 02:12:44', 225000, NULL, 0, 0);

--
-- Trigger `keluar`
--
DELIMITER $$
CREATE TRIGGER `hapus keluar` BEFORE DELETE ON `keluar` FOR EACH ROW BEGIN
	DELETE FROM detail_keluar
    WHERE id_keluar=OLD.id_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus keluar1` AFTER UPDATE ON `keluar` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Transaksi barang keluar dengan id=', OLD.id_keluar, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus keluar2` BEFORE DELETE ON `keluar` FOR EACH ROW BEGIN
	DELETE FROM cicil
    WHERE id_keluar=OLD.id_keluar;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `id_masuk` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `tgl_masuk` datetime DEFAULT NULL,
  `total_masuk` int(11) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`id_masuk`, `id_supplier`, `tgl_masuk`, `total_masuk`, `del`) VALUES
(3, 6, '2020-04-25 02:20:29', 22500, 1),
(5, 1, '2020-04-25 02:21:43', 247500, 1),
(6, 9, '2020-06-01 08:42:51', 247500, 1),
(7, 2, '2020-06-01 08:53:11', 270000, 1),
(8, 6, '2020-06-02 12:11:11', 286930, 1),
(9, 11, '2020-06-02 12:31:37', 249636, 1),
(10, 12, '2020-06-02 12:32:22', 249636, 1),
(11, 12, '2020-06-04 10:27:07', 20250, 1),
(12, 11, '2020-06-04 10:29:14', 20250, 1),
(33, 1, '2020-06-23 06:28:58', 90000, 1),
(34, 1, '2020-06-23 06:44:11', 45000, 1),
(36, 1, '2020-06-23 07:17:50', 22500, 1),
(37, 1, '2020-06-23 07:20:41', 45000, 1),
(38, 11, '2020-06-29 06:52:29', 22275, 1),
(39, 11, '2020-06-29 06:53:17', 22275, 1);

--
-- Trigger `masuk`
--
DELIMITER $$
CREATE TRIGGER `hapus masuk` BEFORE DELETE ON `masuk` FOR EACH ROW BEGIN
	DELETE FROM detail_masuk
    WHERE id_masuk=OLD.id_masuk;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus masuk1` AFTER UPDATE ON `masuk` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang masuk dengan id=', OLD.id_masuk, ' telah dihapus')) ;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah masuk` AFTER INSERT ON `masuk` FOR EACH ROW BEGIN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang masuk dengan id=', NEW.id_masuk, ' telah ditambah')) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `del` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_telp`, `del`) VALUES
(1, 'SUMBER BARU JEMBER', 'Probolinggo', '081234456781', 0),
(2, 'PT UNIMOS', 'Probolinggo', '087654321234', 0),
(3, 'PT SPARINDO MUSTIKA', 'Probolinggo', '089765456111', 0),
(4, 'PT ULTRA AROMA', 'Probolinggo', '089765456121', 0),
(5, 'RBS', 'Probolinggo', '081236789167', 0),
(6, 'KOPI UANG EMAS', 'Probolinggo', '081236789456', 0),
(7, 'CORPORATE', 'Probolinggo', '089765456789', 0),
(8, 'VITALIS', 'Probolinggo', '085234566754', 0),
(9, 'PT WIRLA MAHAKARYA (TEH)', 'Probolinggo', '081236787890', 0),
(10, 'PT DAMAI SENTOSA (COOKING OIL)', 'Probolinggo', '089765456666', 0),
(11, 'PERMEN KATO', 'Probolinggo', '089765451111', 0),
(12, 'CV. KAWI', 'Probolinggo', '081236786645', 0);

--
-- Trigger `supplier`
--
DELIMITER $$
CREATE TRIGGER `delete supplier` BEFORE UPDATE ON `supplier` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Supplier bernama ', OLD.nama_supplier, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `username`, `password`, `level`, `nama`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `no_telp`, `foto`, `del`) VALUES
(1, 'nevin@gmail.com', 'nevin', '57dd6150d6302a88892a0c5e09dfc7fc', 'admin', 'nevin trian', '2000-01-27', 'laki-laki', 'Jember', '089765456123', '178f9a56fe39beeee3a74a9cc1945e01.jpg', 0),
(2, 'brianvidyanjaya@gmail.com', 'brian', '929064f2a141f812f1c2efb3ff8194ca', 'manajer', 'brian w', '2000-04-20', 'laki-laki', 'Probolinggo', '087672819212', '9d0ff1ca66178f0effd7349882c633c0.jpg', 0),
(3, 'rere@gmail.com', 'rere', '4b054d969d22341219a5bc88f4c8321f', 'customer', 'rere', '2000-01-27', 'perempuan', 'Jember', '089765682312', 'pp.jpg', 0),
(4, 'rara@gmail.com', 'rara', '5ab83fa52e5d0f5abc44d2eed4479ff0', 'customer', 'rara', '2020-04-09', 'perempuan', 'Jember', '085234567891', 'pp.jpg', 0),
(5, 'sinyo@gmail.com', 'sinyo', '7cf7a0149ee46108c3f37066b1c126ec', 'gudang', 'sinyo', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', 'user_1585977429.jpg', 0),
(6, 'rama@gmail.com', 'rama', '36226b453eb255f672f118a1ecc1e4ec', 'sales', 'rama', '2020-04-09', 'laki-laki', 'Jember', '089765456111', 'be91b90d8284f18570eea1a8933a35ec.jpg', 0),
(7, 'tarno@gmail.com', 'tarno', 'ed8465aeaf6682cbf12c6a3c94bba4d7', 'customer', 'tarno', '2020-04-20', 'laki-laiki', 'Jember', '089765456111', 'user_1585977486.jpg', 0),
(8, 'ipang@gmail.com', 'ipang', 'a3b1427fc6eb05dde4883180e7284322', 'gudang', 'ipang i', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', '26e3d288a102a913721b6386f1a1bf91.jpg', 0),
(9, 'eko@gmail.com', 'eko', '8e1a070e9b0340da2b0ea4f193c172f0', 'customer', 'eko', '2020-04-15', 'laki-laiki', 'Jember', '089765456111', 'pp.jpg', 0),
(90, 'nt@gmail.com', 'nt', 'nt123', 'customer', 'nt', '2000-01-01', 'laki-laki', NULL, NULL, 'pp.jpg', 1),
(91, 'nta@gmail.com', 'nta', 'b4e1913138f06cda94b3e7e3f2eb2c7b', 'customer', 'nta', '2027-07-07', 'laki-laki', NULL, NULL, 'pp.jpg', 1),
(92, 'nevinr', 'nevinr', 'e57540d142526e84b44bb639ae511263', 'customer', 'nevinr', '2027-07-07', 'laki-laki', NULL, NULL, 'pp.jpg', 1),
(93, 'tri', 'tri', 'b85593ca6abda3f203e0af8239beb228', 'customer', 'tri', '2000-06-06', 'laki-laki', NULL, NULL, 'pp.jpg', 1);

--
-- Trigger `user`
--
DELIMITER $$
CREATE TRIGGER `delete user` AFTER UPDATE ON `user` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('User dengan username ', OLD.username, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_berasal` (`id_supplier`);

--
-- Indeks untuk tabel `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indeks untuk tabel `cicil`
--
ALTER TABLE `cicil`
  ADD PRIMARY KEY (`id_cicil`),
  ADD KEY `id_keluar` (`id_keluar`);

--
-- Indeks untuk tabel `detail_keluar`
--
ALTER TABLE `detail_keluar`
  ADD KEY `fk_menyimpan` (`id_barang`),
  ADD KEY `fk_terdapat` (`id_keluar`);

--
-- Indeks untuk tabel `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD KEY `fk_memiliki` (`id_barang`),
  ADD KEY `fk_mempunyai` (`id_masuk`);

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id_keluar`),
  ADD KEY `fk_membeli` (`id_user`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`id_masuk`),
  ADD KEY `fk_menyetok` (`id_supplier`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity`
--
ALTER TABLE `activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1452;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT untuk tabel `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `cicil`
--
ALTER TABLE `cicil`
  MODIFY `id_cicil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_berasal` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Ketidakleluasaan untuk tabel `cicil`
--
ALTER TABLE `cicil`
  ADD CONSTRAINT `cicil_ibfk_1` FOREIGN KEY (`id_keluar`) REFERENCES `keluar` (`id_keluar`);

--
-- Ketidakleluasaan untuk tabel `detail_keluar`
--
ALTER TABLE `detail_keluar`
  ADD CONSTRAINT `fk_menyimpan` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_terdapat` FOREIGN KEY (`id_keluar`) REFERENCES `keluar` (`id_keluar`);

--
-- Ketidakleluasaan untuk tabel `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD CONSTRAINT `fk_memiliki` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_mempunyai` FOREIGN KEY (`id_masuk`) REFERENCES `masuk` (`id_masuk`);

--
-- Ketidakleluasaan untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD CONSTRAINT `fk_membeli` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD CONSTRAINT `fk_menyetok` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
