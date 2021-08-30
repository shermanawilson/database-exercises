USE employees;

# Joins are better ...

# Do this first, take from that then do this with that

SELECT first_name FirstName, last_name LastName, birth_date Birthdate
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;


# Codeup JavaSub-Queries
SELECT emp_no
FROM dept_manager;


SELECT first_name FirstName, last_name LastName, birth_date Birthdate
FROM employees
WHERE emp_no IN (
                 110022, 110039, 1100085
    )
LIMIT 10;


# SUB-QUERIES VERSION
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

# JOIN VERSION - Just use join's
SELECT first_name, last_name, birth_date
FROM employees
         INNER JOIN dept_manager dm on employees.emp_no = dm.emp_no
LIMIT 10;


USE join_test_db;

INSERT INTO users (name, email, role_id)
VALUES ('fer', 'fer@codeup.com', 4);
SELECT id
FROM roles
WHERE name = 'commenter';


UPDATE users
SET role_id = (SELECT id FROM roles WHERE name = 'admin')
WHERE email = 'fer@codeup.com';



USE employees;


# Find all the employees with the same hire
# date as employee 101010 using a sub-query
SELECT CONCAT(first_name, ' ', last_name) Name
FROM employees;


# Find all the employees with the same hire date as employee 101010
SELECT *
FROM employees AS emp
WHERE emp.hire_date IN (
    SELECT sub.hire_date
    FROM employees AS sub
    WHERE sub.emp_no = 101010
);


# Find all the titles held by all employees with the first name Aamod
SELECT DISTINCT t.title
FROM titles AS t
WHERE t.emp_no IN (
    SELECT emp.emp_no
    FROM employees AS emp
    WHERE emp.first_name = 'Aamod'
);


# Find all the current department managers that are female
SELECT emp.first_name, emp.last_name
FROM employees AS emp
WHERE emp.gender = 'F'
  AND (emp.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager AS dm
    WHERE CURRENT_DATE BETWEEN dm.from_date AND dm.to_date
)
    );


# BONUS # 1


SELECT dep.dept_name
FROM departments dep
WHERE dep.dept_no IN (
    SELECT dm.dept_no
    FROM dept_manager dm
    WHERE current_date BETWEEN dm.from_date AND dm.to_date
    and (dm.emp_no IN (
        SELECT emp.emp_no
        FROM employees emp
        WHERE emp.gender = 'F'
        ))
    );


#BONUS #2

SELECT emp.first_name, emp.last_name
FROM employees emp
WHERE emp.emp_no IN (
    SELECT s.emp_no
    FROM salaries s
    WHERE s.salary IN (
        SELECT MAX(sal.salary)
        FROM salaries sal
        )
    );


# Something Cool? WAAAAY Quicker

SELECT emp.first_name, emp.last_name
FROM employees emp
WHERE emp.emp_no = (
    SELECT s.emp_no
    FROM salaries s
    ORDER BY s.salary
    DESC LIMIT 1
    );


# Alternative to this with a Join because Sub took forever

SELECT emp.first_name, emp.last_name
FROM employees emp
JOIN salaries sal on emp.emp_no = sal.emp_no
ORDER BY sal.salary
DESC LIMIT 1;