-- SQL DATA QUALITY CHECKS FOR QA
-- Run after setup.sql using the dedicated local SQLite practice database.
-- The sample dataset has 4 users and 5 orders, including 1 user with no orders.

-- 1. Check for orders referring to a missing user.
-- Expected with these synthetic fixtures: no rows.
SELECT o.order_id, o.user_id
FROM qa_orders AS o
LEFT JOIN qa_users AS u ON u.id = o.user_id
WHERE u.id IS NULL;

-- 2. Find users with no orders.
-- Expected with these synthetic fixtures: Elena (id = 3).
-- This is an intentional edge case, not automatically a bug.
SELECT u.id, u.name
FROM qa_users AS u
LEFT JOIN qa_orders AS o ON o.user_id = u.id
WHERE o.order_id IS NULL;

-- 3. Check for email duplicates ignoring letter case.
-- Expected with these synthetic fixtures: no rows.
SELECT LOWER(email) AS normalized_email, COUNT(*) AS occurrences
FROM qa_users
GROUP BY LOWER(email)
HAVING COUNT(*) > 1;

-- 4. Count orders for every user, INCLUDING users with zero orders.
-- Group by a stable ID as well as name: names need not be unique in real data.
SELECT u.id, u.name, COUNT(o.order_id) AS order_count
FROM qa_users AS u
LEFT JOIN qa_orders AS o ON o.user_id = u.id
GROUP BY u.id, u.name
ORDER BY u.id;

-- 5. Reconcile the two ways of counting all orders.
-- Expected with these synthetic fixtures: 5 orders in both columns.
SELECT
    (SELECT COUNT(*) FROM qa_orders) AS total_order_rows,
    (SELECT SUM(order_count)
     FROM (
         SELECT COUNT(o.order_id) AS order_count
         FROM qa_users AS u
         LEFT JOIN qa_orders AS o ON o.user_id = u.id
         GROUP BY u.id
     )) AS sum_of_user_order_counts;
