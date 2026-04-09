select 
OrderID,
CreationTime,
DATETRUNC(year,CreationTime) year_dt,
DATETRUNC(minute,CreationTime) minute_dt,
DATETRUNC(day,CreationTime) day_dt
from sales.Orders


select
DATETRUNC(month,CreationTime) creation,
count(*)
from Sales.Orders
group by DATETRUNC(month,CreationTime)