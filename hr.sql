SELECT * FROM tab;
SELECT * FROM emp; /* 컨트롤 + 엔터 */
SELECT * FROM professor;

desc student;
SELECT * FROM student;

desc PROFESSOR;
SELECT * FROM PROFESSOR;
SELECT * FROM tab; /* 테이블 전체보기 */
SELECT * FROM SALGRADE;

SELECT * FROM tab;
SELECT * FROM PROFESSOR;
DESC PROFESSOR;

DESC table_name;
DESC STUDENT

DESC PROFESSOR; /* 교수 데이터 타입_테이블의 구조 */
SELECT * FROM SALGRADE;  /*교수 급여*/

DESC DEPARTMENT; /*테이블의 구조 */

SELECT * FROM DEPARTMENT; /* 결과 동일  "*" <--- 얘는 다 가져오라는 뜻  */
SELECT DEPTNO, DNAME, COLLEGE, LOC from DEPARTMENT; /* 결과 동일 */

SELECT DNAME, DEPTNO from DEPARTMENT; /* 'DEPARTMENT'에서  DEPTNO, DNAME만 가지고 와라*/


DESC PROFESSOR; /* 교수 테이블 확인 */
SELECT PROFNO, NAME, POSITION from PROFESSOR; /* 'PROFESSOR'에서  PROFNO, NAME, POSITION 만 가지고 와라*/ 


DESC student;
SELECT * FROM student; /* 학생들 몽땅 가져와 */

SELECT DISTINCT deptno from student; /* 학생 테이블에서 중복되는 학과번호 제외하고 출력  "DISTINCT" <- 중복 제외 함수 */

SELECT DISTINCT deptno from PROFESSOR; /* 교수 테이블에서 중복되는 학과번호 제외하고 출력  "DISTINCT" <- 중복 제외 함수 */

SELECT DISTINCT POSITION from PROFESSOR; /* 교수 테이블에서 중복되는 직급 제외하고 출력  "DISTINCT" <- 중복 제외 함수 */

SELECT DISTINCT deptno, grade from student;

SELECT dname dept_name, deptno AS DN from DEPARTMENT; /* 칼럼 이름(별명) 변경 */
/*            변경할거  오리지날   바꿀거  */
SELECT dname 학과이름, deptno AS 학과번호 from DEPARTMENT;  /* 칼럼 이름(별명) 변경 */
/*           변경할거  오리지날   바꿀거  */

SELECT dname "department name", deptno "부서 번호#" from DEPARTMENT;  /* 띄어쓰기 = "" 이걸로 묶음*/
/*                변경할거      오리지날   변경할거  */
SELECT dname "학과 이름", deptno AS "학과 번호" from DEPARTMENT; /* 띄어쓰기 = "" 이걸로 묶음*/
/*     현이름  변경할거   오리지날    변경할거  */

SELECT studno || ' ' || name "student" FROM student; /* 학생번호와 이름을 한칸 띄고 "student"에 넣어서 출력 '||'<---얘는 연결 연산자*/
/*     학생번호  (띄고)   이름   */

desc emp;
SELECT * FROM emp; 
SELECT ename || ',' || job  "EMPLOYEE and Title" from EMP;

SELECT name, weight, weight*2.2 AS weight_pound FROM student;


/* 1. DEPARTMENT 테이블 구조 확인 */
desc DEPARTMENT
/* DNAME 유형 =  VARCHAR2(30) */

/* 2. 1. 부서(department) 테이블의 구조를 확인하세요. (dname의 유형은?)*/
desc DEPARTMENT /* DNAME 유형 =  VARCHAR2(30) */

/*2. 교수 테이블에서 이름, 직급, 급여, 학과 번호를 출력하세요.*/
SELECT NAME, POSITION, SAL, DEPTNO  FROM PROFESSOR;
/*     이름     직급     급여  학과번호 */

/*3. 학생 테이블에서 학번, 이름, userid를 출력하세요.*/
SELECT * from student;
SELECT studno, name, userid from student;


/*4. 교수 테이블에서 교수 번호, 이름, 직급, 부서 번호를 출력하세요.(결과가 아래와 같이 나오도록)
교수 No 이름 직급 학과 번호
---------- -------------------- ---------------------------------------
9907 전은지 전임강사 101
9908 남은혁 부교수 202
*/
SELECT * FROM PROFESSOR;
desc PROFESSOR;

SELECT PROFNO "교수 NO", NAME "이름", POSITION "직급", DEPTNO "학과 번호" from PROFESSOR;

/*5. 사원 테이블에서 중복되지 않게 직업을 출력하세요.(결과가 아래와 같이 나오도록)
JOB
------------------
ANALYST
CLERK
MANAGER
PRESIDENT
SALESMAN
*/

desc emp;
SELECT * FROM emp;
SELECT DISTINCT job from emp;

/*6. 사원 테이블에서 사원 번호, 이름, 직업, 급여 그리고 13% 증가된 급여를 이름, 직업순으로 출력하세요.
증가된 급여의 열 레이블은 New Sal입니다.(결과가 아래와 같이 나오도록)

EMPNO ENAME SAL New Sal
---------- -------------------- ---------- ----------
7369 SMITH 800 904
7499 ALLEN 1600 1808
7521 WARD 1250 1413
7566 JONES 2975 3362
7654 MARTIN 1250 1413
7698 BLAKE 2850 3221
(생략)
*/
desc emp;
SELECT * FROM emp;
SELECT EMPNO "사원번호", ENAME "이름", JOB "직업", SAL "급여", SAL*1.13 "New Sal" FROM emp;

/*7. 6에 추가하여 새로운 급여(New Sal)에서 예전의 급여(SAL)를 빼는 열을 추가하세요.
추가한 열 레이블은 Increase입니다.(결과가 아래와 같이 나오도록)

EMPNO ENAME SAL New Sal Increase
---------- -------------------- ---------- ---------- ----------
7369 SMITH 800 904 104
7499 ALLEN 1600 1808 208
7521 WARD 1250 1413 163
7566 JONES 2975 3362 387
7654 MARTIN 1250 1413 163
7698 BLAKE 2850 3221 371
(생략) */

desc emp;
SELECT * FROM emp;
SELECT EMPNO "사원번호", ENAME "이름", SAL "급여", SAL*1.13 "New Sal", SAL*1.13-SAL "Increase" FROM emp;


/* 2021년 4월 5일 월요일 */

/* 1. 교수 테이블 구조 출력*/
SELECT * FROM PROFESSOR;
desc PROFESSOR;

/* 2. 교수테이블 교수명, 급여, 학과번호 출력*/
desc PROFESSOR;
SELECT NAME, SAL, DEPTNO 
FROM PROFESSOR;

/* 3. 학생 테이블에서 학생이름, 학과번호, 생일 출력(별명 동일)*/
desc student;
SELECT NAME "학생 이름", DEPTNO 학과번호, BIRTHDATE 생일  /* 띄어쓰기가 있을경우에만 "" <- 요걸로 묶기. 아닌경우 그냥 뒤에 조지기 */
FROM student;

/* 4. 교수 테이블에서 이름, 번호, 연봉(*12)*/
desc PROFESSOR;
SELECT NAME "교수님 이름", PROFNO 번호,  SAL*12 연봉
FROM PROFESSOR;

SELECT * FROM DEPARTMENT;

set auto commit on

insert into department values (301, '제어계측학과', 200, '5호관');

SELECT * FROM DEPARTMENT;

create table ex_type (c char(10), v varchar2(10)); /* c열, v열 */
insert into ex_type values('sql', 'sql');
SELECT * FROM ex_type
where c = 'sql';

SELECT * FROM ex_type
where c=v; /* c열, v열의 타입이 달라서 못찾음 */

SELECT rowid, studno, name, deptno  FROM student
where rowid = 'AAAE5sAAEAAAAHPAAK'; /* 서재진만 가지고 옴 */

SELECT * FROM student;

/* 사원 테이블에서 rowid, 사번, 이름 출력 */

desc emp;
SELECT * from emp;
SELECT rowid, ename, empno from emp; 

/*학생 테이블에서 1학년 이름, 학번, 학과번호 가져와라 */


SELECT studno, name, deptno 
from student
where grade = '1'; /* 그레이드의 타입은 varchar2 이므로 '' <- 얘 붙이는거임 */

SELECT studno, name, deptno 
from student
where grade = 1; /* 얘는 틀린거임 */

desc student;

/* 사원 테이블에서 smith 사번, 이름, 급여 출력*/

desc emp;

SELECT EMPNO, ENAME, SAL ,deptno
from emp
where ENAME = 'SMITH';

SELECT EMPNO, ENAME, SAL ,deptno
from emp
where deptno = 10;


/* 박미경만 찾아오기 */
desc student;
SELECT STUDNO, NAME, BIRTHDATE
from student
where NAME = '박미경';

desc student;
SELECT STUDNO, NAME, WEIGHT
from student
where WEIGHT <= 70;

