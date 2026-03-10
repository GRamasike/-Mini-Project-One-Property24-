USE Property24;

--Section 3 - AVG Aggregations (10 Questions)
SELECT *
FROM property24_data;

--1. What is the average property price overall?
SELECT
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price_Overall
FROM property24_data;

--What is the average property price per province?
SELECT
PROVINCE,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_Price
FROM property24_data
GROUP BY PROVINCE;

--3. What is the average property price per city?
SELECT
CITY,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_Price
FROM property24_data
GROUP BY CITY;

--4. What is the average number of bedrooms per province?
SELECT
PROVINCE,
AVG (CAST(BEDROOMS AS INT)) AS Average_Number_of_Bedrooms
FROM property24_data
GROUP BY PROVINCE;

--5. What is the average number of bathrooms per province?
SELECT
PROVINCE,
AVG (CAST(BATHROOMS AS INT)) AS Average_Number_of_Bathrooms
FROM property24_data
GROUP BY PROVINCE;

--6. What is the average floor size per province?
SELECT
PROVINCE,
AVG (FLOOR_SIZE) AS Average_Floor_Size
FROM property24_data
GROUP BY PROVINCE;

--7. What is the average monthly repayment per province?
SELECT
PROVINCE,
AVG (Monthly_Repayment) AS Average_Monthly_Repayment
FROM property24_data
GROUP BY PROVINCE;

--8. What is the average once-off cost per province?
SELECT
PROVINCE,
AVG (CAST(Total_Once_off_Costs AS MONEY)) AS Average_Onceoff_Cost
FROM property24_data
GROUP BY PROVINCE;

--9. What is the average minimum gross monthly income per province?
SELECT
PROVINCE,
AVG (Min_Gross_Monthly_Income) AS Average_Minmum_Income
FROM property24_data
GROUP BY PROVINCE;

--10. What is the average property price for properties above R 3 000 000?
SELECT
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price
FROM property24_data
WHERE PROPERTY_PRICE > 3000000;