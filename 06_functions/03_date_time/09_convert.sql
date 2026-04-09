select
CreationTime,
convert(date,CreationTime) as [datetime to Date convert],
convert(varchar,CreationTime,32) as [USA std. style 32],
convert(varchar,CreationTime,34) as [Euro std. style 34]
from sales.Orders