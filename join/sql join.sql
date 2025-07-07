-- jOIN в SQL — это способ объединить данные из двух или более таблиц, 
-- чтобы получить общую информацию, связанную между ними.

-- пример :

-- таблица Покупатели — хранит имена клиентов.

-- таблица Заказы — хранит, какие клиенты что заказали.

-- чтобы узнать: "Кто и что заказал?", 
-- надо соединить эти таблицы по ID клиента — это и есть JOIN

CREATE DATABASE shop;


-- показать все База данных
SHOW DATABASES;

USE shop;

DESCRIBE orders;





-- показать табличку

SHOW TABLES;

-- показать результат 

SELECT * FROM customers;
SELECT * FROM orders;


CREATE TABLE customers(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(25) NOT NULL
);

-- данные customers
INSERT INTO customers (name) VALUES 
("Алиса"),
("Боб"),
("Чолпон");


CREATE TABLE orders (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
product VARCHAR(50)
);

-- данные orders
INSERT INTO orders (customer_id, product) VALUES 
(1, "Телефон"),
(2, "Ноутбук"),
(2, "наушники");


-- Соединение таблицы через JOIN

-- SELECT customers.name AS customer_name, orders.product FROM customers JOIN orders ON customers.id = orders.customer_id;

SELECT customers.name AS customer_name, orders.product
FROM customers
JOIN orders ON customers.id = orders.customer_id;







