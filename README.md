# Aplikasi Reservasi Hotel Sederhana

## 1. Judul Proyek dan Deskripsi Singkat

Aplikasi Reservasi Hotel Sederhana merupakan program berbasis bahasa pemrograman Pascal yang dirancang untuk mempermudah simulasi proses pemesanan kamar hotel dan pembayaran. Program ini memungkinkan pengguna melihat daftar tipe kamar dan harga, melakukan pemesanan kamar, menghitung total biaya beserta diskon, serta melakukan pembayaran dan memperoleh struk sebagai bukti transaksi.

Aplikasi ini dibuat sebagai proyek pembelajaran untuk menerapkan konsep dasar pemrograman Pascal, seperti variabel, percabangan, perulangan, array, record, dan operasi aritmetika.

## 2. Daftar Anggota Kelompok

1. Nama: [Axel Christian Drigo Simatupang]  
   NIM: [261401133]  
   KOM: [B]  
   Lab: [DP 4]

2. Nama: [Lailansufi Qubro Simatupang]  
   NIM: [261401100]  
   KOM: [B]  
   Lab: [DP 4]

3. Nama: [Fatih Khairunna Al]  
   NIM: [261401136]  
   KOM: [B]  
   Lab: [DP 4]

## 3. Fitur Utama Program dan Penjelasan Logika

### 3.1. Melihat Daftar Tipe Kamar dan Harga

Program menyediakan tiga tipe kamar hotel, yaitu Standard Room dengan harga Rp350.000 per malam, Deluxe Room dengan harga Rp600.000 per malam, dan Suite Room dengan harga Rp1.000.000 per malam.

Logika: Program menggunakan percabangan `case-of` untuk menentukan tipe kamar dan harga sesuai pilihan pengguna.

### 3.2. Pemesanan Kamar Hotel

Pengguna dapat memasukkan nama pemesan, memilih tipe kamar, dan menentukan jumlah malam menginap. Program mendukung hingga 100 pesanan dalam satu transaksi, sehingga pengguna dapat memesan beberapa kamar atau membuat beberapa pesanan sebelum melakukan pembayaran.

Logika: Program menggunakan struktur data `record` untuk menyimpan informasi setiap pesanan dan `array` untuk menampung seluruh data pesanan.

### 3.3. Validasi Input Pemesanan

Program memeriksa pilihan tipe kamar, jumlah malam menginap, dan jawaban pengguna ketika ditanya apakah ingin melakukan pemesanan kembali.

Logika: Perulangan `repeat-until` digunakan agar pengguna memasukkan data yang sesuai dengan ketentuan program sebelum melanjutkan proses.

### 3.4. Perhitungan Harga dan Diskon

Program menghitung total harga setiap pesanan berdasarkan harga kamar per malam dikalikan jumlah malam menginap. Pengguna mendapatkan diskon sebesar 15% apabila memesan kamar untuk lebih dari tiga malam.

Logika: Percabangan `if-then-else` digunakan untuk menentukan apakah pengguna memenuhi syarat mendapatkan diskon. Total tagihan dihitung dari total harga setelah dikurangi diskon.

### 3.5. Penjumlahan Seluruh Pesanan

Program menggabungkan seluruh biaya pemesanan dalam satu transaksi, termasuk total harga sebelum diskon, total diskon, dan total tagihan yang harus dibayar.

Logika: Setiap pesanan ditambahkan ke variabel akumulasi sehingga jumlah keseluruhan biaya dapat dihitung secara otomatis.

### 3.6. Pembuatan Struk Pemesanan

Program menampilkan struk yang berisi nama pemesan, tipe kamar, harga per malam, jumlah malam, total harga, diskon, dan subtotal setiap pesanan. Struk juga menampilkan jumlah pesanan serta total biaya keseluruhan.

Logika: Perulangan `for-to-do` digunakan untuk menampilkan seluruh data pesanan yang tersimpan dalam array.

### 3.7. Pembayaran dan Perhitungan Kembalian

Pengguna memasukkan jumlah uang yang akan dibayarkan sesuai dengan total tagihan. Jika uang yang dimasukkan belum mencukupi, program akan meminta pengguna memasukkan nominal pembayaran kembali. Jika pembayaran mencukupi, program menghitung jumlah kembalian secara otomatis.

Logika: Perulangan `repeat-until` memastikan uang yang dibayarkan tidak kurang dari total tagihan. Kembalian dihitung dengan mengurangi uang yang dibayarkan dengan total tagihan.

### 3.8. Bukti Pembayaran

Setelah pembayaran berhasil, program menampilkan bukti pembayaran yang memuat total tagihan, jumlah uang yang dibayarkan, jumlah kembalian, dan status pembayaran lunas.

Logika: Program menampilkan hasil perhitungan pembayaran setelah jumlah uang yang dimasukkan memenuhi total tagihan.

