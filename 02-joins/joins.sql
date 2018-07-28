-- INNER JOIN
-- LEFT OUTER JOIN
-- RIGHT OUTER JOIN
-- FULL OUTER JOIN
-- CROSS JOIN


-- INNER JOIN
SELECT colors.color, shapes.shape
FROM colors
JOIN shapes
ON colors.id = shapes.color_id; 

SELECT users.*, addresses.*
FROM users
INNER JOIN addresses
ON (users.id = addresses.user_id);

-- LEFT OUTER JOIN
SELECT users.*, addresses.*
FROM users
LEFT OUTER JOIN addresses
ON (users.id = addresses.user_id);


-- FULL OUTER JOIN
SELECT users.*, addresses.*
FROM users
FULL OUTER JOIN addresses
ON (users.id = addresses.user_id)

-- CROSS JOIN
SELECT *
FROM users
CROSS JOIN addresses;

-- Multiple JOINS
SELECT users.full_name, books.title, checkouts.checkout_date
FROM users
INNER JOIN checkouts 
ON (users.id = checkouts.user_id)
INNER JOIN books 
ON (books.id = checkouts.book_id);

-- Aliasing Tables
SELECT u.full_name, b.title, c.checkout_date
FROM users AS u
INNER JOIN checkouts AS c ON (u.id = c.user_id)
INNER JOIN books AS b ON (b.id = c.book_id);

-- Aliasing Columns 
SELECT id AS "Number of Books Checked Out"
FROM checkouts;

SELECT count(id) AS "Number of Books Checked Out"
FROM checkouts;



