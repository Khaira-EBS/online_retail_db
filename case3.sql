Melihat Kategori barang yang paling banyak barangnya.

SELECT c.id_category AS id_kategori, c.name_category AS nama_kategori, COUNT(*) AS jumlah
FROM product p
JOIN category c ON p.category_id = c.id_category
GROUP BY c.id_category, c.name_category
ORDER BY jumlah DESC
LIMIT 1;