/****** Fact Internet sales cleansed  ******/
SELECT 
  TOP (1000) [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey] --,[PromotionKey]
  --,[CurrencyKey]
  --,[SalesTerritoryKey]
  , 
  [SalesOrderNumber] --,[SalesOrderLineNumber]
  --,[RevisionNumber]
  --,[OrderQuantity]
  --,[UnitPrice]
  --,[ExtendedAmount]
  --,[UnitPriceDiscountPct]
  --,[DiscountAmount]
  --,[ProductStandardCost]
  --,[TotalProductCost]
  , 
  [SalesAmount] --,[TaxAmt]
  --,[Freight]
  --,[CarrierTrackingNumber]
  --,[CustomerPONumber]
  --,[OrderDate]
  --,[DueDate]
  --,[ShipDate]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 
  -- TO ALWAY BRING DATA TWO YEARS BEFORE THE EXTRACTION DATE
ORDER BY 
  OrderDateKey ASC
