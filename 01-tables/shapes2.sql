CREATE TABLE shapes (
	id serial,
	color_id int NOT NULL,
	shape varchar(50) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (color_id) REFERENCES colors (id) ON DELETE CASCADE
);

INSERT INTO shapes (id, color_id, shape) VALUES
	(1, 1, 'Square'),
	(2, 1, 'Star'),
	(3, 2, 'Triangle'),
	(4, 4, 'Circle');

DROP TABLE shapes;