desc student;
SELECT STUDNO, NAME, WEIGHT
from student
where GRADE = '1'
and WEIGHT >= 70;


desc student;
SELECT STUDNO, NAME, WEIGHT
from student
where GRADE = '1'
or WEIGHT >= 70;

SELECT STUDNO, NAME, WEIGHT, deptno
from student
where not deptno = 101;

SELECT STUDNO, NAME, WEIGHT, deptno
from student
where not deptno = 101
and WEIGHT >= 90;


SELECT STUDNO, NAME, WEIGHT
from student
where WEIGHT between 50 and 70;

desc student;
SELECT name, BIRTHDATE
from student
where BIRTHDATE between '81/01/01' and '83/12/31';


desc student;
SELECT name, GRADE, DEPTNO
from student
where DEPTNO in (102,201);


desc emp;
SELECT EMPNO, ENAME, JOB, SAL
from emp
where SAL between 1500 and 5000
and JOB in ('SALESMAN','PRESIDENT');


desc student;
SELECT NAME, GRADE, DEPTNO
from student
where NAME like '김%';

desc student;
SELECT userid, NAME, GRADE, DEPTNO, PROFNO
from student
where NAME like '%진'
and DEPTNO =101;

desc student;
SELECT  NAME, GRADE, DEPTNO
from student
where NAME like '김_영';


/* 학생테이블 남학생 이름, 학년, 학과번호, 주민번호 출력*/
desc student;
SELECT * from student;

SELECT  NAME, GRADE, DEPTNO, IDNUM, BIRTHDATE
from student
where IDNUM like '______1%'; /* n번째 = _ <- 언더바로 표현*/

insert into student(studno, name)
values (33333,'황보_정호');

desc student;

SELECT *
from student;


SELECT  NAME
from student
where name like '황보\_%' escape '\';


/* 1. 2950 이상 받는 사원의 이름, 급여 출력 (emp) */
desc emp;

SELECT  ENAME, SAL
from emp
where SAL >= 2950;


/* 2. 급여를 1250~2800을 받고 부서 번호가 20이나 30에 속하는 사원이 이름과 급여 출력 
열의 레이블을 Employee와 Monthly Salary로*/

desc emp;

SELECT ENAME "Employee", SAL "Monthly Salary"
from emp
where sal between 1250 and 2800
and DEPTNO in (20, 30);


/* 3. 이름에 L이 두자가 있고 부서가 30 이거나 또는 관리자가 7782인 모든 사원이 이름 출력*/

desc emp;

SELECT ENAME "Employee"
from emp
where ENAME like '%L%L%'
and DEPTNO = 30
or mgr = 7782;


/* 4. 이름이 J,A 또는 M으로 시작하는 모든 사원 출력  */

desc emp;

SELECT ENAME "Employee"
from emp
where ENAME like '%J%A%'
or ENAME like 'M%';

/* 5. 사원테이블에서 보너스가 급여보다 15% 이상이거나 업무가 SALESMAN인 사원에 대해서 이름, 업무, 급여 그리고 보너스 출력  */

desc emp;

SELECT * from emp;
SELECT ENAME "Employee", JOB, SAL, COMM
from emp
where COMM >= sal*0.15
and JOB = 'SALESMAN';



select empno, sal, comm, sal + comm
from emp;


select name, position, comm
from professor;

select name, position, comm
from professor
where comm is null;


desc student;
select name, STUDNO, PROFNO 
from student
where PROFNO is null;


select name, sal+comm "sal_com"
from professor;


desc student;
select USERID, name, GRADE, STUDNO, DEPTNO
from student
where NAME like '%진'
and PROFNO is null 
and DEPTNO = 101;

select name, GRADE, DEPTNO
from student
where DEPTNO = 102
and (grade = '1' 
or grade = '4');


desc emp;

select EMPNO, ENAME, JOB ,DEPTNO
from emp
where DEPTNO = 30
and (JOB = 'MANAGER'
or JOB = 'CLERK');

select name, GRADE, DEPTNO
from student
where DEPTNO = 102
and grade = '1' 
or grade = '4';


/* 테이블 생성*/
create table stud_heavy
as select * 
from student
where weight >= 70 and grade = '1';

create table stud_101
as select * 
from student
where DEPTNO = 101 and grade = '1';

/* 테이블 확인*/
select * from stud_heavy;
select * from stud_101;

/* 합치기 */
desc student;
select STUDNO, name
from stud_heavy
union
select STUDNO, name
from stud_101;

select STUDNO, name
from stud_heavy
union all
select STUDNO, name
from stud_101;


desc student;


select name, USERID, 0 sal
from student

union

select name, USERID, sal
from professor;

select name from STUD_HEAVY
intersect
select name from STUD_101;


desc student;
select STUDNO 학번, name 이름
from STUD_HEAVY

minus 

select STUDNO, name
from STUD_101;



select STUDNO 학번, name 이름
from STUD_101

minus 

select STUDNO, name
from STUD_HEAVY;




desc professor;
select * from professor;

select NAME, POSITION
from professor
minus
select NAME, POSITION
from professor
where POSITION = '전임강사';

select name, grade, tel
from student
order by name; /* 네임 순으로 정렬*/

select name, grade, tel
from student
where weight > 60
and grade = 1
order by name; /* 네임 순으로 정렬 -> 늘 끝에 온다*/

select name, grade, tel
from student
order by grade desc; /* 늘 끝에 온다*/


desc emp;
select EMPNO, ENAME, SAL, COMM 
from emp
where comm is not null
order by SAL desc; /* 내림차순 */


desc emp;
select ENAME, JOB, DEPTNO, SAL
from emp
order by DEPTNO, SAL desc; /* 내림차순 */


desc emp;
select HIREDATE from emp;

select ENAME, HIREDATE
from emp
where HIREDATE like '82%';

select ENAME, sal, COMM
from emp
where comm is not null
order by SAL desc, comm desc;

select ENAME, sal, COMM
from emp
where comm >= sal*0.2 
and deptno=30;


select name, userid, initcap(userid)
from student
where name = '김영균';


select name, userid, lower(userid), upper(userid)
from student
where studno = 20101;

desc emp;
select ENAME from emp;

select EMPNO, ENAME, DEPTNO
from emp
where  initcap (ENAME) = 'Scott'; 



select EMPNO, ENAME, DEPTNO
from emp
where  lower (ENAME) 
and initcap(ENAME)
and upper(ENAME) = 'smith'; /* 소문자로 변환하여 찾기*/


desc DEPARTMENT;
/*문자열의 길이 반환 함수*/
select DNAME, length(DNAME), lengthb(DNAME) 
from DEPARTMENT;


/* 현재 캐릭터셋 확인*/
select *
from nls_database_parameters
where PARAMETER = 'NLS_CHARACTERSET';


desc emp;

select  initcap(ename) "Name", length(ename) "Length"
from emp
where   ename like 'A%' 
or      ename like 'T%'
or      ename like 'M%';

select concat(concat(name,'의 직책은 '), position)
from professor;


/* idnum 에서 1~6번째 문자 가져오고 3번째 부터 2글자 가져와*/
select name, idnum, SUBSTR(idnum, 1, 6) birth_date,
                    SUBSTR(idnum, 3, 2) birth_mon
from student
where grade = '1';


/* 남학생만 찾아라*/
select name, idnum, SUBSTR(idnum, 1, 6) birth_date,
                    SUBSTR(idnum, 3, 2) birth_mon
from student
where grade = '1'
and SUBSTR(idnum, 7, 1)=1; /* 7번째에서 1개만 가지고 오는데 그것이 '1' 인것만 가져와라*/


select initcap(ename) "Name", length(ename) "Length"
from emp
where SUBSTR(ENAME, 1, 1) in ('A','T','M');


select 33*44 from dual; /*일시적인 산술값을 구할때 -> dual*/ 

select dname, instr(dname, '과') /* 과가 몇번째에 있는지 찾아라 */
from department;


select  position, lpad(position, 10, '*') lpad_position, /* 10바이트로 잡고 왼쪽에 "*" 를 채워라 */
        userid, lpad(userid, 12, '+')lpad_userid  /* 12바이트로 잡고 오른쪽에 "+" 를 채워라 */
        from professor;



select ltrim('xyyyyyxxxxXyLAST WORD','xy')
from dual;

select rtrim('TURNERxXyxyxxxyyyxyxyxxyxy','xy')
from dual;


select dname, rtrim(dname, '과') /* 오른쪽으로 시작해서 '과'만 삭제 */
from department;


select name,    sal/22, round(sal/22), round(sal/22,2),
                round(sal/22, -1)
from professor
where deptno = 101;


select name,    sal/22, trunc(sal/22), trunc(sal/22,2),
                trunc(sal/22, -1)
from professor
where deptno = 101;


select name, sal, comm, mod(sal, comm)
from professor
where deptno = 101;

