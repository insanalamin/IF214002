# QnA Pemahaman Dasar Web Service

## 1 Keberadaan program di komputer : executable program, executable virtual machine, executable interpreter
- Ujung2nya, program komputer yang dieksekusi. Komputasi dan pengelolaan data. Compute & Storage.
- Exct. program (Bisa dibuat pake bahasa C, C++, Go, Rust, Crystal)
  - Bahasa pemrograman dikompilasi oleh **Exct. compiler** langsung jadi executable yang bisa dijalankan
  - Hasilnya, hampir seluruh program berbasis terminal ataupun GUI yang umum digunakan
    - terminal: converter, extractor, monitoring OS, database, interpreter, vm
    - Exct. Database (MySQL, PostgreSQL, SQL Server, MongoDB, Redis)
    - **Exct. Interpreter** bahasa pemrograman (PHP, Python, Ruby, Javascript, Matlab)
      - Si interpreter baca & eksekusi script pemrogramannya
      - Cara panggil interpreternya di terminal : python, php, node
    - **Exct. virtual machine** (Java, Scala, Kotlin, Erlang, Elixir)
      - Si virtual machine baca & eksekusi script yang udah dikompilasi
      - Cara panggil interpreternya di terminal : java
    - Exct. GUI (Exct. microsoft office, Exct. Photoshop, Dbeaver)     

## 2 Environment variable for executables. dimana lokasi executable mu
- Di komputer, ada variabel yang bisa diakses dari mana aja, salah satu fungsinya, memudahkan mencari lokasi executable, agar dapat dipanggil dari mana saja
- Contoh nama variabel di Environment Variable operating system:
  - path, JAVA_HOME, TMP="/haha;/hohoho", RUJAK_CINGUR=4, HADIAH_BUATMU=https://hadiah.mu
- Yang digunakan untuk menentukan lokasi folder / executable program adalah path (Windows), $PATH (Linux)
  - Windows path: "C:/Program Files/Mobile Legend; D:/TUGAS"
    - Misal Exct. nodejs ada di D:/TUGAS/node.exe, berati "D:/TUGAS" didaftarin ke path biar si node.exe, bisa dipanggil dari mana aja
  - Linux path: "/usr/bin;/home/Rifky/aplikasi/game"

## 3 Port. listening to port vs without port. port as communication channel
- Jalur untuk komunikasi layanan berupa nomer dari 1 - 65 ribuan
- Bisa untuk lintas komputer / server
- Secara default, port itu ga dipake. Contoh port 9999, selama ga ada program yang dengerin port itu untuk nangkep dan kirim komunikasi, ya port itu ga kepake
- Kalo port 9999 udah dipake untuk misal, Executable PESEN BAJIGUR, Executable lain ga bisa ikut nangkring di port itu
- Kalo alamat executable bisa pindah2 dan hanya bisa diakses oleh satu server. Kalo port, bisa diakses dari server lainnya, memudahkan pengenalan alamat, contoh 3306 umum dipake untuk layanan MySQL
  - Pake program via Executable vs via Port
    - C:/program/rafi_multi_converter.exe D:/daftar_gaji.csv E:/daftar_gaji.json
    - Dari komputernya Rizal yg kekonteksi via wifi dengan komputer Rafi, rizal request POST ke http://IP_RAFI:**8765**/csv_to_json ngirim file D:/daftar_gaji.csv

## 4 Client - Server terminology
- Client itu komputer yang minta data ke Server
- Server itu komputer yang nyediain data sesuai permintaan Client
- Client dan Server umumnya ada di alamat jaringan yang berbeda
  - Server facebook, diakses oleh milyaran aplikasi client di web ataupun mobile
  - Server gojek, diakses oleh jutaan pengguna aplikasi client Gojek
    - Norma pake aplikasi client Gojek a.k.a Gojek for Android, untuk minta jemput dari BIP ke Stasiun Kereta Gantung Lembang, request dikirim ke Server Gojek via protokol HTTP POST 
- Bisa juga di alamat jaringan yang sama atau misalnya di satu komputer
  - Romi develop web service Python di laptop Romi, yang request ke database PostgreSQL di port 5432 di laptop Romi
- Aplikasi Client ini bisa berupa smartphone, Laptop, komputer kantor, server lain, device IoT
- Aplikasi Server bisa eksplor segala hal yang ada di servernya demi menyediakan data yang diminta
  - Minta data dari database
  - Hapus data dari folder tertentu
  - Ambil statistik kinerja server buat dikirim ke client
  - Menginstall program di server (banyak dipake di cloud service)

## 5 Web server, executable fasilitator permintaan data dari client
- Executable / program yang memfasilitasi permintaan data dari client
- Protokol komunikasinya bisa macem2, yang paling umum HTTP

## 6 Protokol komunikasi HTTP. http client vs http server
- Salah satu format komunikasi client server
- Ketika client minta sesuatu ke server, istilahnya HTTP REQUEST, punya format sendiri.
  Method umum yang digunakan GET, POST, PUT, DELETE
  - Contoh GET : Tiap hari kita gunakan tiap buka informasi dari aplikasi berbasis web
    - Buka IG postingan terbaru, Googling
  - Contoh POST : Tiap kita posting status di IG, Facebook, Whatsapp

## 7 Cara interaksi Client ke Server dengan HTTP REQUEST
- Bisa via terminal, curl <PROTOKOL> <ALAMAT_WEB>/<PATH> <DATA> : curl POST google.com/search "masakan yang tidak sedap tapi menyehatkan"
- Bisa via aplikasi yang udah jadi dibuat orang lain : Minta jemput driver via Gojek
  - HTTP REQUEST nya udah ada di dalem aplikasi Gojek
- Bisa via library / function di bahasa pemrograman, ketika kita mau bikin aplikasi yang bisa melakukan HTTP REQUEST, javascript, php, go, rust, python, r, dsb.

## Apa itu client app ? Web, mobile, desktop, IoT ? Cara instalasinya gimana aja ?
- Apa itu web page, web app ? executable kah, atau format data untuk dibaca dan dijalankan browser kah ? bolehkah web page / app tidak merequest data lagi ke server ? apakah web page / app memiliki data ? Dengan apa web app ditulis ?
- apa itu mobile app ? dimana mobile app berada ? apa kesamaan mobile app dengan web app, desktop app ?
- apa itu web service ? 
- jadi, apa beda web app dengan web service ?
- apa itu CRUD gui ?
