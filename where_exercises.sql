USE employees;

# Selects all employees with the First Names Irena, Vidya and Maya
SELECT COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


# All employees that last name start with E
SELECT COUNT(*)
FROM employees
WHERE last_name LIKE 'e%';


# All employees with a q in their last name
SELECT COUNT(*)
FROM employees
WHERE last_name LIKE '%q%';


# Find all first names with Irena , Vidya and Maya
SELECT COUNT(*)
FROM employees
WHERE gender = 'M'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'
    );


# All employees who last name starts or ends with E
SELECT COUNT(*)
FROM employees
WHERE last_name LIKE '%e'
   OR last_name LIKE 'e%';


# All employees who last name starts and ends with E
SELECT COUNT(*)
FROM employees
WHERE last_name LIKE 'e%e';

# All employees with a q in their last name but not a qu
SELECT COUNT(*)
FROM employees
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%';