--Find the employees who are not customers at the same time
select 
FirstName,
LastName
from Sales.Customers

except

select 
FirstName,
LastName
from Sales.Employees