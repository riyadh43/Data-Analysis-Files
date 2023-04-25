#// New JOIN//
select  employees.emp_no,employees.first_name, employees.last_name,  dept_manager.from_date
from employees
join dept_manager on employees.emp_no=dept_manager.emp_no;
 
 #// Old Where//
select  employees.emp_no,employees.first_name, employees.last_name,  dept_manager.from_date
from employees, dept_manager
where employees.emp_no=dept_manager.emp_no; 

#// Altogether Join+where///

select  employees.first_name, employees.last_name,  salaries.salary
from employees
join salaries on employees.emp_no=salaries.emp_no
where salary>= 145000;

# EXCERCISE
#//Select the first and last name, the hire date, and the job title of all employees 
#//whose first name is “Margareta” and have the last name “Markovitch”

select  employees.first_name, employees.last_name, titles.title
from employees
join titles on employees.emp_no=titles.emp_no
where first_name='Margareta' and last_name='Markovitch';



