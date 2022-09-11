use employees;

#aliases are used to make temporary names for joins, or to change the output ofa column's name.

select concat(first_name, ' ', last_name) as full_name
from employees
order by full_name
limit 25;

select concat(first_name, ' ', last_name) as full_name
from employees
group by full_name, last_name
order by full_name
limit 25;

select hire_date, count(*)
from employees
group by hire_date
order by count(*) desc
limit 10;
