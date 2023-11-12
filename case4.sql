Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.

SELECT AVG(total_price) AS ratarata
FROM (
    SELECT customer_id, COUNT(*) AS jumlah_transaksi, SUM(price_order) AS total_price
    FROM order_product
    WHERE date_order >= CURRENT_DATE - INTERVAL 1 MONTH
    GROUP BY customer_id
) AS transaksi_1bulan_terakhir;