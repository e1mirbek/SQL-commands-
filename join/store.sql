
CREATE DATABASE store;
USE store;
SHOW TABLES;

CREATE TABLE IF NOT EXISTS customers (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (50) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
product_name VARCHAR (100) NOT NULL,

-- Внешний ключ, связывающий поле customer_id с id в таблице customers
FOREIGN KEY (customer_id) REFERENCES customers(id)
);


INSERT INTO customers (name) VALUES
('Тамара'),
('Азамат'),
('Элмирбек');


INSERT INTO orders (customer_id, product_name) VALUES 
(1, 'Пиво'),
(2, 'Вода'),
(3, 'Сок'),
(1, 'Чипсы');


SELECT * FROM customers;
SELECT * FROM orders;


SELECT customers.name AS покупатель, orders.product_name AS заказ
FROM customers
JOIN orders ON customers.id = orders.customer_id;




