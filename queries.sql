/*
Normalization:
A process in database design used to minimize data redundancy and improve data integrity.
It involves organizing tables and relationships to ensure data is stored logically and efficiently.

The goal of normalization is to:
  - Eliminate duplicate data
  - Ensure data dependencies make sense
  - Make the database easier to maintain, update, and query

Normalization is typically done in stages called "normal forms" (1NF, 2NF, 3NF, etc.),
where each form builds on the previous one to address specific types of redundancy or anomalies.

Benefits:
  - Reduces storage waste
  - Avoids update, insert, and delete anomalies
  - Improves data consistency and structure
*/

/*
First Normal Form (1NF):
Ensures that all columns in a table contain only atomic (indivisible) values.
Each cell must hold a single value, not a list or set of values.
This prevents repetition, redundancy, and makes querying and updating easier.

Violations of 1NF include:
  - Storing multiple values in a single column (e.g., "val1, val2, val3")
  - Using repeating groups (e.g., phone1, phone2, phone3)

To achieve 1NF:
  - Split multi-valued attributes into separate rows
  - Ensure each field contains only one value per record
  - Use separate related tables if necessary

Example violating 1NF:
  | CustomerID | Name | PhoneNumbers              |
  |------------|------|---------------------------|
  |     1      | Ali  | 09121234567,09129876543   |

Fixed version (in 1NF):
  | CustomerID | Name | PhoneNumber    |
  |------------|------|----------------|
  |     1      | Ali  | 09121234567    |
  |     1      | Ali  | 09129876543    |
*/