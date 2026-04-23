--Rank the orders based on their sales from highest to lowest
select 
OrderId,
ProductID,
Sales,
dense_rank() over(order by sales desc) salesRank
from sales.Orders