CREATE DATABASE Basdat2023_08_SI;

DROP DATABASE Basdat2023_08_SI
USE Basdat2023_08_SI

--PENGGUNA
CREATE TABLE PENGGUNA(
idPengguna VARCHAR(40) PRIMARY KEY NOT NULL,
email VARCHAR (40) UNIQUE NOT NULL,
jenisKelamin VARCHAR(40) ,
alamat VARCHAR(40) ,
asalSekolah VARCHAR(40) ,
nama VARCHAR(40) ,
noTelp VARCHAR(40));

INSERT INTO PENGGUNA(idPengguna, email, jenisKelamin, alamat, asalSekolah, nama, noTelp)
VALUES 
	('1201031011','ekosilalahi123@gmail.com', 'Laki-Laki','Jl. Merdeka No. 123, Jakarta', 'SMP Negeri 1 Jakarta Selatan', 'Eko Silalahi', '081245736358'),
	('1201031012','putrinababan90@gmail.com', 'Perempuan', 'Jl. Pahlawan Barat 45, Surabaya', 'SMA Labschool Kebayoran, Surabaya', 'Putri Nababan', '082357458425'),
	('1201031013','serlysitorus48@gmail.com', 'Perempuan', 'Jl. Cendrawasih 78, Bandung', 'SMK Teknologi Informasi Bandung', 'Serly Sitorus', '081323456543'),
	('1201031014','beatricesiahaan22@gmail.com', 'Perempuan', 'Jl. Anggrek 15, Medan', 'SD Muhammadiyah 23 Medan', 'Beatrice Siahaan', '088976876543'),
	('1201031015','joelpanjaitan40@gmail.com', 'Laki-Laki', 'Jl. Flamboyan Selatan 32, Makassar', 'SMP Santo Yosef Makassar', 'Joel Panjaitan', '081132548754'),
	('1201031016', 'lukmansiregar56@gmail.com', 'Laki-Laki', 'Jl. Mawar Timur 78, Bandung', 'SMP Negeri 1 Jakarta Selatan', 'Lukman Siregar', '081245736111'),
	('1201031017', 'novitahutagalung@gmail.com', 'Perempuan', 'Jl. Dahlia Utara 23, Surabaya', 'SMA Labschool Kebayoran, Surabaya', 'Novita Hutagalung', '082357458999'),
	('1201031018', 'brianwijaya77@gmail.com', 'Laki-Laki', 'Jl. Kenanga Barat 45, Jakarta', 'SMK Teknologi Informasi Bandung', 'Brian Wijaya', '081323456111'),
	('1201031019', 'anitasimanjuntak@gmail.com', 'Perempuan', 'Jl. Seroja 15, Medan', 'SD Muhammadiyah 23 Medan', 'Anita Simanjuntak', '088976876999'),
	('1201031020', 'aldobinsar@gmail.com', 'Laki-Laki', 'Jl. Flamboyan Utara 32, Makassar', 'SMP Santo Yosef Makassar', 'Aldo Binsar', '081132548000'),
	('1201031021', 'sitisuryani@gmail.com', 'Perempuan', 'Jl. Merpati Selatan 78, Bandung', 'SMP Negeri 1 Jakarta Selatan', 'Siti Suryani', '081245736222'),
	('1201031022', 'indrahardi@gmail.com', 'Laki-Laki', 'Jl. Lotus Barat 23, Surabaya', 'SMA Labschool Kebayoran, Surabaya', 'Indra Hardi', '082357458888'),
	('1201031023', 'karinapangestu@gmail.com', 'Perempuan', 'Jl. Kamboja 45, Jakarta', 'SMK Teknologi Informasi Bandung', 'Karina Pangestu', '081323456222'),
	('1201031024', 'fahmisyahputra@gmail.com', 'Laki-Laki', 'Jl. Anggrek Timur 15, Medan', 'SD Muhammadiyah 23 Medan', 'Fahmi Syahputra', '088976876000'),
	('1201031025', 'merrywati@gmail.com', 'Perempuan', 'Jl. Flamboyan Barat 32, Makassar', 'SMP Santo Yosef Makassar', 'Merry Wati', '081132548111');
SELECT * FROM PENGGUNA 

-- FORUMDISKUSI
CREATE TABLE FORUMDISKUSI(
id_Mentor VARCHAR(40) PRIMARY KEY NOT NULL,
mataPelajaran VARCHAR(40) ,
namaMentor VARCHAR(40));

