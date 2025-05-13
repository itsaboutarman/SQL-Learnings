USE sql_store;

SELECT *
FROM order_items oi
JOIN order_items_notes oin
    ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id

-- when we have multiple primary keys in a table,
-- we use a compound join and apply mulltiple conditions