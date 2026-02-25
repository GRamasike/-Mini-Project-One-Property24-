--SECTION 1 – COUNT Aggregations (10 Questions)
SELECT *
FROM property_24;

--1. How many total properties are in the database?
SELECT
COUNT (PROPERTY_ID) AS Total_Properties
FROM property_24;

--2. How many properties are listed in each province?
SELECT
COUNT (PROPERTY_ID) AS Total_Properties,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--3. How many properties are listed in each city?
SELECT
COUNT (PROPERTY_ID) AS Total_Properties,
CITY
FROM property_24
GROUP BY CITY;
--4. How many properties have more than 2 bedrooms?
SELECT
COUNT (PROPERTY_ID) AS Total_Properties
FROM property_24
WHERE BEDROOMS > '2';

--5. How many properties have 2 or more bathrooms?
SELECT
COUNT(PROPERTY_ID) AS Total_Properties
FROM property_24
WHERE BATHROOMS >= '2';

--6. How many properties have parking for at least 2 cars?
SELECT
COUNT(PROPERTY_ID) AS Total_Properties
FROM property_24
WHERE PARKING >= '2';

--7. How many properties are priced above R3,000,000?
SELECT
COUNT(PROPERTY_ID) AS Total_Properties
FROM property_24
WHERE PROPERTY_PRICE > '3000000';

--8. How many properties are in Gauteng?
SELECT
COUNT(PROPERTY_ID) AS Total_Properties,
PROVINCE
FROM property_24
WHERE PROVINCE = 'Gauteng'
GROUP BY PROVINCE ;

--9. How many properties per province have floor size greater than 200?
SELECT
COUNT(PROPERTY_ID) AS Total_Properties,
PROVINCE
FROM property_24
WHERE FLOOR_SIZE > '200'
GROUP BY PROVINCE;

--10. How many distinct provinces are in the table?
SELECT
COUNT(DISTINCT PROVINCE) as Distinct_Provinces
FROM property_24;

--SECTION 2 – SUM Aggregations (10 Questions)
SELECT *
FROM property_24;

--11. What is the total value of all properties combined?
SELECT
SUM (CAST (PROPERTY_PRICE AS MONEY)) AS Total_Value
FROM property_24;

--12. What is the total property value per province?
SELECT
SUM(Cast (PROPERTY_PRICE AS MONEY)) AS Total_Value,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--13. What is the total property value per city?
SELECT
SUM(CAST(PROPERTY_PRICE AS MONEY)) AS Total_Value,
CITY
FROM property_24
GROUP BY CITY;

--14. What is the total monthly repayment for all properties?
SELECT
SUM(CAST(Monthly_Repayment AS MONEY)) AS Total_Monthly_Repayment
FROM property_24;

--15. What is the total monthly repayment per province?
SELECT
SUM (Monthly_Repayment) AS Total_Monthly_Repayment,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--16. What is the total once-off cost for all properties?
SELECT
SUM(CAST(Total_Once_off_Costs AS MONEY)) AS Total_Once_Off_Cost
FROM property_24;

--17. What is the total once-off cost per province?
SELECT
SUM(CAST(Total_Once_off_Costs AS MONEY)) AS Total_Once_off_Cost,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--18. What is the total property value for Gauteng?
SELECT
SUM(CAST(PROPERTY_PRICE AS MONEY)) AS Total_Property_Value,
PROVINCE
FROM property_24
WHERE PROVINCE = 'Gauteng'
GROUP BY PROVINCE;

--19. What is the total property value for properties priced above R4,000,000?
SELECT
SUM(CAST(PROPERTY_PRICE AS MONEY)) AS Total_Property_Value
FROM property_24
WHERE PROPERTY_PRICE > '4000000';

--20. What is the total minimum gross monthly income required per province?
SELECT
SUM(Min_Gross_Monthly_Income) AS Min_Gross_Monthly_Income,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--SECTION 3 – AVG Aggregations (10 Questions)
SELECT*
FROM property_24;

