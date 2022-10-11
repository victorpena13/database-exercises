use employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' and gender = 'F';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, t.title
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN titles as t
              on t.emp_no = de.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

SELECT distinct t.title, count(t.title) as 'Count'
FROM employees as e
         JOIN titles as t
              on t.emp_no = e.emp_no
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' and de.to_date = '9999-01-01' and d.dept_name = 'Customer Service'
group by title;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_manager, d.dept_name, s.salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN salaries as s
              on s.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' and s.to_date = '9999-01-01';
