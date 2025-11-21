USE BATCH;
CREATE TABLE IF NOT exists mayur1 (
course_id int ,
course_name varchar(40),
course_desc varchar(50),
course_tag varchar(60));

create table if not exists student9(
student_id int ,
student_name varchar(30),
student_mobile int ,
student_course_enroll varchar(30),
student_course_id int ) ;

insert into mayur1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(105 , 'c++' , 'C++ language' , 'language')
 ;
 
 select* from mayur1;
 
 insert into student9 values(301 , "sudhanshu", 3543453,'yes', 104),
(302 , "sudhanshu", 3543453,'yes', 102),
(301 , "tejas", 3543453,'yes', 105),
(302 , "chetan", 3543453,'yes', 106),
(303 , "sudhanshu", 3543453,'yes', 110),
(304 , "sanket", 3543453,'yes', 103),
(305 , "sahil", 3543453,'yes', 105),
(306 , "sudhanshu", 3543453,'yes', 107),
(306 , "shivam", 3543453,'yes', 108) ;

select * from student9 ;

create table if not exists course_detail1 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50)) ;

rename table mayur1 to course9;

select * from course9;
select * from student9;


insert into course_detail1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern') ;

select course.course_id, student.student_course_id, course.course_name, student.student_name
from course join student 
on course.course_id = student.student_course_id ;

-- left join
-- All rows from the left table, and matched rows from the right table. If no match, NULLs are returned.
  
  select c.course_id, s.student_course_id, c.course_name, s.student_name
from course c left join student s
on c.course_id = s.student_course_id ;

-- RIGHT JOIN 
--  All rows from the right table, and matched rows from the left table. If no match, NULLs are returned.

select c.course_id, s.student_course_id, c.course_name, s.student_name
from course c right join student s
on c.course_id = s.student_course_id ;

-- Cross join 
--  multiply all the values from both table and give product of that table

select c.course_id, s.student_course_id, c.course_name, s.student_name
from course c cross join student s ;

select c.course_id, s.student_course_id, c.course_name, s.student_name
from course c right join student s
on c.course_id = s.student_course_id 
where c.course_id is null;

-- Performs a RIGHT JOIN between course and student on course_id = student_course_id.
-- Filters with WHERE c.course_id IS NULL to identify students linked to non-existent courses.
-- Returns student details and their unmatched course ID.
-- This helps detect data inconsistencies, such as students assigned to deleted or invalid courses.
 
select c.course_id, s.student_course_id, c.course_name, s.student_name
from course c inner join student s
on c.course_id = s.student_course_id 
where c.course_id = 107 ;


select c.course_id, s.student_course_id, c.course_name, s.student_name
from course c inner join student s
on c.course_id = s.student_course_id 
where c.course_id in (101, 102, 103, 105, 106) ;








