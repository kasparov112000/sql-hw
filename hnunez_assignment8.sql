 /*  Assignment 8.sql 
    HIPOLITO NUNEZ
    CS 155A, Spring 2017 */
 
/* Just copy / paste from mysql command-line to a text editor to do this. */
/* put the database name into this command */

/* Query 0 */
 
  use library;
 
/* Query 1 */

SELECT count( b.publisher_id ) ,  b.category_name
FROM books b
GROUP BY b.publisher_id;

/* Query 2 */
SELECT count(ISBN)
FROM books where publisher_id = 3;

/*Query 3  
 */
select  title, isbn, pub_date  from books order by pub_date LIMIT  1;

/* QUERY 4 */
SELECT   b.category_name, count( b.publisher_id )
FROM books b  where category_name = 'COMPUTER';

/*QUERY 5 */
SELECT   b.category_name, count( b.publisher_id )
FROM books b  group by category_name;

/*QUERY 6 */ 	
SELECT a.name, b.title
FROM publisher as a JOIN books as b ON(a.publisher_id = b.publisher_id) where a.name = 'AMERICAN PUBLISHING';


/*Query 7 */
SELECT b.branch_id, b.due_date, a.title, c.last_name, c.address FROM books as A 
INNER JOIN bookloans as b ON(a.ISBN = B.ISBN)
INNER JOIN MEMBER AS c ON(b.card_no = c.card_no)
where b.due_date = '2015-06-12' and b.branch_id = 6789;

/*Query 8 */
SELECT a.branch_id, a.branch_name, count(b.ISBN) as 'Number of Books' FROM branches as A 
JOIN bookloans as b ON(a.branch_id = B.branch_id) group by a.branch_id;


/*Query 9*/
SELECT a.card_no, a.first_name, a.last_name, a.address, count(a.card_no) as 'Number of Books' FROM member as A 
JOIN bookloans as b ON(a.card_no = B.card_no) group by a.last_name;	

/*Query 10*/
select a.author_id, count(a.author_id) as 'The number of Books' from author as a 
JOIN bookauthor as b On(a.author_id = b.author_id) where (a.lname & ' ' & a.lname) = 'LISA WHITE';

 

