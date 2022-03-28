use practice1and2;
select * from emp;

select ename,hiredate from emp
where deptno=(select deptno from emp where ename="SMITH") and ename !="SMITH";

Select empno,ename from emp
where sal>(select avg (sal) from emp)
order by sal;

Select empno,ename from emp
where deptno = ANY(select deptno from emp where ename like("%U%"));

Select deptno,ename,job from emp
where  deptno=(select distinct deptno from emp 
where job="salesman");

select last name,sal from emp
where deptno=(select distinct emp where ename="BLAKE");