-- Arithmetic --
-- 1. used to perform arithmetic operations in SQL
-- 2. can contain column names, numeric numbers, and arithmetic operators
--- multiplication and division operations are performed before the addition
--- and subtraction operations
--- parentheses has the highest precedence
--- using parentheses increases the readability of the code
SELECT * FROM employees;
select employee_id, salary, salary+100*12 as annual_salary from employees;

select employee_id, salary, (salary+100)*12 as annual_salary from employees;

select employee_id, salary, salary+100*12 as annual_salary from employees;

-- 3. artihmetic operations with date values return new dat values
--- can also perform arithmetic operations by using dates * numbers together
select employee_id,salary, (salary+100)*12 as annual_salary from employees;
select sysdate from dual;
select sysdate + 4 from dual;

select employee_id, hire_date from employees;

select employee_id, hire_date, hire_date+5 from employees;

-- 4. arithmetic operations with NULL vales return null
select employee_id, hire_date, hire_date+5 from employees;
select * from employees;

select salary, salary*commission_pct from employees;

select salary, salary*commission_pct, commission_pct from employees;