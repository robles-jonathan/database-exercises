USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name
ORDER BY last_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';

SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
