/*
Third Normal Form (3NF):
A table is in 3NF if:
  1. It is already in Second Normal Form (2NF)
  2. All non-key columns depend only on the primary key, and not on other non-key columns

In simple terms:
  Each piece of data should belong to the row's main topic (the primary key)
  Don't include columns that depend on other columns

Example:
  If a table stores StudentID, DepartmentID, and DepartmentName,
  DepartmentName depends on DepartmentID, not directly on StudentID
  → This breaks 3NF

Fix:
  Move DepartmentName into a separate Departments table and link using DepartmentID

Why 3NF is important:
  - Avoids duplicated data
  - Makes updates safer and more consistent
  - Keeps each table focused on one topic
Third Normal Form (3NF):
A table is in 3NF if:
  1. It is already in Second Normal Form (2NF)
  2. All non-key columns depend only on the primary key, and not on other non-key columns

In simple terms:
  Each piece of data should belong to the row's main topic (the primary key)
  Don't include columns that depend on other columns

Example:
  If a table stores StudentID, DepartmentID, and DepartmentName,
  DepartmentName depends on DepartmentID, not directly on StudentID
  → This breaks 3NF

Fix:
  Move DepartmentName into a separate Departments table and link using DepartmentID

Why 3NF is important:
  - Avoids duplicated data
  - Makes updates safer and more consistent
  - Keeps each table focused on one topic
*/