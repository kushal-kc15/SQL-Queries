--find the lowest and highest sales for each product
select
OrderID,
ProductID,
Sales,
FIRST_VALUE(sales) over (Partition by ProductId Order by Sales) Lowestsales,
LAST_VALUE(sales) over (Partition by ProductId Order by Sales
Rows Between current row and unbounded following) Highestsales,
FIRST_VALUE(sales) over (Partition by ProductId Order by Sales desc) HighestSales2
from Sales.Orders