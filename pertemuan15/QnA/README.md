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
- Bisa via terminal, curl PROTOKOL ALAMAT_WEB/PATH DATA : curl POST google.com/search masakan yang tidak sedap tapi menyehatkan
- Bisa via aplikasi yang udah jadi dibuat orang lain : Minta jemput driver via Gojek
  - HTTP REQUEST nya udah ada di dalem aplikasi Gojek
- Bisa via library / function di bahasa pemrograman, ketika kita mau bikin aplikasi yang bisa melakukan HTTP REQUEST, javascript, php, go, rust, python, r, dsb.

## 8 Apa itu client app ? Web, mobile, desktop, IoT ? Cara instalasinya gimana aja ?
- Aplikasi di sisi client yang melakukan interaksi dengan server
- Client app ini ada yang:
  - Executable program di operating system. Photoshop, Office 365
  - Web App, si penumpang Executable Browser. Browser, baca script HTML CSS Javascript WASM, kemudian menginterpretasikannya jadi tampilan / user interface, fungsi2, dan request2 ke server
  - Mobile app, bisa executable program, numpang ke virtual machine di OS mobile phone nya. Melakukan request ke server seusai maunya apa. Bisa request posisi Hero musuh Mobile Legend terbaru, bisa status Whatsapp orang terbaru, dsb.
  - IoT app, bisa executable program ataupun script yang diinterpretasi Executable interpreter kayak Python

# 9 Apa itu web page, web app ? executable kah, atau format data untuk dibaca dan dijalankan browser kah ? bolehkah web page / app tidak merequest data lagi ke server ? apakah web page / app memiliki data ? Dengan apa web app ditulis ?
- Ada tampilannya
- Format data (HTML CSS Javascript) untuk dibaca dan dijalankan browser untuk kemudian ditampilkan ke user
- Web page (kalo isinya cuma halaman berisi informasi), Web app (kalo isinya aplikasi fungsi tertentu yang bisa punya data atau tidak)
- Ketika kita buka Github.com, itu kita meminta / mendownload format data HTML CSS Javascript ke client, untuk dibaca browsernya client
  - Ketika web page Github.com sudah ada di client, dan dibaca browser, web page tersebut bisa merequest data ke web servernya Github.com

# 10 Apa itu mobile app ? dimana mobile app berada ? apa kesamaan mobile app dengan web app, desktop app ?
- Aplikasi yang dijalankan di mobile device, bisa Executable, ataupun dijalankan virtual machine / interpreter
- Biasanya diinstall dulu / dipasang dulu di mobile device nya
- Kesamaan dengan web, desktop dan IoT, sama2 punya user interface, sama2 bisa ngejalanin fungsi2 / logika2, sama2 bisa request data ke web server

# 11 Apa itu web service ? 
- Menyediakan dan menerima REQUEST dari client
- Hanya mengirimkan RESPONSE data, tidak ada user interfacenya
- Contoh format RESPONSE yg paling umum sekarang JSON, ada juga XML
- Web service ini, nempel di Web Server
- Di web server bisa ada web service, bisa ada file statik (mp3, jpg) / dinamis (web app)

# 12 Jadi, apa beda web app dengan web service ?
- Web service fokus ke komunikasi data tanpa user interface
- Sangat umum digunakan untuk integrasi data, dan aplikasi multi platform berbasis web. Contoh
  - Aplikasi Spotify, web, desktop executable, ataupun mobile, mengakses web service yang sama, web servicenya spotify untuk minta data lagu terbaru, dapetin playlist, dsb.
  - Aplikasi2 ala super app kayak Gojek, Tokopedia, Shopee, dsb. di servernya melakukan banyak integrasi ke macem2 web service pihak ke 3 contohnya ke web service nya Bank atau Payment Gateway atau webservice Paypal
  - Aplikasi kementerian mengakses web service nya provinsi provinsi dan kabupaten kota untuk integrasi data (menarik data) secara real time
  - Web service umum untuk komunikasi dengan sesamanya

# 13 Apa itu CRUD GUI ?
- User interface untuk Create Read Update Delete data, data nya bisa ada di:
  - **Database di cloud via web service**
  - Device client nya sendiri (browser, mobile phone)
