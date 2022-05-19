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
SELECT * FROM kode_kabupaten
