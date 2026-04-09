select 
OrderID,
CreationTime,
DATENAME(month,CreationTime) as month_name,
DATENAME(WEEKDAY,CreationTime) as day_name
from sales.Orders