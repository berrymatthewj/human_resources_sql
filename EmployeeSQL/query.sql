--Run code in order:

/*Question 1: List the following details of each employee: employee number, last name, first name, sex, and salary.*/
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries
on employees.emp_no=salaries.emp_no
order by emp_no

/*Question 2: List first name, last name, and hire date for employees who were hired in 1986.*/
select employees.first_name, employees.last_name, employees.hire_date
from employees
WHERE   hire_date >= '1986-01-01' AND
        hire_date <= '1986-12-31'
order by hire_date

/*Question 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.*/
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

/*Question4: List the department of each employee with the following information: employee number, last name, first name, and department name.*/
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

/*Question 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."*/
select first_name,last_name,sex from employees
where first_name='Hercules' and last_name like 'B%'

/*Question 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.*/
select bridge2.emp_no,bridge2.last_name,bridge2.first_name,departments.dept_no,departments.dept_name
into question6
from bridge2
inner join departments
on bridge2.dept_no=departments.dept_no
where dept_name = 'Sales';

alter table question6
drop column dept_no;

select * from question6

/*Question 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.*/
select bridge2.emp_no,bridge2.last_name,bridge2.first_name,departments.dept_no,departments.dept_name
into question7
from bridge2
inner join departments
on bridge2.dept_no=departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

alter table question7
drop column dept_no;

select * from question7

/*Question 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/
select last_name,count(*) from employees
group by last_name
order by last_name



