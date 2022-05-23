-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country

SELECT 
    c.Firstname || " " || c.LastName AS full_name,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Invoice i
JOIN Customer c
ON c.customerid = i.customerid
WHERE c.country = "Brazil";