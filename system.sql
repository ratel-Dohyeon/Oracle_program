/* 4�� 16�� �ݿ��� */

create table project(
project_id number(5) constraint pro_id_pk primary key,
project_name varchar2(100),
studno number(5),
profno number(5));

insert into project values (12345, 'portfolio',10101,9910);

commit;
desc project;

grant select on project to hr;
create synonym my_project for system.project;
select * from my_project;

create public synonym pub_project for project;
select * from pub_project;

drop public synonym pub_project;

/* system ���� employee ���̺� ������ ���̺� �Է� */
create table employee(
    id number(5),
    last_name varchar2(25),
    first_name varchar2(25),
    deptno number(5));
   
insert into employee values (12345, 'asdasd','qweqwe',9910);   
    
/* system ���� employee�� ���� pub_employee ��� ���뵿�Ǿ� ����   */
create public synonym pub_employee for employee;
select * from pub_employee;
    

/* 1���� ������ ���� ���Ǿ���� system ���� employee ���̺��� hr ������ ��ȸ�ϵ���(grant) ���� �ο�   */
grant select on employee to hr;

/* ���� */
DROP PUBLIC synonym pub_employee;


/* 1. ttest��� ���̺� �����̽��� �⺻���� 100m�� �����ϼ��� */
create user ttest identified by "test**"
default tablespace users;

/* 2. hr�� student, emp ���̺��� ��� */
exp system/1111  tables=(hr.studen, hr.emp ) grants=y indexes=y;

/* 3. ttes/test34** ��� ���� ������ ����Ʈ ���̺� �����̽��� ttest, temporary ���̺� �����̽��� temp�� ���� */

create user tttest identified by "test34**"
default tablespace users
temporary tablespace temp;



/* 1 */
create user ojava identified by "ojava123"
default tablespace users
temporary tablespace temp;


/* 2 */
grant connect, resource to ojava;

/* 3 */

CREATE TABLE s_order (
    ID              NUMBER(7)       constraint s_order_pk primary key,
    CUSTOMER_ID     varchar2(50)    constraint CUSTOMER_ID_nn not null,
    DATE_ORDERED    date,
    TOTAL           NUMBER(11, 2),
    PAYMENT_TYPE    VARCHAR2(6)    constraint PAYMENT_check CHECK(PAYMENT_TYPE IN ('����', 'ī��'))
    );

comment on column s_order.ID is '��ǰID'; 
comment on column s_order.CUSTOMER_ID  is '��ID';
comment on column s_order.DATE_ORDERED  is '�ֹ�����';
comment on column s_order.TOTAL  is '�ѱݾ�';
comment on column s_order.PAYMENT_TYPE  is '��������(����,ī��)';


/* 4 */
insert into s_order values(101, '204', 180807, 6110000, 'ī��');
insert into s_order values(102, '206', 180907, 6110000, '����');
insert into s_order values(103, '206', 181007, 6110000, '����');

/* 5 */












































































