--- ///Left join learning content/// 

select departments_dup.dept_no, dept_manager_dup.emp_no, dept_manager_dup.from_date
from departments_dup
left join dept_manager_dup on departments_dup.dept_no=dept_manager_dup.dept_no
order by emp_no;


--- /// Left join excercise////----
#Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose last name is Markovitch. 
#//See if the output contains a manager with that name.

select dept_manager.emp_no, employees.last_name
from dept_manager
left join employees on employees.emp_no=dept_manager.emp_no
where last_name='Markovitch';

