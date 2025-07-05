💡 Transaction Anomalies & Isolation Levels 💡

🔴 1. Dirty Read:
One transaction reads data that another transaction has written but not yet committed.
Risk: The uncommitted data may be rolled back, making the read invalid.
❌ Happens in: READ UNCOMMITTED
✅ Prevented in: READ COMMITTED, REPEATABLE READ, SERIALIZABLE

🔴 2. Non-Repeatable Read:
A transaction reads the same row twice and gets different values,
because another committed transaction has modified it in between.
❌ Happens in: READ COMMITTED, READ UNCOMMITTED
✅ Prevented in: REPEATABLE READ, SERIALIZABLE

🔴 3. Phantom Read:
A transaction executes a query (e.g., WHERE age > 30) twice and
sees a different set of rows the second time due to insert/delete by another transaction.
❌ Happens in: REPEATABLE READ, READ COMMITTED, READ UNCOMMITTED
✅ Prevented in: SERIALIZABLE

🔴 4. Lost Update:
Two transactions read the same row and update it based on the original value.
The second update overwrites the first without knowledge of it.
❌ Happens in: READ COMMITTED, READ UNCOMMITTED
✅ Prevented in: REPEATABLE READ, SERIALIZABLE

------------------------------------------------------------------------------------------------------------------

🔒 Isolation Levels Summary:

1. READ UNCOMMITTED:
Lowest level, allows dirty reads. No guarantee of consistency.

2. READ COMMITTED:
Only committed data is visible. Prevents dirty reads but not non-repeatable or phantom reads.

3. REPEATABLE READ:
Guarantees consistent row values. Prevents dirty and non-repeatable reads, but not phantom reads.

4. SERIALIZABLE:
Highest isolation level. Prevents all anomalies by locking rows and ranges.
Behaves as if transactions are executed one after another.

⚠️ Note:
Higher isolation → more safety, but lower performance due to increased locking and blocking.

