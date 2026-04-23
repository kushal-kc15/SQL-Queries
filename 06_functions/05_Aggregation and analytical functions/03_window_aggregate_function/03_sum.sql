/*find the total sales accross all orders and 
the total sales for each product 
additionally provide details such order ID, order date*/
select 
OrderID,
OrderDate,
ProductID,
Sales,
Sum(sales) over () TotalSales,
sum(sales) over (Partition by ProductId) SalesByProduct
from sales.Orders

--find the percentage Contribution of each product sales to total sales
select 
OrderID,
ProductID,
Sales,
sum(sales) over() TotalSales,
round(cast(sales as float)/sum(sales) over() *100,2) PercentageOfTotal

from sales.Orders