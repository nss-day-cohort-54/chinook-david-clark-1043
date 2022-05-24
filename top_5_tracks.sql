-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
    t.name,
    COUNT(t.trackid) AS PurchaseCount
FROM InvoiceLine il
JOIN Invoice i
    ON i.invoiceid = il.invoiceid
JOIN Track t
    ON t.trackid = il.trackid
GROUP BY t.trackid
ORDER BY PurchaseCount DESC
LIMIT 5