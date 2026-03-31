USE Property24;

SELECT *
FROM property24_data;

CREATE VIEW vw_Top10_MostExpensive_Properties AS

SELECT TOP 10
PROVINCE,
CITY,
BEDROOMS,
FLOOR_SIZE,
PROPERTY_PRICE
FROM property24_data
ORDER BY PROPERTY_PRICE DESC;

CREATE VIEW vw_Top3AvgPrice_ByProvince AS

SELECT TOP 3
PROVINCE,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS AveragePropertyPrice
FROM property24_data
GROUP BY PROVINCE
ORDER BY AveragePropertyPrice DESC;

CREATE VIEW vw_Top3_AvgPrice_ByCity AS

SELECT TOP 3
CITY,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS AveragePropertyPrice
FROM property24_data
GROUP BY CITY
ORDER BY AveragePropertyPrice DESC;

CREATE VIEW vw_Top3_TotalValue_ByCity AS

SELECT TOP 3
CITY,
SUM(CAST(PROPERTY_PRICE AS MONEY)) AS TotalPropertyValue
FROM property24_data
GROUP BY CITY
ORDER BY TotalPropertyValue DESC;

CREATE VIEW vw_PropertyCount_ByProvince AS
ALTER VIEW vw_PropertyCount_ByProvince AS

SELECT TOP 9
PROVINCE,
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
GROUP BY PROVINCE
ORDER BY Number_of_Properties DESC;

CREATE VIEW vw_Bottom3_AveragePrice_ByProvince AS

SELECT TOP 3
PROVINCE,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_PropertyPrice
FROM property24_data
GROUP BY PROVINCE
ORDER BY Average_PropertyPrice ASC;

CREATE VIEW vw_PropertyCount_ByBedrooms AS

SELECT 
BEDROOMS,
COUNT (PROPERTY_ID) AS Number_of_Properties
FROM property24_data
GROUP BY BEDROOMS;

CREATE VIEW vw_AveragePrice_ByBedrooms AS

SELECT
BEDROOMS,
AVG (CAST(PROPERTY_PRICE AS MONEY)) AS Average_PropertyPrice
FROM property24_data
GROUP BY BEDROOMS;




SELECT *
FROM vw_Top10_MostExpensive_Properties;

SELECT *
FROM vw_Top3AvgPrice_ByProvince;

SELECT *
FROM vw_Top3_AvgPrice_ByCity;

SELECT *
FROM vw_Top3_TotalValue_ByCity;

SELECT *
FROM vw_PropertyCount_ByProvince;

SELECT *
FROM vw_Bottom3_AveragePrice_ByProvince;

SELECT *
FROM vw_PropertyCount_ByBedrooms;

SELECT *
FROM vw_AveragePrice_ByBedrooms;




