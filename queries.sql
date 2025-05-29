USE sql_invoicing;

SELECT *
FROM clients c
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    WHERE client_id = c.client_id
)


-- equal to:

SELECT *
FROM clients c
WHERE client_id IN (
	SELECT client_id
    FROM invoices
)

-- note that in large tables, EXISTS is faster than IN

