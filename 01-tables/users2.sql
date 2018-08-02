----------------------
-- Create database:
----------------------
createdb name_of_db
e.g. createdb sql_book

or CREATE DATABASE name_of_db

----------------------
-- Drop database:
----------------------
dropdb name_of_db
e.g. dropdb sql_book

or DROP DATABASE name_of_db


----------------------
-- Create Table:
----------------------
CREATE TABLE users (
	id serial UNIQUE NOT NULL,
	full_name varchar(25) NOT NULL,
	enabled boolean DEFAULT true,
	last_login timestamp without time zone DEFAULT now()
);

----------------------
-- Drop Table:
----------------------
DROP TABLE users;

----------------------
-- INSERT Row syntax:
----------------------
-- INSERT INTO table_name (column1_name, column2_name, ...)
-- VALUES (data_for_column1, data_for_column2, ...);

INSERT INTO users (id, full_name, enabled, last_login) 
VALUES 
	(DEFAULT, 'John Smith', false, DEFAULT)
	(DEFAULT, 'Alice Walker', true, DEFAULT),
	(DEFAULT, 'Harry Potter', false, DEFAULT),
	(DEFAULT, 'Jane Smith', true, DEFAULT),
	(DEFAULT, 'Bill Smith', false, DEFAULT);

INSERT INTO users (id, full_name)
VALUES (DEFAULT, 'Harry Potter');

ALTER TABLE users 
ADD PRIMARY KEY (id);

DELETE FROM users;

----------------------
-- DELETE Row syntax:
----------------------
DELETE FROM users 
WHERE id = 1;

DELETE FROM users 
WHERE id > 2;

DELETE FROM users 
WHERE id < 3;

-- DELETE data from all rows:
DELETE FROM table_name;
----------------------
-- e.g.
DELETE FROM users;


----------------------
-- ALTER TABLE syntax:
----------------------
-- ALTER TABLE table_name 
-- CHANGE TABLE CLAUSE(S) arguments

ALTER TABLE users 
ADD PRIMARY KEY (id);

ALTER TABLE users
RENAME TO all_users;

ALTER TABLE users
RENAME COLUMN full_name TO username;

ALTER TABLE users
ALTER COLUMN full_name TYPE VARCHAR(25);


-- Column Constraint
----------------------
-- ALTER TABLE table_name 
-- ALTER COLUMN column_name 
-- SET constraint clause

-- Table Constraint
----------------------
-- ALTER TABLE table_name 
-- ADD CONSTRAINT constraint_name constraint clause

ALTER TABLE users
ALTER COLUMN full_name
SET NOT NULL;

ALTER TABLE users
ALTER COLUMN full_name
DROP NOT NULL;

ALTER TABLE users
ALTER COLUMN id
DROP DEFAULT;

-- Check Table Constraint
----------------------
ALTER TABLE users
ADD CHECK (full_name <> '');


-- Add/ Drop Column
----------------------
ALTER TABLE users
ADD COLUMN last_login timestamp NOT NULL DEFAULT NOW();

ALTER TABLE users
ADD COLUMN id serial UNIQUE NOT NULL;


ALTER TABLE users
DROP COLUMN last_login;

ALTER TABLE users
DROP COLUMN id;
