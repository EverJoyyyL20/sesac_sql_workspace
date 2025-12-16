use sqldb;
create table testtbl1 (id int,userName char(3),age int);
insert into testtbl1 values (1,'홍길동',25);
insert into testtbl1(id,username) values (2,'설현');
insert into testtbl1(username,age,id) values ('하니',26,3);

use sqldb;
create table testtbl2 (id int auto_increment primary key,username char(3),age int);
insert into testtbl2 values (null,'지민',25);
insert into testtbl2 values(null,'유나',22);
insert into testtbl2 values(null,'유경',21);
select * from testtbl2;

select last_insert_id()

ALTER TABLE testTbl2 AUTO_INCREMENT=1000;
insert into testtbl2 values(null,'찬미',23);
select  * from testtbl2;

use sqldb;
create table testtbl3(id int auto_increment primary key,username char(3),age int);
alter table testtbl3 auto_increment=1000;
set @@auto_increment_increment=3;
insert into testtbl3 values (null,'나연',20);
insert into testtbl3 values(null,'모모',19);

select * from testtbl3;

use sqldb;
create table testtbl4( id int,Fname varchar(50),Lname varchar(50));
insert into testtbl4 select emp_no,first_name,last_name from employees.employees;

use sqldb;
create table testtbl5 (select emp_no,first_name,last_name from employees.employees);

update testtbl4 set Lname='없음'  WHERE Fname = 'Kyoichi';

use sqldb;
update buytbl set price=price*1.5;

use sqldb;
DELETE FROM testTbl4 WHERE Fname = 'Aamer';
DELETE FROM testTbl4 WHERE Fname = 'Aamer'  LIMIT 5;

use sqldb;
create table bigtbl1 (select * from employees.employees);
create table bigtbl2 (select * from employees.employees);
create table bigtbl3 (select * from employees.employees);

delete from bigtbl1;
drop table bigTbl2;
truncate table bigtbl3;


USE sqldb;
CREATE TABLE memberTBL (SELECT userID, name, addr FROM usertbl LIMIT 3); -- 3건만 가져옴
ALTER TABLE memberTBL 
	ADD CONSTRAINT pk_memberTBL PRIMARY KEY (userID); -- PK를 지정함
SELECT * FROM memberTBL;

INSERT INTO memberTBL VALUES('BBK' , '비비코', '미국');
INSERT INTO memberTBL VALUES('SJH' , '서장훈', '서울');
INSERT INTO memberTBL VALUES('HJY' , '현주엽', '경기');
SELECT * FROM memberTBL;




INSERT INTO MEMBERTBL VALUES("BBK","비비코","미국");
INSERT INTO MEMBERTL VALUES("SJH","서장훈","서울");
INSERT INTO MEMBERTBL VALUES("HJY","현주엽","경기");

INSERT INTO MEMBERTBL VALUES("BBK","비비코","미국")
ON duplicate key update NAME='비비코',ADDR='미국';
INSERT INTO MEMBERTBL VALUES("DJM","동짜몽","일본")
ON duplicate key update NAME='동짜몽',ADDR='일본';
SELECT * FROM  MEMBERTBL;

