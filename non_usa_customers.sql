-- SELECT Country, COUNT(Country)
-- FROM Customer
-- GROUP BY Country

SELECT 
    Firstname || " " || LastName AS full_name,
    CustomerId,
    Country
FROM Customer
WHERE Country != "USA";