USE sql_store;

UPDATE invoices 
SET payment_total = 10, payment_date = '2025-06-06'
WHERE invoice_id = 1