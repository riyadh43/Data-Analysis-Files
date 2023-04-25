#// How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?//
select count(emp_no) from salaries
where salary>= 100000;

#alternative way#
SELECT COUNT(*) FROM salaries WHERE salary >= 100000;


#//How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.//

select count(distinct(emp_no)) from dept_manager;

#alternative way#
SELECT COUNT(*) FROM dept_manager;