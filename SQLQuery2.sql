--select * from sales.customers
--select first_name,last_name, email from sales.customers
--select first_name + ' ' + last_name as "Fullname" from sales.customers
--select s.email from sales.customers s

/* Sorting of data
-Order by Clause
-Order it in ascending
-Order it in descending
*/
/*
select first_name,last_name,city,zip_code
from sales.customers
order by first_name desc,last_name desc
*/

--Filtering : Where clause
--select * from sales.customers where zip_code = '12010'
--select * from sales.customers where zip_code != '12010' order by zip_code asc

/*select * from production.stocks where quantity >= 20 order by quantity;
select * from production.stocks where quantity < 20 
and quantity>0 and store_id = 1
order by quantity*/
/*
select state, first_name from sales.customers
where city = 'Apple Valley' or (state != 'CA' and state != 'NY')
select distinct state, city from sales.customers
*/

/*select state, first_name, city from sales.customers
where state not in ('CA','NY')*/

/*select state, first_name, city from sales.customers
where state in ('CA','NY')*/

--select * from sales.customers where phone is null
--select * from sales.customers where phone is not null

--select * from sales.customers where first_name like 'An%'
--select * from sales.customers where first_name like '%in'
--select * from sales.customers where first_name like '%St%'
--select * from sales.customers where first_name like '____St%'
--select * from sales.customers where first_name like '____St'
--select * from sales.customers where first_name like 'ER__St'


/*select * from production.products
where model_year not between 2016 and 2018*/

/* Aggregation and filtering: Group by and Having Clause */
/* Group Functions */

--select count(*) from production.products
--select count(model_year), count(distinct model_year) from production.products
/*
select count(*)  "total products", max(list_price) "Maximum price", min(list_price) "Maximum price", avg(list_price) "Average price"
from production.products where model_year = 2019

select model_year, count(*)  "total products", max(list_price) "Maximum price", min(list_price) "Maximum price", avg(list_price) "Average price"
from production.products group by model_year
*/
/*
SELECT model_year, count(model_year) "no of products",
sum(list_price) "total price",avg(list_price) as "Average Price"
from production.products
group by model_year
having noofproducts > 50

select product_name, model_year,list_price,
avg(list_price) over (partition by model_year) as "avgprice",
list_price-avd(list_price) over (partition by model_year) as "difference"
from production.products
where model_year =2016
--having avg(list_price)>750 --having only works wih groupby
*/

--select TOP(10) * from production.products ORDER BY MODEL_YEAR DESC
--SELECT TOP 20 PERCENT * FROM PRODUCTION.PRODUCTS

/*
SELECT * FROM (SELECT PRODUCT_NAME, MODEL_YEAR, CATEGORY_ID, LIST_PRICE
FROM PRODUCTION.PRODUCTS WHERE MODEL_YEAR = 2016) AS test
where test.category_id=3
*/

/* ----------------------------------------------------------------*/

/*
select format(9845763210, '###-###-####')
select list_price,
format(list_price, N'C',N'en-In') from production.products
*/

--select format(GETDATE(),'yyyy-MMM-dd')
--select * from production.products
--select * from production.categories
--select ltrim(category_name), upper(category_name),left(category_name,5),len(category_name), right(category_name,5)
--from production.categories

--set category_name = '  ' +category_name+

--select category_name, patindex('%Bi_y%',category_name) from production.categories
/*
select category_name,replace(category_name, 'Bikes', 'MotorBikes'),
reverse (category_name) "Reversed"
from production.categories*/


--update production.categories
--set category_name = trim(category_name)

--select list_price, len(list_price), str(list_price)
--from production.products

--select substring(product_name,5,10) from production.products


--select current_timestamp, GETDATE()

--select dateadd(year,2,getdate()) "2 years after current date",
--dateadd(YEAR,-2,getdate()) "2 years before curretn date"

--select dateadd(month,2,getdate()) "2 years after current date",
--dateadd(month,-2,getdate()) "2 years before current date"
--Day, week, hour, minute, second, millisecond

--select * from dbo.emp
--select hiredate,
--datediff(Year,hiredate,getdate()),
--datediff(Month,hiredate,getdate()),
--Datename(Month,hiredate),
--Datename(Weekday,hiredate)
--from emp

--select isdate('2021-12-23'), sysdatetime(),getdate()

--select * from emp
--select sal, comm, round(sal,0) from emp
--select list_price, round(list_price,1),
--ceiling(list_price),
--floor(list_price),
--abs(-10)
--from production.products


--select rand()*10+1

--select sal, comm, iif (comm > 0.00, sal+comm, sal) as TOTAL_SALARY
--from emp

--select sal, isnull(comm,0.00), iif (comm > 0.00, sal+comm, sal) as TOTAL_SALARY
--from emp

--select isnull(phone, 'phone not available') from sales.customers

select USER_NAME()
select SYSTEM_USER

--ISNUMERIC

select ename,
CASE
When Sal >=8000 AND SAl<=10000 then 'Director'
WHen SAl >+5000 AND SAl <8000 Then 'Senior Consultant'
Else 'Director'
end as Designation
from Emp

/*------------------  Tutorials teacher -------------------*/