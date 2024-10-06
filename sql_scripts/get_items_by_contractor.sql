-- Сколько и каких товаров поставил указанный контрагент на склад за указанный период
SELECT g.name AS product_name, SUM(a.qty) AS total_quantity
FROM ActionTable a
JOIN GoodsList g ON a.good_id = g.id
WHERE a.store_to_id = 'код_склада'
  AND a.contractot_from_id = 'код_контрагента'
  AND a.action_date BETWEEN 'начальная_дата' AND 'конечная_дата'
GROUP BY g.name
ORDER BY g.name;
