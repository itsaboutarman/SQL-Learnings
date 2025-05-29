USE sql_invoicing;

SELECT * 

FROM invoices

WHERE invoice_total > ALL (
	SELECT invoice_total
    FROM invoices
    WHERE client_id = 3
)

-- when the subquery returns a list of values, we use the ALL operator

---------------------------------------------------------------------------------------------------------------
--equal to:

SELECT * 

FROM invoices

WHERE invoice_total > (
	SELECT MAX (invoice_total)
    FROM invoices
    WHERE client_id = 3
)
