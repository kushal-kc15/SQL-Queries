--find the top lowest 2 customers based on their total sales 
select
*
from (
select 
CustomerID,
sum(sales) totalsales,
row_number() over (order by sum(sales) ) RankCustomers
from sales.Orders
group by CustomerID
)t where RankCustomers<=2