Melihat 3 produk yang paling sering dibeli oleh pelanggan.

SELECT product.name, COUNT(*) AS jumlah FROM order
INNER JOIN product ON order.product_id = product.id
GROUP BY product.id
ORDER BY jumlah DESC
LIMIT 3;