SELECT 
    il.*,
    t.name,
    art.name
FROM InvoiceLine il
JOIN Track t
    ON il.trackid = t.trackid
JOIN Album a
    ON a.albumid = t.albumid
JOIN Artist art
    On art.artistid = a.artistid