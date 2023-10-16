-- Cleansed Dim_Customers Table --
SELECT 
  c.customerkey AS CustomerKey, 
  --    ,[GeographyKey]
  --    ,[CustomerAlternateKey]
  --    ,[Title]
  c.firstname AS [FirstName], 
  --    ,[MiddleName]
  c.lastname AS [LastName], 
  c.firstname + '' + lastname AS [Full Name],
  --    ,[NameStyle]
  --    ,[BirthDate]
  --    ,[MaritalStatus]
  --    ,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' when 'F' then 'Female' End AS Gender, 
  --    ,[EmailAddress]
  --    ,[YearlyIncome]
  --    ,[TotalChildren]
  --    ,[NumberChildrenAtHome]
  --    ,[EnglishEducation]
  --    ,[SpanishEducation]
  --    ,[FrenchEducation]
  --    ,[EnglishOccupation]
  --    ,[SpanishOccupation]
  --    ,[FrenchOccupation]
  --    ,[HouseOwnerFlag]
  --    ,[NumberCarsOwned]
  --    ,[AddressLine1]
  --    ,[AddressLine2]
  --    ,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --    ,[CommuteDistance]
  g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  dbo.dimcustomer AS c 
  Left Join dbo.dimGeography AS g ON g.GeographyKey = c.geographykey 
Order by 
  CustomerKey ASC -- Ordered List by Customerkey
