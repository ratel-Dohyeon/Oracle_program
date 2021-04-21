SELECT * FROM tab;
SELECT * FROM emp; /* ��Ʈ�� + ���� */
SELECT * FROM professor;

desc student;
SELECT * FROM student;

desc PROFESSOR;
SELECT * FROM PROFESSOR;
SELECT * FROM tab; /* ���̺� ��ü���� */
SELECT * FROM SALGRADE;

SELECT * FROM tab;
SELECT * FROM PROFESSOR;
DESC PROFESSOR;

DESC table_name;
DESC STUDENT

DESC PROFESSOR; /* ���� ������ Ÿ��_���̺��� ���� */
SELECT * FROM SALGRADE;  /*���� �޿�*/

DESC DEPARTMENT; /*���̺��� ���� */

SELECT * FROM DEPARTMENT; /* ��� ����  "*" <--- ��� �� ��������� ��  */
SELECT DEPTNO, DNAME, COLLEGE, LOC from DEPARTMENT; /* ��� ���� */

SELECT DNAME, DEPTNO from DEPARTMENT; /* 'DEPARTMENT'����  DEPTNO, DNAME�� ������ �Ͷ�*/


DESC PROFESSOR; /* ���� ���̺� Ȯ�� */
SELECT PROFNO, NAME, POSITION from PROFESSOR; /* 'PROFESSOR'����  PROFNO, NAME, POSITION �� ������ �Ͷ�*/ 


DESC student;
SELECT * FROM student; /* �л��� ���� ������ */

SELECT DISTINCT deptno from student; /* �л� ���̺��� �ߺ��Ǵ� �а���ȣ �����ϰ� ���  "DISTINCT" <- �ߺ� ���� �Լ� */

SELECT DISTINCT deptno from PROFESSOR; /* ���� ���̺��� �ߺ��Ǵ� �а���ȣ �����ϰ� ���  "DISTINCT" <- �ߺ� ���� �Լ� */

SELECT DISTINCT POSITION from PROFESSOR; /* ���� ���̺��� �ߺ��Ǵ� ���� �����ϰ� ���  "DISTINCT" <- �ߺ� ���� �Լ� */

SELECT DISTINCT deptno, grade from student;

SELECT dname dept_name, deptno AS DN from DEPARTMENT; /* Į�� �̸�(����) ���� */
/*            �����Ұ�  ��������   �ٲܰ�  */
SELECT dname �а��̸�, deptno AS �а���ȣ from DEPARTMENT;  /* Į�� �̸�(����) ���� */
/*           �����Ұ�  ��������   �ٲܰ�  */

SELECT dname "department name", deptno "�μ� ��ȣ#" from DEPARTMENT;  /* ���� = "" �̰ɷ� ����*/
/*                �����Ұ�      ��������   �����Ұ�  */
SELECT dname "�а� �̸�", deptno AS "�а� ��ȣ" from DEPARTMENT; /* ���� = "" �̰ɷ� ����*/
/*     ���̸�  �����Ұ�   ��������    �����Ұ�  */

SELECT studno || ' ' || name "student" FROM student; /* �л���ȣ�� �̸��� ��ĭ ��� "student"�� �־ ��� '||'<---��� ���� ������*/
/*     �л���ȣ  (���)   �̸�   */

desc emp;
SELECT * FROM emp; 
SELECT ename || ',' || job  "EMPLOYEE and Title" from EMP;

SELECT name, weight, weight*2.2 AS weight_pound FROM student;


/* 1. DEPARTMENT ���̺� ���� Ȯ�� */
desc DEPARTMENT
/* DNAME ���� =  VARCHAR2(30) */

/* 2. 1. �μ�(department) ���̺��� ������ Ȯ���ϼ���. (dname�� ������?)*/
desc DEPARTMENT /* DNAME ���� =  VARCHAR2(30) */

/*2. ���� ���̺��� �̸�, ����, �޿�, �а� ��ȣ�� ����ϼ���.*/
SELECT NAME, POSITION, SAL, DEPTNO  FROM PROFESSOR;
/*     �̸�     ����     �޿�  �а���ȣ */

/*3. �л� ���̺��� �й�, �̸�, userid�� ����ϼ���.*/
SELECT * from student;
SELECT studno, name, userid from student;


/*4. ���� ���̺��� ���� ��ȣ, �̸�, ����, �μ� ��ȣ�� ����ϼ���.(����� �Ʒ��� ���� ��������)
���� No �̸� ���� �а� ��ȣ
---------- -------------------- ---------------------------------------
9907 ������ ���Ӱ��� 101
9908 ������ �α��� 202
*/
SELECT * FROM PROFESSOR;
desc PROFESSOR;

SELECT PROFNO "���� NO", NAME "�̸�", POSITION "����", DEPTNO "�а� ��ȣ" from PROFESSOR;

/*5. ��� ���̺��� �ߺ����� �ʰ� ������ ����ϼ���.(����� �Ʒ��� ���� ��������)
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

/*6. ��� ���̺��� ��� ��ȣ, �̸�, ����, �޿� �׸��� 13% ������ �޿��� �̸�, ���������� ����ϼ���.
������ �޿��� �� ���̺��� New Sal�Դϴ�.(����� �Ʒ��� ���� ��������)

EMPNO ENAME SAL New Sal
---------- -------------------- ---------- ----------
7369 SMITH 800 904
7499 ALLEN 1600 1808
7521 WARD 1250 1413
7566 JONES 2975 3362
7654 MARTIN 1250 1413
7698 BLAKE 2850 3221
(����)
*/
desc emp;
SELECT * FROM emp;
SELECT EMPNO "�����ȣ", ENAME "�̸�", JOB "����", SAL "�޿�", SAL*1.13 "New Sal" FROM emp;

/*7. 6�� �߰��Ͽ� ���ο� �޿�(New Sal)���� ������ �޿�(SAL)�� ���� ���� �߰��ϼ���.
�߰��� �� ���̺��� Increase�Դϴ�.(����� �Ʒ��� ���� ��������)

EMPNO ENAME SAL New Sal Increase
---------- -------------------- ---------- ---------- ----------
7369 SMITH 800 904 104
7499 ALLEN 1600 1808 208
7521 WARD 1250 1413 163
7566 JONES 2975 3362 387
7654 MARTIN 1250 1413 163
7698 BLAKE 2850 3221 371
(����) */

