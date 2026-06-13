Microsoft Windows [Version 10.0.26200.8524]
(c) Microsoft Corporation. All rights reserved.

C:\Users\ACER>d
'd' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\ACER>cd C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 117
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE db_kampus;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> USE db_kampus;
Database changed
MariaDB [db_kampus]> CREATE TABLE mahasiswa (
    -> nim CHAR(10) PRIMARY KEY,
    -> nama VARCHAR(50),
    -> jurusan VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.026 sec)

MariaDB [db_kampus]> CREATE TABLE matakuliah (
    -> kode_mk CHAR(6) PRIMARY KEY,
    -> nama_mk VARCHAR(50),
    -> sks INT
    -> );
Query OK, 0 rows affected (0.017 sec)

MariaDB [db_kampus]> CREATE TABLE dosen (
    -> nip CHAR(10) PRIMARY KEY,
    -> nama VARCHAR(50),
    -> bidang VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.023 sec)

MariaDB [db_kampus]> INSERT INTO mahasiswa (nim, nama, jurusan) VALUES
    -> ('210001001', 'Andi Pratama', 'Teknik Informatika'),
    -> ('210001002', 'Budi Santoso', 'Sistem Informasi'),
    -> ('210001003', 'Citra Dewi', 'Teknik Komputer'),
    -> ('210001004', 'Dian Permata', 'Manajemen Informatika'),
    -> ('210001005', 'Eka Fitria', 'Teknik Informatika'),
    -> ('210001006', 'Farhan Hakim', 'Sistem Informasi'),
    -> ('210001007', 'Gita Lestari', 'Teknik Komputer'),
    -> ('210001008', 'Hendra Wijaya', 'Manajemen Informatika'),
    -> ('210001009', 'Indah Puspita', 'Teknik Informatika'),
    -> ('210001010', 'Joko Susilo', 'Sistem Informasi');
