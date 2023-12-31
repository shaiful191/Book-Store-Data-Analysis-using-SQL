--publishers
insert into publishers(name)
values
('Lacture'),
('Panjary'),
('Adil'),
('Royel'),
('Jupitar'),
('gaynaguh'),
('Lacture'),
('Royel');

select * from publishers;

--books
insert into books(title,total_pages,rating,publish_date,publisher_id)
values
('Introduction to Algorithms',1300,4.8,'2012-12-31',1),
('Artificial Intelligence: A Modern Approach',900,4.2,'2020-7-11',2),
('Computer Networking: Principles, Protocols and Practice',1000,3.8,'2017-2-27',3),
('Data Science for Business',500,3.5,'2020-12-29',4),
('Thinking in Systems',400,4.0,'2014-12-31',5),
('Discrete Structures',300,3.0,'2020-12-29',6),
('Computer Networking: Principles, Protocols and Practice',1000,3.8,'2017-2-27',3),
('Data Science for Business',500,3.5,'2020-12-29',4),
('Thinking in Systems',400,4.0,'2014-12-31',5);


select * from books;

update books
set price=500
where book_id IN(1,4,7,9,13,15);

update books
set price=380
where book_id IN(2,5,8,12);

update books
set price=400
where book_id IN(3,6);

update books
set price=200
where price IS NULL;

--authors
insert into authors(first_name,middle_name,last_name)
values
('Thomas H. Cormen','Charles E. Leiserson','Ronald L. Rivest'),
('Stuart','Russell','Peter Norvig'),
('Olivier','knaventure','Bonaventure'),
('Foster','Provost','Tom Fawcett'),
('Harold',' Abelson','Gerald'),
('Kenneth','Rosen','Pivest'),
('Thomas H. Cormen','Charles E. Leiserson','Ronald L. Rivest'),
('Stuart','Russell','Peter Norvig');

select * from authors;

--book_authors
insert into book_authors(author_id,book_id)
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(4,4),
(5,5),
(6,6),
(4,7),
(4,8);

select * from book_authors;


--genres
insert into genres(genres)
values
('Algorithm'),
('Artificial Intelligence'),
('Networking'),
('Data Science'),
('Systems'),
('Discrete Math');


select * from genres;

--book_genres
insert into book_genres(genres_id,book_id)
values
(1002,1),
(1003,2),
(1004,3),
(1005,4),
(1006,5),
(1007,6),
(1002,7),
(1003,8),
(1004,9),
(1002,3),
(1003,3),
(1003,4);

select * from book_genres;