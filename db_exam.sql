/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.49-community : Database - db_exam
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_exam` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_exam`;

/*Table structure for table `tb_lesson` */

DROP TABLE IF EXISTS `tb_lesson`;

CREATE TABLE `tb_lesson` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) DEFAULT NULL,
  `JoinTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `tb_lesson` */

insert  into `tb_lesson`(`ID`,`Name`,`JoinTime`) values (4,'英语（二）','2013-01-01 00:00:00'),(5,'计算机文化基础','2013-01-01 00:00:00'),(8,'计算机专业英语','2013-01-01 00:00:00'),(29,'电子商务','2013-01-01 00:00:00'),(31,'数学','2013-01-01 00:00:00'),(33,'12','2013-08-02 10:29:10');

/*Table structure for table `tb_manager` */

DROP TABLE IF EXISTS `tb_manager`;

CREATE TABLE `tb_manager` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `tb_manager` */

insert  into `tb_manager`(`ID`,`name`,`PWD`) values (4,'tsoft','111'),(14,'00','000000');

/*Table structure for table `tb_questions` */

DROP TABLE IF EXISTS `tb_questions`;

CREATE TABLE `tb_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) DEFAULT NULL,
  `type` char(6) DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  `lessonId` int(11) DEFAULT NULL,
  `taoTiId` int(11) DEFAULT NULL,
  `optionA` varchar(50) DEFAULT NULL,
  `optionB` varchar(50) DEFAULT NULL,
  `optionC` varchar(50) DEFAULT NULL,
  `optionD` varchar(50) DEFAULT NULL,
  `answer` varchar(10) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `tb_questions` */

insert  into `tb_questions`(`id`,`subject`,`type`,`joinTime`,`lessonId`,`taoTiId`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`,`note`) values (37,'Windows 2000是什么？','单选题','2013-01-01 00:00:00',5,10,'应用软件','操作系统','应用程序','以上都不是','B','空'),(39,'网络营销的发展经历几个阶段？','单选题','2013-01-01 00:00:00',29,17,'2个','3个','5个','6个','C','空'),(40,'Internet提供的基本服务有哪些？','多选题','2013-01-01 00:00:00',29,17,'E-mail','FTP','Telnet','WWW','A,B,C,D','空'),(48,'EPROM代表什么？','单选题','2013-01-01 00:00:00',8,19,'可编程存储器','可擦可编程存储器','只读存储器','可擦可编程只读存储器','D',''),(49,'对于WWW的正确解释有哪些？','多选题','2013-01-01 00:00:00',8,19,'全球网','万维网','局域网','World Wide Web的缩写','A,B,D',''),(50,'5*5','单选题','2013-01-01 00:00:00',31,20,'20','30','25','50','C','无'),(51,'下列数据属于整数的是？','多选题','2013-01-01 00:00:00',31,20,'1','2','3','4','A,B,C,D','无');

/*Table structure for table `tb_student` */

DROP TABLE IF EXISTS `tb_student`;

CREATE TABLE `tb_student` (
  `ID` varchar(16) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  `cardNo` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_student` */

insert  into `tb_student`(`ID`,`name`,`pwd`,`sex`,`joinTime`,`question`,`answer`,`profession`,`cardNo`) values ('CN20071201000001','王*晶','111','女','2013-01-01 00:00:00','birthday','717','广告学','220198302********'),('CN20071201000002','无语','111','女','2013-01-01 00:00:00','birthday','1','计算机应用软件','220198007********'),('CN20071225000005','无语','111111','女','2013-01-01 00:00:00','我最喜欢的颜色','蓝灰色','计算机应用软件','220104************'),('CN20071229000006','明明','000','女','2013-01-01 00:00:00','你好','你好','公司管理','20020'),('CN20071229000007','丽丽','111111','女','2013-01-01 00:00:00','你好','你好','编程','52200');

/*Table structure for table `tb_sturesult` */

DROP TABLE IF EXISTS `tb_sturesult`;

CREATE TABLE `tb_sturesult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` varchar(16) DEFAULT NULL,
  `whichLesson` varchar(60) DEFAULT NULL,
  `resSingle` int(11) DEFAULT NULL,
  `resMore` int(11) DEFAULT NULL,
  `resTotal` int(11) DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `tb_sturesult` */

insert  into `tb_sturesult`(`id`,`stuId`,`whichLesson`,`resSingle`,`resMore`,`resTotal`,`joinTime`) values (1,'CN20071201000002','计算机专业英语',50,30,80,'2013-01-01 00:00:00'),(2,'CN20071201000001','计算机文化基础',0,20,20,'2013-01-01 00:00:00'),(4,'CN20071201000001','电子商务',20,30,50,'2013-01-01 00:00:00'),(12,'CN20071201000001','计算机专业英语',40,60,100,'2013-01-01 00:00:00'),(14,'CN20071225000005','计算机文化基础',40,0,40,'2013-01-01 00:00:00'),(29,'CN20071201000002','计算机文化基础',40,60,100,'2013-01-01 00:00:00'),(30,'CN20071229000006','数学',40,60,100,'2013-01-01 00:00:00'),(37,'CN20071229000007','计算机专业英语',0,0,0,'2013-01-01 00:00:00'),(38,'CN20071229000007','数学',40,60,100,'2013-01-01 00:00:00'),(39,'CN20071229000006','电子商务',0,0,0,'2013-01-01 00:00:00'),(40,'CN20071201000001','数学',0,0,NULL,NULL),(41,'CN20071201000002','电子商务',0,0,NULL,'2013-08-02 11:43:15'),(42,'CN20071201000002','数学',40,0,40,'2013-08-02 13:10:12');

/*Table structure for table `tb_taoti` */

DROP TABLE IF EXISTS `tb_taoti`;

CREATE TABLE `tb_taoti` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `LessonID` int(11) DEFAULT NULL,
  `JoinTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `tb_taoti` */

insert  into `tb_taoti`(`ID`,`Name`,`LessonID`,`JoinTime`) values (10,'2007年期末考试',5,'2013-01-01 00:00:00'),(17,'2007年上半年期中考试题',29,'2013-01-01 00:00:00'),(19,'2007年期末考试题A',8,'2013-01-01 00:00:00'),(20,'大学数学',31,'2013-01-01 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
