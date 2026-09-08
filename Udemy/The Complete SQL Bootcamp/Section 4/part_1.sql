-- WHERE Clause--
-- 1. limits the rows by a query

-- 2. used with comparison operators (-, <,>, <=, >=, <>, !=); BETWEEN ... AND,
-- IN, LIKE, & NULL; (AND, NOT, OR operators)
SELECT * FROM employees;
-- returns employees who have a salary that is more than $10,000
SELECT * FROM employees WHERE salary > 10000;

-- returns employees who has IT job id
SELECT * FROM employees WHERE job_id = 'IT_PROG';