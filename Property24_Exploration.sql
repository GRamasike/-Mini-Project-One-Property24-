CREATE DATABASE Property24;
USE Property24;

--Property24 Intermediate SQL Practice Questions

--1. Show Gauteng properties ordered by monthly repayment.
SELECT *
FROM property24_data
WHERE PROVINCE = 'Gauteng'
ORDER BY Monthly_Repayment;

--2. Find Western Cape properties priced below R3,000,000.
SELECT *
FROM property24_data
WHERE PROVINCE = 'Western Cape' AND
PROPERTY_PRICE < 3000000;

--3. Show KwaZulu-Natal properties with 3 or more bedrooms.
SELECT *
FROM property24_data
WHERE PROVINCE = 'KwaZulu-Natal' AND
BEDROOMS >= 3;

--4. Find properties in Limpopo or Free State ordered by property price.
SELECT *
FROM property24_data
WHERE PROVINCE IN ('Limpopo','Free State')
ORDER BY PROPERTY_PRICE;

--5. Show the 10 most expensive properties.
SELECT TOP 10 *
FROM property24_data
ORDER BY PROPERTY_PRICE DESC;

--6. Show the 5 cheapest properties.
SELECT TOP 5 *
FROM property24_data
ORDER BY PROPERTY_PRICE ASC;

--7. Show the top 10 properties with the largest floor size.
SELECT TOP 10 *
FROM property24_data
ORDER BY FLOOR_SIZE DESC;

--8. Which province appears to have the highest priced properties?
SELECT TOP 1
PROVINCE
FROM property24_data
ORDER BY PROPERTY_PRICE DESC;

--9. Which cities appear to have the most affordable housing?
SELECT 
CITY,
PROPERTY_PRICE
FROM property24_data
ORDER BY PROPERTY_PRICE ASC;

--10. What minimum income is typically required for properties priced above R4,000,000?
SELECT 
Min_Gross_Monthly_Income,
PROPERTY_PRICE,
PROVINCE
FROM property24_data
WHERE PROPERTY_PRICE > 4000000;