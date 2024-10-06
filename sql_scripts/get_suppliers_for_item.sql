-- Какие контрагенты и в каком количестве поставили указанный товар на склады за указанный период
SELECT c.name AS contractor_name, SUM(a.qty) AS total_quantity
FROM ActionTable a
JOIN ContractorList c ON a.contractot_from_id = c.id
WHERE a.good_id = 'id_товара'
  AND a.action_date BETWEEN 'начальная_дата' AND 'конечная_дата'
GROUP BY c.name
ORDER BY total_quantity DESC;
