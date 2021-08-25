USE employees;

# 2
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC LIMIT 10;

# 3
SELECT emp_no
FROM salaries
ORDER BY salary DESC LIMIT 5;

# 4
SELECT emp_no
FROM salaries
ORDER BY salary DESC LIMIT 5 OFFSET 45;



SELECT CONCAT('Hello ', 'Codeup', '!')
AS WelcomeMessage;


SELECT DAYOFMONTH('1990-05-03');

SELECT DAY('2017-03-25');

SELECT MONTH('2008-02-03');

SELECT YEAR('1987-01-01');

SELECT NOW();
# YYYY-MM-DD HH:MM:SS

SELECT CURDATE();
# YYYY-MM-DD

SELECT CURTIME();
# HH:MM:SS

SELECT *
FROM employees;

SELECT  UNIX_TIMESTAMP() urrentTimeInUnix

SELECT CONCAT(first_name, ' ', last_name,'s birthday is ',MONTHNAME(birth_date))
AS PeoplesBirthdays
FROM employees
LIMIT 10;
