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


-- Dumping structure for table leader_board.persons
CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL DEFAULT '0',
  `middle_name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  `time` time NOT NULL DEFAULT '00:00:00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table leader_board.persons: ~16 rows (approximately)
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` (`id`, `first_name`, `middle_name`, `last_name`, `age`, `time`, `created_at`, `updated_at`) VALUES
	(1, 'Jared Jan', 'Taquiso', 'Cordero', 13, '00:01:00', '2016-06-15 23:04:16', '2016-06-15 23:04:18'),
	(2, 'Jan Ryan', 'Malicay', 'Felipe', 14, '00:00:20', '2016-06-15 23:04:17', '2016-06-15 23:04:19'),
	(3, 'Iries', 'Borobia', 'Borbon', 15, '00:01:10', '2016-06-15 23:04:19', '2016-06-15 23:04:20'),
	(4, 'Stephen', 'John', 'Zaragoza', 18, '00:01:00', '2016-06-15 23:04:21', '2016-06-15 23:04:25'),
	(5, 'Celia', 'Ole', 'Arnold', 15, '00:02:00', '2016-06-15 23:04:22', '2016-06-15 23:04:24'),
	(6, 'Jeda', 'Solera', 'Sagun', 10, '00:00:04', '2016-06-15 23:04:22', '2016-06-15 23:04:26'),
	(7, 'Josh', 'Deguz', 'Man', 12, '00:00:02', '2016-06-16 00:01:45', '2016-06-16 00:01:46'),
	(8, 'Yosh', 'Deril', 'Oral', 11, '00:03:00', '2016-06-16 00:30:31', '2016-06-16 00:30:32'),
	(9, 'Yosi', 'Ors', 'Oyas', 11, '00:00:05', '2016-06-16 00:31:47', '2016-06-16 00:31:48'),
	(10, 'Newbie', 'Sora', 'Alis', 12, '00:00:01', '2016-06-16 01:35:25', '2016-06-16 01:35:25'),
	(11, 'Ore', 'Reah', 'Sorba', 12, '00:00:01', '2016-06-16 01:37:30', '2016-06-16 01:37:31'),
	(12, 'Origh', 'Siva', 'Yusi', 12, '00:00:03', '2016-06-16 01:38:22', '2016-06-16 01:38:23'),
	(13, 'Rogh', 'Liza', 'Mea', 12, '00:00:08', '2016-06-16 02:35:12', '2016-06-16 02:35:12'),
	(14, 'Kieth', 'Tropa', 'Alisaares', 11, '00:00:09', '2016-06-16 02:35:41', '2016-06-16 02:35:42'),
	(15, 'Roshias', 'Lusiv', 'Arosa', 10, '00:00:11', '2016-06-16 02:36:31', '2016-06-16 02:36:32'),
	(16, 'Zeas', 'Sores', 'Amanu', 10, '00:00:12', '2016-06-16 02:37:02', '2016-06-16 02:37:03');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
