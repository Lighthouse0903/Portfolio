select * from Finance

------Segment--------

-- Segment table
select
	Segment,
	round(sum(Units_Sold), 2) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(COGS), 2) as COGS,
	round(sum(Profit), 2) as Profit
from Finance
group by Segment

--Profit Segment
select
	Profit_Loss_Non,
	count(Segment) as Total_Segment
from Finance
group by Profit_Loss_Non

-----Country-----
select
	Country,
	round(sum(Units_Sold), 2) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(COGS), 2) as COGS,
	round(sum(Profit), 2) as Profit
from Finance
group by Country


-----Product-----
select
	Product,
	round(sum(Units_Sold), 2) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(COGS), 2) as COGS,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
group by Product


-----Discount Band-----
select
	Discount_Band,
	COUNT(Discount_Band) as Amount,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit
from Finance
group by Discount_Band
order by Units_Sold desc


-----Month/Year-----

--2013
select
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2013
group by Month_Name, Year(Date), Month_Number
order by Month_Number asc

--2014
select
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2014
group by Month_Name, Year(Date), Month_Number
order by Month_Number asc


-----Month/Year per Country-----

--Canada-2013
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2013 and Country = 'Canada'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--Canada-2014
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2014 and Country = 'Canada'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--Mexico-2013
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2013 and Country = 'Mexico'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--Mexico-2014
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2014 and Country = 'Mexico'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--France-2013
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2013 and Country = 'France'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--France-2014
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2014 and Country = 'France'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--Germany-2013
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2013 and Country = 'Germany'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--Germany-2014
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2014 and Country = 'Germany'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--United States of America-2013
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2013 and Country = 'United States of America'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc

--United States of America-2014
select
	Country,
	YEAR(Date) as Year,
	Month_Name,
	Month_number,
	sum(Units_Sold) as Units_Sold,
	round(sum(Sales), 2) as Sales,
	round(sum(Profit), 2) as Profit,
	round((sum(Profit)/SUM(Sales))*100, 2) as Gross_Profit_Margin
from Finance
where Year(Date) = 2014 and Country = 'United States of America'
group by Month_Name, Year(Date), Month_Number, Country
order by Month_Number asc