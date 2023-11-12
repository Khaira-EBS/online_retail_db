Melihat 3 produk yang paling sering dibeli oleh pelanggan.

SELECT product.name_product, COUNT(*) AS jumlah FROM order_product
INNER JOIN product ON order_product.product_id = product.id_product
GROUP BY product.id_product
ORDER BY jumlah DESC
LIMIT 3;