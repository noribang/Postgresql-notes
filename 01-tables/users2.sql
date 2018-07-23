-- CREATE TABLE users (
-- 	id serial UNIQUE NOT NULL,
-- 	full_name varchar(25) NOT NULL,
-- 	enabled boolean DEFAULT true,
-- 	last_login timestamp without time zone DEFAULT now()
-- );

-- ALTER TABLE users ADD PRIMARY KEY (id);

-- INSERT INTO users (id, full_name, enabled, last_login) VALUES 
-- 	(DEFAULT, 'John Smith', false, DEFAULT)
-- 	(DEFAULT, 'Alice Walker', true, DEFAULT),
-- 	(DEFAULT, 'Harry Potter', false, DEFAULT),
-- 	(DEFAULT, 'Jane Smith', true, DEFAULT),
-- 	(DEFAULT, 'Bill Smith', false, DEFAULT);

-- DELETE FROM users WHERE id = 1;
-- DELETE FROM users WHERE id > 2;
-- DELETE FROM users WHERE id < 3;

