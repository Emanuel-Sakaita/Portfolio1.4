--Cleanse Dim_Datetable 
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date,  
  --,[DayNumberOfWeek]
  
  [EnglishDayNameOfWeek]AS Day,
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  
  [WeekNumberOfYear] AS WeekNr , 
  [EnglishMonthName] As Month,
  left([EnglishMonthName],3) As Month_Short, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  
  [MonthNumberOfYear] As MonthNr, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
Where CalendarYear = 2009
