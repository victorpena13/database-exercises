use employees;

select distinct first_name
from employees;
# is the same as:
select first_name
from employees
group by first_name;
