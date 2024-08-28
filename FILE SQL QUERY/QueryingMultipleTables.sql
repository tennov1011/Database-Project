--QUERYING MULTIPLE TABLES, IMPLEMENTING VIEWS
USE Basdat2023_08_SI


--Nested SubQueries
SELECT email
FROM PENGGUNA
WHERE asalSekolah IN (SELECT asalSekolah FROM PENGGUNA WHERE alamat LIKE '%Surabaya%');

SELECT *
FROM PENGGUNA
WHERE asalSekolah = (SELECT asalSekolah FROM PENGGUNA WHERE nama = 'Eko Silalahi');

SELECT * FROM FORUMDISKUSI
WHERE mataPelajaran = (SELECT mataPelajaran FROM FORUMDISKUSI WHERE namaMentor = 'Azhar Fahd');

SELECT *
FROM FORUMDISKUSI
WHERE mataPelajaran NOT IN (SELECT mataPelajaran FROM FORUMDISKUSI WHERE namaMentor = 'Sabda PS');

SELECT noVirtual, kodePembayaran
FROM TRANSAKSI
WHERE CAST(nominal AS INT) > 200000;

SELECT *
FROM TRANSAKSI
WHERE tglPembayaran > '15/08/2022';

SELECT DISTINCT MataPelajaran
FROM Akses_Materi
WHERE kodeTOEFl LIKE 'TOEFL%';

SELECT nama
FROM PENGGUNA
WHERE IdPengguna IN (SELECT IdPengguna FROM Akses_Materi WHERE MataPelajaran = 'Biologi');


SELECT IdMateri, Tautan, TanggalUbah, MataPelajaran
FROM VIDEO
WHERE MataPelajaran IN (SELECT MataPelajaran FROM VIDEO WHERE IdMateri = 'BIO97');

SELECT IdMateri, Tautan, TanggalUbah, MataPelajaran
FROM VIDEO
WHERE MataPelajaran = (SELECT MataPelajaran FROM VIDEO WHERE IdMateri = 'KIM42');