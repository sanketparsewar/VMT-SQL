

day2 - 25/06/2024
use database pc_emoloyee;

create table employee(
id int primary key,
fname text,
lname text,
email varchar(25) not null unique,
salary float,
dept_id int default 11,
dept_name varchar(25) default 'Training',
mgr_id int,
city text,
desgination text,
dob date,
doj date
);

alter table employee modify doj datetime default now();
alter table employee modify dob datetime;
alter table employee add constraint check(dob<doj);
alter table drop column city;
alter table employee add column city text;
alter table employee modify column id int AUTO_INCREMENT;
alter table employee rename column desgination to designation;
alter table employee modify designation varchar(20) default 'graduate _hire';


insert into employee(fname,lname,email,salary, dob,city) values('Sanket','parsewar','sanketparsewar@gmail.com',125555,'09-11-2001 12:00:45','Nanded'),
('Hitesh','Dhewale','hiteshdhewale@gmail.com',555,'12-78-2011 12:00:45','Amravati'),
('Aditya','kalambe','adikalambe@gmail.com',55,'25-06-2024 12:00:45','Nanded');



-------------------------------------------------------------------------------
Day3 26/06/24

Course
-----------


create table students(
id int primary key,
name text,
course_id int
);

insert into students values
(101,'Sanket',10 ),
(102,'Aditya',20),
(013,'Akshay',30)
;


create table course(
cid int primary key,
name text,
price float);



insert into course values
(10,'Java',800),
(20,'Python',9000)
;







