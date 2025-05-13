-- we use Cross Join to combine every record from the first table
-- with every record from the second table.

USE sql_store;

SELECT 
    c.first_name AS customet,
    p.name AS product

FROM customers c

CROSS JOIN products p

ORDER BY c.first_name

-- Another way to write this:
SELECT 
    c.first_name AS customet,
    p.name AS product

FROM customers c , products p

ORDER BY c.first_name

