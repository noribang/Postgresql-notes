CREATE TABLE users (
id serial UNIQUE NOT NULL,
username char(25),
enabled boolean DEFAULT TRUE
);