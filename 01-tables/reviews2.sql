CREATE TABLE reviews (
	id serial,
	book_id integer NOT NULL,
	reviewer_name varchar(255),
	content varchar(255),
	rating integer,
	published_date timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	FOREIGN KEY (book_id) REFERENCES books (id) ON DELETE CASCADE
);

INSERT INTO reviews (id, book_id, reviewer_name, content, rating, published_date)  VALUES
	(1, 1, 'John Smith', 'My first review', 4, '2017-12-10 05:50:11.127281-02'),
	(2, 2, 'John Smith', 'My second review', 5, '2017-10-13 15:05:12.673382-05'),
	(3, 2, 'Alice Walker', 'Another review', 1, '2017-10-22 23:47:10.407569-07');

