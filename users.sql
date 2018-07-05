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

SELECT enabled, full_name
FROM users
WHERE id < 2;
