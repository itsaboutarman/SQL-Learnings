USE sql_store;

SELECT 
    order_id,
    order_date,
    'Active' AS status
FROM orders o
WHERE order_date >= '2019-01-01'
UNION
SELECT 
    order_id,
    order_date,
    'Archived' AS status
FROM orders o
WHERE order_date < '2019-01-01'

-------------------------------------------------------------------
-- Another example:

USE sql_store;

SELECT 
	customer_id, 
    first_name,
    points,
    'Gold' AS type
FROM customers
WHERE points >= 3000
UNION 
SELECT 
	customer_id, 
    first_name,
    points,
    'Silver'
FROM customers
WHERE points between 2000 and 3000
UNION
SELECT 
	customer_id, 
    first_name,
    points,
    'Bronze'
FROM customers
WHERE points < 2000

