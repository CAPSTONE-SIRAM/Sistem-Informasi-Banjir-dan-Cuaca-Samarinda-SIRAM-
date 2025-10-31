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
- Menu Utama: Halaman awal sistem setelah login, sebagai titik navigasi ke fungsi-utama: pendaftaran, admin, user. Memfasilitasi pemilihan jalur sesuai peran (Admin atau User).
  
- Registrasi: Digunakan untuk membuat akun baru sebagai User (atau potensi Admin jika dibuka). Data user dikumpulkan untuk autentikasi, lalu diarahkan ke Menu User setelah aktif.
  
- Menu Admin: Akses khusus bagi peran Admin yang telah berhasil login. Menyediakan kontrol dan manajemen terhadap komponen sistem.
  
- Kelola Info Cuaca: Sub-menu di bawah Menu Admin. Admin dapat melakukan input, edit, atau hapus informasi cuaca yang kemudian ditampilkan ke pengguna.
  
- Kelola Laporan User: Sub-menu lain di bawah Menu Admin. Admin meninjau laporan yang disampaikan oleh user (misalnya terkait kondisi, feedback, atau kejadian), kemudian mengambil tindakan ataupun memberi respon.
  
- Menu User: Halaman utama bagi User setelah login/registrasi. User dapat melihat laporan yang dibuat oleh user lain serta tindak lanjut dari admin serta melihat info cuaca yang sudah dikelola Admin serta mengirim laporan ke sistem (yang kemudian akan muncul di “Kelola Laporan User”).

# PENERAPAN 5 PILAR OOP
- Encapsulation

<img width="1211" height="825" alt="image" src="https://github.com/user-attachments/assets/846682f8-ef83-4dd8-bfb2-1aa2668ea5a5" />

- Inheritance

<img width="666" height="263" alt="image" src="https://github.com/user-attachments/assets/0d735785-eca4-496c-ad89-08ee15e41391" />

<img width="665" height="233" alt="image" src="https://github.com/user-attachments/assets/71220383-391d-4cae-848c-1bf6c1c6bb62" />

<img width="649" height="221" alt="image" src="https://github.com/user-attachments/assets/687e55c8-c28a-4a80-a19b-c20906394553" />

- Abstraction

<img width="666" height="263" alt="image" src="https://github.com/user-attachments/assets/0d735785-eca4-496c-ad89-08ee15e41391" />

<img width="636" height="58" alt="image" src="https://github.com/user-attachments/assets/c5cf4cc6-54fe-42b3-b9ee-c0f6aa0296db" />


- Polymorphism

<img width="1060" height="712" alt="image" src="https://github.com/user-attachments/assets/edd469e9-a5e4-4e3e-a87b-fdd47d7d55d6" />

- Interface

<img width="404" height="313" alt="image" src="https://github.com/user-attachments/assets/e16648ec-a266-40cd-a6b2-c031048d8c55" />


# PENJELASAN STRUKTUR PACKAGES
<img width="637" height="682" alt="image" src="https://github.com/user-attachments/assets/59f757f5-87db-4fd3-b514-49e64f205939" />


- Koneksi 
- Model 
- Main 

# PENERAPAN NILAI TAMBAHAN
-  Menerapkan struktur MVC
-  Mengimplementasikan framework ORM

# CARA MENGGUNAKAN PROGRAM
<img width="1182" height="891" alt="image" src="https://github.com/user-attachments/assets/ec5b3863-544c-4929-b3aa-d00a072b05a3" />



<img width="1203" height="946" alt="image" src="https://github.com/user-attachments/assets/273ba9b8-2721-4934-b3b4-680f351959a2" />


<img width="1180" height="888" alt="image" src="https://github.com/user-attachments/assets/c2e312d6-cb53-4a86-b795-e9298159c896" />



<img width="1203" height="946" alt="image" src="https://github.com/user-attachments/assets/9129d8ce-7c2e-4737-b76c-d50d8c3a1c3a" />
