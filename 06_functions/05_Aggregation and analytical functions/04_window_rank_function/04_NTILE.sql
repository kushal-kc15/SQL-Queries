select
OrderId,
Sales,
NTILE(1) over (order by sales desc) OneBuctket,
NTILE(2) over (order by sales desc) OneBuctket,
NTILE(3) over (order by sales desc) OneBuctket
from sales.Orders

--Data segmentation
--segment all the orders into 3 categories : high ,medium and low sales
select
*,
case when Buckets=1 then 'high'
when Buckets=2 then 'Medium'
when Buckets=3 then 'Low'
end SalesSegmentation
from (
select
OrderId,
sales,
Ntile(3) over(order by Sales desc) Buckets
from sales.Orders
)t 

--Equalizing Load
--in order to export the data ,divide the orders into 2 groups
select
NTILE(2) over(order by OrderID) Buckets,
*
from Sales.Orders