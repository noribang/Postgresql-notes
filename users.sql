CREATE TABLE users (
id serial UNIQUE NOT NULL,
username char(25),
enabled boolean DEFAULT TRUE
);

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

-- Remove Table.
DROP TABLE all_users;



