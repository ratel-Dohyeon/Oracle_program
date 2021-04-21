desc emp;
select * from emp;



/* 레벨 구분, lpad <- 외쪽 공백, 레벨에 따른 - 넣기 */
select lpad(mgr,length(mgr)*level,'-') as manager,empno,ename
from emp
start with ename = 'KING'
connect by prior empno = mgr;

SELECT lpad(mgr, (LEVEL)*4, '-') "관리자 사번", empno, ename
       , SYS_CONNECT_BY_PATH(ename, '-') AS "사원 path"
FROM emp
START WITH mgr is null
connect by prior empno = mgr;



SELECT deptno, college, dname, loc
from department
where dname != '정보미디어학부'
START WITH college is null
connect by prior deptno = college;

SELECT deptno, college, dname, loc
from department
START WITH college is null
connect by prior deptno = college
and dname != '정보미디어학부';



SELECT mgr, empno, ename, sal
FROM emp 
WHERE sal >= 1000
AND mgr = 7839
CONNECT BY PRIOR mgr = empno;

SELECT  empno, ename, job, mgr
        ,PRIOR ename AS "Manager"
        ,LEVEL
        ,LPAD('',(LEVEL-1)*2, '') || ename AS "ename"
        ,SYS_CONNECT_BY_PATH(ename, '-') AS "ename_path"
FROM emp
START WITH mgr is NULL
CONNECT BY PRIOR empno = mgr;






























