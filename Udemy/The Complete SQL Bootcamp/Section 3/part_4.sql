-- Column Aliases--
-- 1. Rename columns headings
SELECT first_name name, last_name surname, email FROM employees;

SELECT employee_id, salary + nvl(salary*commission_pct,0) + 1000, salary FROM employees;

-- 2. AS Keyword is used to increase readability
SELECT first_name AS name, last_name AS surname, email FROM employees;

SELECT employee_id, salary + nvl(salary*commission_pct,0) + 1000, salary FROM employees;

-- 3. AS keyword is useful for calculations
SELECT first_name AS name, last_name AS surname, email FROM employees;

SELECT employee_id, salary + nvl(salary*commission_pct,0) + 1000 new_salary, salary FROM employees;

-- 4. are used with the double quotation marks if our alias name contains space characters, special characters or it is used for handling
-- case-sensitivity
SELECT first_name AS "My * Name", email "E-mail" FROM employees;

SELECT employee_id, salary + nvl(salary*commission_pct,0) + 1000 new_salary, salary FROM employees;