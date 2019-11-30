/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 5.6.12-log : Database - ebank
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ebank` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ebank`;

/*Table structure for table `deposit` */

DROP TABLE IF EXISTS `deposit`;

CREATE TABLE `deposit` (
  `fname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `fd` */

DROP TABLE IF EXISTS `fd`;

CREATE TABLE `fd` (
  `fdno` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `famount` varchar(100) DEFAULT NULL,
  `fd` varchar(100) DEFAULT NULL,
  `si` varchar(100) DEFAULT NULL,
  `tfd` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `fname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `nation` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `otp` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `loanview` */

DROP TABLE IF EXISTS `loanview`;

CREATE TABLE `loanview` (
  `rid` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `camount` varchar(100) DEFAULT NULL,
  `rqamount` varchar(100) DEFAULT NULL,
  `property` varchar(100) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `loanno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `lrequest` */

DROP TABLE IF EXISTS `lrequest`;

CREATE TABLE `lrequest` (
  `rid` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `camount` varchar(100) DEFAULT NULL,
  `rqamount` varchar(100) DEFAULT NULL,
  `property` varchar(100) DEFAULT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `loanno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ministate` */

DROP TABLE IF EXISTS `ministate`;

CREATE TABLE `ministate` (
  `id` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rd` */

DROP TABLE IF EXISTS `rd`;

CREATE TABLE `rd` (
  `rdno` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `rdamount` varchar(100) DEFAULT NULL,
  `rd` varchar(100) DEFAULT NULL,
  `si` varchar(100) DEFAULT NULL,
  `tfd` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
