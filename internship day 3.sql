Create database Internship_day_3

use Internship_day_3

select * from online_retail


-- find sum of total sales in 2011

SELECT round(SUM([ItemTotal]),2) AS Total_sales
FROM online_retail
WHERE YEAR(InvoiceDate) = 2011 ;

-- Find sum of total sales between 

SELECT round(SUM([ItemTotal]),2) AS Total_sales
FROM online_retail
WHERE YEAR(InvoiceDate) between 2011 and 2014 ;

-- Find distinct countries

select distinct Country from online_retail

-- Find Total sales of USA and United Kingdom together

select round(sum([ItemTotal]),2) Total_Sales from online_retail
where Country in ('USA', 'United Kingdom')


-- Invoice with Top 10 Item Total

select InvoiceNo, ItemTotal from online_retail
order by ItemTotal desc


-- return description where description starts with V and has D in it or Country ends with m 

select  Description from online_retail
where (Description like 'V%'  and Description like '%D%') or Country like '%m'

-- update table and change quantity values from negative to positive 

update online_retail
set Quantity=Quantity *(-1)
where Quantity <0 ;

-- update table and change ItemTotal values from negative to positive

update online_retail
set ItemTotal= ItemTotal*-1
where ItemTotal < 0

-- update table and change UnitPrice values from negative to positive

update online_retail
set UnitPrice= UnitPrice*-1
where UnitPrice < 0

select * from online_retail 
where CustomerID is null or InvoiceNo is null



