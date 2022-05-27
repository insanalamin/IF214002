CREATE TABLE mahasiswa (
  nim VARCHAR(10) NOT NULL,
  nama VARCHAR(80) NOT NULL
);

INSERT INTO mahasiswa (nim, nama) VALUES ('11', 'nenti'), ('12', 'norma'), ('13', 'romi'), ('14', 'nurrohman');

CREATE TABLE anggota_himpunan (
  nim VARCHAR(10) NOT NULL,
  jabatan VARCHAR(20) NOT NULL,
  skill_utama VARCHAR(40) NOT NULL
);

INSERT INTO anggota_himpunan (nim, jabatan, skill_utama) 
VALUES 
('11', 'ketua', 'meneropong'), 
('13', 'bendahara', 'mendamaikan'), 
('14', 'koor inovasi', 'kontemplasi'), 
('15', 'anggota', 'menyelinap'),
('16', 'anggota', 'komunikasi');

SELECT * FROM mahasiswa;
SELECT * FROM anggota_himpunan;

/* INNER JOIN */
SELECT 
	m.nim,
    m.nama,
    a.jabatan,
    a.skill_utama
FROM mahasiswa m
INNER JOIN anggota_himpunan a 
ON m.nim = a.nim;


/* LEFT JOIN */
SELECT 
	m.nim,
    m.nama,
    a.jabatan,
    a.skill_utama
FROM mahasiswa m
LEFT JOIN anggota_himpunan a 
ON m.nim = a.nim;

/* RIGHT JOIN */
SELECT 
	m.nim,
    a.nim as nim_himpunan,
    m.nama,
    a.jabatan,
    a.skill_utama
FROM mahasiswa m
RIGHT JOIN anggota_himpunan a 
ON m.nim = a.nim;
