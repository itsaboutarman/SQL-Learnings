/*
An EVENT is a scheduled task in MySQL that runs automatically at a specific time or interval.
It is useful for maintenance tasks like deleting old data, sending reminders, or generating reports.
*/

DELIMITER $$
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
	-- AT '2019-05-01'
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
    
-- In EVENTs, DO is required before BEGIN to define the action block.
DO BEGIN
	DELETE FROM payments_audit -- this is a sample table
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END $$
DELIMITER ;

SHOW EVENTS; -- viewing events

DROP EVENT IF EXISTS yearly_delete_stale_audit_rows; -- Dropping

ALTER EVENT yearly_delete_stale_audit_rows DISABLE; -- Temporarily Enable or Disable