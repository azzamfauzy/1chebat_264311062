select * from pelanggan;

insert into pelanggan (nama, email) values
('satria kartika', 'satria@gmail.com'),
('adam cesta', 'adam@gmail.com'),
('nabil hamdan', 'nabil@gmail.com');

INSERT INTO produk (nama_produk, harga) VALUES
('tas eiger', 120000.00),
('sepatu ortuseight', 85000.00),
('helm kyt', 45000.00);

INSERT INTO detail_pesanan (id_pelanggan, id_produk, jumlah) VALUES
(1, 1, 2), 
(2, 2, 1), 
(3, 3, 3); 

SELECT * FROM pelanggan;

UPDATE detail_pesanan 
SET jumlah = 5 
WHERE id_item_pesanan = 1;

DELETE FROM detail_pesanan 
WHERE id_item_pesanan = 3;
