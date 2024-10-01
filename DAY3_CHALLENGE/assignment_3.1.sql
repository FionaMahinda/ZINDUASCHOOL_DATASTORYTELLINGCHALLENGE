SELECT product_name, price
FROM products
#1. Which product has the highest price?
ORDER BY price DESC
LIMIT 1;

#answer is ProductM

SELECT * FROM order_item;

#2. Which order_id had the highest number of items in terms of quantity?
SELECT order_id, SUM(quantity) AS total_quantity
FROM order_item
GROUP BY order_id
ORDER BY total_quantity DESC
LIMIT 1;


