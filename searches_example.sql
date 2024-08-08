-- Search  the stock of each product in the Product table
SELECT 
    ProductName,
    SUM(Stock) AS TotalStock
FROM 
    Product
GROUP BY 
    ProductName;

-- Search the products with a price greater than 100.00 
    SELECT 
    ProductName,
    Price
FROM 
    Product
WHERE 
    Price > 100.00;

-- Search the customers with the first name John or the last name Doe
SELECT 
    CustomerID,
    FirstName,
    LastName,
    Email
FROM 
    Customer
WHERE 
    FirstName = 'John' OR LastName = 'Doe';

-- Search the orders made on 2023-08-01
SELECT 
    OrderID,
    CustomerID,
    OrderDate,
    Total
FROM 
    "Order"
WHERE 
    OrderDate = '2023-08-01';

-- Search the order items with a quantity equal or greater than 1
SELECT 
    OrderID,
    ProductID,
    Quantity,
    UnitPrice
FROM 
    OrderItem
WHERE 
    Quantity >= 1;

-- Search the total sold of each product using JOIN
SELECT 
    Product.ProductName,
    SUM(OrderItem.Quantity) AS TotalSold
FROM 
    OrderItem
JOIN 
    Product ON OrderItem.ProductID = Product.ProductID
GROUP BY 
    Product.ProductName;

-- Search the total spent by each customer using JOIN
SELECT 
    Customer.FirstName,
    Customer.LastName,
    SUM("Order".Total) AS TotalSpent
FROM 
    "Order"
JOIN 
    Customer ON "Order".CustomerID = Customer.CustomerID
GROUP BY 
    Customer.FirstName, Customer.LastName;

-- Search the products with the word 'keyboard' in the description
SELECT 
    ProductName,
    Description
FROM 
    Product
WHERE 
    Description LIKE '%keyboard%';

--
SELECT 
    "Order".OrderID,
    COUNT(OrderItem.OrderItemID) AS NumberOfItems
FROM 
    "Order"
JOIN 
    OrderItem ON "Order".OrderID = OrderItem.OrderID
GROUP BY 
    "Order".OrderID;

-- Search the customers who have not placed any orders using LEFT JOIN
SELECT 
    Customer.CustomerID,
    Customer.FirstName,
    Customer.LastName
FROM 
    Customer
LEFT JOIN 
    "Order" ON Customer.CustomerID = "Order".CustomerID
WHERE 
    "Order".OrderID IS NULL;

-- Search the top 5 products that have been sold the most
SELECT 
    Product.ProductName,
    SUM(OrderItem.Quantity) AS TotalSold
FROM 
    OrderItem
JOIN 
    Product ON OrderItem.ProductID = Product.ProductID
GROUP BY 
    Product.ProductName
ORDER BY 
    TotalSold DESC
LIMIT 5;



