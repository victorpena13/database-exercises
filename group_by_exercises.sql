use employees;

select distinct title
from titles;

select distinct last_name
from employees
where last_name like 'E%'
  and last_name like '%E';
