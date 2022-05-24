-- 3 best selling artists

SELECT 
    ar.name,
    COUNT(ar.artistid) AS PurchaseCount
FROM InvoiceLine il
JOIN Track t
    ON t.trackid = il.trackid
JOIN Album al
    ON al.albumid = t.albumid
JOIN Artist ar
    ON ar.artistid = al.artistid
GROUP BY ar.artistid
ORDER BY PurchaseCount DESC
LIMIT 3
