-- User or Session Vriables:
SET @invoice_count = 0;
-- User-defined variables (@var) persist during the session and are lost when the connection closes.


-- Local Variables:
DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_client;

DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_client 
(
	client_id INT
)
BEGIN
	
    DECLARE invoices_count INT DEFAULT 0;
    DECLARE invoices_total INT DEFAULT 0;
-- Local variables exist only during the procedure's execution.
	
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices i
    WHERE i.client_id = client_id
		AND	payment_total = 0;
	
    SELECT invoices_count , invoices_total;
END $$
DELIMITER ;
