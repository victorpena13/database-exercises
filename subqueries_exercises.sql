use employees;

select first_name, last_name
from employees as e
where emp_no in (
    select hire_date
    from employees
    where emp_no = 101010
    );