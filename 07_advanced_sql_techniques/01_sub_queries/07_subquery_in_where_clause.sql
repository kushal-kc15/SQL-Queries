--find the products that have price higher than tha average price of all products
select
ProductID,
Price
from sales.Products
where price > (select AVG(price) from sales.Products)

