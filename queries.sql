USE sql_invoicing;

SELECT 
	client_id,
    SUM(invoice_total) AS total_sales
    COUNT(*) AS number_of_invoices,

FROM invoices i

GROUP BY client_id
HAVING total_sales > 500 

-- we use WHERE clause to filter rows before grouping

-- we use HAVING clause to filter rows after grouping
-- note: the columns that we use in HAVING clause have to be part of our SELECT clause

-- in this example we cannot filter total_sales before grouping

------------------------------------------------------------------------------------------------------------------
-- another example:

USE sql_store;

SELECT
	c.customer_id,
    c.first_name,
    c.last_name,
	SUM(oi.quantity * oi.unit_price) AS total_sales 
		
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE state = 'VA'
GROUP BY c.customer_id
HAVING total > 100