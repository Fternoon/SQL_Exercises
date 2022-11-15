-- 잊기 전에 한 번 더 Chapter04
-- Q2
select distinct job from emp;

-- Q3
select empno as EMPLOYEE_NO, 
       ename as EMPLOYEE_NAME, 
       job, 
       mgr as MANAGER, 
       hiredate, 
       sal as SALARY, 
       comm as COMMISSION, 
       deptno as DEPARTMENT_NO
from emp
order by deptno desc, ename;

-- 잊기 전에 한 번 더 Chapter05
-- Q1
select * 
from emp 
where ename like '%S';

-- Q2
select empno, ename, job, sal, deptno 
from emp 
where deptno = 30 
and job = 'SALESMAN';

-- Q3
-- 집합 연산자를 사용한 방식
select empno, ename, job, sal, deptno 
from emp 
where deptno = 20 
and sal > 2000
union
select empno, ename, job, sal, deptno 
from emp 
where deptno = 30 
and sal > 2000;

-- 집합 연산자를 사용하지 않은 방식
select empno, ename, job, sal, deptno 
from emp 
where deptno in(20, 30) 
and sal > 2000;

-- Q4
select *
from emp
where not(sal >= 2000 and sal <=3000);

-- Q4 또 다른 풀이
select * 
from emp
where sal < 2000
or sal > 3000;

-- Q5
select ename, empno, sal, deptno
from emp
where ename like '%E%'
and deptno = 30
and sal not between 1000 and 2000;

-- Q6
select *
from emp
where comm is null
and mgr is not null
and job in('MANAGER', 'CLERK')
and ename not like '_L%';
