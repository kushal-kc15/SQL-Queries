--find the top highest sales for each product
select
*
from (
select 
OrderID,
ProductID,
Sales,
ROW_NUMBER() over(partition by ProductID order by sales desc) RankByProduct 
from sales.Orders
)t where RankByProduct =1