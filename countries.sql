CREATE TABLE countries (
id serial UNIQUE NOT NULL,
name varchar(50) NOT NULL,
capital varchar(50),
population integer
);