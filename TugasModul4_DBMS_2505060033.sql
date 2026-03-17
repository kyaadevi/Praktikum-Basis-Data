-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: akademik_mahasiswa
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NPM` char(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jurusan` varchar(15) NOT NULL,
  `Matkul` varchar(15) NOT NULL,
  `Nilai` int(3) NOT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('11001','Ahmad Fauzi','Informatika','Basis Data',85),('11002','Budi Santoso','Informatika','Basis Data',78),('11003','Citra Dewi','Informatika','Basis Data',92),('11004','Dian Pratama','Informatika','Pemrograman',88),('11005','Eka Putri','Informatika','Pemrograman',76),('11006','Fajar Nugroho','Sistem Info','Analisis',82),('11007','Gita Permata','Sistem Info','Analisis',90),('11008','Hadi Wijaya','Sistem Info','Database',79),('11009','Indah Sari','Sistem Info','Database',88),('11010','Joko Widodo','Teknik Komp','Jaringan',75),('11011','Kartika Sari','Teknik Komp','Jaringan',86),('11012','Lukman Hakim','Teknik Komp','Sistem Oper',83),('11013','Maya Sari','Informatika','Web Design',94),('11014','Nanda Putra','Informatika','Web Design',81),('11015','Oscar Rinaldi','Informatika','AI',77),('11016','Putri Wulandari','Sistem Info','E-commerce',89),('11017','Qori Aini','Sistem Info','E-commerce',84),('11018','Rudi Hermawan','Sistem Info','Manajemen',73),('11019','Sari Indah','Teknik Komp','Arsitektur',87),('11020','Teguh Santoso','Teknik Komp','Arsitektur',79),('11021','Umar Bakri','Informatika','Mobile Dev',91),('11022','Vina Agustina','Informatika','Mobile Dev',82),('11023','Wawan Setiawan','Informatika','Cloud Comp',78),('11024','Xaverius Rudi','Sistem Info','Big Data',85),('11025','Yuni Maulida','Sistem Info','Big Data',88),('11026','Zaki Ahmad','Sistem Info','UX Design',90),('11027','Aditya Pratama','Teknik Komp','Keamanan',76),('11028','Bella Safitri','Teknik Komp','Keamanan',84),('11029','Chandra Wijaya','Teknik Komp','Embedded',81),('11030','Dewi Lestari','Informatika','Data Mining',93),('11031','Erik Susanto','Informatika','Data Mining',79),('11032','Fitri Handayani','Sistem Info','SIM',86),('11033','Gilang Ramadhan','Sistem Info','SIM',82),('11034','Hana Maulida','Sistem Info','IT Audit',88),('11035','Irfan Maulana','Teknik Komp','Multimedia',77),('11036','Jasmine Aulia','Teknik Komp','Multimedia',85),('11037','Kevin Alexander','Teknik Komp','IoT',80),('11038','Laras Ayu','Informatika','Cryptography',86),('11039','Muhammad Rizki','Informatika','Cryptography',75),('11040','Nadia Syahira','Informatika','Computer Vis',89);
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-17 20:39:01
