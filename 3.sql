SELECT 
    p.nama AS nama_pelanggan, 
    SUM(dp.jumlah * pr.harga) AS total_pengeluaran
FROM detail_pesanan dp
JOIN pelanggan p ON dp.id_pelanggan = p.id_pelanggan
JOIN produk pr ON dp.id_produk = pr.id_produk
WHERE dp.jumlah > 0
GROUP BY p.nama;
