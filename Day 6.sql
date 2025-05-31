-- JOINS ----

Select *
From Salestb;

Select *
From Salestb
Join Customerstb 
On salestb.CustomerID = customerstb.CustomerID
;

Select *
From salestb
Left Join customerstb
On salestb.CustomerID=customerstb.CustomerID
;

Select *
From salestb
right Join customerstb
On salestb.CustomerID=customerstb.CustomerID
;

Select s.id, s.orderdate, c.customerID, c.CustomerName
From salestb s 
Join customerstb c 
On s.CustomerID = c.CustomerID
;

Select *
From productstb p
Right Join salestb s On 
s.product_id = p.product_id;

Select *
From salestb s
Join customerstb c
On s.CustomerID = c.CustomerID
Join productstb p
on s.product_id = p.product_id
;

SELECT s.id, s.OrderDate, s.OrderStatus, c.CustomerName, p.product_name FROM 
salestb s 
JOIN
customerstb c 
ON s.CustomerID = c.CustomerID
JOIN 
productstb p 
ON s.product_id = p.product_id;

Select c.customerName, Sum(quantity) AS Total_item
From salestb s
Join customerstb c
on s.customerID = c.customerID
Group by 1
Limit 5;

Select p.product_name, sum(quantity) as Total_item
From salestb s
Join productstb p
on p.product_id = s.product_id
Group By 1
Limit 3 ;

Select *
From salestb s
Join productstb p
On s.product_id = p.product_id
;

Select *, s.quantity * p.UnitPrice AS Total_Amount
From salestb s
Join productstb p
On s.product_id = p.product_id
;

Select p.category, Sum(Round(s.Quantity * p.UnitPrice)) AS Total_revenue
From salestb s
Join productstb p
On s.product_id = p.product_id
Group By 1
;

Select Round(unitPrice);

Select c.customername, Sum(Round(s.Quantity * p.UnitPrice)) AS Total_revenue
From salestb s
Join customerstb c 
On s.CustomerID = c.CustomerID
Join productstb p
On s.product_id = p.product_id
Group By 1
Order by 2 Desc
;

Select c.customerName, Sum(s.quantity) AS Total_units_purchased
From Salestb s
Join customerstb c
On s.customerID = C.customerID
Group by 1
Order by 2 Desc
Limit 1;

Select c.customerName, SUM(Round(p.unitprice * s.quantity)) AS Revenue,
Case when SUM(Round(p.unitprice * s.quantity)) > 20000
Then "High Value Customers"
When SUM(Round(p.unitprice * s.quantity)) between 15000 and 20000
Then "Average value customers" Else "Low value customers"
End As Customer_category
From salestb s
Join productstb p
On s.product_id = p.product_id
Join customerstb c
On s.customerid = c.CustomerID
Group by 1;
