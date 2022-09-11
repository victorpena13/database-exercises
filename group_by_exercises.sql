use employees;

select distinct title
from titles;

select distinct last_name
from employees
where last_name like 'E%'
    and last_name like '%E';

select last_name
from employees
where last_name like 'E%'
    and last_name like '%E'
    group by last_name;

select last_name, count(last_name)
from employees
where last_name like '%Q%'
    and last_name not like 'QU%'
    group by last_name;




