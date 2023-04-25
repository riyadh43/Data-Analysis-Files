#// employee number that can be found in department manager//

select e.first_name,e.last_name, e.emp_no
from employees e
where e.emp_no in ( select dm.emp_no from dept_manager dm);

select e.first_name,e.last_name, e.emp_no
from employees e
join dept_manager dm on dm.emp_no=e.emp_no;

use employees;

select*from titles;


#//Extract the information about all department managers 
#//who were hired between the 1st of January 1990 and the 1st of January 1995.

select dm.emp_no, e.hire_date 
from dept_manager dm 
join employees e on e.emp_no=dm.emp_no
where hire_date between '1990-01-01' and '1995-01-01';

#//Select the entire information for all employees whose job title is “Assistant Engineer”. //

select e.emp_no, e.first_name, e.last_name, t.title,t.from_date,t.to_date
from employees e 
join titles t on t.emp_no=e.emp_no 
where title='Assistant Engineer';


SELECT 
    *
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
                AND title = 'Assistant Engineer');

#subquaries nasted////

drop table if exists emp_manager;

create table emp_manager(

emp_no int(11) not null,
dept_no char(4) null ,
manager_no int(11) not null
);




