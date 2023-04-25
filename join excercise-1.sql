
alter table departments_dup
drop column dept_manager;


alter table departments_dup
change column dep_no dep_no char(4) null,
change column dept_name dept_name char(40) null;





insert into departments_dup (dep_no, dept_name)
select*from departments;

insert into departments_dup (dept_name)
values ('Public Relations');

 
 delete from departments_dup 
 where  dep_no= 'd002';
  
 INSERT INTO departments_dup(dep_no) VALUES ('d010'), ('d011');
 
#/// same as previous///
DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (

  emp_no int(11) NOT NULL,

  dept_no char(4) NULL,

  from_date date NOT NULL,

  to_date date NULL

  );

 
DROP TABLE IF EXISTS departments_dup;
CREATE TABLE departments_dup

(
    dept_no CHAR(4) NULL,
    dept_name VARCHAR(40) NULL
);

INSERT INTO departments_dup
(
    dept_no,
    dept_name
)
SELECT* FROM departments;


INSERT INTO departments_dup (dept_name)
VALUES             ('Public Relations');

DELETE FROM departments_dup
WHERE dept_no = 'd002'; 


INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');


DELETE FROM departments_dup 
WHERE dept_no = 'd002';

select*from departments_dup
order by dept_no;

select*from dept_manager_dup
order by emp_no;