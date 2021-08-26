USE employees;

# 2
SELECT title
FROM titles
GROUP BY title;


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
