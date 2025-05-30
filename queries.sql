USE sql_invoicing;

DROP VIEW clients_balance; -- Drop the view if it exists before creating it again

CREATE OR REPLACE VIEW clients_balance AS -- Create or replace the view
	SELECT 
		c.client_id,
		c.name,
		SUM(i.invoice_total - i.payment_total) AS balance
	FROM clients c
	JOIN invoices i USING (client_id)
    GROUP BY c.client_id, c.name

-- if you want to change the view, you can drop it and create it again
-- or use CREATE OR REPLACE VIEW to update it without dropping