/****** CLEANSED DimCustomer data  ******/
SELECT 
  [CustomerKey] 
  
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  [FirstName] 
  
  --,[MiddleName]
  , 
  [LastName], 
  FirstName + ' ' + LastName AS FullName 
  -- Combining First and Last Name

  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  --,[Gender]
  , 
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender 
  
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  [DateFirstPurchase] --,[CommuteDistance]
  , 
  City AS CustomerCity  -- The joined 'City' fieled from Customer geography table
FROM 
  dbo.DimCustomer AS c 
  left join dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  CustomerKey ASC
