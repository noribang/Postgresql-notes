---------------------------
---------------------------
-- 1. Create Databases
---------------------------
---------------------------


-- START/ STOP PSQL SERVER
-----------------------
pg_ctl -- start
pg_ctl -- stop

-- OPEN/ CLOSE CONSOLE
-----------------------
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

















