-- ========================================
-- SQL BASIC PRACTICE FOR QA
-- ========================================


-- 1. SELECT
-- Show all users

SELECT *
FROM qa_users;


-- 2. SELECT specific columns

SELECT name, email
FROM qa_users;


-- 3. WHERE
-- Find a specific user

SELECT *
FROM qa_users
WHERE name = 'Maria';


-- 4. ORDER BY
-- Sort users alphabetically

SELECT *
FROM qa_users
ORDER BY name ASC;


-- 5. ORDER BY DESC

SELECT *
FROM qa_users
ORDER BY name DESC;


-- 6. COUNT
-- Count total users

SELECT COUNT(*)
FROM qa_users;


-- 7. LIKE
-- Find users whose name starts with M

SELECT *
FROM qa_users
WHERE name LIKE 'M%';


-- 8. IN
-- Find multiple specific users

SELECT *
FROM qa_users
WHERE name IN ('Maria', 'Juan');


-- 9. AND
-- Combine conditions

SELECT *
FROM qa_orders
WHERE order_id > 100
AND product = 'Mouse';


-- 10. Filter orders by ID

SELECT *
FROM qa_orders
WHERE order_id > 101;


-- 11. Sort orders

SELECT *
FROM qa_orders
ORDER BY order_id ASC;