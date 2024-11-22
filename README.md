
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

### Schema Design

Below is the **Entity-Relationship Diagram (ERD)** that represents the schema design for the Book Store Database:

```
+----------------+           +----------------+          +------------------+
|  Publishers    |           |    Books       |          |     Authors      |
+----------------+           +----------------+          +------------------+
| publisher_id   |<--------->| publisher_id   |          |  author_id       |
| name           |           | book_id        |<----+    |  first_name      |
+----------------+           | title          |     |    |  middle_name     |
                             | total_pages    |     |    |  last_name       |
                             | rating         |     +----|------------------+
                             | price          |          |
                             +----------------+          |
                                     ^                   |
                                     |                   |
+------------------+           +------------------+      |
|    Genres        |           |   Book_Authors   |<-----+
+------------------+           +------------------+
| genres_id        |<--------->| book_id          |
| genres           |           | author_id        |
+------------------+           +------------------+

```

### Explanation of Relationships:

1. **Publishers and Books**:
   - **One-to-Many** relationship: Each publisher can publish multiple books, but each book is associated with a single publisher.
   - `publisher_id` serves as a foreign key in the `Books` table referencing the `Publishers` table.

2. **Books and Authors**:
   - **Many-to-Many** relationship: A book can have multiple authors, and an author can write multiple books.
   - Implemented using a bridge table `Book_Authors` that links `Books` and `Authors` via `book_id` and `author_id`.

3. **Books and Genres**:
   - **Many-to-Many** relationship: A book can belong to multiple genres, and a genre can include multiple books.
   - Implemented using a bridge table `Book_Genres` that links `Books` and `Genres` via `book_id` and `genres_id`.

4. **Authors**:
   - Contains details about authors, including their first, middle, and last names.

5. **Genres**:
   - Stores the different genres available in the bookstore.

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
