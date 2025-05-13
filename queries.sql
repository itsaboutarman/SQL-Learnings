USE sql_store;

SELECT p.product_id, p.name, oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY product_id

-- Equal to:

SELECT p.product_id, p.name, oi.quantity
FROM order_items oi
RIGHT JOIN products p 
	ON p.product_id = oi.product_id
ORDER BY product_id

-- OUTER JOIN returns all records from one or both tables, even if there's no match.
-- Unlike INNER JOIN (which returns only matching rows), OUTER JOIN includes unmatched rows too.
-- LEFT JOIN returns all rows from the left table + matched rows from the right (NULL if no match).
-- RIGHT JOIN is the opposite: all rows from the right table + matched rows from the left.

