-- Provide a query that shows each 
-- Invoice line item, 
-- with the name of the track that was purchased.

SELECT 
    il.*,
    t.name
FROM InvoiceLine il
JOIN Track t
    ON il.trackid = t.trackid