-- Provide a query that shows the most purchased Media Type.

SELECT 
    mt.name,
    COUNT(t.mediatypeid) AS PurchaseCount
FROM InvoiceLine il
JOIN Track t
    ON t.trackid = il.trackid
JOIN MediaType mt
    ON t.mediatypeid = mt.mediatypeid
GROUP BY t.mediatypeid
ORDER BY COUNT(t.mediatypeid) DESC
LIMIT 1