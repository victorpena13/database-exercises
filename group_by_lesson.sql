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
# the above query will show us all of the unique combinations of first and last names,
# grouped by their last name sorted alphabetically, and within each last name group, sorted by first name.


# aggregate functions:
# works with all data across all the rows in our result.
# count function

select count(*)
from employees;

select count(first_name)
from employees
where first_name not like '%a%';

# using group by with aggregate functions

select first_name, count(first_name)
from employees
where first_name not like'%a%'
group by first_name;
