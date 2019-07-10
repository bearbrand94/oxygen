-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for oksigen
CREATE DATABASE IF NOT EXISTS `oksigen` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `oksigen`;

-- Dumping structure for table oksigen.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oksigen.migrations: ~4 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_05_17_020338_create_transactions_table', 1),
	(4, '2019_05_17_021858_create_transaction_detail_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table oksigen.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oksigen.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table oksigen.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid_status` tinyint(4) DEFAULT '0',
  `payment_time` datetime DEFAULT NULL,
  `payment_ref` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oksigen.transactions: ~10 rows (approximately)
DELETE FROM `transactions`;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `order_id`, `order_date`, `client_name`, `truck_id`, `truck_name`, `created_at`, `updated_at`, `paid_status`, `payment_time`, `payment_ref`) VALUES
	(1, 'OD040001', '2019-04-26 09:41:31', 'Sumber Baru', 'N 9605 UF', 'Heri Kirun', '2019-05-17 09:41:42', '2019-05-17 09:41:42', 1, '2019-05-27 12:17:58', NULL),
	(2, 'OD040002', '2019-04-29 09:44:09', 'Sumber Baru', 'L 8049 RT', 'Agus', '2019-05-17 09:44:23', '2019-05-17 09:44:24', 1, '2019-05-27 12:17:58', NULL),
	(3, 'OD050001', '2019-05-04 09:44:53', 'Sumber Baru', 'S 8536 US', 'Heri Ambon', '2019-05-17 09:45:19', '2019-05-17 09:45:19', 1, '2019-05-27 12:18:06', NULL),
	(4, 'OD050002', '2019-05-20 09:06:49', 'Sumber Baru', 'N 9605 UT', 'Heri Kirun', '2019-05-21 09:07:04', '2019-05-21 09:07:05', 1, '2019-06-24 12:26:58', NULL),
	(5, 'OD050003', '2019-05-23 10:55:52', 'Sumber Baru', 'L 8049 RT', 'Happy Agus B', '2019-05-23 10:56:32', '2019-05-23 10:56:32', 1, '2019-06-24 12:27:00', NULL),
	(6, 'OD060001', '2019-06-15 14:31:35', 'Sumber Baru', 'N 9605 UF', 'Heri Kirun', '2019-06-18 14:32:14', '2019-06-18 14:32:14', 0, NULL, NULL),
	(7, 'OD060002', '2019-06-21 14:31:35', 'Sumber Baru', 'L 8049 RT', 'Agus', '2019-06-18 14:32:14', '2019-06-18 14:32:14', 0, NULL, NULL),
	(8, 'OD060003', '2019-06-29 15:02:34', 'Sumber Baru', 'L 8847 LV', 'Sadi', '2019-06-28 15:02:40', '2019-06-28 15:02:41', 0, NULL, NULL),
	(9, 'OD060004', '2019-06-29 15:03:36', 'Sumber Baru', 'S 9544 UQ', 'Jais', '2019-06-28 15:04:07', '2019-06-28 15:04:07', 0, NULL, NULL),
	(10, 'OD070001', '2019-07-02 16:14:27', 'Sumber Baru', 'W 8134 YB', 'Junet', '2019-07-10 16:14:49', '2019-07-10 16:14:50', 0, NULL, NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

-- Dumping structure for table oksigen.transaction_detail
CREATE TABLE IF NOT EXISTS `transaction_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) unsigned NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_table` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price_each` int(11) NOT NULL DEFAULT '100000',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_transaction_detail_transactions` (`transaction_id`),
  CONSTRAINT `FK_transaction_detail_transactions` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oksigen.transaction_detail: ~15 rows (approximately)
DELETE FROM `transaction_detail`;
/*!40000 ALTER TABLE `transaction_detail` DISABLE KEYS */;
INSERT INTO `transaction_detail` (`id`, `transaction_id`, `product_name`, `ref_table`, `ref_id`, `description`, `qty`, `price_each`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Isi Oksigen (Tabung Baru)', '', 0, '-', 25, 100000, '2019-05-17 09:50:32', '2019-05-17 09:50:33'),
	(2, 2, 'Isi Oksigen (Tabung Baru)', '', 0, '-', 25, 100000, '2019-05-17 09:54:08', '2019-05-17 09:54:09'),
	(3, 3, 'Isi Oksigen (Tabung Lama)', '', 0, '-', 25, 100000, '2019-05-17 09:54:31', '2019-05-17 09:54:32'),
	(4, 3, 'Perbaikan Tabung Oksigen', '', 0, '3 Aspen + 1 Teflon', 4, 20000, '2019-05-17 09:55:03', '2019-05-17 09:55:04'),
	(5, 4, 'Isi Oksigen (Tabung Lama)', '', 0, '-', 24, 100000, '2019-05-21 09:08:35', '2019-05-21 09:08:35'),
	(6, 4, 'Perbaikan Tabung Oksigen', '', 0, 'Kran Oxygen 4', 1, 110000, '2019-05-21 09:09:32', '2019-05-21 09:09:32'),
	(7, 4, 'Perbaikan Tabung Oksigen', '', 0, 'Ganti Bunit DDD', 1, 20000, '2019-05-21 09:10:08', '2019-05-21 09:10:08'),
	(8, 4, 'Beli Tabung Oksigen (Tabung Baru)', '', 0, '-', 1, 1100000, '2019-05-23 10:54:26', '2019-05-23 10:54:26'),
	(9, 5, 'Isi Oksigen (Tabung Lama)', '', 0, '-', 18, 100000, '2019-05-23 11:30:52', '2019-05-23 11:30:53'),
	(10, 6, 'Isi Oksigen (Tabung Lama)', '', 0, '', 20, 100000, '2019-06-18 14:39:02', '2019-06-18 14:39:03'),
	(11, 7, 'Isi Oksigen (Tabung Lama)', '', 0, '', 23, 100000, '2019-06-18 14:39:20', '2019-06-18 14:39:21'),
	(12, 7, 'Perbaikan Tabung Oksigen', '', 0, 'Perbaikan 1 Aspen + 1 Bunit', 2, 20000, '2019-06-18 14:39:51', '2019-06-18 14:40:21'),
	(13, 8, 'Isi Oksigen (Tabung Lama)', '', 0, '', 35, 100000, '2019-06-28 15:04:41', '2019-06-28 15:09:22'),
	(14, 9, 'Isi Oksigen (Tabung Lama)', '', 0, '', 22, 100000, '2019-06-28 15:04:55', '2019-06-28 15:09:19'),
	(15, 10, 'Isi Oksigen (Tabung Lama)', '', 0, '', 22, 100000, '2019-07-10 16:15:02', '2019-07-10 16:29:16');
/*!40000 ALTER TABLE `transaction_detail` ENABLE KEYS */;

-- Dumping structure for table oksigen.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oksigen.users: ~1 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(2, 'Paulus Wey', 'paulusw.94@gmail.com', NULL, '$2y$10$K8Pmk5lJd.i6ElWFFe.6T.xyfLp3f/WvwRshK5ftgxn/oBmn6kNCm', NULL, '2019-05-29 08:13:13', '2019-05-29 08:13:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
