Bank Customer Churn Analysis using MySQL
📌 Project Overview

This project focuses on analyzing bank customer churn data using MySQL.
The primary objective is to identify key factors influencing customer churn and generate actionable business insights for improving customer retention strategies.
The dataset includes customer information such as credit score, geography, gender, age, account balance, product usage, active membership status, and churn status.

🎯 Project Objectives

Analyze total customer distribution.
Calculate overall churn rate.
Identify churn patterns by gender
Compare financial metrics of churned vs non-churned customers.
Perform advanced SQL analysis using aggregate and window functions.
Implement stored procedures, functions, and triggers.

🛠️ Technologies Used

MySQL
MySQL Workbench
SQL (Aggregate Functions, Subqueries, Window Functions)



🗂️ Dataset Columns
Column Name	Description
customer_id	Unique customer identifier
credit_score	Customer credit score
country	Customer's country
gender	Male/Female
age	Customer age
tenure	Years with bank
balance	Account balance
products_number	Number of bank products
credit_card	Has credit card (1 = Yes, 0 = No)
active_member	Active membership status
estimated_salary	Estimated salary
churn	Churn status (1 = Left, 0 = Retained)
📊 Key SQL Analysis Performed

✔ Total number of customers
✔ Churn vs Non-Churn count
✔ Overall churn percentage
✔ Average age and balance analysis
✔ Churn rate by Gender
✔ Credit score comparison (churned vs retained)
✔ Top 10 highest balance customers
✔ Zero balance customer count
✔ Window function ranking by country
✔ Customers above average balance
✔ Active vs Inactive churn comparison

💻 Advanced SQL Features Used

Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
GROUP BY & HAVING
Subqueries
Window Functions (RANK)


📈 Business Insights

Identified countries with highest churn rates.
Observed correlation between product holding and churn.
Compared churn behavior between active and inactive members.
Analyzed financial behavior of high-balance customers.
Identified customer segments requiring retention strategies.

🚀 How to Run This Project

Create database in MySQL.
Import dataset into MySQL.
Create bank_data table.
Execute table creation script.
Run analysis queries.


📂 Project Structure
bank-customer-churn-analysis
│
├── dataset/
├── sql/
│   ├── table_creation.sql
│   ├── data_cleaning.sql
│   ├── analysis_queries.sql
│   
│ 
│
├── screenshots/
└── README.md