select ceil(19.7), floor(12.345)
from dual; /*일시적인 산술값을 구할때 -> dual*/ 


select name, hiredate, hiredate+30, hiredate+60
from professor
where profno = 9908;

select sysdate 
from dual;


select  sysdate-1 어제, sysdate 오늘, sysdate+1 내일
from dual;

desc emp;

select EMPNO, ename, round(sysdate-HIREDATE) 근무일수
from emp
order by 근무일수 desc, ename;


select profno, HIREDATE,
        round((months_between(sysdate, HIREDATE))) tenure,
        add_months(sysdate, 6) review
        from professor
        where months_between(sysdate, HIREDATE) < 300;


/* 1. 사원 테이블에서 이름에 A를 포함하고 커미션을 받지 않는
사원의 사원 번호, 이름, 급여, 커미션을 출력하세요.
(결과가 아래와 같이 나오도록)

EMPNO ENAME SAL COMM
-------- ---------- ---------- ----------
7698 BLAKE 2850
7782 CLARK 2450
7876 ADAMS 1100
7900 JAMES 950
*/

desc emp;
select EMPNO, ENAME, SAL, COMM
from emp
where  ENAME like '%A%'
and COMM is null;


/*2.직급이 'manager'인 사원을 검색하려고 아래와 같은 질의문을 작성하였으나,
'선택된 레코드가 없습니다.' 라고 나온다.
이유를 설명하고 직급이 'manager'인 사원을 검색하도록 질의문을 수정해 보세요.
SELECT empno, ename, job
FROM emp
WHERE job='manager';

이유 : 'manager' <- 얘가 대문자로 되어있음
*/
 
desc emp;
SELECT job from emp; 
SELECT empno, ename, job
from emp
where lower(job) = 'manager'; /* 소문자로 변환해서 manager을 찾아라*/

/*3. 사원 테이블에서 2월에 입사한 사원을 출력해 보세요.(substr 사용)*/
desc emp;
SELECT HIREDATE from emp; 
SELECT ename, HIREDATE, substr(HIREDATE, 4, 2) /* 4번째부터 2개 가져와*/
from emp
where substr(HIREDATE, 4, 2) = 02; /* 4번째부터 2개 가져오면서 02만 가져와 */


/* 4.업무(job)가 MANAGER이거나 SALESMAN이며 급여가 $1500, $3000 또는 5000이 아닌
모든 사원에 대해서 이름, 업무, 그리고 급여를 출력하세요.(결과가 아래와 같이 나오도록)

ENAME JOB SAL
----------- --------- ----------
JONES MANAGER 2975
BLAKE MANAGER 2850
*/
desc emp;
SELECT ename, JOB, SAL
from emp
where   lower(job) = 'manager'
or      lower(job) = 'salesman'
or      sal not in(1500,3000,5000)
order by sal desc;


/* 4월 9일 금욜 */
select sysdate, last_day(sysdate), next_day(sysdate, 1)
from dual;

select sysdate, last_day(sysdate), next_day(sysdate, '일')
from dual;


select  to_char(sysdate, 'yy/mm/dd hh24:mi:ss') nomal,
        to_char(trunc(sysdate), 'yy/mm/dd hh24:mi:ss') trunc,
        to_char(round(sysdate), 'yy/mm/dd hh24:mi:ss') round
        from dual;

select  to_char(hiredate, 'yy/mm/dd hh24:mi:ss') hiredate,
        to_char(round(hiredate, 'dd'), 'yy/mm/dd') round_dd,
        to_char(round(hiredate, 'mm'), 'yy/mm/dd') round_mm,
        to_char(round(hiredate, 'yy'), 'yy/mm/dd') round_yy
        from professor
        where deptno = 101;
        

select studno,  to_char(birthdate, 'yy-mm') birthdate
                from student
                where name = '전인하';


alter SESSION set nls_language = american; /* 언어 세팅 바꾸기*/ 
alter SESSION set nls_language = korean; /* 언어 세팅 바꾸기*/

select name, grade, to_char(birthdate, 'Day Month dd, yyyy') birthdate
                from student
                where deptno = 102;

select name,    to_char(hiredate, 'Month dd, yyyy hh24:mi:ss pm') hiredate
                from professor
                where deptno = 101;


desc emp;
select Ename, HIREDATE, to_char(hiredate, 'YY/MON/DD DY') 입사일
                from emp;

select name, position, to_char(hiredate, 'mon "the" ddth "of" yyyy') HIREDATE
from professor
where DEPTNO = 101;

select name, sal, comm, to_char((sal+comm)*12, '9,999') anual_sal
    from professor
    where comm is not null;

select to_number('1') num
from dual;

select name, HIREDATE
 from professor
 where HIREDATE = to_date('6월 01, 01', 'month dd, yy');

select   trunc(sysdate - to_date('19870406','yyyy/mm/dd')) "lived day" 
    from dual;

select to_char(to_date(SUBSTR(idnum, 1, 6),'yymmdd'),'yy/mm/dd') birthdate
from student;


select name, position, sal, comm, sal+comm,
        sal+nvl(comm,0) s1,
        sal+nvl(sal+comm, sal) s2
        from professor
        where deptno = 201;

select ENAME, sal, comm, sal+comm,
        sal+nvl(comm,0) s1,
        sal+nvl(sal+comm, sal) 총지급금액
        from emp;
desc emp;

select name, position, sal, comm,
    nvl2(comm, sal+comm, sal) total
    from professor
    where deptno = 102;


desc emp;
SELECT ename, NVL2(comm, TO_CHAR(comm), 'No Commission') COMM
FROM emp;

select ename, NVL(to_char(comm),'NO COMM')
from emp;

select name, userid, lengthb(name), lengthb(userid),
    nullif(lengthb(name), lengthb(userid)) nullif_result 
from professor;

select name, userid, lengthb(name), lengthb(userid),
nullif(lengthb(substr(name,1,2)),lengthb(userid)) nullif_result
from professor;


SELECT name, userid, LENGTHB(name), LENGTHB(userid),LENGTHB(SUBSTR(name,1,2)),
        NULLIF(LENGTHB(SUBSTR(name,1,2)), LENGTHB(userid)) nullif_result
FROM professor;


SELECT name, comm, sal, coalesce(comm, sal, 0) co_result
FROM professor;

SELECT name, deptno, 
    decode(DEPTNO, 101,'컴공', 102,'멀미', 201,'전공', '기공') dname /* DEPTNO에서 101 이면 '컴공' 출력해라 dname에*/
FROM professor;


SELECT name, deptno, sal,
                case    when deptno = 101 then sal*0.1
                        when deptno = 102 then sal*0.2
                        when deptno = 201 then sal*0.3
                        else 0
                        end bonus
                        FROM professor;
     
desc student;               

SELECT name, STUDNO, SUBSTR(IDNUM, 3, 2) month,
            case 
            when SUBSTR(idnum, 3, 2) in(01,02,03) then '1/4'
            when SUBSTR(idnum, 3, 2) in(04,05,06) then '2/4'
            when SUBSTR(idnum, 3, 2) in(07,08,09) then '3/4'
            ELSE '4/4'
            END Quarte    
from student;

select count(comm)
from professor
where deptno = 101;

select count(*)
from professor
where deptno = 101 and comm is not null;


select count(*), count(comm)
from emp
where comm is not null;


select avg(weight), sum(weight)
from student
where deptno = 101;


select count(comm), sum(comm), avg(comm)
from emp;


desc emp;
select count(distinct(job)) 
from emp;

desc student;
select max(HEIGHT), min(HEIGHT)
from student
where deptno = 102;

desc emp;
select max(HIREDATE), min(HIREDATE)
from emp;


select stddev(sal), VARIANCE(sal) 
from professor;


select deptno, count(*), count(comm)
from professor
GROUP BY deptno;

desc emp;

/* 부서병 직무병 평균급여 및 정렬 */
select DEPTNO,JOB, avg(sal)/* <-- 예는 평균 급여 */
from emp
GROUP BY deptno, JOB /* 두개 묶어 */
order by 1,2;


select DEPTNO, avg(sal), min(sal), max(sal)
from professor
GROUP BY deptno;

desc student;
select DEPTNO, GRADE, count(*), round(avg(WEIGHT))
from student
GROUP BY deptno, GRADE;


select DEPTNO, sum(sal)
from professor
group by rollup(DEPTNO); /* 소계 */


select DEPTNO, position, count(*)
from professor
group by rollup(DEPTNO, position); /* DEPTNO, position의 소계 */

select DEPTNO, position, count(*)
from professor
group by cube(DEPTNO, position); /* DEPTNO, position의 총계 */



select DEPTNO, grade, count(*),
grouping(DEPTNO) grp_dno,
grouping(grade) grp_grade
from student
group by rollup(DEPTNO, grade);




select DEPTNO, grade, null, count(*)
from student
group by DEPTNO, grade

union all

