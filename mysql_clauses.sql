USE employees;

# This will grab any record that has an and then a u in the last name

SELECT *
FROM employees.employees
         AS E
WHERE E.last_name LIKE '%a%o%';

# This will grab any last name that starts with a v
SELECT last_name
FROM employees.employees
         AS E
WHERE E.last_name LIKE 'v%';


# This will grab any last name that end with an e
SELECT last_name
FROM employees.employees
         AS E
WHERE E.last_name LIKE '%e';


# This will grab any last name that contains the sequence of gh
# Regardless of if it starts or ends
SELECT last_name
FROM employees.employees
         AS E
WHERE E.last_name LIKE '%gh%';


SELECT *
FROM employees
WHERE birth_date BETWEEN '1964-06-02' and '1964-06-03';


# Shorter Version of the one bellow it , IN is like OR
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');



SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name = 'Herber' OR last_name = 'Dredge';


SELECT emp_no, title, to_date
FROM titles
WHERE to_date IS NOT NULL;



