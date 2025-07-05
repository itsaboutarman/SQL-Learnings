SHOW VARIABLES LIKE 'transaction_isolation';

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE; --> You can choose any other isolation level
-- This sets the isolation level only for the current transaction.
-- You must run this *before* BEGIN / START TRANSACTION.
-- Affects only one transaction.

SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- Sets the isolation level for all transactions in the current session (e.g., current connection).
-- Remains in effect until the session ends or another session-level setting overrides it.

SET GLOBAL TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- Changes the default isolation level for *all* new sessions.
-- Requires administrative privileges.
-- Does NOT affect already open sessions.