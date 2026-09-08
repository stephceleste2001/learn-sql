-- DISTINCT & UNIQUE Operators--
-- 1. are used to eliminate the duplicate rows
select first_name from employees;

--- went from 107 to down to 91 rows
select distinct first_name from employees;

-- gives the same result as the DISTINCT operator
select unique first_name from employees;

-- 2. DISTINCT operator is a row-based operator. only one DISTINCT
-- operator is used in an SQL query
--- wrong!
select distinct job_id, distinct department_id from employees;
select job_id, distinct department_id, first_name from employees;

--- right!
--- reduce to 20 rows
select distinct job_id, department_id, first_name from employees;

