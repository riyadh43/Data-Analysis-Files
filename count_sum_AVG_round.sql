#///How many departments are there in the “employees” database? Use the ‘dept_emp’ table to answer the question

select 
count( distinct dept_no)
from dept_emp;

#//What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?

select*from salaries;

select sum(salary)
from salaries
where from_date>'1997-01-01';

select round(avg(salary),2)
from salaries
where from_date>'1997-01-01';
