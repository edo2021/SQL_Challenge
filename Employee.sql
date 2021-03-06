-- checking all table data after imported
select * from departments;
select * from dept_emp;
select * from titles;
select * from employees;
select * from dept_manger;
select * from salaries;



--Data Analysis
--Once you have a complete database, do the following:


--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select  employees.emp_no,
	    employees.last_name,
	    employees.first_name,
		employees.sex ,
		salaries.salary
from employees
 join salaries on salaries.salary =employees.emp_no ;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select   first_name, 
		 last_name,
		 hire_date
from     employees
WHERE hire_date BETWEEN '1/1/1986' AND '1/1/1987';