desc emp;
SELECT * FROM emp;
SELECT EMPNO "�����ȣ", ENAME "�̸�", SAL "�޿�", SAL*1.13 "New Sal", SAL*1.13-SAL "Increase" FROM emp;


/* 2021�� 4�� 5�� ������ */

/* 1. ���� ���̺� ���� ���*/
SELECT * FROM PROFESSOR;
desc PROFESSOR;

/* 2. �������̺� ������, �޿�, �а���ȣ ���*/
desc PROFESSOR;
SELECT NAME, SAL, DEPTNO 
FROM PROFESSOR;

/* 3. �л� ���̺��� �л��̸�, �а���ȣ, ���� ���(���� ����)*/
desc student;
SELECT NAME "�л� �̸�", DEPTNO �а���ȣ, BIRTHDATE ����  /* ���Ⱑ ������쿡�� "" <- ��ɷ� ����. �ƴѰ�� �׳� �ڿ� ������ */
FROM student;

/* 4. ���� ���̺��� �̸�, ��ȣ, ����(*12)*/
desc PROFESSOR;
SELECT NAME "������ �̸�", PROFNO ��ȣ,  SAL*12 ����
FROM PROFESSOR;

SELECT * FROM DEPARTMENT;

set auto commit on

insert into department values (301, '��������а�', 200, '5ȣ��');

SELECT * FROM DEPARTMENT;

create table ex_type (c char(10), v varchar2(10)); /* c��, v�� */
insert into ex_type values('sql', 'sql');
SELECT * FROM ex_type
where c = 'sql';

SELECT * FROM ex_type
where c=v; /* c��, v���� Ÿ���� �޶� ��ã�� */

SELECT rowid, studno, name, deptno  FROM student
where rowid = 'AAAE5sAAEAAAAHPAAK'; /* �������� ������ �� */

SELECT * FROM student;

/* ��� ���̺��� rowid, ���, �̸� ��� */

desc emp;
SELECT * from emp;
SELECT rowid, ename, empno from emp; 

/*�л� ���̺��� 1�г� �̸�, �й�, �а���ȣ �����Ͷ� */


SELECT studno, name, deptno 
from student
where grade = '1'; /* �׷��̵��� Ÿ���� varchar2 �̹Ƿ� '' <- �� ���̴°��� */

SELECT studno, name, deptno 
from student
where grade = 1; /* ��� Ʋ������ */

desc student;

/* ��� ���̺��� smith ���, �̸�, �޿� ���*/

desc emp;

SELECT EMPNO, ENAME, SAL ,deptno
from emp
where ENAME = 'SMITH';

SELECT EMPNO, ENAME, SAL ,deptno
from emp
where deptno = 10;


/* �ڹ̰游 ã�ƿ��� */
desc student;
SELECT STUDNO, NAME, BIRTHDATE
from student
where NAME = '�ڹ̰�';

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
where NAME like '��%';

desc student;
SELECT userid, NAME, GRADE, DEPTNO, PROFNO
from student
where NAME like '%��'
and DEPTNO =101;

desc student;
SELECT  NAME, GRADE, DEPTNO
from student
where NAME like '��_��';


/* �л����̺� ���л� �̸�, �г�, �а���ȣ, �ֹι�ȣ ���*/
desc student;
SELECT * from student;

SELECT  NAME, GRADE, DEPTNO, IDNUM, BIRTHDATE
from student
where IDNUM like '______1%'; /* n��° = _ <- ����ٷ� ǥ��*/

insert into student(studno, name)
values (33333,'Ȳ��_��ȣ');

desc student;

SELECT *
from student;


SELECT  NAME
from student
where name like 'Ȳ��\_%' escape '\';


/* 1. 2950 �̻� �޴� ����� �̸�, �޿� ��� (emp) */
desc emp;

SELECT  ENAME, SAL
from emp
where SAL >= 2950;


/* 2. �޿��� 1250~2800�� �ް� �μ� ��ȣ�� 20�̳� 30�� ���ϴ� ����� �̸��� �޿� ��� 
���� ���̺��� Employee�� Monthly Salary��*/

desc emp;

SELECT ENAME "Employee", SAL "Monthly Salary"
from emp
where sal between 1250 and 2800
and DEPTNO in (20, 30);


/* 3. �̸��� L�� ���ڰ� �ְ� �μ��� 30 �̰ų� �Ǵ� �����ڰ� 7782�� ��� ����� �̸� ���*/

desc emp;

SELECT ENAME "Employee"
from emp
where ENAME like '%L%L%'
and DEPTNO = 30
or mgr = 7782;


/* 4. �̸��� J,A �Ǵ� M���� �����ϴ� ��� ��� ���  */

desc emp;

SELECT ENAME "Employee"
from emp
where ENAME like '%J%A%'
or ENAME like 'M%';

/* 5. ������̺��� ���ʽ��� �޿����� 15% �̻��̰ų� ������ SALESMAN�� ����� ���ؼ� �̸�, ����, �޿� �׸��� ���ʽ� ���  */

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
where NAME like '%��'
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


/* ���̺� ����*/
create table stud_heavy
as select * 
from student
where weight >= 70 and grade = '1';

create table stud_101
as select * 
from student
where DEPTNO = 101 and grade = '1';

/* ���̺� Ȯ��*/
select * from stud_heavy;
select * from stud_101;

/* ��ġ�� */
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
select STUDNO �й�, name �̸�
from STUD_HEAVY

minus 

select STUDNO, name
from STUD_101;



select STUDNO �й�, name �̸�
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
where POSITION = '���Ӱ���';

select name, grade, tel
from student
order by name; /* ���� ������ ����*/

select name, grade, tel
from student
where weight > 60
and grade = 1
order by name; /* ���� ������ ���� -> �� ���� �´�*/

select name, grade, tel
from student
order by grade desc; /* �� ���� �´�*/


desc emp;
select EMPNO, ENAME, SAL, COMM 
from emp
where comm is not null
order by SAL desc; /* �������� */


desc emp;
select ENAME, JOB, DEPTNO, SAL
from emp
order by DEPTNO, SAL desc; /* �������� */


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
where name = '�迵��';


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
and upper(ENAME) = 'smith'; /* �ҹ��ڷ� ��ȯ�Ͽ� ã��*/


