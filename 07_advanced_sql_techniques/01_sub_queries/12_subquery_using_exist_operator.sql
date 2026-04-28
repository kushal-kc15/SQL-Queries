--show the details of orders made by the customers from germany

--main Query
select
*
from sales.Orders o
where exists (
			select
			1
			from sales.Customers c
			where Country='Germany'
			and o.CustomerID=c.CustomerID
			)
