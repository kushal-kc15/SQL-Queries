--find the total sales for each product--additionally dprovide details such as order id, orderdate
select 
	OrderID,
	OrderDate,
	ProductID,
	sum(sales) over(partition by ProductID) TotalSales
from sales.orders
