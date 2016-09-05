-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for leader_board
CREATE DATABASE IF NOT EXISTS `leader_board` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `leader_board`;


-- Dumping structure for table leader_board.swimmers
CREATE TABLE IF NOT EXISTS `swimmers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `fish_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_initial` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `challenge_time` time DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table leader_board.swimmers: ~17 rows (approximately)
/*!40000 ALTER TABLE `swimmers` DISABLE KEYS */;
INSERT INTO `swimmers` (`id`, `transaction_id`, `fish_id`, `first_name`, `last_initial`, `age`, `challenge_time`, `city`, `state`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'Jared Jan', 'T', 13, '00:01:00', 'Kab', 'Neg', '2016-06-15 23:04:16', '2016-06-15 23:04:18'),
	(2, 2, 2, 'Jan Ryan', 'C', 14, '00:00:20', 'Kab', 'Neg', '2016-06-15 23:04:17', '2016-06-15 23:04:19'),
	(3, 3, 3, 'Iries', 'B', 15, '00:01:10', 'Kab', 'Neg', '2016-06-15 23:04:19', '2016-06-15 23:04:20'),
	(4, 4, 4, 'Stephen', 'Z', 18, '00:01:00', 'Kab', 'Neg', '2016-06-15 23:04:21', '2016-06-15 23:04:25'),
	(5, 5, 5, 'Celia', 'A', 15, '00:02:00', 'Kab', 'Neg', '2016-06-15 23:04:22', '2016-06-15 23:04:24'),
	(6, 6, 6, 'Jeda', 'S', 10, '00:00:04', 'Kab', 'Neg', '2016-06-15 23:04:22', '2016-06-15 23:04:26'),
	(7, 7, 7, 'Josh', 'M', 12, '00:00:02', 'Kab', 'Neg', '2016-06-16 00:01:45', '2016-06-16 00:01:46'),
	(8, 8, 8, 'Yosh', 'O', 11, '00:03:00', 'Kab', 'Neg', '2016-06-16 00:30:31', '2016-06-16 00:30:32'),
	(9, 9, 9, 'Yosi', 'O', 11, '00:00:05', 'Kab', 'Neg', '2016-06-16 00:31:47', '2016-06-16 00:31:48'),
	(10, 10, 10, 'Newbie', 'A', 12, '00:00:01', 'Kab', 'Neg', '2016-06-16 01:35:25', '2016-06-16 01:35:25'),
	(11, 11, 11, 'Ore', 'S', 12, '00:00:01', 'Kab', 'Neg', '2016-06-16 01:37:30', '2016-06-16 01:37:31'),
	(12, 12, 12, 'Origh', 'Y', 12, '00:00:03', 'Kab', 'Neg', '2016-06-16 01:38:22', '2016-06-16 01:38:23'),
	(13, 13, 13, 'Rogh', 'M', 12, '00:00:08', 'Kab', 'Neg', '2016-06-16 02:35:12', '2016-06-16 02:35:12'),
	(14, 14, 14, 'Kieth', 'A', 11, '00:00:09', 'Kab', 'Neg', '2016-06-16 02:35:41', '2016-06-16 02:35:42'),
	(15, 15, 15, 'Roshias', 'A', 10, '00:00:15', 'Kab', 'Neg', '2016-06-16 02:36:31', '2016-06-16 02:36:32'),
	(16, 16, 16, 'Zeas', 'A', 10, '00:00:14', 'Kab', 'Neg', '2016-06-16 02:37:02', '2016-06-16 02:37:03'),
	(17, 17, 17, 'Roel', 'L', 19, '00:01:00', 'Kab', 'Neg', '2016-06-15 23:04:16', '2016-06-15 23:04:18'),
	(18, 18, 18, 'Ezera', 'A', 20, '00:00:01', 'Kab', 'Neg', '2016-06-17 16:15:42', '2016-06-17 16:15:42'),
	(19, 19, 19, 'Mia', 'A', 21, '00:00:01', 'Kab', 'Neg', '2016-06-17 16:16:51', '2016-06-17 16:16:51'),
	(20, 20, 20, 'Mora', 'C', 22, '00:00:01', 'Kab', 'Neg', '2016-06-17 16:17:36', '2016-06-17 16:17:36'),
	(21, 21, 21, 'Ora', 'B', 15, '00:00:01', 'Kab', 'Neg', '2016-06-17 16:25:26', '2016-06-17 16:25:26'),
	(22, 22, 22, 'Ora', 'C', 16, '00:00:01', 'Addison', 'Neg', '2016-06-17 16:29:19', '2016-06-17 16:29:19'),
	(26, 2, 12345, 'test', 'T', 27, '00:01:30', 'Addison', 'TX', '2016-06-17 16:53:24', '2016-06-17 16:53:24'),
	(27, 2, 12345, 'test', 'T', 27, '00:01:30', 'Addison', 'TX', '2016-06-17 16:55:09', '2016-06-17 16:55:09');
/*!40000 ALTER TABLE `swimmers` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
