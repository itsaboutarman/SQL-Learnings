/*
  There are 3 primary types of relationships:

  1️⃣ One-to-One (1:1)

  - Meaning: One record in Table A is related to exactly one record in Table B, and vice versa.
  - Use case: When splitting information into two separate tables for clarity, privacy, or optionality.
  - Example:
      - Table: USERS (user_id, name)
      - Table: USER_PROFILES (user_id, profile_picture, bio)
      - Each user has one profile, and each profile belongs to one user.
  - Implementation: Usually by putting a UNIQUE foreign key in one of the tables.

  -------------------------------------------------
  2️⃣ One-to-Many (1:N)

  - Meaning: One record in Table A can be related to many records in Table B,
             but each record in Table B relates to only one record in Table A.
  - Most common type of relationship.
  - Example:
      - Table: AUTHORS (author_id, name)
      - Table: BOOKS (book_id, title, author_id)
      - One author can write many books, but each book has only one author.
  - Implementation: Table B (BOOKS) contains a foreign key (author_id) pointing to Table A (AUTHORS).

  -------------------------------------------------
  3️⃣ Many-to-Many (M:N)

  - Meaning: One record in Table A can relate to many in Table B, and vice versa.
  - Requires a junction (bridge) table to implement.
  - Example:
      - Table: STUDENTS (student_id, name)
      - Table: COURSES (course_id, title)
      - Each student can enroll in many courses, and each course can have many students.
      - Bridge Table: ENROLLMENTS (student_id, course_id, grade)
  - Implementation:
      - ENROLLMENTS table contains foreign keys to both STUDENTS and COURSES.

  -------------------------------------------------
  💡 Summary:

  - 1:1 = Unique pairing
  - 1:N = Parent has many children
  - M:N = Both sides have multiple associations; needs a third table

  These relationships are crucial to properly normalize data and avoid redundancy,
  while still maintaining logical connections between real-world entities.
*/
