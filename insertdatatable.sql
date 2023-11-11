INSERT INTO customer (name_customer, email_customer, address_customer, phone_customer)
VALUES ('Khaira', 'khaira@gmail.com', 'Bekasi Jatben', '+6212345678'),
('Alfian', 'alfian@gmail.com', 'Wonosobo', '+6212345679'),
('Zidan', 'zidan@gmail.com', 'Jakarta', '+6212345677');

INSERT INTO category (name_category)
VALUES ('Makanan Manis'),
('Makanan Pedas'),
('Makanan Asin'),

INSERT INTO product (category_id, name_product, price_product, stock_product)
VALUES (1, 'Bakpia Kukus', 45000, 50),
(1, 'Pie Susu Bali', 65000, 70),
(2, 'Basreng Bandung', 60000, 50),
(3, 'Kerupuk Udang', 45000, 50),
(2, 'Makaroni Pedas', 45000, 50);

INSERT INTO order (customer_id, product_id, quantity_order, price_order, status_order)
VALUES (1, 1, 2, 100000,'Done'),
(2, 4, 2, 100000, 'Done'),
(3, 3, 2, 100000, 'Done');