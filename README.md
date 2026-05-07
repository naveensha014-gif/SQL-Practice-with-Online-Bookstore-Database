📚 Online Bookstore Database

This project is a simple SQL-based database system for an Online Bookstore. It demonstrates basic database design, table creation, constraints, and common SQL operations such as INSERT, UPDATE, DELETE, and TRUNCATE.

🗄️ Database Overview:
The database online_bookstore consists of two main tables:
1. Books Table
Stores information about books available in the bookstore.
ColumnTypeConstraintsBookIDINTEGERPRIMARY KEYTitleVARCHAR(100)NOT NULLAuthorVARCHAR(50)NOT NULLISBNVARCHAR(20)UNIQUE, DEFAULT 'NOT-AVAILABLE'PriceDECIMAL(8,2)CHECK (Price > 0)

2. Orders Table
Stores customer order details.
ColumnTypeConstraintsOrderIDINTEGERPRIMARY KEYBookIDINTEGERFOREIGN KEY → Books(BookID)OrderDateDATENOT NULLQuantityINTEGERCHECK (Quantity > 0)

⚙️ SQL Features Demonstrated:
This project includes the following SQL concepts:

Database creation
Table creation with constraints
Primary Key & Foreign Key relationships
Unique constraints
Default values
CHECK constraints for validation
Data insertion using INSERT INTO
Data retrieval using SELECT
Data modification using UPDATE
Data deletion using DELETE
Table truncation using TRUNCATE

📌 Sample Operations:

Create Database
CREATE DATABASE online_bookstore;
Insert Sample Data
INSERT INTO Books (BookID, Title, Author, ISBN, Price)VALUES(1, 'SQL Basics', 'John Smith', 'ISBN001', 499.99),(2, 'Database Design', 'Emily Clark', 'ISBN002', 699.50);
Update Record
UPDATE BooksSET Price = 850.00WHERE BookID = 4;
Delete Record
DELETE FROM OrdersWHERE OrderID = 2;
Truncate Table
TRUNCATE TABLE Orders;

📊 Example Query Output:
SELECT * FROM Books;
Returns all book records currently stored in the database.

🚀 How to Use?
Open any SQL database system (MySQL / PostgreSQL compatible with minor changes).
Run the script file containing the SQL commands.
Execute queries step-by-step or import the full script.
Verify data using SELECT statements.

🧠 Learning Outcomes:

Understanding relational database design
Working with constraints for data integrity
Performing CRUD operations in SQL
Managing relationships between tables

📁 Project Structure:

online-bookstore-db/│├── schema.sql        # Database and table creation scripts├── data.sql          # Insert statements├── queries.sql       # Update, delete, select operations└── README.md         # Project documentation



