/*
Deadlock occurs when two or more transactions each hold a lock on one resource and attempt to acquire a lock on the other’s resource, creating a circular wait.
As a result, none of the transactions can proceed, and the system must intervene by rolling back one of them to break the cycle.
Deadlocks are common in systems with concurrent transactions accessing the same data in different orders.
To prevent deadlocks: keep transactions short, access resources in a consistent order, avoid user interaction inside transactions, and consider lower isolation levels when appropriate.
*/