--rank customers based on their total sales
select
CustomerId,
Sum(sales) totalsales,
Rank() over(order by Sum(sales) desc ) RankCustomers
from sales.Orders
Group by CustomerId