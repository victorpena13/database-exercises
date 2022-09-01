use employees;

select first_name, last_name
from employees
order by last_name;

select first_name, last_name
from employees
order by last_name desc;

select first_name, last_name
from employees
order by last_name asc;


# chaining order by clauses:

select first_name, last_name
from employees
order by last_name desc, first_name asc;