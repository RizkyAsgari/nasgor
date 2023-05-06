-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table nasi_goreng.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kd_admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasi_goreng.admin: ~0 rows (approximately)
DELETE FROM `admin`;
INSERT INTO `admin` (`id`, `kd_admin`, `username`, `nama_admin`, `no_telp`, `password`) VALUES
	(1, 'c38c0ad91660825161a1e7ec47aefef8', 'admin', 'Muhammad Faza Alfarisy', '0896083212334', '$2y$10$pUe7GRQcK161URTBQBGAn.G9ci1BoDVx3LAnmQvQh9TBjVg5MIwUS');

-- Dumping structure for table nasi_goreng.detail_pesanan
CREATE TABLE IF NOT EXISTS `detail_pesanan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kd_transaksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kd_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `jumlah_pesanan` int NOT NULL,
  `sub_total` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasi_goreng.detail_pesanan: ~6 rows (approximately)
DELETE FROM `detail_pesanan`;
INSERT INTO `detail_pesanan` (`id`, `kd_transaksi`, `kd_menu`, `harga`, `jumlah_pesanan`, `sub_total`) VALUES
	(4, 'bac60d18bb8510cae41f3b9a5dd9674e', '1904e4a8e59cd5d43f03dd815d213b9c', 10000, 31, 310000),
	(5, 'bac60d18bb8510cae41f3b9a5dd9674e', '6224c150aaf418079aa02b471aa7e77c', 25000000, 10, 250000000),
	(6, '084ccac53a6bde653667b1841f0bf4c4', '1904e4a8e59cd5d43f03dd815d213b9c', 10000, 2, 20000),
	(7, '084ccac53a6bde653667b1841f0bf4c4', '6224c150aaf418079aa02b471aa7e77c', 25000000, 1, 25000000),
	(8, '115faf0bec8fb2561b5b58a67b19f550', '1904e4a8e59cd5d43f03dd815d213b9c', 10000, 1, 10000),
	(9, '115faf0bec8fb2561b5b58a67b19f550', '6224c150aaf418079aa02b471aa7e77c', 25000000, 1, 25000000);

-- Dumping structure for table nasi_goreng.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kd_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasi_goreng.menu: ~2 rows (approximately)
DELETE FROM `menu`;
INSERT INTO `menu` (`id`, `kd_menu`, `nm_menu`, `harga`, `gambar`) VALUES
	(12, '6224c150aaf418079aa02b471aa7e77c', 'Paus Goreng', 25000000, '1682872831_cf3661785c0fb532ed7d.png'),
	(13, '1904e4a8e59cd5d43f03dd815d213b9c', 'kopi luwak', 10000, '1682874276_cb1a3c26960d9fd3950c.png');

-- Dumping structure for table nasi_goreng.transaksi
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kd_transaksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_transaksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pembeli` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_bayar` int NOT NULL,
  `kd_admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nasi_goreng.transaksi: ~1 rows (approximately)
DELETE FROM `transaksi`;
INSERT INTO `transaksi` (`id`, `kd_transaksi`, `tgl_transaksi`, `nama_pembeli`, `alamat`, `no_telp`, `total_bayar`, `kd_admin`) VALUES
	(2, '87e8f1ec824b39ffc90ebe590236faa1', '01-May-2023', 'asd', 'eqwe', '123', 25010000, 'c38c0ad91660825161a1e7ec47aefef8');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
