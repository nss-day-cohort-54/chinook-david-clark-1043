SELECT 
    InvoiceId,
    Count(InvoiceId) as ItemCount
FROM InvoiceLine
GROUP BY InvoiceId