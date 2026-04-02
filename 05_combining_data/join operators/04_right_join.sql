/*get all customers along with their orders
including orders without matching customers*/
select c.id,c.first_name,o.order_id,o.sales
from customers as c
right join orders as o
on c.id =o.customer_id