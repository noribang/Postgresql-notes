----------------------
-- SELECT Queries:
----------------------
SELECT [*, (column_name1, column_name2, ...)]
FROM table_name 
WHERE (condition);

SELECT [*, (column_name1, column_name2, ...)]
FROM table_name 
WHERE (condition)
ORDER BY column_name;

----------------------

SELECT enabled, full_name
FROM users
WHERE id < 2;

SELECT enabled, full_name
FROM users
WHERE id >= 2;

SELECT full_name, enabled
FROM users
ORDER BY enabled;

SELECT id, full_name, enabled
FROM users
WHERE id > 1
ORDER BY enabled;

SELECT id, full_name, enabled
FROM users
ORDER BY enabled DESC;

SELECT id, full_name, enabled
FROM users
ORDER BY enabled ASC;

SELECT id, full_name, enabled
FROM users
ORDER BY enabled DESC, id DESC;

SELECT id, full_name, enabled, last_login
FROM users
WHERE id >= 2
ORDER BY id DESC;

SELECT id, full_name, enabled, last_login
FROM users
WHERE id >= 2
ORDER BY enabled ASC, id DESC;

SELECT id, full_name, enabled, last_login
FROM users
WHERE id IS NULL;

SELECT id, full_name, enabled, last_login
FROM users
WHERE id IS NOT NULL;

SELECT id, full_name, enabled
FROM users
WHERE full_name = 'Harry Potter' OR enabled = 'false';

SELECT id, full_name, enabled
FROM users
WHERE full_name = 'Harry Potter' AND enabled = 'false';

SELECT id, full_name, enabled
FROM users
WHERE full_name LIKE '%Smith';




