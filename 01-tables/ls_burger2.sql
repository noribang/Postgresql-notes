CREATE TABLE orders (
	id serial UNIQUE NOT NULL,
	customer_name varchar(100) NOT NULL,
	burger varchar(50) NOT NULL,
	side varchar(50) NOT NULL, 
	drink varchar(50) NOT NULL
);

ALTER TABLE orders ADD PRIMARY KEY (id);

INSERT INTO orders (id, customer_name, burger, side, drink) VALUES 
(1, 'Todd Perez', 'LS Burger', 'Fries', 'Lemonade'),
(2, 'Florence Jordan', 'LS Cheeseburger', 'Fries', 'Chocolate Shake'),
(3, 'Robin Barnes', 'LS Burger', 'Onion Rings', 'Vanilla Shake'),
(4, 'Joyce Silva', 'LS Double Deluxe Burger', 'Fries', 'Chocolate Shake'),
(5, 'Joyce Silva', 'LS Chicken Burger', 'Onion Rings', 'Cola');

-- Query columns
SELECT * FROM orders;
SELECT side FROM orders;
SELECT drink, side, burger FROM orders;
-- Query rows
SELECT * FROM orders WHERE id = 1;
SELECT * FROM orders WHERE id > 1 AND id < 4;
-- Query by column and row
SELECT customer_name FROM orders WHERE side = 'Fries';

