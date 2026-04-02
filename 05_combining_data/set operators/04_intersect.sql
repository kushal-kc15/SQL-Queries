--Find the employees who are customers at the same time
select 
FirstName,
LastName
from Sales.Customers

intersect

select 
FirstName,
LastName
from Sales.Employees