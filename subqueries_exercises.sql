use employees;

select first_name, last_name
from employees
where emp_no in (
    select hire_date
    from employees
    where emp_no = 101010
    );

select distinct title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    );

select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where gender = 'F' and to_date = '9999-01-01'
    );


