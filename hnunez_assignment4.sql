/*  Assignment 4.sql 
    HIPOLITO NUNEZ
    CS 155A, Spring 2017 */
 
 
/* Just copy / paste from mysql command-line to a text editor to do this. */

\W    

/* put the database name into this command */

USE bookstore;- /*- put the database name into this command and remove the comment. Keep the ending semicolon;*/

/* Query 0 */

SELECT user(), current_date(), version(), @@sql_mode\G

/* Query 1 */
 create table COMPUTER(serial_number int(7) PRIMARY KEY,
                         make varchar(255),
                         model varchar(255),
                         processor_type varchar(255),
                         memory_type varchar(255),
                         disk_size varchar(255)
		     );


/* Query 2 */

-- INSERT INTO computer
INSERT INTO computer VALUES(
		9871234, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 
		'6.0 GBytes', '1.0 TBytes');
INSERT INTO computer VALUES(
		9871245, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 
		'6.0 GBytes', '1.0 TBytes');
INSERT INTO computer VALUES(
		9871256, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 
		'6.0 GBytes', '1.0 TBytes');
INSERT INTO computer VALUES(
		9871267, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 
		'6.0 GBytes', '1.0 TBytes');
INSERT INTO computer VALUES(
		9871278, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530',
		'6.0 GBytes', '1.0 TBytes');


/* Query 3 */

ALTER TABLE computer 
ADD processor_speed int(20);



/* Query 4 */
SELECT * FROM computer;


/* Query 5 */
describe computer;

/* Query 6 */
alter table computer
drop processor_speed;


/* Query 7 */
alter table computer 
rename table COMPUTER_BCKUP;

RENAME TABLE computer TO COMPUTER_BCKUP;

/* Query 8 */
SHOW tables;


/* Query 9 */
drop table COMPUTER_BCKUP;
show tables;


/* Query 10 */
alter table employee
add SalaryYearToDate int(12);


/* Query 11 */
alter table employee
drop SalaryYearToDate;


/* Query 12 */
describe EMPLOYEE;



