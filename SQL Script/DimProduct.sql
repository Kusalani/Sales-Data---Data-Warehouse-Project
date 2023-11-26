drop table if exists DimProduct;
CREATE TABLE DimProduct (
    ProductSK INT IDENTITY(1,1) PRIMARY KEY,
    ProductCode NVARCHAR(50) UNIQUE,  -- Alternate key
    ProductLine NVARCHAR(50),
    MSRP INT,
    InsertDate DATETIME ,
    ModifiedDate DATETIME
);