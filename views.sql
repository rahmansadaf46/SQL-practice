-- Active: 1747563587031@@127.0.0.1@5432@ph

SELECT * from employees;

CREATE View dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name;

SELECT * from dept_avg_salary;

CREATE VIEW view_test
AS
SELECT employee_name, salary, department_name 
FROM employees 
WHERE department_name in 
(SELECT department_name FROM employees WHERE department_name LIKE '%R%');



SELECT * from view_test;


-- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction