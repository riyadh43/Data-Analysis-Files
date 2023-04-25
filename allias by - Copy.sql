##// Write a query that obtains two columns. 
##// The first column must contain annual salaries higher than 80,000 dollars. 
##//The second column, renamed to “emps_with_same_salary”, must show the number of employees contracted to that salary.
#// Lastly, sort the output by the first column.

SELECT 
    salary, COUNT(salary) as emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
order by salary;


#/// Using Having claws as an aggregate function////

#// Select all employees whose average salary is higher than $120,000 per annum.//

SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;