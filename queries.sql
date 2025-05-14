USE sql_store;

CREATE TABLE orders_archived AS 
SELECT * FROM orders
 -- notice that when you copy the data from one table to another,
 -- the table settings, primary keys and default values are not copied. 

----------------------------------------------------------------
-- you can also copy a range of rows
INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2025-01-01'
