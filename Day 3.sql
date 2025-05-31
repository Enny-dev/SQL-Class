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