CREATE TABLE distributor (
	distributor_id INT PRIMARY KEY,
    distributor_name VARCHAR(30),
    pan INT,
    contact_number INT
);

CREATE TABLE publication(
	publication_id INT PRIMARY KEY,
    title VARCHAR(30),
    type VARCHAR(10),
    price INT,
    release_date DATE
);

CREATE TABLE book(
	isbn INT PRIMARY KEY,
    genre VARCHAR(20),
    publication_id INT,
    FOREIGN KEY (publication_id) REFERENCES publication(publication_id)
);

CREATE TABLE magazine(
	magazine_id INT,
    magazine_type VARCHAR(20),
    publication_id INT,
    FOREIGN KEY (publication_id) REFERENCES publication(publication_id)
);


CREATE TABLE orders(
	distributor_id INT,
    publication_id INT,
    quantity INT,
    PRIMARY KEY (distributor_id, publication_id),
    FOREIGN KEY (distributor_id) REFERENCES distributor(distributor_id) ON DELETE CASCADE,
    FOREIGN KEY (publication_id) REFERENCES publication(publication_id) ON DELETE CASCADE
);



CREATE TABLE author(
	author_id INT PRIMARY KEY,
    name VARCHAR(30),
    contact INT
);

CREATE TABLE writes(
	isbn INT,
    author_id INT,
    PRIMARY KEY (isbn,author_id),
    FOREIGN KEY (isbn) REFERENCES book(isbn) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES author(author_id) ON DELETE CASCADE
);