--21. What is the average property price overall?
SELECT
AVG(CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price
FROM property_24;

--22. What is the average property price per province?
SELECT
AVG(CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--23. What is the average property price per city?
SELECT
AVG(CAST(PROPERTY_PRICE AS Money)) AS Average_Property,
CITY
FROM property_24
GROUP BY CITY;

--24. What is the average number of bedrooms per province?
SELECT
AVG(CAST(BEDROOMS AS DECIMAL(2))) AS Average_Number_of_Bedrooms,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--25. What is the average number of bathrooms per province?
SELECT
AVG(CAST(BATHROOMS AS DECIMAL(2))) AS Average_Number_of_Bathrooms,
PROVINCE
FROM property_24
GROUP BY PROVINCE;
 
--26. What is the average floor size per province?
SELECT
AVG(CAST(FLOOR_SIZE AS DECIMAL (5,1))) AS Average_Floor_Size,
--AVG(FLOOR_SIZE) AS Aveage_Floor_Size,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--27. What is the average monthly repayment per province?
SELECT
AVG(CAST(Monthly_Repayment AS Money)) AS Average_Monthly_Repayment,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--28. What is the average once-off cost per province?
SELECT
AVG(CAST(Total_Once_off_Costs AS MONEY )) AS Average_Once_Off_Cost,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--29. What is the average minimum gross monthly income per province?
SELECT
AVG(CAST(Min_Gross_Monthly_Income AS MONEY)) AS Average_Minumum_Gross_Income,
PROVINCE
FROM property_24
GROUP BY PROVINCE;

--30. What is the average property price for properties above R3,000,000?
SELECT
AVG(CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price
FROM property_24
WHERE PROPERTY_PRICE > '3000000';

--SECTION 4 – GROUP BY + Filtering (10 Questions)
SELECT *
FROM property_24;

--31. Which province has the highest average property price?
SELECT TOP 1
AVG(CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price,
PROVINCE
FROM property_24
GROUP BY PROVINCE
ORDER BY Average_Property_Price DESC ;

--32. Which province has the lowest average property price?
SELECT TOP 1
AVG(CAST(PROPERTY_PRICE AS MONEY)) AS Average_Property_Price,
PROVINCE
FROM property_24
GROUP BY PROVINCE
ORDER BY Average_Property_Price ASC;

--33. Which city has the highest total property value?
SELECT TOP 1
SUM(CAST(PROPERTY_PRICE AS MONEY)) AS Highest_Total_Property_Value,
CITY
FROM property_24
GROUP BY CITY
ORDER BY Highest_Total_Property_Value DESC;

--34. Which city has the lowest average property price?
SELECT TOP 1
AVG(CAST(PROPERTY_PRICE AS MONEY)) AS Lowest_Average_Property_Price,
CITY
FROM property_24
GROUP BY CITY
ORDER BY Lowest_Average_Property_Price ASC;

--35. How many properties per province are priced above R2,000,000?
SELECT
COUNT (PROPERTY_ID) AS Number_of_Properties,
PROVINCE
FROM property_24
WHERE PROPERTY_PRICE > '2000000'
GROUP BY PROVINCE;

--36. What is the average floor size per province for properties above R3,000,000?
SELECT
AVG(CAST(FLOOR_SIZE AS DECIMAL (5,2))) AS Average_Floor_Size,
PROVINCE
FROM property_24
WHERE PROPERTY_PRICE > '3000000'
GROUP BY PROVINCE;

--37. What is the total property value per province for properties with 3 or more bedrooms?
SELECT
SUM(CAST(PROPERTY_PRICE AS MONEY)) AS Property_Value,
PROVINCE
FROM property_24
WHERE BEDROOMS >= '3'
GROUP BY PROVINCE;

--38. What is the average monthly repayment per province for properties above R4,000,000?
SELECT
AVG(CAST(Monthly_Repayment AS MONEY)) AS Average_Monthly_Repayment,
PROVINCE
FROM property_24
WHERE PROPERTY_PRICE > '4000000'
GROUP BY PROVINCE;

--39. How many properties per city have parking for 2 or more cars?
SELECT
COUNT(PROPERTY_ID) AS Number_of_Properties,
CITY
FROM property_24
WHERE PARKING >= '2'
GROUP BY CITY;

--40. What is the average minimum gross monthly income per province for properties above R5,000,000?
SELECT
AVG(CAST(Min_Gross_Monthly_Income AS MONEY)) AS Average_Minimum_Gross_Income,
PROVINCE
FROM property_24
WHERE PROPERTY_PRICE > '5000000'
GROUP BY PROVINCE;

