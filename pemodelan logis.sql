TAHAP 2: PEMODELAN LOGIS:
1. Unnormalized Form (UNF)
Semua data transaksi dicatat akan menumpuk dalam satu format yang besar:
Transaksi (No_Nota, Id_Pelanggan, Nama, Email, Tanggal, Status_Bayar, Kota_Tujuan, Ongkos_Kirim, Id_Produk, Nama_Produk, Harga, Jumlah)

2. First Normal Form (1NF)
Memastikan semua nilai data bernilai tunggal (atomic value) atau tidak ada data yang multivalue:
Transaksi_1NF (No_Nota, Id_Produk, Id_Pelanggan, Nama, Email, Tanggal, Status_Bayar, Kota_Tujuan, Ongkos_Kirim, Nama_Produk, Harga, Jumlah)

3. Second Normal Form (2NF)
Memisahkan data berdasarkan ketergantungan penuh pada Kunci Utama, namun masih menyisakan masalah ketergantungan transitif antara kota dan ongkir:
•	Tabel Pelanggan ➔ (Id_Pelanggan, Nama, Email)
•	Tabel Produk ➔ (Id_Produk, Nama_Produk, Harga)
•	Tabel Detail Transaksi ➔ (No_Nota, Id_Produk, Jumlah)
•	Tabel Transaksi ➔ (No_Nota, Id_Pelanggan, Tanggal, Status_Bayar, Kota_Tujuan, Ongkos_Kirim)

4. Third Normal Form (3NF) 
Menghilangkan ketergantungan transitif dengan membuat tabel wilayah tersendiri:
•	Tabel Pelanggan ➔ (id_pelanggan, nama, email)
•	Tabel Produk ➔ (id_produk, nama_produk, harga)
•	Tabel Wilayah_Ongkir ➔ (id_ongkir, kota_tujuan, ongkos_kirim)
•	Tabel Pesanan ➔ (id_pesanan, id_pelanggan, id_ongkir, tanggal_pesanan, status_pembayaran)
•	Tabel Detail_Pesanan ➔ (id_detail, id_pesanan, id_produk, jumlah)
