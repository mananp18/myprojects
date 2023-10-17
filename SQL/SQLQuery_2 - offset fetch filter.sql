--A basic query as part of basic  SQL fundamentals course

SELECT 
SalesOrderNumber As InvoiceNumber,
OrderDate,
SUM(SalesAmount) AS InvoiceSubtotatl,
SUM(TaxAmt) AS TaxAmt,
SUM(OrderQuantity) AS TotalQuantity,
SUM(SalesAmount) + SUM(TaxAmt) AS InvoiceTotal

FROM FactInternetSales 
where SalesTerritoryKey = 6

Group By SalesOrderNumber, OrderDate 
HAVING SUM(SalesAmount) > 1000

Order by InvoiceSubtotatl desc

OFFSET 2 rows FETCH NEXT 10 rows only