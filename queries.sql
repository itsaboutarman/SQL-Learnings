USE sql_store;

SELECT * 
FROM order_items oi
JOIN sql_inventory.products p
--not that you have to prefix the tables
-- that are not part of the current database 
    ON oi.product_id = p.product_id;