--------------------------------------------------------
-- JOIN Syntax:
SELECT table_name.column_name1, table_name.column_name2,...
FROM table1
join_type JOIN table2 
ON (join_condition)
WHERE (condition)
join_type JOIN table3 
ON (join_condition)
WHERE (condition)
...
--------------------------------------------------------

-- INNER JOIN (default)
-- LEFT OUTER JOIN
-- RIGHT OUTER JOIN
-- FULL OUTER JOIN
-- CROSS JOIN


-- INNER JOIN
SELECT colors.color, shapes.shape
FROM colors
JOIN shapes
ON colors.id = shapes.color_id; 
-- or
SELECT users.*, addresses.*
FROM users
INNER JOIN addresses
ON (users.id = addresses.user_id);

SELECT u.*, a.*
FROM users AS u
INNER JOIN addresses AS a
ON (u.id = a.user_id);

SELECT u.*, a.*
FROM users AS u
INNER JOIN addresses AS a
ON (u.id = a.user_id)
WHERE a.city = 'San Francisco';

SELECT u.*, a.*
FROM users AS u
INNER JOIN addresses AS a
ON (u.id = a.user_id)
WHERE a.city = 'San%';


-- LEFT OUTER JOIN
SELECT users.*, addresses.*
FROM users
LEFT OUTER JOIN addresses
ON (users.id = addresses.user_id);

SELECT u.*, a.*
FROM users AS u
LEFT OUTER JOIN addresses AS a
ON (u.id = a.user_id);

SELECT u.*, a.*
FROM users AS u
LEFT OUTER JOIN addresses AS a
ON (u.id = a.user_id)
WHERE (a.user_id IS NULL);

-- RIGHT OUTER JOIN
SELECT reviews.book_id, reviews.content, 
reviews.rating, reviews.published_date,
books.id, books.title, books.author
FROM reviews
RIGHT OUTER JOIN books
ON (reviews.book_id = books.id);

SELECT r.book_id, r.content, 
r.rating, r.published_date,
b.id, b.title, b.author
FROM reviews AS r
RIGHT OUTER JOIN books AS b
ON (r.book_id = b.id)
WHERE (r.book_id IS NULL);


-- FULL OUTER JOIN
SELECT users.*, addresses.*
FROM users
FULL OUTER JOIN addresses
ON (users.id = addresses.user_id)

SELECT u.*, a.*
FROM users AS u
FULL OUTER JOIN addresses AS a
ON (u.id = a.user_id)
WHERE (a.user_id IS NULL);

-- CROSS JOIN
SELECT *
FROM users
CROSS JOIN addresses;

SELECT u.id, u.full_name, a.user_id, a.street
FROM users AS u
CROSS JOIN addresses AS a;

-- Multiple JOINS
SELECT users.id, users.full_name, books.title, checkouts.checkout_date
FROM users
INNER JOIN checkouts 
ON (users.id = checkouts.user_id)
INNER JOIN books 
ON (books.id = checkouts.book_id);

SELECT u.id, u.full_name, b.title, c.checkout_date
FROM users as u
INNER JOIN checkouts as c
ON (u.id = c.user_id)
INNER JOIN books as b
ON (b.id = c.book_id);


SELECT u.id, u.full_name, b.id, b.title, c.user_id, c.book_id, c.checkout_date
FROM users AS u
INNER JOIN checkouts AS c
ON (u.id = c.user_id) 	
INNER JOIN books AS b
ON (b.id = c.book_id);



-- Aliasing Tables
SELECT u.full_name, b.title, c.checkout_date
FROM users AS u
INNER JOIN checkouts AS c 
ON (u.id = c.user_id)
INNER JOIN books AS b 
ON (b.id = c.book_id);

-- Aliasing Columns 
SELECT id AS "Number of Books Checked Out"
FROM checkouts;

SELECT count(id) AS "Number of Books Checked Out"
FROM checkouts;

-- Subqueries
SELECT u.full_name 
FROM users AS u
WHERE u.id
NOT IN (SELECT c.user_id FROM checkouts);

SELECT u.id, u.full_name, c.user_id 
FROM users AS u
LEFT OUTER JOIN checkouts AS c 
ON (u.id = c.user_id)
WHERE c.user_id IS NULL;






