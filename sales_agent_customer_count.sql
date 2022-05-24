-- Provide a query that shows how many customers 
-- are assigned to each employee. The resultant table should include:
-- Employee full name
-- Total number of customers assigned to each employee 
-- (even if it's zero)

SELECT 
    e.Firstname || " " || e.LastName AS full_name,
    CASE WHEN COUNT(c.supportrepid) ISNULL THEN 0
        WHEN COUNT(c.supportrepid) >= 0 THEN COUNT(c.SupportRepId) END AS CustomerCount
FROM Employee e
LEFT JOIN Customer c
ON c.supportrepid = e.employeeid
GROUP BY e.employeeid