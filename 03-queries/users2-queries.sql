----------------------
-- SELECT Queries:
----------------------
SELECT [*, (column_name1, column_name2, ...)]
FROM table_name 
WHERE (condition);

SELECT enabled, full_name
FROM users
WHERE id < 2;

SELECT enabled, full_name
FROM users
WHERE id >= 2;