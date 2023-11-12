CREATE TABLE customer (
    id_customer INT NOT NULL AUTO_INCREMENT,
    name_customer VARCHAR(255) NOT NULL,
    email_customer VARCHAR(255) NOT NULL,
    address_customer VARCHAR(255) NOT NULL,
    phone_customer VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_customer)
);

CREATE TABLE product (
    id_product INT NOT NULL AUTO_INCREMENT,
    category_id INT NOT NULL,
    name_product VARCHAR(255) NOT NULL,
    price_product INT NOT NULL,
    stock_product INT NOT NULL,
    PRIMARY KEY (id_product),
    FOREIGN KEY (category_id) REFERENCES category (id_category)
);

CREATE TABLE category (
    id_category INT NOT NULL AUTO_INCREMENT,
    name_category VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_category)
);

CREATE TABLE order_product (
    id_order INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity_order INT NOT NULL,
    price_order INT NOT NULL,
    status_order VARCHAR(255) NOT NULL,
    date_order DATE NOT NULL,
    PRIMARY KEY (id_order),
    FOREIGN KEY (customer_id) REFERENCES customer (id_customer),
    FOREIGN KEY (product_id) REFERENCES product (id_product)
);