-- use ABC_DATA database
USE ABC_DATA;

-- 1. Which customer has made the most orders?
-- We will use the orders table
SELECT * FROM orders;
SELECT * FROM customers;

--  -- use ABC_DATA database
USE ABC_DATA;

-- 1. Which customer has made the most orders?
-- We will use the orders table
SELECT * FROM orders;

--  make a temp table to store the count of orders
WITH order_counts AS (
    SELECT customer_id, COUNT(order_id) AS order_count
    FROM orders
    GROUP BY customer_id
),
max_order_count AS (
    SELECT MAX(order_count) AS max_count
    FROM order_counts
)
SELECT c.first_name, c.last_name
FROM customers c
JOIN order_counts oc ON c.customer_id = oc.customer_id
WHERE oc.order_count = (SELECT max_count FROM max_order_count);


-- Response -> Joe Doe

-- What’s the total revenue per product?
SELECT product_name,
    price * sum(order_items.quantity) AS total_revenue
    FROM products 
    JOIN order_items ON order_items.product_id = products.product_id
    GROUP BY products.product_id, products.product_name, products.price
    ORDER BY total_revenue desc;