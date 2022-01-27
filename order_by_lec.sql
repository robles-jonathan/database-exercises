# SELECT column FROM table ORDER BY column_name [ASC|DESC]

-- Sort by ASCENDING ORDER
SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name;

-- Sort by DESCENDING ORDER
SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name DESC;

-- Sort by Descending ORDER last_name and by ASCENDING ORDER first_name
SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name DESC, first_name ASC;

-- Sort by Descending ORDER last_name and by ASCENDING ORDER first_name AND then Descending ORDER of emp_no
SELECT first_name, last_name, emp_no
FROM employees.employees
ORDER BY last_name DESC, first_name ASC, emp_no DESC;

