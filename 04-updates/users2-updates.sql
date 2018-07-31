----------------------
-- UPDATE specific data in Table:
----------------------
UPDATE table_name 
SET [column_name1 = value1, ...]
WHERE (expression);

UPDATE users
SET enabled = true
WHERE full_name = 'Harry Potter' OR full_name = 'Jane Smith';

UPDATE users
SET full_name = 'Alice Walker'
WHERE id = 5;

-- UPDATE all data in Table:
----------------------
UPDATE table_name
SET [column_name1 = value1, ...]

UPDATE users
SET enabled = false;

UPDATE users
SET enabled = true;

-- UPDATE specific column in row to NULL:
----------------------
UPDATE table_name
SET column_name1 = NULL
WHERE (expression)
----------------------

UPDATE users
SET enabled = NULL
WHERE id = 2;


----------------------
-- DELETE data from Table:
----------------------
DELETE FROM table_name 
WHERE (expression);

DELETE FROM users
WHERE full_name='Harry Potter' AND id > 5; 

DELETE FROM users
WHERE full_name = 'Harry Potter' AND id > 4;

-- DELETE data from all rows:
DELETE FROM table_name;
----------------------
DELETE FROM users;





