-- ========================================
-- SQL JOIN PRACTICE FOR QA
-- ========================================


-- 1. BASIC INNER JOIN
-- Show each user with the product they ordered

SELECT qa_users.name, qa_orders.product
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id;


-- 2. JOIN with order ID

SELECT qa_users.name, qa_orders.product, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id;


-- 3. Filter by user name
-- Show Maria's orders

SELECT qa_users.name, qa_orders.product, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
WHERE qa_users.name = 'Maria';


-- 4. Filter by product
-- Show users who ordered Mouse

SELECT qa_users.name, qa_orders.product, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
WHERE qa_orders.product = 'Mouse';


-- 5. Filter by order ID

SELECT qa_users.name, qa_orders.product, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
WHERE qa_orders.order_id > 101;


-- 6. Filter and sort

SELECT qa_users.name, qa_orders.product, qa_orders.order_id
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
WHERE qa_orders.order_id > 100
ORDER BY qa_orders.order_id ASC;


-- 7. Count orders per user

SELECT qa_users.name, COUNT(qa_orders.order_id) AS total_orders
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
GROUP BY qa_users.name;


-- 8. Sort users by number of orders

SELECT qa_users.name, COUNT(qa_orders.order_id) AS total_orders
FROM qa_users
JOIN qa_orders
ON qa_users.id = qa_orders.user_id
GROUP BY qa_users.name
ORDER BY total_orders DESC;