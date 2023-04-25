#// Exercise-01///

#//Use a CROSS JOIN to return a list with all possible combinations 
#//between managers from the dept_manager table and department number 9.

select*from departments;

SELECT dm.*, d.*  
FROM  departments d  
CROSS JOIN     dept_manager dm  
where d.dept_no= 'd009' 
ORDER BY d.dept_no;

#// Exercise-02//
select*from departments;
select*from employees;

#//Return a list with the first 10 employees with all the departments they can be assigned to.
#//Hint: Don’t use LIMIT; use a WHERE clause.

select e.*, d.*
from employees e
cross join departments d
where e.emp_no <= 10010
order by e.emp_no;