desc DEPARTMENT;
/*���ڿ��� ���� ��ȯ �Լ�*/
select DNAME, length(DNAME), lengthb(DNAME) 
from DEPARTMENT;


/* ���� ĳ���ͼ� Ȯ��*/
select *
from nls_database_parameters
where PARAMETER = 'NLS_CHARACTERSET';


desc emp;

select  initcap(ename) "Name", length(ename) "Length"
from emp
where   ename like 'A%' 
or      ename like 'T%'
or      ename like 'M%';

select concat(concat(name,'�� ��å�� '), position)
from professor;


/* idnum ���� 1~6��° ���� �������� 3��° ���� 2���� ������*/
select name, idnum, SUBSTR(idnum, 1, 6) birth_date,
                    SUBSTR(idnum, 3, 2) birth_mon
from student
where grade = '1';


/* ���л��� ã�ƶ�*/
select name, idnum, SUBSTR(idnum, 1, 6) birth_date,
                    SUBSTR(idnum, 3, 2) birth_mon
from student
where grade = '1'
and SUBSTR(idnum, 7, 1)=1; /* 7��°���� 1���� ������ ���µ� �װ��� '1' �ΰ͸� �����Ͷ�*/


select initcap(ename) "Name", length(ename) "Length"
from emp
where SUBSTR(ENAME, 1, 1) in ('A','T','M');


select 33*44 from dual; /*�Ͻ����� ������� ���Ҷ� -> dual*/ 

select dname, instr(dname, '��') /* ���� ���°�� �ִ��� ã�ƶ� */
from department;


select  position, lpad(position, 10, '*') lpad_position, /* 10����Ʈ�� ��� ���ʿ� "*" �� ä���� */
        userid, lpad(userid, 12, '+')lpad_userid  /* 12����Ʈ�� ��� �����ʿ� "+" �� ä���� */
        from professor;



select ltrim('xyyyyyxxxxXyLAST WORD','xy')
from dual;

select rtrim('TURNERxXyxyxxxyyyxyxyxxyxy','xy')
from dual;


select dname, rtrim(dname, '��') /* ���������� �����ؼ� '��'�� ���� */
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
from dual; /*�Ͻ����� ������� ���Ҷ� -> dual*/ 


select name, hiredate, hiredate+30, hiredate+60
from professor
where profno = 9908;

select sysdate 
from dual;


select  sysdate-1 ����, sysdate ����, sysdate+1 ����
from dual;

desc emp;

select EMPNO, ename, round(sysdate-HIREDATE) �ٹ��ϼ�
from emp
order by �ٹ��ϼ� desc, ename;


select profno, HIREDATE,
        round((months_between(sysdate, HIREDATE))) tenure,
        add_months(sysdate, 6) review
        from professor
        where months_between(sysdate, HIREDATE) < 300;


/* 1. ��� ���̺��� �̸��� A�� �����ϰ� Ŀ�̼��� ���� �ʴ�
����� ��� ��ȣ, �̸�, �޿�, Ŀ�̼��� ����ϼ���.
(����� �Ʒ��� ���� ��������)

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


/*2.������ 'manager'�� ����� �˻��Ϸ��� �Ʒ��� ���� ���ǹ��� �ۼ��Ͽ�����,
'���õ� ���ڵ尡 �����ϴ�.' ��� ���´�.
������ �����ϰ� ������ 'manager'�� ����� �˻��ϵ��� ���ǹ��� ������ ������.
SELECT empno, ename, job
FROM emp
WHERE job='manager';

���� : 'manager' <- �갡 �빮�ڷ� �Ǿ�����
*/
 
desc emp;
SELECT job from emp; 
SELECT empno, ename, job
from emp
where lower(job) = 'manager'; /* �ҹ��ڷ� ��ȯ�ؼ� manager�� ã�ƶ�*/

/*3. ��� ���̺��� 2���� �Ի��� ����� ����� ������.(substr ���)*/
desc emp;
SELECT HIREDATE from emp; 
SELECT ename, HIREDATE, substr(HIREDATE, 4, 2) /* 4��°���� 2�� ������*/
from emp
where substr(HIREDATE, 4, 2) = 02; /* 4��°���� 2�� �������鼭 02�� ������ */


/* 4.����(job)�� MANAGER�̰ų� SALESMAN�̸� �޿��� $1500, $3000 �Ǵ� 5000�� �ƴ�
��� ����� ���ؼ� �̸�, ����, �׸��� �޿��� ����ϼ���.(����� �Ʒ��� ���� ��������)

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


/* 4�� 9�� �ݿ� */
select sysdate, last_day(sysdate), next_day(sysdate, 1)
from dual;

select sysdate, last_day(sysdate), next_day(sysdate, '��')
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
                where name = '������';


alter SESSION set nls_language = american; /* ��� ���� �ٲٱ�*/ 
alter SESSION set nls_language = korean; /* ��� ���� �ٲٱ�*/

select name, grade, to_char(birthdate, 'Day Month dd, yyyy') birthdate
                from student
                where deptno = 102;

select name,    to_char(hiredate, 'Month dd, yyyy hh24:mi:ss pm') hiredate
                from professor
                where deptno = 101;


desc emp;
select Ename, HIREDATE, to_char(hiredate, 'YY/MON/DD DY') �Ի���
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
 where HIREDATE = to_date('6�� 01, 01', 'month dd, yy');

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
        sal+nvl(sal+comm, sal) �����ޱݾ�
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
    decode(DEPTNO, 101,'�İ�', 102,'�ֹ�', 201,'����', '���') dname /* DEPTNO���� 101 �̸� '�İ�' ����ض� dname��*/
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

/* �μ��� ������ ��ձ޿� �� ���� */
select DEPTNO,JOB, avg(sal)/* <-- ���� ��� �޿� */
from emp
GROUP BY deptno, JOB /* �ΰ� ���� */
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
group by rollup(DEPTNO); /* �Ұ� */


select DEPTNO, position, count(*)
from professor
group by rollup(DEPTNO, position); /* DEPTNO, position�� �Ұ� */

select DEPTNO, position, count(*)
from professor
group by cube(DEPTNO, position); /* DEPTNO, position�� �Ѱ� */



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

