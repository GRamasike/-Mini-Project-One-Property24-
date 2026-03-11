# 📌 Property 24 SQL Mini Project <br> Task Overview

# 🏘️ Project Background
This project focuses on exploring and analysing a large residential property dataset using SQL. The dataset simulates a real estate platform similar to Property24, containing approximately 100,000 property records across all nine provinces of South Africa.<br
                                                                                                                                                                                                                                                                  >
The goal of this project is to practise data exploration and querying using SQL without modifying the dataset — mirroring a real-world data engineering constraint where analysts work with read-only production data.

# 📁 Dataset
- Property prices 
- Location (Country, Province, City)
- Bedrooms and bathrooms
- Other property features

# 📁 Database Setup
CREATE DATABASE Property24;<br>
USE Property24;

Main table: property24_data<br>
100,000 rows of residential property records across 9 provinces.

# 📂 Repository Structure
The 60 queries are organised across six files, grouped by SQL concept and difficulty level: <br>
- Property24_Foundations.sql 🟢 Beginner Basic SELECT, filtering, and ORDER BY queries.
- Property24_Exploration.sql 🟡 Intermediate Multi-condition filtering, TOP queries, and analytical thinking.
- Property24_Count_Aggregations.sql 🟠 Intermediate COUNT aggregations across provinces, cities, and property features.
- Property24_Sum_Aggregations.sql 🟠 Intermediate SUM aggregations for property values, repayments, and costs.
- Property24_Average_Aggregations.sql 🟠 Intermediate AVG aggregations for prices, sizes, and income requirements.
- Property24_Analysis.sql 🔴 Advanced GROUP BY with WHERE filtering for complex business questions.

# 🎯 Project Objective
Use **SQL SELECT queries only** to explore, filter, and analyse the dataset.

This project focuses on:
- Extracting meaningful insights from large-scale property data
- Translating business questions into structured SQL queries
- Practising SQL querying skills across multiple aggregation types

# 📜Project Rules
To simulate a real-world read-only data environment, the following constraints were applied: <br>
  - ❌ No modifying the table structure
  - ❌ No inserting new records
  - ❌ No deleting records
  - ❌ No updating existing data
  - ✅ SELECT queries only

# 🔍 Key SQL Skills Demonstrated
- Basic SELECT queries & column aliasing
- WHERE filtering & multi-condition logic
- ORDER BY and TOP for ranking
- COUNT, SUM, AVG aggregations
- GROUP BY for grouped analysis
- GROUP BY for grouped analysis
- Analytical business querying

# 📊 Key Findings
# Insight
🏆 The Western Cape contains the top 10 most expensive properties in the dataset <br>
💰The Northern Cape has the lowest average property price across all provinces <br>
🏙️Gqeberha recorded the highest total property value of any city <br>
📉Kimberley has the lowest average property price of any city <br>
📦The dataset contains 100,000 residential property records <br>
🗺️All 9 provinces of South Africa are represented in the dataset <br>

# 🛠️ Tools Used

- SQL Server — database creation and querying
- SSMS (SQL Server Management Studio) — query development and testing

 # 👤 About Me
 I am a BSc IT Graduate with 6 years of professional experience as a Batch Processing Administrator at a credit bureau, where I worked extensively with large volumes of sensitive financial data in a production environment.<br>
 
 With a solid academic foundation in Database Management, Mathematics for Computer Science, and Project Management, combined with hands-on industry experience in data operations, I am now transitioning into SQL Development and Data Engineering — building on skills I have spent years applying professionally.<br>
 
This project is part of a growing portfolio designed to demonstrate my technical capabilities in database design, querying, and data analysis.
 
 



