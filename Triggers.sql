use employees;

commit;

#----Before insert on cluse///
delimiter $$
 create trigger bfore_salary_insert
 before insert on salaries
 for each row
 begin
 
 if new.salary<0 then
 set new.salary= 0;
 end if;
 end $$ 
 delimiter ;

 
select*from salaries where emp_no= '10001'; 

insert into salaries values('10001', '-20000', '2001-02-23', '2002-02-21');

#----Before update on cluse///

delimiter $$
create trigger before_salary_update
before update on salaries
for each row
 begin
 
 if new.salary<0 then
 set new.salary= old.salary;
 end if;
 end $$ 
 delimiter ;

select*from salaries where emp_no= '10002';
 
update salaries
set salary='10000'
where emp_no=10002 and from_date='2001-08-02';

update salaries
set salary='-10000'
where emp_no=10002 and from_date='2001-08-02';