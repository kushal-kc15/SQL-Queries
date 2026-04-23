/*identify duplicate row in the table 'Orders Archive' and return a clean result without any duplicates*/
select * from(
select
row_number() over(partition by OrderId order by CreationTime desc) rn,
*
from sales.OrdersArchive
)t where rn>1