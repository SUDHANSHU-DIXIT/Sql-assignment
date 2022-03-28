use practice1and2;
show tables;
desc emp;
select*from emp;
select ENAME,job,sal AS Sal
from emp;
create table dept(
deptno int(7),
deptname varchar(25),
loc varchar(25)
);
 INSERT INTO dept VALUES (10, 'accounting', 'new york'); 
  INSERT INTO dept VALUES (20, 'research', 'dallas'); 
   INSERT INTO dept VALUES (30, 'sale', 'boston'); 
    INSERT INTO dept VALUES (40, 'operation', 'chicago'); 
   select* from dept;
   
SELECT DISTINCT job
FROM emp ;
SELECT ENAME,SAL FROM EMP where SAL>2000;
SELECT ENAME,DEPTNO FROM EMP where EMPNO=7902;
SELECT ENAME,SAL FROM EMP where SAL NOT BETWEEN 2000 AND 5000;
SELECT ENAME,DEPTNO FROM EMP where (DEPTNO=10 OR DEPTNO=30) ORDER BY(ENAME);
SELECT ENAME,SAL FROM EMP where sal between 2000 and 3000 AND (DEPTNO=10 OR DEPTNO=30);
SELECT ENAME,JOB FROM EMP where MGR IS NULL;
SELECT ENAME,SAL,COMM FROM EMP where COMM>0 ORDER BY(SAL) desc ;
Select ENAME from EMP where ENAME LIKE '__A%';
SELECT ENAME,JOB,SAL FROM EMP where (JOB='CLERK' OR JOB='ANALYST') AND (SAL NOT IN (16000,8000,1300));
SELECT ENAME,SAL,COMM FROM EMP where COMM < (SAL+((SAL*20)/100));

