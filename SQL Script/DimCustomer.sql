drop table if exists DimCustomer;
CREATE TABLE DimCustomer (
    CustomerSK INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,  -- Alternate key
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
    ContactFirstName NVARCHAR(50),
    InsertDate DATETIME , 
    ModifiedDate DATETIME
);