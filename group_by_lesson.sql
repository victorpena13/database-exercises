use employees;

select distinct first_name
from employees;
# is the same as:
select first_name
from employees
group by first_name;

# multiple columns:
select last_name, first_name
from employees
group by last_name, first_name;
## the above query will show us all of the unique combinations of first and last names,
# grouped by their last name sorted alphabetically, and within each last name group, sorted by first name.
