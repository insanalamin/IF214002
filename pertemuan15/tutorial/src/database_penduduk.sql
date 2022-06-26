CREATE DATABASE `penduduk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE ref_ijazah_terakhir (
  id INT NOT NULL PRIMARY KEY,
  deskripsi VARCHAR(40) NOT NULL 
);
INSERT INTO ref_ijazah_terakhir (id, deskripsi) 
VALUES 
(0, 'Tidak Sekolah'),
(1, 'SD/MI'),
(2, 'SMP/MTS'),
(3, 'SMA/SMK/MA'),
(4, 'D1'),
(5, 'D2'),
(6, 'D3'),
(7, 'D4/S1'),
(8, 'S2'),
(9, 'S3')
;

CREATE TABLE ref_pekerjaan (
  id INT NOT NULL PRIMARY KEY,
  deskripsi VARCHAR(40) NOT NULL 
);
INSERT INTO ref_pekerjaan (id, deskripsi) 
VALUES 
(0, 'Tidak bekerja'),
(1, 'Pertanian'),
(2, 'Perkebunan'),
(3, 'Perikanan tangkap'),
(4, 'Perikanan budidaya'),
(5, 'Kehutanan'),
(6, 'Konstruksi dan bangunan'),
(7, 'BUMN'),
(8, 'PNS'),
(9, 'PPPK'),
(10, 'POLRI'),
(11, 'TNI'),
(12, 'Anggota dewan'),
(13, 'Perdagangan'),
(14, 'Pekerja sosial kemasyarakatan'),
(15, 'Lembaga nirlaba'),
(16, 'Kesehatan'),
(17, 'Pendidikan'),
(18, 'Industri'),
(19, 'Pariwisata'),
(20, 'Jasa kreatif')
;

CREATE TABLE ref_penghasilan_bulanan (
  id INT NOT NULL PRIMARY KEY,
  deskripsi VARCHAR(40) NOT NULL 
);
INSERT INTO ref_penghasilan_bulanan (id, deskripsi) 
VALUES 
(0, 'Tidak memiliki penghasilan'),
(1, '< 500.000'),
(2, '500.000 - 1.000.000'),
(3, '1.000.001 - 2.000.000'),
(4, '2.000.001 - 3.000.000'),
(5, '3.000.001 - 5.000.000'),
(6, '5.000.001 - 8.000.000'),
(7, '8.000.001 - 15.000.000'),
(8, '15.000.001 - 30.000.000'),
(9, '30.000.001 - 100.000.000'),
(10, '> 100.000.000')
;

CREATE TABLE kode_kabupaten (
	kode VARCHAR(10) NOT NULL PRIMARY KEY,
	deskripsi VARCHAR(40) NOT NULL
);
INSERT INTO kode_kabupaten (kode, deskripsi) 
VALUES 
('3201', 'Kabupaten Bogor'),
('3202', 'Kabupaten Sukabumi'),
('3203', 'Kabupaten Cianjur'),
('3204', 'Kabupaten Bandung'),
('3205', 'Kabupaten Garut'),
('3206', 'Kabupaten Tasikmalaya'),
('3207', 'Kabupaten Ciamis'),
('3208', 'Kabupaten Kuningan'),
('3209', 'Kabupaten Cirebon'),
('3210', 'Kabupaten Majalengka'),
('3211', 'Kabupaten Sumedang'),
('3212', 'Kabupaten Indramayu'),
('3213', 'Kabupaten Subang'),
('3214', 'Kabupaten Purwakarta'),
('3215', 'Kabupaten Karawang'),
('3216', 'Kabupaten Bekasi'),
('3217', 'Kabupaten Bandung Barat'),
('3218', 'Kabupaten Pangandaran')
;
SELECT * FROM kode_kabupaten;

create table penduduk (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nama_lengkap VARCHAR(50) NOT NULL,
	kode_kabupaten INT NOT NULL,
	nomor_hp VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	tanggal_lahir DATE NOT NULL,
	ijazah_terakhir INT NOT NULL,
	pekerjaan INT NOT NULL,
	penghasilan_bulanan INT NOT NULL
);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (1, 'Jajang Parradine', 3201, '+86 246 664 7659', 'M', '1984-02-02', 8, 4, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (2, 'Asep Ancketill', 3213, '+255 980 733 7670', 'M', '1998-05-29', 5, 13, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (3, 'Tarnido Pobjoy', 3201, '+994 157 388 7130', 'M', '1986-04-20', 4, 18, 3);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (4, 'Budiawan Evenden', 3202, '+62 145 409 3942', 'M', '1989-10-21', 5, 9, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (5, 'Wiwin Pignon', 3202, '+63 620 916 9390', 'F', '1988-11-28', 6, 13, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (6, 'Spanila Deguara', 3211, '+33 893 390 5106', 'F', '1958-08-10', 4, 15, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (7, 'Barna Sapshed', 3212, '+86 588 662 8207', 'M', '1969-02-24', 0, 18, 4);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (8, 'Guswanto Forward', 3210, '+98 864 865 2751', 'M', '1963-01-15', 3, 9, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (9, 'Momon Petrulis', 3207, '+86 958 506 2876', 'M', '1963-12-18', 1, 6, 8);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (10, 'Dewi Judkins', 3209, '+86 258 639 7989', 'F', '1970-05-24', 8, 16, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (11, 'Yani Yeabsley', 3209, '+56 410 838 0094', 'F', '1958-10-20', 8, 18, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (12, 'Kurniawan Kalinsky', 3216, '+62 161 823 6142', 'M', '1966-06-22', 6, 19, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (13, 'Kamila Patterson', 3206, '+20 230 598 2631', 'F', '1990-05-25', 9, 16, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (14, 'Budi Poizer', 3214, '+63 991 324 2537', 'M', '1956-01-02', 4, 9, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (15, 'Yayat Mordey', 3201, '+359 976 539 9445', 'M', '1989-01-16', 0, 0, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (16, 'Nesha Valvula Landstainer', 3204, '+249 439 479 3247', 'F', '1994-06-08', 8, 7, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (17, 'Nisa Mallebone', 3208, '+370 958 991 5640', 'F', '1983-02-05', 6, 12, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (18, 'Tantri Francombe', 3214, '+62 174 552 8778', 'F', '1982-11-22', 1, 6, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (19, 'Sumi Crowson', 3215, '+46 760 418 0820', 'F', '1951-03-01', 1, 13, 3);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (20, 'Bahman Lassen', 3211, '+86 959 583 1583', 'M', '1980-09-12', 2, 3, 8);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (21, 'Intan Deguara', 3207, '+86 148 401 3276', 'F', '1979-01-06', 0, 15, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (22, 'Larisa Grgic', 3217, '+33 465 927 2549', 'F', '1968-09-25', 1, 12, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (23, 'Dewi Hewins', 3213, '+976 260 209 4052', 'F', '1997-12-19', 8, 14, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (24, 'Dwi Lints', 3211, '+86 508 619 8170', 'F', '1991-06-29', 3, 1, 5);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (25, 'Leona Hain', 3206, '+51 634 713 2309', 'F', '1950-11-04', 7, 18, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (26, 'Dian Ablitt', 3214, '+86 962 553 7757', 'F', '1950-01-14', 6, 2, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (27, 'Supangkat Blackler', 3205, '+351 699 847 5289', 'M', '1972-10-05', 2, 3, 4);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (28, 'Lani Wulfinger', 3212, '+86 401 257 9103', 'F', '1985-09-03', 1, 9, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (29, 'Wisnu Gotecliffe', 3215, '+48 749 200 3924', 'M', '1952-03-29', 4, 18, 3);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (30, 'Monro Kibard', 3207, '+62 360 958 6435', 'M', '1978-10-02', 3, 4, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (31, 'Diana Lestari Tipple', 3216, '+48 708 553 3963', 'F', '1970-07-11', 0, 14, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (32, 'Phil Abdul Stott', 3202, '+420 389 495 5885', 'M', '1970-01-20', 0, 16, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (33, 'Creight Cantika Liverock', 3214, '+57 257 515 0762', 'F', '1974-08-08', 3, 18, 5);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (34, 'Everett Wina Stothart', 3211, '+86 555 728 0248', 'F', '2001-04-08', 9, 18, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (35, 'Agus Feldhuhn', 3207, '+81 227 522 6003', 'M', '1967-02-24', 4, 9, 5);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (36, 'Shelba Bianti Commin', 3215, '+351 994 787 5484', 'F', '1963-05-06', 4, 17, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (37, 'Keen Yayat Ladell', 3206, '+48 337 133 1583', 'M', '1978-11-10', 9, 11, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (38, 'Agus MacShane', 3205, '+358 403 935 1718', 'M', '1960-02-20', 1, 16, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (39, 'Bo Pailin', 3207, '+62 575 271 7534', 'F', '1969-06-20', 7, 14, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (40, 'Trix Lanceter', 3210, '+55 766 466 6234', 'M', '1996-01-07', 9, 8, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (41, 'Felice Doe', 3205, '+380 490 872 2638', 'M', '1988-10-17', 5, 10, 8);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (42, 'Saundra Mingardi', 3202, '+389 658 247 3100', 'F', '1998-07-09', 8, 10, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (43, 'Budi Zacharia Farress', 3213, '+504 470 978 5076', 'M', '1987-08-26', 1, 7, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (44, 'Lurlene Kenafaque', 3216, '+86 645 276 3622', 'F', '1963-12-06', 7, 20, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (45, 'Budi Nappy Mozzi', 3218, '+998 709 607 9628', 'M', '1981-05-12', 5, 9, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (46, 'Lurette Rackham', 3209, '+373 245 189 1485', 'F', '1998-12-12', 0, 8, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (47, 'Norine Peters', 3213, '+63 766 120 8611', 'F', '1982-01-04', 2, 4, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (48, 'Brok Vany', 3206, '+48 740 928 9338', 'F', '1973-09-06', 1, 11, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (49, 'Vin Harston', 3209, '+86 425 448 6968', 'F', '1994-12-18', 2, 12, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (50, 'Lark Wearden', 3204, '+55 173 772 6943', 'F', '1989-07-18', 9, 4, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (51, 'Zebadiah Donaway', 3203, '+62 988 992 1555', 'F', '1976-12-25', 9, 0, 4);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (52, 'Simone Agus Dumphrey', 3216, '+7 978 608 4185', 'M', '1959-03-02', 8, 19, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (53, 'Padget McCallion', 3210, '+55 801 511 1915', 'M', '1986-04-25', 7, 2, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (54, 'Faye Backe', 3209, '+62 436 556 4074', 'M', '1982-01-16', 5, 0, 4);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (55, 'Phillis Pull', 3211, '+351 532 454 1924', 'M', '1999-01-13', 9, 15, 8);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (56, 'Valery Kleinplac', 3215, '+597 699 945 8791', 'F', '1999-07-29', 5, 3, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (57, 'Davidde Huggon', 3212, '+7 799 115 0261', 'M', '1974-11-14', 2, 15, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (58, 'Emily Straughan', 3205, '+420 747 521 5930', 'F', '1975-04-30', 9, 5, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (59, 'Carr Limon', 3217, '+55 214 814 6069', 'F', '1957-02-26', 8, 15, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (60, 'Emmit Middlemass', 3206, '+62 857 323 6754', 'F', '1983-03-18', 2, 9, 5);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (61, 'Thibaud Stading', 3210, '+46 951 594 3000', 'F', '1983-09-03', 0, 17, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (62, 'Rutger Dartan', 3202, '+86 859 958 9189', 'F', '1973-05-06', 1, 7, 3);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (63, 'Budiawan Raoul Francescotti', 3216, '+7 226 429 5164', 'F', '1995-07-16', 7, 11, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (64, 'Louisette Hughes', 3201, '+7 151 423 8057', 'F', '1974-04-25', 1, 20, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (65, 'Agus Ebbage', 3209, '+48 916 228 7175', 'M', '1993-04-21', 8, 14, 3);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (66, 'Annabell Doubleday', 3202, '+7 655 249 7983', 'F', '2000-08-25', 9, 7, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (67, 'Jami Haylor', 3207, '+380 748 491 5399', 'M', '1958-09-29', 9, 6, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (68, 'Betsey Stiff', 3203, '+84 753 921 5105', 'F', '1993-07-26', 8, 2, 5);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (69, 'Chad Piola', 3216, '+34 921 728 9506', 'F', '2001-01-17', 1, 10, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (70, 'Celka Kinnach', 3212, '+57 123 107 5923', 'M', '1963-06-02', 5, 1, 8);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (71, 'Elenore Maplestone', 3215, '+55 937 290 7121', 'F', '1953-07-08', 2, 4, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (72, 'Jorge Crake', 3201, '+685 324 592 9291', 'M', '1987-12-30', 2, 14, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (73, 'Nestor Poskitt', 3211, '+33 932 806 6728', 'M', '1993-01-06', 9, 0, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (74, 'Clare Clausius', 3206, '+962 636 216 4345', 'M', '1984-03-15', 5, 18, 8);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (75, 'Imelda Gilbanks', 3215, '+81 677 540 1224', 'F', '1960-11-19', 1, 16, 4);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (76, 'Bryce Blunn', 3202, '+46 691 574 1277', 'M', '1976-05-27', 3, 4, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (77, 'Margalit Rettie', 3201, '+57 921 265 2071', 'M', '1988-06-23', 7, 7, 3);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (78, 'Alyssa Korting', 3208, '+351 721 607 0867', 'M', '1994-06-01', 0, 9, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (79, 'Yayat Hannis Runnalls', 3216, '+420 169 708 6513', 'M', '1996-01-02', 4, 2, 5);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (80, 'Reagan Meindl', 3205, '+55 491 827 1135', 'M', '1983-11-04', 0, 15, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (81, 'Petrina Janek', 3212, '+380 822 983 8067', 'M', '1971-05-19', 4, 1, 4);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (82, 'Duffie Scates', 3208, '+1 260 399 1730', 'M', '1965-07-15', 8, 0, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (83, 'Brigid Novotna', 3209, '+36 515 140 3304', 'M', '1959-11-17', 7, 4, 7);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (84, 'Jere Abdul Jones', 3214, '+86 915 302 6292', 'M', '1962-12-31', 2, 5, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (85, 'Lorettalorna Boughton', 3217, '+420 778 934 8388', 'F', '1982-08-14', 2, 7, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (86, 'Marty Stairmand', 3218, '+380 337 609 5145', 'M', '1994-09-10', 9, 9, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (87, 'Jonas Bin Scantleberry', 3213, '+86 352 600 2806', 'M', '1980-11-07', 5, 5, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (88, 'Lynna Cordingly', 3216, '+45 850 926 6475', 'M', '1956-04-24', 8, 10, 9);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (89, 'Ronnica Durno', 3218, '+86 311 191 3834', 'F', '1988-10-21', 5, 17, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (90, 'Ransell Matzl', 3211, '+7 364 644 3668', 'M', '1973-03-09', 1, 11, 3);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (91, 'Kirbie Helliker', 3206, '+63 285 181 4520', 'M', '2000-10-27', 9, 12, 6);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (92, 'Monah Edgley', 3213, '+86 445 127 4832', 'F', '1985-10-11', 1, 18, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (93, 'Casey Binti Newis', 3206, '+7 295 497 3898', 'F', '1985-03-18', 0, 10, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (94, 'Kristen Monsey', 3201, '+86 386 937 5130', 'F', '1975-04-23', 2, 12, 5);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (95, 'Teresina Doogood', 3204, '+86 618 614 6938', 'F', '1952-01-28', 3, 9, 8);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (96, 'Jobi Plenderleith', 3208, '+63 214 829 2687', 'M', '1961-08-30', 0, 18, 0);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (97, 'Donaugh Duddell', 3213, '+46 572 121 5798', 'F', '1983-12-03', 1, 6, 1);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (98, 'Barry Benck', 3217, '+1 775 589 8131', 'M', '1967-04-19', 1, 3, 2);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (99, 'Ibbie Duetsche', 3201, '+48 805 939 5854', 'F', '1997-08-11', 9, 20, 4);
insert into penduduk (id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) values (100, 'Anica Peers', 3216, '+33 628 174 5369', 'M', '1983-03-03', 3, 7, 1);
