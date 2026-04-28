--SUBquery using IN operator
--show the details of orders made by customers in germany


--main Query
select 
* 
from Sales.Orders
where CustomerID  in (
	--sub Query
	select
	CustomerId
	from sales.Customers
	where country ='Germany')


