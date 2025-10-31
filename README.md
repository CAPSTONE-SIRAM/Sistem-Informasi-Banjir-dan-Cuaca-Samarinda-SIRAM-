# Sistem-Informasi-Banjir-dan-Cuaca-Samarinda-SIRAM
## Anggota Kelompok
- Dwi Pebriyanto Pradana 2409116012
- Najmi Hafizh Mauludan Zain 2409116028
- Rizqy 2409116039
- Jemis Movid 2409116070

# PROGRAM SISTEM INFORMASI BANJIR DAN CUACA SAMARINDA (SIRAM)

Perubahan iklim kini semakin terasa di Samarinda. Cuaca yang tidak menentu membuat hujan deras sering turun terus-menerus hingga menyebabkan banjir di berbagai wilayah. Kondisi ini dapat menghambat banyak aktivitas masyarakat. Masalah banjir sendiri sudah menjadi hal yang umum setiap musim hujan, terutama karena curah hujan yang makin tinggi serta berkurangnya daerah resapan air akibat pembangunan yang terus meningkat.

Peristiwa ini menunjukkan bahwa dampak perubahan iklim sudah nyata di sekitar kita. Melalui tema “Climate Action” dari SDGs, penting bagi kita untuk memahami penyebab dan dampak perubahan iklim, terutama yang berkaitan dengan curah hujan ekstrem di Samarinda. Dengan begitu, masyarakat diharapkan lebih sadar dan mau berperan aktif dalam upaya mitigasi dan adaptasi agar lingkungan tetap aman, nyaman, dan berkelanjutan untuk ditinggali.

# FLOWCHART DAN USE CASE DIAGRAM
## Flowchart
<details>
  <summary>1. Flowchart Menu Utama</summary>
  <img src="https://github.com/user-attachments/assets/1e8301a3-bea2-4e11-955a-f03f825e55f6"alt="">
</details>

<details>
  <summary>2. Flowchart Registrasi</summary>
  <img src="https://github.com/user-attachments/assets/8d257901-a0f0-4b10-97ec-f9fd852a019e"alt="">
</details>

<details>
  <summary>3. Flowchart Menu User</summary>
  <img src="https://github.com/user-attachments/assets/a93cfc0e-d44e-43a5-a521-6d7e60782548"alt="">
</details>

<details>
  <summary>4. Flowchart Menu Admin</summary>
  <img src="https://github.com/user-attachments/assets/6cc8df40-0a95-4c34-bc0c-f68f829aa728"alt="">
</details>

<details>
  <summary>5. Flowchart Kelola Info Cuaca</summary>
  <img src="https://github.com/user-attachments/assets/40a34d04-54c5-4362-80a5-d25a6bee9a15"alt="">
</details>

<details>
  <summary>6. Flowchart Kelola Laporan Banjir</summary>
  <img src="https://github.com/user-attachments/assets/9b758519-8a50-4380-92b2-9dcf86a50b1b"alt="">
</details>

<details>
  <summary>7. Flowchart Tindak Lanjut</summary>
  <img src="https://github.com/user-attachments/assets/42f12114-68ab-48b9-ba80-48889c7ea711"alt="">
</details>

## Use Case Diagram
<details>
  <summary>Use Case Diagram SIRAM</summary>
  <img src="https://github.com/user-attachments/assets/9cecfa4c-c6df-4760-ac14-6cc564a77b21"alt="">
</details>

# FITUR-FITUR PROGRAM
- Sistem login: sebagai titik navigasi ke fungsi-utama, Memfasilitasi pemilihan jalur sesuai peran (Admin atau User).
  
- Registrasi: Digunakan untuk membuat akun baru sebagai User. Data user dikumpulkan untuk autentikasi, lalu diarahkan ke Menu User setelah aktif.
  
- Menu User: Halaman utama bagi User setelah login/registrasi. User dapat melihat laporan banjir yang dibuat oleh user lain kemudian tindak lanjut dari admin. uer juga dapat melihat info cuaca yang sudah dikelola Admin serta mengirim laporan banjir sebagai informasi ke user lain.
  
- filter Cuaca Sesuai Jenisnya : Pada menu informasi cuaca program memisahkan informasi cuaca berdasarkan cuaca hujan dan cuaca panas sehingga memudahkan user dan memberikan tampilan yang menarik.

- Laporan menampilkan gambar: Dengan adanya fitur laporan banjir user lain dapat terbantu mendapatkan informasi banjir, serta di permudah dengan adanya fitur lihat foto pada setiap laporan.
  
- Menu Admin: Akses khusus bagi peran Admin yang telah berhasil login. Menyediakan kontrol dan manajemen terhadap komponen sistem.
  
- Kelola Info Cuaca: Admin dapat melakukan input, edit, atau hapus informasi cuaca yang kemudian ditampilkan ke pengguna untuk mereka mendapatkan informasi cuaca.
  
