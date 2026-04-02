/*get all customers and orders even if theres no match*/
select c.id,c.first_name,o.order_id,o.sales
from customers as c
full join orders as o
on c.id =o.customer_id