
--Create Product table
CREATE TABLE Product (
    ProductCode NVARCHAR(50) PRIMARY KEY,
    ProductLine NVARCHAR(50),
    MSRP INT
    
);

-- Insert values into Products Table
INSERT INTO Product (ProductCode, ProductLine, MSRP)
SELECT DISTINCT ProductCode, ProductLine, MSRP
FROM sales_data_sample;



--Create Customer table

CREATE TABLE Customer (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(100),
    Phone NVARCHAR(15),
    AddressLine1 NVARCHAR(255),
    AddressLine2 NVARCHAR(255),
    City NVARCHAR(50),
    State NVARCHAR(50),
    PostalCode NVARCHAR(20),
    Country NVARCHAR(50),
    Territory NVARCHAR(50),
    ContactLastName NVARCHAR(50),
    ContactFirstName NVARCHAR(50)
    
);
ALTER TABLE Customer
ALTER COLUMN Phone NVARCHAR(25); -- Adjust the length as needed

UPDATE Customer
SET Phone = REPLACE(REPLACE(REPLACE(REPLACE(Phone, '(', ''), ')', ''), '-', ''), ' ', '');


-- Insert data into Customers Table
INSERT INTO Customer (CustomerName, Phone, AddressLine1, AddressLine2, City, State, PostalCode, Country, Territory, ContactLastName, ContactFirstName)
SELECT DISTINCT CustomerName, Phone, AddressLine1, AddressLine2, City, State, PostalCode, Country, Territory, ContactLastName, ContactFirstName
FROM sales_data_sample;


--Create Order table
--assumes that for a given OrderNumber, there won't be multiple entries for different customers.

CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    OrderNumber INT,
    QuantityOrdered INT,
    PriceEach DECIMAL(18, 2),
    OrderLineNumber INT,
    Sales DECIMAL(18, 2),
    OrderDate DATETIME,
    Status NVARCHAR(50),
    QTR_ID INT,
    MONTH_ID INT,
    YEAR_ID INT,
    ProductCode NVARCHAR(50),
    CustomerID INT,
    FOREIGN KEY (ProductCode) REFERENCES Product(ProductCode),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);



-- Insert data into Orders Table

INSERT INTO Orders (
    OrderNumber, 
    QuantityOrdered, 
    PriceEach, 
    OrderLineNumber, 
    Sales, 
    OrderDate, 
    Status, 
    QTR_ID, 
    MONTH_ID, 
    YEAR_ID, 
    ProductCode,
    CustomerID
)
SELECT 
    OrderNumber, 
    QuantityOrdered, 
    PriceEach, 
    OrderLineNumber, 
    Sales, 
    CONVERT(DATETIME, OrderDate, 101), -- Assuming OrderDate is in MM/DD/YYYY format
    Status, 
    QTR_ID, 
    MONTH_ID, 
    YEAR_ID, 
    p.ProductCode,
    c.CustomerID
FROM 
    sales_data_sample s
    INNER JOIN Product p ON s.ProductCode = p.ProductCode
    INNER JOIN Customer c ON s.CustomerName = c.CustomerName; 

-----

select * from Customer;

----

SELECT OrderNumber, COUNT(*)
FROM sales_data_sample
GROUP BY OrderNumber;

SELECT OrderNumber
FROM Orders
WHERE OrderNumber IN (SELECT OrderNumber FROM sales_data_sample);
