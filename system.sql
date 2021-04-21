/* 4월 16일 금요일 */

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

/* system 소유 employee 테이블 생성후 테이블 입력 */
create table employee(
    id number(5),
    last_name varchar2(25),
    first_name varchar2(25),
    deptno number(5));
   
insert into employee values (12345, 'asdasd','qweqwe',9910);   
    
/* system 소유 employee에 대해 pub_employee 라는 공용동의어 생성   */
create public synonym pub_employee for employee;
select * from pub_employee;
    

/* 1에서 생성한 공용 동의어에의해 system 소유 employee 테이블을 hr 유저가 조회하도록(grant) 권한 부여   */
grant select on employee to hr;

/* 삭제 */
DROP PUBLIC synonym pub_employee;


/* 1. ttest라는 테이블 스페이스를 기본으로 100m로 생성하세요 */
create user ttest identified by "test**"
default tablespace users;

/* 2. hr의 student, emp 테이블을 백업 */
exp system/1111  tables=(hr.studen, hr.emp ) grants=y indexes=y;

/* 3. ttes/test34** 라는 유저 생성후 디폴트 테이블 스페이스는 ttest, temporary 테이블 스페이스는 temp을 지정 */

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
    PAYMENT_TYPE    VARCHAR2(6)    constraint PAYMENT_check CHECK(PAYMENT_TYPE IN ('현금', '카드'))
    );

comment on column s_order.ID is '제품ID'; 
comment on column s_order.CUSTOMER_ID  is '고객ID';
comment on column s_order.DATE_ORDERED  is '주문일자';
comment on column s_order.TOTAL  is '총금액';
comment on column s_order.PAYMENT_TYPE  is '지불형식(현금,카드)';


/* 4 */
insert into s_order values(101, '204', 180807, 6110000, '카드');
insert into s_order values(102, '206', 180907, 6110000, '현금');
insert into s_order values(103, '206', 181007, 6110000, '현금');

/* 5 */












































































