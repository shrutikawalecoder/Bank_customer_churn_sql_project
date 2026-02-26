CREATE DATABASE bank_project;
USE bank_project;
select * from bank_data;
desc bank_data;

--- Data Cleaning
RENAME TABLE `bank customer churn prediction`
TO bank_data;
select * from bank_data;
SELECT COUNT(*) FROM bank_data;
DESC bank_data;
SELECT COUNT(*) FROM bank_data WHERE Customer_Id IS NULL;
SELECT COUNT(*) FROM bank_data WHERE Gender IS NULL;
--- check dublicate records 
SELECT Customer_Id, COUNT(*)
FROM bank_data
GROUP BY Customer_Id
HAVING COUNT(*) > 1;
--- Check Invalid Values
SELECT * FROM bank_data WHERE Age < 0;
--- Standardize Text Values
SELECT DISTINCT Gender FROM bank_data;
--- Check Outliers (Very High Values)
SELECT *
FROM bank_data
ORDER BY Balance DESC
LIMIT 10;


---  SQL Project Questions
--- Retrieve the total number of customers in the dataset.
SELECT COUNT(*) AS total_customers
FROM bank_data;
--- Count how many customers have churned and how many have not churned.
SELECT churn, COUNT(*) AS total
FROM bank_data
GROUP BY churn;
--- Calculate the overall churn percentage.
SELECT 
    (SUM(churn) / COUNT(*)) * 100 AS churn_percentage
FROM bank_data;
--- Find the average age of customers.
SELECT AVG(age) AS average_age
FROM bank_data;
--- Find the minimum and maximum account balance.
SELECT 
    MIN(balance) AS minimum_balance,
    MAX(balance) AS maximum_balance
FROM bank_data;
--- Count the number of customers by Gender.
SELECT gender, COUNT(*) AS total_customers
FROM bank_data
GROUP BY gender;
--- Calculate the churn rate by Gender.
SELECT 
    gender,
    (SUM(churn) / COUNT(*)) * 100 AS churn_rate
FROM bank_data
GROUP BY gender;
--- Find the average account balance by Gender.
SELECT 
    gender,
    AVG(balance) AS avg_balance
FROM bank_data
GROUP BY gender;
--- Find the average account balance of churned customers.
SELECT AVG(balance) AS avg_balance
FROM bank_data
WHERE churn = 1;
--- Find the average account balance of non-churned customers.
SELECT AVG(balance) AS avg_balance
FROM bank_data
WHERE churn = 0;
--- Retrieve customers whose balance is greater than the overall average balance.
SELECT *
FROM bank_data
WHERE balance > (SELECT AVG(balance) FROM bank_data);
--- Retrieve the top 10 customers with the highest account balance.
SELECT *
FROM bank_data
ORDER BY balance DESC
LIMIT 10;
--- Count the number of customers having zero balance.
SELECT COUNT(*) AS zero_balance_customers
FROM bank_data
WHERE balance = 0;
--- Compare the average credit score of churned and non-churned customers.
SELECT 
    churn,
    AVG(credit_score) AS avg_credit_score
FROM bank_data
GROUP BY churn;
--- Calculate churn rate based on the number of products held.
SELECT 
    products_number,
    (SUM(churn) / COUNT(*)) * 100 AS churn_rate
FROM bank_data
GROUP BY products_number;
--- Count customers who own a credit card but have churned.
SELECT COUNT(*) AS churned_credit_card_holders
FROM bank_data
WHERE credit_card = 1 AND churn = 1;
--- Count active members versus inactive members.
SELECT active_member, COUNT(*) AS total
FROM bank_data
GROUP BY active_member;
--- Calculate churn rate among active members.
SELECT 
    (SUM(churn) / COUNT(*)) * 100 AS churn_rate_active_members
FROM bank_data
WHERE active_member = 1;
--- Retrieve the top 5 oldest customers.
SELECT *
FROM bank_data
ORDER BY age DESC
LIMIT 5;
--- Retrieve customers whose tenure is greater than the average tenure.
SELECT *
FROM bank_data
WHERE tenure > (SELECT AVG(tenure) FROM bank_data);


