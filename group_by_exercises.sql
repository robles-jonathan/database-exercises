USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name
ORDER BY last_name;
