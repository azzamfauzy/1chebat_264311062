CREATE database toko_online;
USE toko_online;

CREATE TABLE pelanggan (
    id_pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(150) NOT NULL,
    harga DECIMAL(12,2) NOT NULL CHECK (harga >= 0)
);

CREATE TABLE wilayah_ongkir (
    id_ongkir INT AUTO_INCREMENT PRIMARY KEY,
    kota_tujuan VARCHAR(100) NOT NULL UNIQUE,
    ongkos_kirim DECIMAL(12,2) NOT NULL CHECK (ongkos_kirim >= 0)
);

CREATE TABLE pesanan (
    id_pesanan INT AUTO_INCREMENT PRIMARY KEY,
    id_pelanggan INT NOT NULL,
    id_ongkir INT NOT NULL,
    tanggal_pesanan DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status_pembayaran VARCHAR(30) NOT NULL DEFAULT 'Belum Bayar',
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan) ON DELETE CASCADE,
    FOREIGN KEY (id_ongkir) REFERENCES wilayah_ongkir(id_ongkir)
);

CREATE TABLE detail_pesanan (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_pesanan INT NOT NULL,
    id_produk INT NOT NULL,
    jumlah INT NOT NULL CHECK (jumlah > 0),
    FOREIGN KEY (id_pesanan) REFERENCES pesanan(id_pesanan) ON DELETE CASCADE,
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);



