use employees;

#aliases are used to make temporary names for joins, or to change the output ofa column's name.

select concat(first_name, ' ', last_name) as full_name
from employees
limit 25;

