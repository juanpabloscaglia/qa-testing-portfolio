-- ========================================
-- SQL CHALLENGES FOR QA
-- ========================================


-- Challenge 1
-- Show the name of each user and the product they ordered

SELECT qa_users.name, qa_orders.product
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id;


-- Challenge 2
-- Show Maria's order IDs

SELECT qa_users.name, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
WHERE qa_users.name = 'Maria';


-- Challenge 3
-- Show all orders for the product Mouse

SELECT qa_users.name, qa_orders.product, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
WHERE qa_orders.product = 'Mouse';


-- Challenge 4
-- Show orders with ID greater than 101

SELECT qa_users.name, qa_orders.product, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
WHERE qa_orders.order_id > 101;


-- Challenge 5
-- Show orders greater than 100 sorted from lowest to highest

SELECT qa_users.name, qa_orders.product, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
WHERE qa_orders.order_id > 100
ORDER BY qa_orders.order_id ASC;


-- Challenge 6
-- Count how many orders each user has

SELECT qa_users.name, COUNT(qa_orders.order_id) AS total_orders
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
GROUP BY qa_users.name;