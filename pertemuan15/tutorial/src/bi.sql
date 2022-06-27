CREATE VIEW bi_penduduk_per_kab AS
  SELECT 
    COUNT(*) AS jumlah_penduduk,
    p.kode_kabupaten,
    kk.deskripsi AS kabupaten 
  FROM penduduk p
  INNER JOIN kode_kabupaten kk 
  ON p.kode_kabupaten = kk.kode
  GROUP BY p.kode_kabupaten 
  ORDER BY p.kode_kabupaten;

CREATE VIEW bi_penduduk_per_usia AS
  SELECT COUNT(*) AS jumlah_penduduk, (YEAR(NOW()) - YEAR(p.tanggal_lahir)) AS usia
  FROM penduduk p
  GROUP BY 2
  ORDER BY 2;

CREATE VIEW bi_penduduk_per_bulan_tahun_lahir AS
SELECT
	COUNT(*) AS jumlah_penduduk, 
	YEAR(p.tanggal_lahir) AS tahun, 
	MONTH(p.tanggal_lahir) AS bulan
FROM penduduk p
GROUP BY 2, 3
ORDER BY 2, 3;
