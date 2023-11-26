SELECT TOP (1000) [OrderID]
      ,[OrderNumber]
      ,[QuantityOrdered]
      ,[PriceEach]
      ,[OrderLineNumber]
      ,[Sales]
      ,[OrderDate]
      ,[Status]
      ,[QTR_ID]
      ,[MONTH_ID]
      ,[YEAR_ID]
      ,[ProductCode]
      ,[CustomerID]
  FROM [Cargills_Sales_Data_Staging].[dbo].[StgOrders]


   select COUNT(*)
    FROM [Cargills_Sales_Data_Staging].[dbo].[StgOrders]