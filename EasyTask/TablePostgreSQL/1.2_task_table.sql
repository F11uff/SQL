-- Create table Orders
CREATE TABLE Orders
(
    OrderID INT,
    Product VARCHAR(50),
    Price   DECIMAL(10, 2)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, Product, Price)
VALUES (1, 'Laptop', 1000.00),
       (2, 'Smartphone', 500.00),
       (3, 'Tablet', 300.00);