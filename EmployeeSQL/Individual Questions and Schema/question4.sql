/*Question4: List the department of each employee with the following information: employee number, last name, first name, and department name.*/
drop table bridge2;
create table bridge2(
emp_no varchar not null,
last_name varchar not null,
first_name varchar not null,
dept_no varchar not null
);

insert into bridge2(
select employees.emp_no,employees.last_name,employees.first_name,dept_emp.dept_no
from employees
inner join dept_emp
on employees.emp_no=dept_emp.emp_no);

select bridge2.emp_no,bridge2.last_name,bridge2.first_name,departments.dept_name 
from bridge2
inner join departments
on bridge2.dept_no=departments.dept_no