/*
Second Normal Form (2NF):
A table is in 2NF if:
  1. It is already in First Normal Form (1NF)
  2. Every non-key column depends on the whole primary key, not just part of it

In simple terms:
  Avoid repeating the same information in multiple rows
  Example: If multiple courses have the same instructor, don't store the instructor's name in every row
  Instead, move instructor info to a separate table and reference it using an ID (foreign key)

Why this matters:
  - Makes updates easier (change in one place only)
  - Reduces duplicate data
  - Keeps the database cleaner and more reliable
*/