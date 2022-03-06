/****** CLEANSED DimDate  ******/
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date -- ,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] AS Week --  ,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] AS WeekNum, 
  [EnglishMonthName] AS Month -- ,[SpanishMonthName]
  --  ,[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS MonthNum, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year --  ,[CalendarSemester]
  -- ,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2019
