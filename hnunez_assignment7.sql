 /*  Assignment 7.sql 
    HIPOLITO NUNEZ
    CS 155A, Spring 2017 */
 
/* Just copy / paste from mysql command-line to a text editor to do this. */
/* put the database name into this command */

/* Query 0 */
 
  use bookstore;
 
/* Query 1 */

SELECT category_name, product_name, list_price FROM product 
 JOIN CATEGORY ON
		product.category_id = category.category_id;

 /* Query 2 */

SELECT first_name, last_name, line1, city, state zip_code FROM CUSTOMER 
 JOIN ADDRESS ON
		CUSTOMER.customer_id = address.customer_id and email_address='allan.sherwood@yahoo.com';
        

 /* Query 3 */
 SELECT first_name, last_name, line1, city, state zip_code FROM CUSTOMER 
 JOIN ADDRESS ON
		CUSTOMER.customer_id = address.customer_id where address_id = shipping_address_id;   
        

 /* Query 4*/
 SELECT T1.last_name, T1.first_name, T2.order_date, T4.product_name, T3.item_price, T3.quantity
 FROM CUSTOMER T1 
  join  
		orders T2 on T1.customer_id = T2.customer_id
   join
        orderitems T3 on T2.order_id = T3.order_id
    join
        product T4 on T3.product_id = T4.product_id;
        
        
  /* Query 5*/ 
 SELECT T1.product_name, T1.list_price
 FROM PRODUCT T1 
  INNER join  
		PRODUCT T2 on T2.product_id = T1.product_id
        where T1.list_price = T2.list_price;
 
        
 /*Query 6 */       
 SELECT product.product_id, product.product_name, vendor.company_name FROM product 
 JOIN VENDOR ON
		product.vendor_id = Vendor.VENDOR_id;
        
        
/*Query 7 */
SELECT category.category_name, product.product_id  FROM product 
 right JOIN category ON
		PRODUCT.product_id =  NULL;
        
        
/*Query 8 */        
 SELECT T2.order_id,  T2.order_date, T4.product_name, T3.quantity * T3.item_price as Amount
 FROM CUSTOMER T1 
  join  
		orders T2 on T1.customer_id = T2.customer_id
   join
        orderitems T3 on T2.order_id = T3.order_id
    join
        product T4 on T3.product_id = T4.product_id;       
        
        
  /*Query 9 */      
  SELECT T1.last_name,  T2.ship_date
 FROM CUSTOMER T1 
  join  
		orders T2 on T1.customer_id = T2.customer_id
        where T2.ship_date is null order by T2.order_date;
        
  /*Query 10*/   
   SELECT T3.product_name,  T2.order_id, T1.ship_address_id
 FROM orders T1 
  join  
		orderitems T2 on T1.order_id = T2.order_id
    join  
		product T3 on T2.product_id = t3.product_id; 
  
  
   /*Query 11*/    
 SELECT T1.last_name, T1.first_name, T2.order_id, T2.order_date, T3.product_id, T4.product_name
 FROM CUSTOMER T1 
  join  
		orders T2 on T1.customer_id = T2.customer_id
   join
        orderitems T3 on T2.order_id = T3.order_id
    join
        product T4 on T3.product_id = T4.product_id;  



        