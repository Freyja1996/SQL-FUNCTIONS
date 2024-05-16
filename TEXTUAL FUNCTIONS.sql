-- TEXTUAL FUNCTIONS--
-- (CONCATENATE,TRIM,UPPER,LOWER,LEFT,RIGHT,MID)--
select * from hr_data;
select concat(first_name," ",last_name)
as full_name from hr_data;

select trim(first_name) from hr_data;
select upper(last_name) from hr_data;
select lower(first_name) from hr_data;
select left(hire_date,2)  from hr_data;
select right(hire_date,4)  from hr_data;
select mid(hire_date,4,2)  from hr_data;


-- DATE FUNCTION(DAY,MONTH,YEAR,QUARTER)--
select * from emp;
select Day(hire_date) as Day from emp;
select Dayname(hire_date) as Day_name from emp;
select Year(hire_date) as Year from emp;
select Month(hire_date) as Month from emp;
select Monthname(hire_date) as Month_name from emp;
select Quarter(hire_date) as Quarter from emp;
select datediff("2021/07/14","2021/04/13")
days_difference;

create view Date_Result as
select *,
Dayname(hire_date) as Day_name,
Year(hire_date) as Year,
Monthname(hire_date) as Month_name,
Quarter(hire_date) as Quarter
from emp;
select * from Date_Result

-- SQL Aggregate fuctions(sum,min,max,avg,count)--
select * from emp;
select sum(salary) as TOTAL_SALARY from emp;
select min(salary) from emp;
select max(salary) from emp;
select avg(salary) from emp;
select round(avg(salary),0) from emp;

create view Salary_Results as
select *,
sum(salary) as TOTAL_SALARY,
min(salary),
max(salary),
avg(salary),
round(avg(salary),0)
 from emp;
select * from Salary_Results