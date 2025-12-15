use employees;

select emp_no,hire_date from employees order by hire_date asc;

use employees;
select emp_no,hire_date from employees order by hire_date asc limit 5;

select emp_no,hire_date from employees order by hire_date asc limit 0,5;

use sqldb;
create table buytbl2(select * from buytbl);
select * from buytbl2;

create table buytbl3 (select userid,prodname from buytbl);
select * from buytbl3;

select userid,amount from buytbl order by userid;
select userid,sum(amount) from buytbl group by userid;
select userid as '사용자 아이디',sum(price*amount) as '총 구매액' from buytbl group by userid;

use sqldb;

select avg(amount) as '평균 구매 개수' from buytbl;

select userid,avg(amount) as '평균 구매 개수' from buytbl group by userid;

-- select name, max(height),min(height) from usertbl;

select name,max(height),min(height) from usertbl group by name;

select name,height from usertbl where height=(select max(height) from usertbl) or height =( select min(height) from usertbl);

select count(*) from usertbl;

select count(mobile1) as '휴대폰이 있는 사용자'from usertbl;

use sqldb;
select userid as '사용자',sum(price*amount) as '총구매액' from buytbl group by userid;

-- select userid as '사용자',sum(price*amount) as '총구매액' from buytbl where sum(price*amount) >1000 group by userid;
-- having절을 써야 된다,,,,,
select userid as '사용자',sum(price*amount) as '총구매액'from buytbl group by userid having sum(price*amount) >1000;

select userid as '사용자',sum(price*amount) as '총구매액' from buytbl group by userid having sum(price*amount) >1000 order by sum(price*amount);

select num, groupname,sum(price*amount) as '비용' from buytbl group by groupname,num with rollup;

select groupname,sum(price*amount) as '비용' from buytbl group by groupname with rollup;