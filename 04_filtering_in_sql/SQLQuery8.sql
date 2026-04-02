/*retrieve all the customers who are from the usa
or have a score greater than 500*/
select * from customers 
where score>500 or country='usa'