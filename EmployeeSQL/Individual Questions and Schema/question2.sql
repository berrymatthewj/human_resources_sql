/*Question 2: List first name, last name, and hire date for employees who were hired in 1986.*/
select employees.first_name, employees.last_name, employees.hire_date
from employees
WHERE   hire_date >= '1986-01-01' AND
        hire_date <= '1986-12-31'
order by hire_date