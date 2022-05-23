-- Provide a query showing only the Employees who are "Sales Agents".

-- no sales support agents, returning "Sales Support Agent"

SELECT *
FROM Employee
WHERE Title = "Sales Support Agent";