-- top 2013 purchased track


SELECT
    Name,
    PurchaseCount
FROM (
    SELECT 
        t.name,
        COUNT(t.trackid) AS PurchaseCount
    FROM InvoiceLine il
    JOIN Invoice i
        ON i.invoiceid = il.invoiceid
    JOIN Track t
        ON t.trackid = il.trackid
    WHERE i.invoicedate < "2014-01-01 00:00:00"
    AND i.invoicedate >= "2013-01-01 00:00:00"
    GROUP BY t.trackid
)
WHERE PurchaseCount = ( 
    SELECT
        MAX(PurchaseCount) 
    FROM (
        SELECT 
            t.name,
            COUNT(t.trackid) AS PurchaseCount
        FROM InvoiceLine il
        JOIN Invoice i
            ON i.invoiceid = il.invoiceid
        JOIN Track t
            ON t.trackid = il.trackid
        WHERE i.invoicedate < "2014-01-01 00:00:00"
        AND i.invoicedate >= "2013-01-01 00:00:00"
        GROUP BY t.trackid
    )
)