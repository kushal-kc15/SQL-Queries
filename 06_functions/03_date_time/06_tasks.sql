--how many orders were placed each year?
select
year(OrderDate),
COUNT(*) NoOfOrders
from sales.Orders
group by YEAR(OrderDate)

--how many orders were placed each month
select
datename(month,OrderDate),
COUNT(*) NoOfOrders
from sales.Orders
group by datename(month,OrderDate)

-- show all the orders that were placed during the month of february
select *
from sales.Orders
where month(OrderDate) =2