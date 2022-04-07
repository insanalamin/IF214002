# Pertemuan 6 Basis Data - UID dan Normalisasi

## Lesson Learning Outcome
Mahasiswa mampu mengimplementasikan konsep UID dan mengidentifikasi pelanggaran terhadap konsep normalisasi dan menyelesaikannya

## Outline
- UID
- Normalisasi basis data
  - Latar belakang
  - Bentuk ke 1
  - Bentuk ke 2
  - Bentuk ke 3

## UID
- Mengidentifikasi 1 record
  - Candidate Key
    - Primary Key

## Normalisasi Basis Data

### Definisi
> the process of organizing data in a database. This includes creating tables and establishing relationships between those tables according to rules designed both to protect the data and to make the database more flexible by eliminating redundancy and inconsistent dependency. - Microsoft

> Normalization is the process of organizing a database to reduce redundancy and improve data integrity. Normalization also simplifies the database design so that it achieves the optimal structure composed of atomic elements (i.e. elements that cannot be broken down into smaller parts). - Database.guide

> Normalization is a series of steps followed to obtain a database design that allows for efficient access and storage of data. These steps reduce data redundancy and the chances of data becoming inconsistent. - Oracle

Formulasi
- Aturan
- Merapikan struktur basis data
- Untuk
  - Mengurangi redundansi
  - Meningkatkan integritas data 

