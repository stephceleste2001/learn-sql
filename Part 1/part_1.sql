-- 1. Create Sales table
CREATE TABLE Sales(
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_price DECIMAL(10,2)
    FOREIGN KEY(product_id) REFERENCES Products(product_id)
);

-- 2. Create Products table
CREATE TABLE Products(
	product_id INT PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	unit_price DECIMAL(10,2)
);

-- 3. Insert sample data into Products table
INSERT INTO Products(product_id, product_name, category, unit_price) VALUE
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

-- For Beginners
-- 1. Retrieve all columns from the Sales table.
SELECT * FROM Sales;

-- 2. Retrieve the product_name and unit_price from the Products table.
SELECT product_name, unit_price FROM Products;

-- 3. Retrieve the sale_id and sale_date from the Sales table,
SELECT sale_id, sale_date FROM Sales;

-- 4. Filter the Sales table to show only sales with a total_price greater than $100
SELECT * FROM Sales WHERE total_price > 100;

-- 5. Filter the Products table to show only products in the 'Electronics' category
SELECT * FROM Products WHERE category = 'Electronics';

-- 6. Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024
SELECT sale_id, total_price
FROM Sales
WHERE sale_date = '2024-01-03';

-- 7. Retrieve the product_id and product_name from the Products table for products with a unit_price greater than $100.
SELECT product_d, product_name
FROM Products
WHERE unit_price > 100;

-- 8. Calculate the total revenue generated from all sales in the Sales table.
SELECT SUM(total_price) AS total_revenue
FROM SALES;

-- 9. Calculate the average unit_price of products table.
SELECT AVG(unit_price) AS average_unit_price
FROM Products;

-- 10. Calculate the total quantity_sold from the Sales table. 
SELECT SUM(quantity_sold) AS total_quantity_sold
FROM Sales;

-- 11. Count Sales Per Day from the Sales table
SELECT sale_date, COUNT(*) AS sales_count
FROM Sales
GROUP BY sale_date
ORDER BY sale_date;

-- 12. Retrieve product_name and unit_price from the Products table with the Highest Unit Price
SELECT product_name, unit_price
FROM Products
ORDER BY unit_price DESC
LIMIT 1;

-- 13. Retrieve the sale_id, product_id, and total_price from the Sales table for sales with a quantity_sold greater than 4.
SELECT sale_id, product_id, total_price
FROM Sales
WHERE quantity_sold > 4;

-- 14. Retrieve the product_name and unit_price from the Products table, ordering the results by unit_price in descending order.
SELECT product_name, unit_price
FROM Products
ORDER BY unit_price DESC;

-- 15. Retrieve the total_price of all sales, rounding the values to two decimal places.
SELECT ROUND(SUM(total_price), 2) AS total_sales
FROM Sales;

-- 16. Calculate the average total_price of sales the sales in the Sales table.
SELECT AVG(total_price) AS average_unit_price
FROM Sales;

-- 17. Retrieve the sale_id and sale_date from the Sales table, formatting the sale_date as 'YYYY-MM-DD'
SELECT sale_id, DATE_FORMAT(sale_date, '%Y-%m-%d') AS formatted_date
FROM Sales;

-- 18. Calculate the total revenue generated from sales of products in the 'Electronics' category
SELECT SUM(Sales.total_price) AS total_revenue
FROM Sales
JOIN Products ON Sales.product_id = Products.product_id
WHERE Products.category = 'Electronics';

-- 19. Retrieve the product_name and unit_price from the Products table, filtering the unit_price to show only values between $20 and $600
