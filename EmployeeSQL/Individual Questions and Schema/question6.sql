/*Question 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.*/
drop table question6;
select bridge2.emp_no,bridge2.last_name,bridge2.first_name,departments.dept_no,departments.dept_name
into question6
from bridge2
inner join departments
on bridge2.dept_no=departments.dept_no
where dept_name = 'Sales';

alter table question6
drop column dept_no;

select * from question6