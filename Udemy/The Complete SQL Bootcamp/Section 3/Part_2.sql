--SQL Statements--
-- 1. Oracle isn't case sensitive
select * from employees;
SELECT * FROM employees;
Select * From Employees;
sElEcT * fROM EmpLOyEes;

-- 2. writing query into multiple lines
select * from
employees;

select *
from
employees;

select
*
from
employees;

-- 3. keywords can't be abbreviated or split
sel * from employees;

sel
ect * from employees;

select * from empl
oyees;

--4. can be terminated by a semicolon ";" or a forward slash "/" sign
select * from employees
select * from departments

select * from employees;
select * from departments;

select * from employees
;

select * from departments;

select * from employees
/

select * from departments;

-- 5. need to be at least one space between the commands
------ wrong
select    *      fromemployees;
