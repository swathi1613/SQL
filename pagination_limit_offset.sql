-- Query 1: Top 3 Highest-Cost Items
SELECT 
    product_name, 
    wholesale_cost 
FROM 
    product_inventory 
ORDER BY 
    wholesale_cost DESC 
LIMIT 3;

-- Query 2: Next 2 Items using Pagination (LIMIT 2 OFFSET 3)
SELECT 
    product_name, 
    wholesale_cost 
FROM 
    product_inventory 
ORDER BY 
    wholesale_cost DESC 
LIMIT 2 OFFSET 3;