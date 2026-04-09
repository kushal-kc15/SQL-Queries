--find the sales price for each order by dividing sales by quantity
select 
OrderID,
sales,
Quantity,
sales/ Nullif(quantity,0) as price
from sales.orders