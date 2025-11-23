-- SELECT + WHERE

-- Q1. Select all employees with salary > 50,000?
-- Q2. Get customers from city 'Delhi'?
-- Q3. Select products which price < 500?

CREATE DATABASE company;
USE company;

-- Answer 1.

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(20),
department_id INT,
salary INT,
join_date DATE
);


INSERT INTO employee
(id,name, department_id, salary, join_date)
VALUES
(1,"Rahul Verma",1,55000,'2021-03-12'),
(2,"Sneha Rao",2,72000,'2020-11-20'),
(3,"Aman Singh",1,48000,'2022-01-05'),
(4,"Priya Shah",3,96000,'2019-07-18'),
(5,"Naveen Das",2,51000,'2021-09-10');

SELECT * FROM employee;

SELECT name, salary
FROM employee
WHERE salary>50000;

-- Answer 2.

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
name VARCHAR(20),
city VARCHAR(20)
);

INSERT INTO customers
(customer_id, name, city)
VALUES
(1,"Arjun","Delhi"),
(2,"Kavita","Mumbai"),
(3,"Rohan","Delhi"),
(4,"Simran","Pune");

SELECT name
FROM customers
WHERE city = "Delhi";

-- Answer 3.

CREATE TABLE products(
product_id INT PRIMARY KEY,
name VARCHAR(20),
price INT,
category VARCHAR(20)
);

INSERT INTO products
(product_id, name, price, category)
VALUES
(1,"Laptop Bag",900,"Accessories"),
(2,"Mouse",500,"Accessories"),
(3,"Keyboard",1200,"Accessories"),
(4,"Monitor",6500,"Electronics");

SELECT name
FROM products
WHERE price <= 500;