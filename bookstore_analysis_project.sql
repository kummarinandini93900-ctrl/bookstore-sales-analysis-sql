CREATE DATABASE bookstore_analysis;
USE bookstore_analysis;
CREATE TABLE books (
    Book_ID INT,
    Book_Name VARCHAR(100),
    Category VARCHAR(50),
    Price INT,
    Quantity_Sold INT,
    City VARCHAR(50)
);
SELECT COUNT(*) AS Total_Rows
FROM books;
-- Query 1: Total Revenue
SELECT SUM(Price * Quantity_Sold) AS Total_Revenue
FROM books;
-- Query 2: Top 5 Selling Books
SELECT Book_Name,
       SUM(Quantity_Sold) AS Total_Sold
FROM books
GROUP BY Book_Name
ORDER BY Total_Sold DESC
LIMIT 5;
-- Query 3: Revenue by Category
SELECT Category,
       SUM(Price * Quantity_Sold) AS Revenue
FROM books
GROUP BY Category
ORDER BY Revenue DESC;
SELECT City,
       SUM(Price * Quantity_Sold) AS Revenue
FROM books
GROUP BY City
ORDER BY Revenue DESC;
SELECT Book_Name, Price
FROM books
ORDER BY Price DESC
LIMIT 5;
-- Average Book Price by Category
SELECT Category,
       AVG(Price) AS Avg_Price
FROM books
GROUP BY Category;
-- Top Revenue Generating City
SELECT City,
       SUM(Price * Quantity_Sold) AS Revenue
FROM books
GROUP BY City
ORDER BY Revenue DESC
LIMIT 1;
-- Books Sold More Than 20 Copies
SELECT Book_Name,
       Quantity_Sold
FROM books
WHERE Quantity_Sold > 20;
-- Total Quantity Sold by Category
SELECT Category,
       SUM(Quantity_Sold) AS Total_Sold
FROM books
GROUP BY Category
ORDER BY Total_Sold DESC;
-- Highest Revenue Book
SELECT Book_Name,
       SUM(Price * Quantity_Sold) AS Revenue
FROM books
GROUP BY Book_Name
ORDER BY Revenue DESC
LIMIT 1;