select DEPTNO, null, to_char(birthdate,'yyyy'), count(*)
from student
group by DEPTNO, to_char(birthdate,'yyyy');

/* 위, 아래의 코드 결과가 같음 */

select DEPTNO, grade, to_char(birthdate,'yyyy') birthdate, count(*)
from student
group by grouping sets((DEPTNO, grade), (DEPTNO, to_char(birthdate,'yyyy')));


/* 1. 모든 사원 최대, 최저 급여, 급여 합계 평균급여 출력 레이블 =맥시멈, 미니엄, 섬, 에버리지 그리고 소수점 반올림 */
desc emp;
select max(sal) 시멈이, min(sal) 니멈이, sum(sal) 합계, round(avg(sal)) 평균이
from EMP;


/* 2. 1980, 81, 82, 87년에 입사한 사원 전체수와 연도별 사원수 출력 */
desc emp;
select count(*) total,
count(case when substr(hiredate,1,2)=80 then 1 else null end) "1980", /* then 이전이 트루일 경우, 1을 반환하고 아니면 null을 반환해라?*/
count(case when substr(hiredate,1,2)=81 then 1 else null end) "1981",
count(case when substr(hiredate,1,2)=82 then 1 else null end) "1982",
count(case when substr(hiredate,1,2)=87 then 1 else null end) "1987"
from emp;


/* 각 직무에 대한 직무와 월급 총액을 president를 제외시키고 월급 총액별로 리스트 정렬*/

desc emp;
select job , sum(sal) 월급
from emp
where job!= 'PRESIDENT'
group by job
order by 2;

/*deoptno별, 부서별 평균 급여를 집계하세요.*/

select deptno, job, round(avg(sal),1) AVG_SAL, count(*) cntemp
from emp
group by cube(deptno,job)
order by 1;



/*4월 12일 월요일_oracle sql */
/*    */
/* order by = 정렬 */

select grade, count(*), round(avg(height)) avg_height,
        round(avg(weight)) avg_weight
        from student
        group by grade
        order by avg_height desc;

select grade, count(*), round(avg(height)) avg_height,
        round(avg(weight))avg_weight
        from student
        group by grade
        having count(*) > 4
        order by avg_height desc;
/*  count 그룹에서 4 이상인것만 출력   */


/* 사원테이블에서 1000 이상의 급여를 받는 사원에 대해 부서별 평균 급여를 구한 후 부서별 평균 급여가 2000 이상인 부서번호와 부서별 평균급여   */

desc emp;
select DEPTNO, round(avg(sal)) avg_sal
from emp
where sal >= 1000
group by deptno /* deptno 그룹핑 */
having avg(sal) >= 2000
order by avg_sal desc;

/* having = 그룹의 조건 
where = 전체의 조건, 그룹함수 못씀.*/

select max(avg(weight)) max_weight /* 몸무게의 평균을 구하고 최대값을 가져와 */
    from student
    group by deptno;

/* where절에 그룹함수(count(*)) 사용하여 오류 발생 */
select deptno, max(count(studno)) max_cnt
from student
where count(*) = 5
group by deptno;

select deptno, max(count(studno)) max_cnt
from student
group by deptno
having count(*) >= 5;
/* 해결해보자 */


/* 조인 함수  */
select  student.studno, student.name, student.WEIGHT,
        student.deptno, department.dname
from student, department
where student.deptno = department.deptno;


/* 조인 함수 from(출처)에서 별명 지정(30자 까지), 해당 SQL에서만 적용 */
select  s.studno, s.name, s.WEIGHT,
        s.deptno, d.dname
from student s, department d
where s.deptno = d.deptno;

select  s.studno, s.name, s.WEIGHT,
        s.deptno, d.dname
from student s, department d
where s.deptno = d.deptno
and s.name ='전인하';


desc emp;
desc department;
select  e.EMPNO, e.ename, e.sal,
        d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno
and lower(e.ename) = 'scott'; /* 소문자로 바꿔서 스캇을 찾겠다*/




/* 학생이름, 학과번호, 지도교수번호, 지도교수 이름 출력*/
desc student;
desc professor;

select  s.name sname, s.PROFNO, s.DEPTNO,
        p.name pname, p.PROFNO, p.DEPTNO
from student s, professor p
where s.PROFNO = p.PROFNO; /* 공통의 칼럼을 기준으로 가지고와라 (유일한 키와 연결되는)*/


/* 학생이름, 교수번호, 교수이름, 학과번호 학과이름 출력*/

desc student;
desc professor;
desc department;

select  s.name sname, s.PROFNO, s.DEPTNO,
        p.name pname, p.PROFNO, p.DEPTNO,
        d.DEPTNO, d.DNAME
from student s, professor p, department d
where s.PROFNO = p.PROFNO /* 공통의 칼럼을 기준으로 가지고와라 (유일한 키와 연결되는)*/
and  s.deptno = d.deptno
and s.name = '전인하';



desc student;

select s.STUDNO, s.name, d.DNAME, d.LOC
from student s, department d
where s.deptno = d.deptno
and s.WEIGHT >= 80
and d.dname = '컴퓨터공학과';


/*카티션 곱(크로스 조인) where에 연결고리 조건을 주지 않음*/
select s.STUDNO, s.name, s.deptno, d.deptno, dname
from student s, department d;

select STUDNO, name, deptno, loc
from student cross join department;

/* =(EQUI)조인 <- where에 쓰는거 */
select s.STUDNO, s.name, s.deptno, d.deptno, dname, d.loc
from student s, department d
where s.deptno = d.deptno;

/* natural join */
select s.STUDNO, s.name, deptno, dname
from student s 
        natural join department d;
        
select s.STUDNO, s.name, deptno, dname
from student s 
        natural join department d
        where s.grade = '4'; /* 4학년만 가지고 와  */
        
/* 위 두개와 결과가 같음 */
select s.STUDNO, s.name, deptno, dname
from student s join department d
            using(deptno);

/* inner join */
select s.STUDNO, s.name, s.deptno, d.deptno, dname, d.loc
from student s inner join department d
on s.deptno = d.deptno
where name like '김%';

/* 'non EQUI(=)' join */
select  p.profno, p.name, p.sal,
        s.grade
    from professor p, salgrade s
    where p.sal between s.losal and s.HISAL;

select  p.profno, p.name, p.sal,
        s.grade
    from professor p, salgrade s
    where p.sal between s.losal and s.HISAL
    and p.deptno = 101;


/* 학생테이블과 교수테이블을 조인하여 학생 이름, 학년, 지도교수 이름 출력, (+) <-- outer join = null 까지 출력*/
desc student;
desc professor;

select  s.name sname, s.grade, 
        p.NAME pname, p.position
from  student s, professor p
where s.PROFNO = p.PROFNO(+);


select  s.name sname, s.grade, 
        p.NAME pname, p.position
from  student s, professor p
where s.PROFNO(+) = p.PROFNO;


/*left outer join, 위와 같음   */
select  s.name sname, s.grade, 
        p.NAME pname, p.position
from  student s left outer join professor p
                            on s.PROFNO = p.PROFNO;

/*full outer join, 위와 같음   */
select  s.name sname, s.grade, 
        p.NAME pname, p.position
from  student s full outer join professor p
                            on s.PROFNO = p.PROFNO;


/*부서에 대한 정보를 모두 보여주고, 부서번호가 20인 사원의 사원번호, 이름, 급여 출력*/
/*연구 복습 해결 */
desc emp;
desc dept;
desc DEPARTMENT;

select d.deptno, d.dname, d.loc, e.empno, e.ename, e.sal
from dept d left outer join emp e
on e.deptno = d.deptno
and e.deptno = 20;

SELECT d.deptno, d.dname, d.loc, e.empno, e.ename, e.sal
FROM dept d, emp e
WHERE d.deptno = e.deptno(+)
AND   e.deptno(+) = 20
ORDER BY 1;


/*self join*/
select DEPT.DNAME || '의 소속은 '|| org.dname
        from DEPARTMENT dept join DEPARTMENT org
        on dept.college = org.deptno;
        
        
/*서프쿼리*/
select name, position
from professor 
where POSITION = (select position
                    from professor
                    where name = '전은지' ); /*전은지와 같은 포지션 블러오기*/

select studno, name, grade, userid
from student
where grade = (select grade
                from student
                where userid = 'jun123'); /*userid가 jun123인 사람의 학년과 같은 학년을 불러오기*/

/*세일즈 부서에 근무하는 사원의 사번, 이름, 급여 출력*/
/*연구 복습 해결 */
desc emp;

select empno, ename, sal
    from emp
where deptno = (select deptno
                from dept
                where dname = 'SALES')
                and sal >= 1300;

select name, deptno, weight
    from student
    where weight < (select avg(weight)
                    from student
                    where deptno = 101);

select name, grade, height
    from student
    where   grade = (select grade
                        from student
                        where studno = 20101)
    and     height = (select height
                        from student
                        where studno = 20101);

