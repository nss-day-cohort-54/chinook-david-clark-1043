-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT 
    i.total,
    c.Firstname || " " || c.LastName AS CustomerName,
    c.country,
    e.Firstname || " " || e.LastName AS SalesAgentName
FROM Invoice i
JOIN Customer c
    ON c.customerid = i.CustomerId
JOIN Employee e
    ON c.SupportRepId = e.employeeid