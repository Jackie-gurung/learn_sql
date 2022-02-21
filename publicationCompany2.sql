-- Find the name of all published books. 
SELECT * 
FROM publication 
WHERE publication.type = 'book';

-- Find the name of all books published before 2000.
SELECT * 
FROM publication 
WHERE publication.type = 'book' AND publication.release_date <= '2020-01-01';
-- WHERE publication.type = 'book' AND publication.release_date <= NOW();

-- Get the details of the books written by a particular author.
SELECT b.genre, b.isbn, p.publication_id, p.title, p.type, p.price, p.release_date
FROM book  as b
INNER JOIN publication as p ON 
p.publication_id = b.publication_id 
WHERE b.isbn = (
	SELECT isbn
	FROM writes 
	WHERE author_id = 1
    LIMIT 1
);
-- another way
SELECT b.genre, b.isbn, p.publication_id, p.title, p.type, p.price, p.release_date
FROM book  as b
INNER JOIN publication as p ON 
p.publication_id = b.publication_id 
INNER JOIN writes as w ON b.isbn = w.isbn
WHERE w.author_id = 1;


-- Find the name of all weekly publications.
SELECT * 
FROM magazine 
WHERE magazine_type = 'weekly';

-- Find the name of pre-ordered books.
SELECT publication.title
FROM publication
WHERE publication.publication_id IN (
	SELECT orders.publication_id
	FROM orders 
	WHERE orders.pre_order = true
);

-- another way 
SELECT publication.title
FROM publication
INNER JOIN orders ON
publication.publication_id = orders.publication_id
WHERE orders.pre_order = true;

-- Get the details of all publications with the name starting with an 'A'.
SELECT *
FROM publication as p
WHERE p.title LIKE 't%';

-- Find all the orders for a particular book. The result must be sorted based on the order date. 
SELECT *
FROM orders
WHERE orders.publication_id = (
	SELECT book.publication_id
	FROM book
	WHERE isbn =111
	LIMIT 1
)
ORDER BY orders.order_date;




  
  
  

DELETE 
FROM book
WHERE isbn = 2;

SELECT * 
FROM publication ;



