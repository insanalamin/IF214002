## Materi Terkait

### Data Definition Language
Mendefinisikan struktur data (Create Update Delete wadah perwujudan entitas)
Umum digunakan semua aplikasi yang menggunakan basis data
Digunakan banyak oleh profesi Data Architect, Data Engineer, profesi2 lain di bawah

- [Tutorialspoint: CREATE TABLE - Membuat tabel baru](https://www.tutorialspoint.com/mysql/mysql-create-tables.htm)
  Contoh :
  
  ```sql
  CREATE TABLE binatang (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(40) NOT NULL,
    deskripsi TEXT
  )
  ```
    
  ```sql
  CREATE TABLE absensi (
    tanggal DATE,
    id_mahasiswa INT,
    status_kehadiran SMALLINT,
    PRIMARY KEY (tanggal, id_mahasiswa)
  )
  ```

- [Tutorialspoint: DROP TABLE - Menghapus tabel yang ada](https://www.tutorialspoint.com/mysql/mysql-drop-tables.htm)
  ```sql
  DROP TABLE binatang
  ```
  
- [Tutorialspoint: ALTER TABLE - Mengubah struktur tabel yang ada](https://www.tutorialspoint.com/mysql/mysql_alter_table.htm)
  
  Ketika data makin besar, ALTER TABLE ini bisa sangat lambat, jadi cara alternatif mengubah struktur tabel ketika data sangat besar, itu dengan membuat tabel baru dengan struktur teroptimasi, kemudian melakukan ETL dari tabel lama ke tabel baru
  
  - Menambahkan & Menghapus Kolom
    ```sql
    ALTER TABLE penduduk ADD COLUMN (hobi SMALLINT)
    ```
    
    ```sql
    ALTER TABLE penduduk ADD COLUMN (nama_awal varchar(40), nama_akhir VARCHAR(40))
    ```
    
  - Menambahkan & Menghapus Index
    ```sql
    ALTER TABLE penduduk ADD INDEX nama_lengkap_index (nama_awal, nama_akhir)
    ```

  - Menambahkan & Menghapus Primary Key
    ```sql
    ALTER TABLE buah ADD CONSTRAINT BuahPrimaryKey PRIMARY KEY (id)
    ```
  - Menambahkan & Menghapus Foreign Key
  - Menambahkan & Menghapus Constraint
    
- [Tutorialspoint: INDEX - Mengoptimasi query dengan mekanisme indexing](https://www.tutorialspoint.com/mysql/mysql-indexes.htm)

### Data Manipulation Language
Manipulasi record dari table (Create Update Delete instance / record dari entitas)
Umum digunakan di Application Development, OLTP
Digunakan banyak oleh profesi Data Engineer, Backend Developer, Mobile Developer, IoT Developer

- [Tutorialspoint: INSERT - Menambahkan record baru](https://www.tutorialspoint.com/mysql/mysql-insert-query.htm)
  - Akan eror ketika
    - Jumlah kolom pada record yang ditambahkan berbeda dengan jumlah kolom yang didefinisikan
    - Tipe data dari kolom pada record yang ditambahkan berbeda dengan tipe data dari kolom yang didefinisikan

- [Tutorialspoint: UPDATE - Mengubah record yang ada](https://www.tutorialspoint.com/mysql/mysql-update-query.htm)
  ```sql
  UPDATE penduduk 
  SET 
    nama_lengkap = 'Asep Suherman',
    kode_kabupaten = '3205'
  WHERE 
    id = 2
  ```
- [Tutorialspoint: DELETE - Menghapus record yang ada](https://www.tutorialspoint.com/mysql/mysql-delete-query.htm)

### Data Query Language
Membaca record dari satu atau lebih table dengan filter / kondisi tertentu
Umum digunakan di bidang OLAP, Data Warehousing, Business Intelligence (BI), Data Analytics, Data Visualization, Application Development
Digunakan banyak oleh profesi BI Analyst, BI Developer, Data Analyst, Data Engineer, Data Scientist, App Developer

- [Tutorialspoint: SELECT, FROM - Memilih atribut / kolom yang akan ditampilkan dari satu atau lebih tabel](https://www.tutorialspoint.com/mysql/mysql-select-query.htm)
  - [Tutorialspoint: CONCAT - Menggabungkan isi data](https://www.tutorialspoint.com/mysql/mysql-concat-function.htm)
- [Tutorialspoint: WHERE - Memfilter record hasil SELECT, FROM berdasarkan operator kondisi](https://www.tutorialspoint.com/mysql/mysql-where-clause.htm)
  - [Tutorialspoint: LIKE - Membandingkan bagian dari string](https://www.tutorialspoint.com/mysql/mysql-like-clause.htm)
  - [Tutorialspoint: IN - Menjadi bagian dari array](https://www.tutorialspoint.com/mysql/mysql-in-clause.htm)
- [Tutorialspoint: ORDER BY - Mengurutkan hasil berdasarkan atribut](https://www.tutorialspoint.com/mysql/mysql-like-clause.htm)
- [Tutorialspoint: GROUP BY - Mengelompokan record berdasarkan kondisi atribut tertentu, operasi berbasis grup](https://www.tutorialspoint.com/mysql/mysql-group-by-clause.htm)
  
  Tentukan dahulu insight / pengetahuan agregat yang ingin didapatkan
  
  - [Tutorialspoint: SUM](https://www.tutorialspoint.com/mysql/mysql_aggregate_functions_sum.htm)
    ```sql
    SELECT
      "Jawa Barat" AS provinsi,
      kode_kabupaten,
        COUNT(*) AS jumlah_penduduk,
        (
          /* Menjumlahkan tiap nilai 1 atau 0 dari tiap record */
          SUM(
            /* Untuk tiap record, kalau gendernya M hitung 1 selain itu 0 */
            CASE WHEN gender="M" THEN 1 ELSE 0 END
          )
        ) AS jumlah_penduduk_pria,
        (
          /* Menjumlahkan tiap nilai 1 atau 0 dari tiap record */
          SUM(
            /* Untuk tiap record, kalau gendernya M hitung 1 selain itu 0 */
            CASE WHEN gender="F" THEN 1 ELSE 0 END
          )
        ) AS jumlah_penduduk_wanita
    FROM penduduk
    GROUP BY kode_kabupaten
    ```
  - [Tutorialspoint: COUNT](https://www.tutorialspoint.com/mysql/mysql_aggregate_functions_count.htm)
  - [Tutorialspoint: AVERAGE](https://www.tutorialspoint.com/mysql/mysql_aggregate_functions_avg.htm)
  - [Tutorialspoint: MIN MAX](https://www.tutorialspoint.com/mysql/mysql_aggregate_functions_min.htm)
- [Tutorialspoint: CASE - Memfilter berdasarkan kasus tertentu](https://www.tutorialspoint.com/mysql/mysql_case_statement.htm)
- [Tutorialspoint: JOIN - Menggabungkan lebih dari satu tabel dengan kondisi tertentu](https://www.tutorialspoint.com/mysql/mysql-using-joins.htm)
  - INNER
    ```sql
    /* nama penduduk dan nama kabupaten nya + umur */
    select
      p.nama_lengkap,
        p.kode_kabupaten,
        kk.deskripsi AS kabupaten,
        p.tanggal_lahir
    FROM penduduk p
    INNER JOIN kode_kabupaten kk 
    ON p.kode_kabupaten = kk.kode
    ```
  - OUTER
  - LEFT
  - RIGHT
- Alias
  - Nama tabel
    ```sql
    SELECT p.kode_kabupaten, p.nama_lengkap FROM penduduk p
    ORDER BY p.kode_kabupaten DESC, p.nama_lengkap
    ```
  - Nama kolom
    ```sql
    SELECT nama_lengkap AS nama FROM penduduk
    ```
- [Tutorialspoint: Subquery](https://www.tutorialspoint.com/Subquery-in-SQL)
  ```sql
  SELECT tb.kode_kabupaten, tb.jumlah_penduduk FROM (
    SELECT
        "Jawa Barat" AS provinsi,
        kode_kabupaten,
        COUNT(*) AS jumlah_penduduk,
        (
          /* Menjumlahkan tiap nilai 1 atau 0 dari tiap record */
          SUM(
            /* Untuk tiap record, kalau gendernya M hitung 1 selain itu 0 */
            CASE WHEN gender="M" THEN 1 ELSE 0 END
          )
        ) AS jumlah_penduduk_pria,
        (
          /* Menjumlahkan tiap nilai 1 atau 0 dari tiap record */
          SUM(
            /* Untuk tiap record, kalau gendernya M hitung 1 selain itu 0 */
            CASE WHEN gender="F" THEN 1 ELSE 0 END
          )
        ) AS jumlah_penduduk_wanita
    FROM penduduk
    GROUP BY kode_kabupaten
  ) AS tb
  ```

### Lain Lain
- [Tutorialspoint: NULL - Ketiadaan data](https://www.tutorialspoint.com/mysql/mysql-null-values.htm)
- [Tutorialspoint: Regex - Ketiadaan data](https://www.tutorialspoint.com/mysql/mysql-regexps.htm)
- [MySQL.com: Built in functions, fungsi2 tambahan yang kepake](https://dev.mysql.com/doc/refman/8.0/en/built-in-function-reference.html)

## Tugas
- Buat infografik / cheatsheet dari perintah-perintah MySQL di atas (boleh yang mau pake PostgreSQL)
- Buat query untuk mencari penduduk berusia diatas 25 tahun yang berada di kabupaten 3204 dari [data ini](https://github.com/insanalamin/IF214002/blob/main/pertemuan10/penduduk.sql)
- Nilai tambah, untuk yang menambahkan perintah-perintah MySQL lainnya
