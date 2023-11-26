drop table if exists DimOrder;
CREATE TABLE DimOrder (
    OrderSK INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,  -- Alternate key
    OrderNumber INT,
    OrderDate DATETIME,
    Status NVARCHAR(50),
    QTR_ID INT,
    MONTH_ID INT,
    YEAR_ID INT,
    ProductCode NVARCHAR(50),
    CustomerID INT,
    InsertDate DATETIME,
    ModifiedDate DATETIME 
);
