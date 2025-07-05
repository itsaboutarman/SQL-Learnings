USE sql_invoicing;
/* A PROCEDURE (or Stored Procedure) in SQL is a subroutine,
 or a set of SQL statements, that is stored in the database.
  It can be executed on demand, encapsulating complex logic,
   improving performance by reducing network traffic,
    and enhancing security by controlling access to data. */

DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients;
END $$
DELIMITER ;
/* DELIMITER is a command used in SQL,
  particularly in command-line clients,
  to change the default statement terminator (;). 
  This is essential when defining stored procedures, functions, or triggers 
  that contain multiple SQL statements,
  allowing the entire block to be parsed as a single unit.*/

  CALL get_clients() --> when we want to call the procedure