/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.27 : Database - kushma
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kushma` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kushma`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`UserName`,`Password`,`updationDate`) values (1,'admin','admin','2017-05-13 16:48:49');

/*Table structure for table `subjects` */

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `Semester` int(11) DEFAULT NULL,
  `SubCode` varchar(20) NOT NULL,
  `SubName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SubCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subjects` */

insert  into `subjects`(`Semester`,`SubCode`,`SubName`) values (2,'15CED24','Computed Aided Engineering Drawing'),(2,'15CHE22','Eng Chemistry'),(2,'15CHEL27','Engineering Chemistry Lab'),(1,'15CIV13','Elements of Civil Engineering'),(2,'15CIV28','Environmental Studies'),(1,'15CPH18','Construction of India, Prof Ethics & Human Rights'),(2,'15CPL26','Computer Programming Lab'),(3,'15CS32','Analog & Digital Electronics'),(3,'15CS33','Data Structures & Applications'),(3,'15CS34','Conputer Organization'),(3,'15CS35','Unix & Shell Programming'),(3,'15CS36','Discrete Mathematical Structure'),(3,'15CS37','Analog & Digital Electronics Lab'),(3,'15CS38','Data Structures Lab'),(4,'15CS42','Software Engineering'),(4,'15CS43','Design & Analysis of algorithms'),(4,'15CS44','MicroProcessors & Microcontrollers'),(4,'15CS45','Object Oriented Concepts'),(4,'15CS46','Data Communication'),(4,'15CS47','Design & Analysis of algorithms Lab'),(4,'15CS48','MicroProcessors Lab'),(5,'15CS51','Management & Enterpreneuership for IT Industry'),(5,'15CS52','Computer Networks'),(5,'15CS53','Database Management System'),(5,'15CS54','Automata Theory & Computability'),(5,'15CS55','Advance Java & J2EE'),(5,'15CS56','Artificial Intelligence'),(5,'15CS57','Computer Network Lab'),(5,'15CS58','Database Management System Lab'),(6,'15CS61','Cryptography Network Security & Cyber Law'),(6,'15CS62','File Structures'),(6,'15CS63','Software Testing'),(6,'15CS64','Operating System'),(6,'15CS65','Data Mining & Datawarehousing'),(6,'15CS66','Python Application Programming'),(6,'15CS67','Software Testing Laboratory'),(6,'15CS68','File Structure Laboratory'),(7,'15CS71','Web Technology & its applications'),(7,'15CS72','Software architecture & design patterns'),(7,'15CS73','Machine Learning'),(7,'15CS74','Unix System Programming'),(7,'15CS75','Storage Area Networks'),(7,'15CS76','Machine Learning Lab'),(7,'15CS77','Web Technology Laboratory with Mini Project'),(7,'15CS78','Project Phase I'),(8,'15CS81','Internet of Things and applications'),(8,'15CS82','Big Data Analysis'),(8,'15CS83','Virtual Reality'),(8,'15CS84','Professional Practice'),(8,'15CS85','Project Phase II'),(8,'15CS86','Seminar'),(1,'15EIE15','Basic Electrical Engineering'),(2,'15ELN25','Basic Electronics'),(1,'15EME14','Elements of Mechanical Engineering'),(1,'15MAT11','Eng Mathematics I'),(2,'15MAT21','Eng Mathematics II'),(3,'15MAT31','Eng Mathematics III'),(4,'15MAT41','Eng Mathematics IV'),(2,'15PCD23','Programming in C & Data Structures'),(1,'15PHY12','Eng Physics'),(1,'15PHYL17','Eng Physics Lab'),(1,'15WSL16','Mechanics Workshop');

/*Table structure for table `tblclasses` */

