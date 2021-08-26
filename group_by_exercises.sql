USE employees;

SELECT COUNT(*)
FROM employees;

# How Many Employees Without An A in their First Name
SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

# How Many Of Each Specific First Name Is There
SELECT first_name,
       COUNT(first_name)
           AS NumberOfRecordsWithThisFirstName
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

# How Many People Hired Each Day For 10 Days
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

# 2
SELECT title
FROM titles
GROUP BY title
LIMIT 7;


# 3
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY last_name;

# 4
SELECT COUNT(DISTINCT first_name, last_name)
FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY last_name;

# 5
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name;

# 6
SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

# 7
SELECT COUNT(gender), gender
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
GROUP BY gender
ORDER BY gender;
