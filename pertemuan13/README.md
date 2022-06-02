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

[Data contoh untuk transaction](https://github.com/insanalamin/IF214002/tree/main/pertemuan13/transaction-ddl.sql)

## Materi Terkait
- [Tutorialspoint - DBMS - Transaction](https://www.tutorialspoint.com/dbms/dbms_transaction.htm)
- [W3schools - DBMS - Transaction](https://www.w3schools.in/dbms/transaction)
- [ACID Explained: Atomic, Consistent, Isolated & Durable](https://www.bmc.com/blogs/acid-atomic-consistent-isolated-durable/)
- [Transaction Management in DBMS: What are ACID Properties?](https://www.guru99.com/dbms-transaction-management.html)
- [Mengenal Konsep Database Transaction — Bagian 1](https://medium.com/gits-apps-insight/mengenal-konsep-database-transaction-bagian-1-54e66789f75e)
- [MySQL Beginner Course: Chapter 10 - Transactions](https://www.youtube.com/watch?v=WO_VNMUuGoU)
- [ACID Properties in DBMS](https://www.geeksforgeeks.org/acid-properties-in-dbms/)