INSERT INTO FORUMDISKUSI(id_Mentor, mataPelajaran, namaMentor)
VALUES
	('akj186', 'Biologi', 'Azhar Fahd'),
	('iws078', 'Kimia', 'Dessy Fatmawati'),
	('ekb478', 'Fisika','Fanny Amalia'),
	('thn215', 'Sosiologi','Devina Fauzani Finlandina'),
	('ykh988', 'Matematika','Sabda PS'),
	('rty762', 'Biologi', 'Rifki Yudhistira'),
	('lmn309', 'Kimia', 'Lina Mulyani'),
	('prt456', 'Fisika', 'Prima Teguh'),
	('swa111', 'Sosiologi', 'Sandra Wijaya'),
	('yts789', 'Matematika', 'Yusuf Tirta Suhendra'),
	('kpl654', 'Biologi', 'Karina Puspa Lestari'),
	('akb234', 'Kimia', 'Andi Kurniawan'),
	('fna789', 'Fisika', 'Farhan Nur Amin'),
	('soa567', 'Sosiologi', 'Siti Oktaviani Arum'),
	('mpr123', 'Matematika', 'Mira Pratiwi');
SELECT * FROM FORUMDISKUSI


-- PAKETPEMBELAJARAN
CREATE TABLE PAKETPEMBAYARAN(
kodePaket VARCHAR(40) PRIMARY KEY NOT NULL,
jenisPaket VARCHAR(40) ,
hargaPaket MONEY,
spesifikasi VARCHAR(500));

