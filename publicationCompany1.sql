-- adding dritributers
INSERT INTO distributor VALUES (1, 'david co',5000,'9867945682');
INSERT INTO distributor VALUES (2, 'lama co',5001,'9867945682');
INSERT INTO distributor VALUES (3, 'thapa co',5002,'9867945682');
INSERT INTO distributor VALUES (4, 'prem co',5003,'9867945682');
INSERT INTO distributor VALUES (5, 'aryl co',5004,'9867945682');

-- adding publication
INSERT INTO publication VALUES (11, 'karnali blues','book',52,'2022-01-15');
INSERT INTO publication VALUES (12, 'the times','magazine',58,'2022-01-15' );
INSERT INTO publication VALUES (13, 'the handmaid tales','book',54,'2017-02-15' );
INSERT INTO publication VALUES (14, 'page 6','magazine',59,'2018-01-25' );
INSERT INTO publication VALUES (15, 'the intelligent investor','book',585,'2014-02-15' );

-- adding books
INSERT INTO book VALUES (111,'fiction',11); 
INSERT INTO book VALUES (112,'sci fiction',13);
INSERT INTO book VALUES (113,'self improvement',15);

-- adding magazine
INSERT INTO magazine VALUES (1,'weekly',12); 
INSERT INTO book VALUES (2,'yearly',14);

-- adding orders
INSERT INTO orders VALUES (1,11,500,'2022-01-25',TRUE);
INSERT INTO orders VALUES (4,12,50,'2022-01-25',FALSE);
INSERT INTO orders VALUES (5,13,300,'2021-02-25',FALSE);
INSERT INTO orders VALUES (3,14,50,'2021-01-25',TRUE);
INSERT INTO orders VALUES (2,15,22,'2020-02-05',TRUE);

-- adding authors
INSERT INTO author VALUES (1,'jamyang','9863794637');
INSERT INTO author VALUES (2,'donald trump','9800004637');
INSERT INTO author VALUES (3,'shekar ji','986385558637');

-- adding write relation
INSERT INTO writes (isbn, author_id) VALUES(111,1);
INSERT INTO writes (isbn, author_id) VALUES(112,2);
INSERT INTO writes (isbn, author_id) VALUES(113,2);



SELECT * FROM employee;