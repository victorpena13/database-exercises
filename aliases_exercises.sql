use employees;

select concat(emp_no, ' - ', first_name, ', ', last_name)as full_name, birth_date as DOB
from employees
group by full_name, DOB
limit 10;