/* ��, �Ʒ��� �ڵ� ����� ���� */

select DEPTNO, grade, to_char(birthdate,'yyyy') birthdate, count(*)
from student
group by grouping sets((DEPTNO, grade), (DEPTNO, to_char(birthdate,'yyyy')));


/* 1. ��� ��� �ִ�, ���� �޿�, �޿� �հ� ��ձ޿� ��� ���̺� =�ƽø�, �̴Ͼ�, ��, �������� �׸��� �Ҽ��� �ݿø� */
desc emp;
select max(sal) �ø���, min(sal) �ϸ���, sum(sal) �հ�, round(avg(sal)) �����
from EMP;


/* 2. 1980, 81, 82, 87�⿡ �Ի��� ��� ��ü���� ������ ����� ��� */
desc emp;
select count(*) total,
count(case when substr(hiredate,1,2)=80 then 1 else null end) "1980", /* then ������ Ʈ���� ���, 1�� ��ȯ�ϰ� �ƴϸ� null�� ��ȯ�ض�?*/
count(case when substr(hiredate,1,2)=81 then 1 else null end) "1981",
count(case when substr(hiredate,1,2)=82 then 1 else null end) "1982",
count(case when substr(hiredate,1,2)=87 then 1 else null end) "1987"
from emp;


/* �� ������ ���� ������ ���� �Ѿ��� president�� ���ܽ�Ű�� ���� �Ѿ׺��� ����Ʈ ����*/

desc emp;
select job , sum(sal) ����
from emp
where job!= 'PRESIDENT'
group by job
order by 2;

/*deoptno��, �μ��� ��� �޿��� �����ϼ���.*/

select deptno, job, round(avg(sal),1) AVG_SAL, count(*) cntemp
from emp
group by cube(deptno,job)
order by 1;



/*4�� 12�� ������_oracle sql */
/*    */
/* order by = ���� */

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
/*  count �׷쿡�� 4 �̻��ΰ͸� ���   */


/* ������̺��� 1000 �̻��� �޿��� �޴� ����� ���� �μ��� ��� �޿��� ���� �� �μ��� ��� �޿��� 2000 �̻��� �μ���ȣ�� �μ��� ��ձ޿�   */

desc emp;
select DEPTNO, round(avg(sal)) avg_sal
from emp
where sal >= 1000
group by deptno /* deptno �׷��� */
having avg(sal) >= 2000
order by avg_sal desc;

/* having = �׷��� ���� 
where = ��ü�� ����, �׷��Լ� ����.*/

select max(avg(weight)) max_weight /* �������� ����� ���ϰ� �ִ밪�� ������ */
    from student
    group by deptno;

/* where���� �׷��Լ�(count(*)) ����Ͽ� ���� �߻� */
select deptno, max(count(studno)) max_cnt
from student
where count(*) = 5
group by deptno;

select deptno, max(count(studno)) max_cnt
from student
group by deptno
having count(*) >= 5;
/* �ذ��غ��� */


/* ���� �Լ�  */
select  student.studno, student.name, student.WEIGHT,
        student.deptno, department.dname
from student, department
where student.deptno = department.deptno;


/* ���� �Լ� from(��ó)���� ���� ����(30�� ����), �ش� SQL������ ���� */
select  s.studno, s.name, s.WEIGHT,
        s.deptno, d.dname
from student s, department d
where s.deptno = d.deptno;

select  s.studno, s.name, s.WEIGHT,
        s.deptno, d.dname
from student s, department d
where s.deptno = d.deptno
and s.name ='������';


desc emp;
desc department;
select  e.EMPNO, e.ename, e.sal,
        d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno
and lower(e.ename) = 'scott'; /* �ҹ��ڷ� �ٲ㼭 ��ı�� ã�ڴ�*/




/* �л��̸�, �а���ȣ, ����������ȣ, �������� �̸� ���*/
desc student;
desc professor;

select  s.name sname, s.PROFNO, s.DEPTNO,
        p.name pname, p.PROFNO, p.DEPTNO
from student s, professor p
where s.PROFNO = p.PROFNO; /* ������ Į���� �������� ������Ͷ� (������ Ű�� ����Ǵ�)*/


/* �л��̸�, ������ȣ, �����̸�, �а���ȣ �а��̸� ���*/

desc student;
desc professor;
desc department;

select  s.name sname, s.PROFNO, s.DEPTNO,
        p.name pname, p.PROFNO, p.DEPTNO,
        d.DEPTNO, d.DNAME
from student s, professor p, department d
where s.PROFNO = p.PROFNO /* ������ Į���� �������� ������Ͷ� (������ Ű�� ����Ǵ�)*/
and  s.deptno = d.deptno
and s.name = '������';



desc student;

select s.STUDNO, s.name, d.DNAME, d.LOC
from student s, department d
where s.deptno = d.deptno
and s.WEIGHT >= 80
and d.dname = '��ǻ�Ͱ��а�';


/*īƼ�� ��(ũ�ν� ����) where�� ����� ������ ���� ����*/
select s.STUDNO, s.name, s.deptno, d.deptno, dname
from student s, department d;

select STUDNO, name, deptno, loc
from student cross join department;

/* =(EQUI)���� <- where�� ���°� */
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
        where s.grade = '4'; /* 4�г⸸ ������ ��  */
        
/* �� �ΰ��� ����� ���� */
select s.STUDNO, s.name, deptno, dname
from student s join department d
            using(deptno);

/* inner join */
select s.STUDNO, s.name, s.deptno, d.deptno, dname, d.loc
from student s inner join department d
on s.deptno = d.deptno
where name like '��%';

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


/* �л����̺�� �������̺��� �����Ͽ� �л� �̸�, �г�, �������� �̸� ���, (+) <-- outer join = null ���� ���*/
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


/*left outer join, ���� ����   */
select  s.name sname, s.grade, 
        p.NAME pname, p.position
from  student s left outer join professor p
                            on s.PROFNO = p.PROFNO;

/*full outer join, ���� ����   */
select  s.name sname, s.grade, 
        p.NAME pname, p.position
from  student s full outer join professor p
                            on s.PROFNO = p.PROFNO;


