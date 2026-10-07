Create database Imetadb2

--Use Imetadb2 go 

--Create table and name of columns 
Create table bdaclass2 (
studentid int, 
FirstName varchar(25),
LastName varchar(25),
DateofBirth date
)

select * from bdaclass2

--Insert information into the table
insert into bdaclass2 values
(1, 'John','Doe','2005-09-15'),
(2, 'Jane', 'Smith','2004-04-12'),
(3, 'Micheal', 'Johnson', '2005-11-30'),
(4, 'Emily', 'Davis', '2005-02-17'),
(5, 'David', 'Brown', '2004-08-04'); 

--select everything from the table 
select * from bdaclass2

select * from [retailsdata (1)]

--Add up the value of the quantity column from the retailsdata data
select sum (Quantity) from [retailsdata (1)]

 
-- Give the total quantity from the previous code a column name 
select sum (Quantity) as Total_Quantity from [retailsdata (1)]


--Give how many values we have in the new Total_Quantity column
select count (Quantity) as Total_Count from [retailsdata (1)]


--Give the avg of quantity
select avg (Quantity) as Avg_Quantity from [retailsdata (1)]

--Give the max quantity
select max (Quantity) as Max_Quantity from [retailsdata (1)]

--Give the min of the quantity colmn 
select min (Quantity) as Min_Quantity from [retailsdata (1)]



--Select customer name and that customers total quantity 
select [Customer_Name], sum (Quantity) as Total_Quantity
from [retailsdata (1)]
Group by [Customer_Name]



--Give me total quantity by the region 
select [Region], sum (Quantity) as Total_Quantity
from [retailsdata (1)]
Group by [Region]


-- Give me the region and total quantity and put in desc order 
select [Region], sum (Quantity) as Total_Quantity
from [retailsdata (1)]
Group by [Region]
Order by sum (Quantity) desc



--List the amount of orders from each customer by name 
select [Customer_Name], sum (Quantity) as Total_Quantity
from [retailsdata (1)]
Group by [Customer_Name]
Order by sum(Quantity)


-- Find customers with a total quantity of 100 or more
select [Customer_Name], sum (Quantity) as Total_Quantity
from [retailsdata (1)]
Group by [Customer_Name]
Having sum(Quantity) >= 100
Order by sum(Quantity)