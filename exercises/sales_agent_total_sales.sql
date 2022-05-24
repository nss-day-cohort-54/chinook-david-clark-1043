-- Provide a query that shows total sales made by each sales agent. 
-- The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT 
    e.Firstname || " " || e.LastName AS full_name,
    SUM(i.total) AS TotalSales
FROM Invoice i
JOIN Customer c
    ON c.customerid = i.customerid
JOIN Employee e
    ON c.supportrepid = e.EmployeeId
GROUP BY e.employeeid