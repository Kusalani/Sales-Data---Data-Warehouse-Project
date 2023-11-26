drop procedure dbo.UpdateDimCustomer;
CREATE PROCEDURE dbo.UpdateDimCustomer
    @CustomerID INT,
    @CustomerName NVARCHAR(100),
    @Phone NVARCHAR(15),
    @AddressLine1 NVARCHAR(255),
    @AddressLine2 NVARCHAR(255),
    @City NVARCHAR(50),
    @State NVARCHAR(50),
    @PostalCode NVARCHAR(20),
    @Country NVARCHAR(50),
    @Territory NVARCHAR(50),
    @ContactLastName NVARCHAR(50),
    @ContactFirstName NVARCHAR(50)
	
AS
BEGIN
    INSERT INTO DimCustomer (
        CustomerID,
        CustomerName,
        Phone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        PostalCode,
        Country,
        Territory,
        ContactLastName,
        ContactFirstName
		
    )
    VALUES (
        @CustomerID,
        @CustomerName,
        @Phone,
        @AddressLine1,
        @AddressLine2,
        @City,
        @State,
        @PostalCode,
        @Country,
        @Territory,
        @ContactLastName,
        @ContactFirstName
		
    );

    
END;


select * from DimCustomer;