


CREATE DATABASE school;

-- показать все База данных

SHOW DATABASES;

-- показать табличку

SHOW TABLES;

-- показать результат 

SELECT * FROM teachers;


CREATE TABLE teachers(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (25) NOT NULL,
specialization VARCHAR (100) NOT NULL
);
 -- данные teachers
INSERT INTO teachers (name, specialization) VALUES 
("Элмирбек", "Java ментор"),
("Эрбол", "Js ментор"),
("Кайрат", "PHP ментор");



