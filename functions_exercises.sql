USE employees;

SELECT *
FROM employees
WHERE gender = 'M'
  AND (
            first_name ='Irena'
        OR first_name ='Vidya'
        OR first_name = 'Maya')
ORDER BY last_name DESC, first_name DESC;

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';


-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- OR YOU CAN USE THIS
SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name LIKE 'E%E';


-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';