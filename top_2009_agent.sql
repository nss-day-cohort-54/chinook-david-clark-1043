-- Provide a query that shows total sales made by each sales agent. 
-- The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT
    full_name,
    MAX(TotalSales) as HighestSales
FROM (
    SELECT 
        e.Firstname || " " || e.LastName AS full_name,
        SUM(i.total) AS TotalSales
    FROM Invoice i
    JOIN Customer c
        ON c.customerid = i.customerid
    JOIN Employee e
        ON c.supportrepid = e.EmployeeId
    WHERE i.invoicedate < "2010-01-01 00:00:00"
        AND i.invoicedate >= "2009-01-01 00:00:00"
    GROUP BY e.employeeid
)