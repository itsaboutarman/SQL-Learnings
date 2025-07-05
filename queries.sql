DROP PROCEDURE IF EXISTS make_payment;
DELIMITER $$
CREATE PROCEDURE make_payment 
(
	invoice_id INT,
    payment_amount DECIMAL(9,2), -- 9 digits in total and 2 digits after the decimal point
	payment_date DATE
)
BEGIN
/*
This block checks if the payment_amount is negative.
If it is, it raises a custom error using the SIGNAL statement.
SQLSTATE '22003' indicates a numeric value out of range.
The custom error message "Invalid payment amount" is shown to the user.
*/	
	IF payment_amount < 0 THEN
		SIGNAL SQLSTATE '22003'
			SET MESSAGE_TEXT = 'Invalid payment amount'; 
	END IF;
            
	UPDATE invoices i
	SET
		i.payment_amount = payment_amount,
		i.payment_date = payment_date
	WHERE i.invoice_id = invoice_id;
END $$
DELIMITER 

/*
Validating all possible states for each input parameter inside the procedure 
can make the code bloated, messy, and hard to maintain.
It's better to handle input validation and parameter control on the application side,
which is faster and prevents invalid data from reaching the database at all.
*/
