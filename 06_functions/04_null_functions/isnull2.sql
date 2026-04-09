--list all details for customerds who have not placd any orders
select 
c.*,
o.OrderID
from sales.Customers  as c
left join sales.orders as o
on c.CustomerID =o.CustomerID
where o.CustomerID is null