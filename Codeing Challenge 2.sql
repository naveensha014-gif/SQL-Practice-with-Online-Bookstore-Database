create database online_bookstore;
CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    ISBN VARCHAR(20) UNIQUE,
    Price DECIMAL(8,2),
    CHECK (Price > 0)
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    BookID INTEGER,
    OrderDate DATE NOT NULL,
    Quantity INTEGER,
    CHECK (Quantity > 0),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

ALTER TABLE Books
ALTER ISBN SET DEFAULT 'NOT-AVAILABLE';

INSERT INTO Books (BookID, Title, Author, ISBN, Price)
VALUES
(1, 'SQL Basics', 'John Smith', 'ISBN001', 499.99),
(2, 'Database Design', 'Emily Clark', 'ISBN002', 699.50),
(3, 'Learning MySQL', 'David Miller', 'ISBN003', 550.75),
(4, 'Advanced SQL', 'Sophia Lee', 'ISBN004', 799.00),
(5, 'Data Management', 'Michael Brown', 'ISBN005', 620.25);

SELECT * FROM Books;

UPDATE Books
SET Price = 850.00
WHERE BookID = 4;

SELECT * FROM Books
WHERE BookID = 4;

DELETE FROM Orders
WHERE OrderID = 2;

TRUNCATE TABLE Orders;