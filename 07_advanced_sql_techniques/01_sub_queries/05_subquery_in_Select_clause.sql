--show the product ids,product names ,prices and total number of orders

select
ProductID,
Price,
Product,
--subquery
(select count(*)  from sales.Orders) as TotalOrders
from sales.Products;
