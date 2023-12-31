SELECT CustomerKey as CustomerID, SUM(SalesAmount) as SalesAmount

FROM FactInternetSales

WHERE YEAR(OrderDate) > 2010

Group BY CustomerKey

HAVING SUM(SalesAmount) > 10000

ORDER BY SalesAmount DESC