DROP TABLE IF EXISTS `tblclasses`;

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tblclasses` */

insert  into `tblclasses`(`id`,`ClassName`,`ClassNameNumeric`,`Section`,`CreationDate`,`UpdationDate`) values (1,'First',1,'C','2017-06-06 22:22:33','2017-06-07 11:23:47'),(2,'Second',2,'A','2017-06-06 22:51:20','2017-06-06 22:51:38'),(3,'Third',3,'C','2017-06-07 14:50:23','0000-00-00 00:00:00'),(4,'Fourth',4,'A','2017-06-07 15:05:08','0000-00-00 00:00:00'),(5,'Fifth',5,'B','2017-08-29 00:12:41','2017-08-29 00:13:02'),(6,'Sixth',6,'B','2017-08-29 00:22:00','2017-08-29 00:22:15'),(7,'Seventh',7,'A','2017-08-29 00:51:05','2017-08-29 00:51:24'),(8,'Eight',8,'A','2019-11-04 16:38:54','2017-08-29 00:51:24');

/*Table structure for table `tblemployees` */

DROP TABLE IF EXISTS `tblemployees`;

CREATE TABLE `tblemployees` (
  `EmpID` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeName` varchar(50) DEFAULT NULL,
  `EmpNum` varchar(50) DEFAULT NULL,
  `EmployeeEmail` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DeptId` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `CreatedDate` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `loginname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `tblemployees` */

insert  into `tblemployees`(`EmpID`,`EmployeeName`,`EmpNum`,`EmployeeEmail`,`Gender`,`DeptId`,`DOB`,`CreatedDate`,`Status`,`loginname`,`password`) values (20,'sahana','1','sahana@gmail.com','Female','BE 1ST Year','10-09-1987','2019-11-15 13:00:59',1,'sahana','sahana'),(21,'param','2','param@gmail.com','Male','BE 1ST Year','10-09-1990','2019-11-15 13:02:41',1,'param','param'),(24,'rahul','3','rahul@gmail.com','Male','BE 2ND Year','17-04-1980','2019-11-15 13:04:54',1,'rahul','rahul'),(25,'lara','4','lara@gmail.com','Female','BE 2ND Year','10-06-1979','2019-11-15 13:06:59',1,'lara','lara'),(26,'zehra','5','zehra@gmail.com','Female','BE 2ND Year','18-12-1990','2019-11-15 13:09:14',1,'zehra','zehra'),(27,'peter','6','peter@gmail.com','Male','BE 3RD Year','10-02-1988','2019-11-15 13:10:13',1,'peter','peter'),(28,'albert','7','albert@gmail.com','Male','BE 3RD Year','10=10-1992','2019-11-15 13:11:29',1,'albert','albert'),(31,'susan','8','susan@gmail.com','Female','BE 3RD Year','10-06-1979','2019-11-15 13:19:29',1,'susan','susan'),(32,'jane','9','jane@gmail.com','Male','BE 4TH Year','15-03-1980','2019-11-15 13:20:44',1,'jane','jane'),(33,'paul','10','paul@gmail.com','Male','BE 4TH Year','15-03-1994','2019-11-15 13:22:09',1,'paul','paul');

/*Table structure for table `tblresult` */

DROP TABLE IF EXISTS `tblresult`;

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Internal1` int(11) DEFAULT NULL,
  `Sub1` int(11) DEFAULT NULL,
  `Internal2` int(11) DEFAULT NULL,
  `Sub2` int(11) DEFAULT NULL,
  `Internal3` int(11) DEFAULT NULL,
  `Sub3` int(11) DEFAULT NULL,
  `Internal4` int(11) DEFAULT NULL,
  `Sub4` int(11) DEFAULT NULL,
  `Internal5` int(11) DEFAULT NULL,
  `Sub5` int(11) DEFAULT NULL,
  `Internal6` int(11) DEFAULT NULL,
  `Sub6` int(11) DEFAULT NULL,
  `Internal7` int(11) DEFAULT NULL,
  `Sub7` int(11) DEFAULT NULL,
  `Internal8` int(11) DEFAULT NULL,
  `Sub8` int(11) DEFAULT NULL,
  `Result` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `tblresult` */

/*Table structure for table `tblstudents` */

DROP TABLE IF EXISTS `tblstudents`;

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tblstudents` */

