use employees;

select first_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select last_name, first_name
from employees
where last_name like 'E%'
   or last_name like '%E';

select last_name, first_name
from employees
where last_name like 'E%'
  and last_name like '%E';

select last_name
from employees
where last_name like '%q%';

select last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';
