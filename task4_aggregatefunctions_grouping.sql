-- Task 4: Aggregate Functions and Grouping
-- Author: Nandini Samdariya
-- Description: This script demonstrates the use of aggregate functions (SUM, COUNT, AVG, MAX, MIN),
--              grouping using GROUP BY, and filtering groups using HAVING in MySQL.

-- Select the database
USE task4_aggregatefunctions;

-- Create the sales_data table
CREATE TABLE sales_data (
    id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    region VARCHAR(50),
    sale_amount DECIMAL(10, 2)
);

-- Insert records into sales_data
INSERT INTO sales_data (id, employee_name, department, region, sale_amount) VALUES
(1, 'Maya', 'IT', 'North', 12000),
(2, 'Nina', 'Electronics', 'South', 15000),
(3, 'Neha', 'Logistics', 'North', 10000),
(4, 'Sara', 'Furniture', 'East', 17000),
(5, 'Kush', 'Electronics', 'East', 9000),
(6, 'Lata', 'Furniture', 'South', 18000);

-- Total sales by department
SELECT department, SUM(sale_amount) AS total_sales
FROM sales_data
GROUP BY department;

-- Average sale amount by region
SELECT region, AVG(sale_amount) AS avg_sales
FROM sales_data
GROUP BY region;

-- Count of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM sales_data
GROUP BY department;

-- Departments with total sales greater than 25000
SELECT department, SUM(sale_amount) AS total_sales
FROM sales_data
GROUP BY department
HAVING total_sales > 25000;

-- Highest and lowest sale amount in each department
SELECT department, 
       MAX(sale_amount) AS highest_sale, 
       MIN(sale_amount) AS lowest_sale
FROM sales_data
GROUP BY department;

-- Department-wise summary (Total Transactions, Total Sales, Average Sale)
SELECT department, 
       COUNT(*) AS total_transactions, 
       SUM(sale_amount) AS total_sales, 
       AVG(sale_amount) AS avg_sale
FROM sales_data
GROUP BY department;
