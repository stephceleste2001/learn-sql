-- Comparison Operators--
-- 1. returns employees that has a salary of more than $10,000
select * from employees where salary > 10000;

-- 2. returns employees that has a salary of less than $10,000
select * from employees where salary < 10000;

-- 3. returns employees who got hired before January 1, 2005
select * from employees where hire_date > '01-JAN-05';

-- 4. returns employees who got hired on May 21, 2007

-- 5. returns employees whose manager_id is not equal to 100
select * from employees where manager_id <> 100;