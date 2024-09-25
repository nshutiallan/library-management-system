This project is a database system to manage a Library Management System using Oracle SQL. The system allows the library to manage information about books, authors, members, and borrowing records. The SQL script includes commands to create tables, insert records, perform joins, and manage data using DDL, DML, DCL, and TCL operations.
 Problem Statement
The goal is to create a database system that allows for managing the library operations. The system should track:
- Books in the library.
- Authors who have written the books.
- Members who borrow books.
- Borrowing records that show when a book is borrowed and returned.
 Key Relationships:
- One-to-Many: One author can write many books.
- Many-to-Many: Multiple authors can write the same book, and an author can write multiple books.
- One-to-Many: A member can borrow many books, but each borrow record is linked to one book.
 SQL Operations
 1. Tables Creation
We used SQL commands to create the following tables:
- Authors: Holds author information.
- Books: Holds book information.
- AuthorsBooks: Junction table for the many-to-many relationship between authors and books.
- Members: Holds member information.
- Borrowing: Holds borrowing records to track which member borrowed which book and when.
2. DDL (Data Definition Language)
The `CREATE TABLE` statements are used to define the database schema.
3. DML (Data Manipulation Language)
Insert, update, and delete records from the tables. 
4. DCL (Data Control Language)
Grant and revoke access to the database tables. 
 5. TCL (Transaction Control Language)
Used to manage transactions, commit, and rollback changes. 
 SQL Queries
 1. Joins
We used `JOIN` operations to retrieve data across multiple related tables.
2. Subqueries
Subqueries allow us to retrieve data by using a query within another query.
 Results and Screenshots
library-management-system![Screenshot 2024-09-25 115105](https://github.com/user-attachments/assets/254e419c-b2d2-40b3-8c05-ae044a1d335d)
![Screenshot 2024-09-25 115057](https://github.com/user-attachments/assets/210beb0b-21f4-4982-a90d-8c87b48c91d9)
![Screenshot 2024-09-25 115035](https://github.com/user-attachments/assets/5ee7d1db-e71b-4986-8ea2-6a7031686adb)
![Screenshot 2024-09-25 114724](https://github.com/user-attachments/assets/8f3b04bb-69cd-43cc-b5ac-33b6f10d2c9a)
![Screenshot 2024-09-25 114715](https://github.com/user-attachments/assets/817883d3-a349-4435-a851-bcc8ab670a14)
![Screenshot 2024-09-25 114707](https://github.com/user-attachments/assets/d23debb8-da17-4390-8a32-69b6fecfc27c)
![Screenshot 2024-09-25 114700](https://github.com/user-attachments/assets/66c5ea87-3484-40b9-b9cd-7dc132e27149)
![Screenshot 2024-09-25 114654](https://github.com/user-attachments/assets/7b49b3f7-84f2-45ab-890e-4e941530e6f5)
![Screenshot 2024-09-25 114643](https://github.com/user-attachments/assets/40faf44e-8682-4672-825f-70418fcd7a2a)
![Screenshot 2024-09-25 114635](https://github.com/user-attachments/assets/b5da3758-6ecc-4bef-bd51-ce473721677a)
![Screenshot 2024-09-25 114603](https://github.com/user-attachments/assets/64cb02be-519d-46bb-b12b-e5067d65b063)
![Screenshot 2024-09-25 112215](https://github.com/user-attachments/assets/365b3bf6-0235-4e8b-898a-946d4ba3e4d6)