- Kelola Laporan Banjir: Admin melihat laporan banjir yang disampaikan oleh user, kemudian admin dapat mengambil tindakan ataupun memberi respon terhadapat laporan user.

# PENERAPAN 5 PILAR OOP
### Encapsulation
Konsep membungkus data sensitif berupa property atau method dalam sebuah class agar terlindungi dari akses class lain. Untuk mengakses class tersebut, harus menetapkan modifier ‘private’ pada property terlebih dahulu, kemudian data bisa diakses melalui method getter (penginisialisasian)/setter (pengaksesan) yang bersifat ‘public’.
contohnya:

<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/846682f8-ef83-4dd8-bfb2-1aa2668ea5a5" />


<img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/4bdfd981-f010-42f7-a095-f58dfbb49815" />

Pada class Users, encapsulation diterapkan dengan menjadikan atribut username, nama_lengkap, email dll bersifat private kemudian diakses melalui method getter dan setter.
Hal ini menjaga keamanan data pengguna serta membuat struktur kode lebih teratur dan mudah dikelola.

### Inheritance
Inheritance merupakan salah satu pilar utama dalam Pemrograman Berorientasi Objek yang memungkinkan suatu class (child) mewarisi property dan method dari class  lain (parent). Inheritance membantu mengurangi penulisan kode secara berulang  (mengurangi redundancy kode). Sebuah kelas (superclass) dapat mewariskan property dan method kepada kelas-kelas turunannya (subclass). Artinya, subclass dapat menggunakan kembali property dan method dari superclass, serta dapat menambahkan property dan method baru atau mengubah perilaku yang sudah ada.

<img width="666" height="263" alt="image" src="https://github.com/user-attachments/assets/0d735785-eca4-496c-ad89-08ee15e41391" />

Class Cuaca dibuat sebagai class abstrak yang menyimpan atribut umum dari semua jenis cuaca, yaitu:

- idCuaca sebagai identitas data cuaca.
- tanggal sebagai waktu pencatatan.

Karena bersifat abstrak, class ini tidak dapat dibuat objek secara langsung, tetapi dapat diwariskan oleh class lain.

<img width="665" height="233" alt="image" src="https://github.com/user-attachments/assets/71220383-391d-4cae-848c-1bf6c1c6bb62" />

Class CuacaHujan mewarisi atribut idCuaca dan tanggal dari class Cuaca.
Selain itu, class ini menambahkan atribut khusus untuk cuaca hujan, yaitu:

- curahHujan
- potensiBanjir

<img width="649" height="221" alt="image" src="https://github.com/user-attachments/assets/687e55c8-c28a-4a80-a19b-c20906394553" />

Sama seperti CuacaHujan, class CuacaPanas juga mewarisi atribut umum dari Cuaca, dan menambahkan atribut khusus untuk kondisi cuaca panas:

- indeksUV
- levelPanas

### Abstraction
Abstraksi berarti hanya menaruh karakteristik-karakteristik yang diperlukan oleh sebuah kelas tanpa harus menampilkan detail dari karakteristik tersebut. Dalam abstraction menggunakan abstract class yang merukan kelas abtrak digunakan untuk menentukan karakteristik dari sebuah kelas. Abstract class tidak bisa dibuat menjadi obek secara langsung harus diwariskan.

<img width="666" height="263" alt="image" src="https://github.com/user-attachments/assets/0d735785-eca4-496c-ad89-08ee15e41391" />

<img width="636" height="58" alt="image" src="https://github.com/user-attachments/assets/c5cf4cc6-54fe-42b3-b9ee-c0f6aa0296db" />

Abstraction pada class Cuaca digunakan untuk menyederhanakan struktur data cuaca dengan hanya menampilkan atribut dan method dasar, sementara detail implementasinya diatur oleh subclass CuacaHujan dan CuacaPanas.

### Polymorphism

<img width="1060" height="712" alt="image" src="https://github.com/user-attachments/assets/edd469e9-a5e4-4e3e-a87b-fdd47d7d55d6" />

Polymorphism diterapkan pada method tampil() yang dioverride dari class abstrak Cuaca. Setiap subclass seperti CuacaHujan dan CuacaPanas memiliki implementasi tampil() sendiri, sehingga sistem dapat menampilkan data sesuai jenis cuaca tanpa mengubah struktur utama.

### Interface

<img width="404" height="313" alt="image" src="https://github.com/user-attachments/assets/e16648ec-a266-40cd-a6b2-c031048d8c55" />

Interface CuacaDAO digunakan sebagai blueprint operasi database cuaca seperti insert, update, delete, dan get. Dengan interface ini, sistem menjadi lebih fleksibel karena implementasi akses data dapat diubah tanpa mempengaruhi logika utama aplikasi.

