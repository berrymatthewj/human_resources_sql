/*Question 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.*/
drop table bridge1;
create table bridge1(
dept_no varchar not null,
dept_name varchar not null,
emp_no varchar not null);

insert into bridge1(select departments.dept_no, departments.dept_name, dept_manager.emp_no
from dept_manager
inner join departments
on dept_manager.dept_no=departments.dept_no
);

select bridge1.dept_no,bridge1.dept_name,bridge1.emp_no,employees.last_name,employees.first_name
from bridge1
inner join employees
on bridge1.emp_no = employees.emp_no