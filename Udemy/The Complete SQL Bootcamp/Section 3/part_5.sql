--Quote (O)--
select * from dual;

select 'My Name is Adam' as "Output" from dual;

-- 1. quotation mark is used to increase readability and usuability
select q'[My Name is Adam]' as "Quote Operator" from dual;
select q'[I'm using quote operator in SQL statements]' as "Quote Operator" from dual;
--- vs
select 'I''m using quote operator in SQL statements' as "Output" from dual;

-- 2. can used any character as quotation mark delimiter
--- ([], {}, (), <,>, or even any character like 'A', '*'...
--- usually, [] is used as quotation mark delimiter
select q'[My Name is Adam]' as "Quote Operator" from dual;
select q'<I'm using quote operator in SQL statements>' as "Quote Operator" from dual;

select q'[My Name is Adam]' as "Quote Operator" from dual;
select q'dI'm using quote operator in SQL statementsd' as "Quote Operator" from dual;