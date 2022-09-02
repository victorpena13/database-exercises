use employees;

select distinct first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

select concat(last_name,' ', first_name)
from employees
where last_name like 'E%'
   or last_name like '%E';

select emp_no, last_name, first_name
from employees
where last_name like 'E%'
  and last_name like '%E'
order by emp_no asc;

select last_name
from employees
where last_name like '%q%';

select last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';

select concat(first_name, ' ', last_name, ' - ', birth_date)
from employees
where month(birth_date) = 12
    and day(birth_date) = 25;
