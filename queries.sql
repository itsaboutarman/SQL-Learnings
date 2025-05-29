USE sql_store;

SELECT 
	customer_id, 
    first_name,
    points,
    CASE
        WHEN points >= 3000 THEN 'Gold'
        WHEN points between 2000 AND 3000 THEN 'Silver'
        WHEN points < 2000 THEN 'Bronze'
        ELSE 'Future'
	END AS category
FROM customers


-- equal to:
SELECT 
	customer_id, 
    first_name,
    points,
    'Gold' AS category
FROM customers
WHERE points >= 3000

UNION 
SELECT 
	customer_id, 
    first_name,
    points,
    'Silver' AS category
FROM customers
WHERE points between 2000 and 3000

UNION
SELECT 
	customer_id, 
    first_name,
    points,
    'Bronze' AS category
FROM customers
WHERE points < 2000