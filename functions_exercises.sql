USE employees;

# All employees who last name starts and ends with E, Concat first and last names together
SELECT CONCAT(first_name, last_name)
FROM employees
WHERE last_name LIKE 'e%e';

# Select all employees who's birthday on christmas
SELECT COUNT(*)
FROM employees
WHERE MONTH(birth_date) = (12)
  AND DAY(birth_date) = (25);


# All employees hired in the 90's born on Christmas
SELECT COUNT(*)
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = (12)
  AND DAY(birth_date) = (25);


# Employees Hired on Christmas in the 90's on Christmas, Oldest employee hired
SELECT first_name, last_name
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = (12)
  AND DAY(birth_date) = (25)
ORDER BY hire_date DESC
LIMIT 1;


# All employees hired in the 90's born on Christmas
SELECT *, DATEDIFF(CURRENT_DATE(), hire_date) daysAtTheCompany
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990
    AND (1999)
  AND MONTH(birth_date) = (12)
  AND DAY(birth_date) = (25);



