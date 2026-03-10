USE Property24;
--SECTION 1 – COUNT Aggregations (10 Questions) 
SELECT *
FROM property24_data;

--1. How many total properties are in the database?
SELECT
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data;

--2. How many properties are listed in each province? 
SELECT
PROVINCE,
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
GROUP BY PROVINCE ;

--3. How many properties are listed in each city? 
SELECT
CITY,
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
GROUP BY CITY;

--4. How many properties have more than 2 bedrooms? 
SELECT
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
WHERE BEDROOMS > 2;

--5. How many properties have 2 or more bathrooms? 
SELECT
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
WHERE BATHROOMS >= 2;

--6. How many properties have parking for at least 2 cars? 
SELECT
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
WHERE PARKING >= 2;

--7. How many properties are priced above R3,000,000? 
SELECT
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
WHERE PROPERTY_PRICE > 3000000;

--8. How many properties are in Gauteng?
SELECT
PROVINCE,
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
WHERE PROVINCE = 'Gauteng'
GROUP BY PROVINCE;

--9. How many properties per province have floor size greater than 200? 
SELECT
PROVINCE,
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
WHERE FLOOR_SIZE > 200
GROUP BY PROVINCE;

--10. How many distinct provinces are in the table?
SELECT
COUNT (DISTINCT(PROVINCE)) AS Number_of_Provinces
FROM property24_data;