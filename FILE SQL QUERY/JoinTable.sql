
USE Basdat2023_08_SI
--JOIN TABLE
SELECT Akses_Materi.*, MATERI.Judul, MATERI.MataPelajaran
FROM Akses_Materi
INNER JOIN MATERI ON Akses_Materi.IdMateri = MATERI.IdMateri;

SELECT Akses_Materi.*, TRYOUT.kodeTryOut
FROM Akses_Materi
LEFT JOIN TRYOUT ON Akses_Materi.kodeTryOut = TRYOUT.kodeTryOut;

SELECT Akses_Materi.*, TOEFL.KodeTOEFL
FROM Akses_Materi
RIGHT JOIN TOEFL ON Akses_Materi.kodeTOEFl = TOEFL.KodeTOEFL;


SELECT TRYOUT.kodeTryOut, TOEFL.KodeTOEFL
FROM TRYOUT
CROSS JOIN TOEFL;

SELECT P.idPengguna, P.nama, P.alamat, R.Kelas
FROM PENGGUNA P
JOIN REGISTRASI R ON P.idPengguna = R.idPengguna;

SELECT V.nama, T.metodePembayaran
FROM VIRTUALACCOUNT V
JOIN TRANSAKSI T ON V.noVirtual = T.noVirtual;

SELECT V.Nama, COALESCE(T.metodePembayaran, '--') AS MetodePembayaran
FROM VIRTUALACCOUNT V
LEFT JOIN TRANSAKSI T ON V.noVirtual = T.noVirtual;

SELECT V.Nama, COALESCE(T.metodePembayaran, '--') AS MetodePembayaran
FROM VIRTUALACCOUNT V
RIGHT JOIN TRANSAKSI T ON V.noVirtual = T.noVirtual;