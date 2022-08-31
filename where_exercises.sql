use employees;

# select first_name
# from employees
# where first_name in ('Irena', 'Vidya', 'Maya');

select last_name, first_name
from employees
where last_name REGEXP '^E';