/*�μ��� ���� ������ ��� �����ְ�, �μ���ȣ�� 20�� ����� �����ȣ, �̸�, �޿� ���*/
/*���� ���� �ذ� */
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
select DEPT.DNAME || '�� �Ҽ��� '|| org.dname
        from DEPARTMENT dept join DEPARTMENT org
        on dept.college = org.deptno;
        
        
/*��������*/
select name, position
from professor 
where POSITION = (select position
                    from professor
                    where name = '������' ); /*�������� ���� ������ ������*/

select studno, name, grade, userid
from student
where grade = (select grade
                from student
                where userid = 'jun123'); /*userid�� jun123�� ����� �г�� ���� �г��� �ҷ�����*/

/*������ �μ��� �ٹ��ϴ� ����� ���, �̸�, �޿� ���*/
/*���� ���� �ذ� */
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

/* �μ��� ������� �ִ��� �μ���ȣ�� ������� ��� */
/*���� ���� �ذ� */
desc emp;
desc department;

select deptno, COUNT(deptno) as cnt
from emp
group by deptno
having COUNT(deptno) = ( select max(count(deptno))
                        from emp
                         group by deptno );
                         
                         
/* ������ �������� */

select name, grade, deptno
    from student
    where deptno in (select deptno
                        from department
                        where college = 100);


/* 1. ��� ���̺��� �ִ� �޿��� �ּ� �޿� ������ ���̸� ����ϴ� ���Ǹ� �ۼ��ϼ���.
�����̺�(�̸�)�� DIFFERENCE�Դϴ�. */

desc emp;

select max(sal), min(sal), max(sal)-min(sal) difference
from emp;

                        
/*
* 2~3���� ���̺��� employees, departments, locations �̿��Ͻñ� �ٶ��ϴ�.
==> �ð��� �ǽø� inner join ��
 
2. Shipping�μ��� �ٹ��ϴ� ����� ���� last_name, job_id, �μ���ȣ,
�μ��̸��� last_name ������ ����ϼ���.
(�Ʒ��� ���� ����� ��������-45��)

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

 

/* 3. south san francisco���� �ٹ��ϴ� ��� ����� ���� last_name, job,
�μ���ȣ, �μ��̸�, �μ���ġ(city)�� ����ϼ���. (�Ʒ��� ���� ����� ��������-45��)

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



/*4�� 13�� ȭ����  */

/* any ������ */
/* 4�г� �� Ű�� ���� ���� �л����� Ű�� ū �л��� �й�, �̸�, Ű ��� */
select studno, name, height
from student
where height > any(select height
                    from student
                    where grade = '4');
                                  
/* 4�г� �� Ű�� ���� ū �л����� Ű�� ū �л��� �й�, �̸�, Ű ��� */
select studno, name, height
from student
where height > all(select height
                    from student
                    where grade = '4');

/* exists ������ */
/* �������� �޴� ������ �����ϸ� ��� ���� ��ȣ, �̸�, ��������, �޿�+�������� ���  */
select profno, name, sal, comm, sal+nvl(comm, 0)
from professor
where exists (  select profno
                from professor
                where comm is not null);

/* �л� �߿��� goodstudent ��� ����� ���̵� ������(where��) 1�� ���   */
select 1 userid_exist
from dual /* dual = ���ϴ� ����(�Ͻ���) ���� ��������� sy�� ������ ���̺�  */
where not exists(select userid
                    from student
                    where userid = 'goodstudent');
                    

/* pairwise �г⺰ �����԰� �ּ��� �л��� �̸�, �г�, ������ ��� */
select name, grade, weight
from student
where (grade, weight) in (select grade, min(weight)
                            from student
                            group by grade);
                            
/*��� ���̺��� ��ȸ�Ͽ� �� �μ��� �̸� �޿� ���*/
/*����(in) �÷�*/
desc emp;
select ename, deptno, sal
from emp
where (deptno, sal) in (select deptno, max(sal)
                                from emp
                                group by deptno)
order by 1;


/* unpairwise �г⺰ �����԰� �ּ��� �л��� �̸�, �г�, ������ ���, �г⺰ ��������  */
select name, grade, weight
from student
where   grade in    (select grade
                            from student
                            group by grade)
and     weight in   (select min(weight)
                            from student
                            group by grade)
order by grade;


/* Blake�� ���� �μ��� �ִ� ��� ��� �̸��� �Ի��� ��� */
select ename, hiredate
from emp
where deptno = (select deptno
                from emp
                where initcap(ENAME) = 'Blake');

/*�� �а����� �Ի����� ���� ������ ������ ������ȣ�� �̸�, �Ի���, �а��� ��� */

desc department;
desc PROFESSOR;

select  p.PROFNO, p.NAME , p.HIREDATE, 
        d.DEPTNO, d.DNAME
from PROFESSOR p, department d
where p.deptno = d.deptno /* ���� */
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

/* ������ �Է� */
desc student;


insert into student
values(10110, 'ȫ�浿', 'hong', '1', '8501011143098', '85/01/01', '041)630-3114', 170, 70, 010, 9903);
commit;

desc DEPARTMENT;
insert into DEPARTMENT(DEPTNO, DNAME)
values(300, '������к�');
commit;
select * from DEPARTMENT
where deptno = 300;

insert into DEPARTMENT
values(301, 'ȯ�溸���а�','',''); /*�÷��� �� ä���� ���� �Ȼ���*/
commit;
select * from DEPARTMENT
where deptno = 301;

desc professor;
insert into professor(PROFNO, NAME, POSITION, HIREDATE, DEPTNO)
values(9920, '������', '�ֱ���', to_date('2006/01/01', 'yyyy/mm/dd'), 102);
commit;
select * from professor
where DEPTNO = 102;

insert into professor
values(9910, '��̼�', 'white', '���Ӱ���', 200, sysdate, 10, 101);
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


/* ����ų� insert all  */

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


/* ���̺� 2�� ����(prof1,prof2), ������ȣ, �����̸�  */

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

/* �������̺��� ������ȣ��  */

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


/* ����� �۽�Ʈ insert */
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


/*������ ����*/

select profno, name, position
from professor
where profno = 9903;

update professor
set position = '�α���'
where profno = 9903;
commit;

update professor
set position = '�α���'
where profno = 9903;

select * from professor;
ROLLBACK;

desc professor;

UPDATE professor
SET userid = 'black'
WHERE name = '������';
commit;


