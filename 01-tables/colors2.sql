CREATE TABLE colors (
	id serial UNIQUE NOT NULL,
	color varchar(50) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO colors (id, color) VALUES
	(1, 'Red'),
	(2, 'Blue'),
	(3, 'Orange'),
	(4, 'Green');

DROP TABLE colors;