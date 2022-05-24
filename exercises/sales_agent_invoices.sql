-- Provide a query that shows the invoices 
-- associated with each sales agent. 
-- The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT 
    e.Firstname || " " || e.LastName AS full_name,
    i.invoiceid
FROM Invoice i
JOIN Customer c
    ON c.customerid = i.CustomerId
JOIN Employee e
    ON c.SupportRepId = e.employeeid