-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: University_database
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `CourseCode` varchar(20) NOT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `Credits` int DEFAULT NULL,
  `DepartmentId` varchar(30) DEFAULT NULL,
  `YearOfStudy` int DEFAULT NULL,
  `Semester` int DEFAULT NULL,
  PRIMARY KEY (`CourseCode`),
  KEY `fk_course_dept` (`DepartmentId`),
  CONSTRAINT `fk_course_dept` FOREIGN KEY (`DepartmentId`) REFERENCES `Department` (`DepartmentId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES ('CPE1101','Digital Logic Design',4,'D006',1,1),('CPE1201','Computer Architecture',4,'D006',1,2),('CPE2101','Data Communications and Networks',4,'D006',2,1),('CPE2201','Microprocessors & Microcontrollers',4,'D006',2,2),('CPE3101','Embedded Systems Design',4,'D006',3,1),('CPE3201','Wireless Sensor Networks',3,'D006',3,2),('CSC1101','Introduction to Computer Science',4,'D003',1,1),('CSC1201','Discrete Mathematics',3,'D003',1,2),('CSC2101','Data Structures and Algorithms',4,'D003',2,1),('CSC2201','Operating Systems',4,'D003',2,2),('CSC3101','Artificial Intelligence',4,'D003',3,1),('CSC3201','Computer Graphics',3,'D003',3,2),('HIN1101','Intro to Health Informatics',3,'D007',1,1),('HIN1201','Anatomy and Physiology for IT',3,'D007',1,2),('HIN2101','Electronic Health Records',4,'D007',2,1),('HIN2201','Healthcare Data Standards',3,'D007',2,2),('HIN3101','Telemedicine and E-Health',3,'D007',3,1),('HIN3201','Health Data Analytics',4,'D007',3,2),('INS1101','Introduction to Information Systems',3,'D005',1,1),('INS1201','IT Business Environment',3,'D005',1,2),('INS2101','Database Management Systems',4,'D005',2,1),('INS2201','Systems Analysis and Design',4,'D005',2,2),('INS3101','E-Commerce Technologies',3,'D005',3,1),('INS3201','IT Project Management',4,'D005',3,2),('SWE1101','Fundamentals of Programming',4,'D004',1,1),('SWE1201','Requirements Engineering',3,'D004',1,2),('SWE2101','Object-Oriented Programming',4,'D004',2,1),('SWE2201','Web Application Development',4,'D004',2,2),('SWE3101','Software Architecture and Design',4,'D004',3,1),('SWE3201','Software Testing & Quality Assurance',3,'D004',3,2);
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `DepartmentId` varchar(30) NOT NULL,
  `DepartmentName` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `HeadId` varchar(30) NOT NULL,
  `Tel` varchar(30) DEFAULT NULL,
  `Faculty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DepartmentId`),
  KEY `fk_dept_head` (`HeadId`),
  CONSTRAINT `fk_dept_head` FOREIGN KEY (`HeadId`) REFERENCES `Staff` (`StaffId`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES ('D001','IT Department','Kihumuro','S029','+256772145892','Faculty of Computing and Informatics'),('D002','Library Department','Kihumuro','S036','+256752938104','Faculty of Interdisciplinary Studies'),('D003','Computer Science','Kihumuro','S004','+256782451903','Faculty of Computing and Informatics'),('D004','Software Engineering','Kihumuro','S005','+256702334812','Faculty of Computing and Informatics'),('D005','Information Systems','Kihumuro','S001','+256774819233','Faculty of Computing and Informatics'),('D006','Computer Engineering','Kihumuro','S002','+256751223456','Faculty of Computing and Informatics'),('D007','Health Informatics','Kihumuro','S003','+256785112908','Faculty of Computing and Informatics'),('D008','Central Administration','Town Campus','S054','+256703445781','University Management'),('D009','Finance Department','Town Campus','S059','+256776558129','University Management'),('D010','Human Resources','Town Campus','S060','+256754991345','University Management'),('D011','Finance and Administration Directorate','Town Campus','S055','+256783774112','University Management'),('D012','Academic Affairs Directorate','Town Campus','S067','+256701889234','University Management'),('D013','Office of the University Secretary','Town Campus','S056','+256778332546','University Management'),('D014','Office of the Academic Registrar','Town Campus','S057','+256759114678','University Management'),('D015','Directorate of Student Welfare','Town Campus','S058','+256781556890','University Management'),('D016','Planning and Development','Town Campus','S061','+256705221433','University Management'),('D017','Legal Services','Town Campus','S062','+256777889001','University Management'),('D018','Directorate of Research & Graduate Training','Town Campus','S063','+256753667812','University Management'),('D019','Procurement and Disposal Unit','Town Campus','S064','+256788442399','University Management'),('D020','Estates and Works Department','Town Campus','S065','+256706551204','University Management'),('D021','Public Relations and Communications','Town Campus','S066','+256771993450','University Management');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmploymentContract`
--

DROP TABLE IF EXISTS `EmploymentContract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmploymentContract` (
  `ContractId` varchar(20) NOT NULL,
  `StaffId` varchar(30) NOT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `ContractType` varchar(30) DEFAULT NULL,
  `Duration` varchar(30) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `IsRenewable` tinyint(1) DEFAULT '1',
  `RenewalStatus` enum('Pending','Approved','Rejected','N/A') DEFAULT 'N/A',
  `LastRenewalDate` date DEFAULT NULL,
  `ExitDate` date DEFAULT NULL,
  `SalaryScale` varchar(10) DEFAULT NULL,
  `ActualSalary` decimal(15,2) DEFAULT NULL,
  `Allowances` decimal(15,2) DEFAULT '0.00',
  `NSSF_Employee` decimal(15,2) GENERATED ALWAYS AS ((`ActualSalary` * 0.05)) VIRTUAL,
  `NSSF_Employer` decimal(15,2) GENERATED ALWAYS AS ((`ActualSalary` * 0.10)) VIRTUAL,
  `Gratuity_Accrued` decimal(15,2) DEFAULT '0.00',
  `PAYE` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`ContractId`),
  KEY `fk_staff_contract` (`StaffId`),
  CONSTRAINT `fk_staff_contract` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmploymentContract`
--

LOCK TABLES `EmploymentContract` WRITE;
/*!40000 ALTER TABLE `EmploymentContract` DISABLE KEYS */;
INSERT INTO `EmploymentContract` (`ContractId`, `StaffId`, `Department`, `ContractType`, `Duration`, `HireDate`, `EndDate`, `IsRenewable`, `RenewalStatus`, `LastRenewalDate`, `ExitDate`, `SalaryScale`, `ActualSalary`, `Allowances`, `Gratuity_Accrued`, `PAYE`) VALUES ('C001','S001',NULL,'Permanent','Until Retirement','2015-08-01','2040-08-01',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C002','S002',NULL,'Permanent','Until Retirement','2016-01-15','2041-01-15',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C003','S003',NULL,'Permanent','Until Retirement','2012-09-10','2037-09-10',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C004','S004',NULL,'Permanent','Until Retirement','2017-05-20','2042-05-20',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C005','S005',NULL,'Permanent','Until Retirement','2020-02-01','2045-02-01',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C006','S006',NULL,'Permanent','Until Retirement','2015-02-10','2040-02-10',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C007','S007',NULL,'Permanent','Until Retirement','2014-08-01','2039-08-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C008','S008',NULL,'Permanent','Until Retirement','2010-01-15','2035-01-15',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C009','S009',NULL,'Permanent','Until Retirement','2006-09-01','2031-09-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C010','S010',NULL,'Permanent','Until Retirement','2014-02-01','2039-02-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C011','S011',NULL,'Permanent','Until Retirement','2013-08-15','2038-08-15',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C012','S012',NULL,'Permanent','Until Retirement','2011-01-10','2036-01-10',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C013','S013',NULL,'Permanent','Until Retirement','2007-08-01','2032-08-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C014','S014',NULL,'Permanent','Until Retirement','2008-03-01','2033-03-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C015','S015',NULL,'Permanent','Until Retirement','2023-10-15','2048-10-15',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C016','S016',NULL,'Permanent','Until Retirement','2017-08-01','2042-08-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C017','S017',NULL,'Probation','1 Year','2017-01-10','2018-01-10',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C018','S018',NULL,'Probation','1 Year','2012-05-01','2013-05-01',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C019','S019',NULL,'Probation','1 Year','2016-02-15','2017-02-15',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C020','S020',NULL,'Probation','1 Year','2018-09-01','2019-09-01',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C021','S021',NULL,'Probation','1 Year','2014-01-15','2015-01-15',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C022','S022',NULL,'Probation','1 Year','2011-06-01','2012-06-01',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C023','S023',NULL,'Probation','1 Year','2017-08-15','2018-08-15',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C024','S024',NULL,'Probation','1 Year','2019-02-10','2020-02-10',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C025','S025',NULL,'Probation','1 Year','2023-11-01','2024-11-01',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C026','S026',NULL,'Probation','1 Year','2018-01-15','2019-01-15',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C027','S027',NULL,'Probation','1 Year','2011-03-01','2012-03-01',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C028','S028',NULL,'Probation','1 Year','2013-09-01','2014-09-01',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C029','S029',NULL,'Permanent','Until Retirement','2005-06-01','2030-06-01',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C030','S030',NULL,'Permanent','Until Retirement','2010-02-14','2035-02-14',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C031','S031',NULL,'Permanent','Until Retirement','2015-08-01','2040-08-01',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C032','S032',NULL,'Permanent','Until Retirement','2018-01-15','2043-01-15',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C033','S033',NULL,'Probation','1 Year','2020-07-01','2021-07-01',1,'N/A',NULL,NULL,'PU-7',5718179.00,400000.00,0.00,0.00),('C034','S034',NULL,'Probation','1 Year','2021-03-10','2022-03-10',1,'N/A',NULL,NULL,'PU-7',5718179.00,400000.00,0.00,0.00),('C035','S035',NULL,'Probation','1 Year','2019-11-01','2020-11-01',1,'N/A',NULL,NULL,'PU-7',5718179.00,400000.00,0.00,0.00),('C036','S036',NULL,'Permanent','Until Retirement','2010-06-01','2035-06-01',1,'N/A',NULL,NULL,'PU-3',10664807.00,1500000.00,0.00,0.00),('C037','S037',NULL,'Permanent','Until Retirement','2015-08-15','2040-08-15',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C038','S038',NULL,'Permanent','Until Retirement','2020-01-10','2045-01-10',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C039','S039',NULL,'Permanent','Until Retirement','2018-05-01','2043-05-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C040','S040',NULL,'Permanent','Until Retirement','2024-02-01','2049-02-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C041','S041',NULL,'Probation','1 Year','2018-11-01','2019-11-01',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C042','S042',NULL,'Probation','1 Year','2010-04-15','2011-04-15',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C043','S043',NULL,'Probation','1 Year','2011-09-01','2012-09-01',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C044','S044',NULL,'Probation','1 Year','2015-02-14','2016-02-14',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C045','S045',NULL,'Permanent','Until Retirement','2018-07-01','2043-07-01',1,'N/A',NULL,NULL,'PU-6.2',6687323.00,400000.00,0.00,0.00),('C046','S046',NULL,'Probation','1 Year','2023-09-15','2024-09-15',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C047','S047',NULL,'Probation','1 Year','2015-01-10','2016-01-10',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C048','S048',NULL,'Probation','1 Year','2004-03-01','2005-03-01',1,'N/A',NULL,NULL,'PU-12',2096071.00,150000.00,0.00,0.00),('C049','S049',NULL,'Probation','1 Year','2022-10-01','2023-10-01',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C050','S050',NULL,'Probation','1 Year','2020-05-15','2021-05-15',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C051','S051',NULL,'Probation','1 Year','2020-06-01','2021-06-01',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C052','S052',NULL,'Probation','1 Year','2014-08-01','2015-08-01',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C053','S053',NULL,'Probation','1 Year','2021-11-15','2022-11-15',1,'N/A',NULL,NULL,'PU-10',3475275.00,150000.00,0.00,0.00),('C054','S054',NULL,'Fixed Term','5 Years','2023-08-01','2028-08-01',1,'N/A',NULL,NULL,'PU-1',20000000.00,2000000.00,5000000.00,0.00),('C055','S055',NULL,'Fixed Term','5 Years','2010-01-15','2015-01-15',1,'N/A',NULL,NULL,'PU-2',17400000.00,2000000.00,4350000.00,0.00),('C056','S056',NULL,'Fixed Term','5 Years','2015-06-01','2020-06-01',1,'N/A',NULL,NULL,'PU-3',10664807.00,1500000.00,2666201.75,0.00),('C057','S057',NULL,'Fixed Term','5 Years','2012-04-10','2017-04-10',1,'N/A',NULL,NULL,'PU-3',10664807.00,1500000.00,2666201.75,0.00),('C058','S058',NULL,'Fixed Term','5 Years','2016-09-01','2021-09-01',1,'N/A',NULL,NULL,'PU-3',10664807.00,1500000.00,2666201.75,0.00),('C059','S059',NULL,'Fixed Term','5 Years','2018-11-15','2023-11-15',1,'N/A',NULL,NULL,'PU-3',10664807.00,1500000.00,2666201.75,0.00),('C060','S060',NULL,'Fixed Term','5 Years','2014-02-20','2019-02-20',1,'N/A',NULL,NULL,'PU-3',10664807.00,1500000.00,2666201.75,0.00),('C061','S061',NULL,'Permanent','Until Retirement','2019-07-01','2044-07-01',1,'N/A',NULL,NULL,'PU-4',10008039.00,1500000.00,0.00,0.00),('C062','S062',NULL,'Permanent','Until Retirement','2020-03-10','2045-03-10',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C063','S063',NULL,'Fixed Term','5 Years','2011-08-01','2016-08-01',1,'N/A',NULL,NULL,'PU-3',10664807.00,1500000.00,2666201.75,0.00),('C064','S064',NULL,'Permanent','Until Retirement','2017-01-15','2042-01-15',1,'N/A',NULL,NULL,'PU-5',9004203.00,800000.00,0.00,0.00),('C065','S065',NULL,'Permanent','Until Retirement','2013-05-10','2038-05-10',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C066','S066',NULL,'Permanent','Until Retirement','2021-09-01','2046-09-01',1,'N/A',NULL,NULL,'PU-6.1',8174143.00,800000.00,0.00,0.00),('C067','S067',NULL,'Fixed Term','5 Years','2009-08-15','2014-08-15',1,'N/A',NULL,NULL,'PU-2',17400000.00,2000000.00,4350000.00,0.00);
/*!40000 ALTER TABLE `EmploymentContract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LeaveRequest`
--

DROP TABLE IF EXISTS `LeaveRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LeaveRequest` (
  `LeaveId` varchar(20) NOT NULL,
  `LeaveType` varchar(20) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `StaffId` varchar(30) NOT NULL,
  PRIMARY KEY (`LeaveId`),
  KEY `fk_leave_staff` (`StaffId`),
  CONSTRAINT `fk_leave_staff` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LeaveRequest`
--

LOCK TABLES `LeaveRequest` WRITE;
/*!40000 ALTER TABLE `LeaveRequest` DISABLE KEYS */;
INSERT INTO `LeaveRequest` VALUES ('LR001','Sabbatical','2026-01-10','2026-07-10','Approved','S001'),('LR002','Maternity','2026-03-01','2026-05-31','Approved','S007'),('LR003','Annual','2026-06-15','2026-06-30','Pending','S029'),('LR004','Sick','2026-05-02','2026-05-06','Approved','S041'),('LR005','Study','2025-09-01','2026-08-31','Approved','S017'),('LR006','Annual','2026-07-01','2026-07-21','Pending','S054'),('LR007','Personal','2026-04-10','2026-04-15','Rejected','S022');
/*!40000 ALTER TABLE `LeaveRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Qualification`
--

DROP TABLE IF EXISTS `Qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Qualification` (
  `QualificationId` varchar(20) NOT NULL,
  `DegreeType` varchar(200) DEFAULT NULL,
  `Specialization` varchar(100) DEFAULT NULL,
  `Institution` varchar(40) DEFAULT NULL,
  `YearGraduated` year DEFAULT NULL,
  `StaffId` varchar(30) NOT NULL,
  PRIMARY KEY (`QualificationId`),
  KEY `fk_qual_staff` (`StaffId`),
  CONSTRAINT `fk_qual_staff` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Qualification`
--

LOCK TABLES `Qualification` WRITE;
/*!40000 ALTER TABLE `Qualification` DISABLE KEYS */;
INSERT INTO `Qualification` VALUES ('Q001','BSc',NULL,'MUST',2001,'S001'),('Q002','MSc',NULL,'MUK',2006,'S001'),('Q003','PhD','HCI, ICT for Development','UCT',2014,'S001'),('Q004','BSc',NULL,'MUK',2000,'S002'),('Q005','MEng',NULL,'Hunan Univ, China',2006,'S002'),('Q006','PhD','Embedded Systems & Web Tech',NULL,2015,'S002'),('Q007','BSc',NULL,'MUST',2003,'S003'),('Q008','MSc',NULL,'Univ of Leeds, UK',2005,'S003'),('Q009','PhD','Health Informatics','Univ of Manchester, UK',2011,'S003'),('Q010','BSc',NULL,'MUST',2007,'S004'),('Q011','MSc',NULL,'Twente University',2011,'S004'),('Q012','PhD','System and Network Security','Univ of Southampton, UK',2016,'S004'),('Q013','BSc',NULL,'MUST',2009,'S005'),('Q014','MSc',NULL,'Norwegian Univ of Sc & Tech',2013,'S005'),('Q015','PhD','Software Eng & Embedded Systems','MUST',2019,'S005'),('Q016','BSc',NULL,'MUST',2007,'S006'),('Q017','PhD','Computational Mathematics','Univ of New Brunswick',2014,'S006'),('Q018','BSc',NULL,'MUST',2008,'S007'),('Q019','MSc','Robotics and Embedded system','Malmo Univ, Sweden',2013,'S007'),('Q020','BSc',NULL,'UCU, Mukono',2004,'S008'),('Q021','MSc','Information Systems','Uganda Martyrs, Nkozi',2008,'S008'),('Q022','BSc',NULL,'MUST',2002,'S009'),('Q023','MSc','HCI','Univ of Leeds',2005,'S009'),('Q024','BSc',NULL,'MUK',2007,'S010'),('Q025','MSc','Info Systems and Technologies','MUK',2013,'S010'),('Q026','BSc','Physics/Maths','MUK',2007,'S011'),('Q027','MSc',NULL,'Hunan Univ, China',2012,'S011'),('Q028','PhD','Data mining','VCU',2019,'S011'),('Q029','BSc','Math & Statistics','KIU',2008,'S012'),('Q030','MSc','Data Science','UMU',2010,'S012'),('Q031','BSc',NULL,'MUK',2004,'S013'),('Q032','MSc','Data communication and Networks','UoK',2006,'S013'),('Q033','BSc',NULL,'MUK',2001,'S014'),('Q034','MSc','Digital Electronics','Kharkiv Nat Univ',2007,'S014'),('Q035','BSc','Computer Science','MUST',1998,'S029'),('Q036','MBA','Planning and ICT Implementation','MUST',2003,'S029'),('Q037','BSc','Computer Science','MUST',2003,'S030'),('Q038','MSc','Health Info Tech','MUST',2008,'S030'),('Q039','BSc','Computer Science','MUST',2010,'S031'),('Q040','MSc','Health Info Tech','MUST',2014,'S031'),('Q041','BSc','Information Tech','MUST',2014,'S032'),('Q042','MSc','Information Systems','MUST',2017,'S032'),('Q043','Diploma','Comp Sci & IT','UTC, Bushenyi',2016,'S033'),('Q044','Bachelor','Information Tech','UMU',2019,'S033'),('Q045','PhD','Information Studies','UKZN, South Africa',2019,'S036'),('Q046','MSc','Information Systems','MUST',2014,'S037'),('Q047','MISC','Library User Info Needs','MUK',2019,'S038'),('Q048','MBChB','Medicine','MUST',1992,'S054'),('Q049','BSc','Botany and Zoology','MUK',1994,'S055'),('Q050','MSc','Environment & Nat Res','MUST',2000,'S055'),('Q051','PhD','Natural Resource Mgt','MUST',2008,'S055'),('Q052','MBChB','Medicine','MUST',2002,'S067'),('Q053','MMed','Obstetrics & Gyne','MUST',2007,'S067'),('Q054','PhD','Medical Sciences','Univ of Antwerp, Belgium',2015,'S067');
/*!40000 ALTER TABLE `Qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Staff` (
  `StaffId` varchar(30) NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Tel` varchar(20) DEFAULT NULL,
  `DateOfBirth` date NOT NULL,
  `HireDate` date NOT NULL,
  `Position` varchar(40) DEFAULT NULL,
  `DepartmentId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES ('S001',NULL,'Richard','Ssembatya','rssembatya@must.ac.ug','+256705495975','1978-04-12','2015-08-01','Senior Lecturer','D005'),('S002',NULL,'Evarist','Nabaasa','enabaasa@must.ac.ug','+256755521825','1976-11-23','2016-01-15','Senior Lecturer','D006'),('S003',NULL,'Angella','Musiimenta','amusiimenta@must.ac.ug','+256781121203','1981-02-05','2012-09-10','Senior Lecturer','D007'),('S004',NULL,'Fred','Kaggwa','fkaggwa@must.ac.ug','+256776040537','1983-07-19','2017-05-20','Senior Lecturer','D003'),('S005',NULL,'Simon','Kawuma','skawuma@must.ac.ug','+256707839080','1985-10-30','2020-02-01','Senior Lecturer','D004'),('S006',NULL,'Pius','Ariho','pariho@must.ac.ug','+256752073790','1984-06-12','2015-02-10','Lecturer','D003'),('S007',NULL,'Jane','Katusiime','jkatusiime@must.ac.ug','+256783851712','1985-09-22','2014-08-01','Lecturer','D004'),('S008',NULL,'Kenneth','Baguma','kbaguma@must.ac.ug','+256773037189','1981-12-05','2010-01-15','Lecturer','D005'),('S009',NULL,'Robert','Mugonza','rmugonza@must.ac.ug','+256702630810','1980-03-30','2006-09-01','Lecturer','D005'),('S010',NULL,'Ruth','Nakato','rnakato@must.ac.ug','+256753042485','1984-07-11','2014-02-01','Lecturer','D005'),('S011',NULL,'Walter','Akello','wakello@must.ac.ug','+256786319995','1985-01-20','2013-08-15','Lecturer','D003'),('S012',NULL,'Aggrey','Obbo','aobbo@must.ac.ug','+256773472522','1986-11-04','2011-01-10','Lecturer','D003'),('S013',NULL,'David','Bamutura','dbamutura@must.ac.ug','+256706402623','1982-05-18','2007-08-01','Lecturer','D006'),('S014',NULL,'Martin','Ngobye','mngobye@must.ac.ug','+256752595550','1979-08-25','2008-03-01','Lecturer','D006'),('S015',NULL,'Aaron','Atuhe','aatuhe@must.ac.ug','+256781769883','1992-02-14','2023-10-15','Lecturer','D006'),('S016',NULL,'Deborah','Natumanya','dnatumanya@must.ac.ug','+256779062764','1992-10-09','2017-08-01','Lecturer','D005'),('S017',NULL,'Richard','Ntwari','rntwari@must.ac.ug','+256703004172','1988-04-16','2017-01-10','Assistant Lecturer','D004'),('S018',NULL,'Tezira','Wanyana','twanyana@must.ac.ug','+256754832571','1989-11-20','2012-05-01','Assistant Lecturer','D003'),('S019',NULL,'Tonny','Engwau','tengwau@must.ac.ug','+256785150338','1988-07-03','2016-02-15','Assistant Lecturer','D006'),('S020',NULL,'Yonasi','Safari','ysafari@must.ac.ug','+256771253977','1991-03-25','2018-09-01','Assistant Lecturer','D003'),('S021',NULL,'Mwavu','Rogers','mrogers@must.ac.ug','+256707818872','1989-08-14','2014-01-15','Assistant Lecturer','D004'),('S022',NULL,'Francis','Kamuganga','fkamuganga@must.ac.ug','+256757332429','1985-12-08','2011-06-01','Assistant Lecturer','D004'),('S023',NULL,'Richard','Kimera','rkimera@must.ac.ug','+256783205532','1987-05-19','2017-08-15','Assistant Lecturer','D004'),('S024',NULL,'Josephine','Ayebare','jayebare@must.ac.ug','+256772030372','1994-01-30','2019-02-10','Assistant Lecturer','D007'),('S025',NULL,'Moreen','Kabarungi','mkabarungi@must.ac.ug','+256708535266','1993-06-15','2023-11-01','Assistant Lecturer','D005'),('S026',NULL,'Ambrose','Izaara','aizaara@must.ac.ug','+256758585214','1988-09-02','2018-01-15','Assistant Lecturer','D003'),('S027',NULL,'Gloria','Munguci','gmunguci@must.ac.ug','+256787320271','1985-11-18','2011-03-01','Assistant Lecturer','D006'),('S028',NULL,'Buri','Garshom','bgarshom@must.ac.ug','+256779845716','1989-02-28','2013-09-01','Assistant Lecturer','D005'),('S029',NULL,'Amos','Baryashaba','abaryashaba@must.ac.ug','+256708267769','1975-08-21','2005-06-01','Principal IT Officer','D001'),('S030',NULL,'Lasto','Mubiru','lmubiru@must.ac.ug','+256751801697','1980-11-15','2010-02-14','Senior IT Officer','D001'),('S031',NULL,'Owen','Muhangi','omuhangi@must.ac.ug','+256781205177','1988-04-30','2015-08-01','IT Officer','D001'),('S032',NULL,'Emmanuel','Niwenyesiga','eniwenyesiga@must.ac.ug','+256778620795','1992-09-12','2018-01-15','Assistant IT Officer','D001'),('S033',NULL,'Peter','Bambanza','pbambanza@must.ac.ug','+256702488444','1995-03-22','2020-07-01','Assistant IT Technician','D001'),('S034',NULL,'Oyo','Jude','ojude@must.ac.ug','+256753579836','1996-12-05','2021-03-10','Assistant IT Technician','D001'),('S035',NULL,'Martin','Kijumi','mkijumi@must.ac.ug','+256789433849','1994-07-18','2019-11-01','Assistant IT Technician','D001'),('S036',NULL,'Robert','Buwule','rbuwule@must.ac.ug','+256778429740','1975-04-12','2010-06-01','University Librarian','D002'),('S037',NULL,'Adriko','Wilson','awilson@must.ac.ug','+256703847150','1982-11-20','2015-08-15','Senior Librarian','D002'),('S038',NULL,'Agnes','Nabada','anabada@must.ac.ug','+256751946535','1988-03-14','2020-01-10','Assistant Librarian','D002'),('S039',NULL,'Anita','Asasira','aasasira@must.ac.ug','+256786191222','1990-07-22','2018-05-01','Assistant Librarian','D002'),('S040',NULL,'Nabukenya','Judith','njudith@must.ac.ug','+256776116507','1995-12-05','2024-02-01','Assistant Librarian','D002'),('S041',NULL,'Hope','Kansiime','hkansiime@must.ac.ug','+256702008870','1992-09-18','2018-11-01','Library Clerk','D002'),('S042',NULL,'Stephen','Lwanga','slwanga@must.ac.ug','+256758694829','1985-02-25','2010-04-15','Library Clerk','D002'),('S043',NULL,'David','Waswa','dwaswa@must.ac.ug','+256789447538','1984-06-30','2011-09-01','Library Clerk','D002'),('S044',NULL,'Unity','Atukunda','uatukunda@must.ac.ug','+256772153204','1990-01-10','2015-02-14','Library Clerk','D002'),('S045',NULL,'Bernard','Kabonekye','bkabonekye@must.ac.ug','+256708423406','1988-10-08','2018-07-01','Library Assistant','D002'),('S046',NULL,'Sylivia','Keitesi','skeitesi@must.ac.ug','+256757657419','1998-05-12','2023-09-15','Library Clerk','D002'),('S047',NULL,'Judith','Kobusingye','jkobusingye@must.ac.ug','+256783016876','1989-11-04','2015-01-10','Library Clerk','D002'),('S048',NULL,'Zaccheas','Tigahwa','ztigahwa@must.ac.ug','+256779112124','1978-08-19','2004-03-01','Library Attendant','D002'),('S049',NULL,'Edson','Kikundi','ekikundi@must.ac.ug','+256708509995','1997-03-27','2022-10-01','Library Clerk','D002'),('S050',NULL,'Richard','Aine','raine@must.ac.ug','+256755213601','1994-12-15','2020-05-15','Library Clerk','D002'),('S051',NULL,'Poloce','Asiimwe','pasiimwe@must.ac.ug','+256788538022','1993-07-09','2020-06-01','Library Clerk','D002'),('S052',NULL,'Berina','Kyimpaye','bkyimpaye@must.ac.ug','+256778049307','1989-04-21','2014-08-01','Library Clerk','D002'),('S053',NULL,'Maria','Kemihendo','mkemihendo@must.ac.ug','+256704632472','1996-01-30','2021-11-15','Library Clerk','D002'),('S054',NULL,'Pauline','Byakika-Kibwika','pbyakika-kibwika@must.ac.ug','+256757014439','1968-05-14','2023-08-01','Vice Chancellor','D008'),('S055',NULL,'Robert','Bitariho','rbitariho@must.ac.ug','+256782174779','1970-11-22','2010-01-15','Deputy Vice Chancellor (F&A)','D011'),('S056',NULL,'Vincent','Kansiime','vkansiime@must.ac.ug','+256776830577','1972-03-08','2015-06-01','University Secretary','D013'),('S057',NULL,'Martha','Twinamasiko','mtwinamasiko@must.ac.ug','+256708628551','1975-09-30','2012-04-10','Academic Registrar','D014'),('S058',NULL,'Ambrose','Mugisha','amugisha@must.ac.ug','+256753651022','1978-01-18','2016-09-01','Dean of Students','D015'),('S059',NULL,'Felix','Amanya','famanya@must.ac.ug','+256789369461','1980-07-25','2018-11-15','University Bursar','D009'),('S060',NULL,'Prinari','Behangana','pbehangana@must.ac.ug','+256777894238','1976-12-05','2014-02-20','Chief Human Resource Director','D010'),('S061',NULL,'Robiina','Nakakeeto','rnakakeeto@must.ac.ug','+256701362808','1982-04-12','2019-07-01','University Planner','D016'),('S062',NULL,'Timothy','Mugumya','tmugumya@must.ac.ug','+256759131327','1981-08-19','2020-03-10','Principal Legal Officer','D017'),('S063',NULL,'Vincent','Batwala','vbatwala@must.ac.ug','+256784568211','1973-10-27','2011-08-01','Director Research Graduate and Training','D018'),('S064',NULL,'Aggrey','Amanyabyoona','aamanyabyoona@must.ac.ug','+256773447075','1979-05-16','2017-01-15','Principal Procurement Officer','D019'),('S065',NULL,'Achilles','Byabashaija','abyabashaija@must.ac.ug','+256702530743','1974-02-28','2013-05-10','Senior Estates Officer','D020'),('S066',NULL,'Angella','Muyingo','amuyingo@must.ac.ug','+256751312490','1985-06-21','2021-09-01','Senior Communications Officer','D021'),('S067',NULL,'Joseph','Ngonzi','jngonzi@must.ac.ug','+256786970223','1977-11-03','2009-08-15','Deputy Vice Chancellor (Academics)','D012');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeachingAssignment`
--

DROP TABLE IF EXISTS `TeachingAssignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TeachingAssignment` (
  `AssignmentId` varchar(20) NOT NULL,
  `StaffId` varchar(30) DEFAULT NULL,
  `CourseCode` varchar(20) DEFAULT NULL,
  `Semester` int DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `ContactHours` int DEFAULT NULL,
  PRIMARY KEY (`AssignmentId`),
  KEY `fk_ta_staff` (`StaffId`),
  KEY `fk_ta_course` (`CourseCode`),
  CONSTRAINT `fk_ta_course` FOREIGN KEY (`CourseCode`) REFERENCES `Course` (`CourseCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ta_staff` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeachingAssignment`
--

LOCK TABLES `TeachingAssignment` WRITE;
/*!40000 ALTER TABLE `TeachingAssignment` DISABLE KEYS */;
INSERT INTO `TeachingAssignment` VALUES ('TA001','S004','CSC2201',2,2026,4),('TA002','S006','CSC1201',2,2026,3),('TA003','S011','CSC3101',1,2026,4),('TA004','S012','CSC2101',1,2026,4),('TA005','S018','CSC1101',1,2026,4),('TA006','S020','CSC3201',2,2026,3),('TA007','S026','CSC3101',2,2026,4),('TA008','S005','SWE3101',1,2026,4),('TA009','S007','SWE1101',1,2026,4),('TA010','S017','SWE3201',2,2026,3),('TA011','S021','SWE2201',2,2026,4),('TA012','S022','SWE2101',1,2026,4),('TA013','S023','SWE1201',2,2026,3),('TA014','S001','INS1201',2,2026,3),('TA015','S008','INS2101',1,2026,4),('TA016','S009','INS2201',2,2026,4),('TA017','S010','INS3201',2,2026,4),('TA018','S016','INS1101',1,2026,3),('TA019','S025','INS3101',1,2026,3),('TA020','S028','INS2101',2,2026,4),('TA021','S002','CPE3101',1,2026,4),('TA022','S013','CPE2101',1,2026,4),('TA023','S014','CPE1101',1,2026,4),('TA024','S015','CPE2201',2,2026,4),('TA025','S019','CPE1201',1,2026,4),('TA026','S027','CPE3201',3,2026,3),('TA027','S003','HIN2101',1,2026,4),('TA028','S024','HIN1101',1,2026,3),('TA029','S024','HIN3101',1,2026,3),('TA030','S003','HIN3201',2,2026,4);
/*!40000 ALTER TABLE `TeachingAssignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserCredentials`
--

DROP TABLE IF EXISTS `UserCredentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserCredentials` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `StaffId` varchar(30) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `SystemRole` enum('HR_Admin','Dept_Head','Teacher','General_Staff') DEFAULT 'General_Staff',
  `IsActive` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `StaffId` (`StaffId`),
  UNIQUE KEY `Username` (`Username`),
  CONSTRAINT `fk_credentials_staff` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserCredentials`
--

LOCK TABLES `UserCredentials` WRITE;
/*!40000 ALTER TABLE `UserCredentials` DISABLE KEYS */;
INSERT INTO `UserCredentials` VALUES (2,'S004','head.cs','a109e36947ad56de1dca1cc49f0ef8ac9ad9a7b1aa0df41fb3c4cb73c1ff01ea','Dept_Head',1),(3,'S029','teacher.029','a109e36947ad56de1dca1cc49f0ef8ac9ad9a7b1aa0df41fb3c4cb73c1ff01ea','Teacher',1),(4,'S060','admin.s060','a109e36947ad56de1dca1cc49f0ef8ac9ad9a7b1aa0df41fb3c4cb73c1ff01ea','HR_Admin',1);
/*!40000 ALTER TABLE `UserCredentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_ContractManagement`
--

DROP TABLE IF EXISTS `v_ContractManagement`;
/*!50001 DROP VIEW IF EXISTS `v_ContractManagement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_ContractManagement` AS SELECT 
 1 AS `ContractId`,
 1 AS `StaffId`,
 1 AS `Department`,
 1 AS `ContractType`,
 1 AS `Duration`,
 1 AS `HireDate`,
 1 AS `EndDate`,
 1 AS `IsRenewable`,
 1 AS `RenewalStatus`,
 1 AS `LastRenewalDate`,
 1 AS `ExitDate`,
 1 AS `SalaryScale`,
 1 AS `ActualSalary`,
 1 AS `Allowances`,
 1 AS `NSSF_Employee`,
 1 AS `NSSF_Employer`,
 1 AS `Gratuity_Accrued`,
 1 AS `PAYE`,
 1 AS `CurrentStatus`,
 1 AS `RenewalAlert`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_ContractManagement`
--

/*!50001 DROP VIEW IF EXISTS `v_ContractManagement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ContractManagement` AS select `EmploymentContract`.`ContractId` AS `ContractId`,`EmploymentContract`.`StaffId` AS `StaffId`,`EmploymentContract`.`Department` AS `Department`,`EmploymentContract`.`ContractType` AS `ContractType`,`EmploymentContract`.`Duration` AS `Duration`,`EmploymentContract`.`HireDate` AS `HireDate`,`EmploymentContract`.`EndDate` AS `EndDate`,`EmploymentContract`.`IsRenewable` AS `IsRenewable`,`EmploymentContract`.`RenewalStatus` AS `RenewalStatus`,`EmploymentContract`.`LastRenewalDate` AS `LastRenewalDate`,`EmploymentContract`.`ExitDate` AS `ExitDate`,`EmploymentContract`.`SalaryScale` AS `SalaryScale`,`EmploymentContract`.`ActualSalary` AS `ActualSalary`,`EmploymentContract`.`Allowances` AS `Allowances`,`EmploymentContract`.`NSSF_Employee` AS `NSSF_Employee`,`EmploymentContract`.`NSSF_Employer` AS `NSSF_Employer`,`EmploymentContract`.`Gratuity_Accrued` AS `Gratuity_Accrued`,`EmploymentContract`.`PAYE` AS `PAYE`,(case when (`EmploymentContract`.`EndDate` < curdate()) then 'Inactive' else 'Active' end) AS `CurrentStatus`,(case when (`EmploymentContract`.`EndDate` < curdate()) then 'OVERDUE' when ((to_days(`EmploymentContract`.`EndDate`) - to_days(curdate())) <= 30) then 'Expiring Soon' else 'OK' end) AS `RenewalAlert` from `EmploymentContract` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-07  2:17:25
