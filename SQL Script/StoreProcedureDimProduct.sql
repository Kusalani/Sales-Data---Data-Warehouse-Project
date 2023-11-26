
CREATE PROCEDURE dbo.UpdateDimProduct
    @ProductCode NVARCHAR(50),
    @ProductLine NVARCHAR(50),
    @MSRP INT
    
AS
BEGIN
    INSERT INTO DimProduct (
        ProductCode,
        ProductLine,
        MSRP
        
    )
    VALUES (
        @ProductCode,
        @ProductLine,
        @MSRP
        
    );


END;


select * from DimProduct;