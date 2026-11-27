/* =====================================================================
   Module 6 — Topic 4: Pattern Matching & Wildcard Searching Lab
   Author: Bondi Swathi
   Table: product_inventory
   ===================================================================== */

-- ---------------------------------------------------------------------
-- 1. Filter Text Using Multi-Character Wildcards (LIKE with %)
-- Criteria 1 (30 pts): Isolates all attributes where product_name 
-- contains the word 'Wireless' anywhere in the text.
-- ---------------------------------------------------------------------
SELECT *
FROM product_inventory
WHERE product_name LIKE '%Wireless%';


-- ---------------------------------------------------------------------
-- 2. Standardize Queries Across Capitalization Errors (ILIKE with OR)
-- Criteria 2 (35 pts): Extracts all columns where product_name ends 
-- with 'jacket' or 'tumbler' regardless of letter casing.
-- ---------------------------------------------------------------------
SELECT *
FROM product_inventory
WHERE product_name ILIKE '%jacket'
   OR product_name ILIKE '%tumbler';


-- ---------------------------------------------------------------------
-- 3. Implement Positional Character Bounds (LIKE with _ and AND)
-- Criteria 3 (35 pts): Isolates rows where product_sku starts with 
-- 'HOME-' followed by exactly 4 characters AND wholesale_cost < 15.00.
-- ---------------------------------------------------------------------
SELECT *
FROM product_inventory
WHERE product_sku LIKE 'HOME-____'
  AND wholesale_cost < 15.00;