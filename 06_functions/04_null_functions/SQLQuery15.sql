select 
CustomerId,
score,
avg(score) over () avgscores,
avg(coalesce(score,0)) over () avgscore2
from sales.customers