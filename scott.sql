desc emp;
select * from emp;



/* ���� ����, lpad <- ���� ����, ������ ���� - �ֱ� */
select lpad(mgr,length(mgr)*level,'-') as manager,empno,ename
from emp
start with ename = 'KING'
connect by prior empno = mgr;

SELECT lpad(mgr, (LEVEL)*4, '-') "������ ���", empno, ename
       , SYS_CONNECT_BY_PATH(ename, '-') AS "��� path"
FROM emp
START WITH mgr is null
connect by prior empno = mgr;



SELECT deptno, college, dname, loc
from department
where dname != '�����̵���к�'
START WITH college is null
connect by prior deptno = college;

SELECT deptno, college, dname, loc
from department
START WITH college is null
connect by prior deptno = college
and dname != '�����̵���к�';



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






