# PENJELASAN STRUKTUR PACKAGES
<img width="637" height="682" alt="image" src="https://github.com/user-attachments/assets/59f757f5-87db-4fd3-b514-49e64f205939" />

### 1. Source Packages

Bagian ini berisi seluruh kode utama program. Di dalamnya terdapat beberapa package yang memiliki fungsi berbeda namun saling berkaitan.

- Control
Package ini berfungsi sebagai pengatur alur logika program antara tampilan dan data. Class yang ada di dalamnya mengelola proses seperti login, input laporan, validasi data, dan komunikasi antara antarmuka pengguna dengan database.

- GUI
Package ini berisi komponen tampilan antarmuka yang digunakan oleh pengguna. Seluruh halaman seperti menu utama, form login, registrasi, menu admin, dan menu user terdapat di dalam bagian ini.

- Koneksi
Package ini bertugas mengatur koneksi antara aplikasi dengan database. Di dalamnya terdapat class yang mengatur konfigurasi driver dan koneksi menggunakan framework Hibernate.

- Model
Package ini menyimpan class-class yang merepresentasikan data atau entitas yang ada di dalam database, seperti User, Laporan, Cuaca, dan Daerah. Bagian ini menangani proses pengolahan data seperti penyimpanan, pembaruan, penghapusan, dan pengambilan data (CRUD).

- Util
Package ini berfungsi sebagai penyedia class pendukung atau helper yang membantu proses kerja aplikasi, misalnya pengaturan format, validasi input, atau fungsi tambahan lain yang digunakan di berbagai bagian program.

### 2. Test Packages

Bagian ini digunakan untuk menyimpan file pengujian atau testing terhadap fungsi-fungsi program. Tujuannya adalah memastikan bahwa setiap fitur utama dalam aplikasi dapat berjalan sesuai dengan kebutuhan dan bebas dari error.

### 3. Other Sources

Terdapat file hibernate.cfg.xml yang digunakan sebagai konfigurasi Hibernate, meliputi pengaturan nama database, username, password, serta driver koneksi. Selain itu, terdapat juga folder Logo yang berisi aset gambar yang digunakan dalam tampilan antarmuka (GUI).
  
### 4. Dependencies

Bagian ini berisi library eksternal (file .jar) yang dibutuhkan agar program dapat berjalan dengan baik, di antaranya:

- hibernate-core yang digunakan untuk menghubungkan objek Java dengan database melalui konsep ORM.
  
- mysql-connector-j untuk menghubungkan aplikasi dengan database MySQL.
  
- jakarta.persistence-api dan jakarta.transaction-api untuk mendukung proses transaksi dan penyimpanan data.
  
- AbsoluteLayout untuk membantu pengaturan tata letak tampilan antarmuka / GUI.
  
- protobuf-java yang berfungsi dalam pengolahan data tambahan.

# PENERAPAN NILAI TAMBAHAN
-  Menerapkan struktur MVC
-  Mengimplementasikan framework ORM

# CARA MENGGUNAKAN PROGRAM
<img width="1182" height="891" alt="image" src="https://github.com/user-attachments/assets/ec5b3863-544c-4929-b3aa-d00a072b05a3" />

Halaman login digunakan untuk autentikasi pengguna sebelum mengakses sistem SIRAM. Pengguna dapat masuk menggunakan email atau username, dan jika belum memiliki akun dapat melakukan registrasi melalui menu ‘Buat Akun’.

<img width="1203" height="946" alt="image" src="https://github.com/user-attachments/assets/273ba9b8-2721-4934-b3b4-680f351959a2" />

Halaman Buat Akun digunakan untuk proses registrasi pengguna baru pada aplikasi SIRAM. Pengguna mengisi data pribadi seperti nama, email, nomor HP, username, dan password. Setelah data tervalidasi, sistem menyimpan informasi tersebut ke database agar pengguna dapat melakukan login ke dalam sistem.

<img width="1180" height="888" alt="image" src="https://github.com/user-attachments/assets/c2e312d6-cb53-4a86-b795-e9298159c896" />

Halaman login digunakan untuk autentikasi pengguna pada aplikasi SIRAM. Pengguna memasukkan username/email dan password untuk mengakses sistem. Jika login berhasil, sistem menampilkan pesan sambutan dan mengarahkan pengguna ke dashboard utama.

<img width="1203" height="946" alt="image" src="https://github.com/user-attachments/assets/9129d8ce-7c2e-4737-b76c-d50d8c3a1c3a" />

Halaman dashboard merupakan tampilan utama bagi pengguna setelah berhasil login ke aplikasi SIRAM. Pengguna dapat melihat informasi cuaca terkini melalui menu Info Cuaca atau melaporkan kondisi banjir melalui menu Laporan Banjir. Disediakan juga tombol Logout untuk keluar dari akun.
