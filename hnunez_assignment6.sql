 /*  Assignment 6.sql 
    HIPOLITO NUNEZ
    CS 155A, Spring 2017 */
 
 
/* Just copy / paste from mysql command-line to a text editor to do this. */



/* put the database name into this command */

/* Query 0 */
 
  use bookstore;
 
/* Query 1 */

INSERT INTO CATEGORY (category_id, category_name)
VALUES ('81', 'Musical Instruments');
 
 
/* Query 2 */
UPDATE CATEGORY
SET category_name ="Cameras and Camcorders"
WHERE category_id='81';
        
/* Query 3 */
INSERT INTO PRODUCT (product_id, category_id, product_code, product_name, description, list_price, discount_percent, date_added, vendor_id)
VALUES ('17234', '81', 'Camera640', 'Canon', 'Canon EOS Rebel T5 DSLR Camera', '755.99', '0', '2016-04-30 13:14:15', '2' );

/* Query 4 */
UPDATE PRODUCT
SET discount_percent ="30"
WHERE product_id='17234';

/* Query 5 */
DELETE from PRODUCT
WHERE category_id=81;

DELETE from CATEGORY
WHERE category_id=81;

/* Query 6*/
UPDATE orders
SET card_type ="American Express"
WHERE order_id='9';

/* Query 7*/
DELETE from orderitems
WHERE order_id=5;

DELETE from orders
WHERE order_id=5;

/* Query 8*/
UPDATE employee
SET salary ="6500"
WHERE salary='6000';

/* Query 9*/
INSERT INTO customer (Customer_id, email_address, password, first_name, last_name)
VALUES ('99999', 'rick@raven.com', '', 'Rick', 'Raven' );

/* Query 10*/
UPDATE customer
SET password ="secret"
WHERE email_address='rick@raven.com';

/* Query 11*/
UPDATE customer
SET password = "reset";








