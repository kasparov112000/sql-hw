 /*  Assignment 5.sql 
    HIPOLITO NUNEZ
    CS 155A, Spring 2017 */
 
 
/* Just copy / paste from mysql command-line to a text editor to do this. */



/* put the database name into this command */

/* Query 0 */
 
 
/* Query 1 */

  DROP DATABASE IF EXISTS library;
  CREATE DATABASE library;
  use library;



/* Query 2 BOOKS (ISBN, title, pub_date DATE, publisher_id , category_name) */

 create table BOOKS(ISBN varchar(60) PRIMARY KEY,
                         title varchar(255),
                         pub_date date,
                         publisher_id varchar(255),
                         category_name varchar(255)
		     );


 create table MEMBER(card_no int(12) PRIMARY KEY,
                         last_name varchar(255),
                         first_name varchar(255),
                         address varchar(255),                       
		     	 city varchar(255),
			 state varchar(255),
			 zip varchar(10),
			 region varchar(255)
			
		      );


 create table BRANCHES(branch_id int(12) PRIMARY KEY,
                         branch_name varchar(255),
                         city varchar(255)
		     );


 create table BOOKLOANS(ISBN varchar(60),
                         title varchar(255),
                         branch_id varchar(255),
                         card_no varchar(255),
                         date_out datetime
		     );

/* Query 3 */

INSERT INTO branches (branch_id,branch_name, city) VALUES
(1234,'Bayfair', 'San Leandro'),
(2345,'Cal State', 'Hayward'),,
(3456,'Downtown', 'San Francisco'),
(45678,'Palo Alto', 'Palo Alto'),
(5678,'San Mateo', 'San Mateo'),
(6789,'Foster City', 'Foster City');

--
-- Insert data for member table
--
INSERT INTO member
VALUES (1001, 'MORALES', 'BONITA', 'P.O. BOX 651', 'EASTPOINT', 'FL', '32328', 'SE');
INSERT INTO member
VALUES (1002, 'THOMPSON', 'RYAN', 'P.O. BOX 9835', 'SANTA MONICA', 'CA', '90404', 'W');
INSERT INTO  member 
VALUES (1003, 'SMITH', 'LEILA', 'P.O. BOX 66', 'TALLAHASSEE', 'FL', '32306', 'SE'); 
INSERT INTO  member 
VALUES (1004, 'PIERSON', 'THOMAS', '69821 SOUTH AVENUE', 'BOISE', 'ID', '83707', 'NW'); 
INSERT INTO  member 
VALUES (1005, 'GIRARD', 'CINDY', 'P.O. BOX 851', 'SEATTLE', 'WA', '98115', 'NW'); 
INSERT INTO  member 
VALUES (1006, 'CRUZ', 'MESHIA', '82 DIRT ROAD', 'ALBANY', 'NY', '12211', 'NE'); 
INSERT INTO  member 
VALUES (1007, 'GIANA', 'TAMMY', '9153 MAIN STREET', 'AUSTIN', 'TX', '78710', 'SW'); 
INSERT INTO  member 
VALUES (1008, 'JONES', 'KENNETH', 'P.O. BOX 137', 'CHEYENNE', 'WY', '82003','N'); 
INSERT INTO  member 
VALUES (1009, 'PEREZ', 'JORGE', 'P.O. BOX 8564', 'BURBANK', 'CA', '91510', 'W'); 
INSERT INTO  member 
VALUES (1010, 'LUCAS', 'JAKE', '114 EAST SAVANNAH', 'ATLANTA', 'GA', '30314', 'SE'); 
INSERT INTO  member 
VALUES (1011, 'MCGOVERN', 'REESE', 'P.O. BOX 18', 'CHICAGO', 'IL', '60606', 'N');  
INSERT INTO  member 
VALUES (1012, 'MCKENZIE', 'WILLIAM', 'P.O. BOX 971', 'BOSTON', 'MA', '02110', 'NE'); 
INSERT INTO  member 
VALUES (1013, 'NGUYEN', 'NICHOLAS', '357 WHITE EAGLE AVE.', 'CLERMONT', 'FL', '34711', 'SE'); 
INSERT INTO  member 
VALUES (1014, 'LEE', 'JASMINE', 'P.O. BOX 2947', 'CODY', 'WY', '82414', 'N'); 
INSERT INTO  member 
VALUES (1015, 'SCHELL', 'STEVE', 'P.O. BOX 677', 'MIAMI', 'FL', '33111', 'SE'); 
INSERT INTO  member 
VALUES (1016, 'DAUM', 'MICHELL', '9851231 LONG ROAD', 'BURBANK', 'CA', '91508', 'W'); 
INSERT INTO  member 
VALUES (1017, 'NELSON', 'BECCA', 'P.O. BOX 563', 'KALMAZOO', 'MI', '49006', 'N'); 
INSERT INTO  member 
VALUES (1018, 'MONTIASA', 'GREG', '1008 GRAND AVENUE', 'MACON', 'GA', '31206', 'SE'); 
INSERT INTO  member 
VALUES (1019, 'SMITH', 'JENNIFER', 'P.O. BOX 1151', 'MORRISTOWN', 'NJ', '07962', 'NE'); 
INSERT INTO  member 
VALUES (1020, 'FALAH', 'KENNETH', 'P.O. BOX 335', 'TRENTON', 'NJ', '08607', 'NE');
 --
