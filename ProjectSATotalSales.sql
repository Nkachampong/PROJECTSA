Select* from AdventureWork_Sales

Select * from AdventureWorks_Products

Select* from AdventureWorks_Customers

Select* from AdventureWorks_Product_Subcategories

Select* from AdventureWorks_Product_Categories


Select* from AdventureWorks_Territories

--selecting all tables

Select sum(SalesAmount) AS Total_Sales,ProductName from AdventureWork_Sales
Inner join AdventureWorks_Products
On
AdventureWork_Sales.ProductKey= AdventureWorks_Products.ProductKey

group by ProductName

--creating visual

create view Net_Sales As

Select sum(SalesAmount) AS Total_Sales,ProductName from AdventureWork_Sales
Inner join AdventureWorks_Products
On
AdventureWork_Sales.ProductKey= AdventureWorks_Products.ProductKey

group by ProductName

--creating query for Total tax Amount by Product Color



Select sum(TaxAmt) AS Total_TaxAmount,ProductColor from AdventureWork_Sales
Inner join AdventureWorks_Products
On
AdventureWork_Sales.ProductKey= AdventureWorks_Products.ProductKey

group by ProductColor

--creating visual for Total Ta Amount by product Color
create view Net_TaxAmount As

Select sum(TaxAmt) AS Total_TaxAmount,ProductColor from AdventureWork_Sales
Inner join AdventureWorks_Products
On
AdventureWork_Sales.ProductKey= AdventureWorks_Products.ProductKey

group by ProductColor

--query for Total Freight for each product name

Select sum(Freight) AS Total_Freight,ProductName from AdventureWork_Sales
Inner join AdventureWorks_Products
On
AdventureWork_Sales.ProductKey=AdventureWorks_Products.ProductKey
Group by ProductName

--Creating a visual for Total Freight by ProductName
Create View  Net_Freight AS
Select sum(Freight) AS Total_Freight,ProductName from AdventureWork_Sales
Inner join AdventureWorks_Products
On
AdventureWork_Sales.ProductKey=AdventureWorks_Products.ProductKey
Group by ProductName

Select *
From Net_Freight

--query for sum of the proportion of the sum of the total product cost for each product name

Select sum(TotalProductCost) AS SumOf_TotalProductCost, ProductName from AdventureWork_Sales
Inner Join
AdventureWorks_Products
On
AdventureWork_Sales.ProductKey=AdventureWorks_Products.ProductKey
Group by ProductName

--creating a visual for the qeury Sum of TotalProductCost by ProductName

Create view SumOf_TotalProductCost AS
Select sum(TotalProductCost) AS SumOf_TotalProductCost, ProductName from AdventureWork_Sales
Inner Join
AdventureWorks_Products
On
AdventureWork_Sales.ProductKey=AdventureWorks_Products.ProductKey
Group by ProductName

Select *
From SumOf_TotalProductCost