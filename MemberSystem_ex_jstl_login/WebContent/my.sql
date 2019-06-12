drop table member;

create table member(
	id varchar2(50),
	pw varchar2(50),
	name varchar2(50)
);

insert into MEMBER values('관리자', '1234', '관리자');

select * from MEMBER;