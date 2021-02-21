/*Question 1: List the following details of each employee: employee number, last name, first name, sex, and salary.*/
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries
on employees.emp_no=salaries.emp_no
order by emp_no