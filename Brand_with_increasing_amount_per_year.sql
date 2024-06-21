Question) Write a query to fetch the record of brand whose amount is increasing very year?

Table: brands

year 	brand	amount
2018	nokia	20000
2019	nokia	25000
2020	nokia	15000
2018	samsung	20000
2019	samsung	25000
2020	samsung	30000
2017	apple	40000
2018	apple	35000
2019	apple	45000

Solution
=========
WITH CTE as (
SELECT *,
        (case when amount < lead(amount,1,amount+1) over(partition by brand order by year) 
                  then 1 
             else 0 
        end ) as flag,
from brands
)
SELECT * 
from brand 
where brand not in (select brand from CTE where flag=0)

OUTPUT:
========
year	brand	amount
2018	samsung	20000
2019	samsung	25000
2020	samsung	30000
