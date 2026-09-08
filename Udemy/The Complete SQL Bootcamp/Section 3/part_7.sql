-- Concatenation Operators--

-- 1. two or more strings or columns and return as a single output column
-- value
select 'My Name is Alex' from dual;

select 'My Name is Alex' from employees;

-- 2. can be done by two vertical bars (||)
select 'My Name is ' || first_name from employees;

-- this combines first_name and last_name in each row
select first_name || ' ' || last_name from employees;

-- this combines first_name and last_name in each row and used an alias for both
-- the first_name and last_name columns as one
select first_name || ' ' || last_name as "Full Name" from employees;

-- 3. w/ NULL values doesn't return NULL, it returns the other character strings
select first_name || ' ' || last_name from employees;
select first_name || ' ' || last_name as "Full Name" from employees;
select * from employees;

select 'The commission percentage is ' || commission_pct, commission_pct from employees;
select first_name || ' ' || last_name as "Full Name" from employees;

-- 4. using with aliases increases readability
select 'The commission percentage is ' || commission_pct as concatenation, commission_pct from employees;
select first_name || ' ' || last_name as "Full Name" from employees;

select * from locations;
select street_address || ',' || city || ',' || postal_code || ',' || state_province || ',' || country_id from locations;
select street_address || ',' || city || ',' || postal_code || ',' || state_province || ',' || country_id as "Full Address" 
from locations;