-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
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

-- Dumping structure for table unb2.account
CREATE TABLE IF NOT EXISTS `account` (
  `Account_no` varchar(5) NOT NULL,
  `Balance` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`Account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table unb2.account: ~5 rows (approximately)
INSERT INTO `account` (`Account_no`, `Balance`) VALUES
	('10101', 220.25),
	('10102', 255.98),
	('10201', 340.70),
	('10301', 360.00),
	('10401', 560.16);

-- Dumping structure for table unb2.engineering
CREATE TABLE IF NOT EXISTS `engineering` (
  `Roll` varchar(5) NOT NULL,
  `Name` varchar(15) DEFAULT NULL,
  `Department` varchar(5) DEFAULT NULL,
  `Balance` decimal(8,2) DEFAULT NULL,
  `Grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Roll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table unb2.engineering: ~5 rows (approximately)
INSERT INTO `engineering` (`Roll`, `Name`, `Department`, `Balance`, `Grade`) VALUES
	('10101', 'Bikash', 'CSE', 220.25, 'A'),
	('10102', 'Karim', 'CSE', 255.98, 'B'),
	('10201', 'Josh', 'ICE', 663.94, 'B+'),
	('10301', 'Kevin', 'EEE', 701.55, 'B-'),
	('10401', 'Ben', 'ICE', 1091.61, 'C');

-- Dumping structure for table university.cse
CREATE TABLE IF NOT EXISTS `cse` (
  `Roll` varchar(5) NOT NULL,
  `HomeDistrict` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Roll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table university.cse: ~5 rows (approximately)
INSERT INTO `cse` (`Roll`, `HomeDistrict`) VALUES
	('10101', 'Rajshahi'),
	('10102', 'Khulna'),
	('10201', 'Dhaka'),
	('10301', 'Rajshahi'),
	('10401', 'Bogra');

-- Dumping structure for table university.faculty
CREATE TABLE IF NOT EXISTS `faculty` (
  `Roll` varchar(5) NOT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `Balance` decimal(8,2) DEFAULT NULL,
  `Grade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Roll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table university.faculty: ~5 rows (approximately)
INSERT INTO `faculty` (`Roll`, `Name`, `Department`, `Balance`, `Grade`) VALUES
	('10101', 'Bikash', 'CSE', 220.25, 'A'),
	('10102', 'Karim', 'CSE', 255.98, 'B'),
	('10201', 'Josh', 'ICE', 340.70, 'B+'),
	('10301', 'Kevin', 'EEE', 360.00, 'B-'),
	('10401', 'Ben', 'ICE', 560.16, 'C');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
