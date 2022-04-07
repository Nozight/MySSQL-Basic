-- WHERE
-- 1
select Name from product where Name like "%mountain%bike%";
-- 2
SELECT FirstName FROM adventureworks.contact where FirstName like "y%";
-- ORDER BY
-- 1
select Name, ListPrice from product order by ListPrice desc, Name limit 5;
--  OPERDADORES & JOINS
-- 1
select concat(FirstName, " ", LastName) from contact where LastName = "johnson";
-- 2
select ListPrice, Color from product where (ListPrice < 150 and Color = "Red") or (ListPrice > 500 and Color = "Black");
-- F. AGREGACION
-- 1
select max(OrderDate) from salesorderheader; -- Max busca el valor maximo, en este caso, la fecha mas reciente
select OrderDate from salesorderheader order by OrderDate desc limit 1; 
-- 2
select min(ListPrice), Name from product where ListPrice != 0; 
-- GROUP BY 
-- 1 
select ProductID, OrderQty from salesorderdetail group by ProductID;
-- HAVING 
select SalesOrderID, OrderQty from salesorderdetail having OrderQty > 20;
-- JOINS
select LoginID, TerritoryID, Bonus, BusinessEntityID from employee e
join salesperson s on s.SalesPersonID = e.ManagerID;
