select* from salaries;

update salaries
set salary='10000'
where emp_no=10001;


select 
e.emp_no, 
e.first_name, 
e.last_name,
max(s.salary)-min(s.salary) as salary_difference,
case 
when max(s.salary)-min(s.salary)> 30000 then 'salary was raised by $30000'
when max(s.salary)-min(s.salary) between 20000 and 30000 then 'salary was raised by more than $20000 and less than $30000'
else 'salary was raised by less than $20000'
end as salary_increase

from dept_manager dm
join employees e on e.emp_no=dm.emp_no
join salaries s on e.emp_no=s.emp_no
group by s.emp_no;


#Excercise
#Extract a dataset containing the following information about the 
#managers: employee number, first name, and last name. Add two columns at the end 
#one showing the difference between the maximum and minimum salary of that employee, 
#and another one saying whether this salary raise was higher than $30,000 or NOT.

select 
e.emp_no, 
e.first_name, 
e.last_name,
max(s.salary)-min(s.salary) as max_min_difference,
case 
when max(s.salary)-min(s.salary)> 30000 then 'salary was raised higher than $30000'
else 'salary was not raised higher than $30000'
end as salary_increase

from dept_manager dm
join employees e on e.emp_no=dm.emp_no
join salaries s on e.emp_no=s.emp_no
group by s.emp_no;
