create database project;
use project;
-----------------------------------------READ DATA-------------------------------------------------------------------------
select *from car;
--------------------------------------- TO FIND COUNT OF TOTAL NO OF CARS-------------------------------------------------------
select count(*) from car;
----------------------------------------TO FIND NO OF CARS AVAILABLE IN 2023 ------------------------------------------------------------
select count(*) from car where year=2023;
-----------------------------------------TO FIND NO OF CARS AVAILABLE IN 2020,2021,2022----------------------------------
select count(*) from car where year in (2020,2021,2022) group by year ;
--------------------------------------------TO FIND THE COUNT OF CARS WITH RESPECT TO YEAR--------------------------------
select year,count(*) from car group by year;
---------------------------------------------TO FIND HOW MANY DIESEL CARS AVAILABLE IN 2020-----------------------------------
select count(*) from car where fuel="Diesel" and year=2020;
--------------------------------------------TO FIND HOW MANY PETROL CARS AVAILABLE IN Yearly-------------------------------------
select year,count(*) from car where fuel="Petrol" group by year;
------------------------------------------- TO FIND COUNT GREATER THAN 100 BASED ON YEAR ---------------------------------------------------------------
select year,count(*) from car group by year having count(*)>100; 
-------------------------------------------TO FIND THE CAR DETAILS FROM 2015 TO 2023 
select * from car where year between 2015 and 2023;
-----------------------------TO FIND MIN,MAX,AVG SELLING PRICE-------------------------------------
select min(selling_price),max(selling_price),avg(selling_price) from car where seats=5;
-----------------------------------TO FIND THE COUNT OF SEATS WHERE KM_DRIVEN GREATER THAN OR EQUAL TO 50000-------------------------
select count(seats)from car where seats=5 and km_driven >=5000;
