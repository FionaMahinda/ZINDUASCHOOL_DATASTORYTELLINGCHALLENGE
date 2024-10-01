-- Find the first order (by date) for each customer


-- This query selects the customer_id and the earliest order_date (first order) for each customer using the MIN() function,
 -- grouped by customer_id.
 
--  2. What’s the total revenue per product?

SELECT p.product_name, SUM(oi.quantity * p.price) AS total_revenue
FROM order_item oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name;

-- 3. Find the day with the highest revenue:

SELECT order_date, SUM(oi.quantity * p.price) AS total_revenue
FROM orders o
JOIN order_item oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY order_date
ORDER BY total_revenue DESC
LIMIT 1;


