CREATE TABLE FactSales (
    SalesSK INT IDENTITY(1,1) PRIMARY KEY,
    OrderSK INT FOREIGN KEY REFERENCES DimOrder(OrderSK),
    ProductSK INT FOREIGN KEY REFERENCES DimProduct(ProductSK),
    CustomerSK INT FOREIGN KEY REFERENCES DimCustomer(CustomerSK),
    QuantityOrdered INT,
    PriceEach DECIMAL(18, 2),
    Sales DECIMAL(18, 2),
    InsertDate DATETIME DEFAULT GETDATE(),
    ModifiedDate DATETIME DEFAULT GETDATE()
);
