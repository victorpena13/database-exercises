use employees;

select *
from employees
where year(birth_date) between 1950 and 1959
    and month(birth_date) = 7
    and day(birth_date) = 4;