-- A trigger is an automatic action executed when specific database events occur.

DELIMITER $$
CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
END $$
DELIMITER ;

-- Avoid modifying the same table inside its own trigger to prevent infinite recursion.
