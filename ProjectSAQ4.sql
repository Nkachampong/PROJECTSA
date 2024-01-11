Select *
From [ PROJECTSA].[dbo].[World GDP]
Select* from AdventureWork_Sales

Select * from AdventureWorks_Products

Select* from AdventureWorks_Customers

Select* from AdventureWorks_Product_Subcategories

Select* from AdventureWorks_Product_Categories


Select* from AdventureWorks_Territories


--query for United Nations Estimate for Each country territory in Europe

Select United_Nations_Estimate, Country_Territory from [ PROJECTSA].[dbo].[World GDP]
where UN_region='Europe'
 
 Create view UNEstimate_CountryTerritory_Europe AS
 Select United_Nations_Estimate, Country_Territory from [ PROJECTSA].[dbo].[World GDP]
where UN_region='Europe'

Select *
from UNEstimate_CountryTerritory_Europe

--writing query for total world bank estimate in each UN Region
Select sum(World_Bank_Estimate) AS Total_WorldBank_Estimate, UN_region
from [ PROJECTSA].[dbo].[World GDP]
group by UN_region

--creating visual for total world bank estimate in each UN Region
create view NetWorldBank_Estimate_UNRegion AS
Select sum(World_Bank_Estimate) AS Total_WorldBank_Estimate, UN_region
from [ PROJECTSA].[dbo].[World GDP]
group by UN_region

Select*
from NetWorldBank_Estimate_UNRegion

--query for UN Region with average worldbank estimate greater than 1000000
Select UN_region, AVG(World_Bank_Estimate) AS Average_WorldBank_Estimate from [ PROJECTSA].[dbo].[World GDP]
where World_Bank_Estimate>1000000
group by UN_region

--creating visual for UN Region with average worldbank estimate greater than 1000000
create view AVG_WorldBankEstimate_Greaterthan_million AS
Select UN_region, AVG(World_Bank_Estimate) AS Average_WorldBank_Estimate from [ PROJECTSA].[dbo].[World GDP]
where World_Bank_Estimate>1000000
group by UN_region

Select * 
from AVG_WorldBankEstimate_Greaterthan_million

--query for country territory with total worldbank estimate greater than 2000000

Select Country_Territory,sum(World_Bank_Estimate)AS Total_WorldBank_Estimate from [ PROJECTSA].[dbo].[World GDP]
where World_Bank_Estimate>2000000
group by Country_Territory

--creating visual for country territory with total worldbank estimate greater 2000000
Create view TotalWorldBankEstimate_greaterThan_twoMillion AS
Select Country_Territory,sum(World_Bank_Estimate)AS Total_WorldBank_Estimate from [ PROJECTSA].[dbo].[World GDP]
where World_Bank_Estimate>2000000
group by Country_Territory

Select*
fv  from TotalWorldBankEstimate_greaterThan_twoMillion