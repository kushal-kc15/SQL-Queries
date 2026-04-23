SELECT 
OrderID,
OrderDate,
OrderStatus,
sales,
SUM(Sales) over(Partition by OrderStatus Order By OrderDate Rows between 2 preceding and current row) TotalSales
--SUM(Sales) over(Partition by OrderStatus Order By OrderDate Rows  2 preceding) TotalSales
from sales.Orders

--rank the customers based on their total sales
SELECT
sum(Sales) Totalsales
from sales.Orders
