-- Количественные остатки товаров на складе на указанную дату
SELECT g.name AS product_name, 
       SUM(CASE 
              WHEN a.store_to_id = 'код_склада' THEN a.qty 
              WHEN a.store_from_id = 'код_склада' THEN -a.qty 
              ELSE 0 
           END) AS total_quantity
FROM ActionTable a
JOIN GoodsList g ON a.good_id = g.id
WHERE a.action_date <= 'указанная_дата'
GROUP BY g.name
HAVING SUM(CASE 
              WHEN a.store_to_id = 'код_склада' THEN a.qty 
              WHEN a.store_from_id = 'код_склада' THEN -a.qty 
              ELSE 0 
           END) > 0
ORDER BY g.name;