Query OK, 10 rows affected (0.006 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [db_kampus]> INSERT INTO matakuliah (kode_mk, nama_mk, sks) VALUES
    -> ('MK001', 'Pemrograman Dasar', 3),
    -> ('MK002', 'Basis Data', 3),
    -> ('MK003', 'Jaringan Komputer', 3),
    -> ('MK004', 'Pemrograman Web', 2),
    -> ('MK005', 'Struktur Data', 3),
    -> ('MK006', 'Sistem Operasi', 2),
    -> ('MK007', 'Rekayasa Perangkat Lunak', 3),
    -> ('MK008', 'Pemrograman Mobile', 2),
    -> ('MK009', 'Kecerdasan Buatan', 3),
    -> ('MK010', 'Etika Profesi', 2);
Query OK, 10 rows affected (0.013 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [db_kampus]> INSERT INTO dosen (nip, nama, bidang) VALUES
    -> ('198001001', 'Dr. Ahmad Suherman', 'Basis Data'),
    -> ('198001002', 'Prof. Budi Raharjo', 'Jaringan Komputer'),
    -> ('198001003', 'Dr. Cipto Susilo', 'Pemrograman'),
    -> ('198001004', 'Dra. Dewi Andriani', 'Sistem Informasi'),
    -> ('198001005', 'Dr. Eko Prasetyo', 'Rekayasa Perangkat Lunak'),
    -> ('198001006', 'Prof. Farida Ningsih', 'Kecerdasan Buatan'),
    -> ('198001007', 'Dr. Gunawan Wibowo', 'Multimedia'),
    -> ('198001008', 'Dra. Hesti Purnama', 'Manajemen Informatika'),
    -> ('198001009', 'Dr. Irawan Kusuma', 'Keamanan Komputer'),
    -> ('198001010', 'Prof. Joko Sumarsono', 'Komputasi Awan');
Query OK, 10 rows affected (0.016 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [db_kampus]> CREATE USER 'user_admin'@'localhost' IDENTIFIED BY 'admin123';
ERROR 1396 (HY000): Operation CREATE USER failed for 'user_admin'@'localhost'
MariaDB [db_kampus]> DROP USER 'user_admin'@'localhost';
Query OK, 0 rows affected (0.004 sec)

MariaDB [db_kampus]> DROP USER 'user_mhs'@'localhost';
Query OK, 0 rows affected (0.002 sec)

MariaDB [db_kampus]> DROP USER 'user_dosen'@'localhost';
Query OK, 0 rows affected (0.010 sec)

MariaDB [db_kampus]> CREATE USER 'user_admin'@'localhost' IDENTIFIED BY 'admin123';
Query OK, 0 rows affected (0.003 sec)

MariaDB [db_kampus]> CREATE USER 'user_mhs'@'localhost' IDENTIFIED BY 'mhs123';
Query OK, 0 rows affected (0.011 sec)

MariaDB [db_kampus]> CREATE USER 'user_dosen'@'localhost' IDENTIFIED BY 'dosen123';
Query OK, 0 rows affected (0.002 sec)

MariaDB [db_kampus]> GRANT ALL PRIVILEGES ON db_kampus.* TO 'user_admin'@'localhost';
ERROR 1034 (HY000): Index for table 'db' is corrupt; try to repair it
MariaDB [db_kampus]> USE mysql;
Database changed
MariaDB [mysql]> REPAIR TABLE db;
+----------+--------+----------+----------+f stage done
| Table    | Op     | Msg_type | Msg_text |
+----------+--------+----------+----------+
| mysql.db | repair | status   | OK       |
+----------+--------+----------+----------+
1 row in set (0.098 sec)

MariaDB [mysql]> CHECK TABLE db;
+----------+-------+----------+----------+tage done
| Table    | Op    | Msg_type | Msg_text |
+----------+-------+----------+----------+
| mysql.db | check | status   | OK       |
+----------+-------+----------+----------+
1 row in set (0.013 sec)

MariaDB [mysql]> GRANT ALL PRIVILEGES ON db_kampus.* TO 'user_admin'@'localhost';
Query OK, 0 rows affected (0.012 sec)

MariaDB [mysql]> GRANT ALL PRIVILEGES ON db_kampus.matakuliah TO 'user_mhs'@'localhost';
Query OK, 0 rows affected (0.004 sec)

MariaDB [mysql]> REVOKE SELECT ON db_kampus.matakuliah FROM 'user_mhs'@'localhost';
Query OK, 0 rows affected (0.012 sec)

MariaDB [mysql]> CREATE ROLE 'role_dosen';
Query OK, 0 rows affected (0.013 sec)

MariaDB [mysql]> GRANT SELECT, INSERT ON db_kampus.mahasiswa TO 'role_dosen';
Query OK, 0 rows affected (0.003 sec)

MariaDB [mysql]> GRANT 'role_dosen' TO 'user_dosen'@'localhost';
Query OK, 0 rows affected (0.011 sec)

MariaDB [mysql]> SET DEFAULT ROLE 'role_dosen' TO 'user_dosen'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TO 'user_dosen'@'localhost'' at line 1
MariaDB [mysql]> SET DEFAULT ROLE 'role_dosen' FOR 'user_dosen'@'localhost';
Query OK, 0 rows affected (0.011 sec)

MariaDB [mysql]> mysql -u user_mhs -p
    -> mhs123
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'mysql -u user_mhs -p
mhs123
)' at line 1
MariaDB [mysql]> Ctrl-C -- exit!
Bye

C:\xampp\mysql\bin>mysql -u user_mhs -p
Enter password: ******
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 121
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE db_kampus;
Database changed
MariaDB [db_kampus]> SELECT * FROM db_kampus.matakuliah;
ERROR 1142 (42000): SELECT command denied to user 'user_mhs'@'localhost' for table `db_kampus`.`matakuliah`
MariaDB [db_kampus]> SELECT * FROM db_kampus.mahasiswa;
ERROR 1142 (42000): SELECT command denied to user 'user_mhs'@'localhost' for table `db_kampus`.`mahasiswa`
MariaDB [db_kampus]> INSERT INTO db_kampus.matakuliah VALUES ('IF2020', 'Jaringan', 3);
Query OK, 1 row affected (0.027 sec)

MariaDB [db_kampus]> SELECT * FROM db_kampus.mahasiswa;
ERROR 1142 (42000): SELECT command denied to user 'user_mhs'@'localhost' for table `db_kampus`.`mahasiswa`
MariaDB [db_kampus]> Ctrl-C -- exit!
Bye

C:\xampp\mysql\bin>mysql -u uswe_dosen -p
Enter password: ********
ERROR 1045 (28000): Access denied for user 'uswe_dosen'@'localhost' (using password: YES)

C:\xampp\mysql\bin>mysql -u user_dosen -p
Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 126
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SELECT * FROM db_kampus.mahasiswa;
+-----------+---------------+-----------------------+
| nim       | nama          | jurusan               |
+-----------+---------------+-----------------------+
| 210001001 | Andi Pratama  | Teknik Informatika    |
| 210001002 | Budi Santoso  | Sistem Informasi      |
| 210001003 | Citra Dewi    | Teknik Komputer       |
| 210001004 | Dian Permata  | Manajemen Informatika |
| 210001005 | Eka Fitria    | Teknik Informatika    |
| 210001006 | Farhan Hakim  | Sistem Informasi      |
| 210001007 | Gita Lestari  | Teknik Komputer       |
| 210001008 | Hendra Wijaya | Manajemen Informatika |
| 210001009 | Indah Puspita | Teknik Informatika    |
| 210001010 | Joko Susilo   | Sistem Informasi      |
+-----------+---------------+-----------------------+
10 rows in set (0.013 sec)

MariaDB [(none)]> USE db_kampus;
Database changed
MariaDB [db_kampus]> SELECT * FROM db_kampus.mahasiswa;
+-----------+---------------+-----------------------+
| nim       | nama          | jurusan               |
+-----------+---------------+-----------------------+
| 210001001 | Andi Pratama  | Teknik Informatika    |
| 210001002 | Budi Santoso  | Sistem Informasi      |
| 210001003 | Citra Dewi    | Teknik Komputer       |
| 210001004 | Dian Permata  | Manajemen Informatika |
| 210001005 | Eka Fitria    | Teknik Informatika    |
| 210001006 | Farhan Hakim  | Sistem Informasi      |
| 210001007 | Gita Lestari  | Teknik Komputer       |
| 210001008 | Hendra Wijaya | Manajemen Informatika |
| 210001009 | Indah Puspita | Teknik Informatika    |
| 210001010 | Joko Susilo   | Sistem Informasi      |
+-----------+---------------+-----------------------+
10 rows in set (0.001 sec)

MariaDB [db_kampus]> INSERT INTO db_kampus.mahasiswa VALUES ('1234567890', 'Andi', 'Informatika');
Query OK, 1 row affected (0.013 sec)

MariaDB [db_kampus]> SELECT * FROM db_kampus.dosen;
ERROR 1142 (42000): SELECT command denied to user 'user_dosen'@'localhost' for table `db_kampus`.`dosen`
MariaDB [db_kampus]> Ctrl-C -- exit!
Bye

C:\xampp\mysql\bin>mysql -u user_admin -p
Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 127
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE db_kampus;
Database changed
MariaDB [db_kampus]> DROP TABLE IF EXISTS temp_table;
Query OK, 0 rows affected, 1 warning (0.015 sec)

MariaDB [db_kampus]> CREATE TABLE temp_tabel (id INT);
Query OK, 0 rows affected (0.037 sec)

MariaDB [db_kampus]> CREATE USER 'user_keuangan'@'localhost' IDENTIFIED BY 'keuangan123';
ERROR 1227 (42000): Access denied; you need (at least one of) the CREATE USER privilege(s) for this operation
MariaDB [db_kampus]> CREATE TABLE keuangan (
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 2
MariaDB [db_kampus]> CREATE TABEL keuangan (
    -> id_keuangan INT PRIMARY KEY AUTO_INCREMENT,
    -> nim CHAR(10),
    -> nama_mhs VARCHAR(50),
    -> jumlah_tagihan INT,
    -> status ENUM('Lunas', 'Belum Lunas')
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABEL keuangan (
id_keuangan INT PRIMARY KEY AUTO_INCREMENT,
nim CHAR(10),
na...' at line 1
MariaDB [db_kampus]> CREATE TABEL keuangan (
    -> id_keuangan INT PRIMARY KEY,
    -> nim CHAR(10),
    -> nama_mhs VARCHAR(50),
    -> jumlah_tagihan INT,
    -> status ENUM('Lunas', 'Belum Lunas')
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABEL keuangan (
id_keuangan INT PRIMARY KEY,
nim CHAR(10),
nama_mhs VARCHAR(...' at line 1
MariaDB [db_kampus]> CREATE TABLE keuangan (
    -> id_keuangan INT PRIMARY KEY,
    -> nim CHAR(10),
    -> nama_mhs VARCHAR(50),
    -> jumlah_tagihan INT,
    -> status ENUM('Lunas', 'Belum Lunas')
    -> );
Query OK, 0 rows affected (0.061 sec)

MariaDB [db_kampus]> INSERT INTO tagihan (nim, nama_mahasiswa, jumlah_tagihan, status, tanggal_jatuh_tempo) VALUES
    -> ('210001001', 'Andi Pratama', 2500000, 'Belum Lunas', '2025-07-15'),
    -> ('210001002', 'Budi Santoso', 1750000, 'Lunas', '2025-06-30'),
    -> ('210001003', 'Citra Dewi', 3000000, 'Menunggu', '2025-08-01'),
    -> ('210001003', 'Citra Dewi', 3000000, 'Menunggu', '2025-08-01'),^Z
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '␦
)' at line 5
MariaDB [db_kampus]> INSERT INTO keuangan (id_keuangan, nim, nama_mhs, jumlah_tagihan, status) VALUES
    -> (1, '210001001', 'Andi Pratama', 2500000, 'Lunas'),
    -> (2, '210001002', 'Budi Santoso', 1750000, 'Belum Lunas'),
    -> (3, '210001003', 'Citra Dewi', 3000000, 'Belum Lunas'),
    -> (4, '210001004', 'Dian Permata', 2200000, 'Lunas'),
    -> (5, '210001005', 'Eka Fitria', 1950000, 'Belum Lunas'),
    -> (6, '210001006', 'Farhan Hakim', 2750000, 'Lunas'),
    -> (7, '210001007', 'Gita Lestari', 1500000, 'Belum Lunas'),
    -> (8, '210001008', 'Hendra Wijaya', 3250000, 'Belum Lunas'),
    -> (9, '210001009', 'Indah Puspita', 2000000, 'Lunas'),
    -> (10, '210001010', 'Joko Susilo', 2400000, 'Belum Lunas');
Query OK, 10 rows affected (0.016 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [db_kampus]> CREATE USER 'user_keu'@'localhost' IDENTIFIED BY 'keu123';
ERROR 1227 (42000): Access denied; you need (at least one of) the CREATE USER privilege(s) for this operation
MariaDB [db_kampus]> Bye
Ctrl-C -- exit!

C:\xampp\mysql\bin>use db_kampus;
'use' is not recognized as an internal or external command,
operable program or batch file.

C:\xampp\mysql\bin>USE db_kampus;
'USE' is not recognized as an internal or external command,
operable program or batch file.

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 131
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE db_kampus;
Database changed
MariaDB [db_kampus]> show tables;
+---------------------+
| Tables_in_db_kampus |
+---------------------+
| dosen               |
| keuangan            |
| mahasiswa           |
| matakuliah          |
| temp_tabel          |
+---------------------+
5 rows in set (0.001 sec)

MariaDB [db_kampus]> desc temp_tabel;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| id    | int(11) | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
1 row in set (0.048 sec)

MariaDB [db_kampus]> CREATE USER 'user_keu'@'localhost' IDENTIFIED BY 'keu123';
Query OK, 0 rows affected (0.012 sec)

MariaDB [db_kampus]> GRANT SELECT ON db_kampus.keuangan TO 'user_keu'@'localhost';
Query OK, 0 rows affected (0.012 sec)

MariaDB [db_kampus]> GRANT SELECT, UPDATE ON db_kampus.keuangan TO 'role_keuangan';
Query OK, 0 rows affected (0.018 sec)

MariaDB [db_kampus]> Ctrl-C -- exit!
Bye

C:\xampp\mysql\bin>mysql -u user_keu -p
Enter password: ******
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 132
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE db_kampus;
Database changed
MariaDB [db_kampus]> SELECT * FROM keuangan;
+-------------+-----------+---------------+----------------+-------------+
| id_keuangan | nim       | nama_mhs      | jumlah_tagihan | status      |
+-------------+-----------+---------------+----------------+-------------+
|           1 | 210001001 | Andi Pratama  |        2500000 | Lunas       |
|           2 | 210001002 | Budi Santoso  |        1750000 | Belum Lunas |
|           3 | 210001003 | Citra Dewi    |        3000000 | Belum Lunas |
|           4 | 210001004 | Dian Permata  |        2200000 | Lunas       |
|           5 | 210001005 | Eka Fitria    |        1950000 | Belum Lunas |
|           6 | 210001006 | Farhan Hakim  |        2750000 | Lunas       |
|           7 | 210001007 | Gita Lestari  |        1500000 | Belum Lunas |
|           8 | 210001008 | Hendra Wijaya |        3250000 | Belum Lunas |
|           9 | 210001009 | Indah Puspita |        2000000 | Lunas       |
|          10 | 210001010 | Joko Susilo   |        2400000 | Belum Lunas |
+-------------+-----------+---------------+----------------+-------------+
10 rows in set (0.001 sec)

MariaDB [db_kampus]> UPDATE keuangan SET status = 'Lunas' WHERE id_keuangan = 2;
ERROR 1142 (42000): UPDATE command denied to user 'user_keu'@'localhost' for table `db_kampus`.`keuangan`
MariaDB [db_kampus]> GRANT 'role_keuangan' TO 'user_keu'@'localhost;
    '> GRANT 'role_keuangan' TO 'user_keu'@'localhost';
    '> '
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'role_keuangan' TO 'user_keu'@'localhost';
'
)' at line 1
MariaDB [db_kampus]> GRANT 'role_keuangan' TO 'user_keu'@'localhost';
ERROR 1959 (OP000): Invalid role specification `role_keuangan`
MariaDB [db_kampus]> DROP ROLE IF EXISTS role_keuangan;
ERROR 1227 (42000): Access denied; you need (at least one of) the CREATE USER privilege(s) for this operation
MariaDB [db_kampus]> CREATE ROLE role_keuangan;
ERROR 1227 (42000): Access denied; you need (at least one of) the CREATE USER privilege(s) for this operation
MariaDB [db_kampus]> GRANT SELECT, UPDATE ON db_kampus.keuangan TO role_keuangan;
ERROR 1142 (42000): UPDATE, GRANT command denied to user 'user_keu'@'localhost' for table `db_kampus`.`keuangan`
MariaDB [db_kampus]> DROP ROLE IF EXISTS role_keuangan;
ERROR 1227 (42000): Access denied; you need (at least one of) the CREATE USER privilege(s) for this operation
MariaDB [db_kampus]>

Microsoft Windows [Version 10.0.26200.8524]
(c) Microsoft Corporation. All rights reserved.

C:\Users\ACER> cd C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root
ERROR 2002 (HY000): Can't connect to MySQL server on 'localhost' (10061)

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use db_kampus;
Database changed
MariaDB [db_kampus]> CREATE TABLE tagihan (
    ->     id_tagihan INT PRIMARY KEY AUTO_INCREMENT,
    ->     nim CHAR(10),
    ->     nama_mhs VARCHAR(50),
    ->     jumlah_tagihan INT,
    ->     status ENUM('Lunas', 'Belum Lunas')
    -> );
Query OK, 0 rows affected (0.028 sec)

MariaDB [db_kampus]>  INSERT INTO tagihan (nim, nama_mhs, jumlah_tagihan, status) VALUES
    -> ('210001001', 'Andi Pratama', 2500000, 'Belum Lunas'),
    -> ('210001002', 'Budi Santoso', 1750000, 'Lunas'),
    -> ('210001003', 'Citra Dewi', 3000000, 'Belum Lunas');
Query OK, 3 rows affected (0.076 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [db_kampus]> CREATE ROLE 'role_keuangan';
Query OK, 0 rows affected (0.010 sec)

MariaDB [db_kampus]> GRANT SELECT, UPDATE ON db_kampus.tagihan TO 'role_keuangan';
Query OK, 0 rows affected (0.565 sec)

MariaDB [db_kampus]> CREATE USER 'user_keu'@'localhost' IDENTIFIED BY 'keu123';
Query OK, 0 rows affected (0.008 sec)

MariaDB [db_kampus]> GRANT 'role_keuangan' TO 'user_keu'@'localhost';
Query OK, 0 rows affected (0.012 sec)

MariaDB [db_kampus]> SET DEFAULT ROLE 'role_keuangan' FOR 'user_keu'@'localhost';
Query OK, 0 rows affected (0.013 sec)

MariaDB [db_kampus]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.014 sec)

MariaDB [db_kampus]>  SHOW GRANTS FOR 'user_keu'@'localhost';
+-----------------------------------------------------------------------------------------------------------------+
| Grants for user_keu@localhost                                                                                   |
+-----------------------------------------------------------------------------------------------------------------+
| GRANT `role_keuangan` TO `user_keu`@`localhost`                                                                 |
| GRANT USAGE ON *.* TO `user_keu`@`localhost` IDENTIFIED BY PASSWORD '*662126D85E75DFDEF7EDD3F6A95B7483B1BC32A9' |
| SET DEFAULT ROLE `role_keuangan` FOR `user_keu`@`localhost`                                                     |
+-----------------------------------------------------------------------------------------------------------------+
3 rows in set (0.984 sec)

MariaDB [db_kampus]> mysql -u user_keu -p
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'mysql -u user_keu -p
)' at line 1
MariaDB [db_kampus]> Bye
Ctrl-C -- exit!

C:\xampp\mysql\bin>mysql -u user_keu -p
Enter password: ******
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE db_kampus;
Database changed
MariaDB [db_kampus]> SELECT * FROM tagihan;
+------------+-----------+--------------+----------------+-------------+
| id_tagihan | nim       | nama_mhs     | jumlah_tagihan | status      |
+------------+-----------+--------------+----------------+-------------+
|          1 | 210001001 | Andi Pratama |        2500000 | Belum Lunas |
|          2 | 210001002 | Budi Santoso |        1750000 | Lunas       |
|          3 | 210001003 | Citra Dewi   |        3000000 | Belum Lunas |
+------------+-----------+--------------+----------------+-------------+
3 rows in set (0.016 sec)

MariaDB [db_kampus]> UPDATE tagihan SET status = 'Lunas' WHERE nim = '210001001';
Query OK, 1 row affected (0.020 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [db_kampus]> INSERT INTO tagihan (nim, nama_mhs, jumlah_tagihan, status)
    -> VALUES ('999999999', 'Test User', 1000000, 'Belum Lunas');
ERROR 1142 (42000): INSERT command denied to user 'user_keu'@'localhost' for table `db_kampus`.`tagihan`
MariaDB [db_kampus]> DELETE FROM tagihan WHERE nim = '210001001';
ERROR 1142 (42000): DELETE command denied to user 'user_keu'@'localhost' for table `db_kampus`.`tagihan`
MariaDB [db_kampus]>

