USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
-- Modify your first query to order by first name. The first result should be Irena Pelz and the last result should be Vidya Awdeh.
-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT *
FROM employees
WHERE gender = 'M'
        AND (
      first_name ='Irena'
   OR first_name ='Vidya'
   OR first_name = 'Maya')
ORDER BY last_name, first_name;

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';


-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- OR YOU CAN USE THIS
SELECT *
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