-- country spent the most

SELECT
    BillingCountry,
    MAX(TotalSales) as TotalSales
FROM (
SELECT
    BillingCountry,
    SUM(Total) AS TotalSales
FROM Invoice
GROUP BY BillingCountry
)