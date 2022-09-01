use employees;

select emp_no, first_name, last_name
from employees
where first_name like 'M%'
limit 25 offset 50;

