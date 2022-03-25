# Catatan Praktikum

## Nenti Nurnaningsih
- 1 Setoran banyak ItemSetoran
- 1 ItemSetoran mewakili 1 ayat, artinya kalau setor 10 ayat, ada 10 record ItemSetoran
- Bikin tabel surat, jadi nanti yg disimpen id surat, bukan nama surat

## Normalika Shandi
- id_karyawan di Transaksi ditambahkan petunjuk tambahan terkait role karyawan di Transaksi tersebut, misal id_karyawan_yang_menyetujui
- antara Transaksi dengan Pengiriman ini M:M
- 1 Transaksi bisa lebih dari 1 barang
- 1 Transaksi bisa lebih dari 1 pengiriman, kalau keramiknya banyak
- Antara Transaksi - Barang ini M:M jadi harus dibuat entitas penghubung
  - ItemTransaksi
    - no transaksi
    - id barang
    - jumlah
- Antara Transaksi - Pengiriman ini M:M jadi harus dibuat entitas penghubung
- Antara Karyawan - Pembeli ga ada relationship, karena via Transaksi
- Antara Pembeli - Barang ga ada relationship
- Atribut buat transaksi dilengkapi
- Atribut barang ditambahi

## Nur Kholis Majid
- Jelaskan deskripsi nya
- Jelaskan fitur2nya apa
  - Baca buku online pake membership
  - Bookmark buku yang dibaca
- Ada penghubung antara Buku dan Pengguna
- Entitas
  - Pengguna
    - ID
    - Nama
    - dsb.
  - Buku
    - ID
    - Judul
    - dsb.
  - Baca
    - ID Buku
    - ID Pengguna
    - Waktu
  - Favorit
    - ID Buku
    - ID Pengguna

## Nugraha Adi Sulistyo
- Tambah entitas wilayah
  - kode keluarahan / desa
  - rw
  - rt
- Jadiin hirarki cukup 1 entitas Warga
  - role
- Role (1 = warga, 2 = seksi olahraga, 3 = , 9 = ketua rt) 
  - id
  - id_role_parent
  - role
- Keluhan dan Berita, mau dipisah apa digabung, tergantung kompleksitasnya

## Nurrohman
- Menyimpan hasil pemeriksaan lab
- Mengirimkan Hasil Lab
- Mengunduh dan Mengunggah Hasil Lab
  - Pasien
  - Laboratorium
  - Admin lab
  - 1 Admin lab, bisa banyak pasien
  - 1 Pasien, bisa banyak admin lab
  - Admin lab - Pasien M:M
  - Pemeriksaan
    - ID Pasien
    - ID Lab
    - ID Admin lab
    - Waktu
    - Kategori
    - Hasil
    - Status pengiriman hasil
    - Waktu pengiriman hasil
