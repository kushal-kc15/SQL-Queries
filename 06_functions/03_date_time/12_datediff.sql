--calculate the age of employees
select 
EmployeeID,
BirthDate,
DATEDIFF(year,BirthDate,Getdate()) as [age of employee]
from sales.Employees

--find the average shipping duration in days for each month
select 
month(OrderDate) as orderdate,
avg(datediff(DAY,OrderDate,ShipDate)) avgship
from sales.Orders
group by month(OrderDate)

--find the number of days between each order and the previous order
select
OrderId,
OrderDate currentOrderDate,
lag(OrderDate) over (order by OrderDate) previousorderDate,
datediff(day,lag(OrderDate) over (order by OrderDate),OrderDate) as no_of_days
from sales.Orders