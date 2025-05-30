USE sql_invoicing;

DROP VIEW clients_balance; 

CREATE OR REPLACE VIEW clients_balance AS
	SELECT 
		c.client_id,
		c.name,
		SUM(i.invoice_total - i.payment_total) AS balance
	FROM clients c
	JOIN invoices i USING (client_id)
    GROUP BY c.client_id, c.name
    
    WITH CHECK OPTION
-- The WITH CHECK OPTION clause is used when creating a view to ensure that
-- any INSERT or UPDATE performed through the view complies with the view’s WHERE condition.