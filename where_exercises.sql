USE employees;

# Selects all employees with the First Names Irena, Vidya and Maya
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


# All employees that last name start with E
SELECT last_name
FROM employees.employees
         AS E
WHERE E.last_name LIKE 'e%';


# All employees with a q in their last name
SELECT last_name
FROM employees.employees
         AS E
WHERE E.last_name LIKE '%q%';


# Find all first names with Irena , Vidya and Maya
SELECT emp_no, first_name, last_name, gender
FROM employees.employees
         AS E
WHERE gender = 'M'
   AND (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya'
    );


# All employees who last name starts or ends with E
SELECT last_name
FROM employees.employees
         AS E
WHERE E.last_name LIKE 'e%%e';


# All employees who last name starts and ends with E
SELECT last_name
FROM employees.employees
         AS E
WHERE E.last_name LIKE 'e%e';

# All employees with a q in their last name but not a qu
SELECT last_name
FROM employees
WHERE last_name NOT LIKE '%qu%' and last_name LIKE '%q%' ;