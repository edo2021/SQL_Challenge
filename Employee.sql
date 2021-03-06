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
========================================================================================================================================
select  employees.emp_no,
	    employees.last_name,
	    employees.first_name,
		employees.sex ,
		salaries.salary
from employees
 join salaries on salaries.salary =employees.emp_no ;

=========================================================================================================================================
-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select   first_name, 
		 last_name,
		 hire_date
from     employees
WHERE hire_date BETWEEN '1/1/1986' AND '1/1/1987';

===================================================================================================================================================================
--3. List the manager of each department with the following information:department number, department name, the manager's employee number, last name, first name.

select * from departments;
select * from employees;
select * from dept_manger;


select 		departments.dept_no,
			departments.dept_name,
			dept_manger.emp_no,
			employees.first_name,
			employees.last_name
from       departments
left join dept_manger
 on       departments.dept_no =dept_manger.dept_no
left join employees 
on         dept_manger.emp_no = employees.emp_no;

==================================================================================================================================================================

-- 4 .List the department of each employee with the following information: employee number, last name, first name, and department name.
select     employees.emp_no, 
		   employees.last_name,
		   employees.first_name,
		   departments.dept_name
from       employees
left join  dept_manger
on         dept_manger.emp_no = employees.emp_no
left join departments
 on       departments.dept_no =dept_manger.dept_no;

==================================================================================================================================================================
--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with B.

select 		first_name,
			last_name,
			sex
from 		employees
where first_name =  'Hercules'
and last_name like 'B%'


=============================================================================================================================================================

-- 6.last name, first name, and department name.


   select * from employees;
   select   employees.emp_no,
   			employees.last_name,
			 employees.first_name,
			  departments.dept_name
   from       employees
   left join  dept_manger
  on            dept_manger.emp_no = employees.emp_no
left join      departments
 on       departments.dept_no =dept_manger.dept_no
   where dept_name ='Sales';

============================================================================================================================================================

-- 7.including their employee number, last name, first name, and department name.

select    employees.emp_no,
		  employees.last_name,
		  employees.first_name,
		  departments.dept_name
from       employees
left join  dept_manger
on         dept_manger.emp_no = employees.emp_no
left join   departments
on           departments.dept_no =dept_manger.dept_no
where     dept_name = 'Development' or dept_name= 'Sales';


============================================================================================================================================================

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name,count(last_name) 
from employees
group by last_name
order by last_name desc;








==