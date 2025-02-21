This is a database project for managing book borrowing transactions in a library, developed using MSSQL.

Library Database Scenario: A database is requested to track and store information about books, authors, publishers, and students in a library. The Books table contains a unique ISBN number and title for each book, along with the author's T.C. identity number and the publisher's name. The Authors table includes a unique T.C. identity number, name, and address for each author, while the Publishers table stores a unique name, address, and multiple phone numbers for each publisher. The Students table contains the student’s number, name, address, and multiple phone numbers. A special table for book borrowing transactions has been created to store the student’s number, ISBN of the borrowed book, and the borrowing date. Purpose: This database structure allows us to manage and track the relationships between books, authors, publishers, and students, storing the data in an organized manner for efficient use.

When creating the database, the first step is to design an ER diagram and then convert the relationships into tables. After correctly defining foreign keys and primary keys, we can create the tables and perform SQL queries.



