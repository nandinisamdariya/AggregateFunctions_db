# 📊 Task 4: Aggregate Functions and Grouping in SQL

## ✅ Objective
The goal of this task is to practice using **SQL aggregate functions** and the `GROUP BY` clause to summarize and analyze data. This project works with a sample `sales_data` table and covers:

- Aggregate functions: `SUM()`, `COUNT()`, `AVG()`, `MAX()`, `MIN()`
- Grouping rows with `GROUP BY`
- Filtering grouped data using `HAVING`

---

## 🧰 Tools Used

- MySQL Workbench  
- MySQL Server

---

## 📂 Files

| File Name                    | Description                                                    |
|-----------------------------|----------------------------------------------------------------|
| `task4_aggregate_functions.sql` | SQL script with table creation, data insertion, and queries     |
| `README.md`                 | Project documentation (you’re here!)                          |

---

## 🗂️ Table Structure

```sql
CREATE TABLE sales_data (
    id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    region VARCHAR(50),
    sale_amount DECIMAL(10, 2)
);
