--find female employees whose salaries are greater than the salaries of all male employees
--main Query
select 
EmployeeID,
FirstName,
Gender,
Salary
from sales.Employees
where Gender ='F'
And Salary> All(select Salary from sales.Employees where Gender ='M')