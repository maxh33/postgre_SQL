INSERT INTO Customer (FirstName, LastName, Email, Phone, Address, DateOfBirth) 
VALUES 
('John', 'Doe', 'john.doe@example.com', '123456789', '123 Main St', '1980-01-01'),
('Jane', 'Smith', 'jane.smith@example.com', '987654321', '456 Elm St', '1990-02-02');

INSERT INTO Product (ProductName, Description, Price, Stock) 
VALUES 
('Laptop', 'High-end gaming laptop', 1500.00, 10),
('Mouse', 'Wireless mouse', 25.00, 50);
('Keyboard', 'Mechanical keyboard', 75.00, 30),
('Monitor', '4K Monitor', 300.00, 20),
('Printer', 'Laser printer', 200.00, 15);

INSERT INTO "Order" (CustomerID, OrderDate, Total) 
VALUES 
(1, '2023-08-01', 1525.00),
(2, '2023-08-02', 25.00);

INSERT INTO OrderItem (OrderID, ProductID, Quantity, UnitPrice) 
VALUES 
(1, 1, 1, 1500.00),
(1, 2, 1, 25.00),
(2, 2, 1, 25.00);