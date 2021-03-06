select * from employees;
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