/* 부서별 사원수가 최대인 부서번호와 사원수를 출력 */
/*연구 복습 해결 */
desc emp;
desc department;

select deptno, COUNT(deptno) as cnt
from emp
group by deptno
having COUNT(deptno) = ( select max(count(deptno))
                        from emp
                         group by deptno );
                         
                         
/* 다중행 서브쿼리 */

select name, grade, deptno
    from student
    where deptno in (select deptno
                        from department
                        where college = 100);


/* 1. 사원 테이블에서 최대 급여와 최소 급여 사이의 차이를 출력하는 질의를 작성하세요.
열레이블(이름)은 DIFFERENCE입니다. */

desc emp;

select max(sal), min(sal), max(sal)-min(sal) difference
from emp;

                        
/*
* 2~3번은 테이블은 employees, departments, locations 이용하시기 바랍니다.
==> 시간이 되시면 inner join 도
 
2. Shipping부서에 근무하는 사원에 대해 last_name, job_id, 부서번호,
부서이름을 last_name 순으로 출력하세요.
(아래와 같은 결과가 나오도록-45건)

LAST_NAME JOB_ID DEPARTMENT_ID DEPARTMENT_N
---------- ---------- ------------- ------------
Atkinson ST_CLERK 50 Shipping
Bell SH_CLERK 50 Shipping
Bissot ST_CLERK 50 Shipping
Bull SH_CLERK 50 Shipping
Cabrio SH_CLERK 50 Shipping
*/
desc employees;
desc departments;
desc locations;

select  e.LAST_NAME, e.JOB_ID, 
        d.DEPARTMENT_ID, d.DEPARTMENT_NAME
from employees e left outer join departments d
                    on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_NAME =  'Shipping'
order by LAST_NAME;

 

/* 3. south san francisco에서 근무하는 모든 사원에 대해 last_name, job,
부서번호, 부서이름, 부서위치(city)를 출력하세요. (아래와 같은 결과가 나오도록-45건)

LAST_NAME JOB_ID DEPARTMENT_ID DEPARTMENT_N CITY
---------- ---------- ------------- ------------ -------------------
Weiss ST_MAN 50 Shipping South San Francisco
Fripp ST_MAN 50 Shipping South San Francisco
Kaufling ST_MAN 50 Shipping South San Francisco
Vollman ST_MAN 50 Shipping South San Francisco
Mourgos ST_MAN 50 Shipping South San Francisco
Nayer ST_CLERK 50 Shipping South San Francisco
Mikkilinen ST_CLERK 50 Shipping South San Francisco
*/
desc employees;
desc departments;
desc locations;

select  e.LAST_NAME, e.JOB_ID, 
        d.DEPARTMENT_ID, d.DEPARTMENT_NAME,
        l.LOCATION_ID, l.CITY
from employees e, departments d, locations l
where e.DEPARTMENT_ID = d.DEPARTMENT_ID
and d.LOCATION_ID = l.LOCATION_ID
and lower(l.city) = 'south san francisco';



/*4월 13일 화요일  */

/* any 연산자 */
/* 4학년 중 키가 제일 작은 학생보다 키가 큰 학생의 학번, 이름, 키 출력 */
select studno, name, height
from student
where height > any(select height
                    from student
                    where grade = '4');
                                  
/* 4학년 중 키가 제일 큰 학생보다 키가 큰 학생의 학번, 이름, 키 출력 */
select studno, name, height
from student
where height > all(select height
                    from student
                    where grade = '4');

/* exists 연산자 */
/* 보직수당 받는 교수가 존재하면 모든 교우 번호, 이름, 보직수당, 급여+보직수당 출력  */
select profno, name, sal, comm, sal+nvl(comm, 0)
from professor
where exists (  select profno
                from professor
                where comm is not null);

/* 학생 중에서 goodstudent 라는 사용자 아이디가 없으면(where에) 1을 출력   */
select 1 userid_exist
from dual /* dual = 원하는 당장(일시적) 값을 가지고오는 sy가 소유한 테이블  */
where not exists(select userid
                    from student
                    where userid = 'goodstudent');
                    

/* pairwise 학년별 몸무게가 최소인 학생의 이름, 학년, 몸무게 출력 */
select name, grade, weight
from student
where (grade, weight) in (select grade, min(weight)
                            from student
                            group by grade);
                            
/*사원 테이블을 조회하여 각 부서별 이름 급여 출력*/
/*다중(in) 컬럼*/
desc emp;
select ename, deptno, sal
from emp
where (deptno, sal) in (select deptno, max(sal)
                                from emp
                                group by deptno)
order by 1;


/* unpairwise 학년별 몸무게가 최소인 학생의 이름, 학년, 몸무게 출력, 학년별 오도바이  */
select name, grade, weight
from student
where   grade in    (select grade
                            from student
                            group by grade)
and     weight in   (select min(weight)
                            from student
                            group by grade)
order by grade;


/* Blake와 같은 부서에 있는 모든 사원 이름과 입사일 출력 */
select ename, hiredate
from emp
where deptno = (select deptno
                from emp
                where initcap(ENAME) = 'Blake');

/*각 학과별로 입사일이 가장 오래된 교수의 교수번호와 이름, 입사일, 학과명 출력 */

desc department;
desc PROFESSOR;

select  p.PROFNO, p.NAME , p.HIREDATE, 
        d.DEPTNO, d.DNAME
from PROFESSOR p, department d
where p.deptno = d.deptno /* 조인 */
and (sysdate-hiredate) > (select avg(sysdate-hiredate)
from professor)
order by hiredate;
                    

SELECT	 s1.name, s1.deptno, s1.height
FROM	 student s1, (SELECT	deptno, avg(height) height
		      FROM	student
		      GROUP BY deptno) s2
WHERE 	 s1.deptno=s2.deptno
AND	 s1.height > s2.height
ORDER BY s1.deptno;

/* 단일행 입력 */
desc student;


insert into student
values(10110, '홍길동', 'hong', '1', '8501011143098', '85/01/01', '041)630-3114', 170, 70, 010, 9903);
commit;

desc DEPARTMENT;
insert into DEPARTMENT(DEPTNO, DNAME)
values(300, '생명공학부');
commit;
select * from DEPARTMENT
where deptno = 300;

insert into DEPARTMENT
values(301, '환경보건학과','',''); /*컬럼을 다 채워야 오류 안생김*/
commit;
select * from DEPARTMENT
where deptno = 301;

desc professor;
insert into professor(PROFNO, NAME, POSITION, HIREDATE, DEPTNO)
values(9920, '최윤식', '최교수', to_date('2006/01/01', 'yyyy/mm/dd'), 102);
commit;
select * from professor
where DEPTNO = 102;

insert into professor
values(9910, '백미선', 'white', '전임강사', 200, sysdate, 10, 101);
commit;
select * from professor
where DEPTNO = 101;

CREATE TABLE T_student 
as SELECT * FROM student;
commit;

SELECT * FROM t_student;
SELECT * FROM student;


CREATE TABLE height_info(
studno  number(5),
name    varchar2(10),
height  number(5,2));

CREATE TABLE weight_info(
studno  number(5),
name    varchar2(10),
weight  number(5,2));


insert all
into height_info values(STUDNO, name, height)
into weight_info values(STUDNO, name, weight)
select STUDNO, name, height, weight
from student
where grade >= '2';
commit;

select * from height_info;
select * from weight_info;

delete from height_info;
delete from weight_info;
commit;
select * from height_info;
select * from weight_info;


/* 컨디셔널 insert all  */

insert all
when height > 170 then
    into height_info values(STUDNO, name, height)
when weight > 70 then
    into weight_info values(STUDNO, name, weight)
select STUDNO, name, height, weight
    from student    
    where grade >= '2';
commit;

select * from height_info;
select * from weight_info;


/* 테이블 2개 생성(prof1,prof2), 교수번호, 교수이름  */

desc professor;

create table prof1 as select NAME
from  professor;
commit;

create table prof2 as select PROFNO
from  professor;
commit;

select * from prof1;
select * from prof2;

delete from prof1;
delete from prof2;

drop table  prof1;
drop table  prof2;

/* 교수테이블에서 교수번호가  */

create table PROF1(
profno number(4),
name varchar2(10));

create table PROF2(
profno number(4),
name varchar2(10));

insert all
when profno between 9901 and 9905 then
    into prof1 values(profno, name)
when profno between 9906 and 9920 then
    into prof2 values(profno, name)
select profno, name
from professor;

select * from prof1;
select * from prof2;


/* 컨디션 퍼스트 insert */
delete from height_info;
delete from weight_info;
commit;

insert first
when height > 170 then
    into height_info values(STUDNO, name, height)
when weight > 70 then
    into weight_info values(STUDNO, name, weight)
select STUDNO, name, height, weight
    from student    
    where grade >= '2';
commit;

select * from height_info;
select * from weight_info;


