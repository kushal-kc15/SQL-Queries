--extract year,month and day from creationtime 
select 
CreationTime,
year(CreationTime) as year,
month(CreationTime) as month,
day(CreationTime) as days
from sales.Orders