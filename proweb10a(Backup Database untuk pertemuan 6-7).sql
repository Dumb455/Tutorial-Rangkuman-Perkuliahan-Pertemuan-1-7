/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.5.32 : Database - proweb10a
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proweb10a` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proweb10a`;

/*Table structure for table `alamat` */

DROP TABLE IF EXISTS `alamat`;

CREATE TABLE `alamat` (
  `idalamat` VARCHAR(11) NOT NULL,
  `dusun` VARCHAR(50) DEFAULT NULL,
  `rtrw` VARCHAR(11) DEFAULT NULL,
  `jalan` VARCHAR(50) DEFAULT NULL,
  `kdpos` VARCHAR(11) DEFAULT NULL,
  `iddeskel` VARCHAR(11) DEFAULT NULL,
  PRIMARY KEY (`idalamat`),
  KEY `iddeskel` (`iddeskel`),
  CONSTRAINT `alamat_ibfk_1` FOREIGN KEY (`iddeskel`) REFERENCES `deskel` (`iddeskel`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `alamat` */

/*Table structure for table `deskel` */

DROP TABLE IF EXISTS `deskel`;

CREATE TABLE `deskel` (
  `iddeskel` VARCHAR(11) NOT NULL,
  `nama` VARCHAR(30) DEFAULT NULL,
  `idkec` VARCHAR(11) DEFAULT NULL,
  PRIMARY KEY (`iddeskel`),
  KEY `idkec` (`idkec`),
  CONSTRAINT `deskel_ibfk_1` FOREIGN KEY (`idkec`) REFERENCES `kecamatan` (`idkec`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `deskel` */

/*Table structure for table `kabkota` */

DROP TABLE IF EXISTS `kabkota`;

CREATE TABLE `kabkota` (
  `idkabkota` VARCHAR(11) NOT NULL,
  `nama` VARCHAR(30) DEFAULT NULL,
  `idprov` VARCHAR(11) DEFAULT NULL,
  PRIMARY KEY (`idkabkota`),
  KEY `idprov` (`idprov`),
  CONSTRAINT `kabkota_ibfk_1` FOREIGN KEY (`idprov`) REFERENCES `provinsi` (`idprov`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `kabkota` */

/*Table structure for table `kecamatan` */

DROP TABLE IF EXISTS `kecamatan`;

CREATE TABLE `kecamatan` (
  `idkec` VARCHAR(11) NOT NULL,
  `nama` VARCHAR(30) DEFAULT NULL,
  `idkabkota` VARCHAR(11) DEFAULT NULL,
  PRIMARY KEY (`idkec`),
  KEY `idkabkota` (`idkabkota`),
  CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`idkabkota`) REFERENCES `kabkota` (`idkabkota`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `kecamatan` */

/*Table structure for table `provinsi` */

DROP TABLE IF EXISTS `provinsi`;

CREATE TABLE `provinsi` (
  `idprov` VARCHAR(11) NOT NULL,
  `nama` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`idprov`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `provinsi` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `fullname` VARCHAR(170) DEFAULT NULL,
  `password` VARCHAR(100) NOT NULL,
  `email` VARCHAR(50) DEFAULT NULL,
  `telp` VARCHAR(30) DEFAULT NULL,
  `banned` ENUM('N','Y') NOT NULL DEFAULT 'Y',
  `logintime` DATETIME DEFAULT NULL,
  `akses` INT(1) NOT NULL,
  `idalamat` VARCHAR(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usernameunique` (`username`),
  KEY `idalamat` (`idalamat`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idalamat`) REFERENCES `alamat` (`idalamat`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

INSERT  INTO `users`(`id`,`username`,`fullname`,`password`,`email`,`telp`,`banned`,`logintime`,`akses`,`idalamat`) VALUES 
(5,'admin','administrator','21232f297a57a5a743894a0e4a801fc3','admin@gmail.com','087797503056','N',NULL,1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
