-- Provide a query that shows the total number of invoices per country.
-- ambiguous does it mean billingcountry or customer country?

SELECT 
    BillingCountry AS BillingCountry,
    COUNT(BillingCountry) as InvoiceCount
FROM Invoice
GROUP BY billingcountry

-- alt for customer country
-- produces the same 
-- SELECT 
--     c.Country AS CustomerCountry,
--     COUNT(c.Country) as InvoiceCount
-- FROM Invoice i
-- JOIN Customer c
--     ON i.customerid = c.customerid
-- GROUP BY c.country
