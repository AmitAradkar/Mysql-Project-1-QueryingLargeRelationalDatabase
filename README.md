# Mysql-Project-1-QueryingLargeRelationalDatabase
This project demonstrates how to effectively query a large relational database to extract customer and sales information, analyze trends, and optimize queries for performance.

## Problem Statement

The objective of this project is to retrieve customer details and sales data from a relational database. Tasks include:
- Extracting customer names, contact details, and purchase history.
- Performing sales analysis by month and year.
- Optimizing SQL queries for efficiency.

## Topics Covered

1. **Database Setup**:
   - Downloading and restoring the AdventureWorks sample database.
2. **SQL Queries**:
   - Extracting customer information such as name, phone number, and email ID.
   - Analyzing sales data by specific timeframes.
3. **Query Optimization**:
   - Enhancing SQL query performance for large datasets.
4. **Reporting**:
   - Generating insights from extracted data.

## Highlights

- **Table Basics and Data Types**: Understanding relational table structures and key SQL data types like `VARCHAR`, `INTEGER`, `DATE`, etc.
- **SQL Operators**: Using comparison (`=, <, >`), logical (`AND, OR, NOT`), and arithmetic (`+, -, *, /`) operators.
- **SQL Functions**: Exploring aggregate (`SUM, AVG, COUNT`), string (`CONCAT, SUBSTRING`), and date functions (`DATEADD, DATEDIFF`).

## Tasks Performed

1. **Database Setup**:
   - Download the AdventureWorks database from [Microsoft GitHub](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks) (File: `AdventureWorks2012.bak`).
   - Restore the database using SQL Server Management Studio (SSMS):
     1. Open SSMS and connect to the target server.
     2. Right-click `Databases` and select `Restore Database`.
     3. Choose `Device` and add the `AdventureWorks2012.bak` file.
     4. Click `OK` to restore the database.

2. **SQL Query Tasks**:
   - Retrieve all details from the `Person` table, including email ID and phone numbers.
   - Extract sales header orders made in May 2011.
   - Extract sales detail orders for the same month.
   - Calculate:
     - Total sales made in May 2011.
     - Monthly sales in 2011, ordered by increasing sales.
   - Retrieve total sales made to the customer with `FirstName = 'Gustavo'` and `LastName = 'Achong'.`

## How to Use

1. **Download and Restore Database**:
   - Follow the instructions above to download and restore the AdventureWorks database.
2. **Run Queries**:
   - Use SQL Server Management Studio to execute the provided SQL queries.
3. **Analyze Results**:
   - Review the results of queries and interpret insights based on the data.

## Conclusion

This project serves as a hands-on exercise for mastering SQL queries, database operations, and data analysis techniques, with a focus on real-world scenarios and best practices.

---


