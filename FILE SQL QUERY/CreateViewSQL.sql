USE Basdat2023_08_SI

--VIEW

CREATE VIEW View_EmailFromSurabaya AS
SELECT email
FROM PENGGUNA
WHERE asalSekolah IN (SELECT asalSekolah FROM PENGGUNA WHERE alamat LIKE '%Surabaya%');
SELECT * FROM View_EmailFromSurabaya


CREATE VIEW View_ForDiscNotSabdaPS AS
SELECT *
FROM FORUMDISKUSI
WHERE mataPelajaran NOT IN (SELECT mataPelajaran FROM FORUMDISKUSI WHERE namaMentor = 'Sabda PS');
SELECT * FROM View_ForDiscNotSabdaPS


CREATE VIEW View_Nominal AS
SELECT noVirtual, kodePembayaran
FROM TRANSAKSI
WHERE CAST(nominal AS INT) > 200000;
SELECT * FROM View_Nominal


CREATE VIEW View_MatkulEqualBIO97 AS
SELECT IdMateri, Tautan, TanggalUbah, MataPelajaran
FROM VIDEO
WHERE MataPelajaran IN (SELECT MataPelajaran FROM VIDEO WHERE IdMateri = 'BIO97');
SELECT * FROM View_MatkulEqualBIO97


CREATE VIEW View_AsalSekolahEqualEko AS
SELECT *
FROM PENGGUNA
WHERE asalSekolah = (SELECT asalSekolah FROM PENGGUNA WHERE nama = 'Eko Silalahi');
SELECT * FROM View_AsalSekolahEqualEko


CREATE VIEW View_UserEqualRegis AS
SELECT P.idPengguna, P.nama, P.alamat, R.Kelas
FROM PENGGUNA P
JOIN REGISTRASI R ON P.idPengguna = R.idPengguna;
SELECT * FROM View_UserEqualRegis


CREATE VIEW View_AccesEqualMateri AS
SELECT Akses_Materi.*, MATERI.Judul, MATERI.MataPelajaran
FROM Akses_Materi
INNER JOIN MATERI ON Akses_Materi.IdMateri = MATERI.IdMateri;
SELECT * FROM View_AccesEqualMateri


CREATE VIEW View_VirAccAndTrans AS
SELECT V.nama, T.metodePembayaran
FROM VIRTUALACCOUNT V
JOIN TRANSAKSI T ON V.noVirtual = T.noVirtual;
SELECT * FROM View_VirAccAndTrans


CREATE VIEW View_LeftJoin AS
SELECT V.Nama, COALESCE(T.metodePembayaran, '--') AS MetodePembayaran
FROM VIRTUALACCOUNT V
LEFT JOIN TRANSAKSI T ON V.noVirtual = T.noVirtual;
SELECT * FROM View_LeftJoin


CREATE VIEW View_RightJoin AS
SELECT V.Nama, COALESCE(T.metodePembayaran, '--') AS MetodePembayaran
FROM VIRTUALACCOUNT V
RIGHT JOIN TRANSAKSI T ON V.noVirtual = T.noVirtual;
SELECT * FROM View_RightJoin
