
USE Basdat2023_08_SI

--FUNCTION
CREATE FUNCTION GetJenisMateriByTingkatan(@tingkatan VARCHAR(40))
RETURNS TABLE 
AS
RETURN (
    SELECT IDMateri, Jenis, MataPelajaran
    FROM LATIHAN
    WHERE Tingkatan = @tingkatan
);

SELECT * FROM GetJenisMateriByTingkatan('Mudah');
SELECT * FROM GetJenisMateriByTingkatan('Sedang');
SELECT * FROM GetJenisMateriByTingkatan('Sulit');


CREATE FUNCTION GetUserInfoByCity(@city VARCHAR(40))
RETURNS TABLE 
AS
RETURN (
    SELECT *
    FROM REGISTRASI
    WHERE Kota = @city
);

SELECT * FROM dbo.GetUserInfoByCity('Jakarta Selatan');
SELECT * FROM dbo.GetUserInfoByCity('Surabaya');
SELECT * FROM dbo.GetUserInfoByCity('Bandung');
SELECT * FROM dbo.GetUserInfoByCity('Medan');
SELECT * FROM dbo.GetUserInfoByCity('Makassar');






--PROCEDURE
CREATE PROCEDURE GetDataByMataPelajaran
    @mata_pelajaran VARCHAR(40)
AS
BEGIN
    SELECT IDMateri, Jenis, Tingkatan
    FROM LATIHAN
    WHERE MataPelajaran = @mata_pelajaran;
END;

EXEC GetDataByMataPelajaran 'Biologi';
EXEC GetDataByMataPelajaran 'Kimia';
EXEC GetDataByMataPelajaran 'Fisika';
EXEC GetDataByMataPelajaran 'Sosial';
EXEC GetDataByMataPelajaran 'Matematika';

CREATE PROCEDURE GetMateriByMataPelajaran
    @mata_pelajaran VARCHAR(40)
AS
BEGIN
    SELECT * FROM MATERI
    WHERE MataPelajaran = @mata_pelajaran;
END;
EXEC GetMateriByMataPelajaran 'Biologi';
EXEC GetMateriByMataPelajaran 'Kimia';
EXEC GetMateriByMataPelajaran 'Fisika';
EXEC GetMateriByMataPelajaran 'Sosiologi';
EXEC GetMateriByMataPelajaran 'Matematika';