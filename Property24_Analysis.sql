USE Property24;

--Section 4 - GROUP BY + Filerting (10 Questions)
SELECT *
FROM property24_data;

--1. Which province has the highest average property price?
SELECT TOP 1
PROVINCE,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price
FROM property24_data
GROUP BY PROVINCE
ORDER BY Average_Property_Price DESC;

--2. Which province has the lowest average property price?
SELECT TOP 1
PROVINCE,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price
FROM property24_data
GROUP BY PROVINCE
ORDER BY Average_Property_Price ASC;

--3. Which city has the highest total property value?
SELECT TOP 1
CITY,
SUM (CAST(PROPERTY_PRICE AS MONEY)) AS Highest_Total_Property_Value
FROM property24_data
GROUP BY CITY
ORDER BY Highest_Total_Property_Value DESC;

--4. Which city has the lowest average property price?
SELECT TOP 1
CITY,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price
FROM property24_data
GROUP BY CITY
ORDER BY Average_Property_Price ASC;

--5. How many properties per province are priced above R 2 000 000?
SELECT
PROVINCE,
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
WHERE PROPERTY_PRICE > 2000000
GROUP BY PROVINCE;

--6. What is the average floor size per province for properties above R 3 000 000?
SELECT
PROVINCE,
AVG (FLOOR_SIZE) AS Average_Floor_Size
FROM property24_data
WHERE PROPERTY_PRICE  > 3000000
GROUP BY PROVINCE;

--7. What is the total property value per province for properties with 3 or more bedrooms?
SELECT
PROVINCE,
SUM (CAST(PROPERTY_PRICE AS MONEY)) AS Total_Property_Value
FROM property24_data
WHERE BEDROOMS >= 3
GROUP BY PROVINCE;

--8. What is the average monthly repayment per province for properties above R 4 000 000?
SELECT
PROVINCE,
AVG (Monthly_Repayment) AS Average_Monthly_Repayment
FROM property24_data
WHERE PROPERTY_PRICE > 4000000
GROUP BY PROVINCE;

--9. How many properties per city have parking for 2 or more cars?
SELECT
CITY,
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
WHERE PARKING >= 2
GROUP BY CITY;

--10. What is the average minimum gross monthly income per province for properties above R 5 000 000?
SELECT
PROVINCE,
AVG (Min_Gross_Monthly_Income) AS Average_Minimum_Gross_Income
FROM property24_data
WHERE PROPERTY_PRICE > 5000000
GROUP BY PROVINCE;