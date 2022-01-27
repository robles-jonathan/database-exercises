USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;
