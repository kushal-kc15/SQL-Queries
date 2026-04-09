select 
cast('123' as int) as [string to int],
cast(123 as varchar) as [int to string],
cast('2025-08-20' as date) as [string to date],
cast('2025-08-20' as datetime) as [string to datetime],
CreationTime,
cast(creationTime as date) as [datetime to date]
from sales.Orders