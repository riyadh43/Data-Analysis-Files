#/// Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.//


SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
group by emp_no
having count(from_date) >1
order by emp_no;


#//--Check//

select*from dept_emp
where emp_no= 11609;

#//--- Limit function///

#/// Select the first 100 rows from the ‘dept_emp’ table. //

select* from dept_emp
limit 100;