/*
  📌 Data Modeling Stages in Database Design

  In database design, data modeling is typically done in three major stages:

  1. Conceptual Data Model
  2. Logical Data Model
  3. Physical Data Model

  -------------------------------------------------
  1️⃣ Conceptual Data Model:

  - Purpose: To define *what* data the system needs — at a high, business-level.
  - Focus: Entities, their attributes, and relationships.
  - No consideration of technical implementation or DBMS.
  - Audience: Business stakeholders, analysts, designers.
  - Tools: ER diagrams (Entity-Relationship), UML.
  - Example: Entities like "Student", "Course", "Instructor" with relationships like "Student enrolls in Course".

  -------------------------------------------------
  2️⃣ Logical Data Model:

  - Purpose: To define *how* the data should be organized logically.
  - Focus: Tables, columns (with data types), primary and foreign keys.
  - Still platform-independent (not specific to MySQL, Oracle, etc).
  - Enforces normalization rules (1NF, 2NF, 3NF, etc).
  - Audience: Database designers, developers.
  - Example: Tables like STUDENT(student_id, name, email), COURSE(course_id, title, price), and ENROLLMENT.

  -------------------------------------------------
  3️⃣ Physical Data Model:

  - Purpose: To implement the logical model on a specific DBMS.
  - Focus: Actual SQL code, indexes, constraints, storage engines.
  - Platform-specific: Includes details like VARCHAR lengths, storage format, InnoDB vs MyISAM, etc.
  - Includes performance tuning and security considerations.
  - Audience: Database administrators (DBAs), backend developers.
  - Example: CREATE TABLE statements in MySQL Workbench, defining CHARSET, COLLATION, ENGINE, etc.

  -------------------------------------------------
  💡 Summary:
  - Conceptual = What data?
  - Logical = How is it structured?
  - Physical = How is it implemented?

  These stages help bridge the gap between business requirements and technical implementation,
  ensuring that the final database design is efficient, normalized, and scalable.
*/

/*
  Modeling tools:
   - Microsoft Visio
   - draw.io
   - Lucidchart
*/
