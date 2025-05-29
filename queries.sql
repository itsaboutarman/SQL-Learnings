USE sql_store;

SELECT 
    order_id,
    order_date,
    IF(YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') AS status
FROM orders 

--equal to:
SELECT 
    order_id,
    order_date,
    'Active' AS status
FROM orders o
WHERE YEAR(order_date) = YEAR(NOW())

UNION
SELECT 
    order_id,
    order_date,
    'Archived' AS status
FROM orders o
WHERE NOT (YEAR(order_date) = YEAR(NOW()))




