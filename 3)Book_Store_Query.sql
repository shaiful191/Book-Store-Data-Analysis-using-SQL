/* Q1: What is average number of pages of all book?*/
select avg(total_pages)
from books;


/* Q2: Name of the books which is publised in year 2020?*/
select distinct title,publish_date
from books
where Year(publish_date)=2020;


/* Q3: List of the author full name who's middle name end with 'n' ? */
select  CONCAT(first_name,' ',middle_name,' ',last_name) AS full_name
From authors
where middle_name like '%n';


/* Q4: What is the name of top 3 most book publisher?*/
select TOP 3 name
from publishers
GROUP BY name
order by count(name) desc;


/* Q5: Which is the Big book and number of pages? */
select TOP 1 title,total_pages
from books
order by total_pages desc;


/* Q6:Which is the total price of Artificial Intelligence genres all books? */
select sum(price) AS total_price from books
where book_id IN (
	select book_id from book_genres
	where genres_id=(
	select genres_id from genres
	where genres='Artificial Intelligence')
   );


/* Q7:Which is the most expensive book from Artificial Intelligence genres? */
select TOP 1 title from books
where book_id IN (
	select book_id from book_genres
	where genres_id=(
	select genres_id from genres
	where genres='Artificial Intelligence')
   )
order by price desc;


/* Q8: Which genres have the most books? */
select TOP 1 genres 
from (
	  select genres_id,count(book_id) as count_book_id  from book_genres
	  group by genres_id
	 ) as bg
inner join genres as g
on bg.genres_id=g.genres_id
order by count_book_id desc;


/* Q9: Who is the most book writer and number of books he written? */
select TOP 1 CONCAT(a.first_name,' ',a.middle_name,' ',a.last_name) AS full_name,numberOfBooks from (
	select author_id, count(book_id) AS numberOfBooks
	from book_authors
	group by author_id
) as ba
inner join authors as a
on ba.author_id=a.author_id
order by numberOfBooks desc


/* Q10: Who is the most book writer and his name start with 'Tho' ? */
select CONCAT(a.first_name,' ',a.middle_name,' ',a.last_name) AS full_name,numberOfBooks from (
	select author_id, count(book_id) AS numberOfBooks
	from book_authors
	group by author_id
) as ba
inner join authors as a
on ba.author_id=a.author_id
where first_name like 'Tho%'
order by numberOfBooks desc

