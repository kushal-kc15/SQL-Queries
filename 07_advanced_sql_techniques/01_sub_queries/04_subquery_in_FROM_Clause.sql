--sub query in FROM clause
--find the product that have a price higher than tha average price of all peoducts

select
*
from (
select
ProductID,
Price,
avg(Price) over () AvgPrice
from sales.Products)t
where price >AvgPrice

--Ranl the customers based on their total amount of sales
select
*,
Rank() over (order by TotalSales desc) CustomerRank
from(
	select
	CustomerID,
	SUM(Sales) TotalSales
	from sales.Orders
	Group By CustomerID)t
