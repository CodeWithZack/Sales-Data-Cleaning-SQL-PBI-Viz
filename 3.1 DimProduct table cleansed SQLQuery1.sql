/****** Cleansed DimProducts table  ******/
SELECT 
  [ProductKey], 
  [ProductAlternateKey] AS [Product Item Code] 
  
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  [EnglishProductName] AS [Product Name], 
  [EnglishProductSubcategoryName] AS [Sub Category] -- Joined in from subcategory table
  , 
  [EnglishProductCategoryName] AS [Product Category] 
  
  -- Joined from Category Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  , 
  [Color] AS [Product Colour] --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , 
  [Size] AS [Product Size] 
  
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  [ProductLine] AS [Product Line] 
  
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  [ModelName] AS [Product Model Name] --,[LargePhoto]
  , 
  [EnglishDescription] AS [Product Description] 
  
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , 
  [Status], 
  ISNULL (Status, 'Outdated') AS [Product status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN DBO.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey
