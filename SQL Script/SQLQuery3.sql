SELECT TOP (1000) [CustomerID]
      ,[CustomerName]
      ,[Phone]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[City]
      ,[State]
      ,[PostalCode]
      ,[Country]
      ,[Territory]
      ,[ContactLastName]
      ,[ContactFirstName]
  FROM [Cargills_Sales_Data_Staging].[dbo].[StgCustomer]


  select COUNT(*)
    FROM [Cargills_Sales_Data_Staging].[dbo].[StgCustomer]