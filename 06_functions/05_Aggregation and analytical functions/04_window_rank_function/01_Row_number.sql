--Rank the orders based on their sales from highest to lowest
select 
OrderId,
ProductID,
Sales,
row_number() over(order by sales desc) SalesRank
from sales.Orders