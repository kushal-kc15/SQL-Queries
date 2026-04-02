/*create a new table called persons 
with columns: id, person_name,birth_date,and phone*/
create table person(
id int not null,
person_name varchar(50) not null,
birth_date date,
phone varchar(15) not null,
constraint pk_persons primary key (id)
)