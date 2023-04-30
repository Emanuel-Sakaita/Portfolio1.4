--Cleanse Dim_CustomerTable 
SELECT[CustomerKey],
      --,[GeographyKey]
      ---,[CustomerAlternateKey]
     --,[Title]
      FirstName As [First Name],
     -- ,[MiddleName]
      LastName As [Last Name],
CONCAT(Firstname, ' ', Lastname) As Full_Name, 

     -- ,[NameStyle]
      --,[BirthDate]
     -- ,[MaritalStatus]
      --,[Suffix]
     -- ,[Gender]
	 Case gender When 'M' THEN 'Male'
				   When 'F' THEN 'Female'
	END AS Gender, 
     -- ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      [DateFirstPurchase],
      --,[CommuteDistance],
	  --Joined in customer city from Geographic city
	  g.city As [city]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] As C
  left Join [dbo].[DimGeography] as g on g.GeographyKey = c.GeographyKey
--Order by customer_Key 
ORDER BY [city] desc;