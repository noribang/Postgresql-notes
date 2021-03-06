CREATE TABLE users (
id serial UNIQUE NOT NULL,
username char(25),
enabled boolean DEFAULT TRUE
);

CREATE TABLE users (
id serial UNIQUE NOT NULL,
full_name varchar (25) NOT NULL,
enabled boolean DEFAULT true,
last_login timestamp without time zone DEFAULT now();
);


-- 
-- ALTER TABLE.
-- 

-- Rename Table.
ALTER TABLE users
RENAME TO all_users;

-- Rename Column.
ALTER TABLE all_users
RENAME COLUMN username TO full_name;

-- Change Data Type.
ALTER TABLE all_users
ALTER COLUMN full_name TYPE varchar(50)

-- Change Constraints.
ALTER TABLE all_users
ALTER COLUMN full_name SET NOT NULL;

-- Remove Constraints.
ALTER TABLE all_users
ALTER COLUMN id DROP DEFAULT;

-- Add Column.
ALTER TABLE all_users
ADD COLUMN last_login timestamp NOT NULL DEFAULT NOW();

-- Remove Column.
ALTER TABLE all_users
DROP COLUMN enabled;

-- Add Check to Column.
-- e.g. Checks that column values is not empty string.
ALTER TABLE users ADD CHECK (full_name <> '');

-- Remove Table.
DROP TABLE all_users;

-- 
-- INSERT ROWS.
-- 

-- Insert row.
INSERT INTO users (full_name, enabled)
VALUES ('John Smit', false);

-- Insert multiple rows.
INSERT INTO users (full_name)
VALUES ('Jane Smith'), ('Harry Potter');

-- 
-- QUERY
-- 
select * from users;
 id |  full_name   | enabled |         last_login         
----+--------------+---------+----------------------------
  1 | John Smit    | f       | 2018-07-05 14:47:23.183981
  2 | Jane Smith   | t       | 2018-07-05 14:51:28.860045
  3 | Harry Potter | t       | 2018-07-05 14:51:28.860045

-- Basic Syntax:
-- =============
-- SELECT [*, (column_name1, column_name2, ...)]
-- FROM table_name 
-- WHERE (condition);

SELECT enabled, full_name
FROM users
WHERE id < 2;

-- SELECT [*, (column_name1, column_name2, ...)]
-- FROM table_name 
-- WHERE (condition)
-- ORDER BY column_name;

SELECT id, full_name, enabled
FROM users
WHERE id >= 1
ORDER BY enabled;

SELECT id, full_name, enabled
FROM users
WHERE id >= 1
ORDER BY enabled DESC;

SELECT id, full_name, enabled
FROM users
WHERE id >= 1
ORDER BY enabled ASC;

SELECT id, full_name, enabled
FROM users
WHERE id >= 1;
ORDER BY enabled DESC, id DESC;

SELECT id, full_name, enabled
FROM users
WHERE id >= 1;
ORDER BY enabled DESC, id ASC;

SELECT id, full_name, enabled, last_login
FROM users
WHERE id >= 2;

SELECT id, full_name, enabled
FROM users
WHERE full_name IS NULL;

SELECT id, full_name, enabled
FROM users
WHERE full_name IS NOT NULL;

SELECT id, full_name, enabled, last_login
FROM users
WHERE full_name = 'Harry Potter' OR enabled = 'false';

SELECT id, full_name, enabled, last_login
FROM users
WHERE full_name = 'Harry Potter' AND enabled = 'true';

SELECT id, enabled, last_login, full_name
FROM users
WHERE full_name LIKE '%Smith';

SELECT *
FROM users
LIMIT 1;

SELECT * 
FROM users
LIMIT 1
OFFSET 1;

SELECT id, full_name, enabled, last_login
FROM users
LIMIT 2
OFFSET 1;

INSERT INTO users (id, full_name)
VALUES (4, 'Harry Potter'), (5, 'Jane Smith');

SELECT full_name
FROM users;

SELECT DISTINCT full_name
FROM users;

SELECT count(full_name)
FROM users;

SELECT count(DISTINCT full_name)
FROM users;

-- String functions.
SELECT length(fullname)
FROM users;

SELECT full_name, length(full_name) 
FROM users;

SELECT full_name, length(full_name) 
FROM users 
WHERE length(full_name) > 10;

SELECT trim(leading ' ' from full_name)
FROM users;

SELECT trim(leading 'H' from full_name)
FROM users;

-- Date/ Time functions.
SELECT full_name, date_part('year', last_login)
FROM users;

SELECT full_name, date_part('hour', last_login)
FROM users;

SELECT full_name, date_part('minute', last_login)
FROM users;

SELECT full_name, age(last_login)
FROM users;

-- Aggregate functions
SELECT count(id)
FROM users;

SELECT sum(id)
FROM users;

SELECT min(last_login)
FROM users;

SELECT max(last_login)
FROM users;

SELECT avg(id)
FROM users;

-- GROUP BY
SELECT enabled, count(id)
FROM users
GROUP BY enabled;

SELECT enabled, id, count(id)
FROM users
GROUP BY enabled, id;

-- UPDATE rows.
UPDATE users
SET enabled = false; 

UPDATE users
SET enabled = true
WHERE full_name = 'Harry Potter' OR full_name = 'Jane Smith';

UPDATE users
SET full_name = 'Alice Walker'
WHERE id = 2;

-- DELETE rows.
DELETE FROM users
WHERE full_name = 'Harry Potter' AND id > 3;

DELETE FROM users; -- Deletes all rows from users table.

-- UPDATE column to NULL.
UPDATE table_name 
SET column_name1 = NULL
WHERE (expression);

UPDATE users
SET last_login = NULL
WHERE full_name = 'John Smit' 
AND id < 2;

