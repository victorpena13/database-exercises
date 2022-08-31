use employees;

select * from employees where hire_date = '1985-01-01';

select distinct first_name
from employees
where first_name like '%sus%';

select emp_no, first_name, last_name
from employees
where emp_no between 10026 and 10082;

select emp_no, first_name, last_name
from employees
where last_name in ('Herber', 'Dredge', 'Lipner', 'Baek');

select emp_no, first_name, last_name
from employees
where last_name = 'Baek';

select emp_no, first_name, last_name
from employees
where emp_no <= 10026;

select emp_no, title
from titles
where to_date is not null;

select emp_no, title
from titles
where to_date is null;

# chaining where clauses
select emp_no, first_name, last_name
from employees
where last_name in  ('Herber', 'Baek')
and emp_no < 2000;

select emp_no, first_name, last_name
from employees
where emp_no < 20000
    and last_name IN ('Herber', 'Baek')
    or first_name = 'Shridhar';

# force evaluation grouping:
select emp_no, first_name, last_name
from employees
where emp_no < 20000
    and (
        last_name in ('herber', 'baek')
    or first_name = 'Shridhar'
    );









