--Cleanse Dim_ProductTable
SELECT [ProductKey]
      ,[ProductAlternateKey] As ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      p.[EnglishProductName] As [Product Name],
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color] As [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      p.[Size] As [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] As [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName] As [Product Model Name],
      --,[LargePhoto]
      p.[EnglishDescription] As [Product Description],
	  ps.[EnglishProductSubcategoryName] As [Sub Category], --Joined in From Subcategory Table
	  --convert total deaths to int
	  --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
	  ISNULL(p.status, 'OUTDATED') As [Product Status]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
   LEFT JOIN [dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey =p.ProductSubcategoryKey
 
 