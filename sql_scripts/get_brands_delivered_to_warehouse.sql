-- Сколько и каких брендов товаров доставлено на склад за указанный период
SELECT COALESCE(b.name, 'Без бренда') AS brand_name, SUM(a.qty) AS total_quantity
FROM ActionTable a
JOIN GoodsList g ON a.good_id = g.id
LEFT JOIN BrandList b ON g.brand_id = b.id
WHERE a.store_to_id = 'код_склада'
  AND a.action_date BETWEEN 'начальная_дата' AND 'конечная_дата'
GROUP BY b.name
ORDER BY brand_name;