update student
set (grade, deptno) = (select grade, deptno
                        from student
                        where studno = 10103)
where studno = 10201;

select grade, deptno, studno
from student;


/* ������ ������ ���ް� ���� ������ ���� ������ ��, ���� �޿��� 410�� �ȵǴ� �������� �޿��� 12% �λ� */

desc professor;

UPDATE professor
SET sal = sal*1.12
WHERE position = (SELECT position
                  FROM professor
                  WHERE name = '������')
AND sal < 410;


/*������ ����*/

delete
from student
where studno = 20103;

delete
from student
where deptno = (select deptno
                from department
                where dname = '��ǻ�Ͱ��а�');
/*����*/
delete *
from student
where deptno = (select deptno
                from department
                where dname = '��ǻ�Ͱ��а�');



/* ��� ���̺�(emp)���� dallas�� �ٹ��ϴ� ��� ��� ���� */

desc emp;
desc dept;
SELECT * FROM emp;

delete from emp
where deptno = (select deptno
                from dept
                where loc = 'DALLAS');



/* merge ���� */

create table professor_temp 
as select * 
from professor
where position = '����';

update professor_temp
set  position = '������'
where POSITION = '����';

insert into professor_temp
values(9999, '�赵��', 'arom21', '���Ӱ���', 200, sysdate, 10, 101);

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


/* ������ */

create sequence s_seq
increment by 1
start with 1
maxvalue 100;

select min_value, max_value, increment_by, last_number
from user_sequences
where sequence_name = upper('s_seq');


/* �������� �̿��Ͽ� ��� ���̺� ������ 3�Ǹ� �Է� */
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

/* alter sequence�� */
alter sequence s_seq maxvalue 200;

/* ���� �� �� Ȯ��  */
select min_value, max_value, increment_by, last_number
from user_sequences
where sequence_name = upper('s_seq');

drop sequence sequence;



/* ���� */
/* 1. ������ ��ȣ�� 7788 �̸��� ��� ����� ���� �Ʒ� ���Ǹ� �ۼ��ϼ���.
������#, �����ں� ��� �޿� �հ�� �� �޿��� ���� ����ϼ���.

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
/*�Ѱ踦 ���Ҷ� rollup�� ���*/
 
/* 
2. 1�� �߰��Ͽ� ������#, �����ں� ����� JOB�� �޿��� �հ�, �� �޿��� ���� ����ϼ���.
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
/*�Ѱ踦 ���Ҷ� rollup�� ���*/

/* 
3. CUBE �����ڸ� �̿��Ͽ� ������ ��ȣ�� 7788 ������ ��� ����� ����
������# �� ���� �����ں� ��� JOB�� �޿��� ��, �����ں� ��ü �޿�, ��ü JOB�� �޿��� ���� ����ϼ���.
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
4. STUDNO, NAME, USERID, GRADE �׸��� DEPTNO ������ �����ϴ� STUDENT ���̺��� ������
���ʷ� STUDENT2 ���̺��� �����ϼ���.
*/

desc STUDENT;
create table STUDENT2(
    STUDNO       NUMBER(5),
    NAME         VARCHAR2(10),
    USERID       VARCHAR2(10),
    GRADE        VARCHAR2(1),
    DEPTNO       NUMBER(4));



/* 
5. STUDNO_SEQ��� �̸��� �������� �����ϼ���.
5-1) �������� 30000���� �����ؾ� �ϰ� �ִ밪�� 50000, 10�� �����ϴ� �������� �����ϴ�.
5-2) ������ STUDNO_SEQ�� �̿��Ͽ� STUDENT2 ���̺� �����͸� 2�� �Է��ϼ���.
*/





/*
6. STUDENT ���̺�� STUDENT2���̺��� MERGE ��Ű����.
*/




/* 4�� 14�� ������  */

/* ���̺� ���� */
create table address(
id      number(3),
name    varchar2(50),
addr    varchar2(100),
phone   varchar2(30),
email   varchar2(100));

desc address;
select * from address;
select * from tab; /* ������ �ִ� ���̺� ��� ���� */

insert into address
values (1, 'hgdong','seoul','123-4567','hgdong@cenet.ad.kr'); 

create table addr_second(ID, NAME, ADDR, PHONE, E_MAIL)
as select * from address;

desc addr_second;
select * from addr_second;



/* ������ ���� */
create table addr_fourth
as select id, name from address /* id, name �÷��� ����� */
where 1=2;

select * from addr_fourth;
desc addr_fourth;


/* employees ���̺��� ������ �����Ͽ� employees_temp1 ���̺� ����� */
create table employees_temp1
as select * from employees
where 1=2; /* ����(�÷�)�� �;��ؼ� ��������  */

select * from employees_temp1;
desc employees_temp1;


/* employees ���̺��� employee_id, first_name, HIRE_DATE Į���� ������ ������ͼ� employee_temp2 ���̺� �����  */

desc employees;

create table employees_temp2
as select employee_id, first_name, HIRE_DATE 
from employees; /* employee_id, first_name�� �����͸� ������ ������ */

select * from employees_temp2;

/* employees ��� ����*/
create table employees_temp5
as select * from employees;


/* ���̺� ���� ���� alter  */
create table addr_third
as select id, name from address; /* id, name �÷�+�����ͱ��� */

select * from addr_third;
desc addr_third;

alter table address
add (birth date); /* birth�� Ÿ���� date Ÿ������ �����ϴ°� */


alter table address
add(comments varchar2(200) default 'no comment'); /* comments�� Ÿ���� varchar2(200) Ÿ������ �����ϰ� default 'no comment' */
desc address;


/* comments Į�� ���� */
alter table address
drop column comments; 
desc address;


/* Į�� ���� */
alter table address
modify PHONE VARCHAR2(50); /* PHONE�� ������ Ÿ����VARCHAR2(50)���� ���� (������ VARCHAR2(30)�̾��µ� �ø��°�, ���̴°� �ȵ�) */

desc address;

/* ���̺�� ���� */
rename address_second to client_address;

/* ���̺� ���� */
drop table addr_third;
select * from tab;

/* �ּ� �߰� */
comment on table address
is '�� �ּҷ��� �����ϱ����� ���̺�'; /*���̺� �ּ� */

select * from address;

comment on column address.name
is '���̸�'; /*Į�� �ּ� */