-- Insert data for bookstable
--

INSERT INTO books
VALUES ('1059831198','BODYBUILD IN 10 MINUTES A DAY','2005-01-21',4, 'FITNESS'); 
INSERT INTO books
VALUES ('0401140733','REVENGE OF MICKEY','2005-12-22',1, 'FAMILY LIFE'); 
INSERT INTO books
VALUES ('4981341710','BUILDING A CAR WITH TOOTHPICKS','2016-03-18',2, 'CHILDREN'); 
INSERT INTO books
VALUES ('8843172113','DATABASE IMPLEMENTATION','2003-06-04',3, 'COMPUTER'); 
INSERT INTO books
VALUES ('3437212490','COOKING WITH MUSHROOMS','2004-02-08',4, 'COOKING'); 
INSERT INTO books
VALUES ('3957136468','HOLY GRAIL OF ORACLE','2005-12-31',3, 'COMPUTER'); 
INSERT INTO books
VALUES ('1915762492','HANDCRANKED COMPUTERS','2005-01-12',3, 'COMPUTER'); 
INSERT INTO books
VALUES ('9959789321','E-BUSINESS THE EASY WAY','2006-03-01',2, 'COMPUTER'); 
INSERT INTO books
VALUES ('2491748320','PAINLESS CHILD-REARING','2004-07-14',5, 'FAMILY LIFE'); 
INSERT INTO books
VALUES ('0299282519','THE WOK WAY TO COOK','2001-09-14',4, 'COOKING'); 
INSERT INTO books
VALUES ('8117949391','BIG BEAR AND LITTLE DOVE','2005-11-14',5, 'CHILDREN'); 
INSERT INTO books
VALUES ('0132149871','HOW TO GET FASTER PIZZA','2001-11-06',4, 'SELF HELP'); 
INSERT INTO books
VALUES ('9247381001','HOW TO MANAGE THE MANAGER','2005-05-03',1,  'BUSINESS'); 
INSERT INTO books
VALUES ('2147428890','SHORTEST POEMS','2006-05-05',5, 'LITERATURE');
 
--
-- Insert data for bookloans table
--
INSERT INTO bookloans VALUES ('4981341710', 1234, 1001,'2015-01-21', '2015-02-21');
INSERT INTO bookloans VALUES ('8843172113', 1234, 1003,'2015-12-22', '2016-01-22');
INSERT INTO bookloans VALUES ('3437212490', 2345, 1005,'2013-06-04','2013-07-04');
INSERT INTO bookloans VALUES ('3957136468', 3456, 1010, '2014-02-08', '2014-02-08');
INSERT INTO bookloans VALUES ('1915762492', 3456, 1011,'2015-12-31', '2016-01-31');
INSERT INTO bookloans VALUES ('9959789321', 5678, 1004, '2015-01-12','2015-02-12');
INSERT INTO bookloans VALUES ('2491748320', 45678, 1004, '2016-01-12','2016-02-12');
INSERT INTO bookloans VALUES ('0299282519', 5678, 1006, '2015-03-12','2015-04-12');
INSERT INTO bookloans VALUES ('8117949391', 6789, 1008, '2015-01-22','2015-06-12');
INSERT INTO bookloans VALUES ('9247381001', 3456, 1012, '2015-04-12','2015-05-12');
INSERT INTO bookloans VALUES ('2147428890', 2345, 1014, '2015-08-12','2015-09-12' );

 
/* Query 4 */
select ISBN, TITLE, publisher_id from books;


/* Query 5 */ 
 
alter table BOOKS
add date_added DATETIME;


/* Query 6 */
alter table MEMBER
modify first_name varchar(20) NOT NULL;




/* Query 7 */

DESCRIBE BOOKS;



/* Query 8 */
 DESCRIBE MEMBER;
SELECT branch_id, branch_name, city from branches;
 