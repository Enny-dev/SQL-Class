CREATE DATABASE pluralcode;

USE pluralcode;

SELECT * 
FROM Transactions
;

SELECT Location 
FROM Transactions
;

SELECT Quantity, brand, location
FROM Transactions
;

Select distinct location 
From Transactions 
;

Select brand 
From Transactions
;

Select distinct ProductName
From Transactions
;

Select * 
From Transactions 
Where location = "Lagos"
;

Select * 
From Transactions 
Where brand = "Contoso"
;

Select * 
From Transactions 
Where Orderstatus= "Delivered"
;

Select * 
From Transactions 
Where (Orderstatus= "Delivered" AND Location = "Lagos")
;

Select * 
From Transactions 
Where (Orderstatus= "Delivered") OR Location = "Lagos"
;

Select * 
From Transactions 
Where Location in ("Lagos", "Ondo", "Osun")
;

SELECT * 
FROM Transactions
WHERE Quantity BETWEEN 50 AND 100
;

SELECT * 
From Transactions 
WHERE Total_price > 50000
;

SELECT * 
From Transactions 
WHERE Orderstatus = "Delivered" AND Brand IN ("Contoso", "Fabrikam")
;

Select *
From Transactions
Where ProductName Like "%silver"
;

Select *
From Transactions
Where location Like "K%"
;

Select *
From Transactions
Where ProductName Like "%MP3%"
;

-- This is a single line comment. It only allows you to write in one line. 
/* This is a miutiple line comment. Allows you to take comments in multiple
lines. You end the comment with */

USE pluralcode;

Select *
From Transactions;

--- Aggregate (SUM, COUNT, AVERAGE, MIN, MAX) ---

SELECT Count(*)
From Transactions
;

Select Count(brand) 
From Transactions
;

Select Distinct Brand
From Transactions
;

Select Count(Distinct Brand) 
From Transactions
;

Select Sum(Quantity)
From Transactions
; 

Select Sum(Total_Price)
From Transactions
; 

Select AVG(quantity), MIN(quantity), MAX(quantity)
From Transactions
; 


--- Alias AS ---

Select Sum(total_price) AS Total_Revenue
From Transactions
;

Select Sum(Total_price) AS Grand_Price
From transactions
;

Select Location AS State
From transactions;

--- Group By ---

Select Brand, Sum(Quantity) AS total_qty 
From Transactions 
Group By Brand 
; 

Select AVG (total_price) AS Avg_price
From Transactions
Group By Location
;

Select CustomerID, Sum(Quantity)
AS total_qty From transactions
Group By CustomerID
;

-- ORDER BY --

Select*
From Transactions
Order by location Desc;

Select location, Sum(Quantity)
AS total_qty From transactions
Group By location
Order by sum(quantity) DESC
;




Select CustomerID, Sum(total_price) AS Revenue
From Transactions 
Group by CustomerID
Having SUM(total_price) >500000
;

-- CASE WHEN -- 

Select *
From Transactions
;

-- Classify the transactions as delivered or not Delivered, if orderstatus is delivered, then
-- it will be classified as delivered orders, otherwise it will be classifies as not delivered --

Select  *,
 CASE WHEN orderstatus = "Delivered" 
 THEN  "Order Delivered" ELSE "Not Delivered"
 END AS Delivery_Status
 From Transactions
 ;
 SELECT Distinct orderstatus FROM Transactions;
 
 Select orderid, orderstatus,
 CASE WHEN orderstatus = "Delivered"
 Then "Transaction Successful"
 When orderstatus ="Pending"
 Then "Transaction in Progress" ELSE "Transaction not successful"
 End As Transaction_Status
 From transactions
 ;
 
 Select *
 From Transactions;
 
 Select *,
 Case When `Discount band applied` = "High"
 Then "Discount Applied"
 When `Discount band applied` = "Medium"
 Then "Discount Applied"
 When `Discount band applied` = "Low"
 Then "Discount applied" ELSE "No discount applied"
 End As Discount_Status
 From Transactions;
 
 Select *,
 Case When `Discount band applied` IN ("High", "Medium", "Low")
 Then "Discount Applied" ELSE "No Discount Applied"
 End As Discount_Status
 From Transactions;
 
 Select *,
 Case When Quantity < 20 Then "Small Volume Orders"
 When Quantity Between 20 and 50 Then "Average Volume Orders"
 Else "High Volume Orders"
 End As Quantity_Category
 From Transactions;
 
 Select Brand, Sum(Quantity) As QTY,
 Case When Sum(Quantity) < 10000
 Then "Low seller" ELSE "High Sellers"
 End As Brand_Category
 From Transactions
 Group By Brand;