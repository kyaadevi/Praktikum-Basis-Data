-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: peminjaman_lab
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
-- Table structure for table `alat_lab`
--

DROP TABLE IF EXISTS `alat_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alat_lab` (
  `id_alat` int(5) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `total_tersedia` int(50) NOT NULL,
  `total_stok` int(50) NOT NULL,
  PRIMARY KEY (`id_alat`),
  KEY `id_kategori` (`id_kategori`),
  CONSTRAINT `alat_lab_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_alat` (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alat_lab`
--

LOCK TABLES `alat_lab` WRITE;
/*!40000 ALTER TABLE `alat_lab` DISABLE KEYS */;
INSERT INTO `alat_lab` VALUES (301,'Mikroskop Binokuler',1,5,10),(302,'Multimeter Digital',2,8,10),(303,'PC Lab Core i5',3,15,20),(304,'Tabung Reaksi',4,40,50),(305,'Osiloskop 100MHz',5,3,5),(306,'Gelas Ukur 100ml',4,20,25),(307,'Laptop Lab',3,5,8),(308,'Avometer Analog',2,6,6),(309,'Mikroskop Stereo',1,4,6),(310,'Power Supply DC',5,7,10);
/*!40000 ALTER TABLE `alat_lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_peminjaman`
--

DROP TABLE IF EXISTS `detail_peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_peminjaman` (
  `id_detail` int(5) NOT NULL,
  `id_peminjaman` int(5) NOT NULL,
  `id_alat` int(5) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `kondisi_saat_dipinjam` varchar(100) NOT NULL,
  PRIMARY KEY (`id_detail`),
  KEY `id_peminjaman` (`id_peminjaman`),
  KEY `id_alat` (`id_alat`),
  CONSTRAINT `detail_peminjaman_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`),
  CONSTRAINT `detail_peminjaman_ibfk_2` FOREIGN KEY (`id_alat`) REFERENCES `alat_lab` (`id_alat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_peminjaman`
--

LOCK TABLES `detail_peminjaman` WRITE;
/*!40000 ALTER TABLE `detail_peminjaman` DISABLE KEYS */;
INSERT INTO `detail_peminjaman` VALUES (501,401,301,2,'Baik, lensa bersih'),(502,401,302,1,'Baik, baterai baru'),(503,402,303,3,'Baik, semua menyala normal'),(504,403,304,10,'Baik, tidak ada retak'),(505,403,306,5,'Baik, skala masih jelas'),(506,404,305,1,'Baik, probe lengkap'),(507,404,308,2,'Baik, jarum bergerak normal'),(508,405,303,2,'Baik, semua port berfungsi'),(509,406,307,1,'Baik, baterai penuh'),(510,406,309,2,'Baik, fokus tajam'),(511,407,302,1,'Baik, kalibrasi terbaru'),(512,407,310,1,'Baik, output stabil');
/*!40000 ALTER TABLE `detail_peminjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_alat`
--

DROP TABLE IF EXISTS `kategori_alat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_alat` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_alat`
--

LOCK TABLES `kategori_alat` WRITE;
/*!40000 ALTER TABLE `kategori_alat` DISABLE KEYS */;
INSERT INTO `kategori_alat` VALUES (1,'Mikroskop'),(2,'Alat Ukur'),(3,'Komputer'),(4,'Alat Kimia'),(5,'Elektronika');
/*!40000 ALTER TABLE `kategori_alat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` enum('aktif','pasif') NOT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (101,'Andi Saputra','Teknik Informatika','andi.saputra@univ.ac.id','aktif'),(102,'Budi Wijaya','Sistem Informasi','budi.wijaya@univ.ac.id','aktif'),(103,'Citra Dewi','Teknik Elektro','citra.dewi@univ.ac.id','aktif'),(104,'Dian Pratama','Teknik Kimia','dian.pratama@univ.ac.id','pasif'),(105,'Eka Fitriani','Fisika','eka.fitriani@univ.ac.id','aktif'),(106,'Farhan Maulana','Teknik Informatika','farhan.maulana@univ.ac.id','aktif'),(107,'Gita Purnama','Sistem Informasi','gita.purnama@univ.ac.id','aktif');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman`
--

DROP TABLE IF EXISTS `peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman` (
  `id_peminjaman` int(5) NOT NULL,
  `id_mahasiswa` int(5) NOT NULL,
  `id_petugas` int(5) NOT NULL,
  `tgl_pinjam` datetime NOT NULL,
  `tgl_target_kembali` datetime NOT NULL,
  `status` enum('dipinjam','selesai') NOT NULL,
  PRIMARY KEY (`id_peminjaman`),
  KEY `id_mahasiswa` (`id_mahasiswa`),
  KEY `id_petugas` (`id_petugas`),
  CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas_lab` (`id_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman`
--

LOCK TABLES `peminjaman` WRITE;
/*!40000 ALTER TABLE `peminjaman` DISABLE KEYS */;
INSERT INTO `peminjaman` VALUES (401,101,201,'2025-06-01 09:00:00','2025-06-08 17:00:00','dipinjam'),(402,102,202,'2025-06-02 10:30:00','2025-06-09 16:00:00','dipinjam'),(403,103,203,'2025-05-25 08:00:00','2025-06-01 17:00:00','selesai'),(404,105,201,'2025-06-03 13:00:00','2025-06-10 15:00:00','dipinjam'),(405,101,202,'2025-05-20 09:00:00','2025-05-27 17:00:00','selesai'),(406,106,204,'2025-06-04 08:30:00','2025-06-11 17:00:00','dipinjam'),(407,107,201,'2025-06-05 14:00:00','2025-06-12 16:00:00','dipinjam');
/*!40000 ALTER TABLE `peminjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengembalian`
--

DROP TABLE IF EXISTS `pengembalian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengembalian` (
  `id_pengembalian` int(5) NOT NULL,
  `id_peminjaman` int(5) NOT NULL,
  `id_petugas` int(5) NOT NULL,
  `tgl_kembali_real` datetime NOT NULL,
  `kondisi_saat_dikembalikan` enum('baik','rusak_ringan','rusak_berat','hilang','kurang_lengkap') NOT NULL,
  `denda` int(11) DEFAULT 0,
  `catatan_pengembalian` text DEFAULT NULL,
  PRIMARY KEY (`id_pengembalian`),
  KEY `id_peminjaman` (`id_peminjaman`),
  KEY `id_petugas` (`id_petugas`),
  CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`),
  CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas_lab` (`id_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengembalian`
--

LOCK TABLES `pengembalian` WRITE;
/*!40000 ALTER TABLE `pengembalian` DISABLE KEYS */;
INSERT INTO `pengembalian` VALUES (601,403,203,'2025-06-02 14:30:00','baik',0,'Dikembalikan tepat waktu'),(602,405,202,'2025-05-29 10:00:00','rusak_berat',50000,'Terlambat 2 hari, 1 PC mati total');
/*!40000 ALTER TABLE `pengembalian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petugas_lab`
--

DROP TABLE IF EXISTS `petugas_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petugas_lab` (
  `id_petugas` int(5) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petugas_lab`
--

LOCK TABLES `petugas_lab` WRITE;
/*!40000 ALTER TABLE `petugas_lab` DISABLE KEYS */;
INSERT INTO `petugas_lab` VALUES (201,'Dr. Ahmad Riansyah','Kepala Laboratorium'),(202,'Siti Nurhaliza, S.Si','Teknisi Lab'),(203,'Bambang Susanto','Asisten Lab'),(204,'Dewi Kartika, M.Kom','Koordinator Lab');
/*!40000 ALTER TABLE `petugas_lab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-08 16:30:47
