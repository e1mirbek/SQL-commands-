-- Создание База данных 
CREATE DATABASE IF NOT EXISTS beer_stats_shop;
USE beer_stats_shop;

-- Создание таблицы 
CREATE TABLE IF NOT EXISTS beer_stats(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    beer_name VARCHAR(100) NOT NULL,
    valume VARCHAR(20),
    UNIQUE (name, beer_name)
);

-- 1. Создание данных
INSERT INTO beer_stats (name, beer_name, valume) VALUES 
('Тамара', 'Охота', '1л'),
('Иннокентий', 'Арсенальное', '0,5л'),
('Тони', 'Пикур', '5л'),
('Влад', 'Жигулёвское', '1л'),
('Дядь Валера', 'Багбир', '0,5л'),
('Петрович', 'Багбир', '5л');

-- 2. Создадание вторую таблицу для демонстрации JOIN
CREATE TABLE IF NOT EXISTS beer_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    beer_name VARCHAR(50) NOT NULL,
    brewery VARCHAR(50) NOT NULL,
    alcohol_percentage DECIMAL(3,1) NOT NULL
);

INSERT INTO beer_info (beer_name, brewery, alcohol_percentage) VALUES
('Охота', 'Балтика', 4.7),
('Арсенальное', 'Арсенал', 5.2),
('Пикур', 'Пикрафт', 6.0),
('Жигулёвское', 'Жигулёвский', 4.5);

-- Добавление индексов
ALTER TABLE beer_stats ADD INDEX idx_beer_name (beer_name);
ALTER TABLE beer_info ADD INDEX idx_beer_name (beer_name);

-- 2. INNER JOIN (внутреннее соединение)
-- Возвращает строки, когда есть совпадение в обеих таблицах.
SELECT s.name, s.beer_name, s.valume, i.brewery, i.alcohol_percentage
FROM beer_stats s
INNER JOIN beer_info i ON s.beer_name = i.beer_name;

-- Удаление записей 
DELETE FROM beer_stats WHERE id IN (1, 2, 3, 7, 8, 9, 13, 14, 15, 16, 17, 18);
DELETE FROM beer_info WHERE id IN (5, 6, 7, 8);

-- результат данных 
SELECT * FROM beer_stats;
SELECT * FROM beer_info;