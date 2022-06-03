# Transaction

## Outline
- Definisi
- Alur kerja
  - Begin
  - Commit
  - Rollback
  - Savepoint
  - End
- Properti ACID
  - Atomicity
  - Consistency
  - Isolation
  - Durability

## Definisi
- rangkaian lebih dari satu perintah database
- yang dihitung sebagai satu unit proses kerja
- memenuhi sifat ACID
  - atomic : seluruh perintah berhasil, atau tidak sama sekali
  - consistency : transaksi tidak mengganggu integritas data di database
  - isolation : pemisahan urutan eksekusi antar transaksi yang berjalan hampir bersamaan
  - durability : jika seluruh operasi transaksi telah berhasil, data tersimpan permanen di disk

## Alur Kerja

## Properti ACID

## Implementasi Transaction Pada MySQL

**DDL & DML Sampel Data**
```sql
CREATE TABLE karyawan (
  id int primary key not null,
  nama varchar(80) not null,
  umur int not null,
  wilayah varchar(80) not null,
  gaji int not null,
  tabungan int not null
);

INSERT INTO karyawan(id, nama, umur, wilayah, gaji, tabungan)   
VALUES 
  (1, 'Yamrukon', 28, 'Astana Anyar', 2300000, 0),
  (2, 'Dimrasik', 26, 'Pondok Gede', 3400000, 0),
  (3, 'Acep Ahlan', 31, 'Cililitan', 1700000, 0),
  (4, 'Iti Garmindo', 29, 'Kadungora', 4500000, 0),
  (5, 'Dini Yaya', 23, 'Kandanghaur', 2800000, 0),
  (6, 'Irto Gantara', 53, 'Cihaurbeuti', 6300000, 0),
  (7, 'Graduat Angga', 44, 'Mandalawangi', 7100000, 0),
  (8, 'Eneng Encep Lingko', 32, 'Langkaplancar', 3300000, 0),
  (9, 'Visu Ali Zati', 45, 'Solokan Jeruk', 4100000, 0),
  (10, 'Burhan Su', 19, 'Pondok Genggong', 5200000, 0)
;  

```

**Transaction - Menambahkan Karyawan Baru Dengan Gaji Sama Dengan Gaji Tertinggi**
```sql
START TRANSACTION;

SELECT @gajitertinggi:= MAX(gaji) FROM karyawan;

INSERT INTO karyawan(id, nama, umur, wilayah, gaji)   
VALUES (11, 'Sulingkro', 23, 'Sumedang', @gajitertinggi);  

COMMIT;
```

```sql
START TRANSACTION;

INSERT INTO pembelian VALUES(1, 0);

INSERt INTO item_pembalian VALUES(1, 1, 400, 2);
INSERt INTO item_pembalian VALUES(2, 4, 600, 1);

SELECT @total_harga:= SUM(harga_satuan * jumlah) FROM item_pembalian;

UPDATE pembelian SET total_harga=@total_harga;

COMMIT;

CREATE TABLE pembelian (
	id int,
  	total_harga int
);

CREATE table item_pembalian (
	id_pembelian INT,
  	id_item INT,
  	harga_satuan,
  	jumlah INT
);
```

[Data contoh untuk transaction](https://github.com/insanalamin/IF214002/tree/main/pertemuan13/transaction-ddl.sql)

## Materi Terkait
- [Tutorialspoint - DBMS - Transaction](https://www.tutorialspoint.com/dbms/dbms_transaction.htm)
- [W3schools - DBMS - Transaction](https://www.w3schools.in/dbms/transaction)
- [Javapoint - MySQL Transaction](https://www.javatpoint.com/mysql-transaction)
- [ACID Explained: Atomic, Consistent, Isolated & Durable](https://www.bmc.com/blogs/acid-atomic-consistent-isolated-durable/)
- [Transaction Management in DBMS: What are ACID Properties?](https://www.guru99.com/dbms-transaction-management.html)
- [Mengenal Konsep Database Transaction — Bagian 1](https://medium.com/gits-apps-insight/mengenal-konsep-database-transaction-bagian-1-54e66789f75e)
- [MySQL Beginner Course: Chapter 10 - Transactions](https://www.youtube.com/watch?v=WO_VNMUuGoU)
- [ACID Properties in DBMS](https://www.geeksforgeeks.org/acid-properties-in-dbms/)
