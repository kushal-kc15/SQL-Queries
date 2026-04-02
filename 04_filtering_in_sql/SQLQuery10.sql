/*retrieve all customers from 
either germany or usa*/

select * from customers
where country ='germany' or country ='usa'

select * from customers
where country in('germany','usa')