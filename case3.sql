Melihat Kategori barang yang paling banyak barangnya.

SELECT category, COUNT(*) AS jumlah FROM product
GROUP BY category
ORDER BY jumlah DESC
LIMIT 1;
 