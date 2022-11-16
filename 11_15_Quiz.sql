-- [문제1] 사원번호, 사원명, 담당업무, 입사일, 급여, 보너스, 지급액을 출력하라. (단, 지급액은 급여+보너스이다.)
select empno, ename, job, hiredate, sal, comm, nvl(comm, 0), sal + nvl(comm, 0) as 지급액
from emp;

-- [문제2] 사원명, 담당업무, 급여, 보너스를 선택하되 급여가 2500에서 4000불 사이 이거나 담당업무가 SALESMAN인 사원을 급여의 내림차순으로 정렬하여 레코드를 선택하라.
--         단, 보너스가 NULL인 경우 0으로 선택하라.
select ename, job, sal, nvl(comm, 0)
from emp
where sal between 2500 and 4000
or job = 'SALESMAN'
order by sal desc;