insert  into `tblstudents`(`StudentId`,`StudentName`,`RollId`,`StudentEmail`,`Gender`,`DOB`,`ClassId`,`RegDate`,`UpdationDate`,`Status`,`username`,`password`) values (16,'akhil','1','akhil@gmail.com','Male','10-12-2000',1,'2019-11-15 13:35:55',NULL,1,'akhil','akhil'),(17,'apoorva','2','apoorva@gmail.com','Female','16-02-2000',1,'2019-11-15 13:36:49',NULL,1,'apoorva','apoorva');

/*Table structure for table `tblsubjectcombination` */

DROP TABLE IF EXISTS `tblsubjectcombination`;

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` varchar(50) DEFAULT NULL,
  `Updationdate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tblsubjectcombination` */

insert  into `tblsubjectcombination`(`id`,`ClassId`,`SubjectId`,`status`,`CreationDate`,`Updationdate`) values (3,2,5,1,'2017-06-07 11:16:56','2017-06-07 11:16:56'),(4,1,2,1,'2017-06-12 06:46:32','2017-06-12 06:46:32'),(5,1,4,1,'2017-06-12 06:46:35','2017-06-12 06:46:35'),(6,1,5,1,'2017-06-12 06:46:40','2017-06-12 06:46:40'),(8,4,4,1,'2017-08-26 03:21:27','2017-08-26 03:21:27'),(10,4,1,1,'2017-08-26 03:22:05','2017-08-26 03:22:05'),(12,4,2,1,'2017-08-26 03:22:15','2017-08-26 03:22:15'),(13,4,5,1,'2017-08-26 03:22:20','2017-08-26 03:22:20'),(14,6,1,1,'2017-08-28 18:44:06','2017-08-28 18:44:06'),(15,6,2,1,'2017-08-28 18:44:12','2017-08-28 18:44:12'),(16,6,4,1,'2017-08-28 18:44:18','2017-08-28 18:44:18'),(17,6,6,1,'2017-08-28 18:44:23','2017-08-28 18:44:23'),(18,7,1,1,'2017-08-28 18:53:12','2017-08-28 18:53:12'),(19,7,7,1,'2017-08-28 18:53:19','2017-08-28 18:53:19'),(20,7,2,1,'2017-08-28 18:53:38','2017-08-28 18:53:38'),(21,7,6,1,'2017-08-28 18:53:44','2017-08-28 18:53:44'),(22,7,5,0,'2017-08-28 18:53:50','2017-08-28 18:53:50'),(23,8,1,1,'2017-08-28 19:22:25','2017-08-28 19:22:25'),(24,8,2,1,'2017-08-28 19:22:31','2017-08-28 19:22:31'),(25,8,4,1,'2017-08-28 19:22:36','2017-08-28 19:22:36'),(26,8,6,1,'2017-08-28 19:22:42','2017-08-28 19:22:42'),(27,8,5,0,'2017-08-28 19:22:47','2017-08-28 19:22:47');

/*Table structure for table `tblsubjects` */

DROP TABLE IF EXISTS `tblsubjects`;

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tblsubjects` */

insert  into `tblsubjects`(`id`,`SubjectName`,`SubjectCode`,`Creationdate`,`UpdationDate`) values (1,'Maths','MTH01','2017-06-07 14:53:57','2017-06-07 15:16:54'),(2,'English','ENG11','2017-06-07 14:54:25','0000-00-00 00:00:00'),(4,'Science','SC1','2017-06-07 15:06:15','0000-00-00 00:00:00'),(5,'Music','MS','2017-06-07 15:06:23','0000-00-00 00:00:00'),(6,'Social Studies','SS08','2017-08-29 00:13:29','2017-08-29 00:13:45'),(7,'Physics','PH03','2017-08-29 00:22:41','2017-08-29 00:22:55'),(8,'Chemistry','CH65','2017-08-29 00:51:46','2017-08-29 00:52:14'),(9,'Computers','Code-201','2019-10-29 12:17:20',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
