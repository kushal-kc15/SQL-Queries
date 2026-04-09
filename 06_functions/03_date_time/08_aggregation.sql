select 
format(orderDate,'MMM yy') orderDate,
count(*)
from sales.Orders
group by format(orderDate,'MMM yy')