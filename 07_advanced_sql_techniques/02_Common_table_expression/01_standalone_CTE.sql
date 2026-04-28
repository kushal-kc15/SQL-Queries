	--step1:find the total sales per customers
	with CTE_Total_sales AS
	(
	select
		CustomerID,
		SUM(sales) as TotalSales
	from sales.Orders
	Group by CustomerID
	)
	--Main Query
	select 
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.TotalSales
	from sales.Customers c
	left join CTE_Total_sales cts
	on cts.CustomerID=c.CustomerID
	Order by CustomerID