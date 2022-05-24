-- Provide a query that shows the total sales per country.


SELECT
    BillingCountry,
    SUM(Total) AS TotalSales
FROM Invoice
GROUP BY BillingCountry