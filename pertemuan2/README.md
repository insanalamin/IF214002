# Ide Solusi: Sistem Terintegrasi Tracking, Asesmen, Pelatihan, dan Penyaluran Tenaga Kerja

![UIN](https://i0.wp.com/uinsgd.ac.id/wp-content/uploads/2020/01/Gedung-Rektorat.jpg?fit=1303%2C590&ssl=1)

## Deskripsi
Aplikasi ini berupaya untuk menanggulangi permasalahan pengangguran. Apliasi ini memiliki fitur2 utama seperti: 
- Tracking penduduk usia kerja yang tidak memiliki pekerjaan
- Assessment minat, bakat, dan kondisi psikologi dari calon peserta
- Pengelolaan proses pelatihan motivasi, skill, dan pengetahuan dari peserta
- Pengelolaan mitra penyaluran kerja dan mitra pemodal usaha

## Entitas dan Atribut

### Peserta
- ID
- NIK
- Nama
- Alamat
- Tempat lahir
- Tahun lahir
- Kontak
- Waktu pendaftaran

### Asesmen
- ID
- ID Peserta
- Waktu pelaksanaan
- Pengalaman kerja
- Keterampilan yang dimiliki
- Skor motivasi kerja
- Skor keinginan mengembangkan diri
- Skor psikotes
- Status kelulusan
- Tanggal kelulusan

### Pelatihan
- ID
- ID Peserta
- Jenis pelatihan
- Bidang pekerjaan

### Pelaksanaan Pelatihan
- ID 
- ID pelatihan
- Pertemuan ke
- Waktu pelaksanaan
- Kehadiran
- Skor pelatihan

### Mitra Perusahaan
- ID
- Nama perusahaan
- Bidang pekerjaan
- Alamat
- Nama penanggung jawab
- Nomor kontak

### Penyaluran
- ID
- ID perusahaan
- ID peserta
- Status penyaluran
