USE Basdat2023_08_SI

--BASIC SQL QUERY

--SET OPERATOR
SELECT idPengguna, email FROM PENGGUNA WHERE asalSekolah = 'SMP Negeri 1 Jakarta Selatan'
UNION
SELECT id_Mentor, namaMentor AS email FROM FORUMDISKUSI;

SELECT idPengguna,AsalSekolah, Kelas
FROM REGISTRASI
EXCEPT
SELECT idPengguna,AsalSekolah, Kelas
FROM REGISTRASI
WHERE Kota = 'Jakarta Selatan'



--SELECT
SELECT DISTINCT MataPelajaran, Jenis, Tingkatan
FROM LATIHAN;

SELECT MataPelajaran, COUNT(*) AS JumlahLatihan
FROM LATIHAN
GROUP BY MataPelajaran;

SELECT idPengguna, email FROM PENGGUNA WHERE asalSekolah = 'SMP Negeri 1 Jakarta Selatan'


--AGGREGATE
SELECT AVG(hargaPaket) AS AverageHargaPaket
FROM PAKETPEMBAYARAN;


SELECT AVG(LEN(URL)) AS AvgURLLength FROM BERANDA;


SELECT 
    COUNT(*) AS TotalDaftarRecords,
    AVG(Kelas) AS AvgClassLevel
FROM REGISTRASI;


SELECT COUNT(DISTINCT PilihanBahasa) AS TotalUniqueLanguages FROM BERANDA;


-- UPDATE
UPDATE PENGGUNA
SET noTelp = '081288271252'
WHERE idPengguna = '1201031011';

SELECT * FROM PENGGUNA where idPengguna = '1201031011'

UPDATE TRANSAKSI
SET nominal = 500000
WHERE noVirtual = '123456';

SELECT * FROM TRANSAKSI WHERE noVirtual = '123456'

UPDATE MATERI
SET Judul = 'Isolasi dan Karakterisasi Zigot'
WHERE IdMateri = 'BIO97';

SELECT * FROM MATERI WHERE IdMateri = 'BIO97'

