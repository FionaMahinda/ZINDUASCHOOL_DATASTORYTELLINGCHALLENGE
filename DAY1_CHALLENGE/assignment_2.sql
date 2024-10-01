CREATE DATABASE ABC_DATA;
CREATE TABLE Customers (
customers_id INT PRIMARY KEY,
first_name varchar(100),
last_name varchar(100),
email varchar(300)
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name varchar(100),
price INT
);

CREATE TABLE orders (
order_id INT,
customer_id INT,
order_date DATE 
);

CREATE TABLE order_item (
order_id INT,
product_id INT,
quantity INT
);


INSERT INTO customers(customers_id, first_name, last_name, email)
VALUES
(1, 'Joe', 'Doe', 'johndoe@email.com')
;


INSERT INTO order_item (order_id, product_id, quantity)
VALUES
(1, 1, 2)
;

SELECT * FROM customers;
