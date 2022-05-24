-- How many Invoices were there in 2009 and 2011?

SELECT 
    CASE WHEN invoicedate BETWEEN "2009-01-01 00:00:00" AND "2010-01-01 00:00:00" THEN "2009" END AS Year,
    COUNT(invoicedate) as count
FROM invoice
WHERE invoicedate < "2010-01-01 00:00:00"
    AND invoicedate >= "2009-01-01 00:00:00";