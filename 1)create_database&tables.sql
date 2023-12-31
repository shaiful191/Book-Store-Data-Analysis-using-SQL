create database Book_Store;

use Book_Store;

create table publishers
(
  publisher_id int identity(1,1) primary key,
  name varchar(100) not null
);


create table books
(
  book_id int identity(1,1) primary key,
  title varchar(100) not null,
  total_pages int not null,
  rating int ,
  publish_date date not null,
  publisher_id int,
  constraint publisher_id_fk foreign key(publisher_id) references publishers(publisher_id)

);

alter table books
alter column rating float;

alter table books
add price int;

create table authors
(
  author_id int identity(1,1) primary key,
  first_name varchar(50) not null,
  middle_name varchar(50),
  last_name varchar(50) not null,
);



create table book_authors
(
  author_id int,
  book_id int,

  primary key(author_id,book_id),

  constraint author_id_fk 
  foreign key(author_id) 
  references authors(author_id)
  ON DELETE CASCADE, --ON DELETE CASCADE is used to specify that when a row is deleted from the parent table, all rows in the child table that reference the deleted row should also be deleted.

  constraint book_id_fk 
  foreign key(book_id) 
  references books(book_id)
  ON DELETE CASCADE,
);

create table genres
(
  genres_id int identity(1,1) primary key,
  genres varchar(50) not null,
);

create table book_genres
(
  genres_id int,
  book_id int,
  primary key(genres_id,book_id),
  constraint genres_id_fk 
  foreign key(genres_id) 
  references genres(genres_id)
  ON DELETE CASCADE,

  constraint fk_book_id
  foreign key(book_id) 
  references books(book_id)
  ON DELETE CASCADE,
);






