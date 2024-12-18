-- Create table Employees
CREATE TABLE Employees
(
    EmployeeID INT,
    Name       VARCHAR(50),
    Salary     DECIMAL(10, 2)
);

-- Insert table Employees
INSERT INTO Employees (EmployeeID, Name, Salary)
VALUES (1, 'Alice Brown', 50000.00),
       (2, 'Bob White', 60000.00),
       (3, 'Charlie Green', 70000.00);