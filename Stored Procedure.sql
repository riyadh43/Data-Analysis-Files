
delimiter $$
create procedure select_employees()
begin

select*from employees
limit 1000;

end $$

delimiter ;

call employees.select_employees();
call select_employees();

#// Create a procedure that will provide the average salary of all employees//

delimiter $$
create procedure average_salary()
begin

select avg(salary) as average_salary from salaries;

end$$

Delimiter ;


#// stored with input parameter//

delimiter $$
use employees $$
CREATE PROCEDURE emp_salary(in p_emp_no int)
BEGIN
select e.first_name, e.last_name, s.salary
from employees e
join salaries s on s.emp_no=e. emp_no
where p_emp_no=e. emp_no;

END $$
delimiter ;


#// stored with output parameter//

delimiter $$
use employees $$
CREATE PROCEDURE emp_average_salary_out(in p_emp_no int, out p_avg_salary decimal(10,2))
BEGIN
select avg(s.salary) as average_salary into p_avg_salary
from employees e
join salaries s on s.emp_no=e. emp_no
where p_emp_no=e. emp_no;

END $$
delimiter ;

use employees;

#// Create a procedure called ‘emp_info’ 
#//#that uses as parameters the first and the last name of an individual, and returns their employee number.//

delimiter $$
create procedure emp_info (in p_first_name varchar(14), out p_last_name varchar(16))
begin
select emp_no from employees;
end $$
delimiter $$



DELIMITER $$
CREATE PROCEDURE emp_info(in p_first_name varchar(255), in p_last_name varchar(255), out p_emp_no integer)
BEGIN
                SELECT e.emp_no
                INTO p_emp_no FROM employees e
                WHERE e.first_name = p_first_name
				AND e.last_name = p_last_name;
END$$

DELIMITER ;

#// Variable excecise//
#// Create a variable, called ‘v_emp_no’, where you will store the output of the procedure you created in the last exercise.
#// Call the same procedure, inserting the values ‘Aruna’ and ‘Journel’ as a first and last name respectively.
#// Finally, select the obtained output. 

SET @v_emp_no = 0;
CALL emp_info('Aruna', 'Journel', @v_emp_no);
SELECT @v_emp_no;