/* pivoting insert */

create table sales(
    sales_no    number(4),
    week_no     number(2),
    sales_mon   number(7,2),
    sales_tue   number(7,2),
    sales_wed   number(7,2),
    sales_thu   number(7,2),
    sales_fri   number(7,2));
commit;

insert into sales values(1101, 4, 100, 150, 80, 60, 120);
insert into sales values(1102, 5, 300, 300, 230, 120, 150);

create table sales_data(
    sales_no    number(4),
    week_no     number(2),
    day_no      number(2),
    sales       number(7,2));
commit;


insert all
into sales_data values(sales_no, week_no, '1', sales_mon)
into sales_data values(sales_no, week_no, '2', sales_tue)
into sales_data values(sales_no, week_no, '3', sales_wed)
into sales_data values(sales_no, week_no, '4', sales_thu)
into sales_data values(sales_no, week_no, '5', sales_fri)
select sales_no, week_no, sales_mon, sales_tue, sales_wed, sales_thu, sales_fri
from sales;
commit;

select * from sales;
select * from sales_data;


/*데이터 수정*/

select profno, name, position
from professor
where profno = 9903;

update professor
set position = '부교수'
where profno = 9903;
commit;

update professor
set position = '부교수'
where profno = 9903;

select * from professor;
ROLLBACK;

desc professor;

UPDATE professor
SET userid = 'black'
WHERE name = '남은혁';
commit;


update student
set (grade, deptno) = (select grade, deptno
                        from student
                        where studno = 10103)
where studno = 10201;

select grade, deptno, studno
from student;


/* 성연희 교수의 직급과 동일 직급을 가진 교수들 중, 현재 급여가 410이 안되는 교수들의 급여를 12% 인상 */

desc professor;

UPDATE professor
SET sal = sal*1.12
WHERE position = (SELECT position
                  FROM professor
                  WHERE name = '성연희')
AND sal < 410;


/*데이터 삭제*/

delete
from student
where studno = 20103;

delete
from student
where deptno = (select deptno
                from department
                where dname = '컴퓨터공학과');
/*에러*/
delete *
from student
where deptno = (select deptno
                from department
                where dname = '컴퓨터공학과');



/* 사원 테이블(emp)에서 dallas에 근무하는 모든 사원 삭제 */

desc emp;
desc dept;
SELECT * FROM emp;

delete from emp
where deptno = (select deptno
                from dept
                where loc = 'DALLAS');



/* merge 사용법 */

create table professor_temp 
as select * 
from professor
where position = '교수';

update professor_temp
set  position = '명예교수'
where POSITION = '교수';

insert into professor_temp
values(9999, '김도경', 'arom21', '전임강사', 200, sysdate, 10, 101);

select * from professor;
desc professor;


/* merge 'professor' + 'professor_temp'  */

merge into professor p
using professor_temp f
    on (p.profno = f.profno)
when matched then
    update set p.position = f.position
when not matched then
    insert values(f.profno, f.name, f.userid, f.position, f.sal, f.HIREDATE, f.COMM, f.DEPTNO);

select * from professor; 


/* 시퀀스 */

create sequence s_seq
increment by 1
start with 1
maxvalue 100;

select min_value, max_value, increment_by, last_number
from user_sequences
where sequence_name = upper('s_seq');


/* 시퀀스를 이용하여 사원 데이블에 데이터 3건만 입력 */
insert into emp
values(S_SEQ.NEXTVAL, 'cathy1', 'salesman', 7698, to_date('17-12-1980', 'dd-mm-yyyy'), 800, null, 20);

insert into emp
values(S_SEQ.NEXTVAL, 'cathy1', 'salesman', 7698, to_date('17-12-1980', 'dd-mm-yyyy'), 800, null, 20);

insert into emp
values(S_SEQ.NEXTVAL, 'cathy1', 'salesman', 7698, to_date('17-12-1980', 'dd-mm-yyyy'), 800, null, 20);


insert into emp(empno, ename)
values(S_SEQ.NEXTVAL, 'test');

insert into emp(empno, ename)
values(S_SEQ.NEXTVAL, 'test1');

/* alter sequence문 */
alter sequence s_seq maxvalue 200;

/* 변경 된 값 확인  */
select min_value, max_value, increment_by, last_number
from user_sequences
where sequence_name = upper('s_seq');

drop sequence sequence;



/* 문제 */
/* 1. 관리자 번호가 7788 미만인 모든 사원에 대해 아래 질의를 작성하세요.
관리자#, 관리자별 사원 급여 합계와 총 급여의 합을 출력하세요.

MGR SUM(SAL)
---- ----------
7566 6000
7698 6550
7782 1300
    13850
 */

desc emp;

select MGR, sum(sal)
from emp
where MGR < 7788
group by rollup(mgr);
/*총계를 구할때 rollup을 사용*/
 
/* 
2. 1에 추가하여 관리자#, 관리자별 사원의 JOB과 급여의 합계, 총 급여의 합을 출력하세요.
MGR JOB SUM(SAL)
----- --------- ----------
7566 ANALYST    6000
7566            6000
7698 CLERK      950
7698 SALESMAN   5600
7698            6550
7782 CLERK      1300
7782            1300
                13850
 */

desc emp;
select MGR, sum(sal), job
from emp
where MGR < 7788
group by rollup(mgr,job);
/*총계를 구할때 rollup을 사용*/

/* 
3. CUBE 연산자를 이용하여 관리자 번호가 7788 이하인 모든 사원에 대해
관리자# 및 같은 관리자별 사원 JOB과 급여의 합, 관리자별 전체 급여, 전체 JOB별 급여의 합을 출력하세요.
MGR JOB SUM(SAL)
----- --------- ------------
                13850
CLERK           2250
ANALYST         6000
SALESMAN        5600
---------------------------
7566            6000
7566 ANALYST    6000
---------------------------
7698                    6550
7698 CLERK          950
7698 SALESMAN 5600
---------------------------
7782                     1300
7782 CLERK         1300
---------------------------
*/
desc emp;
select MGR, sum(sal), job
from emp
where MGR < 7788
group by cube(mgr,job);

/* 
4. STUDNO, NAME, USERID, GRADE 그리고 DEPTNO 열만을 포함하는 STUDENT 테이블의 구조를
기초로 STUDENT2 테이블을 생성하세요.
*/

desc STUDENT;
create table STUDENT2(
    STUDNO       NUMBER(5),
    NAME         VARCHAR2(10),
    USERID       VARCHAR2(10),
    GRADE        VARCHAR2(1),
    DEPTNO       NUMBER(4));



/* 
5. STUDNO_SEQ라는 이름의 시퀀스를 생성하세요.
5-1) 시퀀스는 30000에서 시작해야 하고 최대값은 50000, 10씩 증가하는 시퀀스를 가집니다.
5-2) 생성한 STUDNO_SEQ를 이용하여 STUDENT2 테이블에 데이터를 2개 입력하세요.
*/





/*
6. STUDENT 테이블과 STUDENT2테이블을 MERGE 시키세요.
*/




/* 4월 14일 수요일  */

/* 테이블 생성 */
create table address(
id      number(3),
name    varchar2(50),
addr    varchar2(100),
phone   varchar2(30),
email   varchar2(100));

desc address;
select * from address;
select * from tab; /* 가지고 있는 테이블 모두 보기 */

insert into address
values (1, 'hgdong','seoul','123-4567','hgdong@cenet.ad.kr'); 

create table addr_second(ID, NAME, ADDR, PHONE, E_MAIL)
as select * from address;

desc addr_second;
select * from addr_second;



/* 구조만 복사 */
create table addr_fourth
as select id, name from address /* id, name 컬럼만 만든다 */
where 1=2;

select * from addr_fourth;
desc addr_fourth;


/* employees 테이블의 구조만 복사하여 employees_temp1 테이블 만들기 */
create table employees_temp1
as select * from employees
where 1=2; /* 구조(컬럼)만 와야해서 거짓조건  */

select * from employees_temp1;
desc employees_temp1;


/* employees 테이블에서 employee_id, first_name, HIRE_DATE 칼럼과 데이터 가지고와서 employee_temp2 테이블 만들기  */

desc employees;

create table employees_temp2
as select employee_id, first_name, HIRE_DATE 
from employees; /* employee_id, first_name의 데이터만 가져서 복사해 */

select * from employees_temp2;

/* employees 모두 복사*/
create table employees_temp5
as select * from employees;


/* 테이블 구조 변경 alter  */
create table addr_third
as select id, name from address; /* id, name 컬럼+데이터까지 */

select * from addr_third;
desc addr_third;

alter table address
add (birth date); /* birth의 타입을 date 타입으로 변경하는거 */


alter table address
add(comments varchar2(200) default 'no comment'); /* comments의 타입을 varchar2(200) 타입으로 변경하고 default 'no comment' */
desc address;


/* comments 칼럼 삭제 */
alter table address
drop column comments; 
desc address;


