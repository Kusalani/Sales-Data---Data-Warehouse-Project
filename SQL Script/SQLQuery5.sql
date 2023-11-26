SELECT TOP (1000) [ProductCode]
      ,[ProductLine]
      ,[MSRP]
  FROM [Cargills_Sales_Data_Staging].[dbo].[StgProduct]


  select COUNT(*)
    FROM [Cargills_Sales_Data_Staging].[dbo].[StgProduct]