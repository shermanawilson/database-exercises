CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');



INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

USE codeup_newTestDB_db;

# Inner Join
SELECT A.name, A.email, B.name
FROM users
         AS A
         INNER JOIN roles B ON A.role_id = B.id;

# Left Join (All The Users)
SELECT A.name, A.email, B.name
FROM users
         AS A
         LEFT JOIN roles B ON A.role_id = B.id;

# Right Join
SELECT A.name, A.email, B.name
FROM users
         AS A
         RIGHT JOIN roles B ON A.role_id = B.id;

#
SELECT A.name, A.email, B.name
FROM users
         AS A
         LEFT JOIN roles B ON A.role_id = B.id;

# Finds Jane and Mike
SELECT A.name, A.email, B.name
FROM users
         AS A
         LEFT JOIN roles B ON A.role_id = B.id
WHERE B.name IS NULL;


# Finds One Person Sally
SELECT A.name, A.email, B.name
FROM users
         AS A
         LEFT JOIN roles B ON A.role_id = B.id
WHERE A.email LIKE 's%';

DESCRIBE employees.dept_emp;

USE employees;


# Grab all dept names that Georgi's worked for
SELECT E.first_name, E.last_name, dept_emp.from_date, dept_emp.to_date, D.dept_name
FROM employees AS E
         INNER JOIN employees.dept_emp
                    ON E.emp_no = dept_emp.emp_no
         INNER JOIN employees.departments D ON dept_emp.dept_no = D.dept_no
WHERE E.emp_no = 10001;



# Grab all dept names FOr everyone who's last name starts with D
SELECT E.first_name, E.last_name, dept_emp.from_date, dept_emp.to_date, D.dept_name
FROM employees AS E
         INNER JOIN employees.dept_emp
                    ON E.emp_no = dept_emp.emp_no
         INNER JOIN employees.departments D ON dept_emp.dept_no = D.dept_no
WHERE E.last_name LIKE 'D%';


# Grab all dept names that Georgi's worked for
SELECT CONCAT(D.dept_name) DepartmentName, CONCAT(D.dept_no) DepartmentManager
FROM employees AS E

         INNER JOIN employees.dept_emp
                    ON E.emp_no = dept_emp.emp_no
         INNER JOIN employees.departments D ON dept_emp.dept_no = D.dept_no
WHERE E.emp_no = 10001;


#  WALK THROUGH






