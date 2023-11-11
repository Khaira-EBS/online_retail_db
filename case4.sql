Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.

SELECT AVG(total_price) AS ratarata
FROM (
    SELECT customer_id, SUM(price_order) AS total_price
    FROM order
    WHERE date >= CURRENT_DATE - INTERVAL 1 MONTH
    GROUP BY customer_id
) AS transaksi_bulan_ini;