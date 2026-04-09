--format function
select 
OrderID,
CreationTime,
format(CreationTime,'MM-dd-yyyy') usa_format,
format(CreationTime,'dd-MM-yyyy') Euro_format,
Format(CreationTime,'dd') dd,
Format(CreationTime,'ddd') ddd,
Format(CreationTime,'dddd') ddddd,
Format(CreationTime,'MM') MM,
Format(CreationTime,'MMM') MMM,
Format(CreationTime,'MMMM') MMMM
from sales.Orders

--show creationtime using the following format: Day Wed Jan Q1 2025 12:34:56 PM
select 
orderId,
CreationTime,
'Day ' + format(CreationTime,'ddd MMM')+
' Q'+ DATENAME(quarter,CreationTime) +' '+ 
format(CreationTime,'yyyy hh:mm:ss tt') as CustomeFormat
from sales.Orders