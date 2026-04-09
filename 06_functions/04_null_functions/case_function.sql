/*generate a report showing the total sales for each category:
high:if the sales higher than 50
medium; if the sales between 20 and 50
low: if the sales equal or lower than 20
SHow the result from lowest to highest*/
select 
category,
sum(sales) as total_sales
from(
select 
OrderId,
Sales,
case 
when sales>50 then 'High'
when sales<50 then 'Medium'
else 'Low'
end category      
from sales.Orders)t
group by category
order by total_sales desc

--retrieve emplyee detaols with gender displayes as full text
SELECT
EmployeeID,
FirstName,
LastName,
Gender,
case
when Gender='F' then 'Female'
when Gender ='M' then 'Male'
else 'Not Available'
end GenderFullText
from sales.Employees

--retrieve customers details with abbreviated country code
select 
CustomerId,
FirstName,
LastName,
Country,
case Country
when 'Germany' then 'DE'
when  'USA' then 'US'
else 'n/a'
end CountryAbbr
from sales.Customers

--find the avarega scores of the customers and treat nulls as 0
--and additional provide details such CustomerID and LastName
select 
CustomerID,
FirstName,
LastName,
Score,
case 
	when score is null then 0
	else Score
	end as score_clean,
avg(case 
		when score is null then 0
		else Score
	end) over() avg_score
from sales.Customers

--count how many times each customer has made an order with sales greater than 30
select 
CustomerID,
sum(case 
when sales>30 then 1
else 0
end) total_orders,
count(*) TotalOrders
FROM sales.Orders
group by CustomerID
