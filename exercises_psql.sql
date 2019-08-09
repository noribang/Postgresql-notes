---------------------------
---------------------------
-- 1. Create Databases
---------------------------
---------------------------


-- START/ STOP PSQL SERVER
-----------------------
pg_ctl -- start
pg_ctl -- stop

-- OPEN/ CLOSE PSQL CLIENT APPLICATION
--------------------------------------
psql
\quit

-- CREATE/ CONNECT/ DROP DATABASE
------------------------------
(Using psql client application)
\quit
createdb database_one
psql -d database_one
\list
\quit
dropdb database_one

(From psql console)
psql
CREATE DATABASE database_two;
\connect databas_two
\list
DROP DATABASE database_two;
\list
\quit


---------------------------
---------------------------
-- 2. Create Tables
---------------------------
---------------------------
pg_ctl -- start

createdb encyclopedia
psql -d encyclpedia
\list

or

psql
CREATE DATABASE encyclopedia;
\connect encyclopedia

psql name_of_database < name_of_sql_file.sql
e.g. psql encyclopedia < countries.sql

-- countries Table
---------------------------
CREATE TABLE countries (
id serial UNIQUE NOT NULL,
name varchar(50) NOT NULL,
capital varchar(50),
population integer
);

ALTER TABLE countries
ADD PRIMARY KEY (id);

ALTER TABLE countries
ALTER COLUMN name TYPE VARCHAR(25);

ALTER TABLE countries
ALTER COLUMN capital
SET NOT NULL;

-- famous people Table
---------------------------
CREATE TABLE famous_people (
id serial UNIQUE NOT NULL,
name VARCHAR(100) NOT NULL,
occupation VARCHAR(150),
date_of_birth VARCHAR(50),
deceased boolean DEFAULT false
);

ALTER TABLE famous_people
ADD PRIMARY KEY (id);


-- animals Table
---------------------------
CREATE TABLE animals (
id serial UNIQUE NOT NULL,
name VARCHAR(100) NOT NULL,
binomial_name VARCHAR(100) NOT NULL,
max_weight_(kg) decimal(8,3),
max_age_(years) integer,
conservation_status char(2)
);

---------------------------
---------------------------
-- Create Databases
---------------------------
---------------------------
CREATE DATABASE ls_burger_2;
\connect ls_burger_2

---------------------------
---------------------------
-- Create Tables
---------------------------
---------------------------
CREATE TABLE orders (
id SERIAL UNIQUE NOT NULL,
customer_name VARCHAR(100) NOT NULL,
burger VARCHAR(50),
side VARCHAR(50),
drink VARCHAR(50),
order_total DECIMAL(4,2) NOT NULL
);


---------------------------
---------------------------
-- 3. Queries
---------------------------
---------------------------

\c database_name
or
\connect database_name

\dt               __List all tables.

\d name_of_table  __List columns of table.

-- ============
-- Query 
-- ============
-- SELECT col_name FROM table_name;

-- (e.g. SELECT * FROM table_name;)

-- SELECT col_name, col_name,... FROM table_name WHERE col_name >= some_value

-- (e.g. SELECT * FROM contacts WHERE age >= 18;
--       SELECT * FROM contacts WHERE age BETWEEN 13 AND 17;
--       SELECT * FROM contacts WHERE name BETWEEN 'Judith' AND 'Wilma';
--       SELECT * FROM contacts WHERE name LIKE 'We%';
--       SELECT * FROM contacts WHERE birthday IN ('1969-01-01', '1999-01-01');
--       SELECT * FROM contacts WHERE NOT age >= 18;


select * from orders;
select drink from orders;
select side from orders;
select burger from orders

select id, customer_name from orders;
select burger, drink from orders;

select drink, id, customer_name from orders where id = 2;
select drink, id, customer_name from orders where id = 3;
select drink, id, customer_name from orders where id >=4;









