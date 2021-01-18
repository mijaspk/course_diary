/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.5.20-log : Database - course_diary
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`course_diary` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `course_diary`;

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `Attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `Register_number` varchar(50) DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  PRIMARY KEY (`Attendance_id`),
  UNIQUE KEY `Register_number` (`Register_number`,`Subject`,`Date`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`Attendance_id`,`Register_number`,`Subject`,`Date`,`attendance`) values 
(1,'4','1','2020-06-04',0),
(2,'10','1','2020-06-04',0),
(3,'3','1','2020-06-04',1),
(4,'12','1','2020-06-04',1),
(5,'3','2','2020-04-02',0),
(6,'4 ','2','2020-04-02',0),
(7,'10','2','2020-04-02',1),
(8,'12','2','2020-04-02',1),
(9,'12','4','2020-06-05',0),
(10,'10','4','2020-06-05',0),
(11,'3','4','2020-06-05',1),
(12,'4','4','2020-06-05',1),
(15,'12','1','2020-06-05',0),
(16,'10','1','2020-06-05',0),
(17,'3','1','2020-06-05',1),
(18,'4','1','2020-06-05',1);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Usertype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`Username`,`Password`,`Usertype`) values 
(1,'admin','admin','admin'),
(4,'johnpjoseph','1234567890','teacher'),
(5,'vineetha','vineetha','teacher'),
(6,'neev2','123456','teacher'),
(7,'vin23','147852369','teacher'),
(11,'abd123','478569','teacher'),
(12,'angel123','745896310','teacher'),
(13,'manu','1234','teacher');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL AUTO_INCREMENT,
  `Register_number` varchar(50) DEFAULT NULL,
  `First_name` varchar(50) DEFAULT NULL,
  `Last_name` varchar(50) DEFAULT NULL,
  `Roll_No` int(11) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Sem` varchar(20) DEFAULT NULL,
  `Phone_number` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`Student_id`,`Register_number`,`First_name`,`Last_name`,`Roll_No`,`Gender`,`Sem`,`Phone_number`) values 
(1,'TVE18MCA019','GEENAT','P P',3,'Female','1',83658964),
(2,'tve18mca030','mijas','p k',4,'Male','1',2147483647),
(3,'tve18mca034','nabeel','p k',10,'Male','1',2147483647),
(5,'TVE18MCA001','ADARSH','A R',12,'Male','1',6898907899);

/*Table structure for table `subject_assign` */

DROP TABLE IF EXISTS `subject_assign`;

CREATE TABLE `subject_assign` (
  `Assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `Subject_id` int(11) DEFAULT NULL,
  `Faculty_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Assign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `subject_assign` */

insert  into `subject_assign`(`Assign_id`,`Subject_id`,`Faculty_id`) values 
(1,1,4),
(2,12,6),
(3,42,13);

/*Table structure for table `subject_registration` */

DROP TABLE IF EXISTS `subject_registration`;

CREATE TABLE `subject_registration` (
  `Subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `Sem` varchar(20) DEFAULT NULL,
  `Course_Code` varchar(50) DEFAULT NULL,
  `Course_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `subject_registration` */

insert  into `subject_registration`(`Subject_id`,`Sem`,`Course_Code`,`Course_Name`) values 
(1,'1','RLMCA101','PROBLEM SOLVING AND COMPUTER PROGRAMMING'),
(2,'1','RLMCA103','DISCRETE MATHEMATICS'),
(3,'1','RLMCA105','APPLIED PROBABILITY AND STATISTICS'),
(4,'1','RLMCA107','PRINCIPLES OF MANAGEMENT'),
(5,'1','RLMCA109','DIGITAL FUNDAMENTALS'),
(6,'1','RLMCA131','PROGRAMMING LAB'),
(7,'1','RLMCA133','APPLIED STATISTICS LAB'),
(8,'2','RLMCA102','OBJECT ORIENTED PROGRAMMING'),
(9,'2','RLMCA104','DATA STRUCTURES'),
(10,'2','RLMCA106','OPERATING SYSTEMS'),
(11,'2','RLMCA108','OPERATIONS RESEARCH'),
(12,'2','RLMCA112','COMPUTER ORGANIZATION AND ARCHITECTURE'),
(13,'2','RLMCA132','OBJECT ORIENTED PROGRAMMING LAB'),
(14,'2','RLMCA134','DATA STRUCTURES LAB'),
(15,'3','RLMCA201','COMPUTER NETWORKS'),
(16,'3','RLMCA203','SOFTWARE ENGINEERING'),
(17,'3','RLMCA205','DATABASE MANAGEMENT SYSTEM'),
(18,'3','RLMCA207','DESIGN AND ANALYSIS OF ALGORITHMS'),
(19,'3','RLMCA209','WEB PROGRAMMING'),
(20,'3','RLMCA231','DATABASE LAB'),
(21,'3','RLMCA233','WEB PROGRAMMING LAB'),
(22,'4','RLMCA202','APPLICATION DEVELOPMENT AND MAINTENANCE'),
(23,'4','RLMCA204','BIG DATA TECHNOLOGIES'),
(24,'4','RLMCA206','MOBILE COMPUTING'),
(25,'4','RLMCA208','INTRODUCTION TO MACHINE LEARNING'),
(26,'4','RLMCA262','FUNCTIONAL PROGRAMMING'),
(27,'4','RLMCA266','ADVANCED DATABASE SYSTEMS'),
(28,'4','RLMCA232','SYSTEM DESIGN LAB'),
(29,'4','RLMCA234','MOBILE APPLICATION DEVELOPMENT LAB'),
(30,'5','RLMCA301','WEB DATA MINING'),
(31,'5','RLMCA303','E-COMMERCE'),
(32,'5','RLMCA305','CRYPTOGRAPHY AND CYBER SECURITY'),
(33,'5','RLMCA369','PYTHON PROGRAMMING'),
(34,'5','RLMCA381','CLOUD COMPUTING'),
(35,'5','RLMCA391','ARTIFICIAL INTELLIGENCE'),
(36,'5','RLMCA341','SEMINAR'),
(37,'5','RLMCA351','MINI PROJECT'),
(38,'6','RLMCA352','PROJECT AND VIVA VOCE'),
(42,'6','123456','dd');

/*Table structure for table `syllabus` */

DROP TABLE IF EXISTS `syllabus`;

CREATE TABLE `syllabus` (
  `Syllabys_id` int(11) NOT NULL AUTO_INCREMENT,
  `Subject_id` int(11) DEFAULT NULL,
  `Teacher_id` int(11) DEFAULT NULL,
  `Syllabus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Syllabys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `syllabus` */

insert  into `syllabus`(`Syllabys_id`,`Subject_id`,`Teacher_id`,`Syllabus`) values 
(1,3,5,'bfd'),
(3,1,13,'enquiry_response.java'),
(4,8,13,'activity_enquiry_response.xml');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `Teacher_id` int(11) NOT NULL,
  `First_name` varchar(50) DEFAULT NULL,
  `Last_name` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Phone_no` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`Teacher_id`,`First_name`,`Last_name`,`Age`,`Gender`,`Phone_no`) values 
(4,'john','prakash joseph',48,'Male',8756789545),
(5,'VINEETHA','CET',32,'Female',2147483647),
(6,'neevan','r',32,'Male',2147483647),
(7,'vinya','r',27,'Female',2147483647),
(11,'abdul','nizar',48,'Male',2147483647),
(12,'angel','s',29,'Female',2147483647),
(13,'maanu','k',34,'Male',8775667896);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
