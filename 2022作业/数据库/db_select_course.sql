-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.22 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  10.2.0.5712
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 db_select_course 的数据库结构
DROP DATABASE IF EXISTS `db_select_course`;
CREATE DATABASE IF NOT EXISTS `db_select_course` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_select_course`;

-- 导出  表 db_select_course.course 结构
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `CNo` int(11) NOT NULL AUTO_INCREMENT,
  `Cname` varchar(30) NOT NULL,
  `Ccredit` float(5,1) DEFAULT '0.0',
  PRIMARY KEY (`CNo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- 正在导出表  db_select_course.course 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
REPLACE INTO `course` (`CNo`, `Cname`, `Ccredit`) VALUES
	(4, '大学英语', 2.0),
	(5, '编译原理', 2.0),
	(6, '计算机网络', 2.0),
	(7, '数据结构', 2.0),
	(11, '大学物理', 2.0),
	(15, '网页设计', 2.0),
	(16, '物联网', 2.0),
	(18, '生物制药', 2.0),
	(22, 'java web', 2.0);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- 导出  表 db_select_course.sc 结构
DROP TABLE IF EXISTS `sc`;
CREATE TABLE IF NOT EXISTS `sc` (
  `SNo` int(11) NOT NULL,
  `CNo` int(11) NOT NULL,
  `classroom` varchar(11) DEFAULT '0.0',
  PRIMARY KEY (`SNo`,`CNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_select_course.sc 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `sc` DISABLE KEYS */;
REPLACE INTO `sc` (`SNo`, `CNo`, `classroom`) VALUES
	(1, 2, '0.0'),
	(1, 3, '0.0'),
	(12345, 6, '11505H'),
	(123456, 1, '1'),
	(123456, 4, '0'),
	(123456, 22, '0'),
	(1234567, 1, '0.0'),
	(12345678, 7, '0.0'),
	(12345678, 11, '0.0');
/*!40000 ALTER TABLE `sc` ENABLE KEYS */;

-- 导出  表 db_select_course.student 结构
DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `Sname` varchar(30) NOT NULL,
  `Spassword` varchar(30) NOT NULL,
  `Sclass` varchar(30) DEFAULT '',
  `Ssex` varchar(10) DEFAULT '',
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=12345679 DEFAULT CHARSET=utf8;

-- 正在导出表  db_select_course.student 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
REPLACE INTO `student` (`SNo`, `Sname`, `Spassword`, `Sclass`, `Ssex`) VALUES
	(1, '呆呆', '0', '1', '1'),
	(12345, '张三', '1', '2班', '男'),
	(123456, '李怀霏', '000000', '194', '男'),
	(1234567, '刘琪', '123456', '191', '男'),
	(12345678, '于强', '456253', '192', '男');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- 导出  表 db_select_course.teacher 结构
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `TNo` int(11) NOT NULL AUTO_INCREMENT,
  `Tname` varchar(30) DEFAULT NULL,
  `Tpassword` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`TNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  db_select_course.teacher 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
REPLACE INTO `teacher` (`TNo`, `Tname`, `Tpassword`) VALUES
	(1, '陈万里', '0');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
