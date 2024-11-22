
# 📚 Book Store Database Management System

A comprehensive SQL project for managing a **Book Store** database. This project demonstrates expertise in database design, relationships, queries, and advanced SQL operations.

---

## 🚀 Features

- **Database Schema:** 
  - Tables: Publishers, Books, Authors, Genres, Book Authors, Book Genres.
  - Relationships: One-to-Many and Many-to-Many.
  - Constraints: Foreign Keys, Primary Keys, and Cascades.

- **Key Functionalities:**
  - **Data Management:** Insertion, Updating, and Deletion of records.
  - **Advanced Queries:** 
    - Aggregate functions (e.g., `AVG`, `SUM`).
    - Nested queries and joins.
    - Ranking and grouping data.
    - Filtering with conditions.

---

## 📂 Database Structure

### ER Diagram
<!-- Optional: Add an ER diagram for better visualization -->

### Tables
- **Publishers:** Stores publisher information.
- **Books:** Contains book details (e.g., title, pages, rating, price, and publication date).
- **Authors:** Stores author details including full name.
- **Book Authors:** Establishes a Many-to-Many relationship between Books and Authors.
- **Genres:** Stores different book genres.
- **Book Genres:** Establishes a Many-to-Many relationship between Books and Genres.

---

## 💡 Query Highlights

### 1️⃣ Average Number of Pages
```sql
SELECT AVG(total_pages) FROM books;
```

### 2️⃣ Books Published in 2020
```sql
SELECT DISTINCT title, publish_date
FROM books
WHERE YEAR(publish_date) = 2020;
```

### 3️⃣ Author Name with Middle Name Ending in 'n'
```sql
SELECT CONCAT(first_name, ' ', middle_name, ' ', last_name) AS full_name
FROM authors
WHERE middle_name LIKE '%n';
```

### 4️⃣ Top 3 Publishers by Book Count
```sql
SELECT TOP 3 name
FROM publishers
GROUP BY name
ORDER BY COUNT(name) DESC;
```

---

## 🔍 Analytical Insights

- **Most Expensive Book**: Identified using ranking queries.
- **Genres with Most Books**: Calculated through grouping and filtering.
- **Total Price of Books in a Genre**: Derived using subqueries and joins.
- **Prolific Authors**: Found using aggregation and sorting.

---

## 🛠️ Setup and Usage

### Prerequisites
- SQL Server or any compatible RDBMS.

### Steps to Run
1. Clone the repository.
2. Import the `Book_Store.sql` file into your SQL environment.
3. Execute the provided SQL scripts to create tables, insert data, and run queries.

---

## 🎯 Why This Project?

This project demonstrates:
- **Proficiency in SQL**: Advanced queries, database normalization, and relationships.
- **Real-World Application**: Practical use of SQL in a book store management system.
- **Optimization Skills**: Efficient query writing and schema design.

---

## 📊 Sample Query Results

| Query | Example Output |
|-------|----------------|
| **Books Published in 2020** | Introduction to Algorithms (2020-12-31) |
| **Most Expensive AI Book** | Artificial Intelligence: A Modern Approach |

---

## 🏆 Skills Demonstrated

- Database Design
- SQL Queries (Aggregation, Subqueries, Joins)
- Data Analysis
- Problem Solving with SQL

---