INSERT INTO PAKETPEMBAYARAN(kodePaket, jenisPaket, hargaPaket, spesifikasi)
VALUES
	('01KJ2023','KONSULTASI JURUSAN ',135000,
'1. 3x sesi 45 menit ||
2. Membantu kamu menemukan  potensi diri ||
3. Memberikan masukan dan saran ||
4. Pembahasan Analisis Minat Bakat ||
5. Konsultasi Jurusan '),

('01AK20223','AKTIVA',300000,
'1. 2x TO ||
2. Akses 60k+ video premium ||
4. 2000+ Latihan soal ||
3. Gabung learning community ZenClub ||
5. Zen Coins dapat ditukar dengan TO UTBK & TO PTS'),

('01UL2023','ULTIMA',500000,
'1. 90k+ Video Premium & 3000+ Latihan soal ||
2. ULTIMA PLUS: Live Class 11x/minggu (6x TPS & 5x Materi Sekolah) ||
3. Gabung learning community ZenClub ||
4. ULTIMA BASIC: Live Class 1x/minggu untuk pembahasan SNBT, 4x TO dengan 1.000 ZenCoins ||
5. Zen Coins dapat ditukar dengan TO UTBK & TO PTS'),

('01ZF2023','ZEN FOKUS',200000,
'1. Akses video premium untuk materi sekolah, SNBT ||
2. Zen Coins ditukar dengan TO UTBK, TO PTS ||
4. Gabung learning community ZenClub ||
3. 90k+ Video Premium dan 3000+ Latihan soal ||
5. GAPYEAR: Live class hingga 15x/minggu');

SELECT * FROM PAKETPEMBAYARAN
DROP TABLE PAKETPEMBAYARAN

	
-- TRANSAKSI
CREATE TABLE TRANSAKSI(
kodePembayaran VARCHAR(40) PRIMARY KEY NOT NULL,
noVirtual VARCHAR(40) FOREIGN KEY REFERENCES VIRTUALACCOUNT(noVirtual)  NOT NULL,
tglPembayaran VARCHAR(40),
nominal MONEY,
metodePembayaran VARCHAR(40));



INSERT INTO TRANSAKSI( noVirtual, kodePembayaran,  tglPembayaran,nominal, metodePembayaran)
VALUES
	(  '112422', '12E58T68',  '07/08/2023', 185000, 'BANK'),
	(  '424551', '11CT453D',  '20/04/2023', 265000, 'BANK'),
	(  '557898', '7SE567O8',  '13/11/2022', 300000, 'TUNAI'),
	(  '111245', '1933YH8N',  '14/09/2023', 145000, 'TRANSFER'),
	(  '525611', 'AS145X33F', '24/08/2022', 390000, 'TRANSFER'),
	(  '678901', '8D2E16B', '18/05/2023', 220000, 'BANK'),
	(  '123456', '4F9H7G2', '02/10/2022', 150000, 'TUNAI'),
	(  '789012', '9R8S2A1', '30/07/2023', 280000, 'TRANSFER'),
	(  '345678', '3X7Z1Y6', '11/01/2023', 175000, 'TRANSFER'),
	(  '890123', '2L5M3N7', '05/12/2022', 320000, 'TUNAI'),
	(  '456789', '6P9Q8R2', '22/06/2023', 200000, 'BANK'),
	(  '234567', '5K4J8L1', '14/03/2023', 170000, 'BANK'),
	(  '567890', '7U2V8W9', '08/09/2022', 250000, 'TRANSFER'),
	(  '901234', '1T3U5V7', '19/04/2023', 190000, 'TUNAI'),
	(  '345678', '9X2Y4Z7', '03/11/2022', 310000, 'TRANSFER');	

SELECT noVirtual, kodePembayaran, tglPembayaran FROM TRANSAKSI


DROP TABLE VIRTUALACCOUNT;

--VIRTUAL ACCOUNT
CREATE  TABLE VIRTUALACCOUNT(
noVirtual VARCHAR (40) PRIMARY KEY,
idPengguna VARCHAR (40) FOREIGN KEY REFERENCES PENGGUNA(idPengguna),
nama VARCHAR (40));

INSERT INTO VIRTUALACCOUNT(noVirtual, idPengguna, nama)
VALUES
	('112422', '1201031011', 'Eko Silalahi'),
	('424551', '1201031012', 'Putri Nababan'),
	('557898', '1201031013', 'Serly Sitorus'),
	('111245', '1201031014', 'Beatrice Siahaan'),
	('525611', '1201031015', 'Joel Panjaitan'),
	('789012', '1201031016', 'Lukman Siregar'),
	('901234', '1201031017', 'Novita Hutagalung'),
	('123456', '1201031018', 'Brian Wijaya'),
	('234567', '1201031019', 'Anita Simanjuntak'),
	('345678', '1201031020', 'Aldo Binsar'),
	('456789', '1201031021', 'Siti Suryani'),
	('567890', '1201031022', 'Indra Hardi'),
	('678901', '1201031023', 'Karina Pangestu'),
	('789772', '1201031024', 'Fahmi Syahputra'),
	('890123', '1201031025', 'Merry Wati');
SELECT * FROM VIRTUALACCOUNT




-- BERANDA
CREATE TABLE BERANDA(
PilihanBahasa VARCHAR (20) ,
Versi VARCHAR (10),
URL VARCHAR (30) UNIQUE);

INSERT INTO BERANDA (PilihanBahasa, Versi, URL)
VALUES
('Indonesia','5.4','https://www.zenius.net/21'),
('English','5.7','https://www.zenius.net/33'),
('Jepang','7.8','https://www.zenius.net/16'),
('Korea','6.3','https://www.zenius.net/42'),
('Jerman','6.5','https://www.zenius.net/11'),
('Indonesia','5.1','https://www.zenius.net/22'),
('English','5.9','https://www.zenius.net/34'),
('Jepang','7.2','https://www.zenius.net/17'),
('Korea','6.7','https://www.zenius.net/43'),
('Jerman','6.9','https://www.zenius.net/12'),
('Indonesia','5.3','https://www.zenius.net/23'),
('English','5.5','https://www.zenius.net/35'),
('Jepang','7.6','https://www.zenius.net/18'),
('Korea','6.1','https://www.zenius.net/44'),
('Jerman','6.7','https://www.zenius.net/13');


SELECT *FROM BERANDA



--MASUK
CREATE TABLE MASUK(
NamaPengguna VARCHAR (40),
KataSandi VARCHAR (40),
URL VARCHAR (40) UNIQUE);

INSERT INTO MASUK(NamaPengguna, KataSandi, URL)
VALUES
(' Eko0708','Ek3234','https://www.zenius.net/21'),
(' Putri3932','Pu3246','https://www.zenius.net/22'),
('Serly4598','Se3232','https://www.zenius.net/23'),
('Beatrice0922','Be3221','https://www.zenius.net/24'),
('Joel2779','jo89679','https://www.zenius.net/25'),
('Lukman123', 'Luk456', 'https://www.zenius.net/26'),
('Novita456', 'Nov789', 'https://www.zenius.net/27'),
('Brian789', 'Bri123', 'https://www.zenius.net/28'),
('Anita345', 'Ani678', 'https://www.zenius.net/29'),
('Aldo123', 'Ald456', 'https://www.zenius.net/30'),
('Siti456', 'Siti789', 'https://www.zenius.net/31'),
('Indra789', 'Ind123', 'https://www.zenius.net/32'),
('Karina345', 'Kar678', 'https://www.zenius.net/33'),
('Fahmi123', 'Fah456', 'https://www.zenius.net/34'),
('Merry456', 'Mer789', 'https://www.zenius.net/35');
SELECT * FROM MASUK






--REGISTRASI

CREATE TABLE REGISTRASI(
idPengguna VARCHAR(40) FOREIGN KEY REFERENCES PENGGUNA(idPengguna) ,
KataSandi VARCHAR (40),
AsalSekolah VARCHAR (40),
Kota VARCHAR (40),
Provinsi VARCHAR (40),
Kelas INT,
URL VARCHAR (40) UNIQUE);

INSERT INTO REGISTRASI (idPengguna,KataSandi,AsalSekolah,Kota,Provinsi,Kelas,URL)
VALUES
('1201031011','Ek3234','SMP Negeri 1 Jakarta Selatan','Jakarta Selatan','Jakarta',8,'https://www.zenius.net/11'),
('1201031012','Pu3246','SMA Labschool Kebayoran, Surabaya','Surabaya','Jawa Timur',12,'https://www.zenius.net/12'),
('1201031013','Se3232','SMK Teknologi Informasi Bandung','Bandung','Jawa Barat',11,'https://www.zenius.net/13'),
('1201031014','Be3221','SD Muhammadiyah 23 Medan','Medan','Sumatrea Utara',5,'https://www.zenius.net/14'),
('1201031015','jo89679','SMP Santo Yosef Makassar','Makassar','Sulawesi Selatan',7,'https://www.zenius.net/15'),
('1201031016','Ab1234','SMP Negeri 1 Jakarta Selatan','Jakarta Selatan','Jakarta',8,'https://www.zenius.net/31'),
('1201031017','Cd4567','SMA Labschool Kebayoran, Surabaya','Surabaya','Jawa Timur',12,'https://www.zenius.net/32'),
('1201031018','Ef7890','SMK Teknologi Informasi Bandung','Bandung','Jawa Barat',11,'https://www.zenius.net/33'),
('1201031019','Gh1234','SD Muhammadiyah 23 Medan','Medan','Sumatra Utara',5,'https://www.zenius.net/34'),
('1201031020','Ij4567','SMP Santo Yosef Makassar','Makassar','Sulawesi Selatan',7,'https://www.zenius.net/35'),
('1201031021','Kl7890','SMP Negeri 1 Jakarta Selatan','Jakarta Selatan','Jakarta',8,'https://www.zenius.net/36'),
('1201031022','Mn1234','SMA Labschool Kebayoran, Surabaya','Surabaya','Jawa Timur',12,'https://www.zenius.net/37'),
('1201031023','Op4567','SMK Teknologi Informasi Bandung','Bandung','Jawa Barat',11,'https://www.zenius.net/38'),
('1201031024','Qr7890','SD Muhammadiyah 23 Medan','Medan','Sumatra Utara',5,'https://www.zenius.net/39'),
('1201031025','St1234','SMP Santo Yosef Makassar','Makassar','Sulawesi Selatan',7,'https://www.zenius.net/40');
SELECT * FROM REGISTRASI


--MATERI
CREATE TABLE MATERI(
IdMateri VARCHAR (40) PRIMARY KEY NOT NULL,
Judul VARCHAR (40),
MataPelajaran VARCHAR (40));

INSERT INTO MATERI(IdMateri, Judul, MataPelajaran)
VALUES
('BIO97','Dasar-dasar Biologi Sel','Biologi'),
('KIM42','Senyawa Karbon dan Fungsinya','Kimia '),
('FIS57','Energi dan Hukum Kekekalan Energi','Fisika'), 
('SOS87','Modernisasi dan Globalisasi','Sosiologi'),
('MAT95','Turunan dan Integral','Matematika ');
SELECT *FROM MATERI


--LATIHAN
CREATE TABLE LATIHAN(
IdMateri VARCHAR (40) FOREIGN KEY REFERENCES MATERI(IdMateri),
Jenis VARCHAR (60),
Tingkatan VARCHAR (40),
MataPelajaran VARCHAR (40));

INSERT INTO LATIHAN (IdMateri, Jenis, Tingkatan, MataPelajaran)
VALUES
    ('BIO97', 'Kuis', 'Mudah', 'Biologi'),
    ('BIO97', 'Kuis', 'Sedang', 'Biologi'),
    ('BIO97', 'Kuis', 'Sulit', 'Biologi'),
    ('BIO97', 'Latihan Soal', 'Mudah', 'Biologi'),
    ('BIO97', 'Latihan Soal', 'Sedang', 'Biologi'),
    ('BIO97', 'Latihan Soal', 'Sulit', 'Biologi'),
    ('BIO97', 'Tugas', 'Mudah', 'Biologi'),
    ('BIO97', 'Tugas', 'Sedang', 'Biologi'),
    ('BIO97', 'Tugas', 'Sulit', 'Biologi'),

    ('KIM42', 'Kuis', 'Mudah', 'Kimia'),
    ('KIM42', 'Kuis', 'Sedang', 'Kimia'),
    ('KIM42', 'Kuis', 'Sulit', 'Kimia'),
    ('KIM42', 'Latihan Soal', 'Mudah', 'Kimia'),
    ('KIM42', 'Latihan Soal', 'Sedang', 'Kimia'),
    ('KIM42', 'Latihan Soal', 'Sulit', 'Kimia'),
    ('KIM42', 'Tugas', 'Mudah', 'Kimia'),
    ('KIM42', 'Tugas', 'Sedang', 'Kimia'),
    ('KIM42', 'Tugas', 'Sulit', 'Kimia'),

    ('FIS57', 'Kuis', 'Mudah', 'Fisika'),
    ('FIS57', 'Kuis', 'Sedang', 'Fisika'),
    ('FIS57', 'Kuis', 'Sulit', 'Fisika'),
    ('FIS57', 'Latihan Soal', 'Mudah', 'Fisika'),
    ('FIS57', 'Latihan Soal', 'Sedang', 'Fisika'),
    ('FIS57', 'Latihan Soal', 'Sulit', 'Fisika'),
    ('FIS57', 'Tugas', 'Mudah', 'Fisika'),
    ('FIS57', 'Tugas', 'Sedang', 'Fisika'),
    ('FIS57', 'Tugas', 'Sulit', 'Fisika'),

    ('SOS87', 'Kuis', 'Mudah', 'Sosial'),
    ('SOS87', 'Kuis', 'Sedang', 'Sosial'),
    ('SOS87', 'Kuis', 'Sulit', 'Sosial'),
    ('SOS87', 'Latihan Soal', 'Mudah', 'Sosial'),
    ('SOS87', 'Latihan Soal', 'Sedang', 'Sosial'),
    ('SOS87', 'Latihan Soal', 'Sulit', 'Sosial'),
    ('SOS87', 'Tugas', 'Mudah', 'Sosial'),
    ('SOS87', 'Tugas', 'Sedang', 'Sosial'),
    ('SOS87', 'Tugas', 'Sulit', 'Sosial'),

    ('MAT95', 'Kuis', 'Mudah', 'Matematika'),
    ('MAT95', 'Kuis', 'Sedang', 'Matematika'),
    ('MAT95', 'Kuis', 'Sulit', 'Matematika'),
    ('MAT95', 'Latihan Soal', 'Mudah', 'Matematika'),
    ('MAT95', 'Latihan Soal', 'Sedang', 'Matematika'),
    ('MAT95', 'Latihan Soal', 'Sulit', 'Matematika'),
    ('MAT95', 'Tugas', 'Mudah', 'Matematika'),
    ('MAT95', 'Tugas', 'Sedang', 'Matematika'),
    ('MAT95', 'Tugas', 'Sulit', 'Matematika');
SELECT *FROM LATIHAN


--VIDEO
CREATE TABLE VIDEO(
IdMateri VARCHAR (40) FOREIGN KEY REFERENCES MATERI(IdMateri) NOT NULL,
Tautan VARCHAR (60) PRIMARY KEY,
TanggalUbah VARCHAR (40),
MataPelajaran VARCHAR (40));

INSERT INTO VIDEO(IdMateri,Tautan,TanggalUbah, MataPelajaran)
VALUES
('BIO97','https://youtu.be/EbP1CN9k-SY?si=ZxuzGtc_rXTL8JOw ','8 Maret 2023','Biologi'),
('KIM42','https://youtu.be/Dq98hsRCHuo?si=hYtoPIZXfwobc_XK','21 Oktober 2023','Kimia'),
('FIS57','https://youtu.be/zF2IrJJ5cgg?si=mYXp2_rrfF6404Ay ','5 Juni 2023','Fisika'),
('SOS87','https://youtu.be/D5g7uz2FjeQ?si=1oVvmqIAuQA8C5Ol ','13 September 2023','Sosiologi'),
('MAT95','https://youtu.be/qCvsHSbdV0U?si=dswiNcrxxrDYvlzy','17 April 2023','Matematika'),
('BIO97', 'https://youtu.be/XyzAbCdeFGH?si=abcdefg', '10 Januari 2023', 'Biologi'),
('KIM42', 'https://youtu.be/AbCdEfGhIjk?si=hijklmn', '25 Mei 2023', 'Kimia'),
('FIS57', 'https://youtu.be/LmnopQrStuV?si=opqrstuv', '14 Februari 2023', 'Fisika'),
('SOS87', 'https://youtu.be/WxyzAbCdEf?si=wxyz123', '7 Agustus 2023', 'Sosiologi'),
('MAT95', 'https://youtu.be/1234567890?si=mnopqrstuv', '3 Maret 2023', 'Matematika'),
('BIO97', 'https://youtu.be/AbCdefGhiJk?si=456789012', '20 November 2023', 'Biologi'),
('KIM42', 'https://youtu.be/LMnopQrStuv?si=345678901', '12 April 2023', 'Kimia'),
('FIS57', 'https://youtu.be/OPqrstUvWxy?si=234567890', '9 Juni 2023', 'Fisika'),
('SOS87', 'https://youtu.be/WXYZabCDEfg?si=789012345', '1 September 2023', 'Sosiologi'),
('MAT95', 'https://youtu.be/6789012345?si=678901234', '18 Juli 2023', 'Matematika');

SELECT *FROM VIDEO 
DROP TABLE VIDEO


-- TRYOUT
CREATE TABLE TRYOUT(
IdMateri VARCHAR (40) FOREIGN KEY REFERENCES MATERI(IdMateri) ,
kodeTryOut VARCHAR (40) PRIMARY KEY);


INSERT INTO TRYOUT (IdMateri, kodeTryOut)
VALUES
('BIO97','TO01'),
('KIM42','TO02'),
('FIS57','TO03'),
('SOS87','TO04'),
('MAT95','TO05'),
('BIO97','TO11'),
('KIM42','TO12'),
('FIS57','TO13'),
('SOS87','TO14'),
('MAT95','TO15'),
('BIO97','TO16'),
('KIM42','TO17'),
('FIS57','TO18'),
('SOS87','TO19'),
('MAT95','TO20');
SELECT *FROM TRYOUT


-- TOEFL
CREATE TABLE TOEFL(
IdMateri VARCHAR (40) FOREIGN KEY REFERENCES MATERI(IdMateri),
KodeTOEFL VARCHAR (40) PRIMARY KEY);

INSERT INTO TOEFL(IdMateri,KodeTOEFL)
VALUES
('BIO97','TOEFL26'),
('KIM42','TOEFL62'),
('FIS57','TOEFL11'),
('SOS87','TOEFL98'),
('MAT95','TOEFL18'),
('BIO97', 'TOEFL01'),
('KIM42', 'TOEFL02'),
('FIS57', 'TOEFL03'),
('SOS87', 'TOEFL04'),
('MAT95', 'TOEFL05'),
('BIO97', 'TOEFL06'),
('KIM42', 'TOEFL07'),
('FIS57', 'TOEFL08'),
('SOS87', 'TOEFL09'),
('MAT95', 'TOEFL10');
SELECT *FROM TOEFL



--TesAkhir
CREATE TABLE TES_AKHIR(
IdMateri VARCHAR (40) FOREIGN KEY REFERENCES MATERI(IdMateri),
KodeTestAkhir VARCHAR (40) PRIMARY KEY);

INSERT INTO TES_AKHIR(IdMateri, KodeTestAkhir)
VALUES
('BIO97','FINAL02'),
('KIM42','FINAL06'),
('FIS57','FINAL01'),
('BIO97','FINAL03'),
('KIM42','FINAL07'),
('FIS57','FINAL04'),
('SOS87','FINAL10'),
('MAT95','FINAL12'),
('BIO97','FINAL13'),
('KIM42','FINAL14'),
('FIS57','FINAL15'),
('SOS87','FINAL16'),
('MAT95','FINAL17'),
('SOS87','FINAL09'),
('MAT95','FINAL11');
SELECT *FROM TES_AKHIR


--AKSES_MATERI
CREATE TABLE Akses_Materi(
IdMateri VARCHAR (40) FOREIGN KEY REFERENCES MATERI(IdMateri),
IdPengguna VARCHAR (40) FOREIGN KEY REFERENCES PENGGUNA(IdPengguna),
Tautan VARCHAR (60),
kodeTryOut VARCHAR (40),
kodeTOEFl VARCHAR (40),
kodeTesAkhir VARCHAR (40),
MataPelajaran VARCHAR (40));

INSERT INTO Akses_Materi(IdMateri, idpengguna, Tautan, kodeTryOut, kodeTOEFl, kodeTesAkhir, MataPelajaran)
VALUES
('BIO97', '1201031011', 'https://youtu.be/EbP1CN9k-SY?si=ZxuzGtc_rXTL8JOw', 'TO01', 'TOEFL26', 'FINAL02', 'Biologi'),
('KIM42', '1201031012', 'https://youtu.be/Dq98hsRCHuo?si=hYtoPIZXfwobc_XK', 'TO02', 'TOEFL62', 'FINAL06', 'Kimia'),
('FIS57', '1201031013', 'https://youtu.be/zF2IrJJ5cgg?si=mYXp2_rrfF6404Ay', 'TO03', 'TOEFL11', 'FINAL01', 'Fisika'),
('SOS87', '1201031014', 'https://youtu.be/D5g7uz2FjeQ?si=1oVvmqIAuQA8C5Ol', 'TO04', 'TOEFL98', 'FINAL09', 'Sosiologi'),
('MAT95', '1201031015', 'https://youtu.be/qCvsHSbdV0U?si=dswiNcrxxrDYvlzy', 'TO05', 'TOEFL18', 'FINAL11', 'Matematika'),
('BIO97', '1201031011', 'https://youtu.be/abc123?si=ZxuzGtc_rXTL8JOw', 'TO06', 'TOEFL01', 'FINAL03', 'Biologi'),
('KIM42', '1201031012', 'https://youtu.be/def456?si=hYtoPIZXfwobc_XK', 'TO07', 'TOEFL02', 'FINAL07', 'Kimia'),
('FIS57', '1201031013', 'https://youtu.be/ghi789?si=mYXp2_rrfF6404Ay', 'TO08', 'TOEFL03', 'FINAL04', 'Fisika'),
('SOS87', '1201031014', 'https://youtu.be/jkl012?si=1oVvmqIAuQA8C5Ol', 'TO09', 'TOEFL04', 'FINAL10', 'Sosiologi'),
('MAT95', '1201031015', 'https://youtu.be/mno345?si=dswiNcrxxrDYvlzy', 'TO10', 'TOEFL05', 'FINAL12', 'Matematika'),
('BIO97', '1201031016', 'https://youtu.be/pqr678?si=ZxuzGtc_rXTL8JOw', 'TO11', 'TOEFL06', 'FINAL13', 'Biologi'),
('KIM42', '1201031017', 'https://youtu.be/stu901?si=hYtoPIZXfwobc_XK', 'TO12', 'TOEFL07', 'FINAL14', 'Kimia'),
('FIS57', '1201031018', 'https://youtu.be/vwx234?si=mYXp2_rrfF6404Ay', 'TO13', 'TOEFL08', 'FINAL15', 'Fisika'),
('SOS87', '1201031019', 'https://youtu.be/yza567?si=1oVvmqIAuQA8C5Ol', 'TO14', 'TOEFL09', 'FINAL16', 'Sosiologi'),
('MAT95', '1201031020', 'https://youtu.be/bcd890?si=dswiNcrxxrDYvlzy', 'TO15', 'TOEFL10', 'FINAL17', 'Matematika');
SELECT *FROM Akses_Materi
DROP TABLE Akses_Materi











































