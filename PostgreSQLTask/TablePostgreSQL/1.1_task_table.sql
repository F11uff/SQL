-- CREATE and INSERT table Customer
CREATE TABLE Customer
(
    CustomerID INT,
    Name       VARCHAR(50),
    City       VARCHAR(50)
);

INSERT INTO Customer (CustomerID, Name, City)
VALUES (1, 'John Doe', 'New York'),
       (2, 'Jane Smith', 'Los Angeles'),
       (3, 'Sam Johnson', 'Chicago');