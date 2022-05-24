-- Provide a query that shows all Invoices. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice


SELECT
    i.invoiceid,
    COUNT(il.invoiceid) AS ItemCount
FROM Invoice i
JOIN InvoiceLine il
    ON il.invoiceid = i.invoiceid
GROUP BY i.invoiceId