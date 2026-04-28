--show all customers details and find the total orders of each customers
--main query
select
c.*,
o.TotalOrders
from sales.Customers c
left join(
	select
	CustomerID,
	count(*) TotalOrders
	from sales.Orders
	group by CustomerID) o
on c.CustomerID=o.CustomerID