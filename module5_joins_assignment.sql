/* =====================================================================
   Module 5 — Assignment: The E-Commerce Data Integration Challenge
   Author: Bondi Swathi
   ===================================================================== */

-- ---------------------------------------------------------------------
-- Task 1: Active Order Dispatch (INNER JOIN)
-- Explanation: INNER JOIN is required because it strictly returns only 
-- rows where matching keys exist across orders, customers, and products. 
-- Guest checkouts (NULL customer_id) and unordered products are dropped.
-- ---------------------------------------------------------------------
SELECT
    o.order_id,
    c.customer_name,
    p.product_name
FROM
    orders AS o
INNER JOIN
    customers AS c ON o.customer_id = c.customer_id
INNER JOIN
    products AS p ON o.product_id = p.product_id;


-- ---------------------------------------------------------------------
-- Task 2: Marketing Churn Analysis (LEFT JOIN)
-- Explanation: LEFT JOIN preserves every registered customer from the 
-- left table regardless of order history. Because Charlie Brown and 
-- Diana Prince have never placed an order, their order_id appears as NULL.
-- ---------------------------------------------------------------------
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id
FROM
    customers AS c
LEFT JOIN
    orders AS o ON c.customer_id = o.customer_id;


-- ---------------------------------------------------------------------
-- Task 3: Inventory Audit (RIGHT JOIN)
-- Explanation: RIGHT JOIN preserves every product from the right-side 
-- products table even if no matching order exists. The 'Tablet' 
-- (product_id 104) has never been purchased, so its order_id is NULL.
-- ---------------------------------------------------------------------
SELECT
    o.order_id,
    p.product_id,
    p.product_name
FROM
    orders AS o
RIGHT JOIN
    products AS p ON o.product_id = p.product_id;


-- ---------------------------------------------------------------------
-- Task 4: The System Health Check (FULL OUTER JOIN)
-- Explanation: FULL OUTER JOIN preserves all records from both customers 
-- and orders simultaneously, padding missing sides with NULL—exposing 
-- inactive users (NULL order_id) and guest checkouts (NULL customer_name).
-- ---------------------------------------------------------------------
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date
FROM
    customers AS c
FULL OUTER JOIN
    orders AS o ON c.customer_id = o.customer_id;


-- ---------------------------------------------------------------------
-- Task 5: The "Glitch" Finder (CROSS JOIN)
-- Part A Explanation: CROSS JOIN requires no ON condition and pairs every 
-- row in customers with every row in products (no NULL padding occurs).
-- Part B Answer: This query generates 16 total rows because it computes 
-- the Cartesian product of both tables (4 customers x 4 products = 16).
-- ---------------------------------------------------------------------
SELECT
    c.customer_name,
    p.product_name,
    p.price
FROM
    customers AS c
CROSS JOIN
    products AS p;