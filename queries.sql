-- Functions return a value and can be used in SQL expressions. 
-- Procedures perform actions and can modify data but don't return values directly.
-- Functions return one value; procedures can return multiple values and perform operations.

DROP FUNCTION IF EXISTS get_risk_factor_for_client;

DELIMITER $$
CREATE FUNCTION get_risk_factor_for_client(
	client_id INT
)
RETURNS int
-- Function attributes like DETERMINISTIC, READS SQL DATA, etc.
-- define behavior, data access, and output consistency.

-- DETERMINISTIC means the function always returns the same result for the same input.
-- READS SQL DATA means the function only reads from the database (no modification).

READS SQL DATA
BEGIN
	DECLARE risk_factor DECIMAL(9,2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9,2);
    DECLARE invoices_count INT;
    
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices i
    WHERE i.client_id = client_id;
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
RETURN risk_factor;
END $$

DELIMITER ;