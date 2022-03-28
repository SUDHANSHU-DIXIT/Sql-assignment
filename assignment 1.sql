create table employees(
emp_id varchar(8) not null,
emp_name varchar(50) not null,
last_name varchar(255) not null,
salary double(5,2),
email varchar(25),
hire_date date not null,
constraint emp_email_uk unique(email)
);
create table departments(
department_id varchar(4),
department_name varchar(30) not null,
manager_id int(6),
location_id int(4),
constraint dept_id_pk primary key(department_id)
);
create table TRG_DEPTS(
id int(7),
name varchar(20)
);
insert into TRG_DEPTS select department_id,department_name from departments;
create table TRG_EMP(
id int(7),
last_name varchar(25),
first_name varchar(25),
dept_id int(7)
);
alter table TRG_EMP modify last_name varchar(50);
create table TRG_EMPLOYEES(
EMPLOYEE_ID int(7),
FIRST_NAME varchar(25),
LAST_NAME varchar(25),
SALARY double(5,2),
DEPARTMENT_ID int(5)
);
drop table TRG_EMP;
rename table TRG_EMPLOYEES to TRG_EMP;
desc TRG_EMP;
alter table TRG_EMP drop column FIRST_NAME;
desc TRG_EMP;
alter table TRG_EMP add constraint my_emp_id_pk primary key (EMPLOYEE_ID);
alter table TRG_DEPTS add constraint my_dept_id_pk primary key (id);
