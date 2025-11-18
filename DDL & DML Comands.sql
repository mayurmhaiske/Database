show databases;
create database batch; 
use batch;
create table students (`name` varchar(20), age int ) ;
select * from students;
describe students;
insert into students value("rahul", 34);
insert into students value("sanket", 33);
insert into students value("rohan", 36);
insert into students value("harshal", 37);
insert into students value("sahil", 30);
select * from students;
drop  table students ;
show databases;

use batch;
create table students (`name` varchar(20), age int ) ;
select * from students;

insert into students value("rahul", 34);
insert into students value("sanket", 33);
insert into students value("rohan", 36);
insert into students value("harshal", 37);
insert into students value("sahil", 30);

select * from students;

alter table students
add column course varchar(10);

alter table students
add column address varchar(10) after `name`;

alter table students
add column id int first;

alter table students
add column doj varchar(20);


update students 
set id = 3  where name = "sanket";
update students 
set id = 4 where name = "rohan";
update students 
set id = 5  where name = "harshal";
update students 
set id = 2  where name = "rahul";

update students
set address = "nagpur" ;

desc students;

select * from students;

insert into students(id, name , age , course , doj)
value(6, shiv, 40, xdsaai, 2025-09-15);

UPDATE STUDENTS
SET COURSE = null;

update students 
set doj = "2025-10-11" ;


update students 
set course = "XDSAAI" ;

insert into students(id, name , age , course , doj)
value(6, "shiv", 40, "xdsaai", "2025-09-15");

show columns from students;

select * from students;

update students 
set address = "pune" where name = "shiv" ;

alter table students
rename column doj to date ;


-- constraint

/*not null
default
enum
unique
auto_increment
check
primary key
foreign key
index        */


create table students1(
id int auto_increment primary key,
`name` varchar(10) not null,
age int check(age > 18),
email varchar(20) unique,
address varchar(20) default "nagpur",
course enum("DS", "DA", "SAP", "Cloud")
);
select * from students1

insert into students1 (name, age, email, address, course)
values ("amit", 19 , "amit3@gmail.com", "pune", "DA") ;

insert into students1 (name, age, email, course)
 values ("sanket", 20, "sanket@gmail.com", "DA") ;
 
 insert into students1 (name, age, email, course)
 values ("rohan", 21 , "rohan@gmail.com", "DA") ;
 
 insert into students1 (name, age, email, course)
 values ("tejas", 22 , "tejas4@gmail.com", "DS") ;
 
 insert into students1 (name, age, email, course)
 values ("rohit", 19 , "rohit4@gmail.com", "DA") ;
 
 insert into students1 (name, age, email, course)
 values ("aryan", 19 , "aryan@gmail.com", "DA") ;

select * from students1
