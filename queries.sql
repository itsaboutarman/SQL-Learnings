USE sql_invoicing;

SELECT 
	state, 
    city, 
    SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients c USING (client_id)
group by state , city WITH ROLLUP

-- WITH ROLLUP creates additional summary rows that show aggregated values
-- at different levels of grouping.

-- this query is only available in MySQL. 