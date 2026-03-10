USE Property24;
--SECTION 2 – SUM Aggregations (10 Questions) 
SELECT *
FROM property24_data;

--1. What is the total value of all properties combined?
SELECT
SUM (CAST(PROPERTY_PRICE AS Money)) AS Total_Value_of_Properties
FROM property24_data;

--2. What is the total property value per province?
SELECT
PROVINCE,
SUM (CAST(PROPERTY_PRICE AS MONEY)) AS Total_Property_Value
FROM property24_data
GROUP BY PROVINCE;

--3. What is the toatl property value per city?
SELECT
CITY,
SUM (CAST(PROPERTY_PRICE AS MONEY)) AS Total_Property_Value
FROM property24_data
GROUP BY CITY;

--4. What is the total monthly repayment for all properties?
SELECT
SUM (CAST(Monthly_Repayment AS MONEY)) AS Total_Monthly_Repayment
FROM property24_data;

--5. What is the total monthly repayment per province?
SELECT
PROVINCE,
SUM (CAST(Monthly_Repayment AS MONEY)) AS Total_Monthly_Repayment
FROM property24_data
GROUP BY PROVINCE;

--6. What is the total once-off cost for all properties?
SELECT
SUM (CAST(Total_Once_off_Costs AS MONEY)) AS Total_Once_Off_Cost
FROM property24_data;

--7. What is the total once-off cost per province?
SELECT
PROVINCE,
SUM (CAST(Total_Once_off_Costs AS MONEY)) AS Total_Once_Off_Cost
FROM property24_data
GROUP BY PROVINCE;

--8. What is the total property value for Gauteng?
SELECT
PROVINCE,
SUM (CAST(PROPERTY_PRICE AS MONEY)) AS Total_Property_Value
FROM property24_data
WHERE PROVINCE = 'Gauteng'
GROUP BY PROVINCE;

--9. What is the total property value for properties priced above R 4 000 000?
SELECT
SUM (CAST(PROPERTY_PRICE AS MONEY)) AS Total_Property_Value
FROM property24_data
WHERE PROPERTY_PRICE > 4000000;

--10. What is the total minimum gross monthly required per province?
SELECT
PROVINCE,
SUM (Min_Gross_Monthly_Income) AS Total_Minimun_Gross_Monthly
from property24_data
GROUP BY PROVINCE;
