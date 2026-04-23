--find the total numbers of orders
select 
OrderId,
OrderDate,
Count(*) over() totalOrders
from sales.Orders

--find the total numbers of orders for each customer
select 
OrderId,
OrderDate,
CustomerId,
Count(*) over() totalOrders,
Count(*) over(partition by CustomerId) totalOrders
from sales.Orders

--find total numberof customers with provide all customers details
select 
CustomerID,
FirstName,
LastName,
Country,
Score,
count(*) over() TotalCustomers
from sales.Customers

--find total number of scores for the customer
select 
CustomerId,
Count(Score) over(Partition by CustomerId) TotalScore
from Sales.Customers

--check whether the table orders contain any duplicate rows
select 
OrderId,
count(*) over(partition by OrderId) ccheckpk
from sales.Orders


select
*
from(
select 
OrderId,
count(*) over(partition by OrderId) ccheckpk
from sales.OrdersArchive
)t
where ccheckpk >1