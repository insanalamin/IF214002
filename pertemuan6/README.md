# Pertemuan 6 Basis Data

## Outline
- UID
- Normalisasi basis data
  - Latar belakang
  - Bentuk ke 1
  - Bentuk ke 2
  - Bentuk ke 3

## UID

## Normalisasi Basis Data

### Latar Belakang
- Diinisiasi oleh Bapak Basis Data Relasional [Edgar F. Codd](https://www.nae.edu/187653/EDGAR-F-CODD-19232003) (1923 - 2003)
  - Mau tau alasan sebenarnya mengapa ada normalisasi di basis data relasional ? telusuri sejarahnya

#### Mengapa normalisasi basis data ?
- NF1 - Dengan memperlakukan 1 cell hanya boleh 0 - 1 data:
  - Lebih mudah untuk melakukan operasi-operasi relasional berbasis cell seperti:
    - Aggregation / agregat
    - Join / penggabungan
  - Prinsipnya adalah tiap satuan data harus bisa dihitung
    - Basis data non relasional menyelesaikan permasalahan ini dengan struktur data array dan query penelusuran data
    - Basis data relasional modern menambahkan fitur tipe data non relasional
- Banyak artikel menuliskan, latar belakang utama normalisasi basis data adalah untuk mengurangi redundansi data. Memang apa ruginya kalau redundan ?
  - Efisiensi media penyimpanan
  - Satu data memastikan pengubahan data cukup di satu tempat
    - Mengurangi kesalahan-kesalahan dalam penggunaan oleh aplikasi maupun user

### 🎖️ Sertifikasi Normalisasi Bentuk ke 1
- Tidak boleh ada sel yang berisi nilai lebih dari satu
  - 🚫 Jika ada yang lebih dari satu, maka mekarkan di record baru
- Harus memiliki primary key
  - 🚫 Jika tidak ada, maka tentukan dulu 

### 🎖️ Sertifikasi Normalisasi Bentuk ke 2
- Tersertifikasi Normalisasi Bentuk ke 1
  - 🚫 Jika belum, jadikan dulu
- Kolom non key, hanya boleh tergantung kepada primary key
  - 🚫 Jika ada yang bergantung kepada kolom lain, maka harus dimekarkan menjadi tabel
    - Sertifikasikan kembali tabel hasil pemekaran mulai dari Normalisasi Bentuk ke 1

### 🎖️ Sertifikasi Normalisasi Bentuk ke 3
- Tersertifikasi Normalisasi Bentuk ke 2

## Materi Terkait
- [Microsoft - Description of the database normalization basics](https://docs.microsoft.com/en-us/office/troubleshoot/access/database-normalization-description)
- [Wikipedia - Database Normalization](https://en.wikipedia.org/wiki/Database_normalization)
XGqL-5nGDPg
## Video Terkait
- [![](https://img.youtube.com/vi/XGqL-5nGDPg/3.jpg) Mr. Bayu - Belajar Normalisasi Database 1NF, 2NF dan 3NF Bagian 1](https://www.youtube.com/watch?v=XGqL-5nGDPg)
- [![](https://img.youtube.com/vi/APUF3Fs0ypg/3.jpg) umikulsum indah - Normalisasi Database - 1NF sampai 3NF (Basis Data)](https://www.youtube.com/watch?v=APUF3Fs0ypg)
- [![](https://img.youtube.com/vi/UC_tJx4MBgk/3.jpg) Laura Mahendratta - DS-09: Normalisasi Database 1NF 2NF hingga 3NF](https://www.youtube.com/watch?v=UC_tJx4MBgk)

## Asesmen

Kelas E

![Asesmen pertemuan 6](qr-basis-data-pertemuan-6.png)