### Latar Belakang
- Diinisiasi oleh Bapak Basis Data Relasional [Edgar F. Codd](https://www.nae.edu/187653/EDGAR-F-CODD-19232003) (1923 - 2003)
  - Mau tau alasan sebenarnya mengapa ada normalisasi di basis data relasional ? telusuri sejarahnya
- Ada bentuk: 1 (1970), 2 (1971), 3 (1971), BC (1974), 4 (1977), 5 (1979), 6, dan terus berkembang

#### Mengapa normalisasi basis data ?
- Memastikan setiap record yang ada dapat diidentifikasi  
- Dengan memperlakukan 1 cell hanya boleh 0 - 1 data: 
  - Lebih mudah untuk melakukan operasi-operasi relasional berbasis cell seperti:
    - Aggregation / agregat
    - Join / penggabungan
  - Prinsipnya adalah tiap satuan data harus bisa dihitung
    - Basis data non relasional menyelesaikan permasalahan ini dengan struktur data array dan query penelusuran data
    - Basis data relasional modern menambahkan fitur tipe data non relasional
- Banyak sumber menuliskan, latar belakang utama normalisasi basis data adalah untuk mengurangi redundansi data. Memang apa ruginya kalau redundan ?
  - Efisiensi media penyimpanan
    - Beda kasus jika digunakan untuk data warehouse atau cache dari query yang berat
  - Satu data memastikan pengubahan data cukup di satu tempat
    - Mengurangi kesalahan-kesalahan dalam penggunaan oleh aplikasi maupun user
- Memudahkan memahami struktur basis data

### 🎖️ Sertifikasi Normalisasi Bentuk ke 1
- Umumnya wajib digunakan pada beragam implementasi basis data
  - ✅ Basis data relasional
    - ✅ Penggunaan operasional / transaksional
    - ✅ Penggunaan cache dan analisis (data warehouse)
  - ✅ Basis data non relasional
- **Aturan**
  - Harus memiliki primary key (1 kolom, atau multi kolom(composite))
    - 🚫 Jika tidak ada, maka tentukan dulu
      
      Tabel tanpa primary key, mana Laras umur 7 tahun dari Bandung ?
      ||nama|umur|asal kota|
      |---|---|---|---|
      ||Siswo|7|Bandung|
      |🔴|Laras|7|Bandung|
      ||Prim|7|Bandung|
      ||Prim|8|Bandung|
      |🔴|Laras|7|Bandung|
      
      Tabel di atas ditambahkan primary key menjadi
      
      |PK|no peserta|
      |---|---|
      
      |🟢 no perserta|nama|umur|asal kota|
      |---|---|---|---|
      |🟢 1|Siswo|7|Bandung|
      |🟢 2|Laras|7|Bandung|
      |🟢 3|Prim|7|Bandung|
      |🟢 4|Prim|8|Bandung|
      |🟢 5|Laras|7|Bandung|
      
  - Tidak boleh ada sel yang berisi nilai lebih dari satu
    - 🚫 Jika ada yang lebih dari satu, maka mekarkan di record baru
      
      Kolom hobi memiliki nilai lebih dari satu
      
      |PK|no peserta|
      |---|---|
      
      |no perserta|nama|umur|asal kota|hobi|
      |---|---|---|---|---|
      |1|Siswo|7|Bandung|maraton|
      |2|Laras|7|Bandung|🔴 minta angpau, makan bakpau|
      |3|Prim|7|Bandung|🔴 naik gunung, nonton, berkebun|
      |4|Prim|8|Bandung|menulis|
      |5|Laras|7|Bandung|fotografi|
      
      Hobi yang lebih dari satu, dimekarkan jadi record baru
      
      |PK|no peserta, hobi|
      |---|---|
      
      |no perserta|nama|umur|asal kota|hobi|
      |---|---|---|---|---|
      |1|Siswo|7|Bandung|maraton|
      |2|Laras|7|Bandung|🟢 minta angpau|
      |2|Laras|7|Bandung|🟢 makan bakpau|
      |3|Prim|7|Bandung|🟢 naik gunung|
      |3|Prim|7|Bandung|🟢 nonton|
      |3|Prim|7|Bandung|🟢 berkebun|
      |4|Prim|8|Bandung|menulis|
      |5|Laras|7|Bandung|fotografi|

### 🎖️ Sertifikasi Normalisasi Bentuk ke 2
- Umumnya wajib digunakan pada
  - ✅ Basis data relasional
    - ✅ Penggunaan operasional / transaksional
- **Aturan**
  - Tersertifikasi Normalisasi Bentuk ke 1
    - 🚫 Jika belum, sertifikasikan dulu
  - Tidak boleh ada kolom non key yang bergantung sebagian dari composite key
    - 🚫 Jika ada yang bergantung kepada sebagian kolom composite key, maka harus dimekarkan menjadi tabel
      - Sertifikasikan kembali tabel hasil pemekaran mulai dari Normalisasi Bentuk ke 1
- Contoh

  **Mahasiswa**
  
  🔑 id
  |🔑 id|nama|
  |---|---|
  |1|Nenti|
  |2|Romi|
  |3|Rifki|
  |4|Rizal|
  
  **Mata Kuliah**
  
  🔑 id
  |🔑 id|nama|
  |---|---|
  |1|Basis Data|
  |2|Rekayasa Perangkat Lunak|
  |3|Sistem Operasi|
  
  **Dosen**
  
  |🔑 id|nama|
  |---|---|
  |1|Insan|
  |2|Ichsan|
  |3|Eva|
  
  **Kepesertaan Kelas**
  
  🔑 id_mahasiswa, id_mata_kuliah
  |🔑 id_mahasiswa|🔑 id_mata_kuliah|nilai|🔴 id_dosen|
  |---|---|---|---|
  |1|1|83|🔴 1|
  |1|2|89|🔴 2|
  |3|2|98|🔴 2|
  |3|3|71|🔴 3|
  
  id_dosen hanya bergantung ke 🔑 id_mata_kuliah, tidak ke 🔑 id_mahasiswa, 🔑 id_mata_kuliah
  
  **Kepesertaan Kelas**
  
  🔑 id_mahasiswa, id_mata_kuliah
  |🔑 id_mahasiswa|🔑 id_mata_kuliah|nilai|
  |---|---|---|
  |1|1|83|
  |1|2|89|
  |3|2|98|
  |3|3|71|
  
  **Mata Kuliah**
  
  🔑 id
  |🔑 id|nama|🟢 id_dosen|
  |---|---|---|
  |1|Basis Data|🟢 1|
  |2|Rekayasa Perangkat Lunak|🟢 2|
  |3|Sistem Operasi|🟢 3|

### 🎖️ Sertifikasi Normalisasi Bentuk ke 3
- Umumnya wajib digunakan pada
  - ✅ Basis data relasional
    - ✅ Penggunaan operasional / transaksional
- **Aturan**
  - Tersertifikasi Normalisasi Bentuk ke 2
    - 🚫 Jika belum, sertifikasikan dulu
  - Kolom non key, hanya boleh tergantung kepada primary key. Tidak boleh ada ketergantungan tambahan ke kolom non key lainnya
    - 🚫 Jika ada yang bergantung kepada kolom lain, maka harus dimekarkan menjadi tabel
      - Sertifikasikan kembali tabel hasil pemekaran mulai dari Normalisasi Bentuk ke 1

- Contoh

  **Mahasiswa**
  
  🔑 id
  
  |🔑 id|nama|alamat|kode pos|🔴 kota|🔴 kecamatan|
  |---|---|---|---|---|---|
  |1|Nenti|Jalan A No. 3|1284|🔴 bandung|🔴 andir|
  |2|Romi|Jalan B No. 2|1326|🔴 cimahi|🔴 cimahi utara|
  |3|Rifki|Jalan C No. 6|1662|🔴 kab bandung|🔴 solokanjeruk|
  |4|Rizal|Jalan D No. 7|1771|🔴 sumedang|🔴 buah dua|
  
  Di normalkan menjadi
  
  **Mahasiswa**
  
  🔑 id
  
  |🔑 id|nama|alamat|kode pos|
  |---|---|---|---|
  |1|Nenti|Jalan A No. 3|1284|
  |2|Romi|Jalan B No. 2|1326|
  |3|Rifki|Jalan C No. 6|1662|
  |4|Rizal|Jalan D No. 7|1771|  
  
  **Kode Pos**
  
  🔑 
  
  |🔑 kode|🟢 kota|🟢 kecamatan|
  |---|---|---|
  |1284|🟢 bandung|🟢 andir|
  |1326|🟢 cimahi|🟢 cimahi utara|
  |1662|🟢 kab bandung|🟢 solokanjeruk|
  |1771|🟢 sumedang|🟢 buah dua|

## Materi Terkait
- [Microsoft - Description of the database normalization basics](https://docs.microsoft.com/en-us/office/troubleshoot/access/database-normalization-description)
- [Wikipedia - Database Normalization](https://en.wikipedia.org/wiki/Database_normalization)
XGqL-5nGDPg
- [Oracle - Normalization](https://www.orafaq.com/wiki/Normalization)

## Video Terkait
- [![](https://img.youtube.com/vi/XGqL-5nGDPg/3.jpg) Mr. Bayu - Belajar Normalisasi Database 1NF, 2NF dan 3NF Bagian 1](https://www.youtube.com/watch?v=XGqL-5nGDPg)
- [![](https://img.youtube.com/vi/APUF3Fs0ypg/3.jpg) umikulsum indah - Normalisasi Database - 1NF sampai 3NF (Basis Data)](https://www.youtube.com/watch?v=APUF3Fs0ypg)
- [![](https://img.youtube.com/vi/UC_tJx4MBgk/3.jpg) Laura Mahendratta - DS-09: Normalisasi Database 1NF 2NF hingga 3NF](https://www.youtube.com/watch?v=UC_tJx4MBgk)

## Asesmen

Kelas E

**Perbaiki struktur basis data project**
1. Pastikan struktur basis data project sudah sesuai dengan proses bisnis
2. Normalisasi seluruh tabel hingga menjadi bentuk ke 3, dan beri catatan pada tiap tabel
   - Ternormalisasi bentuk ke 1
   - Ternormalisasi bentuk ke 2
   - Ternormalisasi bentuk ke 3 
