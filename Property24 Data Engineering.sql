--PROPERTY24 SQL PRACTICE QUESTIONS

--1. Display all properties in the database.
SELECT *
FROM property_24;

--2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.
SELECT
CITY,
PROVINCE,
PROPERTY_PRICE
FROM property_24;

--3. List all distinct provinces in the table.
SELECT DISTINCT
PROVINCE
FROM property_24;

--4. Find all properties located in Gauteng.
SELECT *
FROM property_24
WHERE PROVINCE = 'Gauteng';

--5. Show properties priced under R1,500,000.
SELECT *
FROM property_24
WHERE PROPERTY_PRICE < '1500000';

--6. List properties with more than 3 bedrooms.
SELECT *
FROM property_24
WHERE BEDROOMS > '3';

--7. Find properties with parking for at least 2 cars.
SELECT *
FROM property_24
WHERE PARKING > = '2';

--8. Show properties where the monthly repayment is greater than R25,000.
SELECT *
FROM property_24
WHERE PROPERTY_PRICE > '25000';

--9. Show all properties ordered by property price from highest to lowest.
SELECT *
FROM property_24
ORDER BY PROPERTY_PRICE DESC;

--10. List properties ordered by floor size from smallest to largest.
SELECT *
FROM property_24
ORDER BY FLOOR_SIZE ASC;

--11. Show Gauteng properties ordered by monthly repayment.
SELECT *
FROM property_24
WHERE PROVINCE = 'Gauteng'
ORDER BY Monthly_Repayment;

--12. Find Western Cape properties priced below R3,000,000.
SELECT *
FROM property_24
WHERE PROVINCE = 'Western Cape' AND
PROPERTY_PRICE < '3000000';

--13. Show KwaZulu-Natal properties with 3 or more bedrooms.
SELECT *
FROM property_24
WHERE PROVINCE = 'KwaZulu-Natal' AND
BEDROOMS > '3' ;

--14. Find properties in Limpopo or Free State ordered by property price.
SELECT *
FROM property_24
WHERE PROVINCE IN ('Limpopo','Free State')
ORDER BY PROPERTY_PRICE;

--15. Show the 10 most expensive properties.
SELECT TOP 10 *
FROM property_24
ORDER BY PROPERTY_PRICE DESC;

--16. Show the 5 cheapest properties.
SELECT TOP 5 *
FROM property_24
ORDER BY PROPERTY_PRICE ASC;

--17. Show the top 10 properties with the largest floor size.
SELECT top 10 *
FROM property_24
ORDER BY FLOOR_SIZE DESC;

--18. Which province appears to have the highest priced properties?
SELECT TOP 1 *
FROM property_24
ORDER BY PROPERTY_PRICE DESC;

--19. Which cities appear to have the most affordable housing?
SELECT *
FROM property_24
ORDER BY PROPERTY_PRICE ASC;

--20. What minimum income is typically required for properties priced above R4,000,000?
SELECT TOP 1 *
FROM property_24
WHERE PROPERTY_PRICE > '4000000'
ORDER BY PROPERTY_PRICE;