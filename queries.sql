USE sql_store;

SELECT 
    o.order_id,
    c.first_name
FROM orders o
JOIN customers c
    USING(customer_id)
 -- Equal to: ON o.customer_id = c.customer_id

----------------------------------------------------------------

SELECT * 
FROM order_items oi
JOIN order_item_notes oin
    USING(order_id, product_id)    
    -- ON oi.order_id = oin.order_id
    -- AND oi.product_id = oin.product_id
