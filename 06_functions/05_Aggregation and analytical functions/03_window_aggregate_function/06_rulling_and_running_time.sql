--calculate the moving average for sales for each product over time
select 
OrderID,
OrderDate,
Sales,
ProductID,
Avg(Sales) over (partition by ProductID) AvgByProduct,
Avg(Sales) over (partition by ProductID order by OrderDate asc) MovingAvg
from Sales.Orders


--calculate the moving average for sales for each product over time including only the next order
select 
OrderID,
OrderDate,
Sales,
ProductID,
Avg(Sales) over (partition by ProductID) AvgByProduct,
Avg(Sales) over (partition by ProductID order by OrderDate asc rows between current row and 1 following) MovingAvg
from Sales.Orders
