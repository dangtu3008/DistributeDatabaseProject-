create database BookManagement
select AuthorID, Genre into BookManagement.dbo.AUTHOR_Genre from [MAIN].BookManagement.dbo.AUTHOR
select CustomerID, Address into BookManagement.dbo.CUSTOMERS_Address from [MAIN].BookManagement.dbo.CUSTOMERS
select * from BookManagement.dbo.AUTHOR_Genre
select * from BookManagement.dbo.CUSTOMERS_Address
select * into BookManagement.dbo.BOOKSTOCK_HCMNoMoreThan60000 from [MAIN].BookManagement.dbo.BOOKSTOCK where BranchID = 'B1' and UnitPrice <= 60000

select * into BookManagement.dbo.ORDERS_HCMBefore2021 from [MAIN].BookManagement.dbo.ORDERS where BranchID = 'B1' and OrderDate < '1-1-2021'
select * from BookManagement.dbo.ORDERS_HCMBefore2021
select * into BookManagement.dbo.ORDERS_HanoiBefore2021 from [MAIN].BookManagement.dbo.ORDERS where BranchID = 'B0' and OrderDate < '1-1-2021'
select * from BookManagement.dbo.ORDERS_HanoiBefore2021