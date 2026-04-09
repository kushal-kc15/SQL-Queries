select 
OrderID,
CreationTime,
DATEPART(year,CreationTime) as year_dp,
DATEPART(month,CreationTime) as month_dp,
DATEPART(day,CreationTime) as day_dp,
DATEPART(hour,CreationTime) as hour_dp,
DATEPART(quarter,CreationTime) as quarter_dp,
DATEPART(week,CreationTime) as week_dp
from sales.Orders