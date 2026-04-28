	--step1:find the total sales per customers
	with CTE_Total_sales AS
	(
	select
		CustomerID,
		SUM(sales) as TotalSales
	from sales.Orders
	Group by CustomerID
	)
	
	--step2:Find the last order date for each customer
	,CTE_Last_Order as 
	(
	select 
	CustomerID,
	MAX(OrderDate) as Last_order
	from sales.Orders
	Group by CustomerID
	)
	--Main Query
	select 
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.TotalSales,
	clo.Last_order
	from sales.Customers c
	left join CTE_Total_sales cts
	on cts.CustomerID=c.CustomerID
	left join CTE_Last_Order clo
	on clo.CustomerID=c.CustomerID