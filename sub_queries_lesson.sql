use employees;

select first_name, last_name, birth_date
from employees
where emp_no in (
    select emp_no
    from dept_manager
    )
limit 10;

