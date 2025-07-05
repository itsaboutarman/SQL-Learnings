DROP PROCEDURE IF EXISTS get_invoices_by_client;

DELIMITER $$
CREATE PROCEDURE get_invoices_by_client
(
	client_id INT
)
BEGIN
-- Example:	
	IF client_id IS NULL
		SET client_id = 2;
	END IF;
	SELECT *
	FROM INVOICES i
	WHERE i.client_id = client_id;

-- Example:
	IF client_id IS NULL
		SELECT * FROM INVOICES i;
	ELSE
	SELECT *
	FROM INVOICES i
	WHERE i.client_id = client_id;
	END IF;
-- Another way to write this code:
	SELECT *
	FROM INVOICES i
	WHERE i.client_id = IFNULL(client_id, i.client_id);
	-- IFNULL(X, Y) returns X if it's not NULL; otherwise, it returns Y

END &&
DELIMITER ;

-- Note that in all the examples above,
-- if we want to use the default value,
-- we must pass NULL as the input parameter to the procedure;
-- otherwise, leaving it empty will cause an error."