select *
from user_tab_comments 
where table_name= 'ADDRESS'; /*�ּ�Ȯ�� */

select *
from user_col_comments
where table_name= 'ADDRESS'; /*�ּ�Ȯ�� */

comment on table address is ''; /*���̺� �ּ� ����*/
comment on column address.name is '';/*Į�� �ּ� ����*/



/*���� ������ ���� ��*/
select table_name from user_tables;

/*�� ������ ���� ��*/
select owner from all_tables;

/*DBA_ ������ ���� ��*/
select owner, table_name from dba_tables;

/*����� ���̺� ���� ��ȸ*/
select table_name, tablespace_name, min_extents, max_extents
from user_tables
where table_name like upper('addr%'); /*�빮�� �̾�..*/


/*���Ἲ ��������*/

create table subject
(subno number(5)
    constraint subject_no_pk primary key
    deferrable initially deferred
    using index tablespace indx, /* tablespace indx �����-> cmd ���� ���� 
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

/*���Ἲ ��������_���� ���̺� �ν��Ͻ� */
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

/* ���Ἲ �������� ��ȸ */
select constraint_name, constraint_type
from user_constraints
where table_name in upper('student','subject','sugang');

/* null ���Ἲ �������� �߰� */
alter table student
add constraints stud_idnum_uk unique(idnum); /* idnum�� unique �Ӽ� �߰� */

alter table student
modify (name constraint stud_name_nn not null); /* name�� not null �Ӽ� �߰�(not null =modify��)  */

/*���� �߿���*/
aLTER TABLE department
ADD CONSTRAINT deptno_pk PRIMARY KEY(deptno);/* <- ���� �Ķ��̸Ӹ��� �����ؾ� �Ʒ��� ����  */

alter table student add constraint stud_deptno_fk
foreign key(deptno) references/* <- ���� */ DEPARTMENT(deptno);



alter table professor add constraints prof_pk PRIMARY KEY(profno); /* �⺻Ű */
alter table professor modify (name not null);/* name�� not null ���� */

alter table professor add constraints prof_fk
foreign key(deptno) references DEPARTMENT(deptno); /*���� ���Ἲ ��������*/


insert into subject values(1, 'sql', '1', '��');
insert into subject values(2, '', '2', '�ʼ�');
insert into subject values(3, 'java', '3', '��');

commit;

select * from subject;

insert into subject values(4, '�����ͺ��̽�', '1', '��');
insert into subject values(4, '�����͸𵨸�', '2', '��');/* ��� �ȵ� */

commit;
select * from subject;

select  constraint_name, constraint_type, deferrable, deferred 
from user_constraints
where table_name = upper('subject');


/*Ȯ��_�ΰ�ΰ� ���°�*/
select  constraint_name, constraint_type
from user_constraints
where table_name = upper('subject');


alter table subject
drop constraint subject_term_ck;


/*Ȯ��_�ΰ�ΰ� ���°�*/
select  constraint_name, constraint_type
from user_constraints
where table_name = upper('subject');



/*���Ἲ �������� Ȱ��ȭ �� ��Ȱ��ȭ*/

/*��Ȱ��ȭ*/
alter table sugang
disable constraint sugang_pk;

alter table sugang
disable constraint sugang_studno_fk;

/*Ȯ��_�ΰ�ΰ� ���°�*/
select  constraint_name, constraint_type
from user_constraints
where table_name in upper('sugang');


/*Ȱ��ȭ*/
alter table sugang
enable constraint sugang_pk;

alter table sugang
enable constraint sugang_studno_fk;


/*Ȯ��_�ΰ�ΰ� ���°�*/
select  table_name, constraint_name, constraint_type, status
from user_constraints
where table_name in ('STUDENT', 'PROFRSSOR', 'DEPARTMENT');



/* ���� */
/*
1. EMPNO, ENAME �׸��� DEPTNO ������ �����ϴ� EMP ���̺��� ������ ���ʷ�EMP2 ���̺��� �����ϼ���.
�� ���̺��� ID, LAST_NAME�� DEPT_ID�� �� �̸��� �����ϼ���.
*/
create table EMP2
as select EMPNO ID, ENAME LAST_NAME, DEPTNO DEPT_ID from emp;

desc EMP2;
select * from EMP2;
/*
2. 1.���� ������ EMP2 ���̺��� LAST_NAME �ʵ带 10-->30���� �����ϼ���.
*/
desc EMP2;

alter table EMP2
modify LAST_NAME VARCHAR2(30); /* LAST_NAME�� ������ Ÿ���� VARCHAR2(30)���� ����(������ VARCHAR2(10)�̾��µ� �ø��°���, ���̴°� �ȵ�) ��ư �׷�. */

/*
3. �Ʒ��� ���� EMPLOYEE ���̺��� �����ϼ���.

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
4. EMPLOYEE_ID���� ����Ͽ� EMPLOYEE ���̺� PRIMARY KEY ���������� �߰��ϼ���.
*/
desc EMPLOYEE;
alter table EMPLOYEE add constraints EMPLOYEE_ID PRIMARY KEY(EMPLOYEE_ID); /* �Ķ��̸Ӹ� */

/*
5. EMPLOYEE ���̺��� �����Ͻʽÿ�. NUMBER(7)�� ������ ���� SALARY�� �߰��մϴ�.
*/

desc EMPLOYEE;
select * from EMPLOYEE;

alter table EMPLOYEE
add (SALARY NUMBER(7));

/*
6. 5.���� ������ ���̺� �Ʒ��� ���� 3���� �����͸� �Է��ϼ���.

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
7. ������ ������ EMPLOYEE ���̺��� DEPTNO�� DEPT���̺��� DEPTNO �÷��� �����ϰ� ���� ������ ������ ������.
*/




/*
8. INSERT INTO employee(employee_id, first_name, deptno)
VALUES(4, 'cindy',50);

�����͸� �Է��Ϸ��� �Ͽ����� �����Ͽ���. ������?
*/


/*
9. ������ EMPLOYEE ���̺��� ������ ������.
*/

drop table employee;




/* 4�� 15�� �����  */


/* �ε��� ���� */

drop index idx_dept_name;
create unique index idx_dept_name /*unique �ε���*/
on department(dname);

create index idx_stud_birthdate
on student(birthdate);


/* ���� �ε��� */
create index idx_stud_dno_grade
on student(deptno,grade);

/* ����(desc),����(asc) ���� �ε���(�Լ� ���) */
create index idx_stud_no_name
on student(deptno desc, name asc);


/* �Լ���� �ε��� */
create index uppercase_idx on emp (upper(ename));
select * from emp where upper(ename) = 'KING';

create index idx_standard_weight on student((height-100)*0.9);

/* ���� ��� Ȯ�� */


set autotrace on;
set autotrace off;

/* �𺧷��� = F10 */
select deptno, dname
    from department
    where dname = '�����̵���к�';
    

select name, birthdate
from student
where birthdate = '79/04/02';

drop index idx_stud_no_name;


/* �ε��� �籸�� */
alter index stud_no_pk rebuild;

/* ��� ���̺��� deptno�� ename�� ���� �ε��� ���� */

create index fidx_emp_no_ename
on emp(deptno desc,ename asc);

set autotrace on;
drop index fidx_emp_no_ename;


/* �� */

desc professor;

create view view_professor as select * from professor;
desc view_professor;
select * from pview_professor;

/* �ܼ��� */
create view v_stud_dept101 as
    select studno, name, deptno
    from student
    where deptno = 101;

select * from v_stud_dept101;

/*���պ�*/

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
SELECT e.empno as ���, e.ename as �̸�, e.sal as �޿�, e.deptno as �μ���ȣ, d.dname as �μ���, d.loc as ������
FROM emp e, dept d
WHERE e.deptno = d.deptno;

/* �μ��� �ִ� �޿��� �ּұ޿� �� */
CREATE VIEW sal_view
as
SELECT deptno, max(sal) �ִ�, min(sal) �ּ�
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

/* �μ���ȣ�� �μ��� �ִ�޿�, �μ��� ��� */
desc emp;
desc department;

select e.DEPTNO, d.DNAME,  e.max_sal
from (select deptno, max(sal) max_sal
        from emp
        group by deptno) e, dept d      
        where e.deptno = d.deptno;
/* ���� �ذ� �ٽ� */

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



/* �� �г� ��� Ű�� ���ϰ� ��� Ű���� ū �л��� �г�, �̸�, Ű, �� �г��� ���Ű ��� */
/* �ٽ� �غ��� */
SELECT   s.grade , s.name , s.height , a.avg_height
FROM (SELECT grade , ROUND(AVG(height)) avg_height
      FROM student
      GROUP BY grade) a , student s
WHERE a.grade = s.grade
AND s.height > a.avg_height
ORDER BY 1 ;


/* ���� ���� */
create or replace view v_stud_dept102
as select studno, name, deptno, grade
from student
where deptno =102;

select * from v_stud_dept102;

drop view v_stud_dept101;
drop view v_stud_dept102;

/* �ý��� ���� ��ȸ */
select * from session_privs; 

create user tiger identified by tiger123
default tablespace users
temporary tablespace temp;

/* ������Ʈ �� �� �ִ� ���� */
update hr.student
set height = 180, weight = 80
where deptno = 102;

grant update(height, weight) on student to tiger;

update hr.student
set height = 180, weight = 80
where deptno = 102;


/* test/test** ���� ����  */
create user test identified by "test**"
default tablespace users
temporary tablespace temp;

/* ���� �ο� */
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
1-1)�Ʒ��� ���� �ε����� �����ϰ�, ���ǹ��� �ۼ��Ͽ� �����ȹ�� Ȯ���Ͽ����� �ε����� ������� ���ϰ� �ִ�.
�Ʒ� ���ǹ����� SAL �÷��� �ε����� ����ϵ��� ������ ������.
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
1-2) fidx_prof_sal �ε����� �籸���Ͽ���.
*/
alter index idx_prof_sal rebuild;

/*
1-3) fidx_prof_sal �ε����� �����Ͽ���.
*/
drop INDEX idx_prof_sal;

/*
2. 20�� �μ��� �ٹ��ϴ� ��� ����� ���� �����ȣ, �����, �μ���ȣ, �μ��̸���
�����ϴ� DEPT20�並 �����ϼ���.(����� �Ʒ��� ���� ��������)

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
3.�а��� �ִ�Ű�� ���ϰ� �ִ�Ű�� ���� �л���
�а���, �ִ�Ű, �̸�, Ű�� ����ϼ���.(����� �Ʒ�~)


�а��� �а� �ִ�Ű �̸� Ű
---------------------------------------------------------
��Ƽ�̵���а� 177 ������ 177
��ǻ�Ͱ��а� 186 ������ 186
���ڰ��а� 184 ������ 184
*/


/*
4. ojava/ojava123# �̶�� ���� ������ ����Ʈ ���̺����̽���
users, temporary ���̺� �����̽��� temp�� �����ϼ���.
*/

/*
5. ojava�� hr�� professor ���̺��� select, insert �� �� �ֵ���
������ �ο��� ������.
*/

/*
6. ojava�� �����ϼż� 5.�� �°� ����Ǵ��� Ȯ���ϼ���.
*/

/* 4�� 16�� �ݿ��� */


select * from emp;

/*ž-�ٿ�*/
select deptno, dname, college
from department
start with deptno = 10
connect by prior deptno = COLLEGE;

/* ����-�� */
select deptno, dname, college
from department
start with deptno = 102
connect by prior COLLEGE = deptno;

/* ���� ����, lpad <- ���� ����, ������ ���� ���� �ֱ� */
select lpad(' ',(level-1)*2) || dname ������
from department
start with dname = '��������'
connect by prior deptno = COLLEGE;



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


SELECT deptno, college, dname, loc
from department
START WITH college is null
connect by prior deptno = college
and dname != '��īƮ�δн��к�'; /* ��īƮ�δн��к� ������ ž-�ٿ� ����  */
 


desc emp;

/* ������ ����, ������̺� �޿� 1000 �̻� �����ڹ��� 7698 �� ��� ������, ���, �����  */

SELECT mgr as "������ ���", empno, ename, sal
FROM emp 
WHERE sal >= 1000
AND mgr = 7698
CONNECT BY PRIOR mgr = empno;



/* test/test** ���� ����  */
create user test identified by "test**"
default tablespace users
temporary tablespace temp;












































