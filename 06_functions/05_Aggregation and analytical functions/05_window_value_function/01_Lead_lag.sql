--Analyze the month over month performsnce by the finding the percentage change in sales between the current and previous month
select 
*,
CurrentMonthSales -PreviousMonthSales As MOM_CHANGE,
ROUND(CAST((CurrentMonthSales -PreviousMonthSales) AS FLOAT)/PreviousMonthSales*100,1) AS MOM_ERC
from
(
select
Month(OrderDate) OrderMonth,
Sum(Sales) CurrentMonthSales,
lag(sum(sales)) over (Order by Month(OrderDate)) PreviousMonthSales
from sales.orders
Group by Month(OrderDate)
)t

--CUSTOMER RETENTION ANALYSIS

--IN ORDER TO ANALYZE LOYALTY,
--RANK CUSTOMERS BASED ON THE AVERAGE DAYS BETWEEN THERI ORDERS
select
CustomerId,
AVG(DaysUntilNextOrder) AvgDays,
Rank() over (Order by Coalesce(AVG(DaysUntilNextOrder),9999)) RankAvg
from 
(
select 
OrderID,
CustomerID,
OrderDate CurrentOrder,
Lead(OrderDate) over (partition by CustomerId Order by OrderDate) NextOrder,
DATEDIFF(day,OrderDate,Lead(OrderDate) over (partition by CustomerId Order by OrderDate)) DaysUntilNextOrder
from sales.orders
)t 
group by CustomerID