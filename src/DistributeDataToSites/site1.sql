drop database BookManagement
select * from [MAIN].BookManagement.dbo.BOOKSTOCK
create database BookManagement
go
select AuthorID, AuthorName, Sex, Nationality, DOB into BookManagement.dbo.AUTHOR_No_Genre from [MAIN].BookManagement.dbo.AUTHOR
select * from BookManagement.dbo.AUTHOR_No_Genre

select CustomerID, CustomerName, City, FAX, Phone into BookManagement.dbo.CUSTOMERS_No_Address from [MAIN].BookManagement.dbo.CUSTOMERS
select * from BookManagement.dbo.CUSTOMERS_No_Address

select * into BookManagement.dbo.BOOKSTOCK_HanoiMoreThan60000 from [MAIN].BookManagement.dbo.BOOKSTOCK where BranchID = 'B0' and UnitPrice > 60000
select * into BookManagement.dbo.BOOKSTOCK_HCMMoreThan60000 from [MAIN].BookManagement.dbo.BOOKSTOCK where BranchID = 'B1' and UnitPrice > 60000

select * into BookManagement.dbo.ORDERS_HanoiLater2021 from [MAIN].BookManagement.dbo.ORDERS where BranchID = 'B0' and OrderDate >= '1-1-2021'
select * from BookManagement.dbo.ORDERS_HanoiLater2021

select * into BookManagement.dbo.BRANCH from [MAIN].BookManagement.dbo.BRANCH
select * into BookManagement.dbo.CATEGORIES from [MAIN].BookManagement.dbo.CATEGORIES
select * into BookManagement.dbo.PUBLISHINGCOMPANY from [MAIN].BookManagement.dbo.PUBLISHINGCOMPANY