/* 칼럼 변경 */
alter table address
modify PHONE VARCHAR2(50); /* PHONE의 데이터 타입을VARCHAR2(50)으로 변경 (원래는 VARCHAR2(30)이었는데 늘리는거, 줄이는건 안됨) */

desc address;

/* 테이블명 변경 */
rename address_second to client_address;

/* 테이블 삭제 */
drop table addr_third;
select * from tab;

/* 주석 추가 */
comment on table address
is '고객 주소록을 관리하기위한 테이블'; /*테이블 주석 */

select * from address;

comment on column address.name
is '고객이름'; /*칼럼 주석 */

select *
from user_tab_comments 
where table_name= 'ADDRESS'; /*주석확인 */

select *
from user_col_comments
where table_name= 'ADDRESS'; /*주석확인 */

comment on table address is ''; /*테이블 주석 제거*/
comment on column address.name is '';/*칼럼 주석 제거*/



/*유저 데이터 사전 뷰*/
select table_name from user_tables;

/*올 데이터 사전 뷰*/
select owner from all_tables;

/*DBA_ 데이터 사전 뷰*/
select owner, table_name from dba_tables;

/*사용자 테이블 정보 조회*/
select table_name, tablespace_name, min_extents, max_extents
from user_tables
where table_name like upper('addr%'); /*대문자 이씨..*/


/*무결성 제약조건*/

create table subject
(subno number(5)
    constraint subject_no_pk primary key
    deferrable initially deferred
    using index tablespace indx, /* tablespace indx 만들기-> cmd 에서 만듬 
                                    SQL> conn /as sysdba
                                        Connected.
                                    SQL> grant create tablespace to hr;
                                        Grant succeeded.
                                    SQL> conn hr/hr;
                                        Connected. 
                                    SQL> create tablespace indx
                                    2  datafile 'C:\oraclexe\app\oracle\oradata\XE\indx.bdf' size 100m;
                                        Tablespace created. */
    subname varchar2(20)
    constraint subject_name_nn not null,
    term varchar2(1)
    constraint subject_term_ck check (term in ('1','2')),
    type varchar2(5));

desc subject;

/*무결성 제약조건_수강 테이블 인스턴스 */
alter table student
add constraint stud_no_pk primary key(studno);

desc student;

create table sugang(
studno number(5)
    constraint sugang_stud_fk references student(studno),
subno number(5)
    constraint sugang_subno_fk references subject(subno),
regdate date,
result number(3),
    constraint sugang_pk primary key(studno, subno));

desc sugang;

/* 무결성 제약조건 조회 */
select constraint_name, constraint_type
from user_constraints
where table_name in upper('student','subject','sugang');

/* null 무결성 제약조건 추가 */
alter table student
add constraints stud_idnum_uk unique(idnum); /* idnum에 unique 속성 추가 */

alter table student
modify (name constraint stud_name_nn not null); /* name에 not null 속성 추가(not null =modify로)  */

/*아주 중요함*/
aLTER TABLE department
ADD CONSTRAINT deptno_pk PRIMARY KEY(deptno);/* <- 먼저 후라이머리를 설정해야 아래가 가능  */

alter table student add constraint stud_deptno_fk
foreign key(deptno) references/* <- 참조 */ DEPARTMENT(deptno);



alter table professor add constraints prof_pk PRIMARY KEY(profno); /* 기본키 */
alter table professor modify (name not null);/* name에 not null 설정 */

alter table professor add constraints prof_fk
foreign key(deptno) references DEPARTMENT(deptno); /*참조 무결성 제약조건*/


insert into subject values(1, 'sql', '1', '필');
insert into subject values(2, '', '2', '필수');
insert into subject values(3, 'java', '3', '선');

commit;

select * from subject;

insert into subject values(4, '데이터베이스', '1', '필');
insert into subject values(4, '데이터모델링', '2', '선');/* 얘믐 안들어감 */

commit;
select * from subject;

select  constraint_name, constraint_type, deferrable, deferred 
from user_constraints
where table_name = upper('subject');


/*확인_두고두고 쓰는거*/
select  constraint_name, constraint_type
from user_constraints
where table_name = upper('subject');


alter table subject
drop constraint subject_term_ck;


/*확인_두고두고 쓰는거*/
select  constraint_name, constraint_type
from user_constraints
where table_name = upper('subject');



/*무결성 제약조건 활성화 및 비활성화*/

/*비활성화*/
alter table sugang
disable constraint sugang_pk;

alter table sugang
disable constraint sugang_studno_fk;

/*확인_두고두고 쓰는거*/
select  constraint_name, constraint_type
from user_constraints
where table_name in upper('sugang');


/*활성화*/
alter table sugang
enable constraint sugang_pk;

alter table sugang
enable constraint sugang_studno_fk;


/*확인_두고두고 쓰는거*/
select  table_name, constraint_name, constraint_type, status
from user_constraints
where table_name in ('STUDENT', 'PROFRSSOR', 'DEPARTMENT');



/* 문제 */
/*
1. EMPNO, ENAME 그리고 DEPTNO 열만을 포함하는 EMP 테이블의 구조를 기초로EMP2 테이블을 생성하세요.
새 테이블에서 ID, LAST_NAME과 DEPT_ID로 열 이름을 지정하세요.
*/
create table EMP2
as select EMPNO ID, ENAME LAST_NAME, DEPTNO DEPT_ID from emp;

desc EMP2;
select * from EMP2;
/*
2. 1.에서 생성한 EMP2 테이블에서 LAST_NAME 필드를 10-->30으로 수정하세요.
*/
desc EMP2;

alter table EMP2
modify LAST_NAME VARCHAR2(30); /* LAST_NAME의 데이터 타입을 VARCHAR2(30)으로 변경(원래는 VARCHAR2(10)이었는데 늘리는거임, 줄이는건 안됨) 암튼 그럼. */

/*
3. 아래와 같이 EMPLOYEE 테이블을 생성하세요.

Name    Null Type
-------- ------------- ------------
EMPLOYEE_ID NUMBER(7)
LAST_NAME VARCHAR2(25)
FIRST_NAME VARCHAR2(25)
DEPT_ID NUMBER(7)
PHONE_NUMBER VARCHAR2(20)
*/

desc EMPLOYEE;
select * from EMPLOYEE;

create table EMPLOYEE (
EMPLOYEE_ID     NUMBER(7),
LAST_NAME       VARCHAR2(25),
FIRST_NAME      VARCHAR2(25),
DEPT_ID         NUMBER(7),
PHONE_NUMBER    VARCHAR2(20));

/*
4. EMPLOYEE_ID열을 사용하여 EMPLOYEE 테이블에 PRIMARY KEY 제약조건을 추가하세요.
*/
desc EMPLOYEE;
alter table EMPLOYEE add constraints EMPLOYEE_ID PRIMARY KEY(EMPLOYEE_ID); /* 후라이머리 */

/*
5. EMPLOYEE 테이블을 수정하십시오. NUMBER(7)로 데이터 열의 SALARY를 추가합니다.
*/

desc EMPLOYEE;
select * from EMPLOYEE;

alter table EMPLOYEE
add (SALARY NUMBER(7));

/*
6. 5.에서 생성한 테이블에 아래와 같이 3건의 데이터를 입력하세요.

EMPLOYEE_ID LAST_NAME FIRST_NAME DEPT_ID PHONE_NUMBER SALARY
------------------------------------------------------------------------------------------------------------------------------
1 Biri Ben 10 123-4566 1100
2 Dancs Betty 20 123-7890 1860
3 Newman Chad 20 123-8888 2200
*/

insert into employee
values (1, 'Biri' ,'Ben', 10, '123-4566', 1100);
insert into employee
values (2, 'Dancs', 'Betty', 20, '123-7890', 1860);
insert into employee
values (3, 'Newman', 'Chad', 20, '123-8888', 2200);

desc EMPLOYEE;
select * from EMPLOYEE;

/*
7. 위에서 생성한 EMPLOYEE 테이블의 DEPTNO는 DEPT테이블의 DEPTNO 컬럼을 참조하게 제약 조건을 설정해 보세요.
*/




/*
8. INSERT INTO employee(employee_id, first_name, deptno)
VALUES(4, 'cindy',50);

데이터를 입력하려고 하였으나 실패하였다. 이유는?
*/


/*
9. 생성한 EMPLOYEE 테이블을 삭제해 보세요.
*/

drop table employee;




/* 4월 15일 목요일  */


/* 인덱스 생성 */

drop index idx_dept_name;
create unique index idx_dept_name /*unique 인덱스*/
on department(dname);

create index idx_stud_birthdate
on student(birthdate);


/* 결합 인덱스 */
create index idx_stud_dno_grade
on student(deptno,grade);

/* 내림(desc),오름(asc) 차순 인덱스(함수 사용) */
create index idx_stud_no_name
on student(deptno desc, name asc);


/* 함수기반 인덱스 */
create index uppercase_idx on emp (upper(ename));
select * from emp where upper(ename) = 'KING';

create index idx_standard_weight on student((height-100)*0.9);

/* 실행 경로 확인 */


set autotrace on;
set autotrace off;

/* 디벨로퍼 = F10 */
select deptno, dname
    from department
    where dname = '정보미디어학부';
    

select name, birthdate
from student
where birthdate = '79/04/02';

drop index idx_stud_no_name;


/* 인덱스 재구성 */
alter index stud_no_pk rebuild;

/* 사원 테이블의 deptno와 ename로 결합 인덱스 생성 */

create index fidx_emp_no_ename
on emp(deptno desc,ename asc);

set autotrace on;
drop index fidx_emp_no_ename;


/* 뷰 */

desc professor;

create view view_professor as select * from professor;
desc view_professor;
select * from pview_professor;

/* 단순뷰 */
create view v_stud_dept101 as
    select studno, name, deptno
    from student
    where deptno = 101;

select * from v_stud_dept101;

/*복합뷰*/

create view v_stud_dept102
as
select s.studno, s.name, s.grade, d.dname
from student s, department d
where s.deptno = d.deptno
and d.deptno = 102;

select * from v_stud_dept102;


create view v_prof_avg_sal
as select deptno, sum(sal) sum_sal, avg(sal) avg_sal
from professor
group by deptno;
select * from v_prof_avg_sal;


desc emp;
desc dept;


CREATE VIEW emp_dept_view
AS
SELECT e.empno as 사번, e.ename as 이름, e.sal as 급여, e.deptno as 부서번호, d.dname as 부서명, d.loc as 지역명
FROM emp e, dept d
WHERE e.deptno = d.deptno;

/* 부서별 최대 급여와 최소급여 뷰 */
CREATE VIEW sal_view
as
SELECT deptno, max(sal) 최대, min(sal) 최소
from emp
group by deptno;

SELECT * from sal_view;

create view sal_view
as select d.dname, max(e.sal) max_sal, min(e.sal) min_sal
from emp e, dept d
where e.deptno = d.deptno
group by dname;


desc emp;

select dname, avg_height, avg_weight
from (select deptno, avg(height) avg_height, avg(weight) avg_weight 
        from student
        group by deptno) s, department d       
where s.deptno = d.deptno;

/* 부서번호와 부서별 최대급여, 부서명 출력 */
desc emp;
desc department;

select e.DEPTNO, d.DNAME,  e.max_sal
from (select deptno, max(sal) max_sal
        from emp
        group by deptno) e, dept d      
        where e.deptno = d.deptno;
/* 연구 해결 다시 */

SELECT e.deptno, d.dname, e.sal
  FROM (SELECT deptno, MAX(sal) sal
        FROM emp
        GROUP BY deptno) e, dept d
        WHERE e.deptno = d.deptno;


select e.deptno, d.dname, max_sal
from  (select  deptno, max(sal) MAX_SAL
            from emp
            group by emp.DEPTNO)  e, dept d
where  e.deptno = d.deptno;



/* 각 학년 평균 키를 구하고 평균 키보다 큰 학생의 학년, 이름, 키, 각 학년의 평균키 출력 */
/* 다시 해보기 */
SELECT   s.grade , s.name , s.height , a.avg_height
FROM (SELECT grade , ROUND(AVG(height)) avg_height
      FROM student
      GROUP BY grade) a , student s
WHERE a.grade = s.grade
AND s.height > a.avg_height
ORDER BY 1 ;


/* 뷰의 변경 */
create or replace view v_stud_dept102
as select studno, name, deptno, grade
from student
where deptno =102;

select * from v_stud_dept102;

drop view v_stud_dept101;
drop view v_stud_dept102;

/* 시스템 권한 조회 */
select * from session_privs; 

create user tiger identified by tiger123
default tablespace users
temporary tablespace temp;

/* 업데이트 할 수 있는 권한 */
update hr.student
set height = 180, weight = 80
where deptno = 102;

grant update(height, weight) on student to tiger;

update hr.student
set height = 180, weight = 80
where deptno = 102;


/* test/test** 유저 생성  */
create user test identified by "test**"
default tablespace users
temporary tablespace temp;

/* 권한 부여 */
grant connect, resource to test;

/*
SQL> show user
USER is "SYSTEM"
SQL> create user test identified by "test**"
  2  default tablespace users
  3  temporary tablespace temp;

User created.

SQL> grant connect, resource to test;

Grant succeeded.

SQL>  grant select on emp to test;
 grant select on emp to test
                 *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> grant select on emp to test;
grant select on emp to test
                *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> conn hr/hr
Connected.
SQL> grant select on emp to test;

Grant succeeded.

SQL>

*/


/*
1.
1-1)아래와 같이 인덱스를 생성하고, 질의문을 작성하여 실행계획을 확인하였더니 인덱스를 사용하지 못하고 있다.
아래 질의문으로 SAL 컬럼이 인덱스를 사용하도록 수정해 보세요.
SQL> CREATE INDEX idx_prof_sal ON professor(sal);
SQL> SET AUTOT ON
SQL> SELECT * FROM professor
WHERE NVL(sal, 0) < 400;

-------------------------------------------------------------------------------
| Id | Operation | Name | Rows | Bytes | Cost (%CPU)| Time |
-------------------------------------------------------------------------------
| 0 | SELECT STATEMENT | | 1 | 43 | 3 (0)| 00:00:01 |
|* 1 | TABLE ACCESS FULL| PROFESSOR | 1 | 43 | 3 (0)| 00:00:01 |
-------------------------------------------------------------------------------
*/
set autotrace on;
set autotrace off;
drop INDEX idx_prof_sal;

CREATE INDEX idx_prof_sal 
ON professor(nvl(sal,0));

set autotrace on;

SELECT * FROM professor
where 1=1
and nvl(sal,0)<400;

/*
1-2) fidx_prof_sal 인덱스를 재구성하여라.
*/
alter index idx_prof_sal rebuild;

/*
1-3) fidx_prof_sal 인덱스를 삭제하여라.
*/
drop INDEX idx_prof_sal;

/*
2. 20번 부서에 근무하는 모든 사원에 대해 사원번호, 사원명, 부서번호, 부서이름을
포함하는 DEPT20뷰를 생성하세요.(결과가 아래와 같이 나오도록)

EMPNO ENAME DEPTNO DNAME
------- ---------- ---------- ------------
7369 SMITH 20 RESEARCH
7566 JONES 20 RESEARCH
7788 SCOTT 20 RESEARCH
7876 ADAMS 20 RESEARCH
7902 FORD 20 RESEARCH
*/

desc emp;
desc dept;

create view DEPT20
as
select  e.EMPNO, e.ENAME, 
        d.DEPTNO, d.DNAME 
from emp e, dept d
where e.DEPTNO = d.DEPTNO
and d.DEPTNO = 101;

select * from DEPT20;



/*
3.학과별 최대키를 구하고 최대키를 가진 학생의
학과명, 최대키, 이름, 키를 출력하세요.(결과는 아래~)


학과명 학과 최대키 이름 키
---------------------------------------------------------
멀티미디어학과 177 오유석 177
컴퓨터공학과 186 서재진 186
전자공학과 184 조명훈 184
*/


/*
4. ojava/ojava123# 이라는 유저 생성후 디폴트 테이블스페이스는
users, temporary 테이블 스페이스는 temp을 지정하세요.
*/

/*
5. ojava가 hr의 professor 테이블을 select, insert 할 수 있도록
권한을 부여해 보세요.
*/

/*
6. ojava로 접속하셔서 5.가 맞게 실행되는지 확인하세요.
*/

/* 4월 16일 금요일 */


select * from emp;

/*탑-다운*/
select deptno, dname, college
from department
start with deptno = 10
connect by prior deptno = COLLEGE;

/* 바텀-업 */
select deptno, dname, college
from department
start with deptno = 102
connect by prior COLLEGE = deptno;

/* 레벨 구분, lpad <- 외쪽 공백, 레벨에 따른 공백 넣기 */
select lpad(' ',(level-1)*2) || dname 조직도
from department
start with dname = '공과대학'
connect by prior deptno = COLLEGE;



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


SELECT deptno, college, dname, loc
from department
START WITH college is null
connect by prior deptno = college
and dname != '메카트로닉스학부'; /* 메카트로닉스학부 제외한 탑-다운 형식  */
 


desc emp;

/* 계층적 질문, 사원테이블 급여 1000 이상 관이자번로 7698 의 사원 관리자, 사번, 사원명  */

SELECT mgr as "관리자 사번", empno, ename, sal
FROM emp 
WHERE sal >= 1000
AND mgr = 7698
CONNECT BY PRIOR mgr = empno;



/* test/test** 유저 생성  */
create user test identified by "test**"
default tablespace users
temporary tablespace temp;












































