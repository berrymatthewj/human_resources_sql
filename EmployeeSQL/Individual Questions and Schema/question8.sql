/*Question 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/
select last_name,count(*) from employees
group by last_name
order by last_name