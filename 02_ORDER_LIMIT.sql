-- ORDER BY + LIMIT

-- Q4. Fetch top 3 highest salaries.
-- Q5. List top 5 highest priced products.
-- Q6. Sort customers by name alphabetically

CREATE DATABASE company;
USE company;

-- Answer 1.

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
name VARCHAR(20),
department VARCHAR(10),
salary INT
);

INSERT INTO employees
(emp_id,name,department,salary)
VALUES
(1,"Rahul","IT",68000),
(2,"Priya","HR",55000),
(3,"Aman","Finance",72000),
(4,"Neha","IT",85000),
(5,"Karan","Sales",60000),
(6,"Divya","Marketing",90000);

SELECT salary , name , deparTment
FROM employees
 ORDER BY salary DESC LIMIT 3;

-- Answer 2.

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(20),
category VARCHAR(20),
price INT
)

INSERT INTO products
(product_id,product_name,category,price)
VALUES
(101,"Laptop","Electronics",60000),
(102,"Phone","Electronics",45000),
(103,"Headphones","Accessories",2000),
(104,"Monitor","Electronics",12000),
(105,"Keyboard","Accessories",1500),
(106,"Chair","Furniture",3500),
(107,"Table","Furniture",5000),
(108,"Smartwatch","Electronics",8000);

SELECT price, product_name, category
FROM products
ORDER BY price DESC LIMIT 5;

-- Answer 3.

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(20),
city VARCHAR(20)
);
INSERT INTO customers
(customer_id,customer_name,city)
VALUES
(1,"Harsh","Mumbai"),
(2,"Aditi","Pune"),
(3,"Mohit","Delhi"),
(4,"Sneha","Bangalore"),
(5,"Raj","Indore");

SELECT customer_name, city
FROM customers
ORDER BY customer_name ASC;

