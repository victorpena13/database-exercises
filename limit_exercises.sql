use employees;

select distinct last_name
from employees
where last_name like 'Z%'
order by last_name desc
limit 10;

select emp_no
from salaries
order by salary desc
limit 5 offset 2;