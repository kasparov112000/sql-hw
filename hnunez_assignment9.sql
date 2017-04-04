use bookstore;

#QUERY ONE
SELECT DISTINCT category_name
FROM category c where c.category_id in (
SELECT category_id from product
);

#QUERY TWO
SELECT product_name, list_price FROM product WHERE list_price > (SELECT avg( list_price )FROM product) ORDER BY list_price DESC ;

#QUERY THREE
SELECT category_name from category where exists (SELECT *
   FROM product
   WHERE category_id = category.category_id);
   
#QUERY FOUR





   