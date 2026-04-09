--display the full name of the customers in a single field
--by merging their first and last names
--add 10 bonus points to each  customer's score
select 
CustomerID,
FirstName,
LastName,
coalesce(LastName,'') Lastname2,
FirstName+' '+coalesce(LastName,'') as full_name,
Score,
coalesce(Score,0) Score2,
coalesce(Score,0) + 10 as score_with_bonus
from sales.Customers