# 📊 Customer Sales Analysis using MySQL

## 📌 Project Overview

This project demonstrates the design and implementation of a relational database using **MySQL** to analyze customer sales data. The database is created from scratch by designing tables, inserting sample data, and performing SQL operations to generate meaningful business insights.

The project showcases fundamental and intermediate SQL concepts commonly used in data analysis and database management.

---

## 🎯 Objectives

- Design a relational database.
- Create and manage tables with primary and foreign keys.
- Insert and manage sample sales data.
- Retrieve and analyze data using SQL queries.
- Optimize query performance using indexes.
- Automate repeated tasks using stored procedures.
- Create reusable views for reporting.

---

## 🛠️ Tools & Technologies

- MySQL 8.0
- MySQL Workbench
- SQL

---

## 🗂️ Database Structure

The project consists of three tables:

### 1. Customers
Stores customer information.

| Column | Description |
|----------|-------------|
| CustomerID | Primary Key |
| CustomerName | Customer Name |
| City | Customer Location |

---

### 2. Products
Stores product details.

| Column | Description |
|----------|-------------|
| ProductID | Primary Key |
| ProductName | Product Name |
| Price | Product Price |

---

### 3. Orders
Stores customer purchase information.

| Column | Description |
|----------|-------------|
| OrderID | Primary Key |
| CustomerID | Foreign Key |
| ProductID | Foreign Key |
| Quantity | Number of Products Purchased |
| OrderDate | Date of Purchase |

---

## 📚 SQL Concepts Implemented

### Database Operations

- CREATE DATABASE
- USE DATABASE
- CREATE TABLE
- INSERT INTO

### Data Retrieval

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- DISTINCT
- LIMIT

### Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

### Joins

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- CROSS JOIN
- SELF JOIN
- FULL JOIN (using UNION)

### Subqueries

- Single Row Subquery
- Multiple Row Subquery
- Correlated Subquery
- EXISTS
- NOT EXISTS

### Views

- Customer Orders View
- Product Revenue View
- Product Sales Summary
- Customer Purchase Summary

### Indexes

- Single Column Index
- Composite Index
- Unique Index
- Query Optimization using EXPLAIN

### Stored Procedures

- Display Customer Records
- Display Product Records
- Customer Order Details
- Product Details
- Revenue Calculation
- Best Selling Product

---

## 📈 Sample Business Analysis

The database can answer questions such as:

- Who purchased which products?
- Which product generated the highest revenue?
- Which customer purchased the most items?
- What is the total revenue generated?
- Which products are sold the most?
- Which city has the highest number of customers?
- What is the average product price?

---

## 📂 Project Files

```
Customer-Sales-Analysis/
│
├── Database.sql
├── Tables.sql
├── Insert_Data.sql
├── Queries.sql
├── Joins.sql
├── Subqueries.sql
├── Views.sql
├── Indexes.sql
├── Stored_Procedures.sql
├── README.md
```

---

## 🚀 Learning Outcomes

Through this project, I gained practical experience in:

- Relational Database Design
- SQL Query Writing
- Data Analysis using SQL
- Query Optimization
- Database Normalization
- Working with Views
- Using Stored Procedures
- Implementing Indexes
- Performing Complex Joins
- Writing Nested Queries

---

## 📌 Future Improvements

- Add Triggers
- Implement Transactions
- Create Functions
- Add User Roles and Permissions
- Build Interactive Dashboards using Power BI or Tableau
- Connect the database with Python for advanced analysis

---

## 👨‍💻 Author

**daa**

Aspiring Data Analyst | SQL | Python | Excel | Tableau | Power BI

---

## ⭐ If you found this project helpful, consider giving it a Star!
