-- A transaction is a sequence of one or more SQL operations that are executed as a single unit of work.
-- It ensures that either all operations succeed (commit) or all are undone (rollback) to maintain data integrity.

/*
	ACID principles ensure reliable transactions:
	A - Atomicity: All operations in a transaction succeed or none do.
	C - Consistency: Data remains valid before and after the transaction.
	I - Isolation: Concurrent transactions do not interfere with each other.
	D - Durability: Once committed, changes persist even after a crash.
*/

USE sql_store;

START TRANSACTION;
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-01', 1);
INSERT INTO order_items (customer_id, order_date, status)
VALUES (LAST_INSERT_ID(), 1, 1, 1);

COMMIT;
