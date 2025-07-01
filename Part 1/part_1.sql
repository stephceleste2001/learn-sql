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