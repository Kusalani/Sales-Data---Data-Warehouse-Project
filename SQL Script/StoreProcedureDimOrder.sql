CREATE PROCEDURE dbo.UpdateDimOrder
    @OrderID INT,
    @OrderNumber INT,
    @OrderDate DATETIME,
    @Status NVARCHAR(50),
    @QTR_ID INT,
    @MONTH_ID INT,
    @YEAR_ID INT,
    @ProductCode NVARCHAR(50),
    @CustomerID INT
    
    
AS
BEGIN
    INSERT INTO DimOrder (
        OrderID,
        OrderNumber,
        OrderDate,
        Status,
        QTR_ID,
        MONTH_ID,
        YEAR_ID,
        ProductCode,
        CustomerID
    )
    VALUES (
        @OrderID,
        @OrderNumber,
        @OrderDate,
        @Status,
        @QTR_ID,
        @MONTH_ID,
        @YEAR_ID,
        @ProductCode,
        @CustomerID
    );

    
END;
