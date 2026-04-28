--find female employees whose salaries are greater than the salaries of any male employees
--main Query
select 
EmployeeID,
FirstName,
Gender,
Salary
from sales.Employees
where Gender ='F'
And Salary> Any(select Salary from sales.Employees where Gender ='M')