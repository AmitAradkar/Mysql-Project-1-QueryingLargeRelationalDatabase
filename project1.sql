-- 3. Perform the following with help of the above

-- a)Get all the details from the person table including email ID, phonenumber and phone number type

select top 1 * from Person.Person
select top 1 * from [Person].[EmailAddress]
select top 1 * from [Person].[PersonPhone]
select top 1 * from [Person].[PhoneNumberType]

select *,e.EmailAddressID,ph.PhoneNumber,pt.Name  from Person.Person p
inner join  Person.EmailAddress e on  p.BusinessEntityID = e.BusinessEntityID 
inner join Person.PersonPhone ph on p.BusinessEntityID = ph.BusinessEntityID
inner join Person.PhoneNumberType pt on ph.PhoneNumberTypeID = pt.PhoneNumberTypeID


-- b. Get the details of the sales header order made in May 2011

select * from [Sales].[SalesOrderHeader]

select * from [Sales].[SalesOrderHeader] where MONTH(OrderDate)=6 AND YEAR(OrderDate) = 2011



-- c. Get the details of the sales details order made in the month of May 2011

select * from [Sales].[SalesOrderDetail]
select * from [Sales].[SalesOrderHeader]


select * from [Sales].[SalesOrderDetail] AS SOD
INNER JOIN
[Sales].[SalesOrderHeader] AS SOH
ON SOD.SalesOrderID=SOH.SalesOrderID
WHERE MONTH(OrderDate)= 5 AND YEAR(ORDERDATE)=2011

-- d. Get the total sales made in May 2011

select * from [Sales].[SalesOrderHeader]
select * from [Sales].[SalesOrderDetail]

SELECT SUM(LINETOTAL) as 'Total Sales'FROM [Sales].[SalesOrderDetail]
WHERE SalesOrderID IN(SELECT SalesOrderID FROM [Sales].[SalesOrderHeader]
WHERE MONTH(OrderDate)= 5 AND YEAR(ORDERDATE)=2011)

-- e. Get the total sales made in the year 2011 by month order by increasing sales

SELECT MONTH(ORDERDATE) as 'Month',SUM(TotalDue) AS SALES_VALUE FROM [Sales].[SalesOrderHeader]
WHERE YEAR(ORDERDATE)=2011
GROUP BY MONTH(ORDERDATE)
ORDER BY SALES_VALUE DESC



-- f. Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'select top 100 * from Person.Person where FirstName='Gustavo' and LastName ='Achong'select top 100  * from [Sales].[SalesOrderHeader]select top 100 * from [Sales].[Customer]
select sum(a.subtotal) as total_sales  
from [Sales].[SalesOrderHeader] a
join [Sales].[Customer] b on a.CustomerID = b.CustomerID
join [Person].[Person] c on b.personid = c.businessentityid
where FirstName = 'gustavo' and LastName = 'achong'