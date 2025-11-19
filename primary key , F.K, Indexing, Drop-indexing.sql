create table course (
course_id int primary key,
course_name varchar(100)
);

create table students2 (
student_id int primary key,
`name` varchar(100),
course_id int ,
foreign key(course_id)
references course (course_id)
on delete cascade
on update cascade

);

insert into course (course_id, course_name) values
(101, 'Mathematics'),
(102, 'Science'),
(103, 'History'),
(104, 'History'),
(105, 'History');

insert into students2 (student_id, `name` , course_id) values
(5, 'rohan sakhre', null),
(3, 'prajwal pohane' , 102);

select * from course;

select * from students2;

delete from course 
where course_id = 105 ;

update course 
set course_id = 106 where course_id = 101 ;

-- INDEX 

create table if not exists course1 (
course_id int,
course_name varchar(100),
course_desc varchar(50),
course_tag varchar(70));


insert into course1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');

show index from course1;

explain select * from course1 where course_name = "java" ;

select count(*) from course1;

select *  from course1;

create index  index1 on course1 (course_id);

explain select * from course1 where course_id = 102;


create table if not exists course3 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_id, course_name));

create table if not exists course4 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_id, course_name));

--  INDEXING , DROP INDEXING

DROP INDEX index_name ON composite_index;

-- create index ind on cource_1(course_id,course_name);

-- drop index ind on